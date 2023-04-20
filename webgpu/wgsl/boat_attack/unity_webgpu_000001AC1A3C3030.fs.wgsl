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
  Texture2D_B222E8F_TexelSize : vec4<f32>,
  /* @offset(16) */
  Color_C30C7CA3 : vec4<f32>,
  /* @offset(32) */
  Texture2D_D9BFD5F1_TexelSize : vec4<f32>,
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

var<private> u_xlat0 : vec3<f32>;

var<private> vs_INTERP9 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_53 : PGlobals;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_65 : UnityPerMaterial;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat78 : f32;

var<private> u_xlat29 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_130 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu78 : u32;

var<private> u_xlati78 : i32;

var<private> u_xlatb78 : bool;

var<private> u_xlatb80 : bool;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat80 : f32;

var<private> u_xlatb82 : bool;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb5 : bool;

var<private> u_xlatb31 : bool;

var<private> u_xlatb1 : bool;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlatb53 : bool;

var<private> u_xlatb27 : vec3<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_1746 : UnityPerDraw;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat84 : f32;

var<private> u_xlatb59 : bool;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat35 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat87 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlat30 : vec3<f32>;

var<private> u_xlat56 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu3 : u32;

var<private> u_xlati4 : i32;

var<private> u_xlati3 : i32;

@group(1) @binding(1) var<uniform> x_3565 : AdditionalLights;

var<private> u_xlati85 : i32;

var<private> u_xlatb86 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat86 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb87 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb3 : bool;

var<private> u_xlatu80 : u32;

fn main_1() {
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
  var x_1659 : f32;
  var x_1707 : f32;
  var x_1842 : vec3<f32>;
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
  var x_3718 : f32;
  var x_3728 : f32;
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
  var x_5183 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_INTERP9;
  let x_13 : vec3<f32> = vs_INTERP9;
  u_xlat0.x = dot(x_12, x_13);
  let x_20 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_20);
  let x_25 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_25);
  let x_28 : vec3<f32> = u_xlat0;
  let x_30 : vec3<f32> = vs_INTERP9;
  u_xlat0 = (vec3<f32>(x_28.x, x_28.x, x_28.x) * x_30);
  let x_48 : vec4<f32> = vs_INTERP5;
  let x_58 : f32 = x_53.x_GlobalMipBias.x;
  let x_59 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_48.x, x_48.y), x_58);
  u_xlat1 = x_59;
  let x_61 : vec4<f32> = u_xlat1;
  let x_69 : vec4<f32> = x_65.Color_C30C7CA3;
  u_xlat2 = (vec3<f32>(x_61.x, x_61.y, x_61.z) * vec3<f32>(x_69.x, x_69.y, x_69.z));
  let x_78 : vec4<f32> = vs_INTERP5;
  let x_81 : f32 = x_53.x_GlobalMipBias.x;
  let x_82 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_78.x, x_78.y), x_81);
  u_xlat3 = vec4<f32>(x_82.w, x_82.x, x_82.y, x_82.z);
  let x_85 : vec4<f32> = u_xlat3;
  u_xlat4 = ((vec4<f32>(x_85.y, x_85.z, x_85.w, x_85.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_94 : vec4<f32> = u_xlat4;
  let x_95 : vec4<f32> = u_xlat4;
  u_xlat78 = dot(x_94, x_95);
  let x_97 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_97);
  let x_100 : f32 = u_xlat78;
  let x_102 : vec4<f32> = u_xlat4;
  u_xlat29 = (vec3<f32>(x_100, x_100, x_100) * vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_109 : f32 = vs_INTERP6.y;
  u_xlat78 = (x_109 * 200.0f);
  let x_112 : f32 = u_xlat78;
  u_xlat78 = min(x_112, 1.0f);
  let x_114 : f32 = u_xlat78;
  let x_116 : vec4<f32> = u_xlat1;
  let x_118 : vec3<f32> = (vec3<f32>(x_114, x_114, x_114) * vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_119 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_118.x, x_118.y, x_118.z, x_119.w);
  let x_122 : vec3<f32> = vs_INTERP8;
  let x_132 : vec4<f32> = x_130.x_CascadeShadowSplitSpheres0;
  let x_135 : vec3<f32> = (x_122 + -(vec3<f32>(x_132.x, x_132.y, x_132.z)));
  let x_136 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
  let x_139 : vec3<f32> = vs_INTERP8;
  let x_142 : vec4<f32> = x_130.x_CascadeShadowSplitSpheres1;
  let x_145 : vec3<f32> = (x_139 + -(vec3<f32>(x_142.x, x_142.y, x_142.z)));
  let x_146 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  let x_149 : vec3<f32> = vs_INTERP8;
  let x_152 : vec4<f32> = x_130.x_CascadeShadowSplitSpheres2;
  let x_155 : vec3<f32> = (x_149 + -(vec3<f32>(x_152.x, x_152.y, x_152.z)));
  let x_156 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
  let x_159 : vec3<f32> = vs_INTERP8;
  let x_162 : vec4<f32> = x_130.x_CascadeShadowSplitSpheres3;
  let x_165 : vec3<f32> = (x_159 + -(vec3<f32>(x_162.x, x_162.y, x_162.z)));
  let x_166 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_168 : vec4<f32> = u_xlat4;
  let x_170 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_168.x, x_168.y, x_168.z), vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_174 : vec4<f32> = u_xlat5;
  let x_176 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_174.x, x_174.y, x_174.z), vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_180 : vec4<f32> = u_xlat6;
  let x_182 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_180.x, x_180.y, x_180.z), vec3<f32>(x_182.x, x_182.y, x_182.z));
  let x_187 : vec4<f32> = u_xlat7;
  let x_189 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_187.x, x_187.y, x_187.z), vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_198 : vec4<f32> = u_xlat4;
  let x_201 : vec4<f32> = x_130.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_198 < x_201);
  let x_205 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_205);
  let x_210 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_210);
  let x_214 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_214);
  let x_218 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_218);
  let x_222 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_222);
  let x_227 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_227);
  let x_231 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_231);
  let x_234 : vec4<f32> = u_xlat4;
  let x_236 : vec4<f32> = u_xlat5;
  let x_238 : vec3<f32> = (vec3<f32>(x_234.x, x_234.y, x_234.z) + vec3<f32>(x_236.y, x_236.z, x_236.w));
  let x_239 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
  let x_241 : vec4<f32> = u_xlat4;
  let x_244 : vec3<f32> = max(vec3<f32>(x_241.x, x_241.y, x_241.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_245 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_245.x, x_244.x, x_244.y, x_244.z);
  let x_247 : vec4<f32> = u_xlat5;
  u_xlat78 = dot(x_247, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_252 : f32 = u_xlat78;
  u_xlat78 = (-(x_252) + 4.0f);
  let x_257 : f32 = u_xlat78;
  u_xlatu78 = u32(x_257);
  let x_261 : u32 = u_xlatu78;
  u_xlati78 = (bitcast<i32>(x_261) << bitcast<u32>(2i));
  let x_264 : vec3<f32> = vs_INTERP8;
  let x_266 : i32 = u_xlati78;
  let x_269 : i32 = u_xlati78;
  let x_273 : vec4<f32> = x_130.x_MainLightWorldToShadow[((x_266 + 1i) / 4i)][((x_269 + 1i) % 4i)];
  let x_275 : vec3<f32> = (vec3<f32>(x_264.y, x_264.y, x_264.y) * vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : i32 = u_xlati78;
  let x_280 : i32 = u_xlati78;
  let x_283 : vec4<f32> = x_130.x_MainLightWorldToShadow[(x_278 / 4i)][(x_280 % 4i)];
  let x_285 : vec3<f32> = vs_INTERP8;
  let x_288 : vec4<f32> = u_xlat4;
  let x_290 : vec3<f32> = ((vec3<f32>(x_283.x, x_283.y, x_283.z) * vec3<f32>(x_285.x, x_285.x, x_285.x)) + vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_291 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_293 : i32 = u_xlati78;
  let x_296 : i32 = u_xlati78;
  let x_300 : vec4<f32> = x_130.x_MainLightWorldToShadow[((x_293 + 2i) / 4i)][((x_296 + 2i) % 4i)];
  let x_302 : vec3<f32> = vs_INTERP8;
  let x_305 : vec4<f32> = u_xlat4;
  let x_307 : vec3<f32> = ((vec3<f32>(x_300.x, x_300.y, x_300.z) * vec3<f32>(x_302.z, x_302.z, x_302.z)) + vec3<f32>(x_305.x, x_305.y, x_305.z));
  let x_308 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_310 : vec4<f32> = u_xlat4;
  let x_312 : i32 = u_xlati78;
  let x_315 : i32 = u_xlati78;
  let x_319 : vec4<f32> = x_130.x_MainLightWorldToShadow[((x_312 + 3i) / 4i)][((x_315 + 3i) % 4i)];
  let x_321 : vec3<f32> = (vec3<f32>(x_310.x, x_310.y, x_310.z) + vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_327 : f32 = x_130.x_MainLightShadowParams.y;
  u_xlatb78 = (0.0f < x_327);
  let x_329 : bool = u_xlatb78;
  if (x_329) {
    let x_334 : f32 = x_130.x_MainLightShadowParams.y;
    u_xlatb80 = (x_334 == 1.0f);
    let x_336 : bool = u_xlatb80;
    if (x_336) {
      let x_339 : vec4<f32> = u_xlat4;
      let x_343 : vec4<f32> = x_130.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_339.x, x_339.y, x_339.x, x_339.y) + x_343);
      let x_347 : vec4<f32> = u_xlat5;
      let x_348 : vec2<f32> = vec2<f32>(x_347.x, x_347.y);
      let x_350 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_348.x, x_348.y, x_350);
      let x_362 : vec3<f32> = txVec0;
      let x_364 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_362.xy, x_362.z);
      u_xlat6.x = x_364;
      let x_367 : vec4<f32> = u_xlat5;
      let x_368 : vec2<f32> = vec2<f32>(x_367.z, x_367.w);
      let x_370 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_368.x, x_368.y, x_370);
      let x_377 : vec3<f32> = txVec1;
      let x_379 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_377.xy, x_377.z);
      u_xlat6.y = x_379;
      let x_381 : vec4<f32> = u_xlat4;
      let x_385 : vec4<f32> = x_130.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_381.x, x_381.y, x_381.x, x_381.y) + x_385);
      let x_388 : vec4<f32> = u_xlat5;
      let x_389 : vec2<f32> = vec2<f32>(x_388.x, x_388.y);
      let x_391 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_389.x, x_389.y, x_391);
      let x_398 : vec3<f32> = txVec2;
      let x_400 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_398.xy, x_398.z);
      u_xlat6.z = x_400;
      let x_403 : vec4<f32> = u_xlat5;
      let x_404 : vec2<f32> = vec2<f32>(x_403.z, x_403.w);
      let x_406 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_404.x, x_404.y, x_406);
      let x_413 : vec3<f32> = txVec3;
      let x_415 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_413.xy, x_413.z);
      u_xlat6.w = x_415;
      let x_418 : vec4<f32> = u_xlat6;
      u_xlat80 = dot(x_418, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_425 : f32 = x_130.x_MainLightShadowParams.y;
      u_xlatb82 = (x_425 == 2.0f);
      let x_427 : bool = u_xlatb82;
      if (x_427) {
        let x_430 : vec4<f32> = u_xlat4;
        let x_434 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_439 : vec2<f32> = ((vec2<f32>(x_430.x, x_430.y) * vec2<f32>(x_434.z, x_434.w)) + vec2<f32>(0.5f, 0.5f));
        let x_440 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_439.x, x_439.y, x_440.z, x_440.w);
        let x_442 : vec4<f32> = u_xlat5;
        let x_444 : vec2<f32> = floor(vec2<f32>(x_442.x, x_442.y));
        let x_445 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_444.x, x_444.y, x_445.z, x_445.w);
        let x_449 : vec4<f32> = u_xlat4;
        let x_452 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_455 : vec4<f32> = u_xlat5;
        u_xlat57 = ((vec2<f32>(x_449.x, x_449.y) * vec2<f32>(x_452.z, x_452.w)) + -(vec2<f32>(x_455.x, x_455.y)));
        let x_459 : vec2<f32> = u_xlat57;
        u_xlat6 = (vec4<f32>(x_459.x, x_459.x, x_459.y, x_459.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_463 : vec4<f32> = u_xlat6;
        let x_465 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_463.x, x_463.x, x_463.z, x_463.z) * vec4<f32>(x_465.x, x_465.x, x_465.z, x_465.z));
        let x_468 : vec4<f32> = u_xlat7;
        let x_472 : vec2<f32> = (vec2<f32>(x_468.y, x_468.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_473 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_472.x, x_473.y, x_472.y, x_473.w);
        let x_475 : vec4<f32> = u_xlat7;
        let x_478 : vec2<f32> = u_xlat57;
        let x_480 : vec2<f32> = ((vec2<f32>(x_475.x, x_475.z) * vec2<f32>(0.5f, 0.5f)) + -(x_478));
        let x_481 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_480.x, x_480.y, x_481.z, x_481.w);
        let x_484 : vec2<f32> = u_xlat57;
        u_xlat59 = (-(x_484) + vec2<f32>(1.0f, 1.0f));
        let x_489 : vec2<f32> = u_xlat57;
        let x_491 : vec2<f32> = min(x_489, vec2<f32>(0.0f, 0.0f));
        let x_492 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_491.x, x_491.y, x_492.z, x_492.w);
        let x_494 : vec4<f32> = u_xlat8;
        let x_497 : vec4<f32> = u_xlat8;
        let x_500 : vec2<f32> = u_xlat59;
        let x_501 : vec2<f32> = ((-(vec2<f32>(x_494.x, x_494.y)) * vec2<f32>(x_497.x, x_497.y)) + x_500);
        let x_502 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_501.x, x_501.y, x_502.z, x_502.w);
        let x_504 : vec2<f32> = u_xlat57;
        u_xlat57 = max(x_504, vec2<f32>(0.0f, 0.0f));
        let x_506 : vec2<f32> = u_xlat57;
        let x_508 : vec2<f32> = u_xlat57;
        let x_510 : vec4<f32> = u_xlat6;
        u_xlat57 = ((-(x_506) * x_508) + vec2<f32>(x_510.y, x_510.w));
        let x_513 : vec4<f32> = u_xlat8;
        let x_515 : vec2<f32> = (vec2<f32>(x_513.x, x_513.y) + vec2<f32>(1.0f, 1.0f));
        let x_516 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_515.x, x_515.y, x_516.z, x_516.w);
        let x_518 : vec2<f32> = u_xlat57;
        u_xlat57 = (x_518 + vec2<f32>(1.0f, 1.0f));
        let x_521 : vec4<f32> = u_xlat7;
        let x_525 : vec2<f32> = (vec2<f32>(x_521.x, x_521.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_526 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_525.x, x_525.y, x_526.z, x_526.w);
        let x_528 : vec2<f32> = u_xlat59;
        let x_529 : vec2<f32> = (x_528 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_530 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_529.x, x_529.y, x_530.z, x_530.w);
        let x_532 : vec4<f32> = u_xlat8;
        let x_534 : vec2<f32> = (vec2<f32>(x_532.x, x_532.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_535 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_534.x, x_534.y, x_535.z, x_535.w);
        let x_538 : vec2<f32> = u_xlat57;
        let x_539 : vec2<f32> = (x_538 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_540 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_539.x, x_539.y, x_540.z, x_540.w);
        let x_542 : vec4<f32> = u_xlat6;
        u_xlat57 = (vec2<f32>(x_542.y, x_542.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_546 : f32 = u_xlat8.x;
        u_xlat9.z = x_546;
        let x_549 : f32 = u_xlat57.x;
        u_xlat9.w = x_549;
        let x_552 : f32 = u_xlat10.x;
        u_xlat7.z = x_552;
        let x_555 : f32 = u_xlat6.x;
        u_xlat7.w = x_555;
        let x_558 : vec4<f32> = u_xlat7;
        let x_560 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_558.z, x_558.w, x_558.x, x_558.z) + vec4<f32>(x_560.z, x_560.w, x_560.x, x_560.z));
        let x_564 : f32 = u_xlat9.y;
        u_xlat8.z = x_564;
        let x_567 : f32 = u_xlat57.y;
        u_xlat8.w = x_567;
        let x_570 : f32 = u_xlat7.y;
        u_xlat10.z = x_570;
        let x_573 : f32 = u_xlat6.z;
        u_xlat10.w = x_573;
        let x_575 : vec4<f32> = u_xlat8;
        let x_577 : vec4<f32> = u_xlat10;
        let x_579 : vec3<f32> = (vec3<f32>(x_575.z, x_575.y, x_575.w) + vec3<f32>(x_577.z, x_577.y, x_577.w));
        let x_580 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
        let x_582 : vec4<f32> = u_xlat7;
        let x_584 : vec4<f32> = u_xlat11;
        let x_586 : vec3<f32> = (vec3<f32>(x_582.x, x_582.z, x_582.w) / vec3<f32>(x_584.z, x_584.w, x_584.y));
        let x_587 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_586.x, x_586.y, x_586.z, x_587.w);
        let x_589 : vec4<f32> = u_xlat7;
        let x_595 : vec3<f32> = (vec3<f32>(x_589.x, x_589.y, x_589.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_596 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
        let x_598 : vec4<f32> = u_xlat10;
        let x_600 : vec4<f32> = u_xlat6;
        let x_602 : vec3<f32> = (vec3<f32>(x_598.z, x_598.y, x_598.w) / vec3<f32>(x_600.x, x_600.y, x_600.z));
        let x_603 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
        let x_605 : vec4<f32> = u_xlat8;
        let x_607 : vec3<f32> = (vec3<f32>(x_605.x, x_605.y, x_605.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_608 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
        let x_610 : vec4<f32> = u_xlat7;
        let x_613 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_615 : vec3<f32> = (vec3<f32>(x_610.y, x_610.x, x_610.z) * vec3<f32>(x_613.x, x_613.x, x_613.x));
        let x_616 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
        let x_618 : vec4<f32> = u_xlat8;
        let x_621 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_623 : vec3<f32> = (vec3<f32>(x_618.x, x_618.y, x_618.z) * vec3<f32>(x_621.y, x_621.y, x_621.y));
        let x_624 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
        let x_627 : f32 = u_xlat8.x;
        u_xlat7.w = x_627;
        let x_629 : vec4<f32> = u_xlat5;
        let x_632 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_635 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_629.x, x_629.y, x_629.x, x_629.y) * vec4<f32>(x_632.x, x_632.y, x_632.x, x_632.y)) + vec4<f32>(x_635.y, x_635.w, x_635.x, x_635.w));
        let x_638 : vec4<f32> = u_xlat5;
        let x_641 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_644 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_638.x, x_638.y) * vec2<f32>(x_641.x, x_641.y)) + vec2<f32>(x_644.z, x_644.w));
        let x_648 : f32 = u_xlat7.y;
        u_xlat8.w = x_648;
        let x_650 : vec4<f32> = u_xlat8;
        let x_651 : vec2<f32> = vec2<f32>(x_650.y, x_650.z);
        let x_652 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_652.x, x_651.x, x_652.z, x_651.y);
        let x_654 : vec4<f32> = u_xlat5;
        let x_657 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_660 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_654.x, x_654.y, x_654.x, x_654.y) * vec4<f32>(x_657.x, x_657.y, x_657.x, x_657.y)) + vec4<f32>(x_660.x, x_660.y, x_660.z, x_660.y));
        let x_663 : vec4<f32> = u_xlat5;
        let x_666 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_669 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_663.x, x_663.y, x_663.x, x_663.y) * vec4<f32>(x_666.x, x_666.y, x_666.x, x_666.y)) + vec4<f32>(x_669.w, x_669.y, x_669.w, x_669.z));
        let x_672 : vec4<f32> = u_xlat5;
        let x_675 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_678 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_672.x, x_672.y, x_672.x, x_672.y) * vec4<f32>(x_675.x, x_675.y, x_675.x, x_675.y)) + vec4<f32>(x_678.x, x_678.w, x_678.z, x_678.w));
        let x_682 : vec4<f32> = u_xlat6;
        let x_684 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_682.x, x_682.x, x_682.x, x_682.y) * vec4<f32>(x_684.z, x_684.w, x_684.y, x_684.z));
        let x_688 : vec4<f32> = u_xlat6;
        let x_690 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_688.y, x_688.y, x_688.z, x_688.z) * x_690);
        let x_694 : f32 = u_xlat6.z;
        let x_696 : f32 = u_xlat11.y;
        u_xlat82 = (x_694 * x_696);
        let x_699 : vec4<f32> = u_xlat9;
        let x_700 : vec2<f32> = vec2<f32>(x_699.x, x_699.y);
        let x_702 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_700.x, x_700.y, x_702);
        let x_709 : vec3<f32> = txVec4;
        let x_711 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_709.xy, x_709.z);
        u_xlat5.x = x_711;
        let x_714 : vec4<f32> = u_xlat9;
        let x_715 : vec2<f32> = vec2<f32>(x_714.z, x_714.w);
        let x_717 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_715.x, x_715.y, x_717);
        let x_725 : vec3<f32> = txVec5;
        let x_727 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_725.xy, x_725.z);
        u_xlat31.x = x_727;
        let x_730 : f32 = u_xlat31.x;
        let x_732 : f32 = u_xlat12.y;
        u_xlat31.x = (x_730 * x_732);
        let x_736 : f32 = u_xlat12.x;
        let x_738 : f32 = u_xlat5.x;
        let x_741 : f32 = u_xlat31.x;
        u_xlat5.x = ((x_736 * x_738) + x_741);
        let x_745 : vec2<f32> = u_xlat57;
        let x_747 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_745.x, x_745.y, x_747);
        let x_754 : vec3<f32> = txVec6;
        let x_756 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_754.xy, x_754.z);
        u_xlat31.x = x_756;
        let x_759 : f32 = u_xlat12.z;
        let x_761 : f32 = u_xlat31.x;
        let x_764 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_759 * x_761) + x_764);
        let x_768 : vec4<f32> = u_xlat8;
        let x_769 : vec2<f32> = vec2<f32>(x_768.x, x_768.y);
        let x_771 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_769.x, x_769.y, x_771);
        let x_778 : vec3<f32> = txVec7;
        let x_780 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_778.xy, x_778.z);
        u_xlat31.x = x_780;
        let x_783 : f32 = u_xlat12.w;
        let x_785 : f32 = u_xlat31.x;
        let x_788 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_783 * x_785) + x_788);
        let x_792 : vec4<f32> = u_xlat10;
        let x_793 : vec2<f32> = vec2<f32>(x_792.x, x_792.y);
        let x_795 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_793.x, x_793.y, x_795);
        let x_802 : vec3<f32> = txVec8;
        let x_804 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_802.xy, x_802.z);
        u_xlat31.x = x_804;
        let x_807 : f32 = u_xlat13.x;
        let x_809 : f32 = u_xlat31.x;
        let x_812 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_807 * x_809) + x_812);
        let x_816 : vec4<f32> = u_xlat10;
        let x_817 : vec2<f32> = vec2<f32>(x_816.z, x_816.w);
        let x_819 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_817.x, x_817.y, x_819);
        let x_826 : vec3<f32> = txVec9;
        let x_828 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_826.xy, x_826.z);
        u_xlat31.x = x_828;
        let x_831 : f32 = u_xlat13.y;
        let x_833 : f32 = u_xlat31.x;
        let x_836 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_831 * x_833) + x_836);
        let x_840 : vec4<f32> = u_xlat8;
        let x_841 : vec2<f32> = vec2<f32>(x_840.z, x_840.w);
        let x_843 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_841.x, x_841.y, x_843);
        let x_850 : vec3<f32> = txVec10;
        let x_852 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_850.xy, x_850.z);
        u_xlat31.x = x_852;
        let x_855 : f32 = u_xlat13.z;
        let x_857 : f32 = u_xlat31.x;
        let x_860 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_855 * x_857) + x_860);
        let x_864 : vec4<f32> = u_xlat7;
        let x_865 : vec2<f32> = vec2<f32>(x_864.x, x_864.y);
        let x_867 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_865.x, x_865.y, x_867);
        let x_874 : vec3<f32> = txVec11;
        let x_876 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_874.xy, x_874.z);
        u_xlat31.x = x_876;
        let x_879 : f32 = u_xlat13.w;
        let x_881 : f32 = u_xlat31.x;
        let x_884 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_879 * x_881) + x_884);
        let x_888 : vec4<f32> = u_xlat7;
        let x_889 : vec2<f32> = vec2<f32>(x_888.z, x_888.w);
        let x_891 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_889.x, x_889.y, x_891);
        let x_898 : vec3<f32> = txVec12;
        let x_900 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_898.xy, x_898.z);
        u_xlat31.x = x_900;
        let x_902 : f32 = u_xlat82;
        let x_904 : f32 = u_xlat31.x;
        let x_907 : f32 = u_xlat5.x;
        u_xlat80 = ((x_902 * x_904) + x_907);
      } else {
        let x_910 : vec4<f32> = u_xlat4;
        let x_913 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_916 : vec2<f32> = ((vec2<f32>(x_910.x, x_910.y) * vec2<f32>(x_913.z, x_913.w)) + vec2<f32>(0.5f, 0.5f));
        let x_917 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_916.x, x_916.y, x_917.z, x_917.w);
        let x_919 : vec4<f32> = u_xlat5;
        let x_921 : vec2<f32> = floor(vec2<f32>(x_919.x, x_919.y));
        let x_922 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_921.x, x_921.y, x_922.z, x_922.w);
        let x_924 : vec4<f32> = u_xlat4;
        let x_927 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_930 : vec4<f32> = u_xlat5;
        u_xlat57 = ((vec2<f32>(x_924.x, x_924.y) * vec2<f32>(x_927.z, x_927.w)) + -(vec2<f32>(x_930.x, x_930.y)));
        let x_934 : vec2<f32> = u_xlat57;
        u_xlat6 = (vec4<f32>(x_934.x, x_934.x, x_934.y, x_934.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_937 : vec4<f32> = u_xlat6;
        let x_939 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_937.x, x_937.x, x_937.z, x_937.z) * vec4<f32>(x_939.x, x_939.x, x_939.z, x_939.z));
        let x_942 : vec4<f32> = u_xlat7;
        let x_946 : vec2<f32> = (vec2<f32>(x_942.y, x_942.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_947 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_947.x, x_946.x, x_947.z, x_946.y);
        let x_949 : vec4<f32> = u_xlat7;
        let x_952 : vec2<f32> = u_xlat57;
        let x_954 : vec2<f32> = ((vec2<f32>(x_949.x, x_949.z) * vec2<f32>(0.5f, 0.5f)) + -(x_952));
        let x_955 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_954.x, x_955.y, x_954.y, x_955.w);
        let x_957 : vec2<f32> = u_xlat57;
        let x_959 : vec2<f32> = (-(x_957) + vec2<f32>(1.0f, 1.0f));
        let x_960 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_959.x, x_959.y, x_960.z, x_960.w);
        let x_962 : vec2<f32> = u_xlat57;
        u_xlat59 = min(x_962, vec2<f32>(0.0f, 0.0f));
        let x_964 : vec2<f32> = u_xlat59;
        let x_966 : vec2<f32> = u_xlat59;
        let x_968 : vec4<f32> = u_xlat7;
        let x_970 : vec2<f32> = ((-(x_964) * x_966) + vec2<f32>(x_968.x, x_968.y));
        let x_971 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_970.x, x_970.y, x_971.z, x_971.w);
        let x_973 : vec2<f32> = u_xlat57;
        u_xlat59 = max(x_973, vec2<f32>(0.0f, 0.0f));
        let x_976 : vec2<f32> = u_xlat59;
        let x_978 : vec2<f32> = u_xlat59;
        let x_980 : vec4<f32> = u_xlat6;
        let x_982 : vec2<f32> = ((-(x_976) * x_978) + vec2<f32>(x_980.y, x_980.w));
        let x_983 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_982.x, x_983.y, x_982.y);
        let x_985 : vec4<f32> = u_xlat7;
        let x_988 : vec2<f32> = (vec2<f32>(x_985.x, x_985.y) + vec2<f32>(2.0f, 2.0f));
        let x_989 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_988.x, x_988.y, x_989.z, x_989.w);
        let x_991 : vec3<f32> = u_xlat32;
        let x_993 : vec2<f32> = (vec2<f32>(x_991.x, x_991.z) + vec2<f32>(2.0f, 2.0f));
        let x_994 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_994.x, x_993.x, x_994.z, x_993.y);
        let x_997 : f32 = u_xlat6.y;
        u_xlat9.z = (x_997 * 0.08163200318813323975f);
        let x_1001 : vec4<f32> = u_xlat6;
        let x_1004 : vec3<f32> = (vec3<f32>(x_1001.z, x_1001.x, x_1001.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1005 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1004.x, x_1004.y, x_1004.z, x_1005.w);
        let x_1007 : vec4<f32> = u_xlat7;
        let x_1010 : vec2<f32> = (vec2<f32>(x_1007.x, x_1007.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1011 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1010.x, x_1010.y, x_1011.z, x_1011.w);
        let x_1014 : f32 = u_xlat10.y;
        u_xlat9.x = x_1014;
        let x_1016 : vec2<f32> = u_xlat57;
        let x_1023 : vec2<f32> = ((vec2<f32>(x_1016.x, x_1016.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1024 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1024.x, x_1023.x, x_1024.z, x_1023.y);
        let x_1026 : vec2<f32> = u_xlat57;
        let x_1030 : vec2<f32> = ((vec2<f32>(x_1026.x, x_1026.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1031 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1030.x, x_1031.y, x_1030.y, x_1031.w);
        let x_1034 : f32 = u_xlat6.x;
        u_xlat7.y = x_1034;
        let x_1037 : f32 = u_xlat8.y;
        u_xlat7.w = x_1037;
        let x_1039 : vec4<f32> = u_xlat7;
        let x_1040 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1039 + x_1040);
        let x_1042 : vec2<f32> = u_xlat57;
        let x_1045 : vec2<f32> = ((vec2<f32>(x_1042.y, x_1042.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1046 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1046.x, x_1045.x, x_1046.z, x_1045.y);
        let x_1048 : vec2<f32> = u_xlat57;
        let x_1051 : vec2<f32> = ((vec2<f32>(x_1048.y, x_1048.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1052 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1051.x, x_1052.y, x_1051.y, x_1052.w);
        let x_1055 : f32 = u_xlat6.y;
        u_xlat8.y = x_1055;
        let x_1057 : vec4<f32> = u_xlat8;
        let x_1058 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1057 + x_1058);
        let x_1060 : vec4<f32> = u_xlat7;
        let x_1061 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1060 / x_1061);
        let x_1063 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1063 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1069 : vec4<f32> = u_xlat8;
        let x_1070 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1069 / x_1070);
        let x_1072 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1072 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1074 : vec4<f32> = u_xlat7;
        let x_1077 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1074.w, x_1074.x, x_1074.y, x_1074.z) * vec4<f32>(x_1077.x, x_1077.x, x_1077.x, x_1077.x));
        let x_1080 : vec4<f32> = u_xlat8;
        let x_1083 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1080.x, x_1080.w, x_1080.y, x_1080.z) * vec4<f32>(x_1083.y, x_1083.y, x_1083.y, x_1083.y));
        let x_1086 : vec4<f32> = u_xlat7;
        let x_1087 : vec3<f32> = vec3<f32>(x_1086.y, x_1086.z, x_1086.w);
        let x_1088 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1087.x, x_1088.y, x_1087.y, x_1087.z);
        let x_1091 : f32 = u_xlat8.x;
        u_xlat10.y = x_1091;
        let x_1093 : vec4<f32> = u_xlat5;
        let x_1096 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_1099 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1093.x, x_1093.y, x_1093.x, x_1093.y) * vec4<f32>(x_1096.x, x_1096.y, x_1096.x, x_1096.y)) + vec4<f32>(x_1099.x, x_1099.y, x_1099.z, x_1099.y));
        let x_1102 : vec4<f32> = u_xlat5;
        let x_1105 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_1108 : vec4<f32> = u_xlat10;
        u_xlat57 = ((vec2<f32>(x_1102.x, x_1102.y) * vec2<f32>(x_1105.x, x_1105.y)) + vec2<f32>(x_1108.w, x_1108.y));
        let x_1112 : f32 = u_xlat10.y;
        u_xlat7.y = x_1112;
        let x_1115 : f32 = u_xlat8.z;
        u_xlat10.y = x_1115;
        let x_1117 : vec4<f32> = u_xlat5;
        let x_1120 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_1123 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1117.x, x_1117.y, x_1117.x, x_1117.y) * vec4<f32>(x_1120.x, x_1120.y, x_1120.x, x_1120.y)) + vec4<f32>(x_1123.x, x_1123.y, x_1123.z, x_1123.y));
        let x_1126 : vec4<f32> = u_xlat5;
        let x_1129 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_1132 : vec4<f32> = u_xlat10;
        let x_1134 : vec2<f32> = ((vec2<f32>(x_1126.x, x_1126.y) * vec2<f32>(x_1129.x, x_1129.y)) + vec2<f32>(x_1132.w, x_1132.y));
        let x_1135 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1134.x, x_1134.y, x_1135.z, x_1135.w);
        let x_1138 : f32 = u_xlat10.y;
        u_xlat7.z = x_1138;
        let x_1141 : vec4<f32> = u_xlat5;
        let x_1144 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_1147 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1141.x, x_1141.y, x_1141.x, x_1141.y) * vec4<f32>(x_1144.x, x_1144.y, x_1144.x, x_1144.y)) + vec4<f32>(x_1147.x, x_1147.y, x_1147.x, x_1147.z));
        let x_1151 : f32 = u_xlat8.w;
        u_xlat10.y = x_1151;
        let x_1154 : vec4<f32> = u_xlat5;
        let x_1157 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_1160 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1154.x, x_1154.y, x_1154.x, x_1154.y) * vec4<f32>(x_1157.x, x_1157.y, x_1157.x, x_1157.y)) + vec4<f32>(x_1160.x, x_1160.y, x_1160.z, x_1160.y));
        let x_1164 : vec4<f32> = u_xlat5;
        let x_1167 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_1170 : vec4<f32> = u_xlat10;
        u_xlat33 = ((vec2<f32>(x_1164.x, x_1164.y) * vec2<f32>(x_1167.x, x_1167.y)) + vec2<f32>(x_1170.w, x_1170.y));
        let x_1174 : f32 = u_xlat10.y;
        u_xlat7.w = x_1174;
        let x_1177 : vec4<f32> = u_xlat5;
        let x_1180 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_1183 : vec4<f32> = u_xlat7;
        u_xlat65 = ((vec2<f32>(x_1177.x, x_1177.y) * vec2<f32>(x_1180.x, x_1180.y)) + vec2<f32>(x_1183.x, x_1183.w));
        let x_1186 : vec4<f32> = u_xlat10;
        let x_1187 : vec3<f32> = vec3<f32>(x_1186.x, x_1186.z, x_1186.w);
        let x_1188 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1187.x, x_1188.y, x_1187.y, x_1187.z);
        let x_1190 : vec4<f32> = u_xlat5;
        let x_1193 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_1196 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1190.x, x_1190.y, x_1190.x, x_1190.y) * vec4<f32>(x_1193.x, x_1193.y, x_1193.x, x_1193.y)) + vec4<f32>(x_1196.x, x_1196.y, x_1196.z, x_1196.y));
        let x_1200 : vec4<f32> = u_xlat5;
        let x_1203 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_1206 : vec4<f32> = u_xlat8;
        u_xlat60 = ((vec2<f32>(x_1200.x, x_1200.y) * vec2<f32>(x_1203.x, x_1203.y)) + vec2<f32>(x_1206.w, x_1206.y));
        let x_1210 : f32 = u_xlat7.x;
        u_xlat8.x = x_1210;
        let x_1212 : vec4<f32> = u_xlat5;
        let x_1215 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_1218 : vec4<f32> = u_xlat8;
        let x_1220 : vec2<f32> = ((vec2<f32>(x_1212.x, x_1212.y) * vec2<f32>(x_1215.x, x_1215.y)) + vec2<f32>(x_1218.x, x_1218.y));
        let x_1221 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1220.x, x_1220.y, x_1221.z, x_1221.w);
        let x_1224 : vec4<f32> = u_xlat6;
        let x_1226 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1224.x, x_1224.x, x_1224.x, x_1224.x) * x_1226);
        let x_1229 : vec4<f32> = u_xlat6;
        let x_1231 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1229.y, x_1229.y, x_1229.y, x_1229.y) * x_1231);
        let x_1234 : vec4<f32> = u_xlat6;
        let x_1236 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1234.z, x_1234.z, x_1234.z, x_1234.z) * x_1236);
        let x_1238 : vec4<f32> = u_xlat6;
        let x_1240 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1238.w, x_1238.w, x_1238.w, x_1238.w) * x_1240);
        let x_1243 : vec4<f32> = u_xlat11;
        let x_1244 : vec2<f32> = vec2<f32>(x_1243.x, x_1243.y);
        let x_1246 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1244.x, x_1244.y, x_1246);
        let x_1253 : vec3<f32> = txVec13;
        let x_1255 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1253.xy, x_1253.z);
        u_xlat82 = x_1255;
        let x_1257 : vec4<f32> = u_xlat11;
        let x_1258 : vec2<f32> = vec2<f32>(x_1257.z, x_1257.w);
        let x_1260 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1258.x, x_1258.y, x_1260);
        let x_1267 : vec3<f32> = txVec14;
        let x_1269 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1267.xy, x_1267.z);
        u_xlat7.x = x_1269;
        let x_1272 : f32 = u_xlat7.x;
        let x_1274 : f32 = u_xlat16.y;
        u_xlat7.x = (x_1272 * x_1274);
        let x_1278 : f32 = u_xlat16.x;
        let x_1279 : f32 = u_xlat82;
        let x_1282 : f32 = u_xlat7.x;
        u_xlat82 = ((x_1278 * x_1279) + x_1282);
        let x_1285 : vec2<f32> = u_xlat57;
        let x_1287 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1285.x, x_1285.y, x_1287);
        let x_1294 : vec3<f32> = txVec15;
        let x_1296 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1294.xy, x_1294.z);
        u_xlat57.x = x_1296;
        let x_1299 : f32 = u_xlat16.z;
        let x_1301 : f32 = u_xlat57.x;
        let x_1303 : f32 = u_xlat82;
        u_xlat82 = ((x_1299 * x_1301) + x_1303);
        let x_1306 : vec4<f32> = u_xlat14;
        let x_1307 : vec2<f32> = vec2<f32>(x_1306.x, x_1306.y);
        let x_1309 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1307.x, x_1307.y, x_1309);
        let x_1316 : vec3<f32> = txVec16;
        let x_1318 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1316.xy, x_1316.z);
        u_xlat57.x = x_1318;
        let x_1321 : f32 = u_xlat16.w;
        let x_1323 : f32 = u_xlat57.x;
        let x_1325 : f32 = u_xlat82;
        u_xlat82 = ((x_1321 * x_1323) + x_1325);
        let x_1328 : vec4<f32> = u_xlat12;
        let x_1329 : vec2<f32> = vec2<f32>(x_1328.x, x_1328.y);
        let x_1331 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1329.x, x_1329.y, x_1331);
        let x_1338 : vec3<f32> = txVec17;
        let x_1340 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1338.xy, x_1338.z);
        u_xlat57.x = x_1340;
        let x_1343 : f32 = u_xlat17.x;
        let x_1345 : f32 = u_xlat57.x;
        let x_1347 : f32 = u_xlat82;
        u_xlat82 = ((x_1343 * x_1345) + x_1347);
        let x_1350 : vec4<f32> = u_xlat12;
        let x_1351 : vec2<f32> = vec2<f32>(x_1350.z, x_1350.w);
        let x_1353 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1351.x, x_1351.y, x_1353);
        let x_1360 : vec3<f32> = txVec18;
        let x_1362 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1360.xy, x_1360.z);
        u_xlat57.x = x_1362;
        let x_1365 : f32 = u_xlat17.y;
        let x_1367 : f32 = u_xlat57.x;
        let x_1369 : f32 = u_xlat82;
        u_xlat82 = ((x_1365 * x_1367) + x_1369);
        let x_1372 : vec4<f32> = u_xlat13;
        let x_1373 : vec2<f32> = vec2<f32>(x_1372.x, x_1372.y);
        let x_1375 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1373.x, x_1373.y, x_1375);
        let x_1382 : vec3<f32> = txVec19;
        let x_1384 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1382.xy, x_1382.z);
        u_xlat57.x = x_1384;
        let x_1387 : f32 = u_xlat17.z;
        let x_1389 : f32 = u_xlat57.x;
        let x_1391 : f32 = u_xlat82;
        u_xlat82 = ((x_1387 * x_1389) + x_1391);
        let x_1394 : vec4<f32> = u_xlat14;
        let x_1395 : vec2<f32> = vec2<f32>(x_1394.z, x_1394.w);
        let x_1397 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1395.x, x_1395.y, x_1397);
        let x_1404 : vec3<f32> = txVec20;
        let x_1406 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1404.xy, x_1404.z);
        u_xlat57.x = x_1406;
        let x_1409 : f32 = u_xlat17.w;
        let x_1411 : f32 = u_xlat57.x;
        let x_1413 : f32 = u_xlat82;
        u_xlat82 = ((x_1409 * x_1411) + x_1413);
        let x_1416 : vec4<f32> = u_xlat15;
        let x_1417 : vec2<f32> = vec2<f32>(x_1416.x, x_1416.y);
        let x_1419 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1417.x, x_1417.y, x_1419);
        let x_1426 : vec3<f32> = txVec21;
        let x_1428 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1426.xy, x_1426.z);
        u_xlat57.x = x_1428;
        let x_1431 : f32 = u_xlat18.x;
        let x_1433 : f32 = u_xlat57.x;
        let x_1435 : f32 = u_xlat82;
        u_xlat82 = ((x_1431 * x_1433) + x_1435);
        let x_1438 : vec4<f32> = u_xlat15;
        let x_1439 : vec2<f32> = vec2<f32>(x_1438.z, x_1438.w);
        let x_1441 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1439.x, x_1439.y, x_1441);
        let x_1448 : vec3<f32> = txVec22;
        let x_1450 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1448.xy, x_1448.z);
        u_xlat57.x = x_1450;
        let x_1453 : f32 = u_xlat18.y;
        let x_1455 : f32 = u_xlat57.x;
        let x_1457 : f32 = u_xlat82;
        u_xlat82 = ((x_1453 * x_1455) + x_1457);
        let x_1460 : vec2<f32> = u_xlat33;
        let x_1462 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1460.x, x_1460.y, x_1462);
        let x_1469 : vec3<f32> = txVec23;
        let x_1471 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1469.xy, x_1469.z);
        u_xlat57.x = x_1471;
        let x_1474 : f32 = u_xlat18.z;
        let x_1476 : f32 = u_xlat57.x;
        let x_1478 : f32 = u_xlat82;
        u_xlat82 = ((x_1474 * x_1476) + x_1478);
        let x_1481 : vec2<f32> = u_xlat65;
        let x_1483 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1481.x, x_1481.y, x_1483);
        let x_1490 : vec3<f32> = txVec24;
        let x_1492 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1490.xy, x_1490.z);
        u_xlat57.x = x_1492;
        let x_1495 : f32 = u_xlat18.w;
        let x_1497 : f32 = u_xlat57.x;
        let x_1499 : f32 = u_xlat82;
        u_xlat82 = ((x_1495 * x_1497) + x_1499);
        let x_1502 : vec4<f32> = u_xlat10;
        let x_1503 : vec2<f32> = vec2<f32>(x_1502.x, x_1502.y);
        let x_1505 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1503.x, x_1503.y, x_1505);
        let x_1512 : vec3<f32> = txVec25;
        let x_1514 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1512.xy, x_1512.z);
        u_xlat57.x = x_1514;
        let x_1517 : f32 = u_xlat6.x;
        let x_1519 : f32 = u_xlat57.x;
        let x_1521 : f32 = u_xlat82;
        u_xlat82 = ((x_1517 * x_1519) + x_1521);
        let x_1524 : vec4<f32> = u_xlat10;
        let x_1525 : vec2<f32> = vec2<f32>(x_1524.z, x_1524.w);
        let x_1527 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1525.x, x_1525.y, x_1527);
        let x_1534 : vec3<f32> = txVec26;
        let x_1536 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1534.xy, x_1534.z);
        u_xlat57.x = x_1536;
        let x_1539 : f32 = u_xlat6.y;
        let x_1541 : f32 = u_xlat57.x;
        let x_1543 : f32 = u_xlat82;
        u_xlat82 = ((x_1539 * x_1541) + x_1543);
        let x_1546 : vec2<f32> = u_xlat60;
        let x_1548 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1546.x, x_1546.y, x_1548);
        let x_1555 : vec3<f32> = txVec27;
        let x_1557 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1555.xy, x_1555.z);
        u_xlat57.x = x_1557;
        let x_1560 : f32 = u_xlat6.z;
        let x_1562 : f32 = u_xlat57.x;
        let x_1564 : f32 = u_xlat82;
        u_xlat82 = ((x_1560 * x_1562) + x_1564);
        let x_1567 : vec4<f32> = u_xlat5;
        let x_1568 : vec2<f32> = vec2<f32>(x_1567.x, x_1567.y);
        let x_1570 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1568.x, x_1568.y, x_1570);
        let x_1577 : vec3<f32> = txVec28;
        let x_1579 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1577.xy, x_1577.z);
        u_xlat5.x = x_1579;
        let x_1582 : f32 = u_xlat6.w;
        let x_1584 : f32 = u_xlat5.x;
        let x_1586 : f32 = u_xlat82;
        u_xlat80 = ((x_1582 * x_1584) + x_1586);
      }
    }
  } else {
    let x_1590 : vec4<f32> = u_xlat4;
    let x_1591 : vec2<f32> = vec2<f32>(x_1590.x, x_1590.y);
    let x_1593 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1591.x, x_1591.y, x_1593);
    let x_1600 : vec3<f32> = txVec29;
    let x_1602 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1600.xy, x_1600.z);
    u_xlat80 = x_1602;
  }
  let x_1604 : f32 = x_130.x_MainLightShadowParams.x;
  u_xlat82 = (-(x_1604) + 1.0f);
  let x_1607 : f32 = u_xlat80;
  let x_1609 : f32 = x_130.x_MainLightShadowParams.x;
  let x_1611 : f32 = u_xlat82;
  u_xlat80 = ((x_1607 * x_1609) + x_1611);
  let x_1615 : f32 = u_xlat4.z;
  u_xlatb5 = (0.0f >= x_1615);
  let x_1619 : f32 = u_xlat4.z;
  u_xlatb31 = (x_1619 >= 1.0f);
  let x_1621 : bool = u_xlatb31;
  let x_1622 : bool = u_xlatb5;
  u_xlatb5 = (x_1621 | x_1622);
  let x_1624 : bool = u_xlatb5;
  let x_1625 : f32 = u_xlat80;
  u_xlat80 = select(x_1625, 1.0f, x_1624);
  let x_1627 : vec3<f32> = u_xlat0;
  let x_1629 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat0.x = dot(x_1627, -(vec3<f32>(x_1629.x, x_1629.y, x_1629.z)));
  let x_1635 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1635, 0.0f, 1.0f);
  let x_1638 : f32 = u_xlat80;
  let x_1641 : vec4<f32> = x_53.x_MainLightColor;
  u_xlat31 = (vec3<f32>(x_1638, x_1638, x_1638) * vec3<f32>(x_1641.x, x_1641.y, x_1641.z));
  let x_1644 : vec3<f32> = u_xlat0;
  let x_1646 : vec3<f32> = u_xlat31;
  u_xlat0 = (vec3<f32>(x_1644.x, x_1644.x, x_1644.x) * x_1646);
  let x_1648 : vec3<f32> = u_xlat0;
  let x_1649 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_1648 * vec3<f32>(x_1649.x, x_1649.y, x_1649.z));
  let x_1654 : f32 = u_xlat1.w;
  u_xlatb1 = (x_1654 >= 0.40000000596046447754f);
  let x_1657 : bool = u_xlatb1;
  if (x_1657) {
    let x_1663 : f32 = u_xlat1.w;
    x_1659 = x_1663;
  } else {
    x_1659 = 0.0f;
  }
  let x_1665 : f32 = x_1659;
  u_xlat1.x = x_1665;
  let x_1669 : f32 = u_xlat1.w;
  u_xlat27.x = (x_1669 + -0.40000000596046447754f);
  let x_1675 : f32 = u_xlat1.w;
  u_xlat53 = dpdxCoarse(x_1675);
  let x_1679 : f32 = u_xlat1.w;
  u_xlat79 = dpdyCoarse(x_1679);
  let x_1681 : f32 = u_xlat79;
  let x_1683 : f32 = u_xlat53;
  u_xlat53 = (abs(x_1681) + abs(x_1683));
  let x_1686 : f32 = u_xlat53;
  u_xlat53 = max(x_1686, 0.00009999999747378752f);
  let x_1690 : f32 = u_xlat27.x;
  let x_1691 : f32 = u_xlat53;
  u_xlat27.x = (x_1690 / x_1691);
  let x_1695 : f32 = u_xlat27.x;
  u_xlat27.x = (x_1695 + 0.5f);
  let x_1699 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_1699, 0.0f, 1.0f);
  let x_1704 : f32 = x_53.x_AlphaToMaskAvailable;
  u_xlatb53 = !((x_1704 == 0.0f));
  let x_1706 : bool = u_xlatb53;
  if (x_1706) {
    let x_1711 : f32 = u_xlat27.x;
    x_1707 = x_1711;
  } else {
    let x_1714 : f32 = u_xlat1.x;
    x_1707 = x_1714;
  }
  let x_1715 : f32 = x_1707;
  u_xlat1.x = x_1715;
  let x_1718 : f32 = u_xlat1.x;
  u_xlat27.x = (x_1718 + -0.00009999999747378752f);
  let x_1726 : f32 = u_xlat27.x;
  u_xlatb27.x = (x_1726 < 0.0f);
  let x_1730 : bool = u_xlatb27.x;
  if (((select(0i, 1i, x_1730) * -1i) != 0i)) {
    discard;
  }
  let x_1740 : f32 = vs_INTERP4.w;
  u_xlatb27.x = (0.0f < x_1740);
  let x_1748 : f32 = x_1746.unity_WorldTransformParams.w;
  u_xlatb27.z = (x_1748 >= 0.0f);
  let x_1752 : bool = u_xlatb27.x;
  u_xlat27.x = select(-1.0f, 1.0f, x_1752);
  let x_1756 : bool = u_xlatb27.z;
  u_xlat27.z = select(-1.0f, 1.0f, x_1756);
  let x_1760 : f32 = u_xlat27.z;
  let x_1762 : f32 = u_xlat27.x;
  u_xlat27.x = (x_1760 * x_1762);
  let x_1765 : vec4<f32> = vs_INTERP4;
  let x_1767 : vec3<f32> = vs_INTERP9;
  u_xlat31 = (vec3<f32>(x_1765.y, x_1765.z, x_1765.x) * vec3<f32>(x_1767.z, x_1767.x, x_1767.y));
  let x_1770 : vec3<f32> = vs_INTERP9;
  let x_1772 : vec4<f32> = vs_INTERP4;
  let x_1775 : vec3<f32> = u_xlat31;
  u_xlat31 = ((vec3<f32>(x_1770.y, x_1770.z, x_1770.x) * vec3<f32>(x_1772.z, x_1772.x, x_1772.y)) + -(x_1775));
  let x_1778 : vec3<f32> = u_xlat27;
  let x_1780 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_1778.x, x_1778.x, x_1778.x) * x_1780);
  let x_1782 : vec3<f32> = u_xlat29;
  let x_1784 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_1782.y, x_1782.y, x_1782.y) * x_1784);
  let x_1786 : vec3<f32> = u_xlat29;
  let x_1788 : vec4<f32> = vs_INTERP4;
  let x_1791 : vec3<f32> = u_xlat31;
  u_xlat31 = ((vec3<f32>(x_1786.x, x_1786.x, x_1786.x) * vec3<f32>(x_1788.x, x_1788.y, x_1788.z)) + x_1791);
  let x_1793 : vec3<f32> = u_xlat29;
  let x_1795 : vec3<f32> = vs_INTERP9;
  let x_1797 : vec3<f32> = u_xlat31;
  u_xlat29 = ((vec3<f32>(x_1793.z, x_1793.z, x_1793.z) * x_1795) + x_1797);
  let x_1799 : vec3<f32> = u_xlat29;
  let x_1800 : vec3<f32> = u_xlat29;
  u_xlat27.x = dot(x_1799, x_1800);
  let x_1804 : f32 = u_xlat27.x;
  u_xlat27.x = inverseSqrt(x_1804);
  let x_1807 : vec3<f32> = u_xlat27;
  let x_1809 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_1807.x, x_1807.x, x_1807.x) * x_1809);
  let x_1812 : f32 = x_53.unity_OrthoParams.w;
  u_xlatb27.x = (x_1812 == 0.0f);
  let x_1815 : vec3<f32> = vs_INTERP8;
  let x_1819 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  u_xlat31 = (-(x_1815) + x_1819);
  let x_1821 : vec3<f32> = u_xlat31;
  let x_1822 : vec3<f32> = u_xlat31;
  u_xlat79 = dot(x_1821, x_1822);
  let x_1824 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_1824);
  let x_1826 : f32 = u_xlat79;
  let x_1828 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_1826, x_1826, x_1826) * x_1828);
  let x_1832 : f32 = x_53.unity_MatrixV[0i].z;
  u_xlat6.x = x_1832;
  let x_1835 : f32 = x_53.unity_MatrixV[1i].z;
  u_xlat6.y = x_1835;
  let x_1838 : f32 = x_53.unity_MatrixV[2i].z;
  u_xlat6.z = x_1838;
  let x_1841 : bool = u_xlatb27.x;
  if (x_1841) {
    let x_1845 : vec3<f32> = u_xlat31;
    x_1842 = x_1845;
  } else {
    let x_1847 : vec4<f32> = u_xlat6;
    x_1842 = vec3<f32>(x_1847.x, x_1847.y, x_1847.z);
  }
  let x_1849 : vec3<f32> = x_1842;
  u_xlat31 = x_1849;
  let x_1851 : f32 = vs_INTERP8.y;
  let x_1853 : f32 = x_53.unity_MatrixV[1i].z;
  u_xlat27.x = (x_1851 * x_1853);
  let x_1857 : f32 = x_53.unity_MatrixV[0i].z;
  let x_1859 : f32 = vs_INTERP8.x;
  let x_1862 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_1857 * x_1859) + x_1862);
  let x_1866 : f32 = x_53.unity_MatrixV[2i].z;
  let x_1868 : f32 = vs_INTERP8.z;
  let x_1871 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_1866 * x_1868) + x_1871);
  let x_1875 : f32 = u_xlat27.x;
  let x_1877 : f32 = x_53.unity_MatrixV[3i].z;
  u_xlat27.x = (x_1875 + x_1877);
  let x_1881 : f32 = u_xlat27.x;
  let x_1884 : f32 = x_53.x_ProjectionParams.y;
  u_xlat27.x = (-(x_1881) + -(x_1884));
  let x_1889 : f32 = u_xlat27.x;
  u_xlat27.x = max(x_1889, 0.0f);
  let x_1893 : f32 = u_xlat27.x;
  let x_1895 : f32 = x_53.unity_FogParams.x;
  u_xlat27.x = (x_1893 * x_1895);
  let x_1905 : vec2<f32> = vs_INTERP0;
  let x_1907 : f32 = x_53.x_GlobalMipBias.x;
  let x_1908 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_1905, x_1907);
  u_xlat6 = x_1908;
  let x_1913 : vec2<f32> = vs_INTERP0;
  let x_1915 : f32 = x_53.x_GlobalMipBias.x;
  let x_1916 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_1913, x_1915);
  let x_1917 : vec3<f32> = vec3<f32>(x_1916.x, x_1916.y, x_1916.z);
  let x_1918 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1917.x, x_1917.y, x_1917.z, x_1918.w);
  let x_1920 : vec4<f32> = u_xlat6;
  let x_1923 : vec3<f32> = (vec3<f32>(x_1920.x, x_1920.y, x_1920.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1924 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1923.x, x_1923.y, x_1923.z, x_1924.w);
  let x_1926 : vec3<f32> = u_xlat29;
  let x_1927 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(x_1926, vec3<f32>(x_1927.x, x_1927.y, x_1927.z));
  let x_1930 : f32 = u_xlat79;
  u_xlat79 = (x_1930 + 0.5f);
  let x_1932 : f32 = u_xlat79;
  let x_1934 : vec4<f32> = u_xlat7;
  let x_1936 : vec3<f32> = (vec3<f32>(x_1932, x_1932, x_1932) * vec3<f32>(x_1934.x, x_1934.y, x_1934.z));
  let x_1937 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1936.x, x_1936.y, x_1936.z, x_1937.w);
  let x_1940 : f32 = u_xlat6.w;
  u_xlat79 = max(x_1940, 0.00009999999747378752f);
  let x_1942 : vec4<f32> = u_xlat6;
  let x_1944 : f32 = u_xlat79;
  let x_1946 : vec3<f32> = (vec3<f32>(x_1942.x, x_1942.y, x_1942.z) / vec3<f32>(x_1944, x_1944, x_1944));
  let x_1947 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1946.x, x_1946.y, x_1946.z, x_1947.w);
  let x_1950 : f32 = u_xlat3.x;
  u_xlat3.x = x_1950;
  let x_1953 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1953, 0.0f, 1.0f);
  let x_1957 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_1957, 1.0f);
  let x_1960 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1960 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_1965 : f32 = u_xlat3.x;
  u_xlat79 = (-(x_1965) + 1.0f);
  let x_1968 : f32 = u_xlat79;
  let x_1969 : f32 = u_xlat79;
  u_xlat80 = (x_1968 * x_1969);
  let x_1971 : f32 = u_xlat80;
  u_xlat80 = max(x_1971, 0.0078125f);
  let x_1975 : f32 = u_xlat80;
  let x_1976 : f32 = u_xlat80;
  u_xlat84 = (x_1975 * x_1976);
  let x_1979 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1979 + 0.04000002145767211914f);
  let x_1984 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_1984, 1.0f);
  let x_1987 : f32 = u_xlat80;
  u_xlat7.x = ((x_1987 * 4.0f) + 2.0f);
  let x_1992 : f32 = vs_INTERP6.w;
  u_xlat33.x = min(x_1992, 1.0f);
  let x_1995 : bool = u_xlatb78;
  if (x_1995) {
    let x_1999 : f32 = x_130.x_MainLightShadowParams.y;
    u_xlatb78 = (x_1999 == 1.0f);
    let x_2001 : bool = u_xlatb78;
    if (x_2001) {
      let x_2004 : vec4<f32> = u_xlat4;
      let x_2007 : vec4<f32> = x_130.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_2004.x, x_2004.y, x_2004.x, x_2004.y) + x_2007);
      let x_2010 : vec4<f32> = u_xlat8;
      let x_2011 : vec2<f32> = vec2<f32>(x_2010.x, x_2010.y);
      let x_2013 : f32 = u_xlat4.z;
      txVec30 = vec3<f32>(x_2011.x, x_2011.y, x_2013);
      let x_2020 : vec3<f32> = txVec30;
      let x_2022 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2020.xy, x_2020.z);
      u_xlat9.x = x_2022;
      let x_2025 : vec4<f32> = u_xlat8;
      let x_2026 : vec2<f32> = vec2<f32>(x_2025.z, x_2025.w);
      let x_2028 : f32 = u_xlat4.z;
      txVec31 = vec3<f32>(x_2026.x, x_2026.y, x_2028);
      let x_2035 : vec3<f32> = txVec31;
      let x_2037 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2035.xy, x_2035.z);
      u_xlat9.y = x_2037;
      let x_2039 : vec4<f32> = u_xlat4;
      let x_2042 : vec4<f32> = x_130.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_2039.x, x_2039.y, x_2039.x, x_2039.y) + x_2042);
      let x_2045 : vec4<f32> = u_xlat8;
      let x_2046 : vec2<f32> = vec2<f32>(x_2045.x, x_2045.y);
      let x_2048 : f32 = u_xlat4.z;
      txVec32 = vec3<f32>(x_2046.x, x_2046.y, x_2048);
      let x_2055 : vec3<f32> = txVec32;
      let x_2057 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2055.xy, x_2055.z);
      u_xlat9.z = x_2057;
      let x_2060 : vec4<f32> = u_xlat8;
      let x_2061 : vec2<f32> = vec2<f32>(x_2060.z, x_2060.w);
      let x_2063 : f32 = u_xlat4.z;
      txVec33 = vec3<f32>(x_2061.x, x_2061.y, x_2063);
      let x_2070 : vec3<f32> = txVec33;
      let x_2072 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2070.xy, x_2070.z);
      u_xlat9.w = x_2072;
      let x_2074 : vec4<f32> = u_xlat9;
      u_xlat78 = dot(x_2074, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_2079 : f32 = x_130.x_MainLightShadowParams.y;
      u_xlatb59 = (x_2079 == 2.0f);
      let x_2081 : bool = u_xlatb59;
      if (x_2081) {
        let x_2084 : vec4<f32> = u_xlat4;
        let x_2087 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        u_xlat59 = ((vec2<f32>(x_2084.x, x_2084.y) * vec2<f32>(x_2087.z, x_2087.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2091 : vec2<f32> = u_xlat59;
        u_xlat59 = floor(x_2091);
        let x_2093 : vec4<f32> = u_xlat4;
        let x_2096 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2099 : vec2<f32> = u_xlat59;
        let x_2101 : vec2<f32> = ((vec2<f32>(x_2093.x, x_2093.y) * vec2<f32>(x_2096.z, x_2096.w)) + -(x_2099));
        let x_2102 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2101.x, x_2101.y, x_2102.z, x_2102.w);
        let x_2104 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2104.x, x_2104.x, x_2104.y, x_2104.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2107 : vec4<f32> = u_xlat9;
        let x_2109 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2107.x, x_2107.x, x_2107.z, x_2107.z) * vec4<f32>(x_2109.x, x_2109.x, x_2109.z, x_2109.z));
        let x_2112 : vec4<f32> = u_xlat10;
        u_xlat60 = (vec2<f32>(x_2112.y, x_2112.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_2115 : vec4<f32> = u_xlat10;
        let x_2118 : vec4<f32> = u_xlat8;
        let x_2121 : vec2<f32> = ((vec2<f32>(x_2115.x, x_2115.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2118.x, x_2118.y)));
        let x_2122 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2121.x, x_2122.y, x_2121.y, x_2122.w);
        let x_2124 : vec4<f32> = u_xlat8;
        let x_2127 : vec2<f32> = (-(vec2<f32>(x_2124.x, x_2124.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2128 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2127.x, x_2127.y, x_2128.z, x_2128.w);
        let x_2131 : vec4<f32> = u_xlat8;
        u_xlat62 = min(vec2<f32>(x_2131.x, x_2131.y), vec2<f32>(0.0f, 0.0f));
        let x_2134 : vec2<f32> = u_xlat62;
        let x_2136 : vec2<f32> = u_xlat62;
        let x_2138 : vec4<f32> = u_xlat10;
        u_xlat62 = ((-(x_2134) * x_2136) + vec2<f32>(x_2138.x, x_2138.y));
        let x_2141 : vec4<f32> = u_xlat8;
        let x_2143 : vec2<f32> = max(vec2<f32>(x_2141.x, x_2141.y), vec2<f32>(0.0f, 0.0f));
        let x_2144 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2143.x, x_2143.y, x_2144.z, x_2144.w);
        let x_2146 : vec4<f32> = u_xlat8;
        let x_2149 : vec4<f32> = u_xlat8;
        let x_2152 : vec4<f32> = u_xlat9;
        let x_2154 : vec2<f32> = ((-(vec2<f32>(x_2146.x, x_2146.y)) * vec2<f32>(x_2149.x, x_2149.y)) + vec2<f32>(x_2152.y, x_2152.w));
        let x_2155 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2154.x, x_2154.y, x_2155.z, x_2155.w);
        let x_2157 : vec2<f32> = u_xlat62;
        u_xlat62 = (x_2157 + vec2<f32>(1.0f, 1.0f));
        let x_2159 : vec4<f32> = u_xlat8;
        let x_2161 : vec2<f32> = (vec2<f32>(x_2159.x, x_2159.y) + vec2<f32>(1.0f, 1.0f));
        let x_2162 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2161.x, x_2161.y, x_2162.z, x_2162.w);
        let x_2164 : vec4<f32> = u_xlat9;
        let x_2166 : vec2<f32> = (vec2<f32>(x_2164.x, x_2164.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2167 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2166.x, x_2166.y, x_2167.z, x_2167.w);
        let x_2169 : vec4<f32> = u_xlat10;
        let x_2171 : vec2<f32> = (vec2<f32>(x_2169.x, x_2169.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2172 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2171.x, x_2171.y, x_2172.z, x_2172.w);
        let x_2174 : vec2<f32> = u_xlat62;
        let x_2175 : vec2<f32> = (x_2174 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2176 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2175.x, x_2175.y, x_2176.z, x_2176.w);
        let x_2178 : vec4<f32> = u_xlat8;
        let x_2180 : vec2<f32> = (vec2<f32>(x_2178.x, x_2178.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2181 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2180.x, x_2180.y, x_2181.z, x_2181.w);
        let x_2183 : vec4<f32> = u_xlat9;
        let x_2185 : vec2<f32> = (vec2<f32>(x_2183.y, x_2183.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2186 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2185.x, x_2185.y, x_2186.z, x_2186.w);
        let x_2189 : f32 = u_xlat10.x;
        u_xlat11.z = x_2189;
        let x_2192 : f32 = u_xlat8.x;
        u_xlat11.w = x_2192;
        let x_2195 : f32 = u_xlat13.x;
        u_xlat12.z = x_2195;
        let x_2198 : f32 = u_xlat60.x;
        u_xlat12.w = x_2198;
        let x_2200 : vec4<f32> = u_xlat11;
        let x_2202 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_2200.z, x_2200.w, x_2200.x, x_2200.z) + vec4<f32>(x_2202.z, x_2202.w, x_2202.x, x_2202.z));
        let x_2206 : f32 = u_xlat11.y;
        u_xlat10.z = x_2206;
        let x_2209 : f32 = u_xlat8.y;
        u_xlat10.w = x_2209;
        let x_2212 : f32 = u_xlat12.y;
        u_xlat13.z = x_2212;
        let x_2215 : f32 = u_xlat60.y;
        u_xlat13.w = x_2215;
        let x_2217 : vec4<f32> = u_xlat10;
        let x_2219 : vec4<f32> = u_xlat13;
        let x_2221 : vec3<f32> = (vec3<f32>(x_2217.z, x_2217.y, x_2217.w) + vec3<f32>(x_2219.z, x_2219.y, x_2219.w));
        let x_2222 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2221.x, x_2221.y, x_2221.z, x_2222.w);
        let x_2224 : vec4<f32> = u_xlat12;
        let x_2226 : vec4<f32> = u_xlat9;
        let x_2228 : vec3<f32> = (vec3<f32>(x_2224.x, x_2224.z, x_2224.w) / vec3<f32>(x_2226.z, x_2226.w, x_2226.y));
        let x_2229 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2228.x, x_2228.y, x_2228.z, x_2229.w);
        let x_2231 : vec4<f32> = u_xlat10;
        let x_2233 : vec3<f32> = (vec3<f32>(x_2231.x, x_2231.y, x_2231.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2234 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2233.x, x_2233.y, x_2233.z, x_2234.w);
        let x_2236 : vec4<f32> = u_xlat13;
        let x_2238 : vec4<f32> = u_xlat8;
        let x_2240 : vec3<f32> = (vec3<f32>(x_2236.z, x_2236.y, x_2236.w) / vec3<f32>(x_2238.x, x_2238.y, x_2238.z));
        let x_2241 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2240.x, x_2240.y, x_2240.z, x_2241.w);
        let x_2243 : vec4<f32> = u_xlat11;
        let x_2245 : vec3<f32> = (vec3<f32>(x_2243.x, x_2243.y, x_2243.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2246 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2245.x, x_2245.y, x_2245.z, x_2246.w);
        let x_2248 : vec4<f32> = u_xlat10;
        let x_2251 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2253 : vec3<f32> = (vec3<f32>(x_2248.y, x_2248.x, x_2248.z) * vec3<f32>(x_2251.x, x_2251.x, x_2251.x));
        let x_2254 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2253.x, x_2253.y, x_2253.z, x_2254.w);
        let x_2256 : vec4<f32> = u_xlat11;
        let x_2259 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2261 : vec3<f32> = (vec3<f32>(x_2256.x, x_2256.y, x_2256.z) * vec3<f32>(x_2259.y, x_2259.y, x_2259.y));
        let x_2262 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2261.x, x_2261.y, x_2261.z, x_2262.w);
        let x_2265 : f32 = u_xlat11.x;
        u_xlat10.w = x_2265;
        let x_2267 : vec2<f32> = u_xlat59;
        let x_2270 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2273 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_2267.x, x_2267.y, x_2267.x, x_2267.y) * vec4<f32>(x_2270.x, x_2270.y, x_2270.x, x_2270.y)) + vec4<f32>(x_2273.y, x_2273.w, x_2273.x, x_2273.w));
        let x_2276 : vec2<f32> = u_xlat59;
        let x_2278 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2281 : vec4<f32> = u_xlat10;
        let x_2283 : vec2<f32> = ((x_2276 * vec2<f32>(x_2278.x, x_2278.y)) + vec2<f32>(x_2281.z, x_2281.w));
        let x_2284 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2283.x, x_2283.y, x_2284.z, x_2284.w);
        let x_2287 : f32 = u_xlat10.y;
        u_xlat11.w = x_2287;
        let x_2289 : vec4<f32> = u_xlat11;
        let x_2290 : vec2<f32> = vec2<f32>(x_2289.y, x_2289.z);
        let x_2291 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2291.x, x_2290.x, x_2291.z, x_2290.y);
        let x_2293 : vec2<f32> = u_xlat59;
        let x_2296 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2299 : vec4<f32> = u_xlat10;
        u_xlat14 = ((vec4<f32>(x_2293.x, x_2293.y, x_2293.x, x_2293.y) * vec4<f32>(x_2296.x, x_2296.y, x_2296.x, x_2296.y)) + vec4<f32>(x_2299.x, x_2299.y, x_2299.z, x_2299.y));
        let x_2302 : vec2<f32> = u_xlat59;
        let x_2305 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2308 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_2302.x, x_2302.y, x_2302.x, x_2302.y) * vec4<f32>(x_2305.x, x_2305.y, x_2305.x, x_2305.y)) + vec4<f32>(x_2308.w, x_2308.y, x_2308.w, x_2308.z));
        let x_2311 : vec2<f32> = u_xlat59;
        let x_2314 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2317 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2311.x, x_2311.y, x_2311.x, x_2311.y) * vec4<f32>(x_2314.x, x_2314.y, x_2314.x, x_2314.y)) + vec4<f32>(x_2317.x, x_2317.w, x_2317.z, x_2317.w));
        let x_2320 : vec4<f32> = u_xlat8;
        let x_2322 : vec4<f32> = u_xlat9;
        u_xlat15 = (vec4<f32>(x_2320.x, x_2320.x, x_2320.x, x_2320.y) * vec4<f32>(x_2322.z, x_2322.w, x_2322.y, x_2322.z));
        let x_2325 : vec4<f32> = u_xlat8;
        let x_2327 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_2325.y, x_2325.y, x_2325.z, x_2325.z) * x_2327);
        let x_2330 : f32 = u_xlat8.z;
        let x_2332 : f32 = u_xlat9.y;
        u_xlat59.x = (x_2330 * x_2332);
        let x_2336 : vec4<f32> = u_xlat12;
        let x_2337 : vec2<f32> = vec2<f32>(x_2336.x, x_2336.y);
        let x_2339 : f32 = u_xlat4.z;
        txVec34 = vec3<f32>(x_2337.x, x_2337.y, x_2339);
        let x_2347 : vec3<f32> = txVec34;
        let x_2349 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2347.xy, x_2347.z);
        u_xlat85 = x_2349;
        let x_2351 : vec4<f32> = u_xlat12;
        let x_2352 : vec2<f32> = vec2<f32>(x_2351.z, x_2351.w);
        let x_2354 : f32 = u_xlat4.z;
        txVec35 = vec3<f32>(x_2352.x, x_2352.y, x_2354);
        let x_2361 : vec3<f32> = txVec35;
        let x_2363 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2361.xy, x_2361.z);
        u_xlat8.x = x_2363;
        let x_2366 : f32 = u_xlat8.x;
        let x_2368 : f32 = u_xlat15.y;
        u_xlat8.x = (x_2366 * x_2368);
        let x_2372 : f32 = u_xlat15.x;
        let x_2373 : f32 = u_xlat85;
        let x_2376 : f32 = u_xlat8.x;
        u_xlat85 = ((x_2372 * x_2373) + x_2376);
        let x_2379 : vec4<f32> = u_xlat13;
        let x_2380 : vec2<f32> = vec2<f32>(x_2379.x, x_2379.y);
        let x_2382 : f32 = u_xlat4.z;
        txVec36 = vec3<f32>(x_2380.x, x_2380.y, x_2382);
        let x_2389 : vec3<f32> = txVec36;
        let x_2391 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2389.xy, x_2389.z);
        u_xlat8.x = x_2391;
        let x_2394 : f32 = u_xlat15.z;
        let x_2396 : f32 = u_xlat8.x;
        let x_2398 : f32 = u_xlat85;
        u_xlat85 = ((x_2394 * x_2396) + x_2398);
        let x_2401 : vec4<f32> = u_xlat11;
        let x_2402 : vec2<f32> = vec2<f32>(x_2401.x, x_2401.y);
        let x_2404 : f32 = u_xlat4.z;
        txVec37 = vec3<f32>(x_2402.x, x_2402.y, x_2404);
        let x_2411 : vec3<f32> = txVec37;
        let x_2413 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2411.xy, x_2411.z);
        u_xlat8.x = x_2413;
        let x_2416 : f32 = u_xlat15.w;
        let x_2418 : f32 = u_xlat8.x;
        let x_2420 : f32 = u_xlat85;
        u_xlat85 = ((x_2416 * x_2418) + x_2420);
        let x_2423 : vec4<f32> = u_xlat14;
        let x_2424 : vec2<f32> = vec2<f32>(x_2423.x, x_2423.y);
        let x_2426 : f32 = u_xlat4.z;
        txVec38 = vec3<f32>(x_2424.x, x_2424.y, x_2426);
        let x_2433 : vec3<f32> = txVec38;
        let x_2435 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2433.xy, x_2433.z);
        u_xlat8.x = x_2435;
        let x_2438 : f32 = u_xlat16.x;
        let x_2440 : f32 = u_xlat8.x;
        let x_2442 : f32 = u_xlat85;
        u_xlat85 = ((x_2438 * x_2440) + x_2442);
        let x_2445 : vec4<f32> = u_xlat14;
        let x_2446 : vec2<f32> = vec2<f32>(x_2445.z, x_2445.w);
        let x_2448 : f32 = u_xlat4.z;
        txVec39 = vec3<f32>(x_2446.x, x_2446.y, x_2448);
        let x_2455 : vec3<f32> = txVec39;
        let x_2457 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2455.xy, x_2455.z);
        u_xlat8.x = x_2457;
        let x_2460 : f32 = u_xlat16.y;
        let x_2462 : f32 = u_xlat8.x;
        let x_2464 : f32 = u_xlat85;
        u_xlat85 = ((x_2460 * x_2462) + x_2464);
        let x_2467 : vec4<f32> = u_xlat11;
        let x_2468 : vec2<f32> = vec2<f32>(x_2467.z, x_2467.w);
        let x_2470 : f32 = u_xlat4.z;
        txVec40 = vec3<f32>(x_2468.x, x_2468.y, x_2470);
        let x_2477 : vec3<f32> = txVec40;
        let x_2479 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2477.xy, x_2477.z);
        u_xlat8.x = x_2479;
        let x_2482 : f32 = u_xlat16.z;
        let x_2484 : f32 = u_xlat8.x;
        let x_2486 : f32 = u_xlat85;
        u_xlat85 = ((x_2482 * x_2484) + x_2486);
        let x_2489 : vec4<f32> = u_xlat10;
        let x_2490 : vec2<f32> = vec2<f32>(x_2489.x, x_2489.y);
        let x_2492 : f32 = u_xlat4.z;
        txVec41 = vec3<f32>(x_2490.x, x_2490.y, x_2492);
        let x_2499 : vec3<f32> = txVec41;
        let x_2501 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2499.xy, x_2499.z);
        u_xlat8.x = x_2501;
        let x_2504 : f32 = u_xlat16.w;
        let x_2506 : f32 = u_xlat8.x;
        let x_2508 : f32 = u_xlat85;
        u_xlat85 = ((x_2504 * x_2506) + x_2508);
        let x_2511 : vec4<f32> = u_xlat10;
        let x_2512 : vec2<f32> = vec2<f32>(x_2511.z, x_2511.w);
        let x_2514 : f32 = u_xlat4.z;
        txVec42 = vec3<f32>(x_2512.x, x_2512.y, x_2514);
        let x_2521 : vec3<f32> = txVec42;
        let x_2523 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2521.xy, x_2521.z);
        u_xlat8.x = x_2523;
        let x_2526 : f32 = u_xlat59.x;
        let x_2528 : f32 = u_xlat8.x;
        let x_2530 : f32 = u_xlat85;
        u_xlat78 = ((x_2526 * x_2528) + x_2530);
      } else {
        let x_2533 : vec4<f32> = u_xlat4;
        let x_2536 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        u_xlat59 = ((vec2<f32>(x_2533.x, x_2533.y) * vec2<f32>(x_2536.z, x_2536.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2540 : vec2<f32> = u_xlat59;
        u_xlat59 = floor(x_2540);
        let x_2542 : vec4<f32> = u_xlat4;
        let x_2545 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2548 : vec2<f32> = u_xlat59;
        let x_2550 : vec2<f32> = ((vec2<f32>(x_2542.x, x_2542.y) * vec2<f32>(x_2545.z, x_2545.w)) + -(x_2548));
        let x_2551 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2550.x, x_2550.y, x_2551.z, x_2551.w);
        let x_2553 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2553.x, x_2553.x, x_2553.y, x_2553.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2556 : vec4<f32> = u_xlat9;
        let x_2558 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2556.x, x_2556.x, x_2556.z, x_2556.z) * vec4<f32>(x_2558.x, x_2558.x, x_2558.z, x_2558.z));
        let x_2561 : vec4<f32> = u_xlat10;
        let x_2563 : vec2<f32> = (vec2<f32>(x_2561.y, x_2561.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2564 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2564.x, x_2563.x, x_2564.z, x_2563.y);
        let x_2566 : vec4<f32> = u_xlat10;
        let x_2569 : vec4<f32> = u_xlat8;
        u_xlat60 = ((vec2<f32>(x_2566.x, x_2566.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2569.x, x_2569.y)));
        let x_2573 : vec4<f32> = u_xlat8;
        let x_2576 : vec2<f32> = (-(vec2<f32>(x_2573.x, x_2573.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2577 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2576.x, x_2577.y, x_2576.y, x_2577.w);
        let x_2579 : vec4<f32> = u_xlat8;
        let x_2581 : vec2<f32> = min(vec2<f32>(x_2579.x, x_2579.y), vec2<f32>(0.0f, 0.0f));
        let x_2582 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2581.x, x_2581.y, x_2582.z, x_2582.w);
        let x_2584 : vec4<f32> = u_xlat10;
        let x_2587 : vec4<f32> = u_xlat10;
        let x_2590 : vec4<f32> = u_xlat9;
        let x_2592 : vec2<f32> = ((-(vec2<f32>(x_2584.x, x_2584.y)) * vec2<f32>(x_2587.x, x_2587.y)) + vec2<f32>(x_2590.x, x_2590.z));
        let x_2593 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2592.x, x_2593.y, x_2592.y, x_2593.w);
        let x_2595 : vec4<f32> = u_xlat8;
        let x_2597 : vec2<f32> = max(vec2<f32>(x_2595.x, x_2595.y), vec2<f32>(0.0f, 0.0f));
        let x_2598 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2597.x, x_2597.y, x_2598.z, x_2598.w);
        let x_2600 : vec4<f32> = u_xlat10;
        let x_2603 : vec4<f32> = u_xlat10;
        let x_2606 : vec4<f32> = u_xlat9;
        let x_2608 : vec2<f32> = ((-(vec2<f32>(x_2600.x, x_2600.y)) * vec2<f32>(x_2603.x, x_2603.y)) + vec2<f32>(x_2606.y, x_2606.w));
        let x_2609 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2609.x, x_2608.x, x_2609.z, x_2608.y);
        let x_2611 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2611 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2614 : f32 = u_xlat9.y;
        u_xlat10.z = (x_2614 * 0.08163200318813323975f);
        let x_2617 : vec2<f32> = u_xlat60;
        let x_2619 : vec2<f32> = (vec2<f32>(x_2617.y, x_2617.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2620 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2619.x, x_2619.y, x_2620.z, x_2620.w);
        let x_2622 : vec4<f32> = u_xlat9;
        u_xlat60 = (vec2<f32>(x_2622.x, x_2622.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2626 : f32 = u_xlat9.w;
        u_xlat12.z = (x_2626 * 0.08163200318813323975f);
        let x_2630 : f32 = u_xlat12.y;
        u_xlat10.x = x_2630;
        let x_2632 : vec4<f32> = u_xlat8;
        let x_2635 : vec2<f32> = ((vec2<f32>(x_2632.x, x_2632.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2636 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2636.x, x_2635.x, x_2636.z, x_2635.y);
        let x_2638 : vec4<f32> = u_xlat8;
        let x_2641 : vec2<f32> = ((vec2<f32>(x_2638.x, x_2638.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2642 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2641.x, x_2642.y, x_2641.y, x_2642.w);
        let x_2645 : f32 = u_xlat60.x;
        u_xlat9.y = x_2645;
        let x_2648 : f32 = u_xlat11.y;
        u_xlat9.w = x_2648;
        let x_2650 : vec4<f32> = u_xlat9;
        let x_2651 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2650 + x_2651);
        let x_2653 : vec4<f32> = u_xlat8;
        let x_2656 : vec2<f32> = ((vec2<f32>(x_2653.y, x_2653.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2657 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2657.x, x_2656.x, x_2657.z, x_2656.y);
        let x_2659 : vec4<f32> = u_xlat8;
        let x_2662 : vec2<f32> = ((vec2<f32>(x_2659.y, x_2659.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2663 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2662.x, x_2663.y, x_2662.y, x_2663.w);
        let x_2666 : f32 = u_xlat60.y;
        u_xlat11.y = x_2666;
        let x_2668 : vec4<f32> = u_xlat11;
        let x_2669 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_2668 + x_2669);
        let x_2671 : vec4<f32> = u_xlat9;
        let x_2672 : vec4<f32> = u_xlat10;
        u_xlat9 = (x_2671 / x_2672);
        let x_2674 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2674 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2676 : vec4<f32> = u_xlat11;
        let x_2677 : vec4<f32> = u_xlat8;
        u_xlat11 = (x_2676 / x_2677);
        let x_2679 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_2679 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2681 : vec4<f32> = u_xlat9;
        let x_2684 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_2681.w, x_2681.x, x_2681.y, x_2681.z) * vec4<f32>(x_2684.x, x_2684.x, x_2684.x, x_2684.x));
        let x_2687 : vec4<f32> = u_xlat11;
        let x_2690 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_2687.x, x_2687.w, x_2687.y, x_2687.z) * vec4<f32>(x_2690.y, x_2690.y, x_2690.y, x_2690.y));
        let x_2693 : vec4<f32> = u_xlat9;
        let x_2694 : vec3<f32> = vec3<f32>(x_2693.y, x_2693.z, x_2693.w);
        let x_2695 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2694.x, x_2695.y, x_2694.y, x_2694.z);
        let x_2698 : f32 = u_xlat11.x;
        u_xlat12.y = x_2698;
        let x_2700 : vec2<f32> = u_xlat59;
        let x_2703 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2706 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_2700.x, x_2700.y, x_2700.x, x_2700.y) * vec4<f32>(x_2703.x, x_2703.y, x_2703.x, x_2703.y)) + vec4<f32>(x_2706.x, x_2706.y, x_2706.z, x_2706.y));
        let x_2709 : vec2<f32> = u_xlat59;
        let x_2711 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2714 : vec4<f32> = u_xlat12;
        let x_2716 : vec2<f32> = ((x_2709 * vec2<f32>(x_2711.x, x_2711.y)) + vec2<f32>(x_2714.w, x_2714.y));
        let x_2717 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_2716.x, x_2716.y, x_2717.z, x_2717.w);
        let x_2720 : f32 = u_xlat12.y;
        u_xlat9.y = x_2720;
        let x_2723 : f32 = u_xlat11.z;
        u_xlat12.y = x_2723;
        let x_2725 : vec2<f32> = u_xlat59;
        let x_2728 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2731 : vec4<f32> = u_xlat12;
        u_xlat15 = ((vec4<f32>(x_2725.x, x_2725.y, x_2725.x, x_2725.y) * vec4<f32>(x_2728.x, x_2728.y, x_2728.x, x_2728.y)) + vec4<f32>(x_2731.x, x_2731.y, x_2731.z, x_2731.y));
        let x_2735 : vec2<f32> = u_xlat59;
        let x_2737 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2740 : vec4<f32> = u_xlat12;
        u_xlat66 = ((x_2735 * vec2<f32>(x_2737.x, x_2737.y)) + vec2<f32>(x_2740.w, x_2740.y));
        let x_2744 : f32 = u_xlat12.y;
        u_xlat9.z = x_2744;
        let x_2746 : vec2<f32> = u_xlat59;
        let x_2749 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2752 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_2746.x, x_2746.y, x_2746.x, x_2746.y) * vec4<f32>(x_2749.x, x_2749.y, x_2749.x, x_2749.y)) + vec4<f32>(x_2752.x, x_2752.y, x_2752.x, x_2752.z));
        let x_2756 : f32 = u_xlat11.w;
        u_xlat12.y = x_2756;
        let x_2758 : vec2<f32> = u_xlat59;
        let x_2761 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2764 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_2758.x, x_2758.y, x_2758.x, x_2758.y) * vec4<f32>(x_2761.x, x_2761.y, x_2761.x, x_2761.y)) + vec4<f32>(x_2764.x, x_2764.y, x_2764.z, x_2764.y));
        let x_2768 : vec2<f32> = u_xlat59;
        let x_2770 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2773 : vec4<f32> = u_xlat12;
        u_xlat35 = ((x_2768 * vec2<f32>(x_2770.x, x_2770.y)) + vec2<f32>(x_2773.w, x_2773.y));
        let x_2777 : f32 = u_xlat12.y;
        u_xlat9.w = x_2777;
        let x_2779 : vec2<f32> = u_xlat59;
        let x_2781 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2784 : vec4<f32> = u_xlat9;
        let x_2786 : vec2<f32> = ((x_2779 * vec2<f32>(x_2781.x, x_2781.y)) + vec2<f32>(x_2784.x, x_2784.w));
        let x_2787 : vec4<f32> = u_xlat18;
        u_xlat18 = vec4<f32>(x_2786.x, x_2786.y, x_2787.z, x_2787.w);
        let x_2789 : vec4<f32> = u_xlat12;
        let x_2790 : vec3<f32> = vec3<f32>(x_2789.x, x_2789.z, x_2789.w);
        let x_2791 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2790.x, x_2791.y, x_2790.y, x_2790.z);
        let x_2793 : vec2<f32> = u_xlat59;
        let x_2796 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2799 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2793.x, x_2793.y, x_2793.x, x_2793.y) * vec4<f32>(x_2796.x, x_2796.y, x_2796.x, x_2796.y)) + vec4<f32>(x_2799.x, x_2799.y, x_2799.z, x_2799.y));
        let x_2803 : vec2<f32> = u_xlat59;
        let x_2805 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2808 : vec4<f32> = u_xlat11;
        u_xlat63 = ((x_2803 * vec2<f32>(x_2805.x, x_2805.y)) + vec2<f32>(x_2808.w, x_2808.y));
        let x_2812 : f32 = u_xlat9.x;
        u_xlat11.x = x_2812;
        let x_2814 : vec2<f32> = u_xlat59;
        let x_2816 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2819 : vec4<f32> = u_xlat11;
        u_xlat59 = ((x_2814 * vec2<f32>(x_2816.x, x_2816.y)) + vec2<f32>(x_2819.x, x_2819.y));
        let x_2823 : vec4<f32> = u_xlat8;
        let x_2825 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_2823.x, x_2823.x, x_2823.x, x_2823.x) * x_2825);
        let x_2828 : vec4<f32> = u_xlat8;
        let x_2830 : vec4<f32> = u_xlat10;
        u_xlat20 = (vec4<f32>(x_2828.y, x_2828.y, x_2828.y, x_2828.y) * x_2830);
        let x_2833 : vec4<f32> = u_xlat8;
        let x_2835 : vec4<f32> = u_xlat10;
        u_xlat21 = (vec4<f32>(x_2833.z, x_2833.z, x_2833.z, x_2833.z) * x_2835);
        let x_2837 : vec4<f32> = u_xlat8;
        let x_2839 : vec4<f32> = u_xlat10;
        u_xlat8 = (vec4<f32>(x_2837.w, x_2837.w, x_2837.w, x_2837.w) * x_2839);
        let x_2842 : vec4<f32> = u_xlat13;
        let x_2843 : vec2<f32> = vec2<f32>(x_2842.x, x_2842.y);
        let x_2845 : f32 = u_xlat4.z;
        txVec43 = vec3<f32>(x_2843.x, x_2843.y, x_2845);
        let x_2852 : vec3<f32> = txVec43;
        let x_2854 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2852.xy, x_2852.z);
        u_xlat9.x = x_2854;
        let x_2857 : vec4<f32> = u_xlat13;
        let x_2858 : vec2<f32> = vec2<f32>(x_2857.z, x_2857.w);
        let x_2860 : f32 = u_xlat4.z;
        txVec44 = vec3<f32>(x_2858.x, x_2858.y, x_2860);
        let x_2868 : vec3<f32> = txVec44;
        let x_2870 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2868.xy, x_2868.z);
        u_xlat87 = x_2870;
        let x_2871 : f32 = u_xlat87;
        let x_2873 : f32 = u_xlat19.y;
        u_xlat87 = (x_2871 * x_2873);
        let x_2876 : f32 = u_xlat19.x;
        let x_2878 : f32 = u_xlat9.x;
        let x_2880 : f32 = u_xlat87;
        u_xlat9.x = ((x_2876 * x_2878) + x_2880);
        let x_2884 : vec4<f32> = u_xlat14;
        let x_2885 : vec2<f32> = vec2<f32>(x_2884.x, x_2884.y);
        let x_2887 : f32 = u_xlat4.z;
        txVec45 = vec3<f32>(x_2885.x, x_2885.y, x_2887);
        let x_2894 : vec3<f32> = txVec45;
        let x_2896 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2894.xy, x_2894.z);
        u_xlat87 = x_2896;
        let x_2898 : f32 = u_xlat19.z;
        let x_2899 : f32 = u_xlat87;
        let x_2902 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_2898 * x_2899) + x_2902);
        let x_2906 : vec4<f32> = u_xlat16;
        let x_2907 : vec2<f32> = vec2<f32>(x_2906.x, x_2906.y);
        let x_2909 : f32 = u_xlat4.z;
        txVec46 = vec3<f32>(x_2907.x, x_2907.y, x_2909);
        let x_2916 : vec3<f32> = txVec46;
        let x_2918 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2916.xy, x_2916.z);
        u_xlat87 = x_2918;
        let x_2920 : f32 = u_xlat19.w;
        let x_2921 : f32 = u_xlat87;
        let x_2924 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_2920 * x_2921) + x_2924);
        let x_2928 : vec4<f32> = u_xlat15;
        let x_2929 : vec2<f32> = vec2<f32>(x_2928.x, x_2928.y);
        let x_2931 : f32 = u_xlat4.z;
        txVec47 = vec3<f32>(x_2929.x, x_2929.y, x_2931);
        let x_2938 : vec3<f32> = txVec47;
        let x_2940 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2938.xy, x_2938.z);
        u_xlat87 = x_2940;
        let x_2942 : f32 = u_xlat20.x;
        let x_2943 : f32 = u_xlat87;
        let x_2946 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_2942 * x_2943) + x_2946);
        let x_2950 : vec4<f32> = u_xlat15;
        let x_2951 : vec2<f32> = vec2<f32>(x_2950.z, x_2950.w);
        let x_2953 : f32 = u_xlat4.z;
        txVec48 = vec3<f32>(x_2951.x, x_2951.y, x_2953);
        let x_2960 : vec3<f32> = txVec48;
        let x_2962 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2960.xy, x_2960.z);
        u_xlat87 = x_2962;
        let x_2964 : f32 = u_xlat20.y;
        let x_2965 : f32 = u_xlat87;
        let x_2968 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_2964 * x_2965) + x_2968);
        let x_2972 : vec2<f32> = u_xlat66;
        let x_2974 : f32 = u_xlat4.z;
        txVec49 = vec3<f32>(x_2972.x, x_2972.y, x_2974);
        let x_2981 : vec3<f32> = txVec49;
        let x_2983 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2981.xy, x_2981.z);
        u_xlat87 = x_2983;
        let x_2985 : f32 = u_xlat20.z;
        let x_2986 : f32 = u_xlat87;
        let x_2989 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_2985 * x_2986) + x_2989);
        let x_2993 : vec4<f32> = u_xlat16;
        let x_2994 : vec2<f32> = vec2<f32>(x_2993.z, x_2993.w);
        let x_2996 : f32 = u_xlat4.z;
        txVec50 = vec3<f32>(x_2994.x, x_2994.y, x_2996);
        let x_3003 : vec3<f32> = txVec50;
        let x_3005 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3003.xy, x_3003.z);
        u_xlat87 = x_3005;
        let x_3007 : f32 = u_xlat20.w;
        let x_3008 : f32 = u_xlat87;
        let x_3011 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3007 * x_3008) + x_3011);
        let x_3015 : vec4<f32> = u_xlat17;
        let x_3016 : vec2<f32> = vec2<f32>(x_3015.x, x_3015.y);
        let x_3018 : f32 = u_xlat4.z;
        txVec51 = vec3<f32>(x_3016.x, x_3016.y, x_3018);
        let x_3025 : vec3<f32> = txVec51;
        let x_3027 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3025.xy, x_3025.z);
        u_xlat87 = x_3027;
        let x_3029 : f32 = u_xlat21.x;
        let x_3030 : f32 = u_xlat87;
        let x_3033 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3029 * x_3030) + x_3033);
        let x_3037 : vec4<f32> = u_xlat17;
        let x_3038 : vec2<f32> = vec2<f32>(x_3037.z, x_3037.w);
        let x_3040 : f32 = u_xlat4.z;
        txVec52 = vec3<f32>(x_3038.x, x_3038.y, x_3040);
        let x_3047 : vec3<f32> = txVec52;
        let x_3049 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3047.xy, x_3047.z);
        u_xlat87 = x_3049;
        let x_3051 : f32 = u_xlat21.y;
        let x_3052 : f32 = u_xlat87;
        let x_3055 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3051 * x_3052) + x_3055);
        let x_3059 : vec2<f32> = u_xlat35;
        let x_3061 : f32 = u_xlat4.z;
        txVec53 = vec3<f32>(x_3059.x, x_3059.y, x_3061);
        let x_3068 : vec3<f32> = txVec53;
        let x_3070 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3068.xy, x_3068.z);
        u_xlat35.x = x_3070;
        let x_3073 : f32 = u_xlat21.z;
        let x_3075 : f32 = u_xlat35.x;
        let x_3078 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3073 * x_3075) + x_3078);
        let x_3082 : vec4<f32> = u_xlat18;
        let x_3083 : vec2<f32> = vec2<f32>(x_3082.x, x_3082.y);
        let x_3085 : f32 = u_xlat4.z;
        txVec54 = vec3<f32>(x_3083.x, x_3083.y, x_3085);
        let x_3092 : vec3<f32> = txVec54;
        let x_3094 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3092.xy, x_3092.z);
        u_xlat35.x = x_3094;
        let x_3097 : f32 = u_xlat21.w;
        let x_3099 : f32 = u_xlat35.x;
        let x_3102 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3097 * x_3099) + x_3102);
        let x_3106 : vec4<f32> = u_xlat12;
        let x_3107 : vec2<f32> = vec2<f32>(x_3106.x, x_3106.y);
        let x_3109 : f32 = u_xlat4.z;
        txVec55 = vec3<f32>(x_3107.x, x_3107.y, x_3109);
        let x_3116 : vec3<f32> = txVec55;
        let x_3118 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3116.xy, x_3116.z);
        u_xlat35.x = x_3118;
        let x_3121 : f32 = u_xlat8.x;
        let x_3123 : f32 = u_xlat35.x;
        let x_3126 : f32 = u_xlat9.x;
        u_xlat8.x = ((x_3121 * x_3123) + x_3126);
        let x_3130 : vec4<f32> = u_xlat12;
        let x_3131 : vec2<f32> = vec2<f32>(x_3130.z, x_3130.w);
        let x_3133 : f32 = u_xlat4.z;
        txVec56 = vec3<f32>(x_3131.x, x_3131.y, x_3133);
        let x_3140 : vec3<f32> = txVec56;
        let x_3142 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3140.xy, x_3140.z);
        u_xlat9.x = x_3142;
        let x_3145 : f32 = u_xlat8.y;
        let x_3147 : f32 = u_xlat9.x;
        let x_3150 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3145 * x_3147) + x_3150);
        let x_3154 : vec2<f32> = u_xlat63;
        let x_3156 : f32 = u_xlat4.z;
        txVec57 = vec3<f32>(x_3154.x, x_3154.y, x_3156);
        let x_3164 : vec3<f32> = txVec57;
        let x_3166 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3164.xy, x_3164.z);
        u_xlat34 = x_3166;
        let x_3168 : f32 = u_xlat8.z;
        let x_3169 : f32 = u_xlat34;
        let x_3172 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3168 * x_3169) + x_3172);
        let x_3176 : vec2<f32> = u_xlat59;
        let x_3178 : f32 = u_xlat4.z;
        txVec58 = vec3<f32>(x_3176.x, x_3176.y, x_3178);
        let x_3185 : vec3<f32> = txVec58;
        let x_3187 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3185.xy, x_3185.z);
        u_xlat59.x = x_3187;
        let x_3190 : f32 = u_xlat8.w;
        let x_3192 : f32 = u_xlat59.x;
        let x_3195 : f32 = u_xlat8.x;
        u_xlat78 = ((x_3190 * x_3192) + x_3195);
      }
    }
  } else {
    let x_3199 : vec4<f32> = u_xlat4;
    let x_3200 : vec2<f32> = vec2<f32>(x_3199.x, x_3199.y);
    let x_3202 : f32 = u_xlat4.z;
    txVec59 = vec3<f32>(x_3200.x, x_3200.y, x_3202);
    let x_3209 : vec3<f32> = txVec59;
    let x_3211 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3209.xy, x_3209.z);
    u_xlat78 = x_3211;
  }
  let x_3212 : f32 = u_xlat78;
  let x_3214 : f32 = x_130.x_MainLightShadowParams.x;
  let x_3216 : f32 = u_xlat82;
  u_xlat78 = ((x_3212 * x_3214) + x_3216);
  let x_3218 : bool = u_xlatb5;
  let x_3219 : f32 = u_xlat78;
  u_xlat78 = select(x_3219, 1.0f, x_3218);
  let x_3221 : vec3<f32> = vs_INTERP8;
  let x_3223 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  let x_3225 : vec3<f32> = (x_3221 + -(x_3223));
  let x_3226 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_3225.x, x_3225.y, x_3225.z, x_3226.w);
  let x_3228 : vec4<f32> = u_xlat4;
  let x_3230 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_3228.x, x_3228.y, x_3228.z), vec3<f32>(x_3230.x, x_3230.y, x_3230.z));
  let x_3236 : f32 = u_xlat4.x;
  let x_3238 : f32 = x_130.x_MainLightShadowParams.z;
  let x_3241 : f32 = x_130.x_MainLightShadowParams.w;
  u_xlat30.x = ((x_3236 * x_3238) + x_3241);
  let x_3245 : f32 = u_xlat30.x;
  u_xlat30.x = clamp(x_3245, 0.0f, 1.0f);
  let x_3249 : f32 = u_xlat78;
  u_xlat56 = (-(x_3249) + 1.0f);
  let x_3253 : f32 = u_xlat30.x;
  let x_3254 : f32 = u_xlat56;
  let x_3256 : f32 = u_xlat78;
  u_xlat78 = ((x_3253 * x_3254) + x_3256);
  let x_3258 : vec3<f32> = u_xlat31;
  let x_3260 : vec3<f32> = u_xlat29;
  u_xlat30.x = dot(-(x_3258), x_3260);
  let x_3264 : f32 = u_xlat30.x;
  let x_3266 : f32 = u_xlat30.x;
  u_xlat30.x = (x_3264 + x_3266);
  let x_3269 : vec3<f32> = u_xlat29;
  let x_3270 : vec3<f32> = u_xlat30;
  let x_3274 : vec3<f32> = u_xlat31;
  u_xlat30 = ((x_3269 * -(vec3<f32>(x_3270.x, x_3270.x, x_3270.x))) + -(x_3274));
  let x_3277 : vec3<f32> = u_xlat29;
  let x_3278 : vec3<f32> = u_xlat31;
  u_xlat5.x = dot(x_3277, x_3278);
  let x_3282 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_3282, 0.0f, 1.0f);
  let x_3286 : f32 = u_xlat5.x;
  u_xlat5.x = (-(x_3286) + 1.0f);
  let x_3291 : f32 = u_xlat5.x;
  let x_3293 : f32 = u_xlat5.x;
  u_xlat5.x = (x_3291 * x_3293);
  let x_3297 : f32 = u_xlat5.x;
  let x_3299 : f32 = u_xlat5.x;
  u_xlat5.x = (x_3297 * x_3299);
  let x_3302 : f32 = u_xlat79;
  u_xlat59.x = ((-(x_3302) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3309 : f32 = u_xlat79;
  let x_3311 : f32 = u_xlat59.x;
  u_xlat79 = (x_3309 * x_3311);
  let x_3313 : f32 = u_xlat79;
  u_xlat79 = (x_3313 * 6.0f);
  let x_3324 : vec3<f32> = u_xlat30;
  let x_3325 : f32 = u_xlat79;
  let x_3326 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_3324, x_3325);
  u_xlat8 = x_3326;
  let x_3328 : f32 = u_xlat8.w;
  u_xlat79 = (x_3328 + -1.0f);
  let x_3331 : f32 = x_1746.unity_SpecCube0_HDR.w;
  let x_3332 : f32 = u_xlat79;
  u_xlat79 = ((x_3331 * x_3332) + 1.0f);
  let x_3335 : f32 = u_xlat79;
  u_xlat79 = max(x_3335, 0.0f);
  let x_3337 : f32 = u_xlat79;
  u_xlat79 = log2(x_3337);
  let x_3339 : f32 = u_xlat79;
  let x_3341 : f32 = x_1746.unity_SpecCube0_HDR.y;
  u_xlat79 = (x_3339 * x_3341);
  let x_3343 : f32 = u_xlat79;
  u_xlat79 = exp2(x_3343);
  let x_3345 : f32 = u_xlat79;
  let x_3347 : f32 = x_1746.unity_SpecCube0_HDR.x;
  u_xlat79 = (x_3345 * x_3347);
  let x_3349 : vec4<f32> = u_xlat8;
  let x_3351 : f32 = u_xlat79;
  u_xlat30 = (vec3<f32>(x_3349.x, x_3349.y, x_3349.z) * vec3<f32>(x_3351, x_3351, x_3351));
  let x_3354 : f32 = u_xlat80;
  let x_3356 : f32 = u_xlat80;
  u_xlat59 = ((vec2<f32>(x_3354, x_3354) * vec2<f32>(x_3356, x_3356)) + vec2<f32>(-1.0f, 1.0f));
  let x_3362 : f32 = u_xlat59.y;
  u_xlat79 = (1.0f / x_3362);
  let x_3365 : f32 = u_xlat3.x;
  u_xlat80 = (x_3365 + -0.03999999910593032837f);
  let x_3369 : f32 = u_xlat5.x;
  let x_3370 : f32 = u_xlat80;
  u_xlat80 = ((x_3369 * x_3370) + 0.03999999910593032837f);
  let x_3374 : f32 = u_xlat79;
  let x_3375 : f32 = u_xlat80;
  u_xlat79 = (x_3374 * x_3375);
  let x_3377 : f32 = u_xlat79;
  let x_3379 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_3377, x_3377, x_3377) * x_3379);
  let x_3381 : vec4<f32> = u_xlat6;
  let x_3383 : vec3<f32> = u_xlat2;
  let x_3385 : vec3<f32> = u_xlat30;
  u_xlat30 = ((vec3<f32>(x_3381.x, x_3381.y, x_3381.z) * x_3383) + x_3385);
  let x_3387 : f32 = u_xlat78;
  let x_3389 : f32 = x_1746.unity_LightData.z;
  u_xlat78 = (x_3387 * x_3389);
  let x_3391 : vec3<f32> = u_xlat29;
  let x_3393 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat79 = dot(x_3391, vec3<f32>(x_3393.x, x_3393.y, x_3393.z));
  let x_3396 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3396, 0.0f, 1.0f);
  let x_3398 : f32 = u_xlat78;
  let x_3399 : f32 = u_xlat79;
  u_xlat78 = (x_3398 * x_3399);
  let x_3401 : f32 = u_xlat78;
  let x_3404 : vec4<f32> = x_53.x_MainLightColor;
  let x_3406 : vec3<f32> = (vec3<f32>(x_3401, x_3401, x_3401) * vec3<f32>(x_3404.x, x_3404.y, x_3404.z));
  let x_3407 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3406.x, x_3406.y, x_3406.z, x_3407.w);
  let x_3409 : vec3<f32> = u_xlat31;
  let x_3411 : vec4<f32> = x_53.x_MainLightPosition;
  let x_3413 : vec3<f32> = (x_3409 + vec3<f32>(x_3411.x, x_3411.y, x_3411.z));
  let x_3414 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3413.x, x_3413.y, x_3413.z, x_3414.w);
  let x_3416 : vec4<f32> = u_xlat8;
  let x_3418 : vec4<f32> = u_xlat8;
  u_xlat78 = dot(vec3<f32>(x_3416.x, x_3416.y, x_3416.z), vec3<f32>(x_3418.x, x_3418.y, x_3418.z));
  let x_3421 : f32 = u_xlat78;
  u_xlat78 = max(x_3421, 1.17549435e-38f);
  let x_3424 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_3424);
  let x_3426 : f32 = u_xlat78;
  let x_3428 : vec4<f32> = u_xlat8;
  let x_3430 : vec3<f32> = (vec3<f32>(x_3426, x_3426, x_3426) * vec3<f32>(x_3428.x, x_3428.y, x_3428.z));
  let x_3431 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3430.x, x_3430.y, x_3430.z, x_3431.w);
  let x_3433 : vec3<f32> = u_xlat29;
  let x_3434 : vec4<f32> = u_xlat8;
  u_xlat78 = dot(x_3433, vec3<f32>(x_3434.x, x_3434.y, x_3434.z));
  let x_3437 : f32 = u_xlat78;
  u_xlat78 = clamp(x_3437, 0.0f, 1.0f);
  let x_3440 : vec4<f32> = x_53.x_MainLightPosition;
  let x_3442 : vec4<f32> = u_xlat8;
  u_xlat79 = dot(vec3<f32>(x_3440.x, x_3440.y, x_3440.z), vec3<f32>(x_3442.x, x_3442.y, x_3442.z));
  let x_3445 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3445, 0.0f, 1.0f);
  let x_3447 : f32 = u_xlat78;
  let x_3448 : f32 = u_xlat78;
  u_xlat78 = (x_3447 * x_3448);
  let x_3450 : f32 = u_xlat78;
  let x_3452 : f32 = u_xlat59.x;
  u_xlat78 = ((x_3450 * x_3452) + 1.00001001358032226562f);
  let x_3456 : f32 = u_xlat79;
  let x_3457 : f32 = u_xlat79;
  u_xlat79 = (x_3456 * x_3457);
  let x_3459 : f32 = u_xlat78;
  let x_3460 : f32 = u_xlat78;
  u_xlat78 = (x_3459 * x_3460);
  let x_3462 : f32 = u_xlat79;
  u_xlat79 = max(x_3462, 0.10000000149011611938f);
  let x_3465 : f32 = u_xlat78;
  let x_3466 : f32 = u_xlat79;
  u_xlat78 = (x_3465 * x_3466);
  let x_3469 : f32 = u_xlat7.x;
  let x_3470 : f32 = u_xlat78;
  u_xlat78 = (x_3469 * x_3470);
  let x_3472 : f32 = u_xlat84;
  let x_3473 : f32 = u_xlat78;
  u_xlat78 = (x_3472 / x_3473);
  let x_3475 : f32 = u_xlat78;
  let x_3479 : vec3<f32> = u_xlat2;
  let x_3480 : vec3<f32> = ((vec3<f32>(x_3475, x_3475, x_3475) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3479);
  let x_3481 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3480.x, x_3480.y, x_3480.z, x_3481.w);
  let x_3483 : vec4<f32> = u_xlat6;
  let x_3485 : vec4<f32> = u_xlat8;
  let x_3487 : vec3<f32> = (vec3<f32>(x_3483.x, x_3483.y, x_3483.z) * vec3<f32>(x_3485.x, x_3485.y, x_3485.z));
  let x_3488 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3487.x, x_3487.y, x_3487.z, x_3488.w);
  let x_3491 : f32 = x_53.x_AdditionalLightsCount.x;
  let x_3493 : f32 = x_1746.unity_LightData.y;
  u_xlat78 = min(x_3491, x_3493);
  let x_3495 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_3495));
  let x_3499 : f32 = u_xlat4.x;
  let x_3502 : f32 = x_130.x_AdditionalShadowFadeParams.x;
  let x_3505 : f32 = x_130.x_AdditionalShadowFadeParams.y;
  u_xlat79 = ((x_3499 * x_3502) + x_3505);
  let x_3507 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3507, 0.0f, 1.0f);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3519 : u32 = u_xlatu_loop_1;
    let x_3520 : u32 = u_xlatu78;
    if ((x_3519 < x_3520)) {
    } else {
      break;
    }
    let x_3523 : u32 = u_xlatu_loop_1;
    u_xlatu3 = (x_3523 >> 2u);
    let x_3526 : u32 = u_xlatu_loop_1;
    u_xlati4 = bitcast<i32>((x_3526 & 3u));
    let x_3529 : u32 = u_xlatu3;
    let x_3532 : vec4<f32> = x_1746.unity_LightIndices[bitcast<i32>(x_3529)];
    let x_3542 : i32 = u_xlati4;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3547 : vec4<u32> = indexable[x_3542];
    u_xlat3.x = dot(x_3532, bitcast<vec4<f32>>(x_3547));
    let x_3553 : f32 = u_xlat3.x;
    u_xlati3 = i32(x_3553);
    let x_3555 : vec3<f32> = vs_INTERP8;
    let x_3566 : i32 = u_xlati3;
    let x_3568 : vec4<f32> = x_3565.x_AdditionalLightsPosition[x_3566];
    let x_3571 : i32 = u_xlati3;
    let x_3573 : vec4<f32> = x_3565.x_AdditionalLightsPosition[x_3571];
    let x_3575 : vec3<f32> = ((-(x_3555) * vec3<f32>(x_3568.w, x_3568.w, x_3568.w)) + vec3<f32>(x_3573.x, x_3573.y, x_3573.z));
    let x_3576 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3575.x, x_3575.y, x_3575.z, x_3576.w);
    let x_3578 : vec4<f32> = u_xlat9;
    let x_3580 : vec4<f32> = u_xlat9;
    u_xlat4.x = dot(vec3<f32>(x_3578.x, x_3578.y, x_3578.z), vec3<f32>(x_3580.x, x_3580.y, x_3580.z));
    let x_3585 : f32 = u_xlat4.x;
    u_xlat4.x = max(x_3585, 0.00006103515625f);
    let x_3590 : f32 = u_xlat4.x;
    u_xlat5.x = inverseSqrt(x_3590);
    let x_3593 : vec4<f32> = u_xlat5;
    let x_3595 : vec4<f32> = u_xlat9;
    let x_3597 : vec3<f32> = (vec3<f32>(x_3593.x, x_3593.x, x_3593.x) * vec3<f32>(x_3595.x, x_3595.y, x_3595.z));
    let x_3598 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3597.x, x_3597.y, x_3597.z, x_3598.w);
    let x_3601 : f32 = u_xlat4.x;
    u_xlat85 = (1.0f / x_3601);
    let x_3604 : f32 = u_xlat4.x;
    let x_3605 : i32 = u_xlati3;
    let x_3607 : f32 = x_3565.x_AdditionalLightsAttenuation[x_3605].x;
    u_xlat4.x = (x_3604 * x_3607);
    let x_3611 : f32 = u_xlat4.x;
    let x_3614 : f32 = u_xlat4.x;
    u_xlat4.x = ((-(x_3611) * x_3614) + 1.0f);
    let x_3619 : f32 = u_xlat4.x;
    u_xlat4.x = max(x_3619, 0.0f);
    let x_3623 : f32 = u_xlat4.x;
    let x_3625 : f32 = u_xlat4.x;
    u_xlat4.x = (x_3623 * x_3625);
    let x_3629 : f32 = u_xlat4.x;
    let x_3630 : f32 = u_xlat85;
    u_xlat4.x = (x_3629 * x_3630);
    let x_3633 : i32 = u_xlati3;
    let x_3635 : vec4<f32> = x_3565.x_AdditionalLightsSpotDir[x_3633];
    let x_3637 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_3635.x, x_3635.y, x_3635.z), vec3<f32>(x_3637.x, x_3637.y, x_3637.z));
    let x_3640 : f32 = u_xlat85;
    let x_3641 : i32 = u_xlati3;
    let x_3643 : f32 = x_3565.x_AdditionalLightsAttenuation[x_3641].z;
    let x_3645 : i32 = u_xlati3;
    let x_3647 : f32 = x_3565.x_AdditionalLightsAttenuation[x_3645].w;
    u_xlat85 = ((x_3640 * x_3643) + x_3647);
    let x_3649 : f32 = u_xlat85;
    u_xlat85 = clamp(x_3649, 0.0f, 1.0f);
    let x_3651 : f32 = u_xlat85;
    let x_3652 : f32 = u_xlat85;
    u_xlat85 = (x_3651 * x_3652);
    let x_3655 : f32 = u_xlat4.x;
    let x_3656 : f32 = u_xlat85;
    u_xlat4.x = (x_3655 * x_3656);
    let x_3661 : i32 = u_xlati3;
    let x_3663 : f32 = x_130.x_AdditionalShadowParams[x_3661].w;
    u_xlati85 = i32(x_3663);
    let x_3666 : i32 = u_xlati85;
    u_xlatb86 = (x_3666 >= 0i);
    let x_3668 : bool = u_xlatb86;
    if (x_3668) {
      let x_3672 : i32 = u_xlati3;
      let x_3674 : f32 = x_130.x_AdditionalShadowParams[x_3672].z;
      u_xlatb86 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3674, x_3674, x_3674, x_3674))));
      let x_3678 : bool = u_xlatb86;
      if (x_3678) {
        let x_3682 : vec4<f32> = u_xlat10;
        let x_3685 : vec4<f32> = u_xlat10;
        let x_3688 : vec4<bool> = (abs(vec4<f32>(x_3682.z, x_3682.z, x_3682.y, x_3682.z)) >= abs(vec4<f32>(x_3685.x, x_3685.y, x_3685.x, x_3685.x)));
        let x_3689 : vec3<bool> = vec3<bool>(x_3688.x, x_3688.y, x_3688.z);
        let x_3690 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3689.x, x_3689.y, x_3689.z, x_3690.w);
        let x_3693 : bool = u_xlatb11.y;
        let x_3695 : bool = u_xlatb11.x;
        u_xlatb86 = (x_3693 & x_3695);
        let x_3697 : vec4<f32> = u_xlat10;
        let x_3700 : vec4<bool> = (-(vec4<f32>(x_3697.z, x_3697.y, x_3697.z, x_3697.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3701 : vec3<bool> = vec3<bool>(x_3700.x, x_3700.y, x_3700.w);
        let x_3702 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3701.x, x_3701.y, x_3702.z, x_3701.z);
        let x_3705 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3705);
        let x_3710 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3710);
        let x_3714 : bool = u_xlatb11.w;
        u_xlat87 = select(0.0f, 1.0f, x_3714);
        let x_3717 : bool = u_xlatb11.z;
        if (x_3717) {
          let x_3722 : f32 = u_xlat11.y;
          x_3718 = x_3722;
        } else {
          let x_3724 : f32 = u_xlat87;
          x_3718 = x_3724;
        }
        let x_3725 : f32 = x_3718;
        u_xlat87 = x_3725;
        let x_3727 : bool = u_xlatb86;
        if (x_3727) {
          let x_3732 : f32 = u_xlat11.x;
          x_3728 = x_3732;
        } else {
          let x_3734 : f32 = u_xlat87;
          x_3728 = x_3734;
        }
        let x_3735 : f32 = x_3728;
        u_xlat86 = x_3735;
        let x_3736 : i32 = u_xlati3;
        let x_3738 : f32 = x_130.x_AdditionalShadowParams[x_3736].w;
        u_xlat87 = trunc(x_3738);
        let x_3740 : f32 = u_xlat86;
        let x_3741 : f32 = u_xlat87;
        u_xlat86 = (x_3740 + x_3741);
        let x_3743 : f32 = u_xlat86;
        u_xlati85 = i32(x_3743);
      }
      let x_3745 : i32 = u_xlati85;
      u_xlati85 = (x_3745 << bitcast<u32>(2i));
      let x_3747 : vec3<f32> = vs_INTERP8;
      let x_3750 : i32 = u_xlati85;
      let x_3753 : i32 = u_xlati85;
      let x_3757 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_3750 + 1i) / 4i)][((x_3753 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3747.y, x_3747.y, x_3747.y, x_3747.y) * x_3757);
      let x_3759 : i32 = u_xlati85;
      let x_3761 : i32 = u_xlati85;
      let x_3764 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[(x_3759 / 4i)][(x_3761 % 4i)];
      let x_3765 : vec3<f32> = vs_INTERP8;
      let x_3768 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3764 * vec4<f32>(x_3765.x, x_3765.x, x_3765.x, x_3765.x)) + x_3768);
      let x_3770 : i32 = u_xlati85;
      let x_3773 : i32 = u_xlati85;
      let x_3777 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_3770 + 2i) / 4i)][((x_3773 + 2i) % 4i)];
      let x_3778 : vec3<f32> = vs_INTERP8;
      let x_3781 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3777 * vec4<f32>(x_3778.z, x_3778.z, x_3778.z, x_3778.z)) + x_3781);
      let x_3783 : vec4<f32> = u_xlat11;
      let x_3784 : i32 = u_xlati85;
      let x_3787 : i32 = u_xlati85;
      let x_3791 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_3784 + 3i) / 4i)][((x_3787 + 3i) % 4i)];
      u_xlat11 = (x_3783 + x_3791);
      let x_3793 : vec4<f32> = u_xlat11;
      let x_3795 : vec4<f32> = u_xlat11;
      let x_3797 : vec3<f32> = (vec3<f32>(x_3793.x, x_3793.y, x_3793.z) / vec3<f32>(x_3795.w, x_3795.w, x_3795.w));
      let x_3798 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3797.x, x_3797.y, x_3797.z, x_3798.w);
      let x_3801 : i32 = u_xlati3;
      let x_3803 : f32 = x_130.x_AdditionalShadowParams[x_3801].y;
      u_xlatb85 = (0.0f < x_3803);
      let x_3805 : bool = u_xlatb85;
      if (x_3805) {
        let x_3808 : i32 = u_xlati3;
        let x_3810 : f32 = x_130.x_AdditionalShadowParams[x_3808].y;
        u_xlatb85 = (1.0f == x_3810);
        let x_3812 : bool = u_xlatb85;
        if (x_3812) {
          let x_3815 : vec4<f32> = u_xlat11;
          let x_3818 : vec4<f32> = x_130.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3815.x, x_3815.y, x_3815.x, x_3815.y) + x_3818);
          let x_3821 : vec4<f32> = u_xlat12;
          let x_3822 : vec2<f32> = vec2<f32>(x_3821.x, x_3821.y);
          let x_3824 : f32 = u_xlat11.z;
          txVec60 = vec3<f32>(x_3822.x, x_3822.y, x_3824);
          let x_3832 : vec3<f32> = txVec60;
          let x_3834 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3832.xy, x_3832.z);
          u_xlat13.x = x_3834;
          let x_3837 : vec4<f32> = u_xlat12;
          let x_3838 : vec2<f32> = vec2<f32>(x_3837.z, x_3837.w);
          let x_3840 : f32 = u_xlat11.z;
          txVec61 = vec3<f32>(x_3838.x, x_3838.y, x_3840);
          let x_3847 : vec3<f32> = txVec61;
          let x_3849 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3847.xy, x_3847.z);
          u_xlat13.y = x_3849;
          let x_3851 : vec4<f32> = u_xlat11;
          let x_3855 : vec4<f32> = x_130.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3851.x, x_3851.y, x_3851.x, x_3851.y) + x_3855);
          let x_3858 : vec4<f32> = u_xlat12;
          let x_3859 : vec2<f32> = vec2<f32>(x_3858.x, x_3858.y);
          let x_3861 : f32 = u_xlat11.z;
          txVec62 = vec3<f32>(x_3859.x, x_3859.y, x_3861);
          let x_3868 : vec3<f32> = txVec62;
          let x_3870 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3868.xy, x_3868.z);
          u_xlat13.z = x_3870;
          let x_3873 : vec4<f32> = u_xlat12;
          let x_3874 : vec2<f32> = vec2<f32>(x_3873.z, x_3873.w);
          let x_3876 : f32 = u_xlat11.z;
          txVec63 = vec3<f32>(x_3874.x, x_3874.y, x_3876);
          let x_3883 : vec3<f32> = txVec63;
          let x_3885 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3883.xy, x_3883.z);
          u_xlat13.w = x_3885;
          let x_3887 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_3887, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3890 : i32 = u_xlati3;
          let x_3892 : f32 = x_130.x_AdditionalShadowParams[x_3890].y;
          u_xlatb86 = (2.0f == x_3892);
          let x_3894 : bool = u_xlatb86;
          if (x_3894) {
            let x_3897 : vec4<f32> = u_xlat11;
            let x_3901 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_3904 : vec2<f32> = ((vec2<f32>(x_3897.x, x_3897.y) * vec2<f32>(x_3901.z, x_3901.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3905 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3904.x, x_3904.y, x_3905.z, x_3905.w);
            let x_3907 : vec4<f32> = u_xlat12;
            let x_3909 : vec2<f32> = floor(vec2<f32>(x_3907.x, x_3907.y));
            let x_3910 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3909.x, x_3909.y, x_3910.z, x_3910.w);
            let x_3913 : vec4<f32> = u_xlat11;
            let x_3916 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_3919 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3913.x, x_3913.y) * vec2<f32>(x_3916.z, x_3916.w)) + -(vec2<f32>(x_3919.x, x_3919.y)));
            let x_3923 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3923.x, x_3923.x, x_3923.y, x_3923.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3926 : vec4<f32> = u_xlat13;
            let x_3928 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3926.x, x_3926.x, x_3926.z, x_3926.z) * vec4<f32>(x_3928.x, x_3928.x, x_3928.z, x_3928.z));
            let x_3931 : vec4<f32> = u_xlat14;
            let x_3933 : vec2<f32> = (vec2<f32>(x_3931.y, x_3931.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3934 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3933.x, x_3934.y, x_3933.y, x_3934.w);
            let x_3936 : vec4<f32> = u_xlat14;
            let x_3939 : vec2<f32> = u_xlat64;
            let x_3941 : vec2<f32> = ((vec2<f32>(x_3936.x, x_3936.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3939));
            let x_3942 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3941.x, x_3941.y, x_3942.z, x_3942.w);
            let x_3944 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3944) + vec2<f32>(1.0f, 1.0f));
            let x_3947 : vec2<f32> = u_xlat64;
            let x_3948 : vec2<f32> = min(x_3947, vec2<f32>(0.0f, 0.0f));
            let x_3949 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3948.x, x_3948.y, x_3949.z, x_3949.w);
            let x_3951 : vec4<f32> = u_xlat15;
            let x_3954 : vec4<f32> = u_xlat15;
            let x_3957 : vec2<f32> = u_xlat66;
            let x_3958 : vec2<f32> = ((-(vec2<f32>(x_3951.x, x_3951.y)) * vec2<f32>(x_3954.x, x_3954.y)) + x_3957);
            let x_3959 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3958.x, x_3958.y, x_3959.z, x_3959.w);
            let x_3961 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3961, vec2<f32>(0.0f, 0.0f));
            let x_3963 : vec2<f32> = u_xlat64;
            let x_3965 : vec2<f32> = u_xlat64;
            let x_3967 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3963) * x_3965) + vec2<f32>(x_3967.y, x_3967.w));
            let x_3970 : vec4<f32> = u_xlat15;
            let x_3972 : vec2<f32> = (vec2<f32>(x_3970.x, x_3970.y) + vec2<f32>(1.0f, 1.0f));
            let x_3973 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3972.x, x_3972.y, x_3973.z, x_3973.w);
            let x_3975 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3975 + vec2<f32>(1.0f, 1.0f));
            let x_3977 : vec4<f32> = u_xlat14;
            let x_3979 : vec2<f32> = (vec2<f32>(x_3977.x, x_3977.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3980 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3979.x, x_3979.y, x_3980.z, x_3980.w);
            let x_3982 : vec2<f32> = u_xlat66;
            let x_3983 : vec2<f32> = (x_3982 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3984 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3983.x, x_3983.y, x_3984.z, x_3984.w);
            let x_3986 : vec4<f32> = u_xlat15;
            let x_3988 : vec2<f32> = (vec2<f32>(x_3986.x, x_3986.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3989 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3988.x, x_3988.y, x_3989.z, x_3989.w);
            let x_3991 : vec2<f32> = u_xlat64;
            let x_3992 : vec2<f32> = (x_3991 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3993 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3992.x, x_3992.y, x_3993.z, x_3993.w);
            let x_3995 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3995.y, x_3995.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3999 : f32 = u_xlat15.x;
            u_xlat16.z = x_3999;
            let x_4002 : f32 = u_xlat64.x;
            u_xlat16.w = x_4002;
            let x_4005 : f32 = u_xlat17.x;
            u_xlat14.z = x_4005;
            let x_4008 : f32 = u_xlat13.x;
            u_xlat14.w = x_4008;
            let x_4010 : vec4<f32> = u_xlat14;
            let x_4012 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_4010.z, x_4010.w, x_4010.x, x_4010.z) + vec4<f32>(x_4012.z, x_4012.w, x_4012.x, x_4012.z));
            let x_4016 : f32 = u_xlat16.y;
            u_xlat15.z = x_4016;
            let x_4019 : f32 = u_xlat64.y;
            u_xlat15.w = x_4019;
            let x_4022 : f32 = u_xlat14.y;
            u_xlat17.z = x_4022;
            let x_4025 : f32 = u_xlat13.z;
            u_xlat17.w = x_4025;
            let x_4027 : vec4<f32> = u_xlat15;
            let x_4029 : vec4<f32> = u_xlat17;
            let x_4031 : vec3<f32> = (vec3<f32>(x_4027.z, x_4027.y, x_4027.w) + vec3<f32>(x_4029.z, x_4029.y, x_4029.w));
            let x_4032 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4031.x, x_4031.y, x_4031.z, x_4032.w);
            let x_4034 : vec4<f32> = u_xlat14;
            let x_4036 : vec4<f32> = u_xlat18;
            let x_4038 : vec3<f32> = (vec3<f32>(x_4034.x, x_4034.z, x_4034.w) / vec3<f32>(x_4036.z, x_4036.w, x_4036.y));
            let x_4039 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4038.x, x_4038.y, x_4038.z, x_4039.w);
            let x_4041 : vec4<f32> = u_xlat14;
            let x_4043 : vec3<f32> = (vec3<f32>(x_4041.x, x_4041.y, x_4041.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4044 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4043.x, x_4043.y, x_4043.z, x_4044.w);
            let x_4046 : vec4<f32> = u_xlat17;
            let x_4048 : vec4<f32> = u_xlat13;
            let x_4050 : vec3<f32> = (vec3<f32>(x_4046.z, x_4046.y, x_4046.w) / vec3<f32>(x_4048.x, x_4048.y, x_4048.z));
            let x_4051 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4050.x, x_4050.y, x_4050.z, x_4051.w);
            let x_4053 : vec4<f32> = u_xlat15;
            let x_4055 : vec3<f32> = (vec3<f32>(x_4053.x, x_4053.y, x_4053.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4056 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4055.x, x_4055.y, x_4055.z, x_4056.w);
            let x_4058 : vec4<f32> = u_xlat14;
            let x_4061 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4063 : vec3<f32> = (vec3<f32>(x_4058.y, x_4058.x, x_4058.z) * vec3<f32>(x_4061.x, x_4061.x, x_4061.x));
            let x_4064 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4063.x, x_4063.y, x_4063.z, x_4064.w);
            let x_4066 : vec4<f32> = u_xlat15;
            let x_4069 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4071 : vec3<f32> = (vec3<f32>(x_4066.x, x_4066.y, x_4066.z) * vec3<f32>(x_4069.y, x_4069.y, x_4069.y));
            let x_4072 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4071.x, x_4071.y, x_4071.z, x_4072.w);
            let x_4075 : f32 = u_xlat15.x;
            u_xlat14.w = x_4075;
            let x_4077 : vec4<f32> = u_xlat12;
            let x_4080 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4083 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4077.x, x_4077.y, x_4077.x, x_4077.y) * vec4<f32>(x_4080.x, x_4080.y, x_4080.x, x_4080.y)) + vec4<f32>(x_4083.y, x_4083.w, x_4083.x, x_4083.w));
            let x_4086 : vec4<f32> = u_xlat12;
            let x_4089 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4092 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4086.x, x_4086.y) * vec2<f32>(x_4089.x, x_4089.y)) + vec2<f32>(x_4092.z, x_4092.w));
            let x_4096 : f32 = u_xlat14.y;
            u_xlat15.w = x_4096;
            let x_4098 : vec4<f32> = u_xlat15;
            let x_4099 : vec2<f32> = vec2<f32>(x_4098.y, x_4098.z);
            let x_4100 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4100.x, x_4099.x, x_4100.z, x_4099.y);
            let x_4102 : vec4<f32> = u_xlat12;
            let x_4105 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4108 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_4102.x, x_4102.y, x_4102.x, x_4102.y) * vec4<f32>(x_4105.x, x_4105.y, x_4105.x, x_4105.y)) + vec4<f32>(x_4108.x, x_4108.y, x_4108.z, x_4108.y));
            let x_4111 : vec4<f32> = u_xlat12;
            let x_4114 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4117 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4111.x, x_4111.y, x_4111.x, x_4111.y) * vec4<f32>(x_4114.x, x_4114.y, x_4114.x, x_4114.y)) + vec4<f32>(x_4117.w, x_4117.y, x_4117.w, x_4117.z));
            let x_4120 : vec4<f32> = u_xlat12;
            let x_4123 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4126 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4120.x, x_4120.y, x_4120.x, x_4120.y) * vec4<f32>(x_4123.x, x_4123.y, x_4123.x, x_4123.y)) + vec4<f32>(x_4126.x, x_4126.w, x_4126.z, x_4126.w));
            let x_4129 : vec4<f32> = u_xlat13;
            let x_4131 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_4129.x, x_4129.x, x_4129.x, x_4129.y) * vec4<f32>(x_4131.z, x_4131.w, x_4131.y, x_4131.z));
            let x_4134 : vec4<f32> = u_xlat13;
            let x_4136 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_4134.y, x_4134.y, x_4134.z, x_4134.z) * x_4136);
            let x_4139 : f32 = u_xlat13.z;
            let x_4141 : f32 = u_xlat18.y;
            u_xlat86 = (x_4139 * x_4141);
            let x_4144 : vec4<f32> = u_xlat16;
            let x_4145 : vec2<f32> = vec2<f32>(x_4144.x, x_4144.y);
            let x_4147 : f32 = u_xlat11.z;
            txVec64 = vec3<f32>(x_4145.x, x_4145.y, x_4147);
            let x_4154 : vec3<f32> = txVec64;
            let x_4156 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4154.xy, x_4154.z);
            u_xlat87 = x_4156;
            let x_4158 : vec4<f32> = u_xlat16;
            let x_4159 : vec2<f32> = vec2<f32>(x_4158.z, x_4158.w);
            let x_4161 : f32 = u_xlat11.z;
            txVec65 = vec3<f32>(x_4159.x, x_4159.y, x_4161);
            let x_4169 : vec3<f32> = txVec65;
            let x_4171 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4169.xy, x_4169.z);
            u_xlat88 = x_4171;
            let x_4172 : f32 = u_xlat88;
            let x_4174 : f32 = u_xlat19.y;
            u_xlat88 = (x_4172 * x_4174);
            let x_4177 : f32 = u_xlat19.x;
            let x_4178 : f32 = u_xlat87;
            let x_4180 : f32 = u_xlat88;
            u_xlat87 = ((x_4177 * x_4178) + x_4180);
            let x_4183 : vec2<f32> = u_xlat64;
            let x_4185 : f32 = u_xlat11.z;
            txVec66 = vec3<f32>(x_4183.x, x_4183.y, x_4185);
            let x_4192 : vec3<f32> = txVec66;
            let x_4194 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4192.xy, x_4192.z);
            u_xlat88 = x_4194;
            let x_4196 : f32 = u_xlat19.z;
            let x_4197 : f32 = u_xlat88;
            let x_4199 : f32 = u_xlat87;
            u_xlat87 = ((x_4196 * x_4197) + x_4199);
            let x_4202 : vec4<f32> = u_xlat15;
            let x_4203 : vec2<f32> = vec2<f32>(x_4202.x, x_4202.y);
            let x_4205 : f32 = u_xlat11.z;
            txVec67 = vec3<f32>(x_4203.x, x_4203.y, x_4205);
            let x_4212 : vec3<f32> = txVec67;
            let x_4214 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4212.xy, x_4212.z);
            u_xlat88 = x_4214;
            let x_4216 : f32 = u_xlat19.w;
            let x_4217 : f32 = u_xlat88;
            let x_4219 : f32 = u_xlat87;
            u_xlat87 = ((x_4216 * x_4217) + x_4219);
            let x_4222 : vec4<f32> = u_xlat17;
            let x_4223 : vec2<f32> = vec2<f32>(x_4222.x, x_4222.y);
            let x_4225 : f32 = u_xlat11.z;
            txVec68 = vec3<f32>(x_4223.x, x_4223.y, x_4225);
            let x_4232 : vec3<f32> = txVec68;
            let x_4234 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4232.xy, x_4232.z);
            u_xlat88 = x_4234;
            let x_4236 : f32 = u_xlat20.x;
            let x_4237 : f32 = u_xlat88;
            let x_4239 : f32 = u_xlat87;
            u_xlat87 = ((x_4236 * x_4237) + x_4239);
            let x_4242 : vec4<f32> = u_xlat17;
            let x_4243 : vec2<f32> = vec2<f32>(x_4242.z, x_4242.w);
            let x_4245 : f32 = u_xlat11.z;
            txVec69 = vec3<f32>(x_4243.x, x_4243.y, x_4245);
            let x_4252 : vec3<f32> = txVec69;
            let x_4254 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4252.xy, x_4252.z);
            u_xlat88 = x_4254;
            let x_4256 : f32 = u_xlat20.y;
            let x_4257 : f32 = u_xlat88;
            let x_4259 : f32 = u_xlat87;
            u_xlat87 = ((x_4256 * x_4257) + x_4259);
            let x_4262 : vec4<f32> = u_xlat15;
            let x_4263 : vec2<f32> = vec2<f32>(x_4262.z, x_4262.w);
            let x_4265 : f32 = u_xlat11.z;
            txVec70 = vec3<f32>(x_4263.x, x_4263.y, x_4265);
            let x_4272 : vec3<f32> = txVec70;
            let x_4274 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4272.xy, x_4272.z);
            u_xlat88 = x_4274;
            let x_4276 : f32 = u_xlat20.z;
            let x_4277 : f32 = u_xlat88;
            let x_4279 : f32 = u_xlat87;
            u_xlat87 = ((x_4276 * x_4277) + x_4279);
            let x_4282 : vec4<f32> = u_xlat14;
            let x_4283 : vec2<f32> = vec2<f32>(x_4282.x, x_4282.y);
            let x_4285 : f32 = u_xlat11.z;
            txVec71 = vec3<f32>(x_4283.x, x_4283.y, x_4285);
            let x_4292 : vec3<f32> = txVec71;
            let x_4294 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4292.xy, x_4292.z);
            u_xlat88 = x_4294;
            let x_4296 : f32 = u_xlat20.w;
            let x_4297 : f32 = u_xlat88;
            let x_4299 : f32 = u_xlat87;
            u_xlat87 = ((x_4296 * x_4297) + x_4299);
            let x_4302 : vec4<f32> = u_xlat14;
            let x_4303 : vec2<f32> = vec2<f32>(x_4302.z, x_4302.w);
            let x_4305 : f32 = u_xlat11.z;
            txVec72 = vec3<f32>(x_4303.x, x_4303.y, x_4305);
            let x_4312 : vec3<f32> = txVec72;
            let x_4314 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4312.xy, x_4312.z);
            u_xlat88 = x_4314;
            let x_4315 : f32 = u_xlat86;
            let x_4316 : f32 = u_xlat88;
            let x_4318 : f32 = u_xlat87;
            u_xlat85 = ((x_4315 * x_4316) + x_4318);
          } else {
            let x_4321 : vec4<f32> = u_xlat11;
            let x_4324 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4327 : vec2<f32> = ((vec2<f32>(x_4321.x, x_4321.y) * vec2<f32>(x_4324.z, x_4324.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4328 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4327.x, x_4327.y, x_4328.z, x_4328.w);
            let x_4330 : vec4<f32> = u_xlat12;
            let x_4332 : vec2<f32> = floor(vec2<f32>(x_4330.x, x_4330.y));
            let x_4333 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4332.x, x_4332.y, x_4333.z, x_4333.w);
            let x_4335 : vec4<f32> = u_xlat11;
            let x_4338 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4341 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4335.x, x_4335.y) * vec2<f32>(x_4338.z, x_4338.w)) + -(vec2<f32>(x_4341.x, x_4341.y)));
            let x_4345 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4345.x, x_4345.x, x_4345.y, x_4345.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4348 : vec4<f32> = u_xlat13;
            let x_4350 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4348.x, x_4348.x, x_4348.z, x_4348.z) * vec4<f32>(x_4350.x, x_4350.x, x_4350.z, x_4350.z));
            let x_4353 : vec4<f32> = u_xlat14;
            let x_4355 : vec2<f32> = (vec2<f32>(x_4353.y, x_4353.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4356 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4356.x, x_4355.x, x_4356.z, x_4355.y);
            let x_4358 : vec4<f32> = u_xlat14;
            let x_4361 : vec2<f32> = u_xlat64;
            let x_4363 : vec2<f32> = ((vec2<f32>(x_4358.x, x_4358.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4361));
            let x_4364 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4363.x, x_4364.y, x_4363.y, x_4364.w);
            let x_4366 : vec2<f32> = u_xlat64;
            let x_4368 : vec2<f32> = (-(x_4366) + vec2<f32>(1.0f, 1.0f));
            let x_4369 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4368.x, x_4368.y, x_4369.z, x_4369.w);
            let x_4371 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_4371, vec2<f32>(0.0f, 0.0f));
            let x_4373 : vec2<f32> = u_xlat66;
            let x_4375 : vec2<f32> = u_xlat66;
            let x_4377 : vec4<f32> = u_xlat14;
            let x_4379 : vec2<f32> = ((-(x_4373) * x_4375) + vec2<f32>(x_4377.x, x_4377.y));
            let x_4380 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4379.x, x_4379.y, x_4380.z, x_4380.w);
            let x_4382 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_4382, vec2<f32>(0.0f, 0.0f));
            let x_4385 : vec2<f32> = u_xlat66;
            let x_4387 : vec2<f32> = u_xlat66;
            let x_4389 : vec4<f32> = u_xlat13;
            let x_4391 : vec2<f32> = ((-(x_4385) * x_4387) + vec2<f32>(x_4389.y, x_4389.w));
            let x_4392 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_4391.x, x_4392.y, x_4391.y);
            let x_4394 : vec4<f32> = u_xlat14;
            let x_4396 : vec2<f32> = (vec2<f32>(x_4394.x, x_4394.y) + vec2<f32>(2.0f, 2.0f));
            let x_4397 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4396.x, x_4396.y, x_4397.z, x_4397.w);
            let x_4399 : vec3<f32> = u_xlat39;
            let x_4401 : vec2<f32> = (vec2<f32>(x_4399.x, x_4399.z) + vec2<f32>(2.0f, 2.0f));
            let x_4402 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4402.x, x_4401.x, x_4402.z, x_4401.y);
            let x_4405 : f32 = u_xlat13.y;
            u_xlat16.z = (x_4405 * 0.08163200318813323975f);
            let x_4408 : vec4<f32> = u_xlat13;
            let x_4410 : vec3<f32> = (vec3<f32>(x_4408.z, x_4408.x, x_4408.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4411 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4410.x, x_4410.y, x_4410.z, x_4411.w);
            let x_4413 : vec4<f32> = u_xlat14;
            let x_4415 : vec2<f32> = (vec2<f32>(x_4413.x, x_4413.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4416 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4415.x, x_4415.y, x_4416.z, x_4416.w);
            let x_4419 : f32 = u_xlat17.y;
            u_xlat16.x = x_4419;
            let x_4421 : vec2<f32> = u_xlat64;
            let x_4424 : vec2<f32> = ((vec2<f32>(x_4421.x, x_4421.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4425 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4425.x, x_4424.x, x_4425.z, x_4424.y);
            let x_4427 : vec2<f32> = u_xlat64;
            let x_4430 : vec2<f32> = ((vec2<f32>(x_4427.x, x_4427.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4431 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4430.x, x_4431.y, x_4430.y, x_4431.w);
            let x_4434 : f32 = u_xlat13.x;
            u_xlat14.y = x_4434;
            let x_4437 : f32 = u_xlat15.y;
            u_xlat14.w = x_4437;
            let x_4439 : vec4<f32> = u_xlat14;
            let x_4440 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4439 + x_4440);
            let x_4442 : vec2<f32> = u_xlat64;
            let x_4445 : vec2<f32> = ((vec2<f32>(x_4442.y, x_4442.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4446 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4446.x, x_4445.x, x_4446.z, x_4445.y);
            let x_4448 : vec2<f32> = u_xlat64;
            let x_4451 : vec2<f32> = ((vec2<f32>(x_4448.y, x_4448.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4452 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4451.x, x_4452.y, x_4451.y, x_4452.w);
            let x_4455 : f32 = u_xlat13.y;
            u_xlat15.y = x_4455;
            let x_4457 : vec4<f32> = u_xlat15;
            let x_4458 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4457 + x_4458);
            let x_4460 : vec4<f32> = u_xlat14;
            let x_4461 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_4460 / x_4461);
            let x_4463 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4463 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4465 : vec4<f32> = u_xlat15;
            let x_4466 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_4465 / x_4466);
            let x_4468 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4468 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4470 : vec4<f32> = u_xlat14;
            let x_4473 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4470.w, x_4470.x, x_4470.y, x_4470.z) * vec4<f32>(x_4473.x, x_4473.x, x_4473.x, x_4473.x));
            let x_4476 : vec4<f32> = u_xlat15;
            let x_4479 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_4476.x, x_4476.w, x_4476.y, x_4476.z) * vec4<f32>(x_4479.y, x_4479.y, x_4479.y, x_4479.y));
            let x_4482 : vec4<f32> = u_xlat14;
            let x_4483 : vec3<f32> = vec3<f32>(x_4482.y, x_4482.z, x_4482.w);
            let x_4484 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4483.x, x_4484.y, x_4483.y, x_4483.z);
            let x_4487 : f32 = u_xlat15.x;
            u_xlat17.y = x_4487;
            let x_4489 : vec4<f32> = u_xlat12;
            let x_4492 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4495 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4489.x, x_4489.y, x_4489.x, x_4489.y) * vec4<f32>(x_4492.x, x_4492.y, x_4492.x, x_4492.y)) + vec4<f32>(x_4495.x, x_4495.y, x_4495.z, x_4495.y));
            let x_4498 : vec4<f32> = u_xlat12;
            let x_4501 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4504 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_4498.x, x_4498.y) * vec2<f32>(x_4501.x, x_4501.y)) + vec2<f32>(x_4504.w, x_4504.y));
            let x_4508 : f32 = u_xlat17.y;
            u_xlat14.y = x_4508;
            let x_4511 : f32 = u_xlat15.z;
            u_xlat17.y = x_4511;
            let x_4513 : vec4<f32> = u_xlat12;
            let x_4516 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4519 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_4513.x, x_4513.y, x_4513.x, x_4513.y) * vec4<f32>(x_4516.x, x_4516.y, x_4516.x, x_4516.y)) + vec4<f32>(x_4519.x, x_4519.y, x_4519.z, x_4519.y));
            let x_4522 : vec4<f32> = u_xlat12;
            let x_4525 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4528 : vec4<f32> = u_xlat17;
            let x_4530 : vec2<f32> = ((vec2<f32>(x_4522.x, x_4522.y) * vec2<f32>(x_4525.x, x_4525.y)) + vec2<f32>(x_4528.w, x_4528.y));
            let x_4531 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_4530.x, x_4530.y, x_4531.z, x_4531.w);
            let x_4534 : f32 = u_xlat17.y;
            u_xlat14.z = x_4534;
            let x_4536 : vec4<f32> = u_xlat12;
            let x_4539 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4542 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4536.x, x_4536.y, x_4536.x, x_4536.y) * vec4<f32>(x_4539.x, x_4539.y, x_4539.x, x_4539.y)) + vec4<f32>(x_4542.x, x_4542.y, x_4542.x, x_4542.z));
            let x_4546 : f32 = u_xlat15.w;
            u_xlat17.y = x_4546;
            let x_4549 : vec4<f32> = u_xlat12;
            let x_4552 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4555 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4549.x, x_4549.y, x_4549.x, x_4549.y) * vec4<f32>(x_4552.x, x_4552.y, x_4552.x, x_4552.y)) + vec4<f32>(x_4555.x, x_4555.y, x_4555.z, x_4555.y));
            let x_4559 : vec4<f32> = u_xlat12;
            let x_4562 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4565 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_4559.x, x_4559.y) * vec2<f32>(x_4562.x, x_4562.y)) + vec2<f32>(x_4565.w, x_4565.y));
            let x_4569 : f32 = u_xlat17.y;
            u_xlat14.w = x_4569;
            let x_4572 : vec4<f32> = u_xlat12;
            let x_4575 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4578 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4572.x, x_4572.y) * vec2<f32>(x_4575.x, x_4575.y)) + vec2<f32>(x_4578.x, x_4578.w));
            let x_4581 : vec4<f32> = u_xlat17;
            let x_4582 : vec3<f32> = vec3<f32>(x_4581.x, x_4581.z, x_4581.w);
            let x_4583 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4582.x, x_4583.y, x_4582.y, x_4582.z);
            let x_4585 : vec4<f32> = u_xlat12;
            let x_4588 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4591 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4585.x, x_4585.y, x_4585.x, x_4585.y) * vec4<f32>(x_4588.x, x_4588.y, x_4588.x, x_4588.y)) + vec4<f32>(x_4591.x, x_4591.y, x_4591.z, x_4591.y));
            let x_4595 : vec4<f32> = u_xlat12;
            let x_4598 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4601 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4595.x, x_4595.y) * vec2<f32>(x_4598.x, x_4598.y)) + vec2<f32>(x_4601.w, x_4601.y));
            let x_4605 : f32 = u_xlat14.x;
            u_xlat15.x = x_4605;
            let x_4607 : vec4<f32> = u_xlat12;
            let x_4610 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4613 : vec4<f32> = u_xlat15;
            let x_4615 : vec2<f32> = ((vec2<f32>(x_4607.x, x_4607.y) * vec2<f32>(x_4610.x, x_4610.y)) + vec2<f32>(x_4613.x, x_4613.y));
            let x_4616 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4615.x, x_4615.y, x_4616.z, x_4616.w);
            let x_4619 : vec4<f32> = u_xlat13;
            let x_4621 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4619.x, x_4619.x, x_4619.x, x_4619.x) * x_4621);
            let x_4624 : vec4<f32> = u_xlat13;
            let x_4626 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4624.y, x_4624.y, x_4624.y, x_4624.y) * x_4626);
            let x_4629 : vec4<f32> = u_xlat13;
            let x_4631 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4629.z, x_4629.z, x_4629.z, x_4629.z) * x_4631);
            let x_4633 : vec4<f32> = u_xlat13;
            let x_4635 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4633.w, x_4633.w, x_4633.w, x_4633.w) * x_4635);
            let x_4638 : vec4<f32> = u_xlat18;
            let x_4639 : vec2<f32> = vec2<f32>(x_4638.x, x_4638.y);
            let x_4641 : f32 = u_xlat11.z;
            txVec73 = vec3<f32>(x_4639.x, x_4639.y, x_4641);
            let x_4648 : vec3<f32> = txVec73;
            let x_4650 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4648.xy, x_4648.z);
            u_xlat86 = x_4650;
            let x_4652 : vec4<f32> = u_xlat18;
            let x_4653 : vec2<f32> = vec2<f32>(x_4652.z, x_4652.w);
            let x_4655 : f32 = u_xlat11.z;
            txVec74 = vec3<f32>(x_4653.x, x_4653.y, x_4655);
            let x_4662 : vec3<f32> = txVec74;
            let x_4664 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4662.xy, x_4662.z);
            u_xlat87 = x_4664;
            let x_4665 : f32 = u_xlat87;
            let x_4667 : f32 = u_xlat23.y;
            u_xlat87 = (x_4665 * x_4667);
            let x_4670 : f32 = u_xlat23.x;
            let x_4671 : f32 = u_xlat86;
            let x_4673 : f32 = u_xlat87;
            u_xlat86 = ((x_4670 * x_4671) + x_4673);
            let x_4676 : vec2<f32> = u_xlat64;
            let x_4678 : f32 = u_xlat11.z;
            txVec75 = vec3<f32>(x_4676.x, x_4676.y, x_4678);
            let x_4685 : vec3<f32> = txVec75;
            let x_4687 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4685.xy, x_4685.z);
            u_xlat87 = x_4687;
            let x_4689 : f32 = u_xlat23.z;
            let x_4690 : f32 = u_xlat87;
            let x_4692 : f32 = u_xlat86;
            u_xlat86 = ((x_4689 * x_4690) + x_4692);
            let x_4695 : vec4<f32> = u_xlat21;
            let x_4696 : vec2<f32> = vec2<f32>(x_4695.x, x_4695.y);
            let x_4698 : f32 = u_xlat11.z;
            txVec76 = vec3<f32>(x_4696.x, x_4696.y, x_4698);
            let x_4705 : vec3<f32> = txVec76;
            let x_4707 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4705.xy, x_4705.z);
            u_xlat87 = x_4707;
            let x_4709 : f32 = u_xlat23.w;
            let x_4710 : f32 = u_xlat87;
            let x_4712 : f32 = u_xlat86;
            u_xlat86 = ((x_4709 * x_4710) + x_4712);
            let x_4715 : vec4<f32> = u_xlat19;
            let x_4716 : vec2<f32> = vec2<f32>(x_4715.x, x_4715.y);
            let x_4718 : f32 = u_xlat11.z;
            txVec77 = vec3<f32>(x_4716.x, x_4716.y, x_4718);
            let x_4725 : vec3<f32> = txVec77;
            let x_4727 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4725.xy, x_4725.z);
            u_xlat87 = x_4727;
            let x_4729 : f32 = u_xlat24.x;
            let x_4730 : f32 = u_xlat87;
            let x_4732 : f32 = u_xlat86;
            u_xlat86 = ((x_4729 * x_4730) + x_4732);
            let x_4735 : vec4<f32> = u_xlat19;
            let x_4736 : vec2<f32> = vec2<f32>(x_4735.z, x_4735.w);
            let x_4738 : f32 = u_xlat11.z;
            txVec78 = vec3<f32>(x_4736.x, x_4736.y, x_4738);
            let x_4745 : vec3<f32> = txVec78;
            let x_4747 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4745.xy, x_4745.z);
            u_xlat87 = x_4747;
            let x_4749 : f32 = u_xlat24.y;
            let x_4750 : f32 = u_xlat87;
            let x_4752 : f32 = u_xlat86;
            u_xlat86 = ((x_4749 * x_4750) + x_4752);
            let x_4755 : vec4<f32> = u_xlat20;
            let x_4756 : vec2<f32> = vec2<f32>(x_4755.x, x_4755.y);
            let x_4758 : f32 = u_xlat11.z;
            txVec79 = vec3<f32>(x_4756.x, x_4756.y, x_4758);
            let x_4765 : vec3<f32> = txVec79;
            let x_4767 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4765.xy, x_4765.z);
            u_xlat87 = x_4767;
            let x_4769 : f32 = u_xlat24.z;
            let x_4770 : f32 = u_xlat87;
            let x_4772 : f32 = u_xlat86;
            u_xlat86 = ((x_4769 * x_4770) + x_4772);
            let x_4775 : vec4<f32> = u_xlat21;
            let x_4776 : vec2<f32> = vec2<f32>(x_4775.z, x_4775.w);
            let x_4778 : f32 = u_xlat11.z;
            txVec80 = vec3<f32>(x_4776.x, x_4776.y, x_4778);
            let x_4785 : vec3<f32> = txVec80;
            let x_4787 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4785.xy, x_4785.z);
            u_xlat87 = x_4787;
            let x_4789 : f32 = u_xlat24.w;
            let x_4790 : f32 = u_xlat87;
            let x_4792 : f32 = u_xlat86;
            u_xlat86 = ((x_4789 * x_4790) + x_4792);
            let x_4795 : vec4<f32> = u_xlat22;
            let x_4796 : vec2<f32> = vec2<f32>(x_4795.x, x_4795.y);
            let x_4798 : f32 = u_xlat11.z;
            txVec81 = vec3<f32>(x_4796.x, x_4796.y, x_4798);
            let x_4805 : vec3<f32> = txVec81;
            let x_4807 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4805.xy, x_4805.z);
            u_xlat87 = x_4807;
            let x_4809 : f32 = u_xlat25.x;
            let x_4810 : f32 = u_xlat87;
            let x_4812 : f32 = u_xlat86;
            u_xlat86 = ((x_4809 * x_4810) + x_4812);
            let x_4815 : vec4<f32> = u_xlat22;
            let x_4816 : vec2<f32> = vec2<f32>(x_4815.z, x_4815.w);
            let x_4818 : f32 = u_xlat11.z;
            txVec82 = vec3<f32>(x_4816.x, x_4816.y, x_4818);
            let x_4825 : vec3<f32> = txVec82;
            let x_4827 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4825.xy, x_4825.z);
            u_xlat87 = x_4827;
            let x_4829 : f32 = u_xlat25.y;
            let x_4830 : f32 = u_xlat87;
            let x_4832 : f32 = u_xlat86;
            u_xlat86 = ((x_4829 * x_4830) + x_4832);
            let x_4835 : vec2<f32> = u_xlat40;
            let x_4837 : f32 = u_xlat11.z;
            txVec83 = vec3<f32>(x_4835.x, x_4835.y, x_4837);
            let x_4844 : vec3<f32> = txVec83;
            let x_4846 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4844.xy, x_4844.z);
            u_xlat87 = x_4846;
            let x_4848 : f32 = u_xlat25.z;
            let x_4849 : f32 = u_xlat87;
            let x_4851 : f32 = u_xlat86;
            u_xlat86 = ((x_4848 * x_4849) + x_4851);
            let x_4854 : vec2<f32> = u_xlat72;
            let x_4856 : f32 = u_xlat11.z;
            txVec84 = vec3<f32>(x_4854.x, x_4854.y, x_4856);
            let x_4863 : vec3<f32> = txVec84;
            let x_4865 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4863.xy, x_4863.z);
            u_xlat87 = x_4865;
            let x_4867 : f32 = u_xlat25.w;
            let x_4868 : f32 = u_xlat87;
            let x_4870 : f32 = u_xlat86;
            u_xlat86 = ((x_4867 * x_4868) + x_4870);
            let x_4873 : vec4<f32> = u_xlat17;
            let x_4874 : vec2<f32> = vec2<f32>(x_4873.x, x_4873.y);
            let x_4876 : f32 = u_xlat11.z;
            txVec85 = vec3<f32>(x_4874.x, x_4874.y, x_4876);
            let x_4883 : vec3<f32> = txVec85;
            let x_4885 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4883.xy, x_4883.z);
            u_xlat87 = x_4885;
            let x_4887 : f32 = u_xlat13.x;
            let x_4888 : f32 = u_xlat87;
            let x_4890 : f32 = u_xlat86;
            u_xlat86 = ((x_4887 * x_4888) + x_4890);
            let x_4893 : vec4<f32> = u_xlat17;
            let x_4894 : vec2<f32> = vec2<f32>(x_4893.z, x_4893.w);
            let x_4896 : f32 = u_xlat11.z;
            txVec86 = vec3<f32>(x_4894.x, x_4894.y, x_4896);
            let x_4903 : vec3<f32> = txVec86;
            let x_4905 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4903.xy, x_4903.z);
            u_xlat87 = x_4905;
            let x_4907 : f32 = u_xlat13.y;
            let x_4908 : f32 = u_xlat87;
            let x_4910 : f32 = u_xlat86;
            u_xlat86 = ((x_4907 * x_4908) + x_4910);
            let x_4913 : vec2<f32> = u_xlat67;
            let x_4915 : f32 = u_xlat11.z;
            txVec87 = vec3<f32>(x_4913.x, x_4913.y, x_4915);
            let x_4922 : vec3<f32> = txVec87;
            let x_4924 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4922.xy, x_4922.z);
            u_xlat87 = x_4924;
            let x_4926 : f32 = u_xlat13.z;
            let x_4927 : f32 = u_xlat87;
            let x_4929 : f32 = u_xlat86;
            u_xlat86 = ((x_4926 * x_4927) + x_4929);
            let x_4932 : vec4<f32> = u_xlat12;
            let x_4933 : vec2<f32> = vec2<f32>(x_4932.x, x_4932.y);
            let x_4935 : f32 = u_xlat11.z;
            txVec88 = vec3<f32>(x_4933.x, x_4933.y, x_4935);
            let x_4942 : vec3<f32> = txVec88;
            let x_4944 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4942.xy, x_4942.z);
            u_xlat87 = x_4944;
            let x_4946 : f32 = u_xlat13.w;
            let x_4947 : f32 = u_xlat87;
            let x_4949 : f32 = u_xlat86;
            u_xlat85 = ((x_4946 * x_4947) + x_4949);
          }
        }
      } else {
        let x_4953 : vec4<f32> = u_xlat11;
        let x_4954 : vec2<f32> = vec2<f32>(x_4953.x, x_4953.y);
        let x_4956 : f32 = u_xlat11.z;
        txVec89 = vec3<f32>(x_4954.x, x_4954.y, x_4956);
        let x_4963 : vec3<f32> = txVec89;
        let x_4965 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4963.xy, x_4963.z);
        u_xlat85 = x_4965;
      }
      let x_4966 : i32 = u_xlati3;
      let x_4968 : f32 = x_130.x_AdditionalShadowParams[x_4966].x;
      u_xlat86 = (1.0f + -(x_4968));
      let x_4971 : f32 = u_xlat85;
      let x_4972 : i32 = u_xlati3;
      let x_4974 : f32 = x_130.x_AdditionalShadowParams[x_4972].x;
      let x_4976 : f32 = u_xlat86;
      u_xlat85 = ((x_4971 * x_4974) + x_4976);
      let x_4979 : f32 = u_xlat11.z;
      u_xlatb86 = (0.0f >= x_4979);
      let x_4983 : f32 = u_xlat11.z;
      u_xlatb87 = (x_4983 >= 1.0f);
      let x_4985 : bool = u_xlatb86;
      let x_4986 : bool = u_xlatb87;
      u_xlatb86 = (x_4985 | x_4986);
      let x_4988 : bool = u_xlatb86;
      let x_4989 : f32 = u_xlat85;
      u_xlat85 = select(x_4989, 1.0f, x_4988);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_4992 : f32 = u_xlat85;
    u_xlat86 = (-(x_4992) + 1.0f);
    let x_4995 : f32 = u_xlat79;
    let x_4996 : f32 = u_xlat86;
    let x_4998 : f32 = u_xlat85;
    u_xlat85 = ((x_4995 * x_4996) + x_4998);
    let x_5001 : f32 = u_xlat4.x;
    let x_5002 : f32 = u_xlat85;
    u_xlat4.x = (x_5001 * x_5002);
    let x_5005 : vec3<f32> = u_xlat29;
    let x_5006 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(x_5005, vec3<f32>(x_5006.x, x_5006.y, x_5006.z));
    let x_5009 : f32 = u_xlat85;
    u_xlat85 = clamp(x_5009, 0.0f, 1.0f);
    let x_5012 : f32 = u_xlat4.x;
    let x_5013 : f32 = u_xlat85;
    u_xlat4.x = (x_5012 * x_5013);
    let x_5016 : vec4<f32> = u_xlat4;
    let x_5018 : i32 = u_xlati3;
    let x_5020 : vec4<f32> = x_3565.x_AdditionalLightsColor[x_5018];
    let x_5022 : vec3<f32> = (vec3<f32>(x_5016.x, x_5016.x, x_5016.x) * vec3<f32>(x_5020.x, x_5020.y, x_5020.z));
    let x_5023 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5022.x, x_5022.y, x_5022.z, x_5023.w);
    let x_5025 : vec4<f32> = u_xlat9;
    let x_5027 : vec4<f32> = u_xlat5;
    let x_5030 : vec3<f32> = u_xlat31;
    let x_5031 : vec3<f32> = ((vec3<f32>(x_5025.x, x_5025.y, x_5025.z) * vec3<f32>(x_5027.x, x_5027.x, x_5027.x)) + x_5030);
    let x_5032 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5031.x, x_5031.y, x_5031.z, x_5032.w);
    let x_5034 : vec4<f32> = u_xlat9;
    let x_5036 : vec4<f32> = u_xlat9;
    u_xlat3.x = dot(vec3<f32>(x_5034.x, x_5034.y, x_5034.z), vec3<f32>(x_5036.x, x_5036.y, x_5036.z));
    let x_5041 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_5041, 1.17549435e-38f);
    let x_5045 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_5045);
    let x_5048 : vec4<f32> = u_xlat3;
    let x_5050 : vec4<f32> = u_xlat9;
    let x_5052 : vec3<f32> = (vec3<f32>(x_5048.x, x_5048.x, x_5048.x) * vec3<f32>(x_5050.x, x_5050.y, x_5050.z));
    let x_5053 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5052.x, x_5052.y, x_5052.z, x_5053.w);
    let x_5055 : vec3<f32> = u_xlat29;
    let x_5056 : vec4<f32> = u_xlat9;
    u_xlat3.x = dot(x_5055, vec3<f32>(x_5056.x, x_5056.y, x_5056.z));
    let x_5061 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_5061, 0.0f, 1.0f);
    let x_5064 : vec4<f32> = u_xlat10;
    let x_5066 : vec4<f32> = u_xlat9;
    u_xlat4.x = dot(vec3<f32>(x_5064.x, x_5064.y, x_5064.z), vec3<f32>(x_5066.x, x_5066.y, x_5066.z));
    let x_5071 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_5071, 0.0f, 1.0f);
    let x_5075 : f32 = u_xlat3.x;
    let x_5077 : f32 = u_xlat3.x;
    u_xlat3.x = (x_5075 * x_5077);
    let x_5081 : f32 = u_xlat3.x;
    let x_5083 : f32 = u_xlat59.x;
    u_xlat3.x = ((x_5081 * x_5083) + 1.00001001358032226562f);
    let x_5088 : f32 = u_xlat4.x;
    let x_5090 : f32 = u_xlat4.x;
    u_xlat4.x = (x_5088 * x_5090);
    let x_5094 : f32 = u_xlat3.x;
    let x_5096 : f32 = u_xlat3.x;
    u_xlat3.x = (x_5094 * x_5096);
    let x_5100 : f32 = u_xlat4.x;
    u_xlat4.x = max(x_5100, 0.10000000149011611938f);
    let x_5104 : f32 = u_xlat3.x;
    let x_5106 : f32 = u_xlat4.x;
    u_xlat3.x = (x_5104 * x_5106);
    let x_5110 : f32 = u_xlat7.x;
    let x_5112 : f32 = u_xlat3.x;
    u_xlat3.x = (x_5110 * x_5112);
    let x_5115 : f32 = u_xlat84;
    let x_5117 : f32 = u_xlat3.x;
    u_xlat3.x = (x_5115 / x_5117);
    let x_5120 : vec4<f32> = u_xlat3;
    let x_5123 : vec3<f32> = u_xlat2;
    let x_5124 : vec3<f32> = ((vec3<f32>(x_5120.x, x_5120.x, x_5120.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5123);
    let x_5125 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5124.x, x_5124.y, x_5124.z, x_5125.w);
    let x_5127 : vec4<f32> = u_xlat9;
    let x_5129 : vec4<f32> = u_xlat11;
    let x_5132 : vec4<f32> = u_xlat8;
    let x_5134 : vec3<f32> = ((vec3<f32>(x_5127.x, x_5127.y, x_5127.z) * vec3<f32>(x_5129.x, x_5129.y, x_5129.z)) + vec3<f32>(x_5132.x, x_5132.y, x_5132.z));
    let x_5135 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5134.x, x_5134.y, x_5134.z, x_5135.w);

    continuing {
      let x_5137 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5137 + bitcast<u32>(1i));
    }
  }
  let x_5139 : vec3<f32> = u_xlat30;
  let x_5140 : vec2<f32> = u_xlat33;
  let x_5143 : vec4<f32> = u_xlat6;
  u_xlat2 = ((x_5139 * vec3<f32>(x_5140.x, x_5140.x, x_5140.x)) + vec3<f32>(x_5143.x, x_5143.y, x_5143.z));
  let x_5146 : vec4<f32> = u_xlat8;
  let x_5148 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_5146.x, x_5146.y, x_5146.z) + x_5148);
  let x_5150 : vec4<f32> = vs_INTERP6;
  let x_5152 : vec3<f32> = u_xlat0;
  let x_5154 : vec3<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_5150.w, x_5150.w, x_5150.w) * x_5152) + x_5154);
  let x_5157 : f32 = u_xlat27.x;
  let x_5159 : f32 = u_xlat27.x;
  u_xlat78 = (x_5157 * -(x_5159));
  let x_5162 : f32 = u_xlat78;
  u_xlat78 = exp2(x_5162);
  let x_5164 : vec3<f32> = u_xlat0;
  let x_5166 : vec4<f32> = x_53.unity_FogColor;
  u_xlat0 = (x_5164 + -(vec3<f32>(x_5166.x, x_5166.y, x_5166.z)));
  let x_5172 : f32 = u_xlat78;
  let x_5174 : vec3<f32> = u_xlat0;
  let x_5177 : vec4<f32> = x_53.unity_FogColor;
  let x_5179 : vec3<f32> = ((vec3<f32>(x_5172, x_5172, x_5172) * x_5174) + vec3<f32>(x_5177.x, x_5177.y, x_5177.z));
  let x_5180 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5179.x, x_5179.y, x_5179.z, x_5180.w);
  let x_5182 : bool = u_xlatb53;
  if (x_5182) {
    let x_5187 : f32 = u_xlat1.x;
    x_5183 = x_5187;
  } else {
    x_5183 = 1.0f;
  }
  let x_5189 : f32 = x_5183;
  SV_Target0.w = x_5189;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_INTERP9_param : vec3<f32>, @location(2) vs_INTERP5_param : vec4<f32>, @location(3) vs_INTERP6_param : vec4<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP0 = vs_INTERP0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


