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

@group(0) @binding(3) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(7) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_53 : PGlobals;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_65 : UnityPerMaterial;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(4) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(8) var samplerTexture2D_D9BFD5F1 : sampler;

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

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlatb83 : bool;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat36 : vec2<f32>;

var<private> u_xlat68 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat30 : vec3<f32>;

var<private> u_xlat56 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu4 : u32;

var<private> u_xlati5 : i32;

var<private> u_xlati4 : i32;

@group(1) @binding(1) var<uniform> x_3529 : AdditionalLights;

var<private> u_xlati84 : i32;

var<private> u_xlatb85 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat86 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat87 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb86 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu81 : u32;

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
  var x_1834 : f32;
  var x_1846 : f32;
  var x_1858 : f32;
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
  var x_3682 : f32;
  var x_3691 : f32;
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
  var x_5129 : f32;
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
  let x_1810 : vec3<f32> = (vec3<f32>(x_1807.x, x_1807.x, x_1807.x) * x_1809);
  let x_1811 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1810.x, x_1810.y, x_1810.z, x_1811.w);
  let x_1814 : f32 = x_53.unity_OrthoParams.w;
  u_xlatb27.x = (x_1814 == 0.0f);
  let x_1817 : vec3<f32> = vs_INTERP8;
  let x_1821 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  u_xlat29 = (-(x_1817) + x_1821);
  let x_1823 : vec3<f32> = u_xlat29;
  let x_1824 : vec3<f32> = u_xlat29;
  u_xlat79 = dot(x_1823, x_1824);
  let x_1826 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_1826);
  let x_1828 : f32 = u_xlat79;
  let x_1830 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_1828, x_1828, x_1828) * x_1830);
  let x_1833 : bool = u_xlatb27.x;
  if (x_1833) {
    let x_1838 : f32 = u_xlat29.x;
    x_1834 = x_1838;
  } else {
    let x_1841 : f32 = x_53.unity_MatrixV[0i].z;
    x_1834 = x_1841;
  }
  let x_1842 : f32 = x_1834;
  u_xlat7.x = x_1842;
  let x_1845 : bool = u_xlatb27.x;
  if (x_1845) {
    let x_1850 : f32 = u_xlat29.y;
    x_1846 = x_1850;
  } else {
    let x_1853 : f32 = x_53.unity_MatrixV[1i].z;
    x_1846 = x_1853;
  }
  let x_1854 : f32 = x_1846;
  u_xlat7.y = x_1854;
  let x_1857 : bool = u_xlatb27.x;
  if (x_1857) {
    let x_1862 : f32 = u_xlat29.z;
    x_1858 = x_1862;
  } else {
    let x_1865 : f32 = x_53.unity_MatrixV[2i].z;
    x_1858 = x_1865;
  }
  let x_1866 : f32 = x_1858;
  u_xlat7.z = x_1866;
  u_xlat6.w = 1.0f;
  let x_1871 : vec4<f32> = x_1746.unity_SHAr;
  let x_1872 : vec4<f32> = u_xlat6;
  u_xlat8.x = dot(x_1871, x_1872);
  let x_1877 : vec4<f32> = x_1746.unity_SHAg;
  let x_1878 : vec4<f32> = u_xlat6;
  u_xlat8.y = dot(x_1877, x_1878);
  let x_1883 : vec4<f32> = x_1746.unity_SHAb;
  let x_1884 : vec4<f32> = u_xlat6;
  u_xlat8.z = dot(x_1883, x_1884);
  let x_1887 : vec4<f32> = u_xlat6;
  let x_1889 : vec4<f32> = u_xlat6;
  u_xlat9 = (vec4<f32>(x_1887.y, x_1887.z, x_1887.z, x_1887.x) * vec4<f32>(x_1889.x, x_1889.y, x_1889.z, x_1889.z));
  let x_1894 : vec4<f32> = x_1746.unity_SHBr;
  let x_1895 : vec4<f32> = u_xlat9;
  u_xlat10.x = dot(x_1894, x_1895);
  let x_1900 : vec4<f32> = x_1746.unity_SHBg;
  let x_1901 : vec4<f32> = u_xlat9;
  u_xlat10.y = dot(x_1900, x_1901);
  let x_1906 : vec4<f32> = x_1746.unity_SHBb;
  let x_1907 : vec4<f32> = u_xlat9;
  u_xlat10.z = dot(x_1906, x_1907);
  let x_1911 : f32 = u_xlat6.y;
  let x_1913 : f32 = u_xlat6.y;
  u_xlat27.x = (x_1911 * x_1913);
  let x_1917 : f32 = u_xlat6.x;
  let x_1919 : f32 = u_xlat6.x;
  let x_1922 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_1917 * x_1919) + -(x_1922));
  let x_1928 : vec4<f32> = x_1746.unity_SHC;
  let x_1930 : vec3<f32> = u_xlat27;
  let x_1933 : vec4<f32> = u_xlat10;
  u_xlat29 = ((vec3<f32>(x_1928.x, x_1928.y, x_1928.z) * vec3<f32>(x_1930.x, x_1930.x, x_1930.x)) + vec3<f32>(x_1933.x, x_1933.y, x_1933.z));
  let x_1936 : vec3<f32> = u_xlat29;
  let x_1937 : vec4<f32> = u_xlat8;
  u_xlat29 = (x_1936 + vec3<f32>(x_1937.x, x_1937.y, x_1937.z));
  let x_1940 : vec3<f32> = u_xlat29;
  u_xlat29 = max(x_1940, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1943 : f32 = u_xlat3.x;
  u_xlat3.x = x_1943;
  let x_1946 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1946, 0.0f, 1.0f);
  let x_1950 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_1950, 1.0f);
  let x_1953 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1953 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_1958 : f32 = u_xlat3.x;
  u_xlat27.x = (-(x_1958) + 1.0f);
  let x_1963 : f32 = u_xlat27.x;
  let x_1965 : f32 = u_xlat27.x;
  u_xlat79 = (x_1963 * x_1965);
  let x_1967 : f32 = u_xlat79;
  u_xlat79 = max(x_1967, 0.0078125f);
  let x_1970 : f32 = u_xlat79;
  let x_1971 : f32 = u_xlat79;
  u_xlat80 = (x_1970 * x_1971);
  let x_1974 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1974 + 0.04000002145767211914f);
  let x_1979 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_1979, 1.0f);
  let x_1982 : f32 = u_xlat79;
  u_xlat31.x = ((x_1982 * 4.0f) + 2.0f);
  let x_1987 : f32 = vs_INTERP6.w;
  u_xlat57.x = min(x_1987, 1.0f);
  let x_1990 : bool = u_xlatb78;
  if (x_1990) {
    let x_1994 : f32 = x_130.x_MainLightShadowParams.y;
    u_xlatb78 = (x_1994 == 1.0f);
    let x_1996 : bool = u_xlatb78;
    if (x_1996) {
      let x_1999 : vec4<f32> = u_xlat4;
      let x_2002 : vec4<f32> = x_130.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_1999.x, x_1999.y, x_1999.x, x_1999.y) + x_2002);
      let x_2005 : vec4<f32> = u_xlat8;
      let x_2006 : vec2<f32> = vec2<f32>(x_2005.x, x_2005.y);
      let x_2008 : f32 = u_xlat4.z;
      txVec30 = vec3<f32>(x_2006.x, x_2006.y, x_2008);
      let x_2015 : vec3<f32> = txVec30;
      let x_2017 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2015.xy, x_2015.z);
      u_xlat9.x = x_2017;
      let x_2020 : vec4<f32> = u_xlat8;
      let x_2021 : vec2<f32> = vec2<f32>(x_2020.z, x_2020.w);
      let x_2023 : f32 = u_xlat4.z;
      txVec31 = vec3<f32>(x_2021.x, x_2021.y, x_2023);
      let x_2030 : vec3<f32> = txVec31;
      let x_2032 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2030.xy, x_2030.z);
      u_xlat9.y = x_2032;
      let x_2034 : vec4<f32> = u_xlat4;
      let x_2037 : vec4<f32> = x_130.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_2034.x, x_2034.y, x_2034.x, x_2034.y) + x_2037);
      let x_2040 : vec4<f32> = u_xlat8;
      let x_2041 : vec2<f32> = vec2<f32>(x_2040.x, x_2040.y);
      let x_2043 : f32 = u_xlat4.z;
      txVec32 = vec3<f32>(x_2041.x, x_2041.y, x_2043);
      let x_2050 : vec3<f32> = txVec32;
      let x_2052 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2050.xy, x_2050.z);
      u_xlat9.z = x_2052;
      let x_2055 : vec4<f32> = u_xlat8;
      let x_2056 : vec2<f32> = vec2<f32>(x_2055.z, x_2055.w);
      let x_2058 : f32 = u_xlat4.z;
      txVec33 = vec3<f32>(x_2056.x, x_2056.y, x_2058);
      let x_2065 : vec3<f32> = txVec33;
      let x_2067 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2065.xy, x_2065.z);
      u_xlat9.w = x_2067;
      let x_2069 : vec4<f32> = u_xlat9;
      u_xlat78 = dot(x_2069, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_2074 : f32 = x_130.x_MainLightShadowParams.y;
      u_xlatb83 = (x_2074 == 2.0f);
      let x_2076 : bool = u_xlatb83;
      if (x_2076) {
        let x_2079 : vec4<f32> = u_xlat4;
        let x_2082 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2085 : vec2<f32> = ((vec2<f32>(x_2079.x, x_2079.y) * vec2<f32>(x_2082.z, x_2082.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2086 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2085.x, x_2085.y, x_2086.z, x_2086.w);
        let x_2088 : vec4<f32> = u_xlat8;
        let x_2090 : vec2<f32> = floor(vec2<f32>(x_2088.x, x_2088.y));
        let x_2091 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2090.x, x_2090.y, x_2091.z, x_2091.w);
        let x_2093 : vec4<f32> = u_xlat4;
        let x_2096 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2099 : vec4<f32> = u_xlat8;
        u_xlat60 = ((vec2<f32>(x_2093.x, x_2093.y) * vec2<f32>(x_2096.z, x_2096.w)) + -(vec2<f32>(x_2099.x, x_2099.y)));
        let x_2103 : vec2<f32> = u_xlat60;
        u_xlat9 = (vec4<f32>(x_2103.x, x_2103.x, x_2103.y, x_2103.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2106 : vec4<f32> = u_xlat9;
        let x_2108 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2106.x, x_2106.x, x_2106.z, x_2106.z) * vec4<f32>(x_2108.x, x_2108.x, x_2108.z, x_2108.z));
        let x_2111 : vec4<f32> = u_xlat10;
        let x_2113 : vec2<f32> = (vec2<f32>(x_2111.y, x_2111.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_2114 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2113.x, x_2114.y, x_2113.y, x_2114.w);
        let x_2116 : vec4<f32> = u_xlat10;
        let x_2119 : vec2<f32> = u_xlat60;
        let x_2121 : vec2<f32> = ((vec2<f32>(x_2116.x, x_2116.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2119));
        let x_2122 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2121.x, x_2121.y, x_2122.z, x_2122.w);
        let x_2125 : vec2<f32> = u_xlat60;
        u_xlat62 = (-(x_2125) + vec2<f32>(1.0f, 1.0f));
        let x_2128 : vec2<f32> = u_xlat60;
        let x_2129 : vec2<f32> = min(x_2128, vec2<f32>(0.0f, 0.0f));
        let x_2130 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2129.x, x_2129.y, x_2130.z, x_2130.w);
        let x_2132 : vec4<f32> = u_xlat11;
        let x_2135 : vec4<f32> = u_xlat11;
        let x_2138 : vec2<f32> = u_xlat62;
        let x_2139 : vec2<f32> = ((-(vec2<f32>(x_2132.x, x_2132.y)) * vec2<f32>(x_2135.x, x_2135.y)) + x_2138);
        let x_2140 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2139.x, x_2139.y, x_2140.z, x_2140.w);
        let x_2142 : vec2<f32> = u_xlat60;
        u_xlat60 = max(x_2142, vec2<f32>(0.0f, 0.0f));
        let x_2144 : vec2<f32> = u_xlat60;
        let x_2146 : vec2<f32> = u_xlat60;
        let x_2148 : vec4<f32> = u_xlat9;
        u_xlat60 = ((-(x_2144) * x_2146) + vec2<f32>(x_2148.y, x_2148.w));
        let x_2151 : vec4<f32> = u_xlat11;
        let x_2153 : vec2<f32> = (vec2<f32>(x_2151.x, x_2151.y) + vec2<f32>(1.0f, 1.0f));
        let x_2154 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2153.x, x_2153.y, x_2154.z, x_2154.w);
        let x_2156 : vec2<f32> = u_xlat60;
        u_xlat60 = (x_2156 + vec2<f32>(1.0f, 1.0f));
        let x_2158 : vec4<f32> = u_xlat10;
        let x_2160 : vec2<f32> = (vec2<f32>(x_2158.x, x_2158.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2161 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2160.x, x_2160.y, x_2161.z, x_2161.w);
        let x_2163 : vec2<f32> = u_xlat62;
        let x_2164 : vec2<f32> = (x_2163 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2165 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2164.x, x_2164.y, x_2165.z, x_2165.w);
        let x_2167 : vec4<f32> = u_xlat11;
        let x_2169 : vec2<f32> = (vec2<f32>(x_2167.x, x_2167.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2170 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2169.x, x_2169.y, x_2170.z, x_2170.w);
        let x_2172 : vec2<f32> = u_xlat60;
        let x_2173 : vec2<f32> = (x_2172 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2174 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2173.x, x_2173.y, x_2174.z, x_2174.w);
        let x_2176 : vec4<f32> = u_xlat9;
        u_xlat60 = (vec2<f32>(x_2176.y, x_2176.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2180 : f32 = u_xlat11.x;
        u_xlat12.z = x_2180;
        let x_2183 : f32 = u_xlat60.x;
        u_xlat12.w = x_2183;
        let x_2186 : f32 = u_xlat13.x;
        u_xlat10.z = x_2186;
        let x_2189 : f32 = u_xlat9.x;
        u_xlat10.w = x_2189;
        let x_2191 : vec4<f32> = u_xlat10;
        let x_2193 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_2191.z, x_2191.w, x_2191.x, x_2191.z) + vec4<f32>(x_2193.z, x_2193.w, x_2193.x, x_2193.z));
        let x_2197 : f32 = u_xlat12.y;
        u_xlat11.z = x_2197;
        let x_2200 : f32 = u_xlat60.y;
        u_xlat11.w = x_2200;
        let x_2203 : f32 = u_xlat10.y;
        u_xlat13.z = x_2203;
        let x_2206 : f32 = u_xlat9.z;
        u_xlat13.w = x_2206;
        let x_2208 : vec4<f32> = u_xlat11;
        let x_2210 : vec4<f32> = u_xlat13;
        let x_2212 : vec3<f32> = (vec3<f32>(x_2208.z, x_2208.y, x_2208.w) + vec3<f32>(x_2210.z, x_2210.y, x_2210.w));
        let x_2213 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2212.x, x_2212.y, x_2212.z, x_2213.w);
        let x_2215 : vec4<f32> = u_xlat10;
        let x_2217 : vec4<f32> = u_xlat14;
        let x_2219 : vec3<f32> = (vec3<f32>(x_2215.x, x_2215.z, x_2215.w) / vec3<f32>(x_2217.z, x_2217.w, x_2217.y));
        let x_2220 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2219.x, x_2219.y, x_2219.z, x_2220.w);
        let x_2222 : vec4<f32> = u_xlat10;
        let x_2224 : vec3<f32> = (vec3<f32>(x_2222.x, x_2222.y, x_2222.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2225 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2224.x, x_2224.y, x_2224.z, x_2225.w);
        let x_2227 : vec4<f32> = u_xlat13;
        let x_2229 : vec4<f32> = u_xlat9;
        let x_2231 : vec3<f32> = (vec3<f32>(x_2227.z, x_2227.y, x_2227.w) / vec3<f32>(x_2229.x, x_2229.y, x_2229.z));
        let x_2232 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2231.x, x_2231.y, x_2231.z, x_2232.w);
        let x_2234 : vec4<f32> = u_xlat11;
        let x_2236 : vec3<f32> = (vec3<f32>(x_2234.x, x_2234.y, x_2234.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2237 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2236.x, x_2236.y, x_2236.z, x_2237.w);
        let x_2239 : vec4<f32> = u_xlat10;
        let x_2242 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2244 : vec3<f32> = (vec3<f32>(x_2239.y, x_2239.x, x_2239.z) * vec3<f32>(x_2242.x, x_2242.x, x_2242.x));
        let x_2245 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2244.x, x_2244.y, x_2244.z, x_2245.w);
        let x_2247 : vec4<f32> = u_xlat11;
        let x_2250 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2252 : vec3<f32> = (vec3<f32>(x_2247.x, x_2247.y, x_2247.z) * vec3<f32>(x_2250.y, x_2250.y, x_2250.y));
        let x_2253 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2252.x, x_2252.y, x_2252.z, x_2253.w);
        let x_2256 : f32 = u_xlat11.x;
        u_xlat10.w = x_2256;
        let x_2258 : vec4<f32> = u_xlat8;
        let x_2261 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2264 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_2258.x, x_2258.y, x_2258.x, x_2258.y) * vec4<f32>(x_2261.x, x_2261.y, x_2261.x, x_2261.y)) + vec4<f32>(x_2264.y, x_2264.w, x_2264.x, x_2264.w));
        let x_2267 : vec4<f32> = u_xlat8;
        let x_2270 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2273 : vec4<f32> = u_xlat10;
        u_xlat60 = ((vec2<f32>(x_2267.x, x_2267.y) * vec2<f32>(x_2270.x, x_2270.y)) + vec2<f32>(x_2273.z, x_2273.w));
        let x_2277 : f32 = u_xlat10.y;
        u_xlat11.w = x_2277;
        let x_2279 : vec4<f32> = u_xlat11;
        let x_2280 : vec2<f32> = vec2<f32>(x_2279.y, x_2279.z);
        let x_2281 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2281.x, x_2280.x, x_2281.z, x_2280.y);
        let x_2283 : vec4<f32> = u_xlat8;
        let x_2286 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2289 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_2283.x, x_2283.y, x_2283.x, x_2283.y) * vec4<f32>(x_2286.x, x_2286.y, x_2286.x, x_2286.y)) + vec4<f32>(x_2289.x, x_2289.y, x_2289.z, x_2289.y));
        let x_2292 : vec4<f32> = u_xlat8;
        let x_2295 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2298 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_2292.x, x_2292.y, x_2292.x, x_2292.y) * vec4<f32>(x_2295.x, x_2295.y, x_2295.x, x_2295.y)) + vec4<f32>(x_2298.w, x_2298.y, x_2298.w, x_2298.z));
        let x_2301 : vec4<f32> = u_xlat8;
        let x_2304 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2307 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2301.x, x_2301.y, x_2301.x, x_2301.y) * vec4<f32>(x_2304.x, x_2304.y, x_2304.x, x_2304.y)) + vec4<f32>(x_2307.x, x_2307.w, x_2307.z, x_2307.w));
        let x_2310 : vec4<f32> = u_xlat9;
        let x_2312 : vec4<f32> = u_xlat14;
        u_xlat15 = (vec4<f32>(x_2310.x, x_2310.x, x_2310.x, x_2310.y) * vec4<f32>(x_2312.z, x_2312.w, x_2312.y, x_2312.z));
        let x_2315 : vec4<f32> = u_xlat9;
        let x_2317 : vec4<f32> = u_xlat14;
        u_xlat16 = (vec4<f32>(x_2315.y, x_2315.y, x_2315.z, x_2315.z) * x_2317);
        let x_2321 : f32 = u_xlat9.z;
        let x_2323 : f32 = u_xlat14.y;
        u_xlat83 = (x_2321 * x_2323);
        let x_2326 : vec4<f32> = u_xlat12;
        let x_2327 : vec2<f32> = vec2<f32>(x_2326.x, x_2326.y);
        let x_2329 : f32 = u_xlat4.z;
        txVec34 = vec3<f32>(x_2327.x, x_2327.y, x_2329);
        let x_2337 : vec3<f32> = txVec34;
        let x_2339 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2337.xy, x_2337.z);
        u_xlat84 = x_2339;
        let x_2341 : vec4<f32> = u_xlat12;
        let x_2342 : vec2<f32> = vec2<f32>(x_2341.z, x_2341.w);
        let x_2344 : f32 = u_xlat4.z;
        txVec35 = vec3<f32>(x_2342.x, x_2342.y, x_2344);
        let x_2352 : vec3<f32> = txVec35;
        let x_2354 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2352.xy, x_2352.z);
        u_xlat85 = x_2354;
        let x_2355 : f32 = u_xlat85;
        let x_2357 : f32 = u_xlat15.y;
        u_xlat85 = (x_2355 * x_2357);
        let x_2360 : f32 = u_xlat15.x;
        let x_2361 : f32 = u_xlat84;
        let x_2363 : f32 = u_xlat85;
        u_xlat84 = ((x_2360 * x_2361) + x_2363);
        let x_2366 : vec2<f32> = u_xlat60;
        let x_2368 : f32 = u_xlat4.z;
        txVec36 = vec3<f32>(x_2366.x, x_2366.y, x_2368);
        let x_2375 : vec3<f32> = txVec36;
        let x_2377 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2375.xy, x_2375.z);
        u_xlat85 = x_2377;
        let x_2379 : f32 = u_xlat15.z;
        let x_2380 : f32 = u_xlat85;
        let x_2382 : f32 = u_xlat84;
        u_xlat84 = ((x_2379 * x_2380) + x_2382);
        let x_2385 : vec4<f32> = u_xlat11;
        let x_2386 : vec2<f32> = vec2<f32>(x_2385.x, x_2385.y);
        let x_2388 : f32 = u_xlat4.z;
        txVec37 = vec3<f32>(x_2386.x, x_2386.y, x_2388);
        let x_2395 : vec3<f32> = txVec37;
        let x_2397 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2395.xy, x_2395.z);
        u_xlat85 = x_2397;
        let x_2399 : f32 = u_xlat15.w;
        let x_2400 : f32 = u_xlat85;
        let x_2402 : f32 = u_xlat84;
        u_xlat84 = ((x_2399 * x_2400) + x_2402);
        let x_2405 : vec4<f32> = u_xlat13;
        let x_2406 : vec2<f32> = vec2<f32>(x_2405.x, x_2405.y);
        let x_2408 : f32 = u_xlat4.z;
        txVec38 = vec3<f32>(x_2406.x, x_2406.y, x_2408);
        let x_2415 : vec3<f32> = txVec38;
        let x_2417 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2415.xy, x_2415.z);
        u_xlat85 = x_2417;
        let x_2419 : f32 = u_xlat16.x;
        let x_2420 : f32 = u_xlat85;
        let x_2422 : f32 = u_xlat84;
        u_xlat84 = ((x_2419 * x_2420) + x_2422);
        let x_2425 : vec4<f32> = u_xlat13;
        let x_2426 : vec2<f32> = vec2<f32>(x_2425.z, x_2425.w);
        let x_2428 : f32 = u_xlat4.z;
        txVec39 = vec3<f32>(x_2426.x, x_2426.y, x_2428);
        let x_2435 : vec3<f32> = txVec39;
        let x_2437 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2435.xy, x_2435.z);
        u_xlat85 = x_2437;
        let x_2439 : f32 = u_xlat16.y;
        let x_2440 : f32 = u_xlat85;
        let x_2442 : f32 = u_xlat84;
        u_xlat84 = ((x_2439 * x_2440) + x_2442);
        let x_2445 : vec4<f32> = u_xlat11;
        let x_2446 : vec2<f32> = vec2<f32>(x_2445.z, x_2445.w);
        let x_2448 : f32 = u_xlat4.z;
        txVec40 = vec3<f32>(x_2446.x, x_2446.y, x_2448);
        let x_2455 : vec3<f32> = txVec40;
        let x_2457 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2455.xy, x_2455.z);
        u_xlat85 = x_2457;
        let x_2459 : f32 = u_xlat16.z;
        let x_2460 : f32 = u_xlat85;
        let x_2462 : f32 = u_xlat84;
        u_xlat84 = ((x_2459 * x_2460) + x_2462);
        let x_2465 : vec4<f32> = u_xlat10;
        let x_2466 : vec2<f32> = vec2<f32>(x_2465.x, x_2465.y);
        let x_2468 : f32 = u_xlat4.z;
        txVec41 = vec3<f32>(x_2466.x, x_2466.y, x_2468);
        let x_2475 : vec3<f32> = txVec41;
        let x_2477 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2475.xy, x_2475.z);
        u_xlat85 = x_2477;
        let x_2479 : f32 = u_xlat16.w;
        let x_2480 : f32 = u_xlat85;
        let x_2482 : f32 = u_xlat84;
        u_xlat84 = ((x_2479 * x_2480) + x_2482);
        let x_2485 : vec4<f32> = u_xlat10;
        let x_2486 : vec2<f32> = vec2<f32>(x_2485.z, x_2485.w);
        let x_2488 : f32 = u_xlat4.z;
        txVec42 = vec3<f32>(x_2486.x, x_2486.y, x_2488);
        let x_2495 : vec3<f32> = txVec42;
        let x_2497 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2495.xy, x_2495.z);
        u_xlat85 = x_2497;
        let x_2498 : f32 = u_xlat83;
        let x_2499 : f32 = u_xlat85;
        let x_2501 : f32 = u_xlat84;
        u_xlat78 = ((x_2498 * x_2499) + x_2501);
      } else {
        let x_2504 : vec4<f32> = u_xlat4;
        let x_2507 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2510 : vec2<f32> = ((vec2<f32>(x_2504.x, x_2504.y) * vec2<f32>(x_2507.z, x_2507.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2511 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2510.x, x_2510.y, x_2511.z, x_2511.w);
        let x_2513 : vec4<f32> = u_xlat8;
        let x_2515 : vec2<f32> = floor(vec2<f32>(x_2513.x, x_2513.y));
        let x_2516 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2515.x, x_2515.y, x_2516.z, x_2516.w);
        let x_2518 : vec4<f32> = u_xlat4;
        let x_2521 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2524 : vec4<f32> = u_xlat8;
        u_xlat60 = ((vec2<f32>(x_2518.x, x_2518.y) * vec2<f32>(x_2521.z, x_2521.w)) + -(vec2<f32>(x_2524.x, x_2524.y)));
        let x_2528 : vec2<f32> = u_xlat60;
        u_xlat9 = (vec4<f32>(x_2528.x, x_2528.x, x_2528.y, x_2528.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2531 : vec4<f32> = u_xlat9;
        let x_2533 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2531.x, x_2531.x, x_2531.z, x_2531.z) * vec4<f32>(x_2533.x, x_2533.x, x_2533.z, x_2533.z));
        let x_2536 : vec4<f32> = u_xlat10;
        let x_2538 : vec2<f32> = (vec2<f32>(x_2536.y, x_2536.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2539 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2539.x, x_2538.x, x_2539.z, x_2538.y);
        let x_2541 : vec4<f32> = u_xlat10;
        let x_2544 : vec2<f32> = u_xlat60;
        let x_2546 : vec2<f32> = ((vec2<f32>(x_2541.x, x_2541.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2544));
        let x_2547 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2546.x, x_2547.y, x_2546.y, x_2547.w);
        let x_2549 : vec2<f32> = u_xlat60;
        let x_2551 : vec2<f32> = (-(x_2549) + vec2<f32>(1.0f, 1.0f));
        let x_2552 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2551.x, x_2551.y, x_2552.z, x_2552.w);
        let x_2554 : vec2<f32> = u_xlat60;
        u_xlat62 = min(x_2554, vec2<f32>(0.0f, 0.0f));
        let x_2556 : vec2<f32> = u_xlat62;
        let x_2558 : vec2<f32> = u_xlat62;
        let x_2560 : vec4<f32> = u_xlat10;
        let x_2562 : vec2<f32> = ((-(x_2556) * x_2558) + vec2<f32>(x_2560.x, x_2560.y));
        let x_2563 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2562.x, x_2562.y, x_2563.z, x_2563.w);
        let x_2565 : vec2<f32> = u_xlat60;
        u_xlat62 = max(x_2565, vec2<f32>(0.0f, 0.0f));
        let x_2568 : vec2<f32> = u_xlat62;
        let x_2570 : vec2<f32> = u_xlat62;
        let x_2572 : vec4<f32> = u_xlat9;
        let x_2574 : vec2<f32> = ((-(x_2568) * x_2570) + vec2<f32>(x_2572.y, x_2572.w));
        let x_2575 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_2574.x, x_2575.y, x_2574.y);
        let x_2577 : vec4<f32> = u_xlat10;
        let x_2579 : vec2<f32> = (vec2<f32>(x_2577.x, x_2577.y) + vec2<f32>(2.0f, 2.0f));
        let x_2580 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2579.x, x_2579.y, x_2580.z, x_2580.w);
        let x_2582 : vec3<f32> = u_xlat35;
        let x_2584 : vec2<f32> = (vec2<f32>(x_2582.x, x_2582.z) + vec2<f32>(2.0f, 2.0f));
        let x_2585 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2585.x, x_2584.x, x_2585.z, x_2584.y);
        let x_2588 : f32 = u_xlat9.y;
        u_xlat12.z = (x_2588 * 0.08163200318813323975f);
        let x_2591 : vec4<f32> = u_xlat9;
        let x_2593 : vec3<f32> = (vec3<f32>(x_2591.z, x_2591.x, x_2591.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_2594 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2593.x, x_2593.y, x_2593.z, x_2594.w);
        let x_2596 : vec4<f32> = u_xlat10;
        let x_2598 : vec2<f32> = (vec2<f32>(x_2596.x, x_2596.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2599 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2598.x, x_2598.y, x_2599.z, x_2599.w);
        let x_2602 : f32 = u_xlat13.y;
        u_xlat12.x = x_2602;
        let x_2604 : vec2<f32> = u_xlat60;
        let x_2607 : vec2<f32> = ((vec2<f32>(x_2604.x, x_2604.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2608 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2608.x, x_2607.x, x_2608.z, x_2607.y);
        let x_2610 : vec2<f32> = u_xlat60;
        let x_2613 : vec2<f32> = ((vec2<f32>(x_2610.x, x_2610.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2614 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2613.x, x_2614.y, x_2613.y, x_2614.w);
        let x_2617 : f32 = u_xlat9.x;
        u_xlat10.y = x_2617;
        let x_2620 : f32 = u_xlat11.y;
        u_xlat10.w = x_2620;
        let x_2622 : vec4<f32> = u_xlat10;
        let x_2623 : vec4<f32> = u_xlat12;
        u_xlat12 = (x_2622 + x_2623);
        let x_2625 : vec2<f32> = u_xlat60;
        let x_2628 : vec2<f32> = ((vec2<f32>(x_2625.y, x_2625.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2629 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2629.x, x_2628.x, x_2629.z, x_2628.y);
        let x_2631 : vec2<f32> = u_xlat60;
        let x_2634 : vec2<f32> = ((vec2<f32>(x_2631.y, x_2631.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2635 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2634.x, x_2635.y, x_2634.y, x_2635.w);
        let x_2638 : f32 = u_xlat9.y;
        u_xlat11.y = x_2638;
        let x_2640 : vec4<f32> = u_xlat11;
        let x_2641 : vec4<f32> = u_xlat13;
        u_xlat9 = (x_2640 + x_2641);
        let x_2643 : vec4<f32> = u_xlat10;
        let x_2644 : vec4<f32> = u_xlat12;
        u_xlat10 = (x_2643 / x_2644);
        let x_2646 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2646 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2648 : vec4<f32> = u_xlat11;
        let x_2649 : vec4<f32> = u_xlat9;
        u_xlat11 = (x_2648 / x_2649);
        let x_2651 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_2651 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2653 : vec4<f32> = u_xlat10;
        let x_2656 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_2653.w, x_2653.x, x_2653.y, x_2653.z) * vec4<f32>(x_2656.x, x_2656.x, x_2656.x, x_2656.x));
        let x_2659 : vec4<f32> = u_xlat11;
        let x_2662 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_2659.x, x_2659.w, x_2659.y, x_2659.z) * vec4<f32>(x_2662.y, x_2662.y, x_2662.y, x_2662.y));
        let x_2665 : vec4<f32> = u_xlat10;
        let x_2666 : vec3<f32> = vec3<f32>(x_2665.y, x_2665.z, x_2665.w);
        let x_2667 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2666.x, x_2667.y, x_2666.y, x_2666.z);
        let x_2670 : f32 = u_xlat11.x;
        u_xlat13.y = x_2670;
        let x_2672 : vec4<f32> = u_xlat8;
        let x_2675 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2678 : vec4<f32> = u_xlat13;
        u_xlat14 = ((vec4<f32>(x_2672.x, x_2672.y, x_2672.x, x_2672.y) * vec4<f32>(x_2675.x, x_2675.y, x_2675.x, x_2675.y)) + vec4<f32>(x_2678.x, x_2678.y, x_2678.z, x_2678.y));
        let x_2681 : vec4<f32> = u_xlat8;
        let x_2684 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2687 : vec4<f32> = u_xlat13;
        u_xlat60 = ((vec2<f32>(x_2681.x, x_2681.y) * vec2<f32>(x_2684.x, x_2684.y)) + vec2<f32>(x_2687.w, x_2687.y));
        let x_2691 : f32 = u_xlat13.y;
        u_xlat10.y = x_2691;
        let x_2694 : f32 = u_xlat11.z;
        u_xlat13.y = x_2694;
        let x_2696 : vec4<f32> = u_xlat8;
        let x_2699 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2702 : vec4<f32> = u_xlat13;
        u_xlat15 = ((vec4<f32>(x_2696.x, x_2696.y, x_2696.x, x_2696.y) * vec4<f32>(x_2699.x, x_2699.y, x_2699.x, x_2699.y)) + vec4<f32>(x_2702.x, x_2702.y, x_2702.z, x_2702.y));
        let x_2705 : vec4<f32> = u_xlat8;
        let x_2708 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2711 : vec4<f32> = u_xlat13;
        let x_2713 : vec2<f32> = ((vec2<f32>(x_2705.x, x_2705.y) * vec2<f32>(x_2708.x, x_2708.y)) + vec2<f32>(x_2711.w, x_2711.y));
        let x_2714 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_2713.x, x_2713.y, x_2714.z, x_2714.w);
        let x_2717 : f32 = u_xlat13.y;
        u_xlat10.z = x_2717;
        let x_2719 : vec4<f32> = u_xlat8;
        let x_2722 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2725 : vec4<f32> = u_xlat10;
        u_xlat17 = ((vec4<f32>(x_2719.x, x_2719.y, x_2719.x, x_2719.y) * vec4<f32>(x_2722.x, x_2722.y, x_2722.x, x_2722.y)) + vec4<f32>(x_2725.x, x_2725.y, x_2725.x, x_2725.z));
        let x_2729 : f32 = u_xlat11.w;
        u_xlat13.y = x_2729;
        let x_2731 : vec4<f32> = u_xlat8;
        let x_2734 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2737 : vec4<f32> = u_xlat13;
        u_xlat18 = ((vec4<f32>(x_2731.x, x_2731.y, x_2731.x, x_2731.y) * vec4<f32>(x_2734.x, x_2734.y, x_2734.x, x_2734.y)) + vec4<f32>(x_2737.x, x_2737.y, x_2737.z, x_2737.y));
        let x_2741 : vec4<f32> = u_xlat8;
        let x_2744 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2747 : vec4<f32> = u_xlat13;
        u_xlat36 = ((vec2<f32>(x_2741.x, x_2741.y) * vec2<f32>(x_2744.x, x_2744.y)) + vec2<f32>(x_2747.w, x_2747.y));
        let x_2751 : f32 = u_xlat13.y;
        u_xlat10.w = x_2751;
        let x_2754 : vec4<f32> = u_xlat8;
        let x_2757 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2760 : vec4<f32> = u_xlat10;
        u_xlat68 = ((vec2<f32>(x_2754.x, x_2754.y) * vec2<f32>(x_2757.x, x_2757.y)) + vec2<f32>(x_2760.x, x_2760.w));
        let x_2763 : vec4<f32> = u_xlat13;
        let x_2764 : vec3<f32> = vec3<f32>(x_2763.x, x_2763.z, x_2763.w);
        let x_2765 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2764.x, x_2765.y, x_2764.y, x_2764.z);
        let x_2767 : vec4<f32> = u_xlat8;
        let x_2770 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2773 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_2767.x, x_2767.y, x_2767.x, x_2767.y) * vec4<f32>(x_2770.x, x_2770.y, x_2770.x, x_2770.y)) + vec4<f32>(x_2773.x, x_2773.y, x_2773.z, x_2773.y));
        let x_2777 : vec4<f32> = u_xlat8;
        let x_2780 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2783 : vec4<f32> = u_xlat11;
        u_xlat63 = ((vec2<f32>(x_2777.x, x_2777.y) * vec2<f32>(x_2780.x, x_2780.y)) + vec2<f32>(x_2783.w, x_2783.y));
        let x_2787 : f32 = u_xlat10.x;
        u_xlat11.x = x_2787;
        let x_2789 : vec4<f32> = u_xlat8;
        let x_2792 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2795 : vec4<f32> = u_xlat11;
        let x_2797 : vec2<f32> = ((vec2<f32>(x_2789.x, x_2789.y) * vec2<f32>(x_2792.x, x_2792.y)) + vec2<f32>(x_2795.x, x_2795.y));
        let x_2798 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2797.x, x_2797.y, x_2798.z, x_2798.w);
        let x_2801 : vec4<f32> = u_xlat9;
        let x_2803 : vec4<f32> = u_xlat12;
        u_xlat19 = (vec4<f32>(x_2801.x, x_2801.x, x_2801.x, x_2801.x) * x_2803);
        let x_2806 : vec4<f32> = u_xlat9;
        let x_2808 : vec4<f32> = u_xlat12;
        u_xlat20 = (vec4<f32>(x_2806.y, x_2806.y, x_2806.y, x_2806.y) * x_2808);
        let x_2811 : vec4<f32> = u_xlat9;
        let x_2813 : vec4<f32> = u_xlat12;
        u_xlat21 = (vec4<f32>(x_2811.z, x_2811.z, x_2811.z, x_2811.z) * x_2813);
        let x_2815 : vec4<f32> = u_xlat9;
        let x_2817 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_2815.w, x_2815.w, x_2815.w, x_2815.w) * x_2817);
        let x_2820 : vec4<f32> = u_xlat14;
        let x_2821 : vec2<f32> = vec2<f32>(x_2820.x, x_2820.y);
        let x_2823 : f32 = u_xlat4.z;
        txVec43 = vec3<f32>(x_2821.x, x_2821.y, x_2823);
        let x_2830 : vec3<f32> = txVec43;
        let x_2832 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2830.xy, x_2830.z);
        u_xlat83 = x_2832;
        let x_2834 : vec4<f32> = u_xlat14;
        let x_2835 : vec2<f32> = vec2<f32>(x_2834.z, x_2834.w);
        let x_2837 : f32 = u_xlat4.z;
        txVec44 = vec3<f32>(x_2835.x, x_2835.y, x_2837);
        let x_2844 : vec3<f32> = txVec44;
        let x_2846 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2844.xy, x_2844.z);
        u_xlat84 = x_2846;
        let x_2847 : f32 = u_xlat84;
        let x_2849 : f32 = u_xlat19.y;
        u_xlat84 = (x_2847 * x_2849);
        let x_2852 : f32 = u_xlat19.x;
        let x_2853 : f32 = u_xlat83;
        let x_2855 : f32 = u_xlat84;
        u_xlat83 = ((x_2852 * x_2853) + x_2855);
        let x_2858 : vec2<f32> = u_xlat60;
        let x_2860 : f32 = u_xlat4.z;
        txVec45 = vec3<f32>(x_2858.x, x_2858.y, x_2860);
        let x_2867 : vec3<f32> = txVec45;
        let x_2869 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2867.xy, x_2867.z);
        u_xlat84 = x_2869;
        let x_2871 : f32 = u_xlat19.z;
        let x_2872 : f32 = u_xlat84;
        let x_2874 : f32 = u_xlat83;
        u_xlat83 = ((x_2871 * x_2872) + x_2874);
        let x_2877 : vec4<f32> = u_xlat17;
        let x_2878 : vec2<f32> = vec2<f32>(x_2877.x, x_2877.y);
        let x_2880 : f32 = u_xlat4.z;
        txVec46 = vec3<f32>(x_2878.x, x_2878.y, x_2880);
        let x_2887 : vec3<f32> = txVec46;
        let x_2889 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2887.xy, x_2887.z);
        u_xlat84 = x_2889;
        let x_2891 : f32 = u_xlat19.w;
        let x_2892 : f32 = u_xlat84;
        let x_2894 : f32 = u_xlat83;
        u_xlat83 = ((x_2891 * x_2892) + x_2894);
        let x_2897 : vec4<f32> = u_xlat15;
        let x_2898 : vec2<f32> = vec2<f32>(x_2897.x, x_2897.y);
        let x_2900 : f32 = u_xlat4.z;
        txVec47 = vec3<f32>(x_2898.x, x_2898.y, x_2900);
        let x_2907 : vec3<f32> = txVec47;
        let x_2909 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2907.xy, x_2907.z);
        u_xlat84 = x_2909;
        let x_2911 : f32 = u_xlat20.x;
        let x_2912 : f32 = u_xlat84;
        let x_2914 : f32 = u_xlat83;
        u_xlat83 = ((x_2911 * x_2912) + x_2914);
        let x_2917 : vec4<f32> = u_xlat15;
        let x_2918 : vec2<f32> = vec2<f32>(x_2917.z, x_2917.w);
        let x_2920 : f32 = u_xlat4.z;
        txVec48 = vec3<f32>(x_2918.x, x_2918.y, x_2920);
        let x_2927 : vec3<f32> = txVec48;
        let x_2929 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2927.xy, x_2927.z);
        u_xlat84 = x_2929;
        let x_2931 : f32 = u_xlat20.y;
        let x_2932 : f32 = u_xlat84;
        let x_2934 : f32 = u_xlat83;
        u_xlat83 = ((x_2931 * x_2932) + x_2934);
        let x_2937 : vec4<f32> = u_xlat16;
        let x_2938 : vec2<f32> = vec2<f32>(x_2937.x, x_2937.y);
        let x_2940 : f32 = u_xlat4.z;
        txVec49 = vec3<f32>(x_2938.x, x_2938.y, x_2940);
        let x_2947 : vec3<f32> = txVec49;
        let x_2949 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2947.xy, x_2947.z);
        u_xlat84 = x_2949;
        let x_2951 : f32 = u_xlat20.z;
        let x_2952 : f32 = u_xlat84;
        let x_2954 : f32 = u_xlat83;
        u_xlat83 = ((x_2951 * x_2952) + x_2954);
        let x_2957 : vec4<f32> = u_xlat17;
        let x_2958 : vec2<f32> = vec2<f32>(x_2957.z, x_2957.w);
        let x_2960 : f32 = u_xlat4.z;
        txVec50 = vec3<f32>(x_2958.x, x_2958.y, x_2960);
        let x_2967 : vec3<f32> = txVec50;
        let x_2969 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2967.xy, x_2967.z);
        u_xlat84 = x_2969;
        let x_2971 : f32 = u_xlat20.w;
        let x_2972 : f32 = u_xlat84;
        let x_2974 : f32 = u_xlat83;
        u_xlat83 = ((x_2971 * x_2972) + x_2974);
        let x_2977 : vec4<f32> = u_xlat18;
        let x_2978 : vec2<f32> = vec2<f32>(x_2977.x, x_2977.y);
        let x_2980 : f32 = u_xlat4.z;
        txVec51 = vec3<f32>(x_2978.x, x_2978.y, x_2980);
        let x_2987 : vec3<f32> = txVec51;
        let x_2989 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2987.xy, x_2987.z);
        u_xlat84 = x_2989;
        let x_2991 : f32 = u_xlat21.x;
        let x_2992 : f32 = u_xlat84;
        let x_2994 : f32 = u_xlat83;
        u_xlat83 = ((x_2991 * x_2992) + x_2994);
        let x_2997 : vec4<f32> = u_xlat18;
        let x_2998 : vec2<f32> = vec2<f32>(x_2997.z, x_2997.w);
        let x_3000 : f32 = u_xlat4.z;
        txVec52 = vec3<f32>(x_2998.x, x_2998.y, x_3000);
        let x_3007 : vec3<f32> = txVec52;
        let x_3009 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3007.xy, x_3007.z);
        u_xlat84 = x_3009;
        let x_3011 : f32 = u_xlat21.y;
        let x_3012 : f32 = u_xlat84;
        let x_3014 : f32 = u_xlat83;
        u_xlat83 = ((x_3011 * x_3012) + x_3014);
        let x_3017 : vec2<f32> = u_xlat36;
        let x_3019 : f32 = u_xlat4.z;
        txVec53 = vec3<f32>(x_3017.x, x_3017.y, x_3019);
        let x_3026 : vec3<f32> = txVec53;
        let x_3028 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3026.xy, x_3026.z);
        u_xlat84 = x_3028;
        let x_3030 : f32 = u_xlat21.z;
        let x_3031 : f32 = u_xlat84;
        let x_3033 : f32 = u_xlat83;
        u_xlat83 = ((x_3030 * x_3031) + x_3033);
        let x_3036 : vec2<f32> = u_xlat68;
        let x_3038 : f32 = u_xlat4.z;
        txVec54 = vec3<f32>(x_3036.x, x_3036.y, x_3038);
        let x_3045 : vec3<f32> = txVec54;
        let x_3047 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3045.xy, x_3045.z);
        u_xlat84 = x_3047;
        let x_3049 : f32 = u_xlat21.w;
        let x_3050 : f32 = u_xlat84;
        let x_3052 : f32 = u_xlat83;
        u_xlat83 = ((x_3049 * x_3050) + x_3052);
        let x_3055 : vec4<f32> = u_xlat13;
        let x_3056 : vec2<f32> = vec2<f32>(x_3055.x, x_3055.y);
        let x_3058 : f32 = u_xlat4.z;
        txVec55 = vec3<f32>(x_3056.x, x_3056.y, x_3058);
        let x_3065 : vec3<f32> = txVec55;
        let x_3067 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3065.xy, x_3065.z);
        u_xlat84 = x_3067;
        let x_3069 : f32 = u_xlat9.x;
        let x_3070 : f32 = u_xlat84;
        let x_3072 : f32 = u_xlat83;
        u_xlat83 = ((x_3069 * x_3070) + x_3072);
        let x_3075 : vec4<f32> = u_xlat13;
        let x_3076 : vec2<f32> = vec2<f32>(x_3075.z, x_3075.w);
        let x_3078 : f32 = u_xlat4.z;
        txVec56 = vec3<f32>(x_3076.x, x_3076.y, x_3078);
        let x_3085 : vec3<f32> = txVec56;
        let x_3087 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3085.xy, x_3085.z);
        u_xlat84 = x_3087;
        let x_3089 : f32 = u_xlat9.y;
        let x_3090 : f32 = u_xlat84;
        let x_3092 : f32 = u_xlat83;
        u_xlat83 = ((x_3089 * x_3090) + x_3092);
        let x_3095 : vec2<f32> = u_xlat63;
        let x_3097 : f32 = u_xlat4.z;
        txVec57 = vec3<f32>(x_3095.x, x_3095.y, x_3097);
        let x_3104 : vec3<f32> = txVec57;
        let x_3106 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3104.xy, x_3104.z);
        u_xlat84 = x_3106;
        let x_3108 : f32 = u_xlat9.z;
        let x_3109 : f32 = u_xlat84;
        let x_3111 : f32 = u_xlat83;
        u_xlat83 = ((x_3108 * x_3109) + x_3111);
        let x_3114 : vec4<f32> = u_xlat8;
        let x_3115 : vec2<f32> = vec2<f32>(x_3114.x, x_3114.y);
        let x_3117 : f32 = u_xlat4.z;
        txVec58 = vec3<f32>(x_3115.x, x_3115.y, x_3117);
        let x_3124 : vec3<f32> = txVec58;
        let x_3126 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3124.xy, x_3124.z);
        u_xlat84 = x_3126;
        let x_3128 : f32 = u_xlat9.w;
        let x_3129 : f32 = u_xlat84;
        let x_3131 : f32 = u_xlat83;
        u_xlat78 = ((x_3128 * x_3129) + x_3131);
      }
    }
  } else {
    let x_3135 : vec4<f32> = u_xlat4;
    let x_3136 : vec2<f32> = vec2<f32>(x_3135.x, x_3135.y);
    let x_3138 : f32 = u_xlat4.z;
    txVec59 = vec3<f32>(x_3136.x, x_3136.y, x_3138);
    let x_3145 : vec3<f32> = txVec59;
    let x_3147 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3145.xy, x_3145.z);
    u_xlat78 = x_3147;
  }
  let x_3148 : f32 = u_xlat78;
  let x_3150 : f32 = x_130.x_MainLightShadowParams.x;
  let x_3152 : f32 = u_xlat82;
  u_xlat78 = ((x_3148 * x_3150) + x_3152);
  let x_3154 : bool = u_xlatb5;
  let x_3155 : f32 = u_xlat78;
  u_xlat78 = select(x_3155, 1.0f, x_3154);
  let x_3157 : vec3<f32> = vs_INTERP8;
  let x_3159 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  let x_3161 : vec3<f32> = (x_3157 + -(x_3159));
  let x_3162 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_3161.x, x_3161.y, x_3161.z, x_3162.w);
  let x_3164 : vec4<f32> = u_xlat4;
  let x_3166 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_3164.x, x_3164.y, x_3164.z), vec3<f32>(x_3166.x, x_3166.y, x_3166.z));
  let x_3172 : f32 = u_xlat4.x;
  let x_3174 : f32 = x_130.x_MainLightShadowParams.z;
  let x_3177 : f32 = x_130.x_MainLightShadowParams.w;
  u_xlat30.x = ((x_3172 * x_3174) + x_3177);
  let x_3181 : f32 = u_xlat30.x;
  u_xlat30.x = clamp(x_3181, 0.0f, 1.0f);
  let x_3185 : f32 = u_xlat78;
  u_xlat56 = (-(x_3185) + 1.0f);
  let x_3189 : f32 = u_xlat30.x;
  let x_3190 : f32 = u_xlat56;
  let x_3192 : f32 = u_xlat78;
  u_xlat78 = ((x_3189 * x_3190) + x_3192);
  let x_3194 : vec4<f32> = u_xlat7;
  let x_3197 : vec4<f32> = u_xlat6;
  u_xlat30.x = dot(-(vec3<f32>(x_3194.x, x_3194.y, x_3194.z)), vec3<f32>(x_3197.x, x_3197.y, x_3197.z));
  let x_3202 : f32 = u_xlat30.x;
  let x_3204 : f32 = u_xlat30.x;
  u_xlat30.x = (x_3202 + x_3204);
  let x_3207 : vec4<f32> = u_xlat6;
  let x_3209 : vec3<f32> = u_xlat30;
  let x_3213 : vec4<f32> = u_xlat7;
  u_xlat30 = ((vec3<f32>(x_3207.x, x_3207.y, x_3207.z) * -(vec3<f32>(x_3209.x, x_3209.x, x_3209.x))) + -(vec3<f32>(x_3213.x, x_3213.y, x_3213.z)));
  let x_3217 : vec4<f32> = u_xlat6;
  let x_3219 : vec4<f32> = u_xlat7;
  u_xlat5.x = dot(vec3<f32>(x_3217.x, x_3217.y, x_3217.z), vec3<f32>(x_3219.x, x_3219.y, x_3219.z));
  let x_3224 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_3224, 0.0f, 1.0f);
  let x_3228 : f32 = u_xlat5.x;
  u_xlat5.x = (-(x_3228) + 1.0f);
  let x_3233 : f32 = u_xlat5.x;
  let x_3235 : f32 = u_xlat5.x;
  u_xlat5.x = (x_3233 * x_3235);
  let x_3239 : f32 = u_xlat5.x;
  let x_3241 : f32 = u_xlat5.x;
  u_xlat5.x = (x_3239 * x_3241);
  let x_3245 : f32 = u_xlat27.x;
  u_xlat83 = ((-(x_3245) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3252 : f32 = u_xlat27.x;
  let x_3253 : f32 = u_xlat83;
  u_xlat27.x = (x_3252 * x_3253);
  let x_3257 : f32 = u_xlat27.x;
  u_xlat27.x = (x_3257 * 6.0f);
  let x_3269 : vec3<f32> = u_xlat30;
  let x_3271 : f32 = u_xlat27.x;
  let x_3272 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_3269, x_3271);
  u_xlat8 = x_3272;
  let x_3274 : f32 = u_xlat8.w;
  u_xlat27.x = (x_3274 + -1.0f);
  let x_3278 : f32 = x_1746.unity_SpecCube0_HDR.w;
  let x_3280 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_3278 * x_3280) + 1.0f);
  let x_3285 : f32 = u_xlat27.x;
  u_xlat27.x = max(x_3285, 0.0f);
  let x_3289 : f32 = u_xlat27.x;
  u_xlat27.x = log2(x_3289);
  let x_3293 : f32 = u_xlat27.x;
  let x_3295 : f32 = x_1746.unity_SpecCube0_HDR.y;
  u_xlat27.x = (x_3293 * x_3295);
  let x_3299 : f32 = u_xlat27.x;
  u_xlat27.x = exp2(x_3299);
  let x_3303 : f32 = u_xlat27.x;
  let x_3305 : f32 = x_1746.unity_SpecCube0_HDR.x;
  u_xlat27.x = (x_3303 * x_3305);
  let x_3308 : vec4<f32> = u_xlat8;
  let x_3310 : vec3<f32> = u_xlat27;
  u_xlat30 = (vec3<f32>(x_3308.x, x_3308.y, x_3308.z) * vec3<f32>(x_3310.x, x_3310.x, x_3310.x));
  let x_3313 : f32 = u_xlat79;
  let x_3315 : f32 = u_xlat79;
  let x_3319 : vec2<f32> = ((vec2<f32>(x_3313, x_3313) * vec2<f32>(x_3315, x_3315)) + vec2<f32>(-1.0f, 1.0f));
  let x_3320 : vec3<f32> = u_xlat27;
  u_xlat27 = vec3<f32>(x_3319.x, x_3320.y, x_3319.y);
  let x_3323 : f32 = u_xlat27.z;
  u_xlat79 = (1.0f / x_3323);
  let x_3326 : f32 = u_xlat3.x;
  u_xlat3.x = (x_3326 + -0.03999999910593032837f);
  let x_3331 : f32 = u_xlat5.x;
  let x_3333 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_3331 * x_3333) + 0.03999999910593032837f);
  let x_3338 : f32 = u_xlat79;
  let x_3340 : f32 = u_xlat3.x;
  u_xlat79 = (x_3338 * x_3340);
  let x_3342 : f32 = u_xlat79;
  let x_3344 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_3342, x_3342, x_3342) * x_3344);
  let x_3346 : vec3<f32> = u_xlat29;
  let x_3347 : vec3<f32> = u_xlat2;
  let x_3349 : vec3<f32> = u_xlat30;
  let x_3350 : vec3<f32> = ((x_3346 * x_3347) + x_3349);
  let x_3351 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_3350.x, x_3350.y, x_3350.z, x_3351.w);
  let x_3353 : f32 = u_xlat78;
  let x_3355 : f32 = x_1746.unity_LightData.z;
  u_xlat78 = (x_3353 * x_3355);
  let x_3357 : vec4<f32> = u_xlat6;
  let x_3360 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat79 = dot(vec3<f32>(x_3357.x, x_3357.y, x_3357.z), vec3<f32>(x_3360.x, x_3360.y, x_3360.z));
  let x_3363 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3363, 0.0f, 1.0f);
  let x_3365 : f32 = u_xlat78;
  let x_3366 : f32 = u_xlat79;
  u_xlat78 = (x_3365 * x_3366);
  let x_3368 : f32 = u_xlat78;
  let x_3371 : vec4<f32> = x_53.x_MainLightColor;
  u_xlat30 = (vec3<f32>(x_3368, x_3368, x_3368) * vec3<f32>(x_3371.x, x_3371.y, x_3371.z));
  let x_3374 : vec4<f32> = u_xlat7;
  let x_3377 : vec4<f32> = x_53.x_MainLightPosition;
  let x_3379 : vec3<f32> = (vec3<f32>(x_3374.x, x_3374.y, x_3374.z) + vec3<f32>(x_3377.x, x_3377.y, x_3377.z));
  let x_3380 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3379.x, x_3379.y, x_3379.z, x_3380.w);
  let x_3382 : vec4<f32> = u_xlat8;
  let x_3384 : vec4<f32> = u_xlat8;
  u_xlat78 = dot(vec3<f32>(x_3382.x, x_3382.y, x_3382.z), vec3<f32>(x_3384.x, x_3384.y, x_3384.z));
  let x_3387 : f32 = u_xlat78;
  u_xlat78 = max(x_3387, 1.17549435e-38f);
  let x_3390 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_3390);
  let x_3392 : f32 = u_xlat78;
  let x_3394 : vec4<f32> = u_xlat8;
  let x_3396 : vec3<f32> = (vec3<f32>(x_3392, x_3392, x_3392) * vec3<f32>(x_3394.x, x_3394.y, x_3394.z));
  let x_3397 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3396.x, x_3396.y, x_3396.z, x_3397.w);
  let x_3399 : vec4<f32> = u_xlat6;
  let x_3401 : vec4<f32> = u_xlat8;
  u_xlat78 = dot(vec3<f32>(x_3399.x, x_3399.y, x_3399.z), vec3<f32>(x_3401.x, x_3401.y, x_3401.z));
  let x_3404 : f32 = u_xlat78;
  u_xlat78 = clamp(x_3404, 0.0f, 1.0f);
  let x_3407 : vec4<f32> = x_53.x_MainLightPosition;
  let x_3409 : vec4<f32> = u_xlat8;
  u_xlat79 = dot(vec3<f32>(x_3407.x, x_3407.y, x_3407.z), vec3<f32>(x_3409.x, x_3409.y, x_3409.z));
  let x_3412 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3412, 0.0f, 1.0f);
  let x_3414 : f32 = u_xlat78;
  let x_3415 : f32 = u_xlat78;
  u_xlat78 = (x_3414 * x_3415);
  let x_3417 : f32 = u_xlat78;
  let x_3419 : f32 = u_xlat27.x;
  u_xlat78 = ((x_3417 * x_3419) + 1.00001001358032226562f);
  let x_3423 : f32 = u_xlat79;
  let x_3424 : f32 = u_xlat79;
  u_xlat79 = (x_3423 * x_3424);
  let x_3426 : f32 = u_xlat78;
  let x_3427 : f32 = u_xlat78;
  u_xlat78 = (x_3426 * x_3427);
  let x_3429 : f32 = u_xlat79;
  u_xlat79 = max(x_3429, 0.10000000149011611938f);
  let x_3432 : f32 = u_xlat78;
  let x_3433 : f32 = u_xlat79;
  u_xlat78 = (x_3432 * x_3433);
  let x_3436 : f32 = u_xlat31.x;
  let x_3437 : f32 = u_xlat78;
  u_xlat78 = (x_3436 * x_3437);
  let x_3439 : f32 = u_xlat80;
  let x_3440 : f32 = u_xlat78;
  u_xlat78 = (x_3439 / x_3440);
  let x_3442 : f32 = u_xlat78;
  let x_3446 : vec3<f32> = u_xlat2;
  let x_3447 : vec3<f32> = ((vec3<f32>(x_3442, x_3442, x_3442) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3446);
  let x_3448 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3447.x, x_3447.y, x_3447.z, x_3448.w);
  let x_3450 : vec3<f32> = u_xlat30;
  let x_3451 : vec4<f32> = u_xlat8;
  u_xlat30 = (x_3450 * vec3<f32>(x_3451.x, x_3451.y, x_3451.z));
  let x_3455 : f32 = x_53.x_AdditionalLightsCount.x;
  let x_3457 : f32 = x_1746.unity_LightData.y;
  u_xlat78 = min(x_3455, x_3457);
  let x_3459 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_3459));
  let x_3463 : f32 = u_xlat4.x;
  let x_3466 : f32 = x_130.x_AdditionalShadowFadeParams.x;
  let x_3469 : f32 = x_130.x_AdditionalShadowFadeParams.y;
  u_xlat79 = ((x_3463 * x_3466) + x_3469);
  let x_3471 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3471, 0.0f, 1.0f);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3483 : u32 = u_xlatu_loop_1;
    let x_3484 : u32 = u_xlatu78;
    if ((x_3483 < x_3484)) {
    } else {
      break;
    }
    let x_3487 : u32 = u_xlatu_loop_1;
    u_xlatu4 = (x_3487 >> 2u);
    let x_3490 : u32 = u_xlatu_loop_1;
    u_xlati5 = bitcast<i32>((x_3490 & 3u));
    let x_3493 : u32 = u_xlatu4;
    let x_3496 : vec4<f32> = x_1746.unity_LightIndices[bitcast<i32>(x_3493)];
    let x_3506 : i32 = u_xlati5;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3511 : vec4<u32> = indexable[x_3506];
    u_xlat4.x = dot(x_3496, bitcast<vec4<f32>>(x_3511));
    let x_3517 : f32 = u_xlat4.x;
    u_xlati4 = i32(x_3517);
    let x_3519 : vec3<f32> = vs_INTERP8;
    let x_3530 : i32 = u_xlati4;
    let x_3532 : vec4<f32> = x_3529.x_AdditionalLightsPosition[x_3530];
    let x_3535 : i32 = u_xlati4;
    let x_3537 : vec4<f32> = x_3529.x_AdditionalLightsPosition[x_3535];
    let x_3539 : vec3<f32> = ((-(x_3519) * vec3<f32>(x_3532.w, x_3532.w, x_3532.w)) + vec3<f32>(x_3537.x, x_3537.y, x_3537.z));
    let x_3540 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3539.x, x_3539.y, x_3539.z, x_3540.w);
    let x_3542 : vec4<f32> = u_xlat9;
    let x_3544 : vec4<f32> = u_xlat9;
    u_xlat5.x = dot(vec3<f32>(x_3542.x, x_3542.y, x_3542.z), vec3<f32>(x_3544.x, x_3544.y, x_3544.z));
    let x_3549 : f32 = u_xlat5.x;
    u_xlat5.x = max(x_3549, 0.00006103515625f);
    let x_3554 : f32 = u_xlat5.x;
    u_xlat83 = inverseSqrt(x_3554);
    let x_3556 : f32 = u_xlat83;
    let x_3558 : vec4<f32> = u_xlat9;
    let x_3560 : vec3<f32> = (vec3<f32>(x_3556, x_3556, x_3556) * vec3<f32>(x_3558.x, x_3558.y, x_3558.z));
    let x_3561 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3560.x, x_3560.y, x_3560.z, x_3561.w);
    let x_3564 : f32 = u_xlat5.x;
    u_xlat84 = (1.0f / x_3564);
    let x_3567 : f32 = u_xlat5.x;
    let x_3568 : i32 = u_xlati4;
    let x_3570 : f32 = x_3529.x_AdditionalLightsAttenuation[x_3568].x;
    u_xlat5.x = (x_3567 * x_3570);
    let x_3574 : f32 = u_xlat5.x;
    let x_3577 : f32 = u_xlat5.x;
    u_xlat5.x = ((-(x_3574) * x_3577) + 1.0f);
    let x_3582 : f32 = u_xlat5.x;
    u_xlat5.x = max(x_3582, 0.0f);
    let x_3586 : f32 = u_xlat5.x;
    let x_3588 : f32 = u_xlat5.x;
    u_xlat5.x = (x_3586 * x_3588);
    let x_3592 : f32 = u_xlat5.x;
    let x_3593 : f32 = u_xlat84;
    u_xlat5.x = (x_3592 * x_3593);
    let x_3596 : i32 = u_xlati4;
    let x_3598 : vec4<f32> = x_3529.x_AdditionalLightsSpotDir[x_3596];
    let x_3600 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_3598.x, x_3598.y, x_3598.z), vec3<f32>(x_3600.x, x_3600.y, x_3600.z));
    let x_3603 : f32 = u_xlat84;
    let x_3604 : i32 = u_xlati4;
    let x_3606 : f32 = x_3529.x_AdditionalLightsAttenuation[x_3604].z;
    let x_3608 : i32 = u_xlati4;
    let x_3610 : f32 = x_3529.x_AdditionalLightsAttenuation[x_3608].w;
    u_xlat84 = ((x_3603 * x_3606) + x_3610);
    let x_3612 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3612, 0.0f, 1.0f);
    let x_3614 : f32 = u_xlat84;
    let x_3615 : f32 = u_xlat84;
    u_xlat84 = (x_3614 * x_3615);
    let x_3618 : f32 = u_xlat5.x;
    let x_3619 : f32 = u_xlat84;
    u_xlat5.x = (x_3618 * x_3619);
    let x_3624 : i32 = u_xlati4;
    let x_3626 : f32 = x_130.x_AdditionalShadowParams[x_3624].w;
    u_xlati84 = i32(x_3626);
    let x_3629 : i32 = u_xlati84;
    u_xlatb85 = (x_3629 >= 0i);
    let x_3631 : bool = u_xlatb85;
    if (x_3631) {
      let x_3635 : i32 = u_xlati4;
      let x_3637 : f32 = x_130.x_AdditionalShadowParams[x_3635].z;
      u_xlatb85 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3637, x_3637, x_3637, x_3637))));
      let x_3641 : bool = u_xlatb85;
      if (x_3641) {
        let x_3645 : vec4<f32> = u_xlat10;
        let x_3648 : vec4<f32> = u_xlat10;
        let x_3651 : vec4<bool> = (abs(vec4<f32>(x_3645.z, x_3645.z, x_3645.y, x_3645.z)) >= abs(vec4<f32>(x_3648.x, x_3648.y, x_3648.x, x_3648.x)));
        let x_3652 : vec3<bool> = vec3<bool>(x_3651.x, x_3651.y, x_3651.z);
        let x_3653 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3652.x, x_3652.y, x_3652.z, x_3653.w);
        let x_3656 : bool = u_xlatb11.y;
        let x_3658 : bool = u_xlatb11.x;
        u_xlatb85 = (x_3656 & x_3658);
        let x_3660 : vec4<f32> = u_xlat10;
        let x_3663 : vec4<bool> = (-(vec4<f32>(x_3660.z, x_3660.y, x_3660.z, x_3660.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3664 : vec3<bool> = vec3<bool>(x_3663.x, x_3663.y, x_3663.w);
        let x_3665 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3664.x, x_3664.y, x_3665.z, x_3664.z);
        let x_3668 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3668);
        let x_3673 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3673);
        let x_3678 : bool = u_xlatb11.w;
        u_xlat86 = select(0.0f, 1.0f, x_3678);
        let x_3681 : bool = u_xlatb11.z;
        if (x_3681) {
          let x_3686 : f32 = u_xlat11.y;
          x_3682 = x_3686;
        } else {
          let x_3688 : f32 = u_xlat86;
          x_3682 = x_3688;
        }
        let x_3689 : f32 = x_3682;
        u_xlat86 = x_3689;
        let x_3690 : bool = u_xlatb85;
        if (x_3690) {
          let x_3695 : f32 = u_xlat11.x;
          x_3691 = x_3695;
        } else {
          let x_3697 : f32 = u_xlat86;
          x_3691 = x_3697;
        }
        let x_3698 : f32 = x_3691;
        u_xlat85 = x_3698;
        let x_3699 : i32 = u_xlati4;
        let x_3701 : f32 = x_130.x_AdditionalShadowParams[x_3699].w;
        u_xlat86 = trunc(x_3701);
        let x_3703 : f32 = u_xlat85;
        let x_3704 : f32 = u_xlat86;
        u_xlat85 = (x_3703 + x_3704);
        let x_3706 : f32 = u_xlat85;
        u_xlati84 = i32(x_3706);
      }
      let x_3708 : i32 = u_xlati84;
      u_xlati84 = (x_3708 << bitcast<u32>(2i));
      let x_3710 : vec3<f32> = vs_INTERP8;
      let x_3713 : i32 = u_xlati84;
      let x_3716 : i32 = u_xlati84;
      let x_3720 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_3713 + 1i) / 4i)][((x_3716 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3710.y, x_3710.y, x_3710.y, x_3710.y) * x_3720);
      let x_3722 : i32 = u_xlati84;
      let x_3724 : i32 = u_xlati84;
      let x_3727 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[(x_3722 / 4i)][(x_3724 % 4i)];
      let x_3728 : vec3<f32> = vs_INTERP8;
      let x_3731 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3727 * vec4<f32>(x_3728.x, x_3728.x, x_3728.x, x_3728.x)) + x_3731);
      let x_3733 : i32 = u_xlati84;
      let x_3736 : i32 = u_xlati84;
      let x_3740 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_3733 + 2i) / 4i)][((x_3736 + 2i) % 4i)];
      let x_3741 : vec3<f32> = vs_INTERP8;
      let x_3744 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3740 * vec4<f32>(x_3741.z, x_3741.z, x_3741.z, x_3741.z)) + x_3744);
      let x_3746 : vec4<f32> = u_xlat11;
      let x_3747 : i32 = u_xlati84;
      let x_3750 : i32 = u_xlati84;
      let x_3754 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_3747 + 3i) / 4i)][((x_3750 + 3i) % 4i)];
      u_xlat11 = (x_3746 + x_3754);
      let x_3756 : vec4<f32> = u_xlat11;
      let x_3758 : vec4<f32> = u_xlat11;
      let x_3760 : vec3<f32> = (vec3<f32>(x_3756.x, x_3756.y, x_3756.z) / vec3<f32>(x_3758.w, x_3758.w, x_3758.w));
      let x_3761 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3760.x, x_3760.y, x_3760.z, x_3761.w);
      let x_3764 : i32 = u_xlati4;
      let x_3766 : f32 = x_130.x_AdditionalShadowParams[x_3764].y;
      u_xlatb84 = (0.0f < x_3766);
      let x_3768 : bool = u_xlatb84;
      if (x_3768) {
        let x_3771 : i32 = u_xlati4;
        let x_3773 : f32 = x_130.x_AdditionalShadowParams[x_3771].y;
        u_xlatb84 = (1.0f == x_3773);
        let x_3775 : bool = u_xlatb84;
        if (x_3775) {
          let x_3778 : vec4<f32> = u_xlat11;
          let x_3782 : vec4<f32> = x_130.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3778.x, x_3778.y, x_3778.x, x_3778.y) + x_3782);
          let x_3785 : vec4<f32> = u_xlat12;
          let x_3786 : vec2<f32> = vec2<f32>(x_3785.x, x_3785.y);
          let x_3788 : f32 = u_xlat11.z;
          txVec60 = vec3<f32>(x_3786.x, x_3786.y, x_3788);
          let x_3796 : vec3<f32> = txVec60;
          let x_3798 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3796.xy, x_3796.z);
          u_xlat13.x = x_3798;
          let x_3801 : vec4<f32> = u_xlat12;
          let x_3802 : vec2<f32> = vec2<f32>(x_3801.z, x_3801.w);
          let x_3804 : f32 = u_xlat11.z;
          txVec61 = vec3<f32>(x_3802.x, x_3802.y, x_3804);
          let x_3811 : vec3<f32> = txVec61;
          let x_3813 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3811.xy, x_3811.z);
          u_xlat13.y = x_3813;
          let x_3815 : vec4<f32> = u_xlat11;
          let x_3819 : vec4<f32> = x_130.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3815.x, x_3815.y, x_3815.x, x_3815.y) + x_3819);
          let x_3822 : vec4<f32> = u_xlat12;
          let x_3823 : vec2<f32> = vec2<f32>(x_3822.x, x_3822.y);
          let x_3825 : f32 = u_xlat11.z;
          txVec62 = vec3<f32>(x_3823.x, x_3823.y, x_3825);
          let x_3832 : vec3<f32> = txVec62;
          let x_3834 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3832.xy, x_3832.z);
          u_xlat13.z = x_3834;
          let x_3837 : vec4<f32> = u_xlat12;
          let x_3838 : vec2<f32> = vec2<f32>(x_3837.z, x_3837.w);
          let x_3840 : f32 = u_xlat11.z;
          txVec63 = vec3<f32>(x_3838.x, x_3838.y, x_3840);
          let x_3847 : vec3<f32> = txVec63;
          let x_3849 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3847.xy, x_3847.z);
          u_xlat13.w = x_3849;
          let x_3851 : vec4<f32> = u_xlat13;
          u_xlat84 = dot(x_3851, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3854 : i32 = u_xlati4;
          let x_3856 : f32 = x_130.x_AdditionalShadowParams[x_3854].y;
          u_xlatb85 = (2.0f == x_3856);
          let x_3858 : bool = u_xlatb85;
          if (x_3858) {
            let x_3861 : vec4<f32> = u_xlat11;
            let x_3865 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_3868 : vec2<f32> = ((vec2<f32>(x_3861.x, x_3861.y) * vec2<f32>(x_3865.z, x_3865.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3869 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3868.x, x_3868.y, x_3869.z, x_3869.w);
            let x_3871 : vec4<f32> = u_xlat12;
            let x_3873 : vec2<f32> = floor(vec2<f32>(x_3871.x, x_3871.y));
            let x_3874 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3873.x, x_3873.y, x_3874.z, x_3874.w);
            let x_3877 : vec4<f32> = u_xlat11;
            let x_3880 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_3883 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3877.x, x_3877.y) * vec2<f32>(x_3880.z, x_3880.w)) + -(vec2<f32>(x_3883.x, x_3883.y)));
            let x_3887 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3887.x, x_3887.x, x_3887.y, x_3887.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3890 : vec4<f32> = u_xlat13;
            let x_3892 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3890.x, x_3890.x, x_3890.z, x_3890.z) * vec4<f32>(x_3892.x, x_3892.x, x_3892.z, x_3892.z));
            let x_3895 : vec4<f32> = u_xlat14;
            let x_3897 : vec2<f32> = (vec2<f32>(x_3895.y, x_3895.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3898 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3897.x, x_3898.y, x_3897.y, x_3898.w);
            let x_3900 : vec4<f32> = u_xlat14;
            let x_3903 : vec2<f32> = u_xlat64;
            let x_3905 : vec2<f32> = ((vec2<f32>(x_3900.x, x_3900.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3903));
            let x_3906 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3905.x, x_3905.y, x_3906.z, x_3906.w);
            let x_3909 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3909) + vec2<f32>(1.0f, 1.0f));
            let x_3912 : vec2<f32> = u_xlat64;
            let x_3913 : vec2<f32> = min(x_3912, vec2<f32>(0.0f, 0.0f));
            let x_3914 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3913.x, x_3913.y, x_3914.z, x_3914.w);
            let x_3916 : vec4<f32> = u_xlat15;
            let x_3919 : vec4<f32> = u_xlat15;
            let x_3922 : vec2<f32> = u_xlat66;
            let x_3923 : vec2<f32> = ((-(vec2<f32>(x_3916.x, x_3916.y)) * vec2<f32>(x_3919.x, x_3919.y)) + x_3922);
            let x_3924 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3923.x, x_3923.y, x_3924.z, x_3924.w);
            let x_3926 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3926, vec2<f32>(0.0f, 0.0f));
            let x_3928 : vec2<f32> = u_xlat64;
            let x_3930 : vec2<f32> = u_xlat64;
            let x_3932 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3928) * x_3930) + vec2<f32>(x_3932.y, x_3932.w));
            let x_3935 : vec4<f32> = u_xlat15;
            let x_3937 : vec2<f32> = (vec2<f32>(x_3935.x, x_3935.y) + vec2<f32>(1.0f, 1.0f));
            let x_3938 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3937.x, x_3937.y, x_3938.z, x_3938.w);
            let x_3940 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3940 + vec2<f32>(1.0f, 1.0f));
            let x_3942 : vec4<f32> = u_xlat14;
            let x_3944 : vec2<f32> = (vec2<f32>(x_3942.x, x_3942.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3945 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3944.x, x_3944.y, x_3945.z, x_3945.w);
            let x_3947 : vec2<f32> = u_xlat66;
            let x_3948 : vec2<f32> = (x_3947 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3949 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3948.x, x_3948.y, x_3949.z, x_3949.w);
            let x_3951 : vec4<f32> = u_xlat15;
            let x_3953 : vec2<f32> = (vec2<f32>(x_3951.x, x_3951.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3954 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3953.x, x_3953.y, x_3954.z, x_3954.w);
            let x_3956 : vec2<f32> = u_xlat64;
            let x_3957 : vec2<f32> = (x_3956 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3958 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3957.x, x_3957.y, x_3958.z, x_3958.w);
            let x_3960 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3960.y, x_3960.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3964 : f32 = u_xlat15.x;
            u_xlat16.z = x_3964;
            let x_3967 : f32 = u_xlat64.x;
            u_xlat16.w = x_3967;
            let x_3970 : f32 = u_xlat17.x;
            u_xlat14.z = x_3970;
            let x_3973 : f32 = u_xlat13.x;
            u_xlat14.w = x_3973;
            let x_3975 : vec4<f32> = u_xlat14;
            let x_3977 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3975.z, x_3975.w, x_3975.x, x_3975.z) + vec4<f32>(x_3977.z, x_3977.w, x_3977.x, x_3977.z));
            let x_3981 : f32 = u_xlat16.y;
            u_xlat15.z = x_3981;
            let x_3984 : f32 = u_xlat64.y;
            u_xlat15.w = x_3984;
            let x_3987 : f32 = u_xlat14.y;
            u_xlat17.z = x_3987;
            let x_3990 : f32 = u_xlat13.z;
            u_xlat17.w = x_3990;
            let x_3992 : vec4<f32> = u_xlat15;
            let x_3994 : vec4<f32> = u_xlat17;
            let x_3996 : vec3<f32> = (vec3<f32>(x_3992.z, x_3992.y, x_3992.w) + vec3<f32>(x_3994.z, x_3994.y, x_3994.w));
            let x_3997 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3996.x, x_3996.y, x_3996.z, x_3997.w);
            let x_3999 : vec4<f32> = u_xlat14;
            let x_4001 : vec4<f32> = u_xlat18;
            let x_4003 : vec3<f32> = (vec3<f32>(x_3999.x, x_3999.z, x_3999.w) / vec3<f32>(x_4001.z, x_4001.w, x_4001.y));
            let x_4004 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4003.x, x_4003.y, x_4003.z, x_4004.w);
            let x_4006 : vec4<f32> = u_xlat14;
            let x_4008 : vec3<f32> = (vec3<f32>(x_4006.x, x_4006.y, x_4006.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4009 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4008.x, x_4008.y, x_4008.z, x_4009.w);
            let x_4011 : vec4<f32> = u_xlat17;
            let x_4013 : vec4<f32> = u_xlat13;
            let x_4015 : vec3<f32> = (vec3<f32>(x_4011.z, x_4011.y, x_4011.w) / vec3<f32>(x_4013.x, x_4013.y, x_4013.z));
            let x_4016 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4015.x, x_4015.y, x_4015.z, x_4016.w);
            let x_4018 : vec4<f32> = u_xlat15;
            let x_4020 : vec3<f32> = (vec3<f32>(x_4018.x, x_4018.y, x_4018.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4021 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4020.x, x_4020.y, x_4020.z, x_4021.w);
            let x_4023 : vec4<f32> = u_xlat14;
            let x_4026 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4028 : vec3<f32> = (vec3<f32>(x_4023.y, x_4023.x, x_4023.z) * vec3<f32>(x_4026.x, x_4026.x, x_4026.x));
            let x_4029 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4028.x, x_4028.y, x_4028.z, x_4029.w);
            let x_4031 : vec4<f32> = u_xlat15;
            let x_4034 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4036 : vec3<f32> = (vec3<f32>(x_4031.x, x_4031.y, x_4031.z) * vec3<f32>(x_4034.y, x_4034.y, x_4034.y));
            let x_4037 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4036.x, x_4036.y, x_4036.z, x_4037.w);
            let x_4040 : f32 = u_xlat15.x;
            u_xlat14.w = x_4040;
            let x_4042 : vec4<f32> = u_xlat12;
            let x_4045 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4048 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4042.x, x_4042.y, x_4042.x, x_4042.y) * vec4<f32>(x_4045.x, x_4045.y, x_4045.x, x_4045.y)) + vec4<f32>(x_4048.y, x_4048.w, x_4048.x, x_4048.w));
            let x_4051 : vec4<f32> = u_xlat12;
            let x_4054 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4057 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4051.x, x_4051.y) * vec2<f32>(x_4054.x, x_4054.y)) + vec2<f32>(x_4057.z, x_4057.w));
            let x_4061 : f32 = u_xlat14.y;
            u_xlat15.w = x_4061;
            let x_4063 : vec4<f32> = u_xlat15;
            let x_4064 : vec2<f32> = vec2<f32>(x_4063.y, x_4063.z);
            let x_4065 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4065.x, x_4064.x, x_4065.z, x_4064.y);
            let x_4067 : vec4<f32> = u_xlat12;
            let x_4070 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4073 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_4067.x, x_4067.y, x_4067.x, x_4067.y) * vec4<f32>(x_4070.x, x_4070.y, x_4070.x, x_4070.y)) + vec4<f32>(x_4073.x, x_4073.y, x_4073.z, x_4073.y));
            let x_4076 : vec4<f32> = u_xlat12;
            let x_4079 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4082 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4076.x, x_4076.y, x_4076.x, x_4076.y) * vec4<f32>(x_4079.x, x_4079.y, x_4079.x, x_4079.y)) + vec4<f32>(x_4082.w, x_4082.y, x_4082.w, x_4082.z));
            let x_4085 : vec4<f32> = u_xlat12;
            let x_4088 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4091 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4085.x, x_4085.y, x_4085.x, x_4085.y) * vec4<f32>(x_4088.x, x_4088.y, x_4088.x, x_4088.y)) + vec4<f32>(x_4091.x, x_4091.w, x_4091.z, x_4091.w));
            let x_4094 : vec4<f32> = u_xlat13;
            let x_4096 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_4094.x, x_4094.x, x_4094.x, x_4094.y) * vec4<f32>(x_4096.z, x_4096.w, x_4096.y, x_4096.z));
            let x_4099 : vec4<f32> = u_xlat13;
            let x_4101 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_4099.y, x_4099.y, x_4099.z, x_4099.z) * x_4101);
            let x_4104 : f32 = u_xlat13.z;
            let x_4106 : f32 = u_xlat18.y;
            u_xlat85 = (x_4104 * x_4106);
            let x_4109 : vec4<f32> = u_xlat16;
            let x_4110 : vec2<f32> = vec2<f32>(x_4109.x, x_4109.y);
            let x_4112 : f32 = u_xlat11.z;
            txVec64 = vec3<f32>(x_4110.x, x_4110.y, x_4112);
            let x_4119 : vec3<f32> = txVec64;
            let x_4121 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4119.xy, x_4119.z);
            u_xlat86 = x_4121;
            let x_4123 : vec4<f32> = u_xlat16;
            let x_4124 : vec2<f32> = vec2<f32>(x_4123.z, x_4123.w);
            let x_4126 : f32 = u_xlat11.z;
            txVec65 = vec3<f32>(x_4124.x, x_4124.y, x_4126);
            let x_4134 : vec3<f32> = txVec65;
            let x_4136 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4134.xy, x_4134.z);
            u_xlat87 = x_4136;
            let x_4137 : f32 = u_xlat87;
            let x_4139 : f32 = u_xlat19.y;
            u_xlat87 = (x_4137 * x_4139);
            let x_4142 : f32 = u_xlat19.x;
            let x_4143 : f32 = u_xlat86;
            let x_4145 : f32 = u_xlat87;
            u_xlat86 = ((x_4142 * x_4143) + x_4145);
            let x_4148 : vec2<f32> = u_xlat64;
            let x_4150 : f32 = u_xlat11.z;
            txVec66 = vec3<f32>(x_4148.x, x_4148.y, x_4150);
            let x_4157 : vec3<f32> = txVec66;
            let x_4159 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4157.xy, x_4157.z);
            u_xlat87 = x_4159;
            let x_4161 : f32 = u_xlat19.z;
            let x_4162 : f32 = u_xlat87;
            let x_4164 : f32 = u_xlat86;
            u_xlat86 = ((x_4161 * x_4162) + x_4164);
            let x_4167 : vec4<f32> = u_xlat15;
            let x_4168 : vec2<f32> = vec2<f32>(x_4167.x, x_4167.y);
            let x_4170 : f32 = u_xlat11.z;
            txVec67 = vec3<f32>(x_4168.x, x_4168.y, x_4170);
            let x_4177 : vec3<f32> = txVec67;
            let x_4179 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4177.xy, x_4177.z);
            u_xlat87 = x_4179;
            let x_4181 : f32 = u_xlat19.w;
            let x_4182 : f32 = u_xlat87;
            let x_4184 : f32 = u_xlat86;
            u_xlat86 = ((x_4181 * x_4182) + x_4184);
            let x_4187 : vec4<f32> = u_xlat17;
            let x_4188 : vec2<f32> = vec2<f32>(x_4187.x, x_4187.y);
            let x_4190 : f32 = u_xlat11.z;
            txVec68 = vec3<f32>(x_4188.x, x_4188.y, x_4190);
            let x_4197 : vec3<f32> = txVec68;
            let x_4199 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4197.xy, x_4197.z);
            u_xlat87 = x_4199;
            let x_4201 : f32 = u_xlat20.x;
            let x_4202 : f32 = u_xlat87;
            let x_4204 : f32 = u_xlat86;
            u_xlat86 = ((x_4201 * x_4202) + x_4204);
            let x_4207 : vec4<f32> = u_xlat17;
            let x_4208 : vec2<f32> = vec2<f32>(x_4207.z, x_4207.w);
            let x_4210 : f32 = u_xlat11.z;
            txVec69 = vec3<f32>(x_4208.x, x_4208.y, x_4210);
            let x_4217 : vec3<f32> = txVec69;
            let x_4219 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4217.xy, x_4217.z);
            u_xlat87 = x_4219;
            let x_4221 : f32 = u_xlat20.y;
            let x_4222 : f32 = u_xlat87;
            let x_4224 : f32 = u_xlat86;
            u_xlat86 = ((x_4221 * x_4222) + x_4224);
            let x_4227 : vec4<f32> = u_xlat15;
            let x_4228 : vec2<f32> = vec2<f32>(x_4227.z, x_4227.w);
            let x_4230 : f32 = u_xlat11.z;
            txVec70 = vec3<f32>(x_4228.x, x_4228.y, x_4230);
            let x_4237 : vec3<f32> = txVec70;
            let x_4239 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4237.xy, x_4237.z);
            u_xlat87 = x_4239;
            let x_4241 : f32 = u_xlat20.z;
            let x_4242 : f32 = u_xlat87;
            let x_4244 : f32 = u_xlat86;
            u_xlat86 = ((x_4241 * x_4242) + x_4244);
            let x_4247 : vec4<f32> = u_xlat14;
            let x_4248 : vec2<f32> = vec2<f32>(x_4247.x, x_4247.y);
            let x_4250 : f32 = u_xlat11.z;
            txVec71 = vec3<f32>(x_4248.x, x_4248.y, x_4250);
            let x_4257 : vec3<f32> = txVec71;
            let x_4259 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4257.xy, x_4257.z);
            u_xlat87 = x_4259;
            let x_4261 : f32 = u_xlat20.w;
            let x_4262 : f32 = u_xlat87;
            let x_4264 : f32 = u_xlat86;
            u_xlat86 = ((x_4261 * x_4262) + x_4264);
            let x_4267 : vec4<f32> = u_xlat14;
            let x_4268 : vec2<f32> = vec2<f32>(x_4267.z, x_4267.w);
            let x_4270 : f32 = u_xlat11.z;
            txVec72 = vec3<f32>(x_4268.x, x_4268.y, x_4270);
            let x_4277 : vec3<f32> = txVec72;
            let x_4279 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4277.xy, x_4277.z);
            u_xlat87 = x_4279;
            let x_4280 : f32 = u_xlat85;
            let x_4281 : f32 = u_xlat87;
            let x_4283 : f32 = u_xlat86;
            u_xlat84 = ((x_4280 * x_4281) + x_4283);
          } else {
            let x_4286 : vec4<f32> = u_xlat11;
            let x_4289 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4292 : vec2<f32> = ((vec2<f32>(x_4286.x, x_4286.y) * vec2<f32>(x_4289.z, x_4289.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4293 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4292.x, x_4292.y, x_4293.z, x_4293.w);
            let x_4295 : vec4<f32> = u_xlat12;
            let x_4297 : vec2<f32> = floor(vec2<f32>(x_4295.x, x_4295.y));
            let x_4298 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4297.x, x_4297.y, x_4298.z, x_4298.w);
            let x_4300 : vec4<f32> = u_xlat11;
            let x_4303 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4306 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4300.x, x_4300.y) * vec2<f32>(x_4303.z, x_4303.w)) + -(vec2<f32>(x_4306.x, x_4306.y)));
            let x_4310 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4310.x, x_4310.x, x_4310.y, x_4310.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4313 : vec4<f32> = u_xlat13;
            let x_4315 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4313.x, x_4313.x, x_4313.z, x_4313.z) * vec4<f32>(x_4315.x, x_4315.x, x_4315.z, x_4315.z));
            let x_4318 : vec4<f32> = u_xlat14;
            let x_4320 : vec2<f32> = (vec2<f32>(x_4318.y, x_4318.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4321 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4321.x, x_4320.x, x_4321.z, x_4320.y);
            let x_4323 : vec4<f32> = u_xlat14;
            let x_4326 : vec2<f32> = u_xlat64;
            let x_4328 : vec2<f32> = ((vec2<f32>(x_4323.x, x_4323.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4326));
            let x_4329 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4328.x, x_4329.y, x_4328.y, x_4329.w);
            let x_4331 : vec2<f32> = u_xlat64;
            let x_4333 : vec2<f32> = (-(x_4331) + vec2<f32>(1.0f, 1.0f));
            let x_4334 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4333.x, x_4333.y, x_4334.z, x_4334.w);
            let x_4336 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_4336, vec2<f32>(0.0f, 0.0f));
            let x_4338 : vec2<f32> = u_xlat66;
            let x_4340 : vec2<f32> = u_xlat66;
            let x_4342 : vec4<f32> = u_xlat14;
            let x_4344 : vec2<f32> = ((-(x_4338) * x_4340) + vec2<f32>(x_4342.x, x_4342.y));
            let x_4345 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4344.x, x_4344.y, x_4345.z, x_4345.w);
            let x_4347 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_4347, vec2<f32>(0.0f, 0.0f));
            let x_4350 : vec2<f32> = u_xlat66;
            let x_4352 : vec2<f32> = u_xlat66;
            let x_4354 : vec4<f32> = u_xlat13;
            let x_4356 : vec2<f32> = ((-(x_4350) * x_4352) + vec2<f32>(x_4354.y, x_4354.w));
            let x_4357 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_4356.x, x_4357.y, x_4356.y);
            let x_4359 : vec4<f32> = u_xlat14;
            let x_4361 : vec2<f32> = (vec2<f32>(x_4359.x, x_4359.y) + vec2<f32>(2.0f, 2.0f));
            let x_4362 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4361.x, x_4361.y, x_4362.z, x_4362.w);
            let x_4364 : vec3<f32> = u_xlat39;
            let x_4366 : vec2<f32> = (vec2<f32>(x_4364.x, x_4364.z) + vec2<f32>(2.0f, 2.0f));
            let x_4367 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4367.x, x_4366.x, x_4367.z, x_4366.y);
            let x_4370 : f32 = u_xlat13.y;
            u_xlat16.z = (x_4370 * 0.08163200318813323975f);
            let x_4373 : vec4<f32> = u_xlat13;
            let x_4375 : vec3<f32> = (vec3<f32>(x_4373.z, x_4373.x, x_4373.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4376 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4375.x, x_4375.y, x_4375.z, x_4376.w);
            let x_4378 : vec4<f32> = u_xlat14;
            let x_4380 : vec2<f32> = (vec2<f32>(x_4378.x, x_4378.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4381 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4380.x, x_4380.y, x_4381.z, x_4381.w);
            let x_4384 : f32 = u_xlat17.y;
            u_xlat16.x = x_4384;
            let x_4386 : vec2<f32> = u_xlat64;
            let x_4389 : vec2<f32> = ((vec2<f32>(x_4386.x, x_4386.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4390 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4390.x, x_4389.x, x_4390.z, x_4389.y);
            let x_4392 : vec2<f32> = u_xlat64;
            let x_4395 : vec2<f32> = ((vec2<f32>(x_4392.x, x_4392.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4396 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4395.x, x_4396.y, x_4395.y, x_4396.w);
            let x_4399 : f32 = u_xlat13.x;
            u_xlat14.y = x_4399;
            let x_4402 : f32 = u_xlat15.y;
            u_xlat14.w = x_4402;
            let x_4404 : vec4<f32> = u_xlat14;
            let x_4405 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4404 + x_4405);
            let x_4407 : vec2<f32> = u_xlat64;
            let x_4410 : vec2<f32> = ((vec2<f32>(x_4407.y, x_4407.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4411 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4411.x, x_4410.x, x_4411.z, x_4410.y);
            let x_4413 : vec2<f32> = u_xlat64;
            let x_4416 : vec2<f32> = ((vec2<f32>(x_4413.y, x_4413.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4417 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4416.x, x_4417.y, x_4416.y, x_4417.w);
            let x_4420 : f32 = u_xlat13.y;
            u_xlat15.y = x_4420;
            let x_4422 : vec4<f32> = u_xlat15;
            let x_4423 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4422 + x_4423);
            let x_4425 : vec4<f32> = u_xlat14;
            let x_4426 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_4425 / x_4426);
            let x_4428 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4428 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4430 : vec4<f32> = u_xlat15;
            let x_4431 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_4430 / x_4431);
            let x_4433 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4433 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4435 : vec4<f32> = u_xlat14;
            let x_4438 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4435.w, x_4435.x, x_4435.y, x_4435.z) * vec4<f32>(x_4438.x, x_4438.x, x_4438.x, x_4438.x));
            let x_4441 : vec4<f32> = u_xlat15;
            let x_4444 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_4441.x, x_4441.w, x_4441.y, x_4441.z) * vec4<f32>(x_4444.y, x_4444.y, x_4444.y, x_4444.y));
            let x_4447 : vec4<f32> = u_xlat14;
            let x_4448 : vec3<f32> = vec3<f32>(x_4447.y, x_4447.z, x_4447.w);
            let x_4449 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4448.x, x_4449.y, x_4448.y, x_4448.z);
            let x_4452 : f32 = u_xlat15.x;
            u_xlat17.y = x_4452;
            let x_4454 : vec4<f32> = u_xlat12;
            let x_4457 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4460 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4454.x, x_4454.y, x_4454.x, x_4454.y) * vec4<f32>(x_4457.x, x_4457.y, x_4457.x, x_4457.y)) + vec4<f32>(x_4460.x, x_4460.y, x_4460.z, x_4460.y));
            let x_4463 : vec4<f32> = u_xlat12;
            let x_4466 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4469 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_4463.x, x_4463.y) * vec2<f32>(x_4466.x, x_4466.y)) + vec2<f32>(x_4469.w, x_4469.y));
            let x_4473 : f32 = u_xlat17.y;
            u_xlat14.y = x_4473;
            let x_4476 : f32 = u_xlat15.z;
            u_xlat17.y = x_4476;
            let x_4478 : vec4<f32> = u_xlat12;
            let x_4481 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4484 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_4478.x, x_4478.y, x_4478.x, x_4478.y) * vec4<f32>(x_4481.x, x_4481.y, x_4481.x, x_4481.y)) + vec4<f32>(x_4484.x, x_4484.y, x_4484.z, x_4484.y));
            let x_4487 : vec4<f32> = u_xlat12;
            let x_4490 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4493 : vec4<f32> = u_xlat17;
            let x_4495 : vec2<f32> = ((vec2<f32>(x_4487.x, x_4487.y) * vec2<f32>(x_4490.x, x_4490.y)) + vec2<f32>(x_4493.w, x_4493.y));
            let x_4496 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_4495.x, x_4495.y, x_4496.z, x_4496.w);
            let x_4499 : f32 = u_xlat17.y;
            u_xlat14.z = x_4499;
            let x_4501 : vec4<f32> = u_xlat12;
            let x_4504 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4507 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4501.x, x_4501.y, x_4501.x, x_4501.y) * vec4<f32>(x_4504.x, x_4504.y, x_4504.x, x_4504.y)) + vec4<f32>(x_4507.x, x_4507.y, x_4507.x, x_4507.z));
            let x_4511 : f32 = u_xlat15.w;
            u_xlat17.y = x_4511;
            let x_4514 : vec4<f32> = u_xlat12;
            let x_4517 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4520 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4514.x, x_4514.y, x_4514.x, x_4514.y) * vec4<f32>(x_4517.x, x_4517.y, x_4517.x, x_4517.y)) + vec4<f32>(x_4520.x, x_4520.y, x_4520.z, x_4520.y));
            let x_4524 : vec4<f32> = u_xlat12;
            let x_4527 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4530 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_4524.x, x_4524.y) * vec2<f32>(x_4527.x, x_4527.y)) + vec2<f32>(x_4530.w, x_4530.y));
            let x_4534 : f32 = u_xlat17.y;
            u_xlat14.w = x_4534;
            let x_4537 : vec4<f32> = u_xlat12;
            let x_4540 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4543 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4537.x, x_4537.y) * vec2<f32>(x_4540.x, x_4540.y)) + vec2<f32>(x_4543.x, x_4543.w));
            let x_4546 : vec4<f32> = u_xlat17;
            let x_4547 : vec3<f32> = vec3<f32>(x_4546.x, x_4546.z, x_4546.w);
            let x_4548 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4547.x, x_4548.y, x_4547.y, x_4547.z);
            let x_4550 : vec4<f32> = u_xlat12;
            let x_4553 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4556 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4550.x, x_4550.y, x_4550.x, x_4550.y) * vec4<f32>(x_4553.x, x_4553.y, x_4553.x, x_4553.y)) + vec4<f32>(x_4556.x, x_4556.y, x_4556.z, x_4556.y));
            let x_4560 : vec4<f32> = u_xlat12;
            let x_4563 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4566 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4560.x, x_4560.y) * vec2<f32>(x_4563.x, x_4563.y)) + vec2<f32>(x_4566.w, x_4566.y));
            let x_4570 : f32 = u_xlat14.x;
            u_xlat15.x = x_4570;
            let x_4572 : vec4<f32> = u_xlat12;
            let x_4575 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4578 : vec4<f32> = u_xlat15;
            let x_4580 : vec2<f32> = ((vec2<f32>(x_4572.x, x_4572.y) * vec2<f32>(x_4575.x, x_4575.y)) + vec2<f32>(x_4578.x, x_4578.y));
            let x_4581 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4580.x, x_4580.y, x_4581.z, x_4581.w);
            let x_4584 : vec4<f32> = u_xlat13;
            let x_4586 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4584.x, x_4584.x, x_4584.x, x_4584.x) * x_4586);
            let x_4589 : vec4<f32> = u_xlat13;
            let x_4591 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4589.y, x_4589.y, x_4589.y, x_4589.y) * x_4591);
            let x_4594 : vec4<f32> = u_xlat13;
            let x_4596 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4594.z, x_4594.z, x_4594.z, x_4594.z) * x_4596);
            let x_4598 : vec4<f32> = u_xlat13;
            let x_4600 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4598.w, x_4598.w, x_4598.w, x_4598.w) * x_4600);
            let x_4603 : vec4<f32> = u_xlat18;
            let x_4604 : vec2<f32> = vec2<f32>(x_4603.x, x_4603.y);
            let x_4606 : f32 = u_xlat11.z;
            txVec73 = vec3<f32>(x_4604.x, x_4604.y, x_4606);
            let x_4613 : vec3<f32> = txVec73;
            let x_4615 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4613.xy, x_4613.z);
            u_xlat85 = x_4615;
            let x_4617 : vec4<f32> = u_xlat18;
            let x_4618 : vec2<f32> = vec2<f32>(x_4617.z, x_4617.w);
            let x_4620 : f32 = u_xlat11.z;
            txVec74 = vec3<f32>(x_4618.x, x_4618.y, x_4620);
            let x_4627 : vec3<f32> = txVec74;
            let x_4629 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4627.xy, x_4627.z);
            u_xlat86 = x_4629;
            let x_4630 : f32 = u_xlat86;
            let x_4632 : f32 = u_xlat23.y;
            u_xlat86 = (x_4630 * x_4632);
            let x_4635 : f32 = u_xlat23.x;
            let x_4636 : f32 = u_xlat85;
            let x_4638 : f32 = u_xlat86;
            u_xlat85 = ((x_4635 * x_4636) + x_4638);
            let x_4641 : vec2<f32> = u_xlat64;
            let x_4643 : f32 = u_xlat11.z;
            txVec75 = vec3<f32>(x_4641.x, x_4641.y, x_4643);
            let x_4650 : vec3<f32> = txVec75;
            let x_4652 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4650.xy, x_4650.z);
            u_xlat86 = x_4652;
            let x_4654 : f32 = u_xlat23.z;
            let x_4655 : f32 = u_xlat86;
            let x_4657 : f32 = u_xlat85;
            u_xlat85 = ((x_4654 * x_4655) + x_4657);
            let x_4660 : vec4<f32> = u_xlat21;
            let x_4661 : vec2<f32> = vec2<f32>(x_4660.x, x_4660.y);
            let x_4663 : f32 = u_xlat11.z;
            txVec76 = vec3<f32>(x_4661.x, x_4661.y, x_4663);
            let x_4670 : vec3<f32> = txVec76;
            let x_4672 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4670.xy, x_4670.z);
            u_xlat86 = x_4672;
            let x_4674 : f32 = u_xlat23.w;
            let x_4675 : f32 = u_xlat86;
            let x_4677 : f32 = u_xlat85;
            u_xlat85 = ((x_4674 * x_4675) + x_4677);
            let x_4680 : vec4<f32> = u_xlat19;
            let x_4681 : vec2<f32> = vec2<f32>(x_4680.x, x_4680.y);
            let x_4683 : f32 = u_xlat11.z;
            txVec77 = vec3<f32>(x_4681.x, x_4681.y, x_4683);
            let x_4690 : vec3<f32> = txVec77;
            let x_4692 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4690.xy, x_4690.z);
            u_xlat86 = x_4692;
            let x_4694 : f32 = u_xlat24.x;
            let x_4695 : f32 = u_xlat86;
            let x_4697 : f32 = u_xlat85;
            u_xlat85 = ((x_4694 * x_4695) + x_4697);
            let x_4700 : vec4<f32> = u_xlat19;
            let x_4701 : vec2<f32> = vec2<f32>(x_4700.z, x_4700.w);
            let x_4703 : f32 = u_xlat11.z;
            txVec78 = vec3<f32>(x_4701.x, x_4701.y, x_4703);
            let x_4710 : vec3<f32> = txVec78;
            let x_4712 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4710.xy, x_4710.z);
            u_xlat86 = x_4712;
            let x_4714 : f32 = u_xlat24.y;
            let x_4715 : f32 = u_xlat86;
            let x_4717 : f32 = u_xlat85;
            u_xlat85 = ((x_4714 * x_4715) + x_4717);
            let x_4720 : vec4<f32> = u_xlat20;
            let x_4721 : vec2<f32> = vec2<f32>(x_4720.x, x_4720.y);
            let x_4723 : f32 = u_xlat11.z;
            txVec79 = vec3<f32>(x_4721.x, x_4721.y, x_4723);
            let x_4730 : vec3<f32> = txVec79;
            let x_4732 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4730.xy, x_4730.z);
            u_xlat86 = x_4732;
            let x_4734 : f32 = u_xlat24.z;
            let x_4735 : f32 = u_xlat86;
            let x_4737 : f32 = u_xlat85;
            u_xlat85 = ((x_4734 * x_4735) + x_4737);
            let x_4740 : vec4<f32> = u_xlat21;
            let x_4741 : vec2<f32> = vec2<f32>(x_4740.z, x_4740.w);
            let x_4743 : f32 = u_xlat11.z;
            txVec80 = vec3<f32>(x_4741.x, x_4741.y, x_4743);
            let x_4750 : vec3<f32> = txVec80;
            let x_4752 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4750.xy, x_4750.z);
            u_xlat86 = x_4752;
            let x_4754 : f32 = u_xlat24.w;
            let x_4755 : f32 = u_xlat86;
            let x_4757 : f32 = u_xlat85;
            u_xlat85 = ((x_4754 * x_4755) + x_4757);
            let x_4760 : vec4<f32> = u_xlat22;
            let x_4761 : vec2<f32> = vec2<f32>(x_4760.x, x_4760.y);
            let x_4763 : f32 = u_xlat11.z;
            txVec81 = vec3<f32>(x_4761.x, x_4761.y, x_4763);
            let x_4770 : vec3<f32> = txVec81;
            let x_4772 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4770.xy, x_4770.z);
            u_xlat86 = x_4772;
            let x_4774 : f32 = u_xlat25.x;
            let x_4775 : f32 = u_xlat86;
            let x_4777 : f32 = u_xlat85;
            u_xlat85 = ((x_4774 * x_4775) + x_4777);
            let x_4780 : vec4<f32> = u_xlat22;
            let x_4781 : vec2<f32> = vec2<f32>(x_4780.z, x_4780.w);
            let x_4783 : f32 = u_xlat11.z;
            txVec82 = vec3<f32>(x_4781.x, x_4781.y, x_4783);
            let x_4790 : vec3<f32> = txVec82;
            let x_4792 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4790.xy, x_4790.z);
            u_xlat86 = x_4792;
            let x_4794 : f32 = u_xlat25.y;
            let x_4795 : f32 = u_xlat86;
            let x_4797 : f32 = u_xlat85;
            u_xlat85 = ((x_4794 * x_4795) + x_4797);
            let x_4800 : vec2<f32> = u_xlat40;
            let x_4802 : f32 = u_xlat11.z;
            txVec83 = vec3<f32>(x_4800.x, x_4800.y, x_4802);
            let x_4809 : vec3<f32> = txVec83;
            let x_4811 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4809.xy, x_4809.z);
            u_xlat86 = x_4811;
            let x_4813 : f32 = u_xlat25.z;
            let x_4814 : f32 = u_xlat86;
            let x_4816 : f32 = u_xlat85;
            u_xlat85 = ((x_4813 * x_4814) + x_4816);
            let x_4819 : vec2<f32> = u_xlat72;
            let x_4821 : f32 = u_xlat11.z;
            txVec84 = vec3<f32>(x_4819.x, x_4819.y, x_4821);
            let x_4828 : vec3<f32> = txVec84;
            let x_4830 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4828.xy, x_4828.z);
            u_xlat86 = x_4830;
            let x_4832 : f32 = u_xlat25.w;
            let x_4833 : f32 = u_xlat86;
            let x_4835 : f32 = u_xlat85;
            u_xlat85 = ((x_4832 * x_4833) + x_4835);
            let x_4838 : vec4<f32> = u_xlat17;
            let x_4839 : vec2<f32> = vec2<f32>(x_4838.x, x_4838.y);
            let x_4841 : f32 = u_xlat11.z;
            txVec85 = vec3<f32>(x_4839.x, x_4839.y, x_4841);
            let x_4848 : vec3<f32> = txVec85;
            let x_4850 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4848.xy, x_4848.z);
            u_xlat86 = x_4850;
            let x_4852 : f32 = u_xlat13.x;
            let x_4853 : f32 = u_xlat86;
            let x_4855 : f32 = u_xlat85;
            u_xlat85 = ((x_4852 * x_4853) + x_4855);
            let x_4858 : vec4<f32> = u_xlat17;
            let x_4859 : vec2<f32> = vec2<f32>(x_4858.z, x_4858.w);
            let x_4861 : f32 = u_xlat11.z;
            txVec86 = vec3<f32>(x_4859.x, x_4859.y, x_4861);
            let x_4868 : vec3<f32> = txVec86;
            let x_4870 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4868.xy, x_4868.z);
            u_xlat86 = x_4870;
            let x_4872 : f32 = u_xlat13.y;
            let x_4873 : f32 = u_xlat86;
            let x_4875 : f32 = u_xlat85;
            u_xlat85 = ((x_4872 * x_4873) + x_4875);
            let x_4878 : vec2<f32> = u_xlat67;
            let x_4880 : f32 = u_xlat11.z;
            txVec87 = vec3<f32>(x_4878.x, x_4878.y, x_4880);
            let x_4887 : vec3<f32> = txVec87;
            let x_4889 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4887.xy, x_4887.z);
            u_xlat86 = x_4889;
            let x_4891 : f32 = u_xlat13.z;
            let x_4892 : f32 = u_xlat86;
            let x_4894 : f32 = u_xlat85;
            u_xlat85 = ((x_4891 * x_4892) + x_4894);
            let x_4897 : vec4<f32> = u_xlat12;
            let x_4898 : vec2<f32> = vec2<f32>(x_4897.x, x_4897.y);
            let x_4900 : f32 = u_xlat11.z;
            txVec88 = vec3<f32>(x_4898.x, x_4898.y, x_4900);
            let x_4907 : vec3<f32> = txVec88;
            let x_4909 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4907.xy, x_4907.z);
            u_xlat86 = x_4909;
            let x_4911 : f32 = u_xlat13.w;
            let x_4912 : f32 = u_xlat86;
            let x_4914 : f32 = u_xlat85;
            u_xlat84 = ((x_4911 * x_4912) + x_4914);
          }
        }
      } else {
        let x_4918 : vec4<f32> = u_xlat11;
        let x_4919 : vec2<f32> = vec2<f32>(x_4918.x, x_4918.y);
        let x_4921 : f32 = u_xlat11.z;
        txVec89 = vec3<f32>(x_4919.x, x_4919.y, x_4921);
        let x_4928 : vec3<f32> = txVec89;
        let x_4930 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4928.xy, x_4928.z);
        u_xlat84 = x_4930;
      }
      let x_4931 : i32 = u_xlati4;
      let x_4933 : f32 = x_130.x_AdditionalShadowParams[x_4931].x;
      u_xlat85 = (1.0f + -(x_4933));
      let x_4936 : f32 = u_xlat84;
      let x_4937 : i32 = u_xlati4;
      let x_4939 : f32 = x_130.x_AdditionalShadowParams[x_4937].x;
      let x_4941 : f32 = u_xlat85;
      u_xlat84 = ((x_4936 * x_4939) + x_4941);
      let x_4944 : f32 = u_xlat11.z;
      u_xlatb85 = (0.0f >= x_4944);
      let x_4948 : f32 = u_xlat11.z;
      u_xlatb86 = (x_4948 >= 1.0f);
      let x_4950 : bool = u_xlatb85;
      let x_4951 : bool = u_xlatb86;
      u_xlatb85 = (x_4950 | x_4951);
      let x_4953 : bool = u_xlatb85;
      let x_4954 : f32 = u_xlat84;
      u_xlat84 = select(x_4954, 1.0f, x_4953);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_4957 : f32 = u_xlat84;
    u_xlat85 = (-(x_4957) + 1.0f);
    let x_4960 : f32 = u_xlat79;
    let x_4961 : f32 = u_xlat85;
    let x_4963 : f32 = u_xlat84;
    u_xlat84 = ((x_4960 * x_4961) + x_4963);
    let x_4966 : f32 = u_xlat5.x;
    let x_4967 : f32 = u_xlat84;
    u_xlat5.x = (x_4966 * x_4967);
    let x_4970 : vec4<f32> = u_xlat6;
    let x_4972 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_4970.x, x_4970.y, x_4970.z), vec3<f32>(x_4972.x, x_4972.y, x_4972.z));
    let x_4975 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4975, 0.0f, 1.0f);
    let x_4978 : f32 = u_xlat5.x;
    let x_4979 : f32 = u_xlat84;
    u_xlat5.x = (x_4978 * x_4979);
    let x_4982 : vec4<f32> = u_xlat5;
    let x_4984 : i32 = u_xlati4;
    let x_4986 : vec4<f32> = x_3529.x_AdditionalLightsColor[x_4984];
    let x_4988 : vec3<f32> = (vec3<f32>(x_4982.x, x_4982.x, x_4982.x) * vec3<f32>(x_4986.x, x_4986.y, x_4986.z));
    let x_4989 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4988.x, x_4988.y, x_4988.z, x_4989.w);
    let x_4991 : vec4<f32> = u_xlat9;
    let x_4993 : f32 = u_xlat83;
    let x_4996 : vec4<f32> = u_xlat7;
    let x_4998 : vec3<f32> = ((vec3<f32>(x_4991.x, x_4991.y, x_4991.z) * vec3<f32>(x_4993, x_4993, x_4993)) + vec3<f32>(x_4996.x, x_4996.y, x_4996.z));
    let x_4999 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4998.x, x_4998.y, x_4998.z, x_4999.w);
    let x_5001 : vec4<f32> = u_xlat9;
    let x_5003 : vec4<f32> = u_xlat9;
    u_xlat4.x = dot(vec3<f32>(x_5001.x, x_5001.y, x_5001.z), vec3<f32>(x_5003.x, x_5003.y, x_5003.z));
    let x_5008 : f32 = u_xlat4.x;
    u_xlat4.x = max(x_5008, 1.17549435e-38f);
    let x_5012 : f32 = u_xlat4.x;
    u_xlat4.x = inverseSqrt(x_5012);
    let x_5015 : vec4<f32> = u_xlat4;
    let x_5017 : vec4<f32> = u_xlat9;
    let x_5019 : vec3<f32> = (vec3<f32>(x_5015.x, x_5015.x, x_5015.x) * vec3<f32>(x_5017.x, x_5017.y, x_5017.z));
    let x_5020 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5019.x, x_5019.y, x_5019.z, x_5020.w);
    let x_5022 : vec4<f32> = u_xlat6;
    let x_5024 : vec4<f32> = u_xlat9;
    u_xlat4.x = dot(vec3<f32>(x_5022.x, x_5022.y, x_5022.z), vec3<f32>(x_5024.x, x_5024.y, x_5024.z));
    let x_5029 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_5029, 0.0f, 1.0f);
    let x_5032 : vec4<f32> = u_xlat10;
    let x_5034 : vec4<f32> = u_xlat9;
    u_xlat5.x = dot(vec3<f32>(x_5032.x, x_5032.y, x_5032.z), vec3<f32>(x_5034.x, x_5034.y, x_5034.z));
    let x_5039 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_5039, 0.0f, 1.0f);
    let x_5043 : f32 = u_xlat4.x;
    let x_5045 : f32 = u_xlat4.x;
    u_xlat4.x = (x_5043 * x_5045);
    let x_5049 : f32 = u_xlat4.x;
    let x_5051 : f32 = u_xlat27.x;
    u_xlat4.x = ((x_5049 * x_5051) + 1.00001001358032226562f);
    let x_5056 : f32 = u_xlat5.x;
    let x_5058 : f32 = u_xlat5.x;
    u_xlat5.x = (x_5056 * x_5058);
    let x_5062 : f32 = u_xlat4.x;
    let x_5064 : f32 = u_xlat4.x;
    u_xlat4.x = (x_5062 * x_5064);
    let x_5068 : f32 = u_xlat5.x;
    u_xlat5.x = max(x_5068, 0.10000000149011611938f);
    let x_5072 : f32 = u_xlat4.x;
    let x_5074 : f32 = u_xlat5.x;
    u_xlat4.x = (x_5072 * x_5074);
    let x_5078 : f32 = u_xlat31.x;
    let x_5080 : f32 = u_xlat4.x;
    u_xlat4.x = (x_5078 * x_5080);
    let x_5083 : f32 = u_xlat80;
    let x_5085 : f32 = u_xlat4.x;
    u_xlat4.x = (x_5083 / x_5085);
    let x_5088 : vec4<f32> = u_xlat4;
    let x_5091 : vec3<f32> = u_xlat2;
    let x_5092 : vec3<f32> = ((vec3<f32>(x_5088.x, x_5088.x, x_5088.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5091);
    let x_5093 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5092.x, x_5092.y, x_5092.z, x_5093.w);
    let x_5095 : vec4<f32> = u_xlat9;
    let x_5097 : vec4<f32> = u_xlat11;
    let x_5100 : vec4<f32> = u_xlat8;
    let x_5102 : vec3<f32> = ((vec3<f32>(x_5095.x, x_5095.y, x_5095.z) * vec3<f32>(x_5097.x, x_5097.y, x_5097.z)) + vec3<f32>(x_5100.x, x_5100.y, x_5100.z));
    let x_5103 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5102.x, x_5102.y, x_5102.z, x_5103.w);

    continuing {
      let x_5105 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5105 + bitcast<u32>(1i));
    }
  }
  let x_5107 : vec4<f32> = u_xlat3;
  let x_5109 : vec2<f32> = u_xlat57;
  let x_5112 : vec3<f32> = u_xlat30;
  u_xlat2 = ((vec3<f32>(x_5107.x, x_5107.y, x_5107.z) * vec3<f32>(x_5109.x, x_5109.x, x_5109.x)) + x_5112);
  let x_5114 : vec4<f32> = u_xlat8;
  let x_5116 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_5114.x, x_5114.y, x_5114.z) + x_5116);
  let x_5120 : vec4<f32> = vs_INTERP6;
  let x_5122 : vec3<f32> = u_xlat0;
  let x_5124 : vec3<f32> = u_xlat2;
  let x_5125 : vec3<f32> = ((vec3<f32>(x_5120.w, x_5120.w, x_5120.w) * x_5122) + x_5124);
  let x_5126 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5125.x, x_5125.y, x_5125.z, x_5126.w);
  let x_5128 : bool = u_xlatb53;
  if (x_5128) {
    let x_5133 : f32 = u_xlat1.x;
    x_5129 = x_5133;
  } else {
    x_5129 = 1.0f;
  }
  let x_5135 : f32 = x_5129;
  SV_Target0.w = x_5135;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_INTERP9_param : vec3<f32>, @location(1) vs_INTERP5_param : vec4<f32>, @location(2) vs_INTERP6_param : vec4<f32>, @location(3) vs_INTERP8_param : vec3<f32>, @location(0) vs_INTERP4_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP4 = vs_INTERP4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


