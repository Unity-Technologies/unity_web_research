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
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
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

var<private> u_xlat75 : f32;

var<private> u_xlat28 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_130 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu75 : u32;

var<private> u_xlati75 : i32;

var<private> u_xlatb75 : bool;

var<private> u_xlatb77 : bool;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat77 : f32;

var<private> u_xlatb79 : bool;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlat30 : vec3<f32>;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb5 : bool;

var<private> u_xlatb30 : bool;

var<private> u_xlatb1 : bool;

var<private> u_xlat26 : vec3<f32>;

var<private> u_xlat51 : f32;

var<private> u_xlat76 : f32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb26 : vec3<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_1749 : UnityPerDraw;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlatb32 : bool;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat54 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu4 : u32;

var<private> u_xlati80 : i32;

var<private> u_xlati4 : i32;

@group(1) @binding(1) var<uniform> x_3559 : AdditionalLights;

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

var<private> u_xlatu3 : u32;

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
  var x_1662 : f32;
  var x_1710 : f32;
  var x_1835 : f32;
  var x_1847 : f32;
  var x_1859 : f32;
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
  var x_3698 : f32;
  var x_3710 : f32;
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
  var x_5189 : f32;
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
  u_xlat75 = dot(x_94, x_95);
  let x_97 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_97);
  let x_100 : f32 = u_xlat75;
  let x_102 : vec4<f32> = u_xlat4;
  u_xlat28 = (vec3<f32>(x_100, x_100, x_100) * vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_109 : f32 = vs_INTERP6.y;
  u_xlat75 = (x_109 * 200.0f);
  let x_112 : f32 = u_xlat75;
  u_xlat75 = min(x_112, 1.0f);
  let x_114 : f32 = u_xlat75;
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
  u_xlat75 = dot(x_247, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_252 : f32 = u_xlat75;
  u_xlat75 = (-(x_252) + 4.0f);
  let x_257 : f32 = u_xlat75;
  u_xlatu75 = u32(x_257);
  let x_261 : u32 = u_xlatu75;
  u_xlati75 = (bitcast<i32>(x_261) << bitcast<u32>(2i));
  let x_264 : vec3<f32> = vs_INTERP8;
  let x_266 : i32 = u_xlati75;
  let x_269 : i32 = u_xlati75;
  let x_273 : vec4<f32> = x_130.x_MainLightWorldToShadow[((x_266 + 1i) / 4i)][((x_269 + 1i) % 4i)];
  let x_275 : vec3<f32> = (vec3<f32>(x_264.y, x_264.y, x_264.y) * vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : i32 = u_xlati75;
  let x_280 : i32 = u_xlati75;
  let x_283 : vec4<f32> = x_130.x_MainLightWorldToShadow[(x_278 / 4i)][(x_280 % 4i)];
  let x_285 : vec3<f32> = vs_INTERP8;
  let x_288 : vec4<f32> = u_xlat4;
  let x_290 : vec3<f32> = ((vec3<f32>(x_283.x, x_283.y, x_283.z) * vec3<f32>(x_285.x, x_285.x, x_285.x)) + vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_291 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_293 : i32 = u_xlati75;
  let x_296 : i32 = u_xlati75;
  let x_300 : vec4<f32> = x_130.x_MainLightWorldToShadow[((x_293 + 2i) / 4i)][((x_296 + 2i) % 4i)];
  let x_302 : vec3<f32> = vs_INTERP8;
  let x_305 : vec4<f32> = u_xlat4;
  let x_307 : vec3<f32> = ((vec3<f32>(x_300.x, x_300.y, x_300.z) * vec3<f32>(x_302.z, x_302.z, x_302.z)) + vec3<f32>(x_305.x, x_305.y, x_305.z));
  let x_308 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_310 : vec4<f32> = u_xlat4;
  let x_312 : i32 = u_xlati75;
  let x_315 : i32 = u_xlati75;
  let x_319 : vec4<f32> = x_130.x_MainLightWorldToShadow[((x_312 + 3i) / 4i)][((x_315 + 3i) % 4i)];
  let x_321 : vec3<f32> = (vec3<f32>(x_310.x, x_310.y, x_310.z) + vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_327 : f32 = x_130.x_MainLightShadowParams.y;
  u_xlatb75 = (0.0f < x_327);
  let x_329 : bool = u_xlatb75;
  if (x_329) {
    let x_334 : f32 = x_130.x_MainLightShadowParams.y;
    u_xlatb77 = (x_334 == 1.0f);
    let x_336 : bool = u_xlatb77;
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
      u_xlat77 = dot(x_418, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_425 : f32 = x_130.x_MainLightShadowParams.y;
      u_xlatb79 = (x_425 == 2.0f);
      let x_427 : bool = u_xlatb79;
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
        u_xlat55 = ((vec2<f32>(x_449.x, x_449.y) * vec2<f32>(x_452.z, x_452.w)) + -(vec2<f32>(x_455.x, x_455.y)));
        let x_459 : vec2<f32> = u_xlat55;
        u_xlat6 = (vec4<f32>(x_459.x, x_459.x, x_459.y, x_459.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_463 : vec4<f32> = u_xlat6;
        let x_465 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_463.x, x_463.x, x_463.z, x_463.z) * vec4<f32>(x_465.x, x_465.x, x_465.z, x_465.z));
        let x_468 : vec4<f32> = u_xlat7;
        let x_472 : vec2<f32> = (vec2<f32>(x_468.y, x_468.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_473 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_472.x, x_473.y, x_472.y, x_473.w);
        let x_475 : vec4<f32> = u_xlat7;
        let x_478 : vec2<f32> = u_xlat55;
        let x_480 : vec2<f32> = ((vec2<f32>(x_475.x, x_475.z) * vec2<f32>(0.5f, 0.5f)) + -(x_478));
        let x_481 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_480.x, x_480.y, x_481.z, x_481.w);
        let x_484 : vec2<f32> = u_xlat55;
        u_xlat57 = (-(x_484) + vec2<f32>(1.0f, 1.0f));
        let x_489 : vec2<f32> = u_xlat55;
        let x_491 : vec2<f32> = min(x_489, vec2<f32>(0.0f, 0.0f));
        let x_492 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_491.x, x_491.y, x_492.z, x_492.w);
        let x_494 : vec4<f32> = u_xlat8;
        let x_497 : vec4<f32> = u_xlat8;
        let x_500 : vec2<f32> = u_xlat57;
        let x_501 : vec2<f32> = ((-(vec2<f32>(x_494.x, x_494.y)) * vec2<f32>(x_497.x, x_497.y)) + x_500);
        let x_502 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_501.x, x_501.y, x_502.z, x_502.w);
        let x_504 : vec2<f32> = u_xlat55;
        u_xlat55 = max(x_504, vec2<f32>(0.0f, 0.0f));
        let x_506 : vec2<f32> = u_xlat55;
        let x_508 : vec2<f32> = u_xlat55;
        let x_510 : vec4<f32> = u_xlat6;
        u_xlat55 = ((-(x_506) * x_508) + vec2<f32>(x_510.y, x_510.w));
        let x_513 : vec4<f32> = u_xlat8;
        let x_515 : vec2<f32> = (vec2<f32>(x_513.x, x_513.y) + vec2<f32>(1.0f, 1.0f));
        let x_516 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_515.x, x_515.y, x_516.z, x_516.w);
        let x_518 : vec2<f32> = u_xlat55;
        u_xlat55 = (x_518 + vec2<f32>(1.0f, 1.0f));
        let x_521 : vec4<f32> = u_xlat7;
        let x_525 : vec2<f32> = (vec2<f32>(x_521.x, x_521.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_526 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_525.x, x_525.y, x_526.z, x_526.w);
        let x_528 : vec2<f32> = u_xlat57;
        let x_529 : vec2<f32> = (x_528 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_530 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_529.x, x_529.y, x_530.z, x_530.w);
        let x_532 : vec4<f32> = u_xlat8;
        let x_534 : vec2<f32> = (vec2<f32>(x_532.x, x_532.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_535 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_534.x, x_534.y, x_535.z, x_535.w);
        let x_538 : vec2<f32> = u_xlat55;
        let x_539 : vec2<f32> = (x_538 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_540 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_539.x, x_539.y, x_540.z, x_540.w);
        let x_542 : vec4<f32> = u_xlat6;
        u_xlat55 = (vec2<f32>(x_542.y, x_542.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_546 : f32 = u_xlat8.x;
        u_xlat9.z = x_546;
        let x_549 : f32 = u_xlat55.x;
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
        let x_567 : f32 = u_xlat55.y;
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
        u_xlat55 = ((vec2<f32>(x_638.x, x_638.y) * vec2<f32>(x_641.x, x_641.y)) + vec2<f32>(x_644.z, x_644.w));
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
        u_xlat79 = (x_694 * x_696);
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
        u_xlat30.x = x_727;
        let x_730 : f32 = u_xlat30.x;
        let x_732 : f32 = u_xlat12.y;
        u_xlat30.x = (x_730 * x_732);
        let x_736 : f32 = u_xlat12.x;
        let x_738 : f32 = u_xlat5.x;
        let x_741 : f32 = u_xlat30.x;
        u_xlat5.x = ((x_736 * x_738) + x_741);
        let x_745 : vec2<f32> = u_xlat55;
        let x_747 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_745.x, x_745.y, x_747);
        let x_754 : vec3<f32> = txVec6;
        let x_756 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_754.xy, x_754.z);
        u_xlat30.x = x_756;
        let x_759 : f32 = u_xlat12.z;
        let x_761 : f32 = u_xlat30.x;
        let x_764 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_759 * x_761) + x_764);
        let x_768 : vec4<f32> = u_xlat8;
        let x_769 : vec2<f32> = vec2<f32>(x_768.x, x_768.y);
        let x_771 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_769.x, x_769.y, x_771);
        let x_778 : vec3<f32> = txVec7;
        let x_780 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_778.xy, x_778.z);
        u_xlat30.x = x_780;
        let x_783 : f32 = u_xlat12.w;
        let x_785 : f32 = u_xlat30.x;
        let x_788 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_783 * x_785) + x_788);
        let x_792 : vec4<f32> = u_xlat10;
        let x_793 : vec2<f32> = vec2<f32>(x_792.x, x_792.y);
        let x_795 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_793.x, x_793.y, x_795);
        let x_802 : vec3<f32> = txVec8;
        let x_804 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_802.xy, x_802.z);
        u_xlat30.x = x_804;
        let x_807 : f32 = u_xlat13.x;
        let x_809 : f32 = u_xlat30.x;
        let x_812 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_807 * x_809) + x_812);
        let x_816 : vec4<f32> = u_xlat10;
        let x_817 : vec2<f32> = vec2<f32>(x_816.z, x_816.w);
        let x_819 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_817.x, x_817.y, x_819);
        let x_826 : vec3<f32> = txVec9;
        let x_828 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_826.xy, x_826.z);
        u_xlat30.x = x_828;
        let x_831 : f32 = u_xlat13.y;
        let x_833 : f32 = u_xlat30.x;
        let x_836 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_831 * x_833) + x_836);
        let x_840 : vec4<f32> = u_xlat8;
        let x_841 : vec2<f32> = vec2<f32>(x_840.z, x_840.w);
        let x_843 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_841.x, x_841.y, x_843);
        let x_850 : vec3<f32> = txVec10;
        let x_852 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_850.xy, x_850.z);
        u_xlat30.x = x_852;
        let x_855 : f32 = u_xlat13.z;
        let x_857 : f32 = u_xlat30.x;
        let x_860 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_855 * x_857) + x_860);
        let x_864 : vec4<f32> = u_xlat7;
        let x_865 : vec2<f32> = vec2<f32>(x_864.x, x_864.y);
        let x_867 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_865.x, x_865.y, x_867);
        let x_874 : vec3<f32> = txVec11;
        let x_876 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_874.xy, x_874.z);
        u_xlat30.x = x_876;
        let x_879 : f32 = u_xlat13.w;
        let x_881 : f32 = u_xlat30.x;
        let x_884 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_879 * x_881) + x_884);
        let x_888 : vec4<f32> = u_xlat7;
        let x_889 : vec2<f32> = vec2<f32>(x_888.z, x_888.w);
        let x_891 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_889.x, x_889.y, x_891);
        let x_898 : vec3<f32> = txVec12;
        let x_900 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_898.xy, x_898.z);
        u_xlat30.x = x_900;
        let x_902 : f32 = u_xlat79;
        let x_904 : f32 = u_xlat30.x;
        let x_907 : f32 = u_xlat5.x;
        u_xlat77 = ((x_902 * x_904) + x_907);
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
        u_xlat55 = ((vec2<f32>(x_924.x, x_924.y) * vec2<f32>(x_927.z, x_927.w)) + -(vec2<f32>(x_930.x, x_930.y)));
        let x_934 : vec2<f32> = u_xlat55;
        u_xlat6 = (vec4<f32>(x_934.x, x_934.x, x_934.y, x_934.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_937 : vec4<f32> = u_xlat6;
        let x_939 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_937.x, x_937.x, x_937.z, x_937.z) * vec4<f32>(x_939.x, x_939.x, x_939.z, x_939.z));
        let x_942 : vec4<f32> = u_xlat7;
        let x_946 : vec2<f32> = (vec2<f32>(x_942.y, x_942.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_947 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_947.x, x_946.x, x_947.z, x_946.y);
        let x_949 : vec4<f32> = u_xlat7;
        let x_952 : vec2<f32> = u_xlat55;
        let x_954 : vec2<f32> = ((vec2<f32>(x_949.x, x_949.z) * vec2<f32>(0.5f, 0.5f)) + -(x_952));
        let x_955 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_954.x, x_955.y, x_954.y, x_955.w);
        let x_957 : vec2<f32> = u_xlat55;
        let x_959 : vec2<f32> = (-(x_957) + vec2<f32>(1.0f, 1.0f));
        let x_960 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_959.x, x_959.y, x_960.z, x_960.w);
        let x_962 : vec2<f32> = u_xlat55;
        u_xlat57 = min(x_962, vec2<f32>(0.0f, 0.0f));
        let x_964 : vec2<f32> = u_xlat57;
        let x_966 : vec2<f32> = u_xlat57;
        let x_968 : vec4<f32> = u_xlat7;
        let x_970 : vec2<f32> = ((-(x_964) * x_966) + vec2<f32>(x_968.x, x_968.y));
        let x_971 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_970.x, x_970.y, x_971.z, x_971.w);
        let x_973 : vec2<f32> = u_xlat55;
        u_xlat57 = max(x_973, vec2<f32>(0.0f, 0.0f));
        let x_976 : vec2<f32> = u_xlat57;
        let x_978 : vec2<f32> = u_xlat57;
        let x_980 : vec4<f32> = u_xlat6;
        let x_982 : vec2<f32> = ((-(x_976) * x_978) + vec2<f32>(x_980.y, x_980.w));
        let x_983 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_982.x, x_983.y, x_982.y);
        let x_985 : vec4<f32> = u_xlat7;
        let x_988 : vec2<f32> = (vec2<f32>(x_985.x, x_985.y) + vec2<f32>(2.0f, 2.0f));
        let x_989 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_988.x, x_988.y, x_989.z, x_989.w);
        let x_991 : vec3<f32> = u_xlat31;
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
        let x_1016 : vec2<f32> = u_xlat55;
        let x_1023 : vec2<f32> = ((vec2<f32>(x_1016.x, x_1016.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1024 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1024.x, x_1023.x, x_1024.z, x_1023.y);
        let x_1026 : vec2<f32> = u_xlat55;
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
        let x_1042 : vec2<f32> = u_xlat55;
        let x_1045 : vec2<f32> = ((vec2<f32>(x_1042.y, x_1042.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1046 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1046.x, x_1045.x, x_1046.z, x_1045.y);
        let x_1048 : vec2<f32> = u_xlat55;
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
        u_xlat55 = ((vec2<f32>(x_1102.x, x_1102.y) * vec2<f32>(x_1105.x, x_1105.y)) + vec2<f32>(x_1108.w, x_1108.y));
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
        let x_1172 : vec2<f32> = ((vec2<f32>(x_1164.x, x_1164.y) * vec2<f32>(x_1167.x, x_1167.y)) + vec2<f32>(x_1170.w, x_1170.y));
        let x_1173 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1172.x, x_1172.y, x_1173.z);
        let x_1176 : f32 = u_xlat10.y;
        u_xlat7.w = x_1176;
        let x_1179 : vec4<f32> = u_xlat5;
        let x_1182 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_1185 : vec4<f32> = u_xlat7;
        u_xlat63 = ((vec2<f32>(x_1179.x, x_1179.y) * vec2<f32>(x_1182.x, x_1182.y)) + vec2<f32>(x_1185.x, x_1185.w));
        let x_1188 : vec4<f32> = u_xlat10;
        let x_1189 : vec3<f32> = vec3<f32>(x_1188.x, x_1188.z, x_1188.w);
        let x_1190 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1189.x, x_1190.y, x_1189.y, x_1189.z);
        let x_1192 : vec4<f32> = u_xlat5;
        let x_1195 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_1198 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1192.x, x_1192.y, x_1192.x, x_1192.y) * vec4<f32>(x_1195.x, x_1195.y, x_1195.x, x_1195.y)) + vec4<f32>(x_1198.x, x_1198.y, x_1198.z, x_1198.y));
        let x_1202 : vec4<f32> = u_xlat5;
        let x_1205 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_1208 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_1202.x, x_1202.y) * vec2<f32>(x_1205.x, x_1205.y)) + vec2<f32>(x_1208.w, x_1208.y));
        let x_1212 : f32 = u_xlat7.x;
        u_xlat8.x = x_1212;
        let x_1214 : vec4<f32> = u_xlat5;
        let x_1217 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_1220 : vec4<f32> = u_xlat8;
        let x_1222 : vec2<f32> = ((vec2<f32>(x_1214.x, x_1214.y) * vec2<f32>(x_1217.x, x_1217.y)) + vec2<f32>(x_1220.x, x_1220.y));
        let x_1223 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1222.x, x_1222.y, x_1223.z, x_1223.w);
        let x_1226 : vec4<f32> = u_xlat6;
        let x_1228 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1226.x, x_1226.x, x_1226.x, x_1226.x) * x_1228);
        let x_1231 : vec4<f32> = u_xlat6;
        let x_1233 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1231.y, x_1231.y, x_1231.y, x_1231.y) * x_1233);
        let x_1236 : vec4<f32> = u_xlat6;
        let x_1238 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1236.z, x_1236.z, x_1236.z, x_1236.z) * x_1238);
        let x_1240 : vec4<f32> = u_xlat6;
        let x_1242 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1240.w, x_1240.w, x_1240.w, x_1240.w) * x_1242);
        let x_1245 : vec4<f32> = u_xlat11;
        let x_1246 : vec2<f32> = vec2<f32>(x_1245.x, x_1245.y);
        let x_1248 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1246.x, x_1246.y, x_1248);
        let x_1255 : vec3<f32> = txVec13;
        let x_1257 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1255.xy, x_1255.z);
        u_xlat79 = x_1257;
        let x_1259 : vec4<f32> = u_xlat11;
        let x_1260 : vec2<f32> = vec2<f32>(x_1259.z, x_1259.w);
        let x_1262 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1260.x, x_1260.y, x_1262);
        let x_1269 : vec3<f32> = txVec14;
        let x_1271 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1269.xy, x_1269.z);
        u_xlat7.x = x_1271;
        let x_1274 : f32 = u_xlat7.x;
        let x_1276 : f32 = u_xlat16.y;
        u_xlat7.x = (x_1274 * x_1276);
        let x_1280 : f32 = u_xlat16.x;
        let x_1281 : f32 = u_xlat79;
        let x_1284 : f32 = u_xlat7.x;
        u_xlat79 = ((x_1280 * x_1281) + x_1284);
        let x_1287 : vec2<f32> = u_xlat55;
        let x_1289 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1287.x, x_1287.y, x_1289);
        let x_1296 : vec3<f32> = txVec15;
        let x_1298 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1296.xy, x_1296.z);
        u_xlat55.x = x_1298;
        let x_1301 : f32 = u_xlat16.z;
        let x_1303 : f32 = u_xlat55.x;
        let x_1305 : f32 = u_xlat79;
        u_xlat79 = ((x_1301 * x_1303) + x_1305);
        let x_1308 : vec4<f32> = u_xlat14;
        let x_1309 : vec2<f32> = vec2<f32>(x_1308.x, x_1308.y);
        let x_1311 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1309.x, x_1309.y, x_1311);
        let x_1318 : vec3<f32> = txVec16;
        let x_1320 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1318.xy, x_1318.z);
        u_xlat55.x = x_1320;
        let x_1323 : f32 = u_xlat16.w;
        let x_1325 : f32 = u_xlat55.x;
        let x_1327 : f32 = u_xlat79;
        u_xlat79 = ((x_1323 * x_1325) + x_1327);
        let x_1330 : vec4<f32> = u_xlat12;
        let x_1331 : vec2<f32> = vec2<f32>(x_1330.x, x_1330.y);
        let x_1333 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1331.x, x_1331.y, x_1333);
        let x_1340 : vec3<f32> = txVec17;
        let x_1342 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1340.xy, x_1340.z);
        u_xlat55.x = x_1342;
        let x_1345 : f32 = u_xlat17.x;
        let x_1347 : f32 = u_xlat55.x;
        let x_1349 : f32 = u_xlat79;
        u_xlat79 = ((x_1345 * x_1347) + x_1349);
        let x_1352 : vec4<f32> = u_xlat12;
        let x_1353 : vec2<f32> = vec2<f32>(x_1352.z, x_1352.w);
        let x_1355 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1353.x, x_1353.y, x_1355);
        let x_1362 : vec3<f32> = txVec18;
        let x_1364 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1362.xy, x_1362.z);
        u_xlat55.x = x_1364;
        let x_1367 : f32 = u_xlat17.y;
        let x_1369 : f32 = u_xlat55.x;
        let x_1371 : f32 = u_xlat79;
        u_xlat79 = ((x_1367 * x_1369) + x_1371);
        let x_1374 : vec4<f32> = u_xlat13;
        let x_1375 : vec2<f32> = vec2<f32>(x_1374.x, x_1374.y);
        let x_1377 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1375.x, x_1375.y, x_1377);
        let x_1384 : vec3<f32> = txVec19;
        let x_1386 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1384.xy, x_1384.z);
        u_xlat55.x = x_1386;
        let x_1389 : f32 = u_xlat17.z;
        let x_1391 : f32 = u_xlat55.x;
        let x_1393 : f32 = u_xlat79;
        u_xlat79 = ((x_1389 * x_1391) + x_1393);
        let x_1396 : vec4<f32> = u_xlat14;
        let x_1397 : vec2<f32> = vec2<f32>(x_1396.z, x_1396.w);
        let x_1399 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1397.x, x_1397.y, x_1399);
        let x_1406 : vec3<f32> = txVec20;
        let x_1408 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1406.xy, x_1406.z);
        u_xlat55.x = x_1408;
        let x_1411 : f32 = u_xlat17.w;
        let x_1413 : f32 = u_xlat55.x;
        let x_1415 : f32 = u_xlat79;
        u_xlat79 = ((x_1411 * x_1413) + x_1415);
        let x_1418 : vec4<f32> = u_xlat15;
        let x_1419 : vec2<f32> = vec2<f32>(x_1418.x, x_1418.y);
        let x_1421 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1419.x, x_1419.y, x_1421);
        let x_1428 : vec3<f32> = txVec21;
        let x_1430 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1428.xy, x_1428.z);
        u_xlat55.x = x_1430;
        let x_1433 : f32 = u_xlat18.x;
        let x_1435 : f32 = u_xlat55.x;
        let x_1437 : f32 = u_xlat79;
        u_xlat79 = ((x_1433 * x_1435) + x_1437);
        let x_1440 : vec4<f32> = u_xlat15;
        let x_1441 : vec2<f32> = vec2<f32>(x_1440.z, x_1440.w);
        let x_1443 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1441.x, x_1441.y, x_1443);
        let x_1450 : vec3<f32> = txVec22;
        let x_1452 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1450.xy, x_1450.z);
        u_xlat55.x = x_1452;
        let x_1455 : f32 = u_xlat18.y;
        let x_1457 : f32 = u_xlat55.x;
        let x_1459 : f32 = u_xlat79;
        u_xlat79 = ((x_1455 * x_1457) + x_1459);
        let x_1462 : vec3<f32> = u_xlat32;
        let x_1463 : vec2<f32> = vec2<f32>(x_1462.x, x_1462.y);
        let x_1465 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1463.x, x_1463.y, x_1465);
        let x_1472 : vec3<f32> = txVec23;
        let x_1474 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1472.xy, x_1472.z);
        u_xlat55.x = x_1474;
        let x_1477 : f32 = u_xlat18.z;
        let x_1479 : f32 = u_xlat55.x;
        let x_1481 : f32 = u_xlat79;
        u_xlat79 = ((x_1477 * x_1479) + x_1481);
        let x_1484 : vec2<f32> = u_xlat63;
        let x_1486 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1484.x, x_1484.y, x_1486);
        let x_1493 : vec3<f32> = txVec24;
        let x_1495 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1493.xy, x_1493.z);
        u_xlat55.x = x_1495;
        let x_1498 : f32 = u_xlat18.w;
        let x_1500 : f32 = u_xlat55.x;
        let x_1502 : f32 = u_xlat79;
        u_xlat79 = ((x_1498 * x_1500) + x_1502);
        let x_1505 : vec4<f32> = u_xlat10;
        let x_1506 : vec2<f32> = vec2<f32>(x_1505.x, x_1505.y);
        let x_1508 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1506.x, x_1506.y, x_1508);
        let x_1515 : vec3<f32> = txVec25;
        let x_1517 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1515.xy, x_1515.z);
        u_xlat55.x = x_1517;
        let x_1520 : f32 = u_xlat6.x;
        let x_1522 : f32 = u_xlat55.x;
        let x_1524 : f32 = u_xlat79;
        u_xlat79 = ((x_1520 * x_1522) + x_1524);
        let x_1527 : vec4<f32> = u_xlat10;
        let x_1528 : vec2<f32> = vec2<f32>(x_1527.z, x_1527.w);
        let x_1530 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1528.x, x_1528.y, x_1530);
        let x_1537 : vec3<f32> = txVec26;
        let x_1539 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1537.xy, x_1537.z);
        u_xlat55.x = x_1539;
        let x_1542 : f32 = u_xlat6.y;
        let x_1544 : f32 = u_xlat55.x;
        let x_1546 : f32 = u_xlat79;
        u_xlat79 = ((x_1542 * x_1544) + x_1546);
        let x_1549 : vec2<f32> = u_xlat58;
        let x_1551 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1549.x, x_1549.y, x_1551);
        let x_1558 : vec3<f32> = txVec27;
        let x_1560 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1558.xy, x_1558.z);
        u_xlat55.x = x_1560;
        let x_1563 : f32 = u_xlat6.z;
        let x_1565 : f32 = u_xlat55.x;
        let x_1567 : f32 = u_xlat79;
        u_xlat79 = ((x_1563 * x_1565) + x_1567);
        let x_1570 : vec4<f32> = u_xlat5;
        let x_1571 : vec2<f32> = vec2<f32>(x_1570.x, x_1570.y);
        let x_1573 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1571.x, x_1571.y, x_1573);
        let x_1580 : vec3<f32> = txVec28;
        let x_1582 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1580.xy, x_1580.z);
        u_xlat5.x = x_1582;
        let x_1585 : f32 = u_xlat6.w;
        let x_1587 : f32 = u_xlat5.x;
        let x_1589 : f32 = u_xlat79;
        u_xlat77 = ((x_1585 * x_1587) + x_1589);
      }
    }
  } else {
    let x_1593 : vec4<f32> = u_xlat4;
    let x_1594 : vec2<f32> = vec2<f32>(x_1593.x, x_1593.y);
    let x_1596 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1594.x, x_1594.y, x_1596);
    let x_1603 : vec3<f32> = txVec29;
    let x_1605 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1603.xy, x_1603.z);
    u_xlat77 = x_1605;
  }
  let x_1607 : f32 = x_130.x_MainLightShadowParams.x;
  u_xlat79 = (-(x_1607) + 1.0f);
  let x_1610 : f32 = u_xlat77;
  let x_1612 : f32 = x_130.x_MainLightShadowParams.x;
  let x_1614 : f32 = u_xlat79;
  u_xlat77 = ((x_1610 * x_1612) + x_1614);
  let x_1618 : f32 = u_xlat4.z;
  u_xlatb5 = (0.0f >= x_1618);
  let x_1622 : f32 = u_xlat4.z;
  u_xlatb30 = (x_1622 >= 1.0f);
  let x_1624 : bool = u_xlatb30;
  let x_1625 : bool = u_xlatb5;
  u_xlatb5 = (x_1624 | x_1625);
  let x_1627 : bool = u_xlatb5;
  let x_1628 : f32 = u_xlat77;
  u_xlat77 = select(x_1628, 1.0f, x_1627);
  let x_1630 : vec3<f32> = u_xlat0;
  let x_1632 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat0.x = dot(x_1630, -(vec3<f32>(x_1632.x, x_1632.y, x_1632.z)));
  let x_1638 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1638, 0.0f, 1.0f);
  let x_1641 : f32 = u_xlat77;
  let x_1644 : vec4<f32> = x_53.x_MainLightColor;
  u_xlat30 = (vec3<f32>(x_1641, x_1641, x_1641) * vec3<f32>(x_1644.x, x_1644.y, x_1644.z));
  let x_1647 : vec3<f32> = u_xlat0;
  let x_1649 : vec3<f32> = u_xlat30;
  u_xlat0 = (vec3<f32>(x_1647.x, x_1647.x, x_1647.x) * x_1649);
  let x_1651 : vec3<f32> = u_xlat0;
  let x_1652 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_1651 * vec3<f32>(x_1652.x, x_1652.y, x_1652.z));
  let x_1657 : f32 = u_xlat1.w;
  u_xlatb1 = (x_1657 >= 0.40000000596046447754f);
  let x_1660 : bool = u_xlatb1;
  if (x_1660) {
    let x_1666 : f32 = u_xlat1.w;
    x_1662 = x_1666;
  } else {
    x_1662 = 0.0f;
  }
  let x_1668 : f32 = x_1662;
  u_xlat1.x = x_1668;
  let x_1672 : f32 = u_xlat1.w;
  u_xlat26.x = (x_1672 + -0.40000000596046447754f);
  let x_1678 : f32 = u_xlat1.w;
  u_xlat51 = dpdxCoarse(x_1678);
  let x_1682 : f32 = u_xlat1.w;
  u_xlat76 = dpdyCoarse(x_1682);
  let x_1684 : f32 = u_xlat76;
  let x_1686 : f32 = u_xlat51;
  u_xlat51 = (abs(x_1684) + abs(x_1686));
  let x_1689 : f32 = u_xlat51;
  u_xlat51 = max(x_1689, 0.00009999999747378752f);
  let x_1693 : f32 = u_xlat26.x;
  let x_1694 : f32 = u_xlat51;
  u_xlat26.x = (x_1693 / x_1694);
  let x_1698 : f32 = u_xlat26.x;
  u_xlat26.x = (x_1698 + 0.5f);
  let x_1702 : f32 = u_xlat26.x;
  u_xlat26.x = clamp(x_1702, 0.0f, 1.0f);
  let x_1707 : f32 = x_53.x_AlphaToMaskAvailable;
  u_xlatb51 = !((x_1707 == 0.0f));
  let x_1709 : bool = u_xlatb51;
  if (x_1709) {
    let x_1714 : f32 = u_xlat26.x;
    x_1710 = x_1714;
  } else {
    let x_1717 : f32 = u_xlat1.x;
    x_1710 = x_1717;
  }
  let x_1718 : f32 = x_1710;
  u_xlat1.x = x_1718;
  let x_1721 : f32 = u_xlat1.x;
  u_xlat26.x = (x_1721 + -0.00009999999747378752f);
  let x_1729 : f32 = u_xlat26.x;
  u_xlatb26.x = (x_1729 < 0.0f);
  let x_1733 : bool = u_xlatb26.x;
  if (((select(0i, 1i, x_1733) * -1i) != 0i)) {
    discard;
  }
  let x_1743 : f32 = vs_INTERP4.w;
  u_xlatb26.x = (0.0f < x_1743);
  let x_1751 : f32 = x_1749.unity_WorldTransformParams.w;
  u_xlatb26.z = (x_1751 >= 0.0f);
  let x_1755 : bool = u_xlatb26.x;
  u_xlat26.x = select(-1.0f, 1.0f, x_1755);
  let x_1759 : bool = u_xlatb26.z;
  u_xlat26.z = select(-1.0f, 1.0f, x_1759);
  let x_1763 : f32 = u_xlat26.z;
  let x_1765 : f32 = u_xlat26.x;
  u_xlat26.x = (x_1763 * x_1765);
  let x_1768 : vec4<f32> = vs_INTERP4;
  let x_1770 : vec3<f32> = vs_INTERP9;
  u_xlat30 = (vec3<f32>(x_1768.y, x_1768.z, x_1768.x) * vec3<f32>(x_1770.z, x_1770.x, x_1770.y));
  let x_1773 : vec3<f32> = vs_INTERP9;
  let x_1775 : vec4<f32> = vs_INTERP4;
  let x_1778 : vec3<f32> = u_xlat30;
  u_xlat30 = ((vec3<f32>(x_1773.y, x_1773.z, x_1773.x) * vec3<f32>(x_1775.z, x_1775.x, x_1775.y)) + -(x_1778));
  let x_1781 : vec3<f32> = u_xlat26;
  let x_1783 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_1781.x, x_1781.x, x_1781.x) * x_1783);
  let x_1785 : vec3<f32> = u_xlat28;
  let x_1787 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_1785.y, x_1785.y, x_1785.y) * x_1787);
  let x_1789 : vec3<f32> = u_xlat28;
  let x_1791 : vec4<f32> = vs_INTERP4;
  let x_1794 : vec3<f32> = u_xlat30;
  u_xlat30 = ((vec3<f32>(x_1789.x, x_1789.x, x_1789.x) * vec3<f32>(x_1791.x, x_1791.y, x_1791.z)) + x_1794);
  let x_1796 : vec3<f32> = u_xlat28;
  let x_1798 : vec3<f32> = vs_INTERP9;
  let x_1800 : vec3<f32> = u_xlat30;
  u_xlat28 = ((vec3<f32>(x_1796.z, x_1796.z, x_1796.z) * x_1798) + x_1800);
  let x_1802 : vec3<f32> = u_xlat28;
  let x_1803 : vec3<f32> = u_xlat28;
  u_xlat26.x = dot(x_1802, x_1803);
  let x_1807 : f32 = u_xlat26.x;
  u_xlat26.x = inverseSqrt(x_1807);
  let x_1810 : vec3<f32> = u_xlat26;
  let x_1812 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_1810.x, x_1810.x, x_1810.x) * x_1812);
  let x_1815 : f32 = x_53.unity_OrthoParams.w;
  u_xlatb26.x = (x_1815 == 0.0f);
  let x_1818 : vec3<f32> = vs_INTERP8;
  let x_1822 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  u_xlat30 = (-(x_1818) + x_1822);
  let x_1824 : vec3<f32> = u_xlat30;
  let x_1825 : vec3<f32> = u_xlat30;
  u_xlat76 = dot(x_1824, x_1825);
  let x_1827 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_1827);
  let x_1829 : f32 = u_xlat76;
  let x_1831 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_1829, x_1829, x_1829) * x_1831);
  let x_1834 : bool = u_xlatb26.x;
  if (x_1834) {
    let x_1839 : f32 = u_xlat30.x;
    x_1835 = x_1839;
  } else {
    let x_1842 : f32 = x_53.unity_MatrixV[0i].z;
    x_1835 = x_1842;
  }
  let x_1843 : f32 = x_1835;
  u_xlat6.x = x_1843;
  let x_1846 : bool = u_xlatb26.x;
  if (x_1846) {
    let x_1851 : f32 = u_xlat30.y;
    x_1847 = x_1851;
  } else {
    let x_1854 : f32 = x_53.unity_MatrixV[1i].z;
    x_1847 = x_1854;
  }
  let x_1855 : f32 = x_1847;
  u_xlat6.y = x_1855;
  let x_1858 : bool = u_xlatb26.x;
  if (x_1858) {
    let x_1863 : f32 = u_xlat30.z;
    x_1859 = x_1863;
  } else {
    let x_1866 : f32 = x_53.unity_MatrixV[2i].z;
    x_1859 = x_1866;
  }
  let x_1867 : f32 = x_1859;
  u_xlat6.z = x_1867;
  let x_1876 : vec2<f32> = vs_INTERP0;
  let x_1878 : f32 = x_53.x_GlobalMipBias.x;
  let x_1879 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_1876, x_1878);
  u_xlat7 = x_1879;
  let x_1884 : vec2<f32> = vs_INTERP0;
  let x_1886 : f32 = x_53.x_GlobalMipBias.x;
  let x_1887 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_1884, x_1886);
  u_xlat30 = vec3<f32>(x_1887.x, x_1887.y, x_1887.z);
  let x_1889 : vec4<f32> = u_xlat7;
  let x_1892 : vec3<f32> = (vec3<f32>(x_1889.x, x_1889.y, x_1889.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1893 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1892.x, x_1892.y, x_1892.z, x_1893.w);
  let x_1895 : vec3<f32> = u_xlat28;
  let x_1896 : vec4<f32> = u_xlat7;
  u_xlat26.x = dot(x_1895, vec3<f32>(x_1896.x, x_1896.y, x_1896.z));
  let x_1901 : f32 = u_xlat26.x;
  u_xlat26.x = (x_1901 + 0.5f);
  let x_1904 : vec3<f32> = u_xlat26;
  let x_1906 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_1904.x, x_1904.x, x_1904.x) * x_1906);
  let x_1909 : f32 = u_xlat7.w;
  u_xlat26.x = max(x_1909, 0.00009999999747378752f);
  let x_1912 : vec3<f32> = u_xlat30;
  let x_1913 : vec3<f32> = u_xlat26;
  u_xlat30 = (x_1912 / vec3<f32>(x_1913.x, x_1913.x, x_1913.x));
  let x_1917 : f32 = u_xlat3.x;
  u_xlat3.x = x_1917;
  let x_1920 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1920, 0.0f, 1.0f);
  let x_1924 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_1924, 1.0f);
  let x_1927 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1927 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_1932 : f32 = u_xlat3.x;
  u_xlat26.x = (-(x_1932) + 1.0f);
  let x_1937 : f32 = u_xlat26.x;
  let x_1939 : f32 = u_xlat26.x;
  u_xlat76 = (x_1937 * x_1939);
  let x_1941 : f32 = u_xlat76;
  u_xlat76 = max(x_1941, 0.0078125f);
  let x_1944 : f32 = u_xlat76;
  let x_1945 : f32 = u_xlat76;
  u_xlat77 = (x_1944 * x_1945);
  let x_1948 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1948 + 0.04000002145767211914f);
  let x_1953 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_1953, 1.0f);
  let x_1957 : f32 = u_xlat76;
  u_xlat81 = ((x_1957 * 4.0f) + 2.0f);
  let x_1961 : f32 = vs_INTERP6.w;
  u_xlat7.x = min(x_1961, 1.0f);
  let x_1964 : bool = u_xlatb75;
  if (x_1964) {
    let x_1968 : f32 = x_130.x_MainLightShadowParams.y;
    u_xlatb75 = (x_1968 == 1.0f);
    let x_1970 : bool = u_xlatb75;
    if (x_1970) {
      let x_1973 : vec4<f32> = u_xlat4;
      let x_1976 : vec4<f32> = x_130.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_1973.x, x_1973.y, x_1973.x, x_1973.y) + x_1976);
      let x_1979 : vec4<f32> = u_xlat8;
      let x_1980 : vec2<f32> = vec2<f32>(x_1979.x, x_1979.y);
      let x_1982 : f32 = u_xlat4.z;
      txVec30 = vec3<f32>(x_1980.x, x_1980.y, x_1982);
      let x_1989 : vec3<f32> = txVec30;
      let x_1991 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1989.xy, x_1989.z);
      u_xlat9.x = x_1991;
      let x_1994 : vec4<f32> = u_xlat8;
      let x_1995 : vec2<f32> = vec2<f32>(x_1994.z, x_1994.w);
      let x_1997 : f32 = u_xlat4.z;
      txVec31 = vec3<f32>(x_1995.x, x_1995.y, x_1997);
      let x_2004 : vec3<f32> = txVec31;
      let x_2006 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2004.xy, x_2004.z);
      u_xlat9.y = x_2006;
      let x_2008 : vec4<f32> = u_xlat4;
      let x_2011 : vec4<f32> = x_130.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_2008.x, x_2008.y, x_2008.x, x_2008.y) + x_2011);
      let x_2014 : vec4<f32> = u_xlat8;
      let x_2015 : vec2<f32> = vec2<f32>(x_2014.x, x_2014.y);
      let x_2017 : f32 = u_xlat4.z;
      txVec32 = vec3<f32>(x_2015.x, x_2015.y, x_2017);
      let x_2024 : vec3<f32> = txVec32;
      let x_2026 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2024.xy, x_2024.z);
      u_xlat9.z = x_2026;
      let x_2029 : vec4<f32> = u_xlat8;
      let x_2030 : vec2<f32> = vec2<f32>(x_2029.z, x_2029.w);
      let x_2032 : f32 = u_xlat4.z;
      txVec33 = vec3<f32>(x_2030.x, x_2030.y, x_2032);
      let x_2039 : vec3<f32> = txVec33;
      let x_2041 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2039.xy, x_2039.z);
      u_xlat9.w = x_2041;
      let x_2043 : vec4<f32> = u_xlat9;
      u_xlat75 = dot(x_2043, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_2048 : f32 = x_130.x_MainLightShadowParams.y;
      u_xlatb32 = (x_2048 == 2.0f);
      let x_2050 : bool = u_xlatb32;
      if (x_2050) {
        let x_2053 : vec4<f32> = u_xlat4;
        let x_2056 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2059 : vec2<f32> = ((vec2<f32>(x_2053.x, x_2053.y) * vec2<f32>(x_2056.z, x_2056.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2060 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_2059.x, x_2059.y, x_2060.z);
        let x_2062 : vec3<f32> = u_xlat32;
        let x_2064 : vec2<f32> = floor(vec2<f32>(x_2062.x, x_2062.y));
        let x_2065 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_2064.x, x_2064.y, x_2065.z);
        let x_2067 : vec4<f32> = u_xlat4;
        let x_2070 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2073 : vec3<f32> = u_xlat32;
        let x_2076 : vec2<f32> = ((vec2<f32>(x_2067.x, x_2067.y) * vec2<f32>(x_2070.z, x_2070.w)) + -(vec2<f32>(x_2073.x, x_2073.y)));
        let x_2077 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2076.x, x_2076.y, x_2077.z, x_2077.w);
        let x_2079 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2079.x, x_2079.x, x_2079.y, x_2079.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2082 : vec4<f32> = u_xlat9;
        let x_2084 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2082.x, x_2082.x, x_2082.z, x_2082.z) * vec4<f32>(x_2084.x, x_2084.x, x_2084.z, x_2084.z));
        let x_2087 : vec4<f32> = u_xlat10;
        u_xlat58 = (vec2<f32>(x_2087.y, x_2087.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_2090 : vec4<f32> = u_xlat10;
        let x_2093 : vec4<f32> = u_xlat8;
        let x_2096 : vec2<f32> = ((vec2<f32>(x_2090.x, x_2090.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2093.x, x_2093.y)));
        let x_2097 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2096.x, x_2097.y, x_2096.y, x_2097.w);
        let x_2099 : vec4<f32> = u_xlat8;
        let x_2102 : vec2<f32> = (-(vec2<f32>(x_2099.x, x_2099.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2103 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2102.x, x_2102.y, x_2103.z, x_2103.w);
        let x_2106 : vec4<f32> = u_xlat8;
        u_xlat60 = min(vec2<f32>(x_2106.x, x_2106.y), vec2<f32>(0.0f, 0.0f));
        let x_2109 : vec2<f32> = u_xlat60;
        let x_2111 : vec2<f32> = u_xlat60;
        let x_2113 : vec4<f32> = u_xlat10;
        u_xlat60 = ((-(x_2109) * x_2111) + vec2<f32>(x_2113.x, x_2113.y));
        let x_2116 : vec4<f32> = u_xlat8;
        let x_2118 : vec2<f32> = max(vec2<f32>(x_2116.x, x_2116.y), vec2<f32>(0.0f, 0.0f));
        let x_2119 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2118.x, x_2118.y, x_2119.z, x_2119.w);
        let x_2121 : vec4<f32> = u_xlat8;
        let x_2124 : vec4<f32> = u_xlat8;
        let x_2127 : vec4<f32> = u_xlat9;
        let x_2129 : vec2<f32> = ((-(vec2<f32>(x_2121.x, x_2121.y)) * vec2<f32>(x_2124.x, x_2124.y)) + vec2<f32>(x_2127.y, x_2127.w));
        let x_2130 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2129.x, x_2129.y, x_2130.z, x_2130.w);
        let x_2132 : vec2<f32> = u_xlat60;
        u_xlat60 = (x_2132 + vec2<f32>(1.0f, 1.0f));
        let x_2134 : vec4<f32> = u_xlat8;
        let x_2136 : vec2<f32> = (vec2<f32>(x_2134.x, x_2134.y) + vec2<f32>(1.0f, 1.0f));
        let x_2137 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2136.x, x_2136.y, x_2137.z, x_2137.w);
        let x_2139 : vec4<f32> = u_xlat9;
        let x_2141 : vec2<f32> = (vec2<f32>(x_2139.x, x_2139.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2142 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2141.x, x_2141.y, x_2142.z, x_2142.w);
        let x_2144 : vec4<f32> = u_xlat10;
        let x_2146 : vec2<f32> = (vec2<f32>(x_2144.x, x_2144.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2147 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2146.x, x_2146.y, x_2147.z, x_2147.w);
        let x_2149 : vec2<f32> = u_xlat60;
        let x_2150 : vec2<f32> = (x_2149 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2151 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2150.x, x_2150.y, x_2151.z, x_2151.w);
        let x_2153 : vec4<f32> = u_xlat8;
        let x_2155 : vec2<f32> = (vec2<f32>(x_2153.x, x_2153.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2156 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2155.x, x_2155.y, x_2156.z, x_2156.w);
        let x_2158 : vec4<f32> = u_xlat9;
        let x_2160 : vec2<f32> = (vec2<f32>(x_2158.y, x_2158.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2161 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2160.x, x_2160.y, x_2161.z, x_2161.w);
        let x_2164 : f32 = u_xlat10.x;
        u_xlat11.z = x_2164;
        let x_2167 : f32 = u_xlat8.x;
        u_xlat11.w = x_2167;
        let x_2170 : f32 = u_xlat13.x;
        u_xlat12.z = x_2170;
        let x_2173 : f32 = u_xlat58.x;
        u_xlat12.w = x_2173;
        let x_2175 : vec4<f32> = u_xlat11;
        let x_2177 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_2175.z, x_2175.w, x_2175.x, x_2175.z) + vec4<f32>(x_2177.z, x_2177.w, x_2177.x, x_2177.z));
        let x_2181 : f32 = u_xlat11.y;
        u_xlat10.z = x_2181;
        let x_2184 : f32 = u_xlat8.y;
        u_xlat10.w = x_2184;
        let x_2187 : f32 = u_xlat12.y;
        u_xlat13.z = x_2187;
        let x_2190 : f32 = u_xlat58.y;
        u_xlat13.w = x_2190;
        let x_2192 : vec4<f32> = u_xlat10;
        let x_2194 : vec4<f32> = u_xlat13;
        let x_2196 : vec3<f32> = (vec3<f32>(x_2192.z, x_2192.y, x_2192.w) + vec3<f32>(x_2194.z, x_2194.y, x_2194.w));
        let x_2197 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2196.x, x_2196.y, x_2196.z, x_2197.w);
        let x_2199 : vec4<f32> = u_xlat12;
        let x_2201 : vec4<f32> = u_xlat9;
        let x_2203 : vec3<f32> = (vec3<f32>(x_2199.x, x_2199.z, x_2199.w) / vec3<f32>(x_2201.z, x_2201.w, x_2201.y));
        let x_2204 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2203.x, x_2203.y, x_2203.z, x_2204.w);
        let x_2206 : vec4<f32> = u_xlat10;
        let x_2208 : vec3<f32> = (vec3<f32>(x_2206.x, x_2206.y, x_2206.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2209 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2208.x, x_2208.y, x_2208.z, x_2209.w);
        let x_2211 : vec4<f32> = u_xlat13;
        let x_2213 : vec4<f32> = u_xlat8;
        let x_2215 : vec3<f32> = (vec3<f32>(x_2211.z, x_2211.y, x_2211.w) / vec3<f32>(x_2213.x, x_2213.y, x_2213.z));
        let x_2216 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2215.x, x_2215.y, x_2215.z, x_2216.w);
        let x_2218 : vec4<f32> = u_xlat11;
        let x_2220 : vec3<f32> = (vec3<f32>(x_2218.x, x_2218.y, x_2218.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2221 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2220.x, x_2220.y, x_2220.z, x_2221.w);
        let x_2223 : vec4<f32> = u_xlat10;
        let x_2226 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2228 : vec3<f32> = (vec3<f32>(x_2223.y, x_2223.x, x_2223.z) * vec3<f32>(x_2226.x, x_2226.x, x_2226.x));
        let x_2229 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2228.x, x_2228.y, x_2228.z, x_2229.w);
        let x_2231 : vec4<f32> = u_xlat11;
        let x_2234 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2236 : vec3<f32> = (vec3<f32>(x_2231.x, x_2231.y, x_2231.z) * vec3<f32>(x_2234.y, x_2234.y, x_2234.y));
        let x_2237 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2236.x, x_2236.y, x_2236.z, x_2237.w);
        let x_2240 : f32 = u_xlat11.x;
        u_xlat10.w = x_2240;
        let x_2242 : vec3<f32> = u_xlat32;
        let x_2245 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2248 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_2242.x, x_2242.y, x_2242.x, x_2242.y) * vec4<f32>(x_2245.x, x_2245.y, x_2245.x, x_2245.y)) + vec4<f32>(x_2248.y, x_2248.w, x_2248.x, x_2248.w));
        let x_2251 : vec3<f32> = u_xlat32;
        let x_2254 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2257 : vec4<f32> = u_xlat10;
        let x_2259 : vec2<f32> = ((vec2<f32>(x_2251.x, x_2251.y) * vec2<f32>(x_2254.x, x_2254.y)) + vec2<f32>(x_2257.z, x_2257.w));
        let x_2260 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2259.x, x_2259.y, x_2260.z, x_2260.w);
        let x_2263 : f32 = u_xlat10.y;
        u_xlat11.w = x_2263;
        let x_2265 : vec4<f32> = u_xlat11;
        let x_2266 : vec2<f32> = vec2<f32>(x_2265.y, x_2265.z);
        let x_2267 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2267.x, x_2266.x, x_2267.z, x_2266.y);
        let x_2269 : vec3<f32> = u_xlat32;
        let x_2272 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2275 : vec4<f32> = u_xlat10;
        u_xlat14 = ((vec4<f32>(x_2269.x, x_2269.y, x_2269.x, x_2269.y) * vec4<f32>(x_2272.x, x_2272.y, x_2272.x, x_2272.y)) + vec4<f32>(x_2275.x, x_2275.y, x_2275.z, x_2275.y));
        let x_2278 : vec3<f32> = u_xlat32;
        let x_2281 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2284 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_2278.x, x_2278.y, x_2278.x, x_2278.y) * vec4<f32>(x_2281.x, x_2281.y, x_2281.x, x_2281.y)) + vec4<f32>(x_2284.w, x_2284.y, x_2284.w, x_2284.z));
        let x_2287 : vec3<f32> = u_xlat32;
        let x_2290 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2293 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2287.x, x_2287.y, x_2287.x, x_2287.y) * vec4<f32>(x_2290.x, x_2290.y, x_2290.x, x_2290.y)) + vec4<f32>(x_2293.x, x_2293.w, x_2293.z, x_2293.w));
        let x_2296 : vec4<f32> = u_xlat8;
        let x_2298 : vec4<f32> = u_xlat9;
        u_xlat15 = (vec4<f32>(x_2296.x, x_2296.x, x_2296.x, x_2296.y) * vec4<f32>(x_2298.z, x_2298.w, x_2298.y, x_2298.z));
        let x_2301 : vec4<f32> = u_xlat8;
        let x_2303 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_2301.y, x_2301.y, x_2301.z, x_2301.z) * x_2303);
        let x_2306 : f32 = u_xlat8.z;
        let x_2308 : f32 = u_xlat9.y;
        u_xlat32.x = (x_2306 * x_2308);
        let x_2312 : vec4<f32> = u_xlat12;
        let x_2313 : vec2<f32> = vec2<f32>(x_2312.x, x_2312.y);
        let x_2315 : f32 = u_xlat4.z;
        txVec34 = vec3<f32>(x_2313.x, x_2313.y, x_2315);
        let x_2322 : vec3<f32> = txVec34;
        let x_2324 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2322.xy, x_2322.z);
        u_xlat57.x = x_2324;
        let x_2327 : vec4<f32> = u_xlat12;
        let x_2328 : vec2<f32> = vec2<f32>(x_2327.z, x_2327.w);
        let x_2330 : f32 = u_xlat4.z;
        txVec35 = vec3<f32>(x_2328.x, x_2328.y, x_2330);
        let x_2338 : vec3<f32> = txVec35;
        let x_2340 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2338.xy, x_2338.z);
        u_xlat82 = x_2340;
        let x_2341 : f32 = u_xlat82;
        let x_2343 : f32 = u_xlat15.y;
        u_xlat82 = (x_2341 * x_2343);
        let x_2346 : f32 = u_xlat15.x;
        let x_2348 : f32 = u_xlat57.x;
        let x_2350 : f32 = u_xlat82;
        u_xlat57.x = ((x_2346 * x_2348) + x_2350);
        let x_2354 : vec4<f32> = u_xlat13;
        let x_2355 : vec2<f32> = vec2<f32>(x_2354.x, x_2354.y);
        let x_2357 : f32 = u_xlat4.z;
        txVec36 = vec3<f32>(x_2355.x, x_2355.y, x_2357);
        let x_2364 : vec3<f32> = txVec36;
        let x_2366 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2364.xy, x_2364.z);
        u_xlat82 = x_2366;
        let x_2368 : f32 = u_xlat15.z;
        let x_2369 : f32 = u_xlat82;
        let x_2372 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2368 * x_2369) + x_2372);
        let x_2376 : vec4<f32> = u_xlat11;
        let x_2377 : vec2<f32> = vec2<f32>(x_2376.x, x_2376.y);
        let x_2379 : f32 = u_xlat4.z;
        txVec37 = vec3<f32>(x_2377.x, x_2377.y, x_2379);
        let x_2386 : vec3<f32> = txVec37;
        let x_2388 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2386.xy, x_2386.z);
        u_xlat82 = x_2388;
        let x_2390 : f32 = u_xlat15.w;
        let x_2391 : f32 = u_xlat82;
        let x_2394 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2390 * x_2391) + x_2394);
        let x_2398 : vec4<f32> = u_xlat14;
        let x_2399 : vec2<f32> = vec2<f32>(x_2398.x, x_2398.y);
        let x_2401 : f32 = u_xlat4.z;
        txVec38 = vec3<f32>(x_2399.x, x_2399.y, x_2401);
        let x_2408 : vec3<f32> = txVec38;
        let x_2410 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2408.xy, x_2408.z);
        u_xlat82 = x_2410;
        let x_2412 : f32 = u_xlat16.x;
        let x_2413 : f32 = u_xlat82;
        let x_2416 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2412 * x_2413) + x_2416);
        let x_2420 : vec4<f32> = u_xlat14;
        let x_2421 : vec2<f32> = vec2<f32>(x_2420.z, x_2420.w);
        let x_2423 : f32 = u_xlat4.z;
        txVec39 = vec3<f32>(x_2421.x, x_2421.y, x_2423);
        let x_2430 : vec3<f32> = txVec39;
        let x_2432 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2430.xy, x_2430.z);
        u_xlat82 = x_2432;
        let x_2434 : f32 = u_xlat16.y;
        let x_2435 : f32 = u_xlat82;
        let x_2438 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2434 * x_2435) + x_2438);
        let x_2442 : vec4<f32> = u_xlat11;
        let x_2443 : vec2<f32> = vec2<f32>(x_2442.z, x_2442.w);
        let x_2445 : f32 = u_xlat4.z;
        txVec40 = vec3<f32>(x_2443.x, x_2443.y, x_2445);
        let x_2452 : vec3<f32> = txVec40;
        let x_2454 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2452.xy, x_2452.z);
        u_xlat82 = x_2454;
        let x_2456 : f32 = u_xlat16.z;
        let x_2457 : f32 = u_xlat82;
        let x_2460 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2456 * x_2457) + x_2460);
        let x_2464 : vec4<f32> = u_xlat10;
        let x_2465 : vec2<f32> = vec2<f32>(x_2464.x, x_2464.y);
        let x_2467 : f32 = u_xlat4.z;
        txVec41 = vec3<f32>(x_2465.x, x_2465.y, x_2467);
        let x_2474 : vec3<f32> = txVec41;
        let x_2476 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2474.xy, x_2474.z);
        u_xlat82 = x_2476;
        let x_2478 : f32 = u_xlat16.w;
        let x_2479 : f32 = u_xlat82;
        let x_2482 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2478 * x_2479) + x_2482);
        let x_2486 : vec4<f32> = u_xlat10;
        let x_2487 : vec2<f32> = vec2<f32>(x_2486.z, x_2486.w);
        let x_2489 : f32 = u_xlat4.z;
        txVec42 = vec3<f32>(x_2487.x, x_2487.y, x_2489);
        let x_2496 : vec3<f32> = txVec42;
        let x_2498 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2496.xy, x_2496.z);
        u_xlat82 = x_2498;
        let x_2500 : f32 = u_xlat32.x;
        let x_2501 : f32 = u_xlat82;
        let x_2504 : f32 = u_xlat57.x;
        u_xlat75 = ((x_2500 * x_2501) + x_2504);
      } else {
        let x_2507 : vec4<f32> = u_xlat4;
        let x_2510 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2513 : vec2<f32> = ((vec2<f32>(x_2507.x, x_2507.y) * vec2<f32>(x_2510.z, x_2510.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2514 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_2513.x, x_2513.y, x_2514.z);
        let x_2516 : vec3<f32> = u_xlat32;
        let x_2518 : vec2<f32> = floor(vec2<f32>(x_2516.x, x_2516.y));
        let x_2519 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_2518.x, x_2518.y, x_2519.z);
        let x_2521 : vec4<f32> = u_xlat4;
        let x_2524 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2527 : vec3<f32> = u_xlat32;
        let x_2530 : vec2<f32> = ((vec2<f32>(x_2521.x, x_2521.y) * vec2<f32>(x_2524.z, x_2524.w)) + -(vec2<f32>(x_2527.x, x_2527.y)));
        let x_2531 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2530.x, x_2530.y, x_2531.z, x_2531.w);
        let x_2533 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2533.x, x_2533.x, x_2533.y, x_2533.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2536 : vec4<f32> = u_xlat9;
        let x_2538 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2536.x, x_2536.x, x_2536.z, x_2536.z) * vec4<f32>(x_2538.x, x_2538.x, x_2538.z, x_2538.z));
        let x_2541 : vec4<f32> = u_xlat10;
        let x_2543 : vec2<f32> = (vec2<f32>(x_2541.y, x_2541.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2544 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2544.x, x_2543.x, x_2544.z, x_2543.y);
        let x_2546 : vec4<f32> = u_xlat10;
        let x_2549 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_2546.x, x_2546.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2549.x, x_2549.y)));
        let x_2553 : vec4<f32> = u_xlat8;
        let x_2556 : vec2<f32> = (-(vec2<f32>(x_2553.x, x_2553.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2557 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2556.x, x_2557.y, x_2556.y, x_2557.w);
        let x_2559 : vec4<f32> = u_xlat8;
        let x_2561 : vec2<f32> = min(vec2<f32>(x_2559.x, x_2559.y), vec2<f32>(0.0f, 0.0f));
        let x_2562 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2561.x, x_2561.y, x_2562.z, x_2562.w);
        let x_2564 : vec4<f32> = u_xlat10;
        let x_2567 : vec4<f32> = u_xlat10;
        let x_2570 : vec4<f32> = u_xlat9;
        let x_2572 : vec2<f32> = ((-(vec2<f32>(x_2564.x, x_2564.y)) * vec2<f32>(x_2567.x, x_2567.y)) + vec2<f32>(x_2570.x, x_2570.z));
        let x_2573 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2572.x, x_2573.y, x_2572.y, x_2573.w);
        let x_2575 : vec4<f32> = u_xlat8;
        let x_2577 : vec2<f32> = max(vec2<f32>(x_2575.x, x_2575.y), vec2<f32>(0.0f, 0.0f));
        let x_2578 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2577.x, x_2577.y, x_2578.z, x_2578.w);
        let x_2580 : vec4<f32> = u_xlat10;
        let x_2583 : vec4<f32> = u_xlat10;
        let x_2586 : vec4<f32> = u_xlat9;
        let x_2588 : vec2<f32> = ((-(vec2<f32>(x_2580.x, x_2580.y)) * vec2<f32>(x_2583.x, x_2583.y)) + vec2<f32>(x_2586.y, x_2586.w));
        let x_2589 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2589.x, x_2588.x, x_2589.z, x_2588.y);
        let x_2591 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2591 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2594 : f32 = u_xlat9.y;
        u_xlat10.z = (x_2594 * 0.08163200318813323975f);
        let x_2597 : vec2<f32> = u_xlat58;
        let x_2599 : vec2<f32> = (vec2<f32>(x_2597.y, x_2597.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2600 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2599.x, x_2599.y, x_2600.z, x_2600.w);
        let x_2602 : vec4<f32> = u_xlat9;
        u_xlat58 = (vec2<f32>(x_2602.x, x_2602.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2606 : f32 = u_xlat9.w;
        u_xlat12.z = (x_2606 * 0.08163200318813323975f);
        let x_2610 : f32 = u_xlat12.y;
        u_xlat10.x = x_2610;
        let x_2612 : vec4<f32> = u_xlat8;
        let x_2615 : vec2<f32> = ((vec2<f32>(x_2612.x, x_2612.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2616 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2616.x, x_2615.x, x_2616.z, x_2615.y);
        let x_2618 : vec4<f32> = u_xlat8;
        let x_2621 : vec2<f32> = ((vec2<f32>(x_2618.x, x_2618.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2622 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2621.x, x_2622.y, x_2621.y, x_2622.w);
        let x_2625 : f32 = u_xlat58.x;
        u_xlat9.y = x_2625;
        let x_2628 : f32 = u_xlat11.y;
        u_xlat9.w = x_2628;
        let x_2630 : vec4<f32> = u_xlat9;
        let x_2631 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2630 + x_2631);
        let x_2633 : vec4<f32> = u_xlat8;
        let x_2636 : vec2<f32> = ((vec2<f32>(x_2633.y, x_2633.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2637 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2637.x, x_2636.x, x_2637.z, x_2636.y);
        let x_2639 : vec4<f32> = u_xlat8;
        let x_2642 : vec2<f32> = ((vec2<f32>(x_2639.y, x_2639.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2643 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2642.x, x_2643.y, x_2642.y, x_2643.w);
        let x_2646 : f32 = u_xlat58.y;
        u_xlat11.y = x_2646;
        let x_2648 : vec4<f32> = u_xlat11;
        let x_2649 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_2648 + x_2649);
        let x_2651 : vec4<f32> = u_xlat9;
        let x_2652 : vec4<f32> = u_xlat10;
        u_xlat9 = (x_2651 / x_2652);
        let x_2654 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2654 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2656 : vec4<f32> = u_xlat11;
        let x_2657 : vec4<f32> = u_xlat8;
        u_xlat11 = (x_2656 / x_2657);
        let x_2659 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_2659 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2661 : vec4<f32> = u_xlat9;
        let x_2664 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_2661.w, x_2661.x, x_2661.y, x_2661.z) * vec4<f32>(x_2664.x, x_2664.x, x_2664.x, x_2664.x));
        let x_2667 : vec4<f32> = u_xlat11;
        let x_2670 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_2667.x, x_2667.w, x_2667.y, x_2667.z) * vec4<f32>(x_2670.y, x_2670.y, x_2670.y, x_2670.y));
        let x_2673 : vec4<f32> = u_xlat9;
        let x_2674 : vec3<f32> = vec3<f32>(x_2673.y, x_2673.z, x_2673.w);
        let x_2675 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2674.x, x_2675.y, x_2674.y, x_2674.z);
        let x_2678 : f32 = u_xlat11.x;
        u_xlat12.y = x_2678;
        let x_2680 : vec3<f32> = u_xlat32;
        let x_2683 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2686 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_2680.x, x_2680.y, x_2680.x, x_2680.y) * vec4<f32>(x_2683.x, x_2683.y, x_2683.x, x_2683.y)) + vec4<f32>(x_2686.x, x_2686.y, x_2686.z, x_2686.y));
        let x_2689 : vec3<f32> = u_xlat32;
        let x_2692 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2695 : vec4<f32> = u_xlat12;
        let x_2697 : vec2<f32> = ((vec2<f32>(x_2689.x, x_2689.y) * vec2<f32>(x_2692.x, x_2692.y)) + vec2<f32>(x_2695.w, x_2695.y));
        let x_2698 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_2697.x, x_2697.y, x_2698.z, x_2698.w);
        let x_2701 : f32 = u_xlat12.y;
        u_xlat9.y = x_2701;
        let x_2704 : f32 = u_xlat11.z;
        u_xlat12.y = x_2704;
        let x_2706 : vec3<f32> = u_xlat32;
        let x_2709 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2712 : vec4<f32> = u_xlat12;
        u_xlat15 = ((vec4<f32>(x_2706.x, x_2706.y, x_2706.x, x_2706.y) * vec4<f32>(x_2709.x, x_2709.y, x_2709.x, x_2709.y)) + vec4<f32>(x_2712.x, x_2712.y, x_2712.z, x_2712.y));
        let x_2716 : vec3<f32> = u_xlat32;
        let x_2719 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2722 : vec4<f32> = u_xlat12;
        u_xlat64 = ((vec2<f32>(x_2716.x, x_2716.y) * vec2<f32>(x_2719.x, x_2719.y)) + vec2<f32>(x_2722.w, x_2722.y));
        let x_2726 : f32 = u_xlat12.y;
        u_xlat9.z = x_2726;
        let x_2728 : vec3<f32> = u_xlat32;
        let x_2731 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2734 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_2728.x, x_2728.y, x_2728.x, x_2728.y) * vec4<f32>(x_2731.x, x_2731.y, x_2731.x, x_2731.y)) + vec4<f32>(x_2734.x, x_2734.y, x_2734.x, x_2734.z));
        let x_2738 : f32 = u_xlat11.w;
        u_xlat12.y = x_2738;
        let x_2740 : vec3<f32> = u_xlat32;
        let x_2743 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2746 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_2740.x, x_2740.y, x_2740.x, x_2740.y) * vec4<f32>(x_2743.x, x_2743.y, x_2743.x, x_2743.y)) + vec4<f32>(x_2746.x, x_2746.y, x_2746.z, x_2746.y));
        let x_2750 : vec3<f32> = u_xlat32;
        let x_2753 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2756 : vec4<f32> = u_xlat12;
        u_xlat34 = ((vec2<f32>(x_2750.x, x_2750.y) * vec2<f32>(x_2753.x, x_2753.y)) + vec2<f32>(x_2756.w, x_2756.y));
        let x_2760 : f32 = u_xlat12.y;
        u_xlat9.w = x_2760;
        let x_2762 : vec3<f32> = u_xlat32;
        let x_2765 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2768 : vec4<f32> = u_xlat9;
        let x_2770 : vec2<f32> = ((vec2<f32>(x_2762.x, x_2762.y) * vec2<f32>(x_2765.x, x_2765.y)) + vec2<f32>(x_2768.x, x_2768.w));
        let x_2771 : vec4<f32> = u_xlat18;
        u_xlat18 = vec4<f32>(x_2770.x, x_2770.y, x_2771.z, x_2771.w);
        let x_2773 : vec4<f32> = u_xlat12;
        let x_2774 : vec3<f32> = vec3<f32>(x_2773.x, x_2773.z, x_2773.w);
        let x_2775 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2774.x, x_2775.y, x_2774.y, x_2774.z);
        let x_2777 : vec3<f32> = u_xlat32;
        let x_2780 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2783 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2777.x, x_2777.y, x_2777.x, x_2777.y) * vec4<f32>(x_2780.x, x_2780.y, x_2780.x, x_2780.y)) + vec4<f32>(x_2783.x, x_2783.y, x_2783.z, x_2783.y));
        let x_2787 : vec3<f32> = u_xlat32;
        let x_2790 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2793 : vec4<f32> = u_xlat11;
        u_xlat61 = ((vec2<f32>(x_2787.x, x_2787.y) * vec2<f32>(x_2790.x, x_2790.y)) + vec2<f32>(x_2793.w, x_2793.y));
        let x_2797 : f32 = u_xlat9.x;
        u_xlat11.x = x_2797;
        let x_2799 : vec3<f32> = u_xlat32;
        let x_2802 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2805 : vec4<f32> = u_xlat11;
        let x_2807 : vec2<f32> = ((vec2<f32>(x_2799.x, x_2799.y) * vec2<f32>(x_2802.x, x_2802.y)) + vec2<f32>(x_2805.x, x_2805.y));
        let x_2808 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_2807.x, x_2807.y, x_2808.z);
        let x_2811 : vec4<f32> = u_xlat8;
        let x_2813 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_2811.x, x_2811.x, x_2811.x, x_2811.x) * x_2813);
        let x_2816 : vec4<f32> = u_xlat8;
        let x_2818 : vec4<f32> = u_xlat10;
        u_xlat20 = (vec4<f32>(x_2816.y, x_2816.y, x_2816.y, x_2816.y) * x_2818);
        let x_2821 : vec4<f32> = u_xlat8;
        let x_2823 : vec4<f32> = u_xlat10;
        u_xlat21 = (vec4<f32>(x_2821.z, x_2821.z, x_2821.z, x_2821.z) * x_2823);
        let x_2825 : vec4<f32> = u_xlat8;
        let x_2827 : vec4<f32> = u_xlat10;
        u_xlat8 = (vec4<f32>(x_2825.w, x_2825.w, x_2825.w, x_2825.w) * x_2827);
        let x_2830 : vec4<f32> = u_xlat13;
        let x_2831 : vec2<f32> = vec2<f32>(x_2830.x, x_2830.y);
        let x_2833 : f32 = u_xlat4.z;
        txVec43 = vec3<f32>(x_2831.x, x_2831.y, x_2833);
        let x_2840 : vec3<f32> = txVec43;
        let x_2842 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2840.xy, x_2840.z);
        u_xlat82 = x_2842;
        let x_2844 : vec4<f32> = u_xlat13;
        let x_2845 : vec2<f32> = vec2<f32>(x_2844.z, x_2844.w);
        let x_2847 : f32 = u_xlat4.z;
        txVec44 = vec3<f32>(x_2845.x, x_2845.y, x_2847);
        let x_2854 : vec3<f32> = txVec44;
        let x_2856 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2854.xy, x_2854.z);
        u_xlat9.x = x_2856;
        let x_2859 : f32 = u_xlat9.x;
        let x_2861 : f32 = u_xlat19.y;
        u_xlat9.x = (x_2859 * x_2861);
        let x_2865 : f32 = u_xlat19.x;
        let x_2866 : f32 = u_xlat82;
        let x_2869 : f32 = u_xlat9.x;
        u_xlat82 = ((x_2865 * x_2866) + x_2869);
        let x_2872 : vec4<f32> = u_xlat14;
        let x_2873 : vec2<f32> = vec2<f32>(x_2872.x, x_2872.y);
        let x_2875 : f32 = u_xlat4.z;
        txVec45 = vec3<f32>(x_2873.x, x_2873.y, x_2875);
        let x_2882 : vec3<f32> = txVec45;
        let x_2884 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2882.xy, x_2882.z);
        u_xlat9.x = x_2884;
        let x_2887 : f32 = u_xlat19.z;
        let x_2889 : f32 = u_xlat9.x;
        let x_2891 : f32 = u_xlat82;
        u_xlat82 = ((x_2887 * x_2889) + x_2891);
        let x_2894 : vec4<f32> = u_xlat16;
        let x_2895 : vec2<f32> = vec2<f32>(x_2894.x, x_2894.y);
        let x_2897 : f32 = u_xlat4.z;
        txVec46 = vec3<f32>(x_2895.x, x_2895.y, x_2897);
        let x_2904 : vec3<f32> = txVec46;
        let x_2906 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2904.xy, x_2904.z);
        u_xlat9.x = x_2906;
        let x_2909 : f32 = u_xlat19.w;
        let x_2911 : f32 = u_xlat9.x;
        let x_2913 : f32 = u_xlat82;
        u_xlat82 = ((x_2909 * x_2911) + x_2913);
        let x_2916 : vec4<f32> = u_xlat15;
        let x_2917 : vec2<f32> = vec2<f32>(x_2916.x, x_2916.y);
        let x_2919 : f32 = u_xlat4.z;
        txVec47 = vec3<f32>(x_2917.x, x_2917.y, x_2919);
        let x_2926 : vec3<f32> = txVec47;
        let x_2928 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2926.xy, x_2926.z);
        u_xlat9.x = x_2928;
        let x_2931 : f32 = u_xlat20.x;
        let x_2933 : f32 = u_xlat9.x;
        let x_2935 : f32 = u_xlat82;
        u_xlat82 = ((x_2931 * x_2933) + x_2935);
        let x_2938 : vec4<f32> = u_xlat15;
        let x_2939 : vec2<f32> = vec2<f32>(x_2938.z, x_2938.w);
        let x_2941 : f32 = u_xlat4.z;
        txVec48 = vec3<f32>(x_2939.x, x_2939.y, x_2941);
        let x_2948 : vec3<f32> = txVec48;
        let x_2950 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2948.xy, x_2948.z);
        u_xlat9.x = x_2950;
        let x_2953 : f32 = u_xlat20.y;
        let x_2955 : f32 = u_xlat9.x;
        let x_2957 : f32 = u_xlat82;
        u_xlat82 = ((x_2953 * x_2955) + x_2957);
        let x_2960 : vec2<f32> = u_xlat64;
        let x_2962 : f32 = u_xlat4.z;
        txVec49 = vec3<f32>(x_2960.x, x_2960.y, x_2962);
        let x_2969 : vec3<f32> = txVec49;
        let x_2971 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2969.xy, x_2969.z);
        u_xlat9.x = x_2971;
        let x_2974 : f32 = u_xlat20.z;
        let x_2976 : f32 = u_xlat9.x;
        let x_2978 : f32 = u_xlat82;
        u_xlat82 = ((x_2974 * x_2976) + x_2978);
        let x_2981 : vec4<f32> = u_xlat16;
        let x_2982 : vec2<f32> = vec2<f32>(x_2981.z, x_2981.w);
        let x_2984 : f32 = u_xlat4.z;
        txVec50 = vec3<f32>(x_2982.x, x_2982.y, x_2984);
        let x_2991 : vec3<f32> = txVec50;
        let x_2993 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2991.xy, x_2991.z);
        u_xlat9.x = x_2993;
        let x_2996 : f32 = u_xlat20.w;
        let x_2998 : f32 = u_xlat9.x;
        let x_3000 : f32 = u_xlat82;
        u_xlat82 = ((x_2996 * x_2998) + x_3000);
        let x_3003 : vec4<f32> = u_xlat17;
        let x_3004 : vec2<f32> = vec2<f32>(x_3003.x, x_3003.y);
        let x_3006 : f32 = u_xlat4.z;
        txVec51 = vec3<f32>(x_3004.x, x_3004.y, x_3006);
        let x_3013 : vec3<f32> = txVec51;
        let x_3015 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3013.xy, x_3013.z);
        u_xlat9.x = x_3015;
        let x_3018 : f32 = u_xlat21.x;
        let x_3020 : f32 = u_xlat9.x;
        let x_3022 : f32 = u_xlat82;
        u_xlat82 = ((x_3018 * x_3020) + x_3022);
        let x_3025 : vec4<f32> = u_xlat17;
        let x_3026 : vec2<f32> = vec2<f32>(x_3025.z, x_3025.w);
        let x_3028 : f32 = u_xlat4.z;
        txVec52 = vec3<f32>(x_3026.x, x_3026.y, x_3028);
        let x_3035 : vec3<f32> = txVec52;
        let x_3037 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3035.xy, x_3035.z);
        u_xlat9.x = x_3037;
        let x_3040 : f32 = u_xlat21.y;
        let x_3042 : f32 = u_xlat9.x;
        let x_3044 : f32 = u_xlat82;
        u_xlat82 = ((x_3040 * x_3042) + x_3044);
        let x_3047 : vec2<f32> = u_xlat34;
        let x_3049 : f32 = u_xlat4.z;
        txVec53 = vec3<f32>(x_3047.x, x_3047.y, x_3049);
        let x_3056 : vec3<f32> = txVec53;
        let x_3058 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3056.xy, x_3056.z);
        u_xlat9.x = x_3058;
        let x_3061 : f32 = u_xlat21.z;
        let x_3063 : f32 = u_xlat9.x;
        let x_3065 : f32 = u_xlat82;
        u_xlat82 = ((x_3061 * x_3063) + x_3065);
        let x_3068 : vec4<f32> = u_xlat18;
        let x_3069 : vec2<f32> = vec2<f32>(x_3068.x, x_3068.y);
        let x_3071 : f32 = u_xlat4.z;
        txVec54 = vec3<f32>(x_3069.x, x_3069.y, x_3071);
        let x_3078 : vec3<f32> = txVec54;
        let x_3080 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3078.xy, x_3078.z);
        u_xlat9.x = x_3080;
        let x_3083 : f32 = u_xlat21.w;
        let x_3085 : f32 = u_xlat9.x;
        let x_3087 : f32 = u_xlat82;
        u_xlat82 = ((x_3083 * x_3085) + x_3087);
        let x_3090 : vec4<f32> = u_xlat12;
        let x_3091 : vec2<f32> = vec2<f32>(x_3090.x, x_3090.y);
        let x_3093 : f32 = u_xlat4.z;
        txVec55 = vec3<f32>(x_3091.x, x_3091.y, x_3093);
        let x_3100 : vec3<f32> = txVec55;
        let x_3102 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3100.xy, x_3100.z);
        u_xlat9.x = x_3102;
        let x_3105 : f32 = u_xlat8.x;
        let x_3107 : f32 = u_xlat9.x;
        let x_3109 : f32 = u_xlat82;
        u_xlat82 = ((x_3105 * x_3107) + x_3109);
        let x_3112 : vec4<f32> = u_xlat12;
        let x_3113 : vec2<f32> = vec2<f32>(x_3112.z, x_3112.w);
        let x_3115 : f32 = u_xlat4.z;
        txVec56 = vec3<f32>(x_3113.x, x_3113.y, x_3115);
        let x_3122 : vec3<f32> = txVec56;
        let x_3124 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3122.xy, x_3122.z);
        u_xlat8.x = x_3124;
        let x_3127 : f32 = u_xlat8.y;
        let x_3129 : f32 = u_xlat8.x;
        let x_3131 : f32 = u_xlat82;
        u_xlat82 = ((x_3127 * x_3129) + x_3131);
        let x_3134 : vec2<f32> = u_xlat61;
        let x_3136 : f32 = u_xlat4.z;
        txVec57 = vec3<f32>(x_3134.x, x_3134.y, x_3136);
        let x_3143 : vec3<f32> = txVec57;
        let x_3145 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3143.xy, x_3143.z);
        u_xlat8.x = x_3145;
        let x_3148 : f32 = u_xlat8.z;
        let x_3150 : f32 = u_xlat8.x;
        let x_3152 : f32 = u_xlat82;
        u_xlat82 = ((x_3148 * x_3150) + x_3152);
        let x_3155 : vec3<f32> = u_xlat32;
        let x_3156 : vec2<f32> = vec2<f32>(x_3155.x, x_3155.y);
        let x_3158 : f32 = u_xlat4.z;
        txVec58 = vec3<f32>(x_3156.x, x_3156.y, x_3158);
        let x_3165 : vec3<f32> = txVec58;
        let x_3167 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3165.xy, x_3165.z);
        u_xlat32.x = x_3167;
        let x_3170 : f32 = u_xlat8.w;
        let x_3172 : f32 = u_xlat32.x;
        let x_3174 : f32 = u_xlat82;
        u_xlat75 = ((x_3170 * x_3172) + x_3174);
      }
    }
  } else {
    let x_3178 : vec4<f32> = u_xlat4;
    let x_3179 : vec2<f32> = vec2<f32>(x_3178.x, x_3178.y);
    let x_3181 : f32 = u_xlat4.z;
    txVec59 = vec3<f32>(x_3179.x, x_3179.y, x_3181);
    let x_3188 : vec3<f32> = txVec59;
    let x_3190 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3188.xy, x_3188.z);
    u_xlat75 = x_3190;
  }
  let x_3191 : f32 = u_xlat75;
  let x_3193 : f32 = x_130.x_MainLightShadowParams.x;
  let x_3195 : f32 = u_xlat79;
  u_xlat75 = ((x_3191 * x_3193) + x_3195);
  let x_3197 : bool = u_xlatb5;
  let x_3198 : f32 = u_xlat75;
  u_xlat75 = select(x_3198, 1.0f, x_3197);
  let x_3200 : vec3<f32> = vs_INTERP8;
  let x_3202 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  let x_3204 : vec3<f32> = (x_3200 + -(x_3202));
  let x_3205 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_3204.x, x_3204.y, x_3204.z, x_3205.w);
  let x_3207 : vec4<f32> = u_xlat4;
  let x_3209 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_3207.x, x_3207.y, x_3207.z), vec3<f32>(x_3209.x, x_3209.y, x_3209.z));
  let x_3215 : f32 = u_xlat4.x;
  let x_3217 : f32 = x_130.x_MainLightShadowParams.z;
  let x_3220 : f32 = x_130.x_MainLightShadowParams.w;
  u_xlat29.x = ((x_3215 * x_3217) + x_3220);
  let x_3224 : f32 = u_xlat29.x;
  u_xlat29.x = clamp(x_3224, 0.0f, 1.0f);
  let x_3228 : f32 = u_xlat75;
  u_xlat54 = (-(x_3228) + 1.0f);
  let x_3232 : f32 = u_xlat29.x;
  let x_3233 : f32 = u_xlat54;
  let x_3235 : f32 = u_xlat75;
  u_xlat75 = ((x_3232 * x_3233) + x_3235);
  let x_3237 : vec4<f32> = u_xlat6;
  let x_3240 : vec3<f32> = u_xlat28;
  u_xlat29.x = dot(-(vec3<f32>(x_3237.x, x_3237.y, x_3237.z)), x_3240);
  let x_3244 : f32 = u_xlat29.x;
  let x_3246 : f32 = u_xlat29.x;
  u_xlat29.x = (x_3244 + x_3246);
  let x_3249 : vec3<f32> = u_xlat28;
  let x_3250 : vec3<f32> = u_xlat29;
  let x_3254 : vec4<f32> = u_xlat6;
  u_xlat29 = ((x_3249 * -(vec3<f32>(x_3250.x, x_3250.x, x_3250.x))) + -(vec3<f32>(x_3254.x, x_3254.y, x_3254.z)));
  let x_3258 : vec3<f32> = u_xlat28;
  let x_3259 : vec4<f32> = u_xlat6;
  u_xlat5.x = dot(x_3258, vec3<f32>(x_3259.x, x_3259.y, x_3259.z));
  let x_3264 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_3264, 0.0f, 1.0f);
  let x_3268 : f32 = u_xlat5.x;
  u_xlat5.x = (-(x_3268) + 1.0f);
  let x_3273 : f32 = u_xlat5.x;
  let x_3275 : f32 = u_xlat5.x;
  u_xlat5.x = (x_3273 * x_3275);
  let x_3279 : f32 = u_xlat5.x;
  let x_3281 : f32 = u_xlat5.x;
  u_xlat5.x = (x_3279 * x_3281);
  let x_3285 : f32 = u_xlat26.x;
  u_xlat32.x = ((-(x_3285) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3293 : f32 = u_xlat26.x;
  let x_3295 : f32 = u_xlat32.x;
  u_xlat26.x = (x_3293 * x_3295);
  let x_3299 : f32 = u_xlat26.x;
  u_xlat26.x = (x_3299 * 6.0f);
  let x_3311 : vec3<f32> = u_xlat29;
  let x_3313 : f32 = u_xlat26.x;
  let x_3314 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_3311, x_3313);
  u_xlat8 = x_3314;
  let x_3316 : f32 = u_xlat8.w;
  u_xlat26.x = (x_3316 + -1.0f);
  let x_3320 : f32 = x_1749.unity_SpecCube0_HDR.w;
  let x_3322 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_3320 * x_3322) + 1.0f);
  let x_3327 : f32 = u_xlat26.x;
  u_xlat26.x = max(x_3327, 0.0f);
  let x_3331 : f32 = u_xlat26.x;
  u_xlat26.x = log2(x_3331);
  let x_3335 : f32 = u_xlat26.x;
  let x_3337 : f32 = x_1749.unity_SpecCube0_HDR.y;
  u_xlat26.x = (x_3335 * x_3337);
  let x_3341 : f32 = u_xlat26.x;
  u_xlat26.x = exp2(x_3341);
  let x_3345 : f32 = u_xlat26.x;
  let x_3347 : f32 = x_1749.unity_SpecCube0_HDR.x;
  u_xlat26.x = (x_3345 * x_3347);
  let x_3350 : vec4<f32> = u_xlat8;
  let x_3352 : vec3<f32> = u_xlat26;
  u_xlat29 = (vec3<f32>(x_3350.x, x_3350.y, x_3350.z) * vec3<f32>(x_3352.x, x_3352.x, x_3352.x));
  let x_3355 : f32 = u_xlat76;
  let x_3357 : f32 = u_xlat76;
  let x_3361 : vec2<f32> = ((vec2<f32>(x_3355, x_3355) * vec2<f32>(x_3357, x_3357)) + vec2<f32>(-1.0f, 1.0f));
  let x_3362 : vec3<f32> = u_xlat26;
  u_xlat26 = vec3<f32>(x_3361.x, x_3362.y, x_3361.y);
  let x_3365 : f32 = u_xlat26.z;
  u_xlat76 = (1.0f / x_3365);
  let x_3368 : f32 = u_xlat3.x;
  u_xlat3.x = (x_3368 + -0.03999999910593032837f);
  let x_3373 : f32 = u_xlat5.x;
  let x_3375 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_3373 * x_3375) + 0.03999999910593032837f);
  let x_3380 : f32 = u_xlat76;
  let x_3382 : f32 = u_xlat3.x;
  u_xlat76 = (x_3380 * x_3382);
  let x_3384 : f32 = u_xlat76;
  let x_3386 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_3384, x_3384, x_3384) * x_3386);
  let x_3388 : vec3<f32> = u_xlat30;
  let x_3389 : vec3<f32> = u_xlat2;
  let x_3391 : vec3<f32> = u_xlat29;
  u_xlat29 = ((x_3388 * x_3389) + x_3391);
  let x_3393 : f32 = u_xlat75;
  let x_3395 : f32 = x_1749.unity_LightData.z;
  u_xlat75 = (x_3393 * x_3395);
  let x_3397 : vec3<f32> = u_xlat28;
  let x_3399 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat76 = dot(x_3397, vec3<f32>(x_3399.x, x_3399.y, x_3399.z));
  let x_3402 : f32 = u_xlat76;
  u_xlat76 = clamp(x_3402, 0.0f, 1.0f);
  let x_3404 : f32 = u_xlat75;
  let x_3405 : f32 = u_xlat76;
  u_xlat75 = (x_3404 * x_3405);
  let x_3407 : f32 = u_xlat75;
  let x_3410 : vec4<f32> = x_53.x_MainLightColor;
  let x_3412 : vec3<f32> = (vec3<f32>(x_3407, x_3407, x_3407) * vec3<f32>(x_3410.x, x_3410.y, x_3410.z));
  let x_3413 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_3412.x, x_3412.y, x_3412.z, x_3413.w);
  let x_3415 : vec4<f32> = u_xlat6;
  let x_3418 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat32 = (vec3<f32>(x_3415.x, x_3415.y, x_3415.z) + vec3<f32>(x_3418.x, x_3418.y, x_3418.z));
  let x_3421 : vec3<f32> = u_xlat32;
  let x_3422 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(x_3421, x_3422);
  let x_3424 : f32 = u_xlat75;
  u_xlat75 = max(x_3424, 1.17549435e-38f);
  let x_3427 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_3427);
  let x_3429 : f32 = u_xlat75;
  let x_3431 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_3429, x_3429, x_3429) * x_3431);
  let x_3433 : vec3<f32> = u_xlat28;
  let x_3434 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(x_3433, x_3434);
  let x_3436 : f32 = u_xlat75;
  u_xlat75 = clamp(x_3436, 0.0f, 1.0f);
  let x_3439 : vec4<f32> = x_53.x_MainLightPosition;
  let x_3441 : vec3<f32> = u_xlat32;
  u_xlat76 = dot(vec3<f32>(x_3439.x, x_3439.y, x_3439.z), x_3441);
  let x_3443 : f32 = u_xlat76;
  u_xlat76 = clamp(x_3443, 0.0f, 1.0f);
  let x_3445 : f32 = u_xlat75;
  let x_3446 : f32 = u_xlat75;
  u_xlat75 = (x_3445 * x_3446);
  let x_3448 : f32 = u_xlat75;
  let x_3450 : f32 = u_xlat26.x;
  u_xlat75 = ((x_3448 * x_3450) + 1.00001001358032226562f);
  let x_3454 : f32 = u_xlat76;
  let x_3455 : f32 = u_xlat76;
  u_xlat76 = (x_3454 * x_3455);
  let x_3457 : f32 = u_xlat75;
  let x_3458 : f32 = u_xlat75;
  u_xlat75 = (x_3457 * x_3458);
  let x_3460 : f32 = u_xlat76;
  u_xlat76 = max(x_3460, 0.10000000149011611938f);
  let x_3463 : f32 = u_xlat75;
  let x_3464 : f32 = u_xlat76;
  u_xlat75 = (x_3463 * x_3464);
  let x_3466 : f32 = u_xlat81;
  let x_3467 : f32 = u_xlat75;
  u_xlat75 = (x_3466 * x_3467);
  let x_3469 : f32 = u_xlat77;
  let x_3470 : f32 = u_xlat75;
  u_xlat75 = (x_3469 / x_3470);
  let x_3472 : f32 = u_xlat75;
  let x_3476 : vec3<f32> = u_xlat2;
  u_xlat32 = ((vec3<f32>(x_3472, x_3472, x_3472) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3476);
  let x_3478 : vec4<f32> = u_xlat5;
  let x_3480 : vec3<f32> = u_xlat32;
  let x_3481 : vec3<f32> = (vec3<f32>(x_3478.x, x_3478.y, x_3478.z) * x_3480);
  let x_3482 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_3481.x, x_3481.y, x_3481.z, x_3482.w);
  let x_3485 : f32 = x_53.x_AdditionalLightsCount.x;
  let x_3487 : f32 = x_1749.unity_LightData.y;
  u_xlat75 = min(x_3485, x_3487);
  let x_3489 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_3489));
  let x_3493 : f32 = u_xlat4.x;
  let x_3496 : f32 = x_130.x_AdditionalShadowFadeParams.x;
  let x_3499 : f32 = x_130.x_AdditionalShadowFadeParams.y;
  u_xlat76 = ((x_3493 * x_3496) + x_3499);
  let x_3501 : f32 = u_xlat76;
  u_xlat76 = clamp(x_3501, 0.0f, 1.0f);
  u_xlat32.x = 0.0f;
  u_xlat32.y = 0.0f;
  u_xlat32.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3513 : u32 = u_xlatu_loop_1;
    let x_3514 : u32 = u_xlatu75;
    if ((x_3513 < x_3514)) {
    } else {
      break;
    }
    let x_3517 : u32 = u_xlatu_loop_1;
    u_xlatu4 = (x_3517 >> 2u);
    let x_3520 : u32 = u_xlatu_loop_1;
    u_xlati80 = bitcast<i32>((x_3520 & 3u));
    let x_3523 : u32 = u_xlatu4;
    let x_3526 : vec4<f32> = x_1749.unity_LightIndices[bitcast<i32>(x_3523)];
    let x_3536 : i32 = u_xlati80;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3541 : vec4<u32> = indexable[x_3536];
    u_xlat4.x = dot(x_3526, bitcast<vec4<f32>>(x_3541));
    let x_3547 : f32 = u_xlat4.x;
    u_xlati4 = i32(x_3547);
    let x_3549 : vec3<f32> = vs_INTERP8;
    let x_3560 : i32 = u_xlati4;
    let x_3562 : vec4<f32> = x_3559.x_AdditionalLightsPosition[x_3560];
    let x_3565 : i32 = u_xlati4;
    let x_3567 : vec4<f32> = x_3559.x_AdditionalLightsPosition[x_3565];
    let x_3569 : vec3<f32> = ((-(x_3549) * vec3<f32>(x_3562.w, x_3562.w, x_3562.w)) + vec3<f32>(x_3567.x, x_3567.y, x_3567.z));
    let x_3570 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3569.x, x_3569.y, x_3569.z, x_3570.w);
    let x_3573 : vec4<f32> = u_xlat8;
    let x_3575 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_3573.x, x_3573.y, x_3573.z), vec3<f32>(x_3575.x, x_3575.y, x_3575.z));
    let x_3578 : f32 = u_xlat80;
    u_xlat80 = max(x_3578, 0.00006103515625f);
    let x_3582 : f32 = u_xlat80;
    u_xlat83 = inverseSqrt(x_3582);
    let x_3584 : f32 = u_xlat83;
    let x_3586 : vec4<f32> = u_xlat8;
    let x_3588 : vec3<f32> = (vec3<f32>(x_3584, x_3584, x_3584) * vec3<f32>(x_3586.x, x_3586.y, x_3586.z));
    let x_3589 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3588.x, x_3588.y, x_3588.z, x_3589.w);
    let x_3592 : f32 = u_xlat80;
    u_xlat84 = (1.0f / x_3592);
    let x_3594 : f32 = u_xlat80;
    let x_3595 : i32 = u_xlati4;
    let x_3597 : f32 = x_3559.x_AdditionalLightsAttenuation[x_3595].x;
    u_xlat80 = (x_3594 * x_3597);
    let x_3599 : f32 = u_xlat80;
    let x_3601 : f32 = u_xlat80;
    u_xlat80 = ((-(x_3599) * x_3601) + 1.0f);
    let x_3604 : f32 = u_xlat80;
    u_xlat80 = max(x_3604, 0.0f);
    let x_3606 : f32 = u_xlat80;
    let x_3607 : f32 = u_xlat80;
    u_xlat80 = (x_3606 * x_3607);
    let x_3609 : f32 = u_xlat80;
    let x_3610 : f32 = u_xlat84;
    u_xlat80 = (x_3609 * x_3610);
    let x_3612 : i32 = u_xlati4;
    let x_3614 : vec4<f32> = x_3559.x_AdditionalLightsSpotDir[x_3612];
    let x_3616 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_3614.x, x_3614.y, x_3614.z), vec3<f32>(x_3616.x, x_3616.y, x_3616.z));
    let x_3619 : f32 = u_xlat84;
    let x_3620 : i32 = u_xlati4;
    let x_3622 : f32 = x_3559.x_AdditionalLightsAttenuation[x_3620].z;
    let x_3624 : i32 = u_xlati4;
    let x_3626 : f32 = x_3559.x_AdditionalLightsAttenuation[x_3624].w;
    u_xlat84 = ((x_3619 * x_3622) + x_3626);
    let x_3628 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3628, 0.0f, 1.0f);
    let x_3630 : f32 = u_xlat84;
    let x_3631 : f32 = u_xlat84;
    u_xlat84 = (x_3630 * x_3631);
    let x_3633 : f32 = u_xlat80;
    let x_3634 : f32 = u_xlat84;
    u_xlat80 = (x_3633 * x_3634);
    let x_3638 : i32 = u_xlati4;
    let x_3640 : f32 = x_130.x_AdditionalShadowParams[x_3638].w;
    u_xlati84 = i32(x_3640);
    let x_3643 : i32 = u_xlati84;
    u_xlatb10.x = (x_3643 >= 0i);
    let x_3647 : bool = u_xlatb10.x;
    if (x_3647) {
      let x_3651 : i32 = u_xlati4;
      let x_3653 : f32 = x_130.x_AdditionalShadowParams[x_3651].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3653, x_3653, x_3653, x_3653))));
      let x_3659 : bool = u_xlatb10.x;
      if (x_3659) {
        let x_3662 : vec4<f32> = u_xlat9;
        let x_3665 : vec4<f32> = u_xlat9;
        let x_3668 : vec4<bool> = (abs(vec4<f32>(x_3662.z, x_3662.z, x_3662.y, x_3662.z)) >= abs(vec4<f32>(x_3665.x, x_3665.y, x_3665.x, x_3665.x)));
        u_xlatb10 = vec3<bool>(x_3668.x, x_3668.y, x_3668.z);
        let x_3671 : bool = u_xlatb10.y;
        let x_3673 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_3671 & x_3673);
        let x_3677 : vec4<f32> = u_xlat9;
        let x_3680 : vec4<bool> = (-(vec4<f32>(x_3677.z, x_3677.y, x_3677.x, x_3677.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_3680.x, x_3680.y, x_3680.z);
        let x_3684 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_3684);
        let x_3689 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_3689);
        let x_3693 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_3693);
        let x_3697 : bool = u_xlatb10.z;
        if (x_3697) {
          let x_3702 : f32 = u_xlat35.z;
          x_3698 = x_3702;
        } else {
          let x_3705 : f32 = u_xlat11.x;
          x_3698 = x_3705;
        }
        let x_3706 : f32 = x_3698;
        u_xlat60.x = x_3706;
        let x_3709 : bool = u_xlatb10.x;
        if (x_3709) {
          let x_3714 : f32 = u_xlat35.x;
          x_3710 = x_3714;
        } else {
          let x_3717 : f32 = u_xlat60.x;
          x_3710 = x_3717;
        }
        let x_3718 : f32 = x_3710;
        u_xlat10.x = x_3718;
        let x_3720 : i32 = u_xlati4;
        let x_3722 : f32 = x_130.x_AdditionalShadowParams[x_3720].w;
        u_xlat35.x = trunc(x_3722);
        let x_3726 : f32 = u_xlat10.x;
        let x_3728 : f32 = u_xlat35.x;
        u_xlat10.x = (x_3726 + x_3728);
        let x_3732 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_3732);
      }
      let x_3734 : i32 = u_xlati84;
      u_xlati84 = (x_3734 << bitcast<u32>(2i));
      let x_3736 : vec3<f32> = vs_INTERP8;
      let x_3739 : i32 = u_xlati84;
      let x_3742 : i32 = u_xlati84;
      let x_3746 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_3739 + 1i) / 4i)][((x_3742 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_3736.y, x_3736.y, x_3736.y, x_3736.y) * x_3746);
      let x_3748 : i32 = u_xlati84;
      let x_3750 : i32 = u_xlati84;
      let x_3753 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[(x_3748 / 4i)][(x_3750 % 4i)];
      let x_3754 : vec3<f32> = vs_INTERP8;
      let x_3757 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_3753 * vec4<f32>(x_3754.x, x_3754.x, x_3754.x, x_3754.x)) + x_3757);
      let x_3759 : i32 = u_xlati84;
      let x_3762 : i32 = u_xlati84;
      let x_3766 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_3759 + 2i) / 4i)][((x_3762 + 2i) % 4i)];
      let x_3767 : vec3<f32> = vs_INTERP8;
      let x_3770 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_3766 * vec4<f32>(x_3767.z, x_3767.z, x_3767.z, x_3767.z)) + x_3770);
      let x_3772 : vec4<f32> = u_xlat10;
      let x_3773 : i32 = u_xlati84;
      let x_3776 : i32 = u_xlati84;
      let x_3780 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_3773 + 3i) / 4i)][((x_3776 + 3i) % 4i)];
      u_xlat10 = (x_3772 + x_3780);
      let x_3782 : vec4<f32> = u_xlat10;
      let x_3784 : vec4<f32> = u_xlat10;
      let x_3786 : vec3<f32> = (vec3<f32>(x_3782.x, x_3782.y, x_3782.z) / vec3<f32>(x_3784.w, x_3784.w, x_3784.w));
      let x_3787 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_3786.x, x_3786.y, x_3786.z, x_3787.w);
      let x_3790 : i32 = u_xlati4;
      let x_3792 : f32 = x_130.x_AdditionalShadowParams[x_3790].y;
      u_xlatb84 = (0.0f < x_3792);
      let x_3794 : bool = u_xlatb84;
      if (x_3794) {
        let x_3797 : i32 = u_xlati4;
        let x_3799 : f32 = x_130.x_AdditionalShadowParams[x_3797].y;
        u_xlatb84 = (1.0f == x_3799);
        let x_3801 : bool = u_xlatb84;
        if (x_3801) {
          let x_3804 : vec4<f32> = u_xlat10;
          let x_3808 : vec4<f32> = x_130.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_3804.x, x_3804.y, x_3804.x, x_3804.y) + x_3808);
          let x_3811 : vec4<f32> = u_xlat11;
          let x_3812 : vec2<f32> = vec2<f32>(x_3811.x, x_3811.y);
          let x_3814 : f32 = u_xlat10.z;
          txVec60 = vec3<f32>(x_3812.x, x_3812.y, x_3814);
          let x_3822 : vec3<f32> = txVec60;
          let x_3824 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3822.xy, x_3822.z);
          u_xlat12.x = x_3824;
          let x_3827 : vec4<f32> = u_xlat11;
          let x_3828 : vec2<f32> = vec2<f32>(x_3827.z, x_3827.w);
          let x_3830 : f32 = u_xlat10.z;
          txVec61 = vec3<f32>(x_3828.x, x_3828.y, x_3830);
          let x_3837 : vec3<f32> = txVec61;
          let x_3839 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3837.xy, x_3837.z);
          u_xlat12.y = x_3839;
          let x_3841 : vec4<f32> = u_xlat10;
          let x_3845 : vec4<f32> = x_130.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_3841.x, x_3841.y, x_3841.x, x_3841.y) + x_3845);
          let x_3848 : vec4<f32> = u_xlat11;
          let x_3849 : vec2<f32> = vec2<f32>(x_3848.x, x_3848.y);
          let x_3851 : f32 = u_xlat10.z;
          txVec62 = vec3<f32>(x_3849.x, x_3849.y, x_3851);
          let x_3858 : vec3<f32> = txVec62;
          let x_3860 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3858.xy, x_3858.z);
          u_xlat12.z = x_3860;
          let x_3863 : vec4<f32> = u_xlat11;
          let x_3864 : vec2<f32> = vec2<f32>(x_3863.z, x_3863.w);
          let x_3866 : f32 = u_xlat10.z;
          txVec63 = vec3<f32>(x_3864.x, x_3864.y, x_3866);
          let x_3873 : vec3<f32> = txVec63;
          let x_3875 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3873.xy, x_3873.z);
          u_xlat12.w = x_3875;
          let x_3877 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_3877, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3881 : i32 = u_xlati4;
          let x_3883 : f32 = x_130.x_AdditionalShadowParams[x_3881].y;
          u_xlatb85 = (2.0f == x_3883);
          let x_3885 : bool = u_xlatb85;
          if (x_3885) {
            let x_3888 : vec4<f32> = u_xlat10;
            let x_3892 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_3895 : vec2<f32> = ((vec2<f32>(x_3888.x, x_3888.y) * vec2<f32>(x_3892.z, x_3892.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3896 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3895.x, x_3895.y, x_3896.z, x_3896.w);
            let x_3898 : vec4<f32> = u_xlat11;
            let x_3900 : vec2<f32> = floor(vec2<f32>(x_3898.x, x_3898.y));
            let x_3901 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3900.x, x_3900.y, x_3901.z, x_3901.w);
            let x_3903 : vec4<f32> = u_xlat10;
            let x_3906 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_3909 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3903.x, x_3903.y) * vec2<f32>(x_3906.z, x_3906.w)) + -(vec2<f32>(x_3909.x, x_3909.y)));
            let x_3913 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3913.x, x_3913.x, x_3913.y, x_3913.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3916 : vec4<f32> = u_xlat12;
            let x_3918 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3916.x, x_3916.x, x_3916.z, x_3916.z) * vec4<f32>(x_3918.x, x_3918.x, x_3918.z, x_3918.z));
            let x_3921 : vec4<f32> = u_xlat13;
            let x_3923 : vec2<f32> = (vec2<f32>(x_3921.y, x_3921.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3924 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3923.x, x_3924.y, x_3923.y, x_3924.w);
            let x_3926 : vec4<f32> = u_xlat13;
            let x_3929 : vec2<f32> = u_xlat61;
            let x_3931 : vec2<f32> = ((vec2<f32>(x_3926.x, x_3926.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3929));
            let x_3932 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3931.x, x_3931.y, x_3932.z, x_3932.w);
            let x_3934 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_3934) + vec2<f32>(1.0f, 1.0f));
            let x_3937 : vec2<f32> = u_xlat61;
            let x_3938 : vec2<f32> = min(x_3937, vec2<f32>(0.0f, 0.0f));
            let x_3939 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3938.x, x_3938.y, x_3939.z, x_3939.w);
            let x_3941 : vec4<f32> = u_xlat14;
            let x_3944 : vec4<f32> = u_xlat14;
            let x_3947 : vec2<f32> = u_xlat63;
            let x_3948 : vec2<f32> = ((-(vec2<f32>(x_3941.x, x_3941.y)) * vec2<f32>(x_3944.x, x_3944.y)) + x_3947);
            let x_3949 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3948.x, x_3948.y, x_3949.z, x_3949.w);
            let x_3951 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_3951, vec2<f32>(0.0f, 0.0f));
            let x_3953 : vec2<f32> = u_xlat61;
            let x_3955 : vec2<f32> = u_xlat61;
            let x_3957 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_3953) * x_3955) + vec2<f32>(x_3957.y, x_3957.w));
            let x_3960 : vec4<f32> = u_xlat14;
            let x_3962 : vec2<f32> = (vec2<f32>(x_3960.x, x_3960.y) + vec2<f32>(1.0f, 1.0f));
            let x_3963 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3962.x, x_3962.y, x_3963.z, x_3963.w);
            let x_3965 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_3965 + vec2<f32>(1.0f, 1.0f));
            let x_3967 : vec4<f32> = u_xlat13;
            let x_3969 : vec2<f32> = (vec2<f32>(x_3967.x, x_3967.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3970 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3969.x, x_3969.y, x_3970.z, x_3970.w);
            let x_3972 : vec2<f32> = u_xlat63;
            let x_3973 : vec2<f32> = (x_3972 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3974 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3973.x, x_3973.y, x_3974.z, x_3974.w);
            let x_3976 : vec4<f32> = u_xlat14;
            let x_3978 : vec2<f32> = (vec2<f32>(x_3976.x, x_3976.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3979 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3978.x, x_3978.y, x_3979.z, x_3979.w);
            let x_3981 : vec2<f32> = u_xlat61;
            let x_3982 : vec2<f32> = (x_3981 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3983 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3982.x, x_3982.y, x_3983.z, x_3983.w);
            let x_3985 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_3985.y, x_3985.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3989 : f32 = u_xlat14.x;
            u_xlat15.z = x_3989;
            let x_3992 : f32 = u_xlat61.x;
            u_xlat15.w = x_3992;
            let x_3995 : f32 = u_xlat16.x;
            u_xlat13.z = x_3995;
            let x_3998 : f32 = u_xlat12.x;
            u_xlat13.w = x_3998;
            let x_4000 : vec4<f32> = u_xlat13;
            let x_4002 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_4000.z, x_4000.w, x_4000.x, x_4000.z) + vec4<f32>(x_4002.z, x_4002.w, x_4002.x, x_4002.z));
            let x_4006 : f32 = u_xlat15.y;
            u_xlat14.z = x_4006;
            let x_4009 : f32 = u_xlat61.y;
            u_xlat14.w = x_4009;
            let x_4012 : f32 = u_xlat13.y;
            u_xlat16.z = x_4012;
            let x_4015 : f32 = u_xlat12.z;
            u_xlat16.w = x_4015;
            let x_4017 : vec4<f32> = u_xlat14;
            let x_4019 : vec4<f32> = u_xlat16;
            let x_4021 : vec3<f32> = (vec3<f32>(x_4017.z, x_4017.y, x_4017.w) + vec3<f32>(x_4019.z, x_4019.y, x_4019.w));
            let x_4022 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4021.x, x_4021.y, x_4021.z, x_4022.w);
            let x_4024 : vec4<f32> = u_xlat13;
            let x_4026 : vec4<f32> = u_xlat17;
            let x_4028 : vec3<f32> = (vec3<f32>(x_4024.x, x_4024.z, x_4024.w) / vec3<f32>(x_4026.z, x_4026.w, x_4026.y));
            let x_4029 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4028.x, x_4028.y, x_4028.z, x_4029.w);
            let x_4031 : vec4<f32> = u_xlat13;
            let x_4033 : vec3<f32> = (vec3<f32>(x_4031.x, x_4031.y, x_4031.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4034 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4033.x, x_4033.y, x_4033.z, x_4034.w);
            let x_4036 : vec4<f32> = u_xlat16;
            let x_4038 : vec4<f32> = u_xlat12;
            let x_4040 : vec3<f32> = (vec3<f32>(x_4036.z, x_4036.y, x_4036.w) / vec3<f32>(x_4038.x, x_4038.y, x_4038.z));
            let x_4041 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4040.x, x_4040.y, x_4040.z, x_4041.w);
            let x_4043 : vec4<f32> = u_xlat14;
            let x_4045 : vec3<f32> = (vec3<f32>(x_4043.x, x_4043.y, x_4043.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4046 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4045.x, x_4045.y, x_4045.z, x_4046.w);
            let x_4048 : vec4<f32> = u_xlat13;
            let x_4051 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4053 : vec3<f32> = (vec3<f32>(x_4048.y, x_4048.x, x_4048.z) * vec3<f32>(x_4051.x, x_4051.x, x_4051.x));
            let x_4054 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4053.x, x_4053.y, x_4053.z, x_4054.w);
            let x_4056 : vec4<f32> = u_xlat14;
            let x_4059 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4061 : vec3<f32> = (vec3<f32>(x_4056.x, x_4056.y, x_4056.z) * vec3<f32>(x_4059.y, x_4059.y, x_4059.y));
            let x_4062 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4061.x, x_4061.y, x_4061.z, x_4062.w);
            let x_4065 : f32 = u_xlat14.x;
            u_xlat13.w = x_4065;
            let x_4067 : vec4<f32> = u_xlat11;
            let x_4070 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4073 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_4067.x, x_4067.y, x_4067.x, x_4067.y) * vec4<f32>(x_4070.x, x_4070.y, x_4070.x, x_4070.y)) + vec4<f32>(x_4073.y, x_4073.w, x_4073.x, x_4073.w));
            let x_4076 : vec4<f32> = u_xlat11;
            let x_4079 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4082 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_4076.x, x_4076.y) * vec2<f32>(x_4079.x, x_4079.y)) + vec2<f32>(x_4082.z, x_4082.w));
            let x_4086 : f32 = u_xlat13.y;
            u_xlat14.w = x_4086;
            let x_4088 : vec4<f32> = u_xlat14;
            let x_4089 : vec2<f32> = vec2<f32>(x_4088.y, x_4088.z);
            let x_4090 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4090.x, x_4089.x, x_4090.z, x_4089.y);
            let x_4092 : vec4<f32> = u_xlat11;
            let x_4095 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4098 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_4092.x, x_4092.y, x_4092.x, x_4092.y) * vec4<f32>(x_4095.x, x_4095.y, x_4095.x, x_4095.y)) + vec4<f32>(x_4098.x, x_4098.y, x_4098.z, x_4098.y));
            let x_4101 : vec4<f32> = u_xlat11;
            let x_4104 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4107 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4101.x, x_4101.y, x_4101.x, x_4101.y) * vec4<f32>(x_4104.x, x_4104.y, x_4104.x, x_4104.y)) + vec4<f32>(x_4107.w, x_4107.y, x_4107.w, x_4107.z));
            let x_4110 : vec4<f32> = u_xlat11;
            let x_4113 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4116 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_4110.x, x_4110.y, x_4110.x, x_4110.y) * vec4<f32>(x_4113.x, x_4113.y, x_4113.x, x_4113.y)) + vec4<f32>(x_4116.x, x_4116.w, x_4116.z, x_4116.w));
            let x_4119 : vec4<f32> = u_xlat12;
            let x_4121 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_4119.x, x_4119.x, x_4119.x, x_4119.y) * vec4<f32>(x_4121.z, x_4121.w, x_4121.y, x_4121.z));
            let x_4124 : vec4<f32> = u_xlat12;
            let x_4126 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_4124.y, x_4124.y, x_4124.z, x_4124.z) * x_4126);
            let x_4130 : f32 = u_xlat12.z;
            let x_4132 : f32 = u_xlat17.y;
            u_xlat85 = (x_4130 * x_4132);
            let x_4135 : vec4<f32> = u_xlat15;
            let x_4136 : vec2<f32> = vec2<f32>(x_4135.x, x_4135.y);
            let x_4138 : f32 = u_xlat10.z;
            txVec64 = vec3<f32>(x_4136.x, x_4136.y, x_4138);
            let x_4145 : vec3<f32> = txVec64;
            let x_4147 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4145.xy, x_4145.z);
            u_xlat11.x = x_4147;
            let x_4150 : vec4<f32> = u_xlat15;
            let x_4151 : vec2<f32> = vec2<f32>(x_4150.z, x_4150.w);
            let x_4153 : f32 = u_xlat10.z;
            txVec65 = vec3<f32>(x_4151.x, x_4151.y, x_4153);
            let x_4161 : vec3<f32> = txVec65;
            let x_4163 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4161.xy, x_4161.z);
            u_xlat36 = x_4163;
            let x_4164 : f32 = u_xlat36;
            let x_4166 : f32 = u_xlat18.y;
            u_xlat36 = (x_4164 * x_4166);
            let x_4169 : f32 = u_xlat18.x;
            let x_4171 : f32 = u_xlat11.x;
            let x_4173 : f32 = u_xlat36;
            u_xlat11.x = ((x_4169 * x_4171) + x_4173);
            let x_4177 : vec2<f32> = u_xlat61;
            let x_4179 : f32 = u_xlat10.z;
            txVec66 = vec3<f32>(x_4177.x, x_4177.y, x_4179);
            let x_4186 : vec3<f32> = txVec66;
            let x_4188 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4186.xy, x_4186.z);
            u_xlat36 = x_4188;
            let x_4190 : f32 = u_xlat18.z;
            let x_4191 : f32 = u_xlat36;
            let x_4194 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4190 * x_4191) + x_4194);
            let x_4198 : vec4<f32> = u_xlat14;
            let x_4199 : vec2<f32> = vec2<f32>(x_4198.x, x_4198.y);
            let x_4201 : f32 = u_xlat10.z;
            txVec67 = vec3<f32>(x_4199.x, x_4199.y, x_4201);
            let x_4208 : vec3<f32> = txVec67;
            let x_4210 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4208.xy, x_4208.z);
            u_xlat36 = x_4210;
            let x_4212 : f32 = u_xlat18.w;
            let x_4213 : f32 = u_xlat36;
            let x_4216 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4212 * x_4213) + x_4216);
            let x_4220 : vec4<f32> = u_xlat16;
            let x_4221 : vec2<f32> = vec2<f32>(x_4220.x, x_4220.y);
            let x_4223 : f32 = u_xlat10.z;
            txVec68 = vec3<f32>(x_4221.x, x_4221.y, x_4223);
            let x_4230 : vec3<f32> = txVec68;
            let x_4232 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4230.xy, x_4230.z);
            u_xlat36 = x_4232;
            let x_4234 : f32 = u_xlat19.x;
            let x_4235 : f32 = u_xlat36;
            let x_4238 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4234 * x_4235) + x_4238);
            let x_4242 : vec4<f32> = u_xlat16;
            let x_4243 : vec2<f32> = vec2<f32>(x_4242.z, x_4242.w);
            let x_4245 : f32 = u_xlat10.z;
            txVec69 = vec3<f32>(x_4243.x, x_4243.y, x_4245);
            let x_4252 : vec3<f32> = txVec69;
            let x_4254 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4252.xy, x_4252.z);
            u_xlat36 = x_4254;
            let x_4256 : f32 = u_xlat19.y;
            let x_4257 : f32 = u_xlat36;
            let x_4260 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4256 * x_4257) + x_4260);
            let x_4264 : vec4<f32> = u_xlat14;
            let x_4265 : vec2<f32> = vec2<f32>(x_4264.z, x_4264.w);
            let x_4267 : f32 = u_xlat10.z;
            txVec70 = vec3<f32>(x_4265.x, x_4265.y, x_4267);
            let x_4274 : vec3<f32> = txVec70;
            let x_4276 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4274.xy, x_4274.z);
            u_xlat36 = x_4276;
            let x_4278 : f32 = u_xlat19.z;
            let x_4279 : f32 = u_xlat36;
            let x_4282 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4278 * x_4279) + x_4282);
            let x_4286 : vec4<f32> = u_xlat13;
            let x_4287 : vec2<f32> = vec2<f32>(x_4286.x, x_4286.y);
            let x_4289 : f32 = u_xlat10.z;
            txVec71 = vec3<f32>(x_4287.x, x_4287.y, x_4289);
            let x_4296 : vec3<f32> = txVec71;
            let x_4298 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4296.xy, x_4296.z);
            u_xlat36 = x_4298;
            let x_4300 : f32 = u_xlat19.w;
            let x_4301 : f32 = u_xlat36;
            let x_4304 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4300 * x_4301) + x_4304);
            let x_4308 : vec4<f32> = u_xlat13;
            let x_4309 : vec2<f32> = vec2<f32>(x_4308.z, x_4308.w);
            let x_4311 : f32 = u_xlat10.z;
            txVec72 = vec3<f32>(x_4309.x, x_4309.y, x_4311);
            let x_4318 : vec3<f32> = txVec72;
            let x_4320 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4318.xy, x_4318.z);
            u_xlat36 = x_4320;
            let x_4321 : f32 = u_xlat85;
            let x_4322 : f32 = u_xlat36;
            let x_4325 : f32 = u_xlat11.x;
            u_xlat84 = ((x_4321 * x_4322) + x_4325);
          } else {
            let x_4328 : vec4<f32> = u_xlat10;
            let x_4331 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4334 : vec2<f32> = ((vec2<f32>(x_4328.x, x_4328.y) * vec2<f32>(x_4331.z, x_4331.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4335 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_4334.x, x_4334.y, x_4335.z, x_4335.w);
            let x_4337 : vec4<f32> = u_xlat11;
            let x_4339 : vec2<f32> = floor(vec2<f32>(x_4337.x, x_4337.y));
            let x_4340 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_4339.x, x_4339.y, x_4340.z, x_4340.w);
            let x_4342 : vec4<f32> = u_xlat10;
            let x_4345 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4348 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_4342.x, x_4342.y) * vec2<f32>(x_4345.z, x_4345.w)) + -(vec2<f32>(x_4348.x, x_4348.y)));
            let x_4352 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_4352.x, x_4352.x, x_4352.y, x_4352.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4355 : vec4<f32> = u_xlat12;
            let x_4357 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_4355.x, x_4355.x, x_4355.z, x_4355.z) * vec4<f32>(x_4357.x, x_4357.x, x_4357.z, x_4357.z));
            let x_4360 : vec4<f32> = u_xlat13;
            let x_4362 : vec2<f32> = (vec2<f32>(x_4360.y, x_4360.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4363 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4363.x, x_4362.x, x_4363.z, x_4362.y);
            let x_4365 : vec4<f32> = u_xlat13;
            let x_4368 : vec2<f32> = u_xlat61;
            let x_4370 : vec2<f32> = ((vec2<f32>(x_4365.x, x_4365.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4368));
            let x_4371 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4370.x, x_4371.y, x_4370.y, x_4371.w);
            let x_4373 : vec2<f32> = u_xlat61;
            let x_4375 : vec2<f32> = (-(x_4373) + vec2<f32>(1.0f, 1.0f));
            let x_4376 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4375.x, x_4375.y, x_4376.z, x_4376.w);
            let x_4378 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_4378, vec2<f32>(0.0f, 0.0f));
            let x_4380 : vec2<f32> = u_xlat63;
            let x_4382 : vec2<f32> = u_xlat63;
            let x_4384 : vec4<f32> = u_xlat13;
            let x_4386 : vec2<f32> = ((-(x_4380) * x_4382) + vec2<f32>(x_4384.x, x_4384.y));
            let x_4387 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4386.x, x_4386.y, x_4387.z, x_4387.w);
            let x_4389 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_4389, vec2<f32>(0.0f, 0.0f));
            let x_4392 : vec2<f32> = u_xlat63;
            let x_4394 : vec2<f32> = u_xlat63;
            let x_4396 : vec4<f32> = u_xlat12;
            let x_4398 : vec2<f32> = ((-(x_4392) * x_4394) + vec2<f32>(x_4396.y, x_4396.w));
            let x_4399 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_4398.x, x_4399.y, x_4398.y);
            let x_4401 : vec4<f32> = u_xlat13;
            let x_4403 : vec2<f32> = (vec2<f32>(x_4401.x, x_4401.y) + vec2<f32>(2.0f, 2.0f));
            let x_4404 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4403.x, x_4403.y, x_4404.z, x_4404.w);
            let x_4406 : vec3<f32> = u_xlat37;
            let x_4408 : vec2<f32> = (vec2<f32>(x_4406.x, x_4406.z) + vec2<f32>(2.0f, 2.0f));
            let x_4409 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4409.x, x_4408.x, x_4409.z, x_4408.y);
            let x_4412 : f32 = u_xlat12.y;
            u_xlat15.z = (x_4412 * 0.08163200318813323975f);
            let x_4415 : vec4<f32> = u_xlat12;
            let x_4417 : vec3<f32> = (vec3<f32>(x_4415.z, x_4415.x, x_4415.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4418 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4417.x, x_4417.y, x_4417.z, x_4418.w);
            let x_4420 : vec4<f32> = u_xlat13;
            let x_4422 : vec2<f32> = (vec2<f32>(x_4420.x, x_4420.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4423 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4422.x, x_4422.y, x_4423.z, x_4423.w);
            let x_4426 : f32 = u_xlat16.y;
            u_xlat15.x = x_4426;
            let x_4428 : vec2<f32> = u_xlat61;
            let x_4431 : vec2<f32> = ((vec2<f32>(x_4428.x, x_4428.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4432 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4432.x, x_4431.x, x_4432.z, x_4431.y);
            let x_4434 : vec2<f32> = u_xlat61;
            let x_4437 : vec2<f32> = ((vec2<f32>(x_4434.x, x_4434.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4438 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4437.x, x_4438.y, x_4437.y, x_4438.w);
            let x_4441 : f32 = u_xlat12.x;
            u_xlat13.y = x_4441;
            let x_4444 : f32 = u_xlat14.y;
            u_xlat13.w = x_4444;
            let x_4446 : vec4<f32> = u_xlat13;
            let x_4447 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4446 + x_4447);
            let x_4449 : vec2<f32> = u_xlat61;
            let x_4452 : vec2<f32> = ((vec2<f32>(x_4449.y, x_4449.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4453 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4453.x, x_4452.x, x_4453.z, x_4452.y);
            let x_4455 : vec2<f32> = u_xlat61;
            let x_4458 : vec2<f32> = ((vec2<f32>(x_4455.y, x_4455.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4459 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4458.x, x_4459.y, x_4458.y, x_4459.w);
            let x_4462 : f32 = u_xlat12.y;
            u_xlat14.y = x_4462;
            let x_4464 : vec4<f32> = u_xlat14;
            let x_4465 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_4464 + x_4465);
            let x_4467 : vec4<f32> = u_xlat13;
            let x_4468 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_4467 / x_4468);
            let x_4470 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_4470 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4472 : vec4<f32> = u_xlat14;
            let x_4473 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_4472 / x_4473);
            let x_4475 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4475 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4477 : vec4<f32> = u_xlat13;
            let x_4480 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_4477.w, x_4477.x, x_4477.y, x_4477.z) * vec4<f32>(x_4480.x, x_4480.x, x_4480.x, x_4480.x));
            let x_4483 : vec4<f32> = u_xlat14;
            let x_4486 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4483.x, x_4483.w, x_4483.y, x_4483.z) * vec4<f32>(x_4486.y, x_4486.y, x_4486.y, x_4486.y));
            let x_4489 : vec4<f32> = u_xlat13;
            let x_4490 : vec3<f32> = vec3<f32>(x_4489.y, x_4489.z, x_4489.w);
            let x_4491 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4490.x, x_4491.y, x_4490.y, x_4490.z);
            let x_4494 : f32 = u_xlat14.x;
            u_xlat16.y = x_4494;
            let x_4496 : vec4<f32> = u_xlat11;
            let x_4499 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4502 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_4496.x, x_4496.y, x_4496.x, x_4496.y) * vec4<f32>(x_4499.x, x_4499.y, x_4499.x, x_4499.y)) + vec4<f32>(x_4502.x, x_4502.y, x_4502.z, x_4502.y));
            let x_4505 : vec4<f32> = u_xlat11;
            let x_4508 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4511 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_4505.x, x_4505.y) * vec2<f32>(x_4508.x, x_4508.y)) + vec2<f32>(x_4511.w, x_4511.y));
            let x_4515 : f32 = u_xlat16.y;
            u_xlat13.y = x_4515;
            let x_4518 : f32 = u_xlat14.z;
            u_xlat16.y = x_4518;
            let x_4520 : vec4<f32> = u_xlat11;
            let x_4523 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4526 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_4520.x, x_4520.y, x_4520.x, x_4520.y) * vec4<f32>(x_4523.x, x_4523.y, x_4523.x, x_4523.y)) + vec4<f32>(x_4526.x, x_4526.y, x_4526.z, x_4526.y));
            let x_4529 : vec4<f32> = u_xlat11;
            let x_4532 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4535 : vec4<f32> = u_xlat16;
            let x_4537 : vec2<f32> = ((vec2<f32>(x_4529.x, x_4529.y) * vec2<f32>(x_4532.x, x_4532.y)) + vec2<f32>(x_4535.w, x_4535.y));
            let x_4538 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_4537.x, x_4537.y, x_4538.z, x_4538.w);
            let x_4541 : f32 = u_xlat16.y;
            u_xlat13.z = x_4541;
            let x_4543 : vec4<f32> = u_xlat11;
            let x_4546 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4549 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_4543.x, x_4543.y, x_4543.x, x_4543.y) * vec4<f32>(x_4546.x, x_4546.y, x_4546.x, x_4546.y)) + vec4<f32>(x_4549.x, x_4549.y, x_4549.x, x_4549.z));
            let x_4553 : f32 = u_xlat14.w;
            u_xlat16.y = x_4553;
            let x_4555 : vec4<f32> = u_xlat11;
            let x_4558 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4561 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_4555.x, x_4555.y, x_4555.x, x_4555.y) * vec4<f32>(x_4558.x, x_4558.y, x_4558.x, x_4558.y)) + vec4<f32>(x_4561.x, x_4561.y, x_4561.z, x_4561.y));
            let x_4565 : vec4<f32> = u_xlat11;
            let x_4568 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4571 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_4565.x, x_4565.y) * vec2<f32>(x_4568.x, x_4568.y)) + vec2<f32>(x_4571.w, x_4571.y));
            let x_4575 : f32 = u_xlat16.y;
            u_xlat13.w = x_4575;
            let x_4578 : vec4<f32> = u_xlat11;
            let x_4581 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4584 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_4578.x, x_4578.y) * vec2<f32>(x_4581.x, x_4581.y)) + vec2<f32>(x_4584.x, x_4584.w));
            let x_4587 : vec4<f32> = u_xlat16;
            let x_4588 : vec3<f32> = vec3<f32>(x_4587.x, x_4587.z, x_4587.w);
            let x_4589 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4588.x, x_4589.y, x_4588.y, x_4588.z);
            let x_4591 : vec4<f32> = u_xlat11;
            let x_4594 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4597 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4591.x, x_4591.y, x_4591.x, x_4591.y) * vec4<f32>(x_4594.x, x_4594.y, x_4594.x, x_4594.y)) + vec4<f32>(x_4597.x, x_4597.y, x_4597.z, x_4597.y));
            let x_4600 : vec4<f32> = u_xlat11;
            let x_4603 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4606 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4600.x, x_4600.y) * vec2<f32>(x_4603.x, x_4603.y)) + vec2<f32>(x_4606.w, x_4606.y));
            let x_4610 : f32 = u_xlat13.x;
            u_xlat14.x = x_4610;
            let x_4612 : vec4<f32> = u_xlat11;
            let x_4615 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4618 : vec4<f32> = u_xlat14;
            let x_4620 : vec2<f32> = ((vec2<f32>(x_4612.x, x_4612.y) * vec2<f32>(x_4615.x, x_4615.y)) + vec2<f32>(x_4618.x, x_4618.y));
            let x_4621 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_4620.x, x_4620.y, x_4621.z, x_4621.w);
            let x_4624 : vec4<f32> = u_xlat12;
            let x_4626 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_4624.x, x_4624.x, x_4624.x, x_4624.x) * x_4626);
            let x_4629 : vec4<f32> = u_xlat12;
            let x_4631 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_4629.y, x_4629.y, x_4629.y, x_4629.y) * x_4631);
            let x_4634 : vec4<f32> = u_xlat12;
            let x_4636 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_4634.z, x_4634.z, x_4634.z, x_4634.z) * x_4636);
            let x_4638 : vec4<f32> = u_xlat12;
            let x_4640 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_4638.w, x_4638.w, x_4638.w, x_4638.w) * x_4640);
            let x_4643 : vec4<f32> = u_xlat17;
            let x_4644 : vec2<f32> = vec2<f32>(x_4643.x, x_4643.y);
            let x_4646 : f32 = u_xlat10.z;
            txVec73 = vec3<f32>(x_4644.x, x_4644.y, x_4646);
            let x_4653 : vec3<f32> = txVec73;
            let x_4655 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4653.xy, x_4653.z);
            u_xlat85 = x_4655;
            let x_4657 : vec4<f32> = u_xlat17;
            let x_4658 : vec2<f32> = vec2<f32>(x_4657.z, x_4657.w);
            let x_4660 : f32 = u_xlat10.z;
            txVec74 = vec3<f32>(x_4658.x, x_4658.y, x_4660);
            let x_4667 : vec3<f32> = txVec74;
            let x_4669 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4667.xy, x_4667.z);
            u_xlat13.x = x_4669;
            let x_4672 : f32 = u_xlat13.x;
            let x_4674 : f32 = u_xlat22.y;
            u_xlat13.x = (x_4672 * x_4674);
            let x_4678 : f32 = u_xlat22.x;
            let x_4679 : f32 = u_xlat85;
            let x_4682 : f32 = u_xlat13.x;
            u_xlat85 = ((x_4678 * x_4679) + x_4682);
            let x_4685 : vec2<f32> = u_xlat61;
            let x_4687 : f32 = u_xlat10.z;
            txVec75 = vec3<f32>(x_4685.x, x_4685.y, x_4687);
            let x_4694 : vec3<f32> = txVec75;
            let x_4696 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4694.xy, x_4694.z);
            u_xlat61.x = x_4696;
            let x_4699 : f32 = u_xlat22.z;
            let x_4701 : f32 = u_xlat61.x;
            let x_4703 : f32 = u_xlat85;
            u_xlat85 = ((x_4699 * x_4701) + x_4703);
            let x_4706 : vec4<f32> = u_xlat20;
            let x_4707 : vec2<f32> = vec2<f32>(x_4706.x, x_4706.y);
            let x_4709 : f32 = u_xlat10.z;
            txVec76 = vec3<f32>(x_4707.x, x_4707.y, x_4709);
            let x_4716 : vec3<f32> = txVec76;
            let x_4718 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4716.xy, x_4716.z);
            u_xlat61.x = x_4718;
            let x_4721 : f32 = u_xlat22.w;
            let x_4723 : f32 = u_xlat61.x;
            let x_4725 : f32 = u_xlat85;
            u_xlat85 = ((x_4721 * x_4723) + x_4725);
            let x_4728 : vec4<f32> = u_xlat18;
            let x_4729 : vec2<f32> = vec2<f32>(x_4728.x, x_4728.y);
            let x_4731 : f32 = u_xlat10.z;
            txVec77 = vec3<f32>(x_4729.x, x_4729.y, x_4731);
            let x_4738 : vec3<f32> = txVec77;
            let x_4740 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4738.xy, x_4738.z);
            u_xlat61.x = x_4740;
            let x_4743 : f32 = u_xlat23.x;
            let x_4745 : f32 = u_xlat61.x;
            let x_4747 : f32 = u_xlat85;
            u_xlat85 = ((x_4743 * x_4745) + x_4747);
            let x_4750 : vec4<f32> = u_xlat18;
            let x_4751 : vec2<f32> = vec2<f32>(x_4750.z, x_4750.w);
            let x_4753 : f32 = u_xlat10.z;
            txVec78 = vec3<f32>(x_4751.x, x_4751.y, x_4753);
            let x_4760 : vec3<f32> = txVec78;
            let x_4762 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4760.xy, x_4760.z);
            u_xlat61.x = x_4762;
            let x_4765 : f32 = u_xlat23.y;
            let x_4767 : f32 = u_xlat61.x;
            let x_4769 : f32 = u_xlat85;
            u_xlat85 = ((x_4765 * x_4767) + x_4769);
            let x_4772 : vec4<f32> = u_xlat19;
            let x_4773 : vec2<f32> = vec2<f32>(x_4772.x, x_4772.y);
            let x_4775 : f32 = u_xlat10.z;
            txVec79 = vec3<f32>(x_4773.x, x_4773.y, x_4775);
            let x_4782 : vec3<f32> = txVec79;
            let x_4784 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4782.xy, x_4782.z);
            u_xlat61.x = x_4784;
            let x_4787 : f32 = u_xlat23.z;
            let x_4789 : f32 = u_xlat61.x;
            let x_4791 : f32 = u_xlat85;
            u_xlat85 = ((x_4787 * x_4789) + x_4791);
            let x_4794 : vec4<f32> = u_xlat20;
            let x_4795 : vec2<f32> = vec2<f32>(x_4794.z, x_4794.w);
            let x_4797 : f32 = u_xlat10.z;
            txVec80 = vec3<f32>(x_4795.x, x_4795.y, x_4797);
            let x_4804 : vec3<f32> = txVec80;
            let x_4806 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4804.xy, x_4804.z);
            u_xlat61.x = x_4806;
            let x_4809 : f32 = u_xlat23.w;
            let x_4811 : f32 = u_xlat61.x;
            let x_4813 : f32 = u_xlat85;
            u_xlat85 = ((x_4809 * x_4811) + x_4813);
            let x_4816 : vec4<f32> = u_xlat21;
            let x_4817 : vec2<f32> = vec2<f32>(x_4816.x, x_4816.y);
            let x_4819 : f32 = u_xlat10.z;
            txVec81 = vec3<f32>(x_4817.x, x_4817.y, x_4819);
            let x_4826 : vec3<f32> = txVec81;
            let x_4828 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4826.xy, x_4826.z);
            u_xlat61.x = x_4828;
            let x_4831 : f32 = u_xlat24.x;
            let x_4833 : f32 = u_xlat61.x;
            let x_4835 : f32 = u_xlat85;
            u_xlat85 = ((x_4831 * x_4833) + x_4835);
            let x_4838 : vec4<f32> = u_xlat21;
            let x_4839 : vec2<f32> = vec2<f32>(x_4838.z, x_4838.w);
            let x_4841 : f32 = u_xlat10.z;
            txVec82 = vec3<f32>(x_4839.x, x_4839.y, x_4841);
            let x_4848 : vec3<f32> = txVec82;
            let x_4850 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4848.xy, x_4848.z);
            u_xlat61.x = x_4850;
            let x_4853 : f32 = u_xlat24.y;
            let x_4855 : f32 = u_xlat61.x;
            let x_4857 : f32 = u_xlat85;
            u_xlat85 = ((x_4853 * x_4855) + x_4857);
            let x_4860 : vec2<f32> = u_xlat38;
            let x_4862 : f32 = u_xlat10.z;
            txVec83 = vec3<f32>(x_4860.x, x_4860.y, x_4862);
            let x_4869 : vec3<f32> = txVec83;
            let x_4871 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4869.xy, x_4869.z);
            u_xlat61.x = x_4871;
            let x_4874 : f32 = u_xlat24.z;
            let x_4876 : f32 = u_xlat61.x;
            let x_4878 : f32 = u_xlat85;
            u_xlat85 = ((x_4874 * x_4876) + x_4878);
            let x_4881 : vec2<f32> = u_xlat69;
            let x_4883 : f32 = u_xlat10.z;
            txVec84 = vec3<f32>(x_4881.x, x_4881.y, x_4883);
            let x_4890 : vec3<f32> = txVec84;
            let x_4892 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4890.xy, x_4890.z);
            u_xlat61.x = x_4892;
            let x_4895 : f32 = u_xlat24.w;
            let x_4897 : f32 = u_xlat61.x;
            let x_4899 : f32 = u_xlat85;
            u_xlat85 = ((x_4895 * x_4897) + x_4899);
            let x_4902 : vec4<f32> = u_xlat16;
            let x_4903 : vec2<f32> = vec2<f32>(x_4902.x, x_4902.y);
            let x_4905 : f32 = u_xlat10.z;
            txVec85 = vec3<f32>(x_4903.x, x_4903.y, x_4905);
            let x_4912 : vec3<f32> = txVec85;
            let x_4914 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4912.xy, x_4912.z);
            u_xlat61.x = x_4914;
            let x_4917 : f32 = u_xlat12.x;
            let x_4919 : f32 = u_xlat61.x;
            let x_4921 : f32 = u_xlat85;
            u_xlat85 = ((x_4917 * x_4919) + x_4921);
            let x_4924 : vec4<f32> = u_xlat16;
            let x_4925 : vec2<f32> = vec2<f32>(x_4924.z, x_4924.w);
            let x_4927 : f32 = u_xlat10.z;
            txVec86 = vec3<f32>(x_4925.x, x_4925.y, x_4927);
            let x_4934 : vec3<f32> = txVec86;
            let x_4936 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4934.xy, x_4934.z);
            u_xlat61.x = x_4936;
            let x_4939 : f32 = u_xlat12.y;
            let x_4941 : f32 = u_xlat61.x;
            let x_4943 : f32 = u_xlat85;
            u_xlat85 = ((x_4939 * x_4941) + x_4943);
            let x_4946 : vec2<f32> = u_xlat64;
            let x_4948 : f32 = u_xlat10.z;
            txVec87 = vec3<f32>(x_4946.x, x_4946.y, x_4948);
            let x_4955 : vec3<f32> = txVec87;
            let x_4957 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4955.xy, x_4955.z);
            u_xlat61.x = x_4957;
            let x_4960 : f32 = u_xlat12.z;
            let x_4962 : f32 = u_xlat61.x;
            let x_4964 : f32 = u_xlat85;
            u_xlat85 = ((x_4960 * x_4962) + x_4964);
            let x_4967 : vec4<f32> = u_xlat11;
            let x_4968 : vec2<f32> = vec2<f32>(x_4967.x, x_4967.y);
            let x_4970 : f32 = u_xlat10.z;
            txVec88 = vec3<f32>(x_4968.x, x_4968.y, x_4970);
            let x_4977 : vec3<f32> = txVec88;
            let x_4979 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4977.xy, x_4977.z);
            u_xlat11.x = x_4979;
            let x_4982 : f32 = u_xlat12.w;
            let x_4984 : f32 = u_xlat11.x;
            let x_4986 : f32 = u_xlat85;
            u_xlat84 = ((x_4982 * x_4984) + x_4986);
          }
        }
      } else {
        let x_4990 : vec4<f32> = u_xlat10;
        let x_4991 : vec2<f32> = vec2<f32>(x_4990.x, x_4990.y);
        let x_4993 : f32 = u_xlat10.z;
        txVec89 = vec3<f32>(x_4991.x, x_4991.y, x_4993);
        let x_5000 : vec3<f32> = txVec89;
        let x_5002 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5000.xy, x_5000.z);
        u_xlat84 = x_5002;
      }
      let x_5003 : i32 = u_xlati4;
      let x_5005 : f32 = x_130.x_AdditionalShadowParams[x_5003].x;
      u_xlat10.x = (1.0f + -(x_5005));
      let x_5009 : f32 = u_xlat84;
      let x_5010 : i32 = u_xlati4;
      let x_5012 : f32 = x_130.x_AdditionalShadowParams[x_5010].x;
      let x_5015 : f32 = u_xlat10.x;
      u_xlat84 = ((x_5009 * x_5012) + x_5015);
      let x_5018 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_5018);
      let x_5023 : f32 = u_xlat10.z;
      u_xlatb35 = (x_5023 >= 1.0f);
      let x_5025 : bool = u_xlatb35;
      let x_5027 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_5025 | x_5027);
      let x_5031 : bool = u_xlatb10.x;
      let x_5032 : f32 = u_xlat84;
      u_xlat84 = select(x_5032, 1.0f, x_5031);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_5035 : f32 = u_xlat84;
    u_xlat10.x = (-(x_5035) + 1.0f);
    let x_5039 : f32 = u_xlat76;
    let x_5041 : f32 = u_xlat10.x;
    let x_5043 : f32 = u_xlat84;
    u_xlat84 = ((x_5039 * x_5041) + x_5043);
    let x_5045 : f32 = u_xlat80;
    let x_5046 : f32 = u_xlat84;
    u_xlat80 = (x_5045 * x_5046);
    let x_5048 : vec3<f32> = u_xlat28;
    let x_5049 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(x_5048, vec3<f32>(x_5049.x, x_5049.y, x_5049.z));
    let x_5052 : f32 = u_xlat84;
    u_xlat84 = clamp(x_5052, 0.0f, 1.0f);
    let x_5054 : f32 = u_xlat80;
    let x_5055 : f32 = u_xlat84;
    u_xlat80 = (x_5054 * x_5055);
    let x_5057 : f32 = u_xlat80;
    let x_5059 : i32 = u_xlati4;
    let x_5061 : vec4<f32> = x_3559.x_AdditionalLightsColor[x_5059];
    let x_5063 : vec3<f32> = (vec3<f32>(x_5057, x_5057, x_5057) * vec3<f32>(x_5061.x, x_5061.y, x_5061.z));
    let x_5064 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_5063.x, x_5063.y, x_5063.z, x_5064.w);
    let x_5066 : vec4<f32> = u_xlat8;
    let x_5068 : f32 = u_xlat83;
    let x_5071 : vec4<f32> = u_xlat6;
    let x_5073 : vec3<f32> = ((vec3<f32>(x_5066.x, x_5066.y, x_5066.z) * vec3<f32>(x_5068, x_5068, x_5068)) + vec3<f32>(x_5071.x, x_5071.y, x_5071.z));
    let x_5074 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5073.x, x_5073.y, x_5073.z, x_5074.w);
    let x_5076 : vec4<f32> = u_xlat8;
    let x_5078 : vec4<f32> = u_xlat8;
    u_xlat4.x = dot(vec3<f32>(x_5076.x, x_5076.y, x_5076.z), vec3<f32>(x_5078.x, x_5078.y, x_5078.z));
    let x_5083 : f32 = u_xlat4.x;
    u_xlat4.x = max(x_5083, 1.17549435e-38f);
    let x_5087 : f32 = u_xlat4.x;
    u_xlat4.x = inverseSqrt(x_5087);
    let x_5090 : vec4<f32> = u_xlat4;
    let x_5092 : vec4<f32> = u_xlat8;
    let x_5094 : vec3<f32> = (vec3<f32>(x_5090.x, x_5090.x, x_5090.x) * vec3<f32>(x_5092.x, x_5092.y, x_5092.z));
    let x_5095 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5094.x, x_5094.y, x_5094.z, x_5095.w);
    let x_5097 : vec3<f32> = u_xlat28;
    let x_5098 : vec4<f32> = u_xlat8;
    u_xlat4.x = dot(x_5097, vec3<f32>(x_5098.x, x_5098.y, x_5098.z));
    let x_5103 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_5103, 0.0f, 1.0f);
    let x_5106 : vec4<f32> = u_xlat9;
    let x_5108 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_5106.x, x_5106.y, x_5106.z), vec3<f32>(x_5108.x, x_5108.y, x_5108.z));
    let x_5111 : f32 = u_xlat80;
    u_xlat80 = clamp(x_5111, 0.0f, 1.0f);
    let x_5114 : f32 = u_xlat4.x;
    let x_5116 : f32 = u_xlat4.x;
    u_xlat4.x = (x_5114 * x_5116);
    let x_5120 : f32 = u_xlat4.x;
    let x_5122 : f32 = u_xlat26.x;
    u_xlat4.x = ((x_5120 * x_5122) + 1.00001001358032226562f);
    let x_5126 : f32 = u_xlat80;
    let x_5127 : f32 = u_xlat80;
    u_xlat80 = (x_5126 * x_5127);
    let x_5130 : f32 = u_xlat4.x;
    let x_5132 : f32 = u_xlat4.x;
    u_xlat4.x = (x_5130 * x_5132);
    let x_5135 : f32 = u_xlat80;
    u_xlat80 = max(x_5135, 0.10000000149011611938f);
    let x_5138 : f32 = u_xlat4.x;
    let x_5139 : f32 = u_xlat80;
    u_xlat4.x = (x_5138 * x_5139);
    let x_5142 : f32 = u_xlat81;
    let x_5144 : f32 = u_xlat4.x;
    u_xlat4.x = (x_5142 * x_5144);
    let x_5147 : f32 = u_xlat77;
    let x_5149 : f32 = u_xlat4.x;
    u_xlat4.x = (x_5147 / x_5149);
    let x_5152 : vec4<f32> = u_xlat4;
    let x_5155 : vec3<f32> = u_xlat2;
    let x_5156 : vec3<f32> = ((vec3<f32>(x_5152.x, x_5152.x, x_5152.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5155);
    let x_5157 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5156.x, x_5156.y, x_5156.z, x_5157.w);
    let x_5159 : vec4<f32> = u_xlat8;
    let x_5161 : vec4<f32> = u_xlat10;
    let x_5164 : vec3<f32> = u_xlat32;
    u_xlat32 = ((vec3<f32>(x_5159.x, x_5159.y, x_5159.z) * vec3<f32>(x_5161.x, x_5161.y, x_5161.z)) + x_5164);

    continuing {
      let x_5166 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5166 + bitcast<u32>(1i));
    }
  }
  let x_5168 : vec3<f32> = u_xlat29;
  let x_5169 : vec4<f32> = u_xlat7;
  let x_5172 : vec4<f32> = u_xlat5;
  u_xlat2 = ((x_5168 * vec3<f32>(x_5169.x, x_5169.x, x_5169.x)) + vec3<f32>(x_5172.x, x_5172.y, x_5172.z));
  let x_5175 : vec3<f32> = u_xlat32;
  let x_5176 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_5175 + x_5176);
  let x_5180 : vec4<f32> = vs_INTERP6;
  let x_5182 : vec3<f32> = u_xlat0;
  let x_5184 : vec3<f32> = u_xlat2;
  let x_5185 : vec3<f32> = ((vec3<f32>(x_5180.w, x_5180.w, x_5180.w) * x_5182) + x_5184);
  let x_5186 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5185.x, x_5185.y, x_5185.z, x_5186.w);
  let x_5188 : bool = u_xlatb51;
  if (x_5188) {
    let x_5193 : f32 = u_xlat1.x;
    x_5189 = x_5193;
  } else {
    x_5189 = 1.0f;
  }
  let x_5195 : f32 = x_5189;
  SV_Target0.w = x_5195;
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


