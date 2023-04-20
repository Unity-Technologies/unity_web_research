diagnostic(off, derivative_uniformity);

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

var<private> u_xlatb25 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_48 : UnityPerDraw;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_126 : PGlobals;

var<private> u_xlat5 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_136 : UnityPerMaterial;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat31 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_241 : LightShadows;

var<private> u_xlatb0 : bool;

var<private> u_xlatb76 : bool;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat76 : f32;

var<private> u_xlatb77 : bool;

var<private> u_xlat53 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlatb27 : bool;

var<private> u_xlatb52 : bool;

var<private> u_xlat26 : vec3<f32>;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat52 : f32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat78 : f32;

var<private> u_xlat79 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb31 : bool;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat56 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb2 : bool;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu0 : u32;

var<private> u_xlatu79 : u32;

var<private> u_xlati82 : i32;

var<private> u_xlati79 : i32;

@group(1) @binding(1) var<uniform> x_3473 : AdditionalLights;

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

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlatb35 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu77 : u32;

var<private> u_xlatb79 : bool;

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
  var x_1585 : f32;
  var x_1630 : f32;
  var x_1709 : f32;
  var x_1720 : f32;
  var x_1731 : f32;
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
  var x_3072 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3616 : f32;
  var x_3628 : f32;
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
  let x_39 : f32 = vs_INTERP4.w;
  u_xlatb25.x = (0.0f < x_39);
  let x_53 : f32 = x_48.unity_WorldTransformParams.w;
  u_xlatb25.y = (x_53 >= 0.0f);
  let x_59 : bool = u_xlatb25.x;
  u_xlat25.x = select(-1.0f, 1.0f, x_59);
  let x_64 : bool = u_xlatb25.y;
  u_xlat25.y = select(-1.0f, 1.0f, x_64);
  let x_68 : f32 = u_xlat25.y;
  let x_70 : f32 = u_xlat25.x;
  u_xlat25.x = (x_68 * x_70);
  let x_74 : vec4<f32> = vs_INTERP4;
  let x_76 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_74.y, x_74.z, x_74.x) * vec3<f32>(x_76.z, x_76.x, x_76.y));
  let x_79 : vec3<f32> = vs_INTERP9;
  let x_81 : vec4<f32> = vs_INTERP4;
  let x_84 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_79.y, x_79.z, x_79.x) * vec3<f32>(x_81.z, x_81.x, x_81.y)) + -(x_84));
  let x_87 : vec3<f32> = u_xlat25;
  let x_89 : vec3<f32> = u_xlat1;
  u_xlat25 = (vec3<f32>(x_87.x, x_87.x, x_87.x) * x_89);
  let x_91 : vec3<f32> = u_xlat0;
  let x_93 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_91.x, x_91.x, x_91.x) * x_93);
  let x_96 : vec3<f32> = u_xlat0;
  let x_98 : vec4<f32> = vs_INTERP4;
  u_xlat2 = (vec3<f32>(x_96.x, x_96.x, x_96.x) * vec3<f32>(x_98.x, x_98.y, x_98.z));
  let x_103 : vec3<f32> = u_xlat25;
  let x_104 : vec3<f32> = u_xlat0;
  let x_106 : vec3<f32> = (x_103 * vec3<f32>(x_104.x, x_104.x, x_104.x));
  let x_107 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_106.x, x_106.y, x_106.z, x_107.w);
  let x_122 : vec4<f32> = vs_INTERP5;
  let x_129 : f32 = x_126.x_GlobalMipBias.x;
  let x_130 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_122.x, x_122.y), x_129);
  u_xlat4 = x_130;
  let x_132 : vec4<f32> = u_xlat4;
  let x_140 : vec4<f32> = x_136.Color_C30C7CA3;
  u_xlat5 = (vec3<f32>(x_132.x, x_132.y, x_132.z) * vec3<f32>(x_140.x, x_140.y, x_140.z));
  let x_149 : vec4<f32> = vs_INTERP5;
  let x_152 : f32 = x_126.x_GlobalMipBias.x;
  let x_153 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_149.x, x_149.y), x_152);
  u_xlat6 = vec4<f32>(x_153.w, x_153.x, x_153.y, x_153.z);
  let x_156 : vec4<f32> = u_xlat6;
  u_xlat7 = ((vec4<f32>(x_156.y, x_156.z, x_156.w, x_156.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_163 : vec4<f32> = u_xlat7;
  let x_164 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_163, x_164);
  let x_168 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_168);
  let x_172 : vec3<f32> = u_xlat0;
  let x_174 : vec4<f32> = u_xlat7;
  u_xlat31 = (vec3<f32>(x_172.x, x_172.x, x_172.x) * vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_179 : f32 = vs_INTERP6.y;
  u_xlat0.x = (x_179 * 200.0f);
  let x_184 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_184, 1.0f);
  let x_187 : vec3<f32> = u_xlat0;
  let x_189 : vec4<f32> = u_xlat4;
  let x_191 : vec3<f32> = (vec3<f32>(x_187.x, x_187.x, x_187.x) * vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_192 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_194 : vec4<f32> = u_xlat3;
  let x_196 : vec3<f32> = u_xlat31;
  let x_198 : vec3<f32> = (vec3<f32>(x_194.x, x_194.y, x_194.z) * vec3<f32>(x_196.y, x_196.y, x_196.y));
  let x_199 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_201 : vec3<f32> = u_xlat31;
  let x_203 : vec3<f32> = u_xlat2;
  let x_205 : vec4<f32> = u_xlat3;
  u_xlat2 = ((vec3<f32>(x_201.x, x_201.x, x_201.x) * x_203) + vec3<f32>(x_205.x, x_205.y, x_205.z));
  let x_208 : vec3<f32> = u_xlat31;
  let x_210 : vec3<f32> = u_xlat1;
  let x_212 : vec3<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_208.z, x_208.z, x_208.z) * x_210) + x_212);
  let x_214 : vec3<f32> = u_xlat1;
  let x_215 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_214, x_215);
  let x_219 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_219, 1.17549435e-38f);
  let x_224 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_224);
  let x_227 : vec3<f32> = u_xlat0;
  let x_229 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_227.x, x_227.x, x_227.x) * x_229);
  let x_232 : vec3<f32> = vs_INTERP8;
  let x_243 : vec4<f32> = x_241.x_MainLightWorldToShadow[0i][1i];
  u_xlat2 = (vec3<f32>(x_232.y, x_232.y, x_232.y) * vec3<f32>(x_243.x, x_243.y, x_243.z));
  let x_247 : vec4<f32> = x_241.x_MainLightWorldToShadow[0i][0i];
  let x_249 : vec3<f32> = vs_INTERP8;
  let x_252 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_247.x, x_247.y, x_247.z) * vec3<f32>(x_249.x, x_249.x, x_249.x)) + x_252);
  let x_256 : vec4<f32> = x_241.x_MainLightWorldToShadow[0i][2i];
  let x_258 : vec3<f32> = vs_INTERP8;
  let x_261 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_256.x, x_256.y, x_256.z) * vec3<f32>(x_258.z, x_258.z, x_258.z)) + x_261);
  let x_263 : vec3<f32> = u_xlat2;
  let x_265 : vec4<f32> = x_241.x_MainLightWorldToShadow[0i][3i];
  u_xlat2 = (x_263 + vec3<f32>(x_265.x, x_265.y, x_265.z));
  let x_271 : f32 = x_241.x_MainLightShadowParams.y;
  u_xlatb0 = (0.0f < x_271);
  let x_273 : bool = u_xlatb0;
  if (x_273) {
    let x_278 : f32 = x_241.x_MainLightShadowParams.y;
    u_xlatb76 = (x_278 == 1.0f);
    let x_280 : bool = u_xlatb76;
    if (x_280) {
      let x_283 : vec3<f32> = u_xlat2;
      let x_287 : vec4<f32> = x_241.x_MainLightShadowOffset0;
      u_xlat3 = (vec4<f32>(x_283.x, x_283.y, x_283.x, x_283.y) + x_287);
      let x_291 : vec4<f32> = u_xlat3;
      let x_292 : vec2<f32> = vec2<f32>(x_291.x, x_291.y);
      let x_294 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_292.x, x_292.y, x_294);
      let x_306 : vec3<f32> = txVec0;
      let x_308 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_306.xy, x_306.z);
      u_xlat7.x = x_308;
      let x_311 : vec4<f32> = u_xlat3;
      let x_312 : vec2<f32> = vec2<f32>(x_311.z, x_311.w);
      let x_314 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_312.x, x_312.y, x_314);
      let x_321 : vec3<f32> = txVec1;
      let x_323 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_321.xy, x_321.z);
      u_xlat7.y = x_323;
      let x_325 : vec3<f32> = u_xlat2;
      let x_329 : vec4<f32> = x_241.x_MainLightShadowOffset1;
      u_xlat3 = (vec4<f32>(x_325.x, x_325.y, x_325.x, x_325.y) + x_329);
      let x_332 : vec4<f32> = u_xlat3;
      let x_333 : vec2<f32> = vec2<f32>(x_332.x, x_332.y);
      let x_335 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_333.x, x_333.y, x_335);
      let x_342 : vec3<f32> = txVec2;
      let x_344 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_342.xy, x_342.z);
      u_xlat7.z = x_344;
      let x_347 : vec4<f32> = u_xlat3;
      let x_348 : vec2<f32> = vec2<f32>(x_347.z, x_347.w);
      let x_350 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_348.x, x_348.y, x_350);
      let x_357 : vec3<f32> = txVec3;
      let x_359 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_357.xy, x_357.z);
      u_xlat7.w = x_359;
      let x_362 : vec4<f32> = u_xlat7;
      u_xlat76 = dot(x_362, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_369 : f32 = x_241.x_MainLightShadowParams.y;
      u_xlatb77 = (x_369 == 2.0f);
      let x_371 : bool = u_xlatb77;
      if (x_371) {
        let x_374 : vec3<f32> = u_xlat2;
        let x_378 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_383 : vec2<f32> = ((vec2<f32>(x_374.x, x_374.y) * vec2<f32>(x_378.z, x_378.w)) + vec2<f32>(0.5f, 0.5f));
        let x_384 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_383.x, x_383.y, x_384.z, x_384.w);
        let x_386 : vec4<f32> = u_xlat3;
        let x_388 : vec2<f32> = floor(vec2<f32>(x_386.x, x_386.y));
        let x_389 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_388.x, x_388.y, x_389.z, x_389.w);
        let x_393 : vec3<f32> = u_xlat2;
        let x_396 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_399 : vec4<f32> = u_xlat3;
        u_xlat53 = ((vec2<f32>(x_393.x, x_393.y) * vec2<f32>(x_396.z, x_396.w)) + -(vec2<f32>(x_399.x, x_399.y)));
        let x_403 : vec2<f32> = u_xlat53;
        u_xlat7 = (vec4<f32>(x_403.x, x_403.x, x_403.y, x_403.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_408 : vec4<f32> = u_xlat7;
        let x_410 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_408.x, x_408.x, x_408.z, x_408.z) * vec4<f32>(x_410.x, x_410.x, x_410.z, x_410.z));
        let x_413 : vec4<f32> = u_xlat8;
        let x_417 : vec2<f32> = (vec2<f32>(x_413.y, x_413.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_418 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_417.x, x_418.y, x_417.y, x_418.w);
        let x_420 : vec4<f32> = u_xlat8;
        let x_423 : vec2<f32> = u_xlat53;
        let x_425 : vec2<f32> = ((vec2<f32>(x_420.x, x_420.z) * vec2<f32>(0.5f, 0.5f)) + -(x_423));
        let x_426 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_425.x, x_425.y, x_426.z, x_426.w);
        let x_429 : vec2<f32> = u_xlat53;
        u_xlat58 = (-(x_429) + vec2<f32>(1.0f, 1.0f));
        let x_434 : vec2<f32> = u_xlat53;
        let x_436 : vec2<f32> = min(x_434, vec2<f32>(0.0f, 0.0f));
        let x_437 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_436.x, x_436.y, x_437.z, x_437.w);
        let x_439 : vec4<f32> = u_xlat9;
        let x_442 : vec4<f32> = u_xlat9;
        let x_445 : vec2<f32> = u_xlat58;
        let x_446 : vec2<f32> = ((-(vec2<f32>(x_439.x, x_439.y)) * vec2<f32>(x_442.x, x_442.y)) + x_445);
        let x_447 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_446.x, x_446.y, x_447.z, x_447.w);
        let x_449 : vec2<f32> = u_xlat53;
        u_xlat53 = max(x_449, vec2<f32>(0.0f, 0.0f));
        let x_451 : vec2<f32> = u_xlat53;
        let x_453 : vec2<f32> = u_xlat53;
        let x_455 : vec4<f32> = u_xlat7;
        u_xlat53 = ((-(x_451) * x_453) + vec2<f32>(x_455.y, x_455.w));
        let x_458 : vec4<f32> = u_xlat9;
        let x_460 : vec2<f32> = (vec2<f32>(x_458.x, x_458.y) + vec2<f32>(1.0f, 1.0f));
        let x_461 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_460.x, x_460.y, x_461.z, x_461.w);
        let x_463 : vec2<f32> = u_xlat53;
        u_xlat53 = (x_463 + vec2<f32>(1.0f, 1.0f));
        let x_466 : vec4<f32> = u_xlat8;
        let x_470 : vec2<f32> = (vec2<f32>(x_466.x, x_466.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_471 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_470.x, x_470.y, x_471.z, x_471.w);
        let x_473 : vec2<f32> = u_xlat58;
        let x_474 : vec2<f32> = (x_473 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_475 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_474.x, x_474.y, x_475.z, x_475.w);
        let x_477 : vec4<f32> = u_xlat9;
        let x_479 : vec2<f32> = (vec2<f32>(x_477.x, x_477.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_480 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_479.x, x_479.y, x_480.z, x_480.w);
        let x_483 : vec2<f32> = u_xlat53;
        let x_484 : vec2<f32> = (x_483 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_485 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_484.x, x_484.y, x_485.z, x_485.w);
        let x_487 : vec4<f32> = u_xlat7;
        u_xlat53 = (vec2<f32>(x_487.y, x_487.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_491 : f32 = u_xlat9.x;
        u_xlat10.z = x_491;
        let x_494 : f32 = u_xlat53.x;
        u_xlat10.w = x_494;
        let x_497 : f32 = u_xlat11.x;
        u_xlat8.z = x_497;
        let x_500 : f32 = u_xlat7.x;
        u_xlat8.w = x_500;
        let x_503 : vec4<f32> = u_xlat8;
        let x_505 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_503.z, x_503.w, x_503.x, x_503.z) + vec4<f32>(x_505.z, x_505.w, x_505.x, x_505.z));
        let x_509 : f32 = u_xlat10.y;
        u_xlat9.z = x_509;
        let x_512 : f32 = u_xlat53.y;
        u_xlat9.w = x_512;
        let x_515 : f32 = u_xlat8.y;
        u_xlat11.z = x_515;
        let x_518 : f32 = u_xlat7.z;
        u_xlat11.w = x_518;
        let x_520 : vec4<f32> = u_xlat9;
        let x_522 : vec4<f32> = u_xlat11;
        let x_524 : vec3<f32> = (vec3<f32>(x_520.z, x_520.y, x_520.w) + vec3<f32>(x_522.z, x_522.y, x_522.w));
        let x_525 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525.w);
        let x_527 : vec4<f32> = u_xlat8;
        let x_529 : vec4<f32> = u_xlat12;
        let x_531 : vec3<f32> = (vec3<f32>(x_527.x, x_527.z, x_527.w) / vec3<f32>(x_529.z, x_529.w, x_529.y));
        let x_532 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
        let x_534 : vec4<f32> = u_xlat8;
        let x_540 : vec3<f32> = (vec3<f32>(x_534.x, x_534.y, x_534.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_541 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_540.x, x_540.y, x_540.z, x_541.w);
        let x_543 : vec4<f32> = u_xlat11;
        let x_545 : vec4<f32> = u_xlat7;
        let x_547 : vec3<f32> = (vec3<f32>(x_543.z, x_543.y, x_543.w) / vec3<f32>(x_545.x, x_545.y, x_545.z));
        let x_548 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
        let x_550 : vec4<f32> = u_xlat9;
        let x_552 : vec3<f32> = (vec3<f32>(x_550.x, x_550.y, x_550.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_553 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
        let x_555 : vec4<f32> = u_xlat8;
        let x_558 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_560 : vec3<f32> = (vec3<f32>(x_555.y, x_555.x, x_555.z) * vec3<f32>(x_558.x, x_558.x, x_558.x));
        let x_561 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
        let x_563 : vec4<f32> = u_xlat9;
        let x_566 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_568 : vec3<f32> = (vec3<f32>(x_563.x, x_563.y, x_563.z) * vec3<f32>(x_566.y, x_566.y, x_566.y));
        let x_569 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
        let x_572 : f32 = u_xlat9.x;
        u_xlat8.w = x_572;
        let x_574 : vec4<f32> = u_xlat3;
        let x_577 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_580 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_574.x, x_574.y, x_574.x, x_574.y) * vec4<f32>(x_577.x, x_577.y, x_577.x, x_577.y)) + vec4<f32>(x_580.y, x_580.w, x_580.x, x_580.w));
        let x_583 : vec4<f32> = u_xlat3;
        let x_586 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_589 : vec4<f32> = u_xlat8;
        u_xlat53 = ((vec2<f32>(x_583.x, x_583.y) * vec2<f32>(x_586.x, x_586.y)) + vec2<f32>(x_589.z, x_589.w));
        let x_593 : f32 = u_xlat8.y;
        u_xlat9.w = x_593;
        let x_595 : vec4<f32> = u_xlat9;
        let x_596 : vec2<f32> = vec2<f32>(x_595.y, x_595.z);
        let x_597 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_597.x, x_596.x, x_597.z, x_596.y);
        let x_599 : vec4<f32> = u_xlat3;
        let x_602 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_605 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_599.x, x_599.y, x_599.x, x_599.y) * vec4<f32>(x_602.x, x_602.y, x_602.x, x_602.y)) + vec4<f32>(x_605.x, x_605.y, x_605.z, x_605.y));
        let x_608 : vec4<f32> = u_xlat3;
        let x_611 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_614 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_608.x, x_608.y, x_608.x, x_608.y) * vec4<f32>(x_611.x, x_611.y, x_611.x, x_611.y)) + vec4<f32>(x_614.w, x_614.y, x_614.w, x_614.z));
        let x_617 : vec4<f32> = u_xlat3;
        let x_620 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_623 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_617.x, x_617.y, x_617.x, x_617.y) * vec4<f32>(x_620.x, x_620.y, x_620.x, x_620.y)) + vec4<f32>(x_623.x, x_623.w, x_623.z, x_623.w));
        let x_627 : vec4<f32> = u_xlat7;
        let x_629 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_627.x, x_627.x, x_627.x, x_627.y) * vec4<f32>(x_629.z, x_629.w, x_629.y, x_629.z));
        let x_633 : vec4<f32> = u_xlat7;
        let x_635 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_633.y, x_633.y, x_633.z, x_633.z) * x_635);
        let x_639 : f32 = u_xlat7.z;
        let x_641 : f32 = u_xlat12.y;
        u_xlat77 = (x_639 * x_641);
        let x_644 : vec4<f32> = u_xlat10;
        let x_645 : vec2<f32> = vec2<f32>(x_644.x, x_644.y);
        let x_647 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_645.x, x_645.y, x_647);
        let x_654 : vec3<f32> = txVec4;
        let x_656 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_654.xy, x_654.z);
        u_xlat3.x = x_656;
        let x_659 : vec4<f32> = u_xlat10;
        let x_660 : vec2<f32> = vec2<f32>(x_659.z, x_659.w);
        let x_662 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_660.x, x_660.y, x_662);
        let x_670 : vec3<f32> = txVec5;
        let x_672 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_670.xy, x_670.z);
        u_xlat28 = x_672;
        let x_673 : f32 = u_xlat28;
        let x_675 : f32 = u_xlat13.y;
        u_xlat28 = (x_673 * x_675);
        let x_678 : f32 = u_xlat13.x;
        let x_680 : f32 = u_xlat3.x;
        let x_682 : f32 = u_xlat28;
        u_xlat3.x = ((x_678 * x_680) + x_682);
        let x_686 : vec2<f32> = u_xlat53;
        let x_688 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_686.x, x_686.y, x_688);
        let x_695 : vec3<f32> = txVec6;
        let x_697 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_695.xy, x_695.z);
        u_xlat28 = x_697;
        let x_699 : f32 = u_xlat13.z;
        let x_700 : f32 = u_xlat28;
        let x_703 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_699 * x_700) + x_703);
        let x_707 : vec4<f32> = u_xlat9;
        let x_708 : vec2<f32> = vec2<f32>(x_707.x, x_707.y);
        let x_710 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_708.x, x_708.y, x_710);
        let x_717 : vec3<f32> = txVec7;
        let x_719 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_717.xy, x_717.z);
        u_xlat28 = x_719;
        let x_721 : f32 = u_xlat13.w;
        let x_722 : f32 = u_xlat28;
        let x_725 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_721 * x_722) + x_725);
        let x_729 : vec4<f32> = u_xlat11;
        let x_730 : vec2<f32> = vec2<f32>(x_729.x, x_729.y);
        let x_732 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_730.x, x_730.y, x_732);
        let x_739 : vec3<f32> = txVec8;
        let x_741 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_739.xy, x_739.z);
        u_xlat28 = x_741;
        let x_743 : f32 = u_xlat14.x;
        let x_744 : f32 = u_xlat28;
        let x_747 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_743 * x_744) + x_747);
        let x_751 : vec4<f32> = u_xlat11;
        let x_752 : vec2<f32> = vec2<f32>(x_751.z, x_751.w);
        let x_754 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_752.x, x_752.y, x_754);
        let x_761 : vec3<f32> = txVec9;
        let x_763 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_761.xy, x_761.z);
        u_xlat28 = x_763;
        let x_765 : f32 = u_xlat14.y;
        let x_766 : f32 = u_xlat28;
        let x_769 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_765 * x_766) + x_769);
        let x_773 : vec4<f32> = u_xlat9;
        let x_774 : vec2<f32> = vec2<f32>(x_773.z, x_773.w);
        let x_776 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_774.x, x_774.y, x_776);
        let x_783 : vec3<f32> = txVec10;
        let x_785 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_783.xy, x_783.z);
        u_xlat28 = x_785;
        let x_787 : f32 = u_xlat14.z;
        let x_788 : f32 = u_xlat28;
        let x_791 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_787 * x_788) + x_791);
        let x_795 : vec4<f32> = u_xlat8;
        let x_796 : vec2<f32> = vec2<f32>(x_795.x, x_795.y);
        let x_798 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_796.x, x_796.y, x_798);
        let x_805 : vec3<f32> = txVec11;
        let x_807 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_805.xy, x_805.z);
        u_xlat28 = x_807;
        let x_809 : f32 = u_xlat14.w;
        let x_810 : f32 = u_xlat28;
        let x_813 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_809 * x_810) + x_813);
        let x_817 : vec4<f32> = u_xlat8;
        let x_818 : vec2<f32> = vec2<f32>(x_817.z, x_817.w);
        let x_820 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_818.x, x_818.y, x_820);
        let x_827 : vec3<f32> = txVec12;
        let x_829 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_827.xy, x_827.z);
        u_xlat28 = x_829;
        let x_830 : f32 = u_xlat77;
        let x_831 : f32 = u_xlat28;
        let x_834 : f32 = u_xlat3.x;
        u_xlat76 = ((x_830 * x_831) + x_834);
      } else {
        let x_837 : vec3<f32> = u_xlat2;
        let x_840 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_843 : vec2<f32> = ((vec2<f32>(x_837.x, x_837.y) * vec2<f32>(x_840.z, x_840.w)) + vec2<f32>(0.5f, 0.5f));
        let x_844 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_843.x, x_843.y, x_844.z, x_844.w);
        let x_846 : vec4<f32> = u_xlat3;
        let x_848 : vec2<f32> = floor(vec2<f32>(x_846.x, x_846.y));
        let x_849 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_848.x, x_848.y, x_849.z, x_849.w);
        let x_851 : vec3<f32> = u_xlat2;
        let x_854 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_857 : vec4<f32> = u_xlat3;
        u_xlat53 = ((vec2<f32>(x_851.x, x_851.y) * vec2<f32>(x_854.z, x_854.w)) + -(vec2<f32>(x_857.x, x_857.y)));
        let x_861 : vec2<f32> = u_xlat53;
        u_xlat7 = (vec4<f32>(x_861.x, x_861.x, x_861.y, x_861.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_864 : vec4<f32> = u_xlat7;
        let x_866 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_864.x, x_864.x, x_864.z, x_864.z) * vec4<f32>(x_866.x, x_866.x, x_866.z, x_866.z));
        let x_869 : vec4<f32> = u_xlat8;
        let x_873 : vec2<f32> = (vec2<f32>(x_869.y, x_869.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_874 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_874.x, x_873.x, x_874.z, x_873.y);
        let x_876 : vec4<f32> = u_xlat8;
        let x_879 : vec2<f32> = u_xlat53;
        let x_881 : vec2<f32> = ((vec2<f32>(x_876.x, x_876.z) * vec2<f32>(0.5f, 0.5f)) + -(x_879));
        let x_882 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_881.x, x_882.y, x_881.y, x_882.w);
        let x_884 : vec2<f32> = u_xlat53;
        let x_886 : vec2<f32> = (-(x_884) + vec2<f32>(1.0f, 1.0f));
        let x_887 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_886.x, x_886.y, x_887.z, x_887.w);
        let x_889 : vec2<f32> = u_xlat53;
        u_xlat58 = min(x_889, vec2<f32>(0.0f, 0.0f));
        let x_891 : vec2<f32> = u_xlat58;
        let x_893 : vec2<f32> = u_xlat58;
        let x_895 : vec4<f32> = u_xlat8;
        let x_897 : vec2<f32> = ((-(x_891) * x_893) + vec2<f32>(x_895.x, x_895.y));
        let x_898 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_897.x, x_897.y, x_898.z, x_898.w);
        let x_900 : vec2<f32> = u_xlat53;
        u_xlat58 = max(x_900, vec2<f32>(0.0f, 0.0f));
        let x_903 : vec2<f32> = u_xlat58;
        let x_905 : vec2<f32> = u_xlat58;
        let x_907 : vec4<f32> = u_xlat7;
        let x_909 : vec2<f32> = ((-(x_903) * x_905) + vec2<f32>(x_907.y, x_907.w));
        let x_910 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_909.x, x_910.y, x_909.y);
        let x_912 : vec4<f32> = u_xlat8;
        let x_915 : vec2<f32> = (vec2<f32>(x_912.x, x_912.y) + vec2<f32>(2.0f, 2.0f));
        let x_916 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_915.x, x_915.y, x_916.z, x_916.w);
        let x_918 : vec3<f32> = u_xlat32;
        let x_920 : vec2<f32> = (vec2<f32>(x_918.x, x_918.z) + vec2<f32>(2.0f, 2.0f));
        let x_921 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_921.x, x_920.x, x_921.z, x_920.y);
        let x_924 : f32 = u_xlat7.y;
        u_xlat10.z = (x_924 * 0.08163200318813323975f);
        let x_928 : vec4<f32> = u_xlat7;
        let x_931 : vec3<f32> = (vec3<f32>(x_928.z, x_928.x, x_928.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_932 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_931.x, x_931.y, x_931.z, x_932.w);
        let x_934 : vec4<f32> = u_xlat8;
        let x_937 : vec2<f32> = (vec2<f32>(x_934.x, x_934.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_938 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_937.x, x_937.y, x_938.z, x_938.w);
        let x_941 : f32 = u_xlat11.y;
        u_xlat10.x = x_941;
        let x_943 : vec2<f32> = u_xlat53;
        let x_950 : vec2<f32> = ((vec2<f32>(x_943.x, x_943.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_951 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_951.x, x_950.x, x_951.z, x_950.y);
        let x_953 : vec2<f32> = u_xlat53;
        let x_957 : vec2<f32> = ((vec2<f32>(x_953.x, x_953.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_958 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_957.x, x_958.y, x_957.y, x_958.w);
        let x_961 : f32 = u_xlat7.x;
        u_xlat8.y = x_961;
        let x_964 : f32 = u_xlat9.y;
        u_xlat8.w = x_964;
        let x_966 : vec4<f32> = u_xlat8;
        let x_967 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_966 + x_967);
        let x_969 : vec2<f32> = u_xlat53;
        let x_972 : vec2<f32> = ((vec2<f32>(x_969.y, x_969.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_973 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_973.x, x_972.x, x_973.z, x_972.y);
        let x_975 : vec2<f32> = u_xlat53;
        let x_978 : vec2<f32> = ((vec2<f32>(x_975.y, x_975.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_979 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_978.x, x_979.y, x_978.y, x_979.w);
        let x_982 : f32 = u_xlat7.y;
        u_xlat9.y = x_982;
        let x_984 : vec4<f32> = u_xlat9;
        let x_985 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_984 + x_985);
        let x_987 : vec4<f32> = u_xlat8;
        let x_988 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_987 / x_988);
        let x_990 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_990 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_996 : vec4<f32> = u_xlat9;
        let x_997 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_996 / x_997);
        let x_999 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_999 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1001 : vec4<f32> = u_xlat8;
        let x_1004 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1001.w, x_1001.x, x_1001.y, x_1001.z) * vec4<f32>(x_1004.x, x_1004.x, x_1004.x, x_1004.x));
        let x_1007 : vec4<f32> = u_xlat9;
        let x_1010 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1007.x, x_1007.w, x_1007.y, x_1007.z) * vec4<f32>(x_1010.y, x_1010.y, x_1010.y, x_1010.y));
        let x_1013 : vec4<f32> = u_xlat8;
        let x_1014 : vec3<f32> = vec3<f32>(x_1013.y, x_1013.z, x_1013.w);
        let x_1015 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1014.x, x_1015.y, x_1014.y, x_1014.z);
        let x_1018 : f32 = u_xlat9.x;
        u_xlat11.y = x_1018;
        let x_1020 : vec4<f32> = u_xlat3;
        let x_1023 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_1026 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1020.x, x_1020.y, x_1020.x, x_1020.y) * vec4<f32>(x_1023.x, x_1023.y, x_1023.x, x_1023.y)) + vec4<f32>(x_1026.x, x_1026.y, x_1026.z, x_1026.y));
        let x_1029 : vec4<f32> = u_xlat3;
        let x_1032 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_1035 : vec4<f32> = u_xlat11;
        u_xlat53 = ((vec2<f32>(x_1029.x, x_1029.y) * vec2<f32>(x_1032.x, x_1032.y)) + vec2<f32>(x_1035.w, x_1035.y));
        let x_1039 : f32 = u_xlat11.y;
        u_xlat8.y = x_1039;
        let x_1042 : f32 = u_xlat9.z;
        u_xlat11.y = x_1042;
        let x_1044 : vec4<f32> = u_xlat3;
        let x_1047 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_1050 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1044.x, x_1044.y, x_1044.x, x_1044.y) * vec4<f32>(x_1047.x, x_1047.y, x_1047.x, x_1047.y)) + vec4<f32>(x_1050.x, x_1050.y, x_1050.z, x_1050.y));
        let x_1053 : vec4<f32> = u_xlat3;
        let x_1056 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_1059 : vec4<f32> = u_xlat11;
        let x_1061 : vec2<f32> = ((vec2<f32>(x_1053.x, x_1053.y) * vec2<f32>(x_1056.x, x_1056.y)) + vec2<f32>(x_1059.w, x_1059.y));
        let x_1062 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1061.x, x_1061.y, x_1062.z, x_1062.w);
        let x_1065 : f32 = u_xlat11.y;
        u_xlat8.z = x_1065;
        let x_1068 : vec4<f32> = u_xlat3;
        let x_1071 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_1074 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1068.x, x_1068.y, x_1068.x, x_1068.y) * vec4<f32>(x_1071.x, x_1071.y, x_1071.x, x_1071.y)) + vec4<f32>(x_1074.x, x_1074.y, x_1074.x, x_1074.z));
        let x_1078 : f32 = u_xlat9.w;
        u_xlat11.y = x_1078;
        let x_1081 : vec4<f32> = u_xlat3;
        let x_1084 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_1087 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1081.x, x_1081.y, x_1081.x, x_1081.y) * vec4<f32>(x_1084.x, x_1084.y, x_1084.x, x_1084.y)) + vec4<f32>(x_1087.x, x_1087.y, x_1087.z, x_1087.y));
        let x_1091 : vec4<f32> = u_xlat3;
        let x_1094 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_1097 : vec4<f32> = u_xlat11;
        u_xlat33 = ((vec2<f32>(x_1091.x, x_1091.y) * vec2<f32>(x_1094.x, x_1094.y)) + vec2<f32>(x_1097.w, x_1097.y));
        let x_1101 : f32 = u_xlat11.y;
        u_xlat8.w = x_1101;
        let x_1104 : vec4<f32> = u_xlat3;
        let x_1107 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_1110 : vec4<f32> = u_xlat8;
        u_xlat64 = ((vec2<f32>(x_1104.x, x_1104.y) * vec2<f32>(x_1107.x, x_1107.y)) + vec2<f32>(x_1110.x, x_1110.w));
        let x_1113 : vec4<f32> = u_xlat11;
        let x_1114 : vec3<f32> = vec3<f32>(x_1113.x, x_1113.z, x_1113.w);
        let x_1115 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1114.x, x_1115.y, x_1114.y, x_1114.z);
        let x_1117 : vec4<f32> = u_xlat3;
        let x_1120 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_1123 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1117.x, x_1117.y, x_1117.x, x_1117.y) * vec4<f32>(x_1120.x, x_1120.y, x_1120.x, x_1120.y)) + vec4<f32>(x_1123.x, x_1123.y, x_1123.z, x_1123.y));
        let x_1127 : vec4<f32> = u_xlat3;
        let x_1130 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_1133 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1127.x, x_1127.y) * vec2<f32>(x_1130.x, x_1130.y)) + vec2<f32>(x_1133.w, x_1133.y));
        let x_1137 : f32 = u_xlat8.x;
        u_xlat9.x = x_1137;
        let x_1139 : vec4<f32> = u_xlat3;
        let x_1142 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_1145 : vec4<f32> = u_xlat9;
        let x_1147 : vec2<f32> = ((vec2<f32>(x_1139.x, x_1139.y) * vec2<f32>(x_1142.x, x_1142.y)) + vec2<f32>(x_1145.x, x_1145.y));
        let x_1148 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1147.x, x_1147.y, x_1148.z, x_1148.w);
        let x_1151 : vec4<f32> = u_xlat7;
        let x_1153 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1151.x, x_1151.x, x_1151.x, x_1151.x) * x_1153);
        let x_1156 : vec4<f32> = u_xlat7;
        let x_1158 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1156.y, x_1156.y, x_1156.y, x_1156.y) * x_1158);
        let x_1161 : vec4<f32> = u_xlat7;
        let x_1163 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1161.z, x_1161.z, x_1161.z, x_1161.z) * x_1163);
        let x_1165 : vec4<f32> = u_xlat7;
        let x_1167 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1165.w, x_1165.w, x_1165.w, x_1165.w) * x_1167);
        let x_1170 : vec4<f32> = u_xlat12;
        let x_1171 : vec2<f32> = vec2<f32>(x_1170.x, x_1170.y);
        let x_1173 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_1171.x, x_1171.y, x_1173);
        let x_1180 : vec3<f32> = txVec13;
        let x_1182 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1180.xy, x_1180.z);
        u_xlat77 = x_1182;
        let x_1184 : vec4<f32> = u_xlat12;
        let x_1185 : vec2<f32> = vec2<f32>(x_1184.z, x_1184.w);
        let x_1187 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1185.x, x_1185.y, x_1187);
        let x_1195 : vec3<f32> = txVec14;
        let x_1197 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1195.xy, x_1195.z);
        u_xlat80 = x_1197;
        let x_1198 : f32 = u_xlat80;
        let x_1200 : f32 = u_xlat17.y;
        u_xlat80 = (x_1198 * x_1200);
        let x_1203 : f32 = u_xlat17.x;
        let x_1204 : f32 = u_xlat77;
        let x_1206 : f32 = u_xlat80;
        u_xlat77 = ((x_1203 * x_1204) + x_1206);
        let x_1209 : vec2<f32> = u_xlat53;
        let x_1211 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1209.x, x_1209.y, x_1211);
        let x_1218 : vec3<f32> = txVec15;
        let x_1220 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1218.xy, x_1218.z);
        u_xlat53.x = x_1220;
        let x_1223 : f32 = u_xlat17.z;
        let x_1225 : f32 = u_xlat53.x;
        let x_1227 : f32 = u_xlat77;
        u_xlat77 = ((x_1223 * x_1225) + x_1227);
        let x_1230 : vec4<f32> = u_xlat15;
        let x_1231 : vec2<f32> = vec2<f32>(x_1230.x, x_1230.y);
        let x_1233 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1231.x, x_1231.y, x_1233);
        let x_1240 : vec3<f32> = txVec16;
        let x_1242 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1240.xy, x_1240.z);
        u_xlat53.x = x_1242;
        let x_1245 : f32 = u_xlat17.w;
        let x_1247 : f32 = u_xlat53.x;
        let x_1249 : f32 = u_xlat77;
        u_xlat77 = ((x_1245 * x_1247) + x_1249);
        let x_1252 : vec4<f32> = u_xlat13;
        let x_1253 : vec2<f32> = vec2<f32>(x_1252.x, x_1252.y);
        let x_1255 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1253.x, x_1253.y, x_1255);
        let x_1262 : vec3<f32> = txVec17;
        let x_1264 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1262.xy, x_1262.z);
        u_xlat53.x = x_1264;
        let x_1267 : f32 = u_xlat18.x;
        let x_1269 : f32 = u_xlat53.x;
        let x_1271 : f32 = u_xlat77;
        u_xlat77 = ((x_1267 * x_1269) + x_1271);
        let x_1274 : vec4<f32> = u_xlat13;
        let x_1275 : vec2<f32> = vec2<f32>(x_1274.z, x_1274.w);
        let x_1277 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1275.x, x_1275.y, x_1277);
        let x_1284 : vec3<f32> = txVec18;
        let x_1286 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1284.xy, x_1284.z);
        u_xlat53.x = x_1286;
        let x_1289 : f32 = u_xlat18.y;
        let x_1291 : f32 = u_xlat53.x;
        let x_1293 : f32 = u_xlat77;
        u_xlat77 = ((x_1289 * x_1291) + x_1293);
        let x_1296 : vec4<f32> = u_xlat14;
        let x_1297 : vec2<f32> = vec2<f32>(x_1296.x, x_1296.y);
        let x_1299 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1297.x, x_1297.y, x_1299);
        let x_1306 : vec3<f32> = txVec19;
        let x_1308 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1306.xy, x_1306.z);
        u_xlat53.x = x_1308;
        let x_1311 : f32 = u_xlat18.z;
        let x_1313 : f32 = u_xlat53.x;
        let x_1315 : f32 = u_xlat77;
        u_xlat77 = ((x_1311 * x_1313) + x_1315);
        let x_1318 : vec4<f32> = u_xlat15;
        let x_1319 : vec2<f32> = vec2<f32>(x_1318.z, x_1318.w);
        let x_1321 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1319.x, x_1319.y, x_1321);
        let x_1328 : vec3<f32> = txVec20;
        let x_1330 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1328.xy, x_1328.z);
        u_xlat53.x = x_1330;
        let x_1333 : f32 = u_xlat18.w;
        let x_1335 : f32 = u_xlat53.x;
        let x_1337 : f32 = u_xlat77;
        u_xlat77 = ((x_1333 * x_1335) + x_1337);
        let x_1340 : vec4<f32> = u_xlat16;
        let x_1341 : vec2<f32> = vec2<f32>(x_1340.x, x_1340.y);
        let x_1343 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1341.x, x_1341.y, x_1343);
        let x_1350 : vec3<f32> = txVec21;
        let x_1352 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1350.xy, x_1350.z);
        u_xlat53.x = x_1352;
        let x_1355 : f32 = u_xlat19.x;
        let x_1357 : f32 = u_xlat53.x;
        let x_1359 : f32 = u_xlat77;
        u_xlat77 = ((x_1355 * x_1357) + x_1359);
        let x_1362 : vec4<f32> = u_xlat16;
        let x_1363 : vec2<f32> = vec2<f32>(x_1362.z, x_1362.w);
        let x_1365 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1363.x, x_1363.y, x_1365);
        let x_1372 : vec3<f32> = txVec22;
        let x_1374 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1372.xy, x_1372.z);
        u_xlat53.x = x_1374;
        let x_1377 : f32 = u_xlat19.y;
        let x_1379 : f32 = u_xlat53.x;
        let x_1381 : f32 = u_xlat77;
        u_xlat77 = ((x_1377 * x_1379) + x_1381);
        let x_1384 : vec2<f32> = u_xlat33;
        let x_1386 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1384.x, x_1384.y, x_1386);
        let x_1393 : vec3<f32> = txVec23;
        let x_1395 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1393.xy, x_1393.z);
        u_xlat53.x = x_1395;
        let x_1398 : f32 = u_xlat19.z;
        let x_1400 : f32 = u_xlat53.x;
        let x_1402 : f32 = u_xlat77;
        u_xlat77 = ((x_1398 * x_1400) + x_1402);
        let x_1405 : vec2<f32> = u_xlat64;
        let x_1407 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1405.x, x_1405.y, x_1407);
        let x_1414 : vec3<f32> = txVec24;
        let x_1416 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1414.xy, x_1414.z);
        u_xlat53.x = x_1416;
        let x_1419 : f32 = u_xlat19.w;
        let x_1421 : f32 = u_xlat53.x;
        let x_1423 : f32 = u_xlat77;
        u_xlat77 = ((x_1419 * x_1421) + x_1423);
        let x_1426 : vec4<f32> = u_xlat11;
        let x_1427 : vec2<f32> = vec2<f32>(x_1426.x, x_1426.y);
        let x_1429 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1427.x, x_1427.y, x_1429);
        let x_1436 : vec3<f32> = txVec25;
        let x_1438 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1436.xy, x_1436.z);
        u_xlat53.x = x_1438;
        let x_1441 : f32 = u_xlat7.x;
        let x_1443 : f32 = u_xlat53.x;
        let x_1445 : f32 = u_xlat77;
        u_xlat77 = ((x_1441 * x_1443) + x_1445);
        let x_1448 : vec4<f32> = u_xlat11;
        let x_1449 : vec2<f32> = vec2<f32>(x_1448.z, x_1448.w);
        let x_1451 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1449.x, x_1449.y, x_1451);
        let x_1458 : vec3<f32> = txVec26;
        let x_1460 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1458.xy, x_1458.z);
        u_xlat53.x = x_1460;
        let x_1463 : f32 = u_xlat7.y;
        let x_1465 : f32 = u_xlat53.x;
        let x_1467 : f32 = u_xlat77;
        u_xlat77 = ((x_1463 * x_1465) + x_1467);
        let x_1470 : vec2<f32> = u_xlat59;
        let x_1472 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1470.x, x_1470.y, x_1472);
        let x_1479 : vec3<f32> = txVec27;
        let x_1481 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1479.xy, x_1479.z);
        u_xlat53.x = x_1481;
        let x_1484 : f32 = u_xlat7.z;
        let x_1486 : f32 = u_xlat53.x;
        let x_1488 : f32 = u_xlat77;
        u_xlat77 = ((x_1484 * x_1486) + x_1488);
        let x_1491 : vec4<f32> = u_xlat3;
        let x_1492 : vec2<f32> = vec2<f32>(x_1491.x, x_1491.y);
        let x_1494 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1492.x, x_1492.y, x_1494);
        let x_1501 : vec3<f32> = txVec28;
        let x_1503 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1501.xy, x_1501.z);
        u_xlat3.x = x_1503;
        let x_1506 : f32 = u_xlat7.w;
        let x_1508 : f32 = u_xlat3.x;
        let x_1510 : f32 = u_xlat77;
        u_xlat76 = ((x_1506 * x_1508) + x_1510);
      }
    }
  } else {
    let x_1514 : vec3<f32> = u_xlat2;
    let x_1515 : vec2<f32> = vec2<f32>(x_1514.x, x_1514.y);
    let x_1517 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1515.x, x_1515.y, x_1517);
    let x_1524 : vec3<f32> = txVec29;
    let x_1526 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1524.xy, x_1524.z);
    u_xlat76 = x_1526;
  }
  let x_1528 : f32 = x_241.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_1528) + 1.0f);
  let x_1532 : f32 = u_xlat76;
  let x_1534 : f32 = x_241.x_MainLightShadowParams.x;
  let x_1537 : f32 = u_xlat2.x;
  u_xlat76 = ((x_1532 * x_1534) + x_1537);
  let x_1541 : f32 = u_xlat2.z;
  u_xlatb27 = (0.0f >= x_1541);
  let x_1545 : f32 = u_xlat2.z;
  u_xlatb52 = (x_1545 >= 1.0f);
  let x_1547 : bool = u_xlatb52;
  let x_1548 : bool = u_xlatb27;
  u_xlatb27 = (x_1547 | x_1548);
  let x_1550 : bool = u_xlatb27;
  let x_1551 : f32 = u_xlat76;
  u_xlat76 = select(x_1551, 1.0f, x_1550);
  let x_1553 : vec3<f32> = u_xlat1;
  let x_1555 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat1.x = dot(x_1553, -(vec3<f32>(x_1555.x, x_1555.y, x_1555.z)));
  let x_1561 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1561, 0.0f, 1.0f);
  let x_1565 : f32 = u_xlat76;
  let x_1568 : vec4<f32> = x_126.x_MainLightColor;
  u_xlat26 = (vec3<f32>(x_1565, x_1565, x_1565) * vec3<f32>(x_1568.x, x_1568.y, x_1568.z));
  let x_1571 : vec3<f32> = u_xlat26;
  let x_1572 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_1571 * vec3<f32>(x_1572.x, x_1572.x, x_1572.x));
  let x_1575 : vec3<f32> = u_xlat1;
  let x_1576 : vec4<f32> = u_xlat4;
  u_xlat1 = (x_1575 * vec3<f32>(x_1576.x, x_1576.y, x_1576.z));
  let x_1580 : f32 = u_xlat4.w;
  u_xlatb76 = (x_1580 >= 0.40000000596046447754f);
  let x_1583 : bool = u_xlatb76;
  if (x_1583) {
    let x_1589 : f32 = u_xlat4.w;
    x_1585 = x_1589;
  } else {
    x_1585 = 0.0f;
  }
  let x_1591 : f32 = x_1585;
  u_xlat76 = x_1591;
  let x_1594 : f32 = u_xlat4.w;
  u_xlat27.x = (x_1594 + -0.40000000596046447754f);
  let x_1600 : f32 = u_xlat4.w;
  u_xlat52 = dpdxCoarse(x_1600);
  let x_1603 : f32 = u_xlat4.w;
  u_xlat77 = dpdyCoarse(x_1603);
  let x_1605 : f32 = u_xlat77;
  let x_1607 : f32 = u_xlat52;
  u_xlat52 = (abs(x_1605) + abs(x_1607));
  let x_1610 : f32 = u_xlat52;
  u_xlat52 = max(x_1610, 0.00009999999747378752f);
  let x_1614 : f32 = u_xlat27.x;
  let x_1615 : f32 = u_xlat52;
  u_xlat27.x = (x_1614 / x_1615);
  let x_1619 : f32 = u_xlat27.x;
  u_xlat27.x = (x_1619 + 0.5f);
  let x_1623 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_1623, 0.0f, 1.0f);
  let x_1627 : f32 = x_126.x_AlphaToMaskAvailable;
  u_xlatb52 = !((x_1627 == 0.0f));
  let x_1629 : bool = u_xlatb52;
  if (x_1629) {
    let x_1634 : f32 = u_xlat27.x;
    x_1630 = x_1634;
  } else {
    let x_1636 : f32 = u_xlat76;
    x_1630 = x_1636;
  }
  let x_1637 : f32 = x_1630;
  u_xlat76 = x_1637;
  let x_1638 : f32 = u_xlat76;
  u_xlat27.x = (x_1638 + -0.00009999999747378752f);
  let x_1643 : f32 = u_xlat27.x;
  u_xlatb27 = (x_1643 < 0.0f);
  let x_1645 : bool = u_xlatb27;
  if (((select(0i, 1i, x_1645) * -1i) != 0i)) {
    discard;
  }
  let x_1653 : vec3<f32> = u_xlat25;
  let x_1654 : vec3<f32> = u_xlat31;
  u_xlat25 = (x_1653 * vec3<f32>(x_1654.y, x_1654.y, x_1654.y));
  let x_1657 : vec3<f32> = u_xlat31;
  let x_1659 : vec4<f32> = vs_INTERP4;
  let x_1662 : vec3<f32> = u_xlat25;
  u_xlat25 = ((vec3<f32>(x_1657.x, x_1657.x, x_1657.x) * vec3<f32>(x_1659.x, x_1659.y, x_1659.z)) + x_1662);
  let x_1664 : vec3<f32> = u_xlat31;
  let x_1666 : vec3<f32> = vs_INTERP9;
  let x_1668 : vec3<f32> = u_xlat25;
  u_xlat25 = ((vec3<f32>(x_1664.z, x_1664.z, x_1664.z) * x_1666) + x_1668);
  let x_1670 : vec3<f32> = u_xlat25;
  let x_1671 : vec3<f32> = u_xlat25;
  u_xlat27.x = dot(x_1670, x_1671);
  let x_1675 : f32 = u_xlat27.x;
  u_xlat27.x = inverseSqrt(x_1675);
  let x_1678 : vec3<f32> = u_xlat25;
  let x_1679 : vec3<f32> = u_xlat27;
  u_xlat25 = (x_1678 * vec3<f32>(x_1679.x, x_1679.x, x_1679.x));
  let x_1683 : f32 = x_126.unity_OrthoParams.w;
  u_xlatb27 = (x_1683 == 0.0f);
  let x_1685 : vec3<f32> = vs_INTERP8;
  let x_1690 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_1691 : vec3<f32> = (-(x_1685) + x_1690);
  let x_1692 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1691.x, x_1691.y, x_1691.z, x_1692.w);
  let x_1694 : vec4<f32> = u_xlat3;
  let x_1696 : vec4<f32> = u_xlat3;
  u_xlat77 = dot(vec3<f32>(x_1694.x, x_1694.y, x_1694.z), vec3<f32>(x_1696.x, x_1696.y, x_1696.z));
  let x_1699 : f32 = u_xlat77;
  u_xlat77 = inverseSqrt(x_1699);
  let x_1701 : f32 = u_xlat77;
  let x_1703 : vec4<f32> = u_xlat3;
  let x_1705 : vec3<f32> = (vec3<f32>(x_1701, x_1701, x_1701) * vec3<f32>(x_1703.x, x_1703.y, x_1703.z));
  let x_1706 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1705.x, x_1705.y, x_1705.z, x_1706.w);
  let x_1708 : bool = u_xlatb27;
  if (x_1708) {
    let x_1713 : f32 = u_xlat3.x;
    x_1709 = x_1713;
  } else {
    let x_1716 : f32 = x_126.unity_MatrixV[0i].z;
    x_1709 = x_1716;
  }
  let x_1717 : f32 = x_1709;
  u_xlat4.x = x_1717;
  let x_1719 : bool = u_xlatb27;
  if (x_1719) {
    let x_1724 : f32 = u_xlat3.y;
    x_1720 = x_1724;
  } else {
    let x_1727 : f32 = x_126.unity_MatrixV[1i].z;
    x_1720 = x_1727;
  }
  let x_1728 : f32 = x_1720;
  u_xlat4.y = x_1728;
  let x_1730 : bool = u_xlatb27;
  if (x_1730) {
    let x_1735 : f32 = u_xlat3.z;
    x_1731 = x_1735;
  } else {
    let x_1738 : f32 = x_126.unity_MatrixV[2i].z;
    x_1731 = x_1738;
  }
  let x_1739 : f32 = x_1731;
  u_xlat4.z = x_1739;
  let x_1748 : vec2<f32> = vs_INTERP0;
  let x_1750 : f32 = x_126.x_GlobalMipBias.x;
  let x_1751 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_1748, x_1750);
  u_xlat3 = x_1751;
  let x_1756 : vec2<f32> = vs_INTERP0;
  let x_1758 : f32 = x_126.x_GlobalMipBias.x;
  let x_1759 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_1756, x_1758);
  u_xlat31 = vec3<f32>(x_1759.x, x_1759.y, x_1759.z);
  let x_1761 : vec4<f32> = u_xlat3;
  let x_1764 : vec3<f32> = (vec3<f32>(x_1761.x, x_1761.y, x_1761.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1765 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1764.x, x_1764.y, x_1764.z, x_1765.w);
  let x_1767 : vec3<f32> = u_xlat25;
  let x_1768 : vec4<f32> = u_xlat3;
  u_xlat27.x = dot(x_1767, vec3<f32>(x_1768.x, x_1768.y, x_1768.z));
  let x_1773 : f32 = u_xlat27.x;
  u_xlat27.x = (x_1773 + 0.5f);
  let x_1776 : vec3<f32> = u_xlat27;
  let x_1778 : vec3<f32> = u_xlat31;
  let x_1779 : vec3<f32> = (vec3<f32>(x_1776.x, x_1776.x, x_1776.x) * x_1778);
  let x_1780 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1779.x, x_1779.y, x_1779.z, x_1780.w);
  let x_1783 : f32 = u_xlat3.w;
  u_xlat27.x = max(x_1783, 0.00009999999747378752f);
  let x_1786 : vec4<f32> = u_xlat3;
  let x_1788 : vec3<f32> = u_xlat27;
  let x_1790 : vec3<f32> = (vec3<f32>(x_1786.x, x_1786.y, x_1786.z) / vec3<f32>(x_1788.x, x_1788.x, x_1788.x));
  let x_1791 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1790.x, x_1790.y, x_1790.z, x_1791.w);
  let x_1794 : f32 = u_xlat6.x;
  u_xlat6.x = x_1794;
  let x_1797 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1797, 0.0f, 1.0f);
  let x_1800 : f32 = u_xlat76;
  u_xlat76 = min(x_1800, 1.0f);
  let x_1802 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_1802 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_1807 : f32 = u_xlat6.x;
  u_xlat27.x = (-(x_1807) + 1.0f);
  let x_1812 : f32 = u_xlat27.x;
  let x_1814 : f32 = u_xlat27.x;
  u_xlat77 = (x_1812 * x_1814);
  let x_1816 : f32 = u_xlat77;
  u_xlat77 = max(x_1816, 0.0078125f);
  let x_1820 : f32 = u_xlat77;
  let x_1821 : f32 = u_xlat77;
  u_xlat78 = (x_1820 * x_1821);
  let x_1825 : f32 = u_xlat6.x;
  u_xlat79 = (x_1825 + 0.04000002145767211914f);
  let x_1828 : f32 = u_xlat79;
  u_xlat79 = min(x_1828, 1.0f);
  let x_1830 : f32 = u_xlat77;
  u_xlat80 = ((x_1830 * 4.0f) + 2.0f);
  let x_1835 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_1835, 1.0f);
  let x_1838 : bool = u_xlatb0;
  if (x_1838) {
    let x_1842 : f32 = x_241.x_MainLightShadowParams.y;
    u_xlatb0 = (x_1842 == 1.0f);
    let x_1844 : bool = u_xlatb0;
    if (x_1844) {
      let x_1848 : vec4<f32> = vs_INTERP3;
      let x_1851 : vec4<f32> = x_241.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_1848.x, x_1848.y, x_1848.x, x_1848.y) + x_1851);
      let x_1854 : vec4<f32> = u_xlat7;
      let x_1855 : vec2<f32> = vec2<f32>(x_1854.x, x_1854.y);
      let x_1857 : f32 = vs_INTERP3.z;
      txVec30 = vec3<f32>(x_1855.x, x_1855.y, x_1857);
      let x_1864 : vec3<f32> = txVec30;
      let x_1866 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1864.xy, x_1864.z);
      u_xlat8.x = x_1866;
      let x_1869 : vec4<f32> = u_xlat7;
      let x_1870 : vec2<f32> = vec2<f32>(x_1869.z, x_1869.w);
      let x_1872 : f32 = vs_INTERP3.z;
      txVec31 = vec3<f32>(x_1870.x, x_1870.y, x_1872);
      let x_1879 : vec3<f32> = txVec31;
      let x_1881 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1879.xy, x_1879.z);
      u_xlat8.y = x_1881;
      let x_1883 : vec4<f32> = vs_INTERP3;
      let x_1886 : vec4<f32> = x_241.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_1883.x, x_1883.y, x_1883.x, x_1883.y) + x_1886);
      let x_1889 : vec4<f32> = u_xlat7;
      let x_1890 : vec2<f32> = vec2<f32>(x_1889.x, x_1889.y);
      let x_1892 : f32 = vs_INTERP3.z;
      txVec32 = vec3<f32>(x_1890.x, x_1890.y, x_1892);
      let x_1899 : vec3<f32> = txVec32;
      let x_1901 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1899.xy, x_1899.z);
      u_xlat8.z = x_1901;
      let x_1904 : vec4<f32> = u_xlat7;
      let x_1905 : vec2<f32> = vec2<f32>(x_1904.z, x_1904.w);
      let x_1907 : f32 = vs_INTERP3.z;
      txVec33 = vec3<f32>(x_1905.x, x_1905.y, x_1907);
      let x_1914 : vec3<f32> = txVec33;
      let x_1916 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1914.xy, x_1914.z);
      u_xlat8.w = x_1916;
      let x_1918 : vec4<f32> = u_xlat8;
      u_xlat0.x = dot(x_1918, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1924 : f32 = x_241.x_MainLightShadowParams.y;
      u_xlatb31 = (x_1924 == 2.0f);
      let x_1926 : bool = u_xlatb31;
      if (x_1926) {
        let x_1929 : vec4<f32> = vs_INTERP3;
        let x_1932 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_1935 : vec2<f32> = ((vec2<f32>(x_1929.x, x_1929.y) * vec2<f32>(x_1932.z, x_1932.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1936 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1935.x, x_1935.y, x_1936.z);
        let x_1938 : vec3<f32> = u_xlat31;
        let x_1940 : vec2<f32> = floor(vec2<f32>(x_1938.x, x_1938.y));
        let x_1941 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1940.x, x_1940.y, x_1941.z);
        let x_1943 : vec4<f32> = vs_INTERP3;
        let x_1946 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_1949 : vec3<f32> = u_xlat31;
        let x_1952 : vec2<f32> = ((vec2<f32>(x_1943.x, x_1943.y) * vec2<f32>(x_1946.z, x_1946.w)) + -(vec2<f32>(x_1949.x, x_1949.y)));
        let x_1953 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1952.x, x_1952.y, x_1953.z, x_1953.w);
        let x_1955 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1955.x, x_1955.x, x_1955.y, x_1955.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1958 : vec4<f32> = u_xlat8;
        let x_1960 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1958.x, x_1958.x, x_1958.z, x_1958.z) * vec4<f32>(x_1960.x, x_1960.x, x_1960.z, x_1960.z));
        let x_1964 : vec4<f32> = u_xlat9;
        u_xlat57 = (vec2<f32>(x_1964.y, x_1964.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1967 : vec4<f32> = u_xlat9;
        let x_1970 : vec4<f32> = u_xlat7;
        let x_1973 : vec2<f32> = ((vec2<f32>(x_1967.x, x_1967.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1970.x, x_1970.y)));
        let x_1974 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1973.x, x_1974.y, x_1973.y, x_1974.w);
        let x_1976 : vec4<f32> = u_xlat7;
        let x_1979 : vec2<f32> = (-(vec2<f32>(x_1976.x, x_1976.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1980 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1979.x, x_1979.y, x_1980.z, x_1980.w);
        let x_1982 : vec4<f32> = u_xlat7;
        u_xlat59 = min(vec2<f32>(x_1982.x, x_1982.y), vec2<f32>(0.0f, 0.0f));
        let x_1985 : vec2<f32> = u_xlat59;
        let x_1987 : vec2<f32> = u_xlat59;
        let x_1989 : vec4<f32> = u_xlat9;
        u_xlat59 = ((-(x_1985) * x_1987) + vec2<f32>(x_1989.x, x_1989.y));
        let x_1992 : vec4<f32> = u_xlat7;
        let x_1994 : vec2<f32> = max(vec2<f32>(x_1992.x, x_1992.y), vec2<f32>(0.0f, 0.0f));
        let x_1995 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1994.x, x_1994.y, x_1995.z, x_1995.w);
        let x_1997 : vec4<f32> = u_xlat7;
        let x_2000 : vec4<f32> = u_xlat7;
        let x_2003 : vec4<f32> = u_xlat8;
        let x_2005 : vec2<f32> = ((-(vec2<f32>(x_1997.x, x_1997.y)) * vec2<f32>(x_2000.x, x_2000.y)) + vec2<f32>(x_2003.y, x_2003.w));
        let x_2006 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2005.x, x_2005.y, x_2006.z, x_2006.w);
        let x_2008 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_2008 + vec2<f32>(1.0f, 1.0f));
        let x_2010 : vec4<f32> = u_xlat7;
        let x_2012 : vec2<f32> = (vec2<f32>(x_2010.x, x_2010.y) + vec2<f32>(1.0f, 1.0f));
        let x_2013 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2012.x, x_2012.y, x_2013.z, x_2013.w);
        let x_2015 : vec4<f32> = u_xlat8;
        let x_2017 : vec2<f32> = (vec2<f32>(x_2015.x, x_2015.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2018 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2017.x, x_2017.y, x_2018.z, x_2018.w);
        let x_2020 : vec4<f32> = u_xlat9;
        let x_2022 : vec2<f32> = (vec2<f32>(x_2020.x, x_2020.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2023 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2022.x, x_2022.y, x_2023.z, x_2023.w);
        let x_2025 : vec2<f32> = u_xlat59;
        let x_2026 : vec2<f32> = (x_2025 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2027 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2026.x, x_2026.y, x_2027.z, x_2027.w);
        let x_2029 : vec4<f32> = u_xlat7;
        let x_2031 : vec2<f32> = (vec2<f32>(x_2029.x, x_2029.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2032 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2031.x, x_2031.y, x_2032.z, x_2032.w);
        let x_2034 : vec4<f32> = u_xlat8;
        let x_2036 : vec2<f32> = (vec2<f32>(x_2034.y, x_2034.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2037 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2036.x, x_2036.y, x_2037.z, x_2037.w);
        let x_2040 : f32 = u_xlat9.x;
        u_xlat10.z = x_2040;
        let x_2043 : f32 = u_xlat7.x;
        u_xlat10.w = x_2043;
        let x_2046 : f32 = u_xlat12.x;
        u_xlat11.z = x_2046;
        let x_2049 : f32 = u_xlat57.x;
        u_xlat11.w = x_2049;
        let x_2051 : vec4<f32> = u_xlat10;
        let x_2053 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_2051.z, x_2051.w, x_2051.x, x_2051.z) + vec4<f32>(x_2053.z, x_2053.w, x_2053.x, x_2053.z));
        let x_2057 : f32 = u_xlat10.y;
        u_xlat9.z = x_2057;
        let x_2060 : f32 = u_xlat7.y;
        u_xlat9.w = x_2060;
        let x_2063 : f32 = u_xlat11.y;
        u_xlat12.z = x_2063;
        let x_2066 : f32 = u_xlat57.y;
        u_xlat12.w = x_2066;
        let x_2068 : vec4<f32> = u_xlat9;
        let x_2070 : vec4<f32> = u_xlat12;
        let x_2072 : vec3<f32> = (vec3<f32>(x_2068.z, x_2068.y, x_2068.w) + vec3<f32>(x_2070.z, x_2070.y, x_2070.w));
        let x_2073 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2072.x, x_2072.y, x_2072.z, x_2073.w);
        let x_2075 : vec4<f32> = u_xlat11;
        let x_2077 : vec4<f32> = u_xlat8;
        let x_2079 : vec3<f32> = (vec3<f32>(x_2075.x, x_2075.z, x_2075.w) / vec3<f32>(x_2077.z, x_2077.w, x_2077.y));
        let x_2080 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2079.x, x_2079.y, x_2079.z, x_2080.w);
        let x_2082 : vec4<f32> = u_xlat9;
        let x_2084 : vec3<f32> = (vec3<f32>(x_2082.x, x_2082.y, x_2082.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2085 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2084.x, x_2084.y, x_2084.z, x_2085.w);
        let x_2087 : vec4<f32> = u_xlat12;
        let x_2089 : vec4<f32> = u_xlat7;
        let x_2091 : vec3<f32> = (vec3<f32>(x_2087.z, x_2087.y, x_2087.w) / vec3<f32>(x_2089.x, x_2089.y, x_2089.z));
        let x_2092 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2091.x, x_2091.y, x_2091.z, x_2092.w);
        let x_2094 : vec4<f32> = u_xlat10;
        let x_2096 : vec3<f32> = (vec3<f32>(x_2094.x, x_2094.y, x_2094.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2097 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2096.x, x_2096.y, x_2096.z, x_2097.w);
        let x_2099 : vec4<f32> = u_xlat9;
        let x_2102 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2104 : vec3<f32> = (vec3<f32>(x_2099.y, x_2099.x, x_2099.z) * vec3<f32>(x_2102.x, x_2102.x, x_2102.x));
        let x_2105 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2104.x, x_2104.y, x_2104.z, x_2105.w);
        let x_2107 : vec4<f32> = u_xlat10;
        let x_2110 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2112 : vec3<f32> = (vec3<f32>(x_2107.x, x_2107.y, x_2107.z) * vec3<f32>(x_2110.y, x_2110.y, x_2110.y));
        let x_2113 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2112.x, x_2112.y, x_2112.z, x_2113.w);
        let x_2116 : f32 = u_xlat10.x;
        u_xlat9.w = x_2116;
        let x_2118 : vec3<f32> = u_xlat31;
        let x_2121 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2124 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2118.x, x_2118.y, x_2118.x, x_2118.y) * vec4<f32>(x_2121.x, x_2121.y, x_2121.x, x_2121.y)) + vec4<f32>(x_2124.y, x_2124.w, x_2124.x, x_2124.w));
        let x_2127 : vec3<f32> = u_xlat31;
        let x_2130 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2133 : vec4<f32> = u_xlat9;
        let x_2135 : vec2<f32> = ((vec2<f32>(x_2127.x, x_2127.y) * vec2<f32>(x_2130.x, x_2130.y)) + vec2<f32>(x_2133.z, x_2133.w));
        let x_2136 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2135.x, x_2135.y, x_2136.z, x_2136.w);
        let x_2139 : f32 = u_xlat9.y;
        u_xlat10.w = x_2139;
        let x_2141 : vec4<f32> = u_xlat10;
        let x_2142 : vec2<f32> = vec2<f32>(x_2141.y, x_2141.z);
        let x_2143 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2143.x, x_2142.x, x_2143.z, x_2142.y);
        let x_2145 : vec3<f32> = u_xlat31;
        let x_2148 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2151 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_2145.x, x_2145.y, x_2145.x, x_2145.y) * vec4<f32>(x_2148.x, x_2148.y, x_2148.x, x_2148.y)) + vec4<f32>(x_2151.x, x_2151.y, x_2151.z, x_2151.y));
        let x_2154 : vec3<f32> = u_xlat31;
        let x_2157 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2160 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2154.x, x_2154.y, x_2154.x, x_2154.y) * vec4<f32>(x_2157.x, x_2157.y, x_2157.x, x_2157.y)) + vec4<f32>(x_2160.w, x_2160.y, x_2160.w, x_2160.z));
        let x_2163 : vec3<f32> = u_xlat31;
        let x_2166 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2169 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_2163.x, x_2163.y, x_2163.x, x_2163.y) * vec4<f32>(x_2166.x, x_2166.y, x_2166.x, x_2166.y)) + vec4<f32>(x_2169.x, x_2169.w, x_2169.z, x_2169.w));
        let x_2172 : vec4<f32> = u_xlat7;
        let x_2174 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_2172.x, x_2172.x, x_2172.x, x_2172.y) * vec4<f32>(x_2174.z, x_2174.w, x_2174.y, x_2174.z));
        let x_2177 : vec4<f32> = u_xlat7;
        let x_2179 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_2177.y, x_2177.y, x_2177.z, x_2177.z) * x_2179);
        let x_2182 : f32 = u_xlat7.z;
        let x_2184 : f32 = u_xlat8.y;
        u_xlat31.x = (x_2182 * x_2184);
        let x_2188 : vec4<f32> = u_xlat11;
        let x_2189 : vec2<f32> = vec2<f32>(x_2188.x, x_2188.y);
        let x_2191 : f32 = vs_INTERP3.z;
        txVec34 = vec3<f32>(x_2189.x, x_2189.y, x_2191);
        let x_2199 : vec3<f32> = txVec34;
        let x_2201 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2199.xy, x_2199.z);
        u_xlat56 = x_2201;
        let x_2203 : vec4<f32> = u_xlat11;
        let x_2204 : vec2<f32> = vec2<f32>(x_2203.z, x_2203.w);
        let x_2206 : f32 = vs_INTERP3.z;
        txVec35 = vec3<f32>(x_2204.x, x_2204.y, x_2206);
        let x_2214 : vec3<f32> = txVec35;
        let x_2216 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2214.xy, x_2214.z);
        u_xlat81 = x_2216;
        let x_2217 : f32 = u_xlat81;
        let x_2219 : f32 = u_xlat14.y;
        u_xlat81 = (x_2217 * x_2219);
        let x_2222 : f32 = u_xlat14.x;
        let x_2223 : f32 = u_xlat56;
        let x_2225 : f32 = u_xlat81;
        u_xlat56 = ((x_2222 * x_2223) + x_2225);
        let x_2228 : vec4<f32> = u_xlat12;
        let x_2229 : vec2<f32> = vec2<f32>(x_2228.x, x_2228.y);
        let x_2231 : f32 = vs_INTERP3.z;
        txVec36 = vec3<f32>(x_2229.x, x_2229.y, x_2231);
        let x_2238 : vec3<f32> = txVec36;
        let x_2240 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2238.xy, x_2238.z);
        u_xlat81 = x_2240;
        let x_2242 : f32 = u_xlat14.z;
        let x_2243 : f32 = u_xlat81;
        let x_2245 : f32 = u_xlat56;
        u_xlat56 = ((x_2242 * x_2243) + x_2245);
        let x_2248 : vec4<f32> = u_xlat10;
        let x_2249 : vec2<f32> = vec2<f32>(x_2248.x, x_2248.y);
        let x_2251 : f32 = vs_INTERP3.z;
        txVec37 = vec3<f32>(x_2249.x, x_2249.y, x_2251);
        let x_2258 : vec3<f32> = txVec37;
        let x_2260 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2258.xy, x_2258.z);
        u_xlat81 = x_2260;
        let x_2262 : f32 = u_xlat14.w;
        let x_2263 : f32 = u_xlat81;
        let x_2265 : f32 = u_xlat56;
        u_xlat56 = ((x_2262 * x_2263) + x_2265);
        let x_2268 : vec4<f32> = u_xlat13;
        let x_2269 : vec2<f32> = vec2<f32>(x_2268.x, x_2268.y);
        let x_2271 : f32 = vs_INTERP3.z;
        txVec38 = vec3<f32>(x_2269.x, x_2269.y, x_2271);
        let x_2278 : vec3<f32> = txVec38;
        let x_2280 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2278.xy, x_2278.z);
        u_xlat81 = x_2280;
        let x_2282 : f32 = u_xlat15.x;
        let x_2283 : f32 = u_xlat81;
        let x_2285 : f32 = u_xlat56;
        u_xlat56 = ((x_2282 * x_2283) + x_2285);
        let x_2288 : vec4<f32> = u_xlat13;
        let x_2289 : vec2<f32> = vec2<f32>(x_2288.z, x_2288.w);
        let x_2291 : f32 = vs_INTERP3.z;
        txVec39 = vec3<f32>(x_2289.x, x_2289.y, x_2291);
        let x_2298 : vec3<f32> = txVec39;
        let x_2300 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2298.xy, x_2298.z);
        u_xlat81 = x_2300;
        let x_2302 : f32 = u_xlat15.y;
        let x_2303 : f32 = u_xlat81;
        let x_2305 : f32 = u_xlat56;
        u_xlat56 = ((x_2302 * x_2303) + x_2305);
        let x_2308 : vec4<f32> = u_xlat10;
        let x_2309 : vec2<f32> = vec2<f32>(x_2308.z, x_2308.w);
        let x_2311 : f32 = vs_INTERP3.z;
        txVec40 = vec3<f32>(x_2309.x, x_2309.y, x_2311);
        let x_2318 : vec3<f32> = txVec40;
        let x_2320 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2318.xy, x_2318.z);
        u_xlat81 = x_2320;
        let x_2322 : f32 = u_xlat15.z;
        let x_2323 : f32 = u_xlat81;
        let x_2325 : f32 = u_xlat56;
        u_xlat56 = ((x_2322 * x_2323) + x_2325);
        let x_2328 : vec4<f32> = u_xlat9;
        let x_2329 : vec2<f32> = vec2<f32>(x_2328.x, x_2328.y);
        let x_2331 : f32 = vs_INTERP3.z;
        txVec41 = vec3<f32>(x_2329.x, x_2329.y, x_2331);
        let x_2338 : vec3<f32> = txVec41;
        let x_2340 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2338.xy, x_2338.z);
        u_xlat81 = x_2340;
        let x_2342 : f32 = u_xlat15.w;
        let x_2343 : f32 = u_xlat81;
        let x_2345 : f32 = u_xlat56;
        u_xlat56 = ((x_2342 * x_2343) + x_2345);
        let x_2348 : vec4<f32> = u_xlat9;
        let x_2349 : vec2<f32> = vec2<f32>(x_2348.z, x_2348.w);
        let x_2351 : f32 = vs_INTERP3.z;
        txVec42 = vec3<f32>(x_2349.x, x_2349.y, x_2351);
        let x_2358 : vec3<f32> = txVec42;
        let x_2360 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2358.xy, x_2358.z);
        u_xlat81 = x_2360;
        let x_2362 : f32 = u_xlat31.x;
        let x_2363 : f32 = u_xlat81;
        let x_2365 : f32 = u_xlat56;
        u_xlat0.x = ((x_2362 * x_2363) + x_2365);
      } else {
        let x_2369 : vec4<f32> = vs_INTERP3;
        let x_2372 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2375 : vec2<f32> = ((vec2<f32>(x_2369.x, x_2369.y) * vec2<f32>(x_2372.z, x_2372.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2376 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2375.x, x_2375.y, x_2376.z);
        let x_2378 : vec3<f32> = u_xlat31;
        let x_2380 : vec2<f32> = floor(vec2<f32>(x_2378.x, x_2378.y));
        let x_2381 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2380.x, x_2380.y, x_2381.z);
        let x_2383 : vec4<f32> = vs_INTERP3;
        let x_2386 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2389 : vec3<f32> = u_xlat31;
        let x_2392 : vec2<f32> = ((vec2<f32>(x_2383.x, x_2383.y) * vec2<f32>(x_2386.z, x_2386.w)) + -(vec2<f32>(x_2389.x, x_2389.y)));
        let x_2393 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2392.x, x_2392.y, x_2393.z, x_2393.w);
        let x_2395 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2395.x, x_2395.x, x_2395.y, x_2395.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2398 : vec4<f32> = u_xlat8;
        let x_2400 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2398.x, x_2398.x, x_2398.z, x_2398.z) * vec4<f32>(x_2400.x, x_2400.x, x_2400.z, x_2400.z));
        let x_2403 : vec4<f32> = u_xlat9;
        let x_2405 : vec2<f32> = (vec2<f32>(x_2403.y, x_2403.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2406 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2406.x, x_2405.x, x_2406.z, x_2405.y);
        let x_2408 : vec4<f32> = u_xlat9;
        let x_2411 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_2408.x, x_2408.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2411.x, x_2411.y)));
        let x_2415 : vec4<f32> = u_xlat7;
        let x_2418 : vec2<f32> = (-(vec2<f32>(x_2415.x, x_2415.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2419 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2418.x, x_2419.y, x_2418.y, x_2419.w);
        let x_2421 : vec4<f32> = u_xlat7;
        let x_2423 : vec2<f32> = min(vec2<f32>(x_2421.x, x_2421.y), vec2<f32>(0.0f, 0.0f));
        let x_2424 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2423.x, x_2423.y, x_2424.z, x_2424.w);
        let x_2426 : vec4<f32> = u_xlat9;
        let x_2429 : vec4<f32> = u_xlat9;
        let x_2432 : vec4<f32> = u_xlat8;
        let x_2434 : vec2<f32> = ((-(vec2<f32>(x_2426.x, x_2426.y)) * vec2<f32>(x_2429.x, x_2429.y)) + vec2<f32>(x_2432.x, x_2432.z));
        let x_2435 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2434.x, x_2435.y, x_2434.y, x_2435.w);
        let x_2437 : vec4<f32> = u_xlat7;
        let x_2439 : vec2<f32> = max(vec2<f32>(x_2437.x, x_2437.y), vec2<f32>(0.0f, 0.0f));
        let x_2440 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2439.x, x_2439.y, x_2440.z, x_2440.w);
        let x_2442 : vec4<f32> = u_xlat9;
        let x_2445 : vec4<f32> = u_xlat9;
        let x_2448 : vec4<f32> = u_xlat8;
        let x_2450 : vec2<f32> = ((-(vec2<f32>(x_2442.x, x_2442.y)) * vec2<f32>(x_2445.x, x_2445.y)) + vec2<f32>(x_2448.y, x_2448.w));
        let x_2451 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2451.x, x_2450.x, x_2451.z, x_2450.y);
        let x_2453 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2453 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2456 : f32 = u_xlat8.y;
        u_xlat9.z = (x_2456 * 0.08163200318813323975f);
        let x_2459 : vec2<f32> = u_xlat57;
        let x_2461 : vec2<f32> = (vec2<f32>(x_2459.y, x_2459.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2462 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2461.x, x_2461.y, x_2462.z, x_2462.w);
        let x_2464 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_2464.x, x_2464.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2468 : f32 = u_xlat8.w;
        u_xlat11.z = (x_2468 * 0.08163200318813323975f);
        let x_2472 : f32 = u_xlat11.y;
        u_xlat9.x = x_2472;
        let x_2474 : vec4<f32> = u_xlat7;
        let x_2477 : vec2<f32> = ((vec2<f32>(x_2474.x, x_2474.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2478 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2478.x, x_2477.x, x_2478.z, x_2477.y);
        let x_2480 : vec4<f32> = u_xlat7;
        let x_2483 : vec2<f32> = ((vec2<f32>(x_2480.x, x_2480.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2484 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2483.x, x_2484.y, x_2483.y, x_2484.w);
        let x_2487 : f32 = u_xlat57.x;
        u_xlat8.y = x_2487;
        let x_2490 : f32 = u_xlat10.y;
        u_xlat8.w = x_2490;
        let x_2492 : vec4<f32> = u_xlat8;
        let x_2493 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2492 + x_2493);
        let x_2495 : vec4<f32> = u_xlat7;
        let x_2498 : vec2<f32> = ((vec2<f32>(x_2495.y, x_2495.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2499 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2499.x, x_2498.x, x_2499.z, x_2498.y);
        let x_2501 : vec4<f32> = u_xlat7;
        let x_2504 : vec2<f32> = ((vec2<f32>(x_2501.y, x_2501.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2505 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2504.x, x_2505.y, x_2504.y, x_2505.w);
        let x_2508 : f32 = u_xlat57.y;
        u_xlat10.y = x_2508;
        let x_2510 : vec4<f32> = u_xlat10;
        let x_2511 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_2510 + x_2511);
        let x_2513 : vec4<f32> = u_xlat8;
        let x_2514 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_2513 / x_2514);
        let x_2516 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2516 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2518 : vec4<f32> = u_xlat10;
        let x_2519 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_2518 / x_2519);
        let x_2521 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2521 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2523 : vec4<f32> = u_xlat8;
        let x_2526 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_2523.w, x_2523.x, x_2523.y, x_2523.z) * vec4<f32>(x_2526.x, x_2526.x, x_2526.x, x_2526.x));
        let x_2529 : vec4<f32> = u_xlat10;
        let x_2532 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_2529.x, x_2529.w, x_2529.y, x_2529.z) * vec4<f32>(x_2532.y, x_2532.y, x_2532.y, x_2532.y));
        let x_2535 : vec4<f32> = u_xlat8;
        let x_2536 : vec3<f32> = vec3<f32>(x_2535.y, x_2535.z, x_2535.w);
        let x_2537 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2536.x, x_2537.y, x_2536.y, x_2536.z);
        let x_2540 : f32 = u_xlat10.x;
        u_xlat11.y = x_2540;
        let x_2542 : vec3<f32> = u_xlat31;
        let x_2545 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2548 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2542.x, x_2542.y, x_2542.x, x_2542.y) * vec4<f32>(x_2545.x, x_2545.y, x_2545.x, x_2545.y)) + vec4<f32>(x_2548.x, x_2548.y, x_2548.z, x_2548.y));
        let x_2551 : vec3<f32> = u_xlat31;
        let x_2554 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2557 : vec4<f32> = u_xlat11;
        let x_2559 : vec2<f32> = ((vec2<f32>(x_2551.x, x_2551.y) * vec2<f32>(x_2554.x, x_2554.y)) + vec2<f32>(x_2557.w, x_2557.y));
        let x_2560 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2559.x, x_2559.y, x_2560.z, x_2560.w);
        let x_2563 : f32 = u_xlat11.y;
        u_xlat8.y = x_2563;
        let x_2566 : f32 = u_xlat10.z;
        u_xlat11.y = x_2566;
        let x_2568 : vec3<f32> = u_xlat31;
        let x_2571 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2574 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_2568.x, x_2568.y, x_2568.x, x_2568.y) * vec4<f32>(x_2571.x, x_2571.y, x_2571.x, x_2571.y)) + vec4<f32>(x_2574.x, x_2574.y, x_2574.z, x_2574.y));
        let x_2578 : vec3<f32> = u_xlat31;
        let x_2581 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2584 : vec4<f32> = u_xlat11;
        u_xlat63 = ((vec2<f32>(x_2578.x, x_2578.y) * vec2<f32>(x_2581.x, x_2581.y)) + vec2<f32>(x_2584.w, x_2584.y));
        let x_2588 : f32 = u_xlat11.y;
        u_xlat8.z = x_2588;
        let x_2590 : vec3<f32> = u_xlat31;
        let x_2593 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2596 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_2590.x, x_2590.y, x_2590.x, x_2590.y) * vec4<f32>(x_2593.x, x_2593.y, x_2593.x, x_2593.y)) + vec4<f32>(x_2596.x, x_2596.y, x_2596.x, x_2596.z));
        let x_2600 : f32 = u_xlat10.w;
        u_xlat11.y = x_2600;
        let x_2602 : vec3<f32> = u_xlat31;
        let x_2605 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2608 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_2602.x, x_2602.y, x_2602.x, x_2602.y) * vec4<f32>(x_2605.x, x_2605.y, x_2605.x, x_2605.y)) + vec4<f32>(x_2608.x, x_2608.y, x_2608.z, x_2608.y));
        let x_2611 : vec3<f32> = u_xlat31;
        let x_2614 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2617 : vec4<f32> = u_xlat11;
        u_xlat33 = ((vec2<f32>(x_2611.x, x_2611.y) * vec2<f32>(x_2614.x, x_2614.y)) + vec2<f32>(x_2617.w, x_2617.y));
        let x_2621 : f32 = u_xlat11.y;
        u_xlat8.w = x_2621;
        let x_2623 : vec3<f32> = u_xlat31;
        let x_2626 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2629 : vec4<f32> = u_xlat8;
        let x_2631 : vec2<f32> = ((vec2<f32>(x_2623.x, x_2623.y) * vec2<f32>(x_2626.x, x_2626.y)) + vec2<f32>(x_2629.x, x_2629.w));
        let x_2632 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_2631.x, x_2631.y, x_2632.z, x_2632.w);
        let x_2634 : vec4<f32> = u_xlat11;
        let x_2635 : vec3<f32> = vec3<f32>(x_2634.x, x_2634.z, x_2634.w);
        let x_2636 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2635.x, x_2636.y, x_2635.y, x_2635.z);
        let x_2638 : vec3<f32> = u_xlat31;
        let x_2641 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2644 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_2638.x, x_2638.y, x_2638.x, x_2638.y) * vec4<f32>(x_2641.x, x_2641.y, x_2641.x, x_2641.y)) + vec4<f32>(x_2644.x, x_2644.y, x_2644.z, x_2644.y));
        let x_2648 : vec3<f32> = u_xlat31;
        let x_2651 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2654 : vec4<f32> = u_xlat10;
        u_xlat60 = ((vec2<f32>(x_2648.x, x_2648.y) * vec2<f32>(x_2651.x, x_2651.y)) + vec2<f32>(x_2654.w, x_2654.y));
        let x_2658 : f32 = u_xlat8.x;
        u_xlat10.x = x_2658;
        let x_2660 : vec3<f32> = u_xlat31;
        let x_2663 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2666 : vec4<f32> = u_xlat10;
        let x_2668 : vec2<f32> = ((vec2<f32>(x_2660.x, x_2660.y) * vec2<f32>(x_2663.x, x_2663.y)) + vec2<f32>(x_2666.x, x_2666.y));
        let x_2669 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2668.x, x_2668.y, x_2669.z);
        let x_2671 : vec4<f32> = u_xlat7;
        let x_2673 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_2671.x, x_2671.x, x_2671.x, x_2671.x) * x_2673);
        let x_2675 : vec4<f32> = u_xlat7;
        let x_2677 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_2675.y, x_2675.y, x_2675.y, x_2675.y) * x_2677);
        let x_2680 : vec4<f32> = u_xlat7;
        let x_2682 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_2680.z, x_2680.z, x_2680.z, x_2680.z) * x_2682);
        let x_2684 : vec4<f32> = u_xlat7;
        let x_2686 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_2684.w, x_2684.w, x_2684.w, x_2684.w) * x_2686);
        let x_2689 : vec4<f32> = u_xlat12;
        let x_2690 : vec2<f32> = vec2<f32>(x_2689.x, x_2689.y);
        let x_2692 : f32 = vs_INTERP3.z;
        txVec43 = vec3<f32>(x_2690.x, x_2690.y, x_2692);
        let x_2699 : vec3<f32> = txVec43;
        let x_2701 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2699.xy, x_2699.z);
        u_xlat81 = x_2701;
        let x_2703 : vec4<f32> = u_xlat12;
        let x_2704 : vec2<f32> = vec2<f32>(x_2703.z, x_2703.w);
        let x_2706 : f32 = vs_INTERP3.z;
        txVec44 = vec3<f32>(x_2704.x, x_2704.y, x_2706);
        let x_2713 : vec3<f32> = txVec44;
        let x_2715 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2713.xy, x_2713.z);
        u_xlat8.x = x_2715;
        let x_2718 : f32 = u_xlat8.x;
        let x_2720 : f32 = u_xlat18.y;
        u_xlat8.x = (x_2718 * x_2720);
        let x_2724 : f32 = u_xlat18.x;
        let x_2725 : f32 = u_xlat81;
        let x_2728 : f32 = u_xlat8.x;
        u_xlat81 = ((x_2724 * x_2725) + x_2728);
        let x_2731 : vec4<f32> = u_xlat13;
        let x_2732 : vec2<f32> = vec2<f32>(x_2731.x, x_2731.y);
        let x_2734 : f32 = vs_INTERP3.z;
        txVec45 = vec3<f32>(x_2732.x, x_2732.y, x_2734);
        let x_2741 : vec3<f32> = txVec45;
        let x_2743 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2741.xy, x_2741.z);
        u_xlat8.x = x_2743;
        let x_2746 : f32 = u_xlat18.z;
        let x_2748 : f32 = u_xlat8.x;
        let x_2750 : f32 = u_xlat81;
        u_xlat81 = ((x_2746 * x_2748) + x_2750);
        let x_2753 : vec4<f32> = u_xlat15;
        let x_2754 : vec2<f32> = vec2<f32>(x_2753.x, x_2753.y);
        let x_2756 : f32 = vs_INTERP3.z;
        txVec46 = vec3<f32>(x_2754.x, x_2754.y, x_2756);
        let x_2763 : vec3<f32> = txVec46;
        let x_2765 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2763.xy, x_2763.z);
        u_xlat8.x = x_2765;
        let x_2768 : f32 = u_xlat18.w;
        let x_2770 : f32 = u_xlat8.x;
        let x_2772 : f32 = u_xlat81;
        u_xlat81 = ((x_2768 * x_2770) + x_2772);
        let x_2775 : vec4<f32> = u_xlat14;
        let x_2776 : vec2<f32> = vec2<f32>(x_2775.x, x_2775.y);
        let x_2778 : f32 = vs_INTERP3.z;
        txVec47 = vec3<f32>(x_2776.x, x_2776.y, x_2778);
        let x_2785 : vec3<f32> = txVec47;
        let x_2787 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2785.xy, x_2785.z);
        u_xlat8.x = x_2787;
        let x_2790 : f32 = u_xlat19.x;
        let x_2792 : f32 = u_xlat8.x;
        let x_2794 : f32 = u_xlat81;
        u_xlat81 = ((x_2790 * x_2792) + x_2794);
        let x_2797 : vec4<f32> = u_xlat14;
        let x_2798 : vec2<f32> = vec2<f32>(x_2797.z, x_2797.w);
        let x_2800 : f32 = vs_INTERP3.z;
        txVec48 = vec3<f32>(x_2798.x, x_2798.y, x_2800);
        let x_2807 : vec3<f32> = txVec48;
        let x_2809 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2807.xy, x_2807.z);
        u_xlat8.x = x_2809;
        let x_2812 : f32 = u_xlat19.y;
        let x_2814 : f32 = u_xlat8.x;
        let x_2816 : f32 = u_xlat81;
        u_xlat81 = ((x_2812 * x_2814) + x_2816);
        let x_2819 : vec2<f32> = u_xlat63;
        let x_2821 : f32 = vs_INTERP3.z;
        txVec49 = vec3<f32>(x_2819.x, x_2819.y, x_2821);
        let x_2828 : vec3<f32> = txVec49;
        let x_2830 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2828.xy, x_2828.z);
        u_xlat8.x = x_2830;
        let x_2833 : f32 = u_xlat19.z;
        let x_2835 : f32 = u_xlat8.x;
        let x_2837 : f32 = u_xlat81;
        u_xlat81 = ((x_2833 * x_2835) + x_2837);
        let x_2840 : vec4<f32> = u_xlat15;
        let x_2841 : vec2<f32> = vec2<f32>(x_2840.z, x_2840.w);
        let x_2843 : f32 = vs_INTERP3.z;
        txVec50 = vec3<f32>(x_2841.x, x_2841.y, x_2843);
        let x_2850 : vec3<f32> = txVec50;
        let x_2852 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2850.xy, x_2850.z);
        u_xlat8.x = x_2852;
        let x_2855 : f32 = u_xlat19.w;
        let x_2857 : f32 = u_xlat8.x;
        let x_2859 : f32 = u_xlat81;
        u_xlat81 = ((x_2855 * x_2857) + x_2859);
        let x_2862 : vec4<f32> = u_xlat16;
        let x_2863 : vec2<f32> = vec2<f32>(x_2862.x, x_2862.y);
        let x_2865 : f32 = vs_INTERP3.z;
        txVec51 = vec3<f32>(x_2863.x, x_2863.y, x_2865);
        let x_2872 : vec3<f32> = txVec51;
        let x_2874 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2872.xy, x_2872.z);
        u_xlat8.x = x_2874;
        let x_2877 : f32 = u_xlat20.x;
        let x_2879 : f32 = u_xlat8.x;
        let x_2881 : f32 = u_xlat81;
        u_xlat81 = ((x_2877 * x_2879) + x_2881);
        let x_2884 : vec4<f32> = u_xlat16;
        let x_2885 : vec2<f32> = vec2<f32>(x_2884.z, x_2884.w);
        let x_2887 : f32 = vs_INTERP3.z;
        txVec52 = vec3<f32>(x_2885.x, x_2885.y, x_2887);
        let x_2894 : vec3<f32> = txVec52;
        let x_2896 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2894.xy, x_2894.z);
        u_xlat8.x = x_2896;
        let x_2899 : f32 = u_xlat20.y;
        let x_2901 : f32 = u_xlat8.x;
        let x_2903 : f32 = u_xlat81;
        u_xlat81 = ((x_2899 * x_2901) + x_2903);
        let x_2906 : vec2<f32> = u_xlat33;
        let x_2908 : f32 = vs_INTERP3.z;
        txVec53 = vec3<f32>(x_2906.x, x_2906.y, x_2908);
        let x_2915 : vec3<f32> = txVec53;
        let x_2917 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2915.xy, x_2915.z);
        u_xlat8.x = x_2917;
        let x_2920 : f32 = u_xlat20.z;
        let x_2922 : f32 = u_xlat8.x;
        let x_2924 : f32 = u_xlat81;
        u_xlat81 = ((x_2920 * x_2922) + x_2924);
        let x_2927 : vec4<f32> = u_xlat17;
        let x_2928 : vec2<f32> = vec2<f32>(x_2927.x, x_2927.y);
        let x_2930 : f32 = vs_INTERP3.z;
        txVec54 = vec3<f32>(x_2928.x, x_2928.y, x_2930);
        let x_2937 : vec3<f32> = txVec54;
        let x_2939 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2937.xy, x_2937.z);
        u_xlat8.x = x_2939;
        let x_2942 : f32 = u_xlat20.w;
        let x_2944 : f32 = u_xlat8.x;
        let x_2946 : f32 = u_xlat81;
        u_xlat81 = ((x_2942 * x_2944) + x_2946);
        let x_2949 : vec4<f32> = u_xlat11;
        let x_2950 : vec2<f32> = vec2<f32>(x_2949.x, x_2949.y);
        let x_2952 : f32 = vs_INTERP3.z;
        txVec55 = vec3<f32>(x_2950.x, x_2950.y, x_2952);
        let x_2959 : vec3<f32> = txVec55;
        let x_2961 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2959.xy, x_2959.z);
        u_xlat8.x = x_2961;
        let x_2964 : f32 = u_xlat7.x;
        let x_2966 : f32 = u_xlat8.x;
        let x_2968 : f32 = u_xlat81;
        u_xlat81 = ((x_2964 * x_2966) + x_2968);
        let x_2971 : vec4<f32> = u_xlat11;
        let x_2972 : vec2<f32> = vec2<f32>(x_2971.z, x_2971.w);
        let x_2974 : f32 = vs_INTERP3.z;
        txVec56 = vec3<f32>(x_2972.x, x_2972.y, x_2974);
        let x_2981 : vec3<f32> = txVec56;
        let x_2983 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2981.xy, x_2981.z);
        u_xlat7.x = x_2983;
        let x_2986 : f32 = u_xlat7.y;
        let x_2988 : f32 = u_xlat7.x;
        let x_2990 : f32 = u_xlat81;
        u_xlat81 = ((x_2986 * x_2988) + x_2990);
        let x_2993 : vec2<f32> = u_xlat60;
        let x_2995 : f32 = vs_INTERP3.z;
        txVec57 = vec3<f32>(x_2993.x, x_2993.y, x_2995);
        let x_3002 : vec3<f32> = txVec57;
        let x_3004 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3002.xy, x_3002.z);
        u_xlat7.x = x_3004;
        let x_3007 : f32 = u_xlat7.z;
        let x_3009 : f32 = u_xlat7.x;
        let x_3011 : f32 = u_xlat81;
        u_xlat81 = ((x_3007 * x_3009) + x_3011);
        let x_3014 : vec3<f32> = u_xlat31;
        let x_3015 : vec2<f32> = vec2<f32>(x_3014.x, x_3014.y);
        let x_3017 : f32 = vs_INTERP3.z;
        txVec58 = vec3<f32>(x_3015.x, x_3015.y, x_3017);
        let x_3024 : vec3<f32> = txVec58;
        let x_3026 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3024.xy, x_3024.z);
        u_xlat31.x = x_3026;
        let x_3029 : f32 = u_xlat7.w;
        let x_3031 : f32 = u_xlat31.x;
        let x_3033 : f32 = u_xlat81;
        u_xlat0.x = ((x_3029 * x_3031) + x_3033);
      }
    }
  } else {
    let x_3038 : vec4<f32> = vs_INTERP3;
    let x_3039 : vec2<f32> = vec2<f32>(x_3038.x, x_3038.y);
    let x_3041 : f32 = vs_INTERP3.z;
    txVec59 = vec3<f32>(x_3039.x, x_3039.y, x_3041);
    let x_3048 : vec3<f32> = txVec59;
    let x_3050 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3048.xy, x_3048.z);
    u_xlat0.x = x_3050;
  }
  let x_3053 : f32 = u_xlat0.x;
  let x_3055 : f32 = x_241.x_MainLightShadowParams.x;
  let x_3058 : f32 = u_xlat2.x;
  u_xlat0.x = ((x_3053 * x_3055) + x_3058);
  let x_3063 : f32 = vs_INTERP3.z;
  u_xlatb2 = (0.0f >= x_3063);
  let x_3066 : f32 = vs_INTERP3.z;
  u_xlatb31 = (x_3066 >= 1.0f);
  let x_3068 : bool = u_xlatb2;
  let x_3069 : bool = u_xlatb31;
  u_xlatb2 = (x_3068 | x_3069);
  let x_3071 : bool = u_xlatb2;
  if (x_3071) {
    x_3072 = 1.0f;
  } else {
    let x_3077 : f32 = u_xlat0.x;
    x_3072 = x_3077;
  }
  let x_3078 : f32 = x_3072;
  u_xlat0.x = x_3078;
  let x_3080 : vec3<f32> = vs_INTERP8;
  let x_3082 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  u_xlat31 = (x_3080 + -(x_3082));
  let x_3085 : vec3<f32> = u_xlat31;
  let x_3086 : vec3<f32> = u_xlat31;
  u_xlat2.x = dot(x_3085, x_3086);
  let x_3090 : f32 = u_xlat2.x;
  let x_3092 : f32 = x_241.x_MainLightShadowParams.z;
  let x_3095 : f32 = x_241.x_MainLightShadowParams.w;
  u_xlat31.x = ((x_3090 * x_3092) + x_3095);
  let x_3099 : f32 = u_xlat31.x;
  u_xlat31.x = clamp(x_3099, 0.0f, 1.0f);
  let x_3103 : f32 = u_xlat0.x;
  u_xlat56 = (-(x_3103) + 1.0f);
  let x_3107 : f32 = u_xlat31.x;
  let x_3108 : f32 = u_xlat56;
  let x_3111 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_3107 * x_3108) + x_3111);
  let x_3114 : vec4<f32> = u_xlat4;
  let x_3117 : vec3<f32> = u_xlat25;
  u_xlat31.x = dot(-(vec3<f32>(x_3114.x, x_3114.y, x_3114.z)), x_3117);
  let x_3121 : f32 = u_xlat31.x;
  let x_3123 : f32 = u_xlat31.x;
  u_xlat31.x = (x_3121 + x_3123);
  let x_3126 : vec3<f32> = u_xlat25;
  let x_3127 : vec3<f32> = u_xlat31;
  let x_3131 : vec4<f32> = u_xlat4;
  u_xlat31 = ((x_3126 * -(vec3<f32>(x_3127.x, x_3127.x, x_3127.x))) + -(vec3<f32>(x_3131.x, x_3131.y, x_3131.z)));
  let x_3135 : vec3<f32> = u_xlat25;
  let x_3136 : vec4<f32> = u_xlat4;
  u_xlat7.x = dot(x_3135, vec3<f32>(x_3136.x, x_3136.y, x_3136.z));
  let x_3141 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_3141, 0.0f, 1.0f);
  let x_3145 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_3145) + 1.0f);
  let x_3150 : f32 = u_xlat7.x;
  let x_3152 : f32 = u_xlat7.x;
  u_xlat7.x = (x_3150 * x_3152);
  let x_3156 : f32 = u_xlat7.x;
  let x_3158 : f32 = u_xlat7.x;
  u_xlat7.x = (x_3156 * x_3158);
  let x_3162 : f32 = u_xlat27.x;
  u_xlat32.x = ((-(x_3162) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3170 : f32 = u_xlat27.x;
  let x_3172 : f32 = u_xlat32.x;
  u_xlat27.x = (x_3170 * x_3172);
  let x_3176 : f32 = u_xlat27.x;
  u_xlat27.x = (x_3176 * 6.0f);
  let x_3188 : vec3<f32> = u_xlat31;
  let x_3190 : f32 = u_xlat27.x;
  let x_3191 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_3188, x_3190);
  u_xlat8 = x_3191;
  let x_3193 : f32 = u_xlat8.w;
  u_xlat27.x = (x_3193 + -1.0f);
  let x_3197 : f32 = x_48.unity_SpecCube0_HDR.w;
  let x_3199 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_3197 * x_3199) + 1.0f);
  let x_3204 : f32 = u_xlat27.x;
  u_xlat27.x = max(x_3204, 0.0f);
  let x_3208 : f32 = u_xlat27.x;
  u_xlat27.x = log2(x_3208);
  let x_3212 : f32 = u_xlat27.x;
  let x_3214 : f32 = x_48.unity_SpecCube0_HDR.y;
  u_xlat27.x = (x_3212 * x_3214);
  let x_3218 : f32 = u_xlat27.x;
  u_xlat27.x = exp2(x_3218);
  let x_3222 : f32 = u_xlat27.x;
  let x_3224 : f32 = x_48.unity_SpecCube0_HDR.x;
  u_xlat27.x = (x_3222 * x_3224);
  let x_3227 : vec4<f32> = u_xlat8;
  let x_3229 : vec3<f32> = u_xlat27;
  u_xlat31 = (vec3<f32>(x_3227.x, x_3227.y, x_3227.z) * vec3<f32>(x_3229.x, x_3229.x, x_3229.x));
  let x_3232 : f32 = u_xlat77;
  let x_3234 : f32 = u_xlat77;
  let x_3238 : vec2<f32> = ((vec2<f32>(x_3232, x_3232) * vec2<f32>(x_3234, x_3234)) + vec2<f32>(-1.0f, 1.0f));
  let x_3239 : vec3<f32> = u_xlat27;
  u_xlat27 = vec3<f32>(x_3238.x, x_3239.y, x_3238.y);
  let x_3242 : f32 = u_xlat27.z;
  u_xlat77 = (1.0f / x_3242);
  let x_3244 : f32 = u_xlat79;
  u_xlat79 = (x_3244 + -0.03999999910593032837f);
  let x_3248 : f32 = u_xlat7.x;
  let x_3249 : f32 = u_xlat79;
  u_xlat79 = ((x_3248 * x_3249) + 0.03999999910593032837f);
  let x_3253 : f32 = u_xlat77;
  let x_3254 : f32 = u_xlat79;
  u_xlat77 = (x_3253 * x_3254);
  let x_3256 : f32 = u_xlat77;
  let x_3258 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_3256, x_3256, x_3256) * x_3258);
  let x_3260 : vec4<f32> = u_xlat3;
  let x_3262 : vec3<f32> = u_xlat5;
  let x_3264 : vec3<f32> = u_xlat31;
  let x_3265 : vec3<f32> = ((vec3<f32>(x_3260.x, x_3260.y, x_3260.z) * x_3262) + x_3264);
  let x_3266 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_3265.x, x_3265.y, x_3265.z, x_3266.w);
  let x_3269 : f32 = u_xlat0.x;
  let x_3271 : f32 = x_48.unity_LightData.z;
  u_xlat0.x = (x_3269 * x_3271);
  let x_3274 : vec3<f32> = u_xlat25;
  let x_3276 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat77 = dot(x_3274, vec3<f32>(x_3276.x, x_3276.y, x_3276.z));
  let x_3279 : f32 = u_xlat77;
  u_xlat77 = clamp(x_3279, 0.0f, 1.0f);
  let x_3282 : f32 = u_xlat0.x;
  let x_3283 : f32 = u_xlat77;
  u_xlat0.x = (x_3282 * x_3283);
  let x_3286 : vec3<f32> = u_xlat0;
  let x_3289 : vec4<f32> = x_126.x_MainLightColor;
  u_xlat31 = (vec3<f32>(x_3286.x, x_3286.x, x_3286.x) * vec3<f32>(x_3289.x, x_3289.y, x_3289.z));
  let x_3292 : vec4<f32> = u_xlat4;
  let x_3295 : vec4<f32> = x_126.x_MainLightPosition;
  let x_3297 : vec3<f32> = (vec3<f32>(x_3292.x, x_3292.y, x_3292.z) + vec3<f32>(x_3295.x, x_3295.y, x_3295.z));
  let x_3298 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3297.x, x_3297.y, x_3297.z, x_3298.w);
  let x_3300 : vec4<f32> = u_xlat7;
  let x_3302 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_3300.x, x_3300.y, x_3300.z), vec3<f32>(x_3302.x, x_3302.y, x_3302.z));
  let x_3307 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_3307, 1.17549435e-38f);
  let x_3311 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_3311);
  let x_3314 : vec3<f32> = u_xlat0;
  let x_3316 : vec4<f32> = u_xlat7;
  let x_3318 : vec3<f32> = (vec3<f32>(x_3314.x, x_3314.x, x_3314.x) * vec3<f32>(x_3316.x, x_3316.y, x_3316.z));
  let x_3319 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3318.x, x_3318.y, x_3318.z, x_3319.w);
  let x_3321 : vec3<f32> = u_xlat25;
  let x_3322 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_3321, vec3<f32>(x_3322.x, x_3322.y, x_3322.z));
  let x_3327 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_3327, 0.0f, 1.0f);
  let x_3331 : vec4<f32> = x_126.x_MainLightPosition;
  let x_3333 : vec4<f32> = u_xlat7;
  u_xlat77 = dot(vec3<f32>(x_3331.x, x_3331.y, x_3331.z), vec3<f32>(x_3333.x, x_3333.y, x_3333.z));
  let x_3336 : f32 = u_xlat77;
  u_xlat77 = clamp(x_3336, 0.0f, 1.0f);
  let x_3339 : f32 = u_xlat0.x;
  let x_3341 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3339 * x_3341);
  let x_3345 : f32 = u_xlat0.x;
  let x_3347 : f32 = u_xlat27.x;
  u_xlat0.x = ((x_3345 * x_3347) + 1.00001001358032226562f);
  let x_3352 : f32 = u_xlat77;
  let x_3353 : f32 = u_xlat77;
  u_xlat77 = (x_3352 * x_3353);
  let x_3356 : f32 = u_xlat0.x;
  let x_3358 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3356 * x_3358);
  let x_3361 : f32 = u_xlat77;
  u_xlat77 = max(x_3361, 0.10000000149011611938f);
  let x_3365 : f32 = u_xlat0.x;
  let x_3366 : f32 = u_xlat77;
  u_xlat0.x = (x_3365 * x_3366);
  let x_3369 : f32 = u_xlat80;
  let x_3371 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3369 * x_3371);
  let x_3374 : f32 = u_xlat78;
  let x_3376 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3374 / x_3376);
  let x_3379 : vec3<f32> = u_xlat0;
  let x_3383 : vec3<f32> = u_xlat5;
  let x_3384 : vec3<f32> = ((vec3<f32>(x_3379.x, x_3379.x, x_3379.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3383);
  let x_3385 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3384.x, x_3384.y, x_3384.z, x_3385.w);
  let x_3387 : vec3<f32> = u_xlat31;
  let x_3388 : vec4<f32> = u_xlat7;
  u_xlat31 = (x_3387 * vec3<f32>(x_3388.x, x_3388.y, x_3388.z));
  let x_3393 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_3395 : f32 = x_48.unity_LightData.y;
  u_xlat0.x = min(x_3393, x_3395);
  let x_3401 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_3401));
  let x_3405 : f32 = u_xlat2.x;
  let x_3408 : f32 = x_241.x_AdditionalShadowFadeParams.x;
  let x_3411 : f32 = x_241.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_3405 * x_3408) + x_3411);
  let x_3415 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_3415, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3428 : u32 = u_xlatu_loop_1;
    let x_3429 : u32 = u_xlatu0;
    if ((x_3428 < x_3429)) {
    } else {
      break;
    }
    let x_3432 : u32 = u_xlatu_loop_1;
    u_xlatu79 = (x_3432 >> 2u);
    let x_3436 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_3436 & 3u));
    let x_3439 : u32 = u_xlatu79;
    let x_3442 : vec4<f32> = x_48.unity_LightIndices[bitcast<i32>(x_3439)];
    let x_3452 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3457 : vec4<u32> = indexable[x_3452];
    u_xlat79 = dot(x_3442, bitcast<vec4<f32>>(x_3457));
    let x_3461 : f32 = u_xlat79;
    u_xlati79 = i32(x_3461);
    let x_3463 : vec3<f32> = vs_INTERP8;
    let x_3474 : i32 = u_xlati79;
    let x_3476 : vec4<f32> = x_3473.x_AdditionalLightsPosition[x_3474];
    let x_3479 : i32 = u_xlati79;
    let x_3481 : vec4<f32> = x_3473.x_AdditionalLightsPosition[x_3479];
    let x_3483 : vec3<f32> = ((-(x_3463) * vec3<f32>(x_3476.w, x_3476.w, x_3476.w)) + vec3<f32>(x_3481.x, x_3481.y, x_3481.z));
    let x_3484 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3483.x, x_3483.y, x_3483.z, x_3484.w);
    let x_3487 : vec4<f32> = u_xlat8;
    let x_3489 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_3487.x, x_3487.y, x_3487.z), vec3<f32>(x_3489.x, x_3489.y, x_3489.z));
    let x_3492 : f32 = u_xlat82;
    u_xlat82 = max(x_3492, 0.00006103515625f);
    let x_3496 : f32 = u_xlat82;
    u_xlat83 = inverseSqrt(x_3496);
    let x_3498 : f32 = u_xlat83;
    let x_3500 : vec4<f32> = u_xlat8;
    let x_3502 : vec3<f32> = (vec3<f32>(x_3498, x_3498, x_3498) * vec3<f32>(x_3500.x, x_3500.y, x_3500.z));
    let x_3503 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3502.x, x_3502.y, x_3502.z, x_3503.w);
    let x_3506 : f32 = u_xlat82;
    u_xlat84 = (1.0f / x_3506);
    let x_3508 : f32 = u_xlat82;
    let x_3509 : i32 = u_xlati79;
    let x_3511 : f32 = x_3473.x_AdditionalLightsAttenuation[x_3509].x;
    u_xlat82 = (x_3508 * x_3511);
    let x_3513 : f32 = u_xlat82;
    let x_3515 : f32 = u_xlat82;
    u_xlat82 = ((-(x_3513) * x_3515) + 1.0f);
    let x_3518 : f32 = u_xlat82;
    u_xlat82 = max(x_3518, 0.0f);
    let x_3520 : f32 = u_xlat82;
    let x_3521 : f32 = u_xlat82;
    u_xlat82 = (x_3520 * x_3521);
    let x_3523 : f32 = u_xlat82;
    let x_3524 : f32 = u_xlat84;
    u_xlat82 = (x_3523 * x_3524);
    let x_3526 : i32 = u_xlati79;
    let x_3528 : vec4<f32> = x_3473.x_AdditionalLightsSpotDir[x_3526];
    let x_3530 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_3528.x, x_3528.y, x_3528.z), vec3<f32>(x_3530.x, x_3530.y, x_3530.z));
    let x_3533 : f32 = u_xlat84;
    let x_3534 : i32 = u_xlati79;
    let x_3536 : f32 = x_3473.x_AdditionalLightsAttenuation[x_3534].z;
    let x_3538 : i32 = u_xlati79;
    let x_3540 : f32 = x_3473.x_AdditionalLightsAttenuation[x_3538].w;
    u_xlat84 = ((x_3533 * x_3536) + x_3540);
    let x_3542 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3542, 0.0f, 1.0f);
    let x_3544 : f32 = u_xlat84;
    let x_3545 : f32 = u_xlat84;
    u_xlat84 = (x_3544 * x_3545);
    let x_3547 : f32 = u_xlat82;
    let x_3548 : f32 = u_xlat84;
    u_xlat82 = (x_3547 * x_3548);
    let x_3552 : i32 = u_xlati79;
    let x_3554 : f32 = x_241.x_AdditionalShadowParams[x_3552].w;
    u_xlati84 = i32(x_3554);
    let x_3559 : i32 = u_xlati84;
    u_xlatb10.x = (x_3559 >= 0i);
    let x_3563 : bool = u_xlatb10.x;
    if (x_3563) {
      let x_3567 : i32 = u_xlati79;
      let x_3569 : f32 = x_241.x_AdditionalShadowParams[x_3567].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3569, x_3569, x_3569, x_3569))));
      let x_3576 : bool = u_xlatb10.x;
      if (x_3576) {
        let x_3579 : vec4<f32> = u_xlat9;
        let x_3582 : vec4<f32> = u_xlat9;
        let x_3585 : vec4<bool> = (abs(vec4<f32>(x_3579.z, x_3579.z, x_3579.y, x_3579.z)) >= abs(vec4<f32>(x_3582.x, x_3582.y, x_3582.x, x_3582.x)));
        u_xlatb10 = vec3<bool>(x_3585.x, x_3585.y, x_3585.z);
        let x_3588 : bool = u_xlatb10.y;
        let x_3590 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_3588 & x_3590);
        let x_3594 : vec4<f32> = u_xlat9;
        let x_3597 : vec4<bool> = (-(vec4<f32>(x_3594.z, x_3594.y, x_3594.x, x_3594.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_3597.x, x_3597.y, x_3597.z);
        let x_3601 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_3601);
        let x_3606 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_3606);
        let x_3611 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_3611);
        let x_3615 : bool = u_xlatb10.z;
        if (x_3615) {
          let x_3620 : f32 = u_xlat35.z;
          x_3616 = x_3620;
        } else {
          let x_3623 : f32 = u_xlat11.x;
          x_3616 = x_3623;
        }
        let x_3624 : f32 = x_3616;
        u_xlat60.x = x_3624;
        let x_3627 : bool = u_xlatb10.x;
        if (x_3627) {
          let x_3632 : f32 = u_xlat35.x;
          x_3628 = x_3632;
        } else {
          let x_3635 : f32 = u_xlat60.x;
          x_3628 = x_3635;
        }
        let x_3636 : f32 = x_3628;
        u_xlat10.x = x_3636;
        let x_3638 : i32 = u_xlati79;
        let x_3640 : f32 = x_241.x_AdditionalShadowParams[x_3638].w;
        u_xlat35.x = trunc(x_3640);
        let x_3644 : f32 = u_xlat10.x;
        let x_3646 : f32 = u_xlat35.x;
        u_xlat10.x = (x_3644 + x_3646);
        let x_3650 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_3650);
      }
      let x_3652 : i32 = u_xlati84;
      u_xlati84 = (x_3652 << bitcast<u32>(2i));
      let x_3654 : vec3<f32> = vs_INTERP8;
      let x_3657 : i32 = u_xlati84;
      let x_3660 : i32 = u_xlati84;
      let x_3664 : vec4<f32> = x_241.x_AdditionalLightsWorldToShadow[((x_3657 + 1i) / 4i)][((x_3660 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_3654.y, x_3654.y, x_3654.y, x_3654.y) * x_3664);
      let x_3666 : i32 = u_xlati84;
      let x_3668 : i32 = u_xlati84;
      let x_3671 : vec4<f32> = x_241.x_AdditionalLightsWorldToShadow[(x_3666 / 4i)][(x_3668 % 4i)];
      let x_3672 : vec3<f32> = vs_INTERP8;
      let x_3675 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_3671 * vec4<f32>(x_3672.x, x_3672.x, x_3672.x, x_3672.x)) + x_3675);
      let x_3677 : i32 = u_xlati84;
      let x_3680 : i32 = u_xlati84;
      let x_3684 : vec4<f32> = x_241.x_AdditionalLightsWorldToShadow[((x_3677 + 2i) / 4i)][((x_3680 + 2i) % 4i)];
      let x_3685 : vec3<f32> = vs_INTERP8;
      let x_3688 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_3684 * vec4<f32>(x_3685.z, x_3685.z, x_3685.z, x_3685.z)) + x_3688);
      let x_3690 : vec4<f32> = u_xlat10;
      let x_3691 : i32 = u_xlati84;
      let x_3694 : i32 = u_xlati84;
      let x_3698 : vec4<f32> = x_241.x_AdditionalLightsWorldToShadow[((x_3691 + 3i) / 4i)][((x_3694 + 3i) % 4i)];
      u_xlat10 = (x_3690 + x_3698);
      let x_3700 : vec4<f32> = u_xlat10;
      let x_3702 : vec4<f32> = u_xlat10;
      let x_3704 : vec3<f32> = (vec3<f32>(x_3700.x, x_3700.y, x_3700.z) / vec3<f32>(x_3702.w, x_3702.w, x_3702.w));
      let x_3705 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_3704.x, x_3704.y, x_3704.z, x_3705.w);
      let x_3708 : i32 = u_xlati79;
      let x_3710 : f32 = x_241.x_AdditionalShadowParams[x_3708].y;
      u_xlatb84 = (0.0f < x_3710);
      let x_3712 : bool = u_xlatb84;
      if (x_3712) {
        let x_3715 : i32 = u_xlati79;
        let x_3717 : f32 = x_241.x_AdditionalShadowParams[x_3715].y;
        u_xlatb84 = (1.0f == x_3717);
        let x_3719 : bool = u_xlatb84;
        if (x_3719) {
          let x_3722 : vec4<f32> = u_xlat10;
          let x_3726 : vec4<f32> = x_241.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_3722.x, x_3722.y, x_3722.x, x_3722.y) + x_3726);
          let x_3729 : vec4<f32> = u_xlat11;
          let x_3730 : vec2<f32> = vec2<f32>(x_3729.x, x_3729.y);
          let x_3732 : f32 = u_xlat10.z;
          txVec60 = vec3<f32>(x_3730.x, x_3730.y, x_3732);
          let x_3740 : vec3<f32> = txVec60;
          let x_3742 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3740.xy, x_3740.z);
          u_xlat12.x = x_3742;
          let x_3745 : vec4<f32> = u_xlat11;
          let x_3746 : vec2<f32> = vec2<f32>(x_3745.z, x_3745.w);
          let x_3748 : f32 = u_xlat10.z;
          txVec61 = vec3<f32>(x_3746.x, x_3746.y, x_3748);
          let x_3755 : vec3<f32> = txVec61;
          let x_3757 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3755.xy, x_3755.z);
          u_xlat12.y = x_3757;
          let x_3759 : vec4<f32> = u_xlat10;
          let x_3763 : vec4<f32> = x_241.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_3759.x, x_3759.y, x_3759.x, x_3759.y) + x_3763);
          let x_3766 : vec4<f32> = u_xlat11;
          let x_3767 : vec2<f32> = vec2<f32>(x_3766.x, x_3766.y);
          let x_3769 : f32 = u_xlat10.z;
          txVec62 = vec3<f32>(x_3767.x, x_3767.y, x_3769);
          let x_3776 : vec3<f32> = txVec62;
          let x_3778 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3776.xy, x_3776.z);
          u_xlat12.z = x_3778;
          let x_3781 : vec4<f32> = u_xlat11;
          let x_3782 : vec2<f32> = vec2<f32>(x_3781.z, x_3781.w);
          let x_3784 : f32 = u_xlat10.z;
          txVec63 = vec3<f32>(x_3782.x, x_3782.y, x_3784);
          let x_3791 : vec3<f32> = txVec63;
          let x_3793 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3791.xy, x_3791.z);
          u_xlat12.w = x_3793;
          let x_3795 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_3795, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3799 : i32 = u_xlati79;
          let x_3801 : f32 = x_241.x_AdditionalShadowParams[x_3799].y;
          u_xlatb85 = (2.0f == x_3801);
          let x_3803 : bool = u_xlatb85;
          if (x_3803) {
            let x_3806 : vec4<f32> = u_xlat10;
            let x_3810 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_3813 : vec2<f32> = ((vec2<f32>(x_3806.x, x_3806.y) * vec2<f32>(x_3810.z, x_3810.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3814 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3813.x, x_3813.y, x_3814.z, x_3814.w);
            let x_3816 : vec4<f32> = u_xlat11;
            let x_3818 : vec2<f32> = floor(vec2<f32>(x_3816.x, x_3816.y));
            let x_3819 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3818.x, x_3818.y, x_3819.z, x_3819.w);
            let x_3822 : vec4<f32> = u_xlat10;
            let x_3825 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_3828 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3822.x, x_3822.y) * vec2<f32>(x_3825.z, x_3825.w)) + -(vec2<f32>(x_3828.x, x_3828.y)));
            let x_3832 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3832.x, x_3832.x, x_3832.y, x_3832.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3835 : vec4<f32> = u_xlat12;
            let x_3837 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3835.x, x_3835.x, x_3835.z, x_3835.z) * vec4<f32>(x_3837.x, x_3837.x, x_3837.z, x_3837.z));
            let x_3840 : vec4<f32> = u_xlat13;
            let x_3842 : vec2<f32> = (vec2<f32>(x_3840.y, x_3840.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3843 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3842.x, x_3843.y, x_3842.y, x_3843.w);
            let x_3845 : vec4<f32> = u_xlat13;
            let x_3848 : vec2<f32> = u_xlat61;
            let x_3850 : vec2<f32> = ((vec2<f32>(x_3845.x, x_3845.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3848));
            let x_3851 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3850.x, x_3850.y, x_3851.z, x_3851.w);
            let x_3853 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_3853) + vec2<f32>(1.0f, 1.0f));
            let x_3856 : vec2<f32> = u_xlat61;
            let x_3857 : vec2<f32> = min(x_3856, vec2<f32>(0.0f, 0.0f));
            let x_3858 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3857.x, x_3857.y, x_3858.z, x_3858.w);
            let x_3860 : vec4<f32> = u_xlat14;
            let x_3863 : vec4<f32> = u_xlat14;
            let x_3866 : vec2<f32> = u_xlat63;
            let x_3867 : vec2<f32> = ((-(vec2<f32>(x_3860.x, x_3860.y)) * vec2<f32>(x_3863.x, x_3863.y)) + x_3866);
            let x_3868 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3867.x, x_3867.y, x_3868.z, x_3868.w);
            let x_3870 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_3870, vec2<f32>(0.0f, 0.0f));
            let x_3872 : vec2<f32> = u_xlat61;
            let x_3874 : vec2<f32> = u_xlat61;
            let x_3876 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_3872) * x_3874) + vec2<f32>(x_3876.y, x_3876.w));
            let x_3879 : vec4<f32> = u_xlat14;
            let x_3881 : vec2<f32> = (vec2<f32>(x_3879.x, x_3879.y) + vec2<f32>(1.0f, 1.0f));
            let x_3882 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3881.x, x_3881.y, x_3882.z, x_3882.w);
            let x_3884 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_3884 + vec2<f32>(1.0f, 1.0f));
            let x_3886 : vec4<f32> = u_xlat13;
            let x_3888 : vec2<f32> = (vec2<f32>(x_3886.x, x_3886.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3889 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3888.x, x_3888.y, x_3889.z, x_3889.w);
            let x_3891 : vec2<f32> = u_xlat63;
            let x_3892 : vec2<f32> = (x_3891 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3893 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3892.x, x_3892.y, x_3893.z, x_3893.w);
            let x_3895 : vec4<f32> = u_xlat14;
            let x_3897 : vec2<f32> = (vec2<f32>(x_3895.x, x_3895.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3898 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3897.x, x_3897.y, x_3898.z, x_3898.w);
            let x_3900 : vec2<f32> = u_xlat61;
            let x_3901 : vec2<f32> = (x_3900 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3902 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3901.x, x_3901.y, x_3902.z, x_3902.w);
            let x_3904 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_3904.y, x_3904.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3908 : f32 = u_xlat14.x;
            u_xlat15.z = x_3908;
            let x_3911 : f32 = u_xlat61.x;
            u_xlat15.w = x_3911;
            let x_3914 : f32 = u_xlat16.x;
            u_xlat13.z = x_3914;
            let x_3917 : f32 = u_xlat12.x;
            u_xlat13.w = x_3917;
            let x_3919 : vec4<f32> = u_xlat13;
            let x_3921 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_3919.z, x_3919.w, x_3919.x, x_3919.z) + vec4<f32>(x_3921.z, x_3921.w, x_3921.x, x_3921.z));
            let x_3925 : f32 = u_xlat15.y;
            u_xlat14.z = x_3925;
            let x_3928 : f32 = u_xlat61.y;
            u_xlat14.w = x_3928;
            let x_3931 : f32 = u_xlat13.y;
            u_xlat16.z = x_3931;
            let x_3934 : f32 = u_xlat12.z;
            u_xlat16.w = x_3934;
            let x_3936 : vec4<f32> = u_xlat14;
            let x_3938 : vec4<f32> = u_xlat16;
            let x_3940 : vec3<f32> = (vec3<f32>(x_3936.z, x_3936.y, x_3936.w) + vec3<f32>(x_3938.z, x_3938.y, x_3938.w));
            let x_3941 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3940.x, x_3940.y, x_3940.z, x_3941.w);
            let x_3943 : vec4<f32> = u_xlat13;
            let x_3945 : vec4<f32> = u_xlat17;
            let x_3947 : vec3<f32> = (vec3<f32>(x_3943.x, x_3943.z, x_3943.w) / vec3<f32>(x_3945.z, x_3945.w, x_3945.y));
            let x_3948 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3947.x, x_3947.y, x_3947.z, x_3948.w);
            let x_3950 : vec4<f32> = u_xlat13;
            let x_3952 : vec3<f32> = (vec3<f32>(x_3950.x, x_3950.y, x_3950.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3953 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3952.x, x_3952.y, x_3952.z, x_3953.w);
            let x_3955 : vec4<f32> = u_xlat16;
            let x_3957 : vec4<f32> = u_xlat12;
            let x_3959 : vec3<f32> = (vec3<f32>(x_3955.z, x_3955.y, x_3955.w) / vec3<f32>(x_3957.x, x_3957.y, x_3957.z));
            let x_3960 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3959.x, x_3959.y, x_3959.z, x_3960.w);
            let x_3962 : vec4<f32> = u_xlat14;
            let x_3964 : vec3<f32> = (vec3<f32>(x_3962.x, x_3962.y, x_3962.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3965 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3964.x, x_3964.y, x_3964.z, x_3965.w);
            let x_3967 : vec4<f32> = u_xlat13;
            let x_3970 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_3972 : vec3<f32> = (vec3<f32>(x_3967.y, x_3967.x, x_3967.z) * vec3<f32>(x_3970.x, x_3970.x, x_3970.x));
            let x_3973 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3972.x, x_3972.y, x_3972.z, x_3973.w);
            let x_3975 : vec4<f32> = u_xlat14;
            let x_3978 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_3980 : vec3<f32> = (vec3<f32>(x_3975.x, x_3975.y, x_3975.z) * vec3<f32>(x_3978.y, x_3978.y, x_3978.y));
            let x_3981 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3980.x, x_3980.y, x_3980.z, x_3981.w);
            let x_3984 : f32 = u_xlat14.x;
            u_xlat13.w = x_3984;
            let x_3986 : vec4<f32> = u_xlat11;
            let x_3989 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_3992 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_3986.x, x_3986.y, x_3986.x, x_3986.y) * vec4<f32>(x_3989.x, x_3989.y, x_3989.x, x_3989.y)) + vec4<f32>(x_3992.y, x_3992.w, x_3992.x, x_3992.w));
            let x_3995 : vec4<f32> = u_xlat11;
            let x_3998 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4001 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3995.x, x_3995.y) * vec2<f32>(x_3998.x, x_3998.y)) + vec2<f32>(x_4001.z, x_4001.w));
            let x_4005 : f32 = u_xlat13.y;
            u_xlat14.w = x_4005;
            let x_4007 : vec4<f32> = u_xlat14;
            let x_4008 : vec2<f32> = vec2<f32>(x_4007.y, x_4007.z);
            let x_4009 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4009.x, x_4008.x, x_4009.z, x_4008.y);
            let x_4011 : vec4<f32> = u_xlat11;
            let x_4014 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4017 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_4011.x, x_4011.y, x_4011.x, x_4011.y) * vec4<f32>(x_4014.x, x_4014.y, x_4014.x, x_4014.y)) + vec4<f32>(x_4017.x, x_4017.y, x_4017.z, x_4017.y));
            let x_4020 : vec4<f32> = u_xlat11;
            let x_4023 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4026 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4020.x, x_4020.y, x_4020.x, x_4020.y) * vec4<f32>(x_4023.x, x_4023.y, x_4023.x, x_4023.y)) + vec4<f32>(x_4026.w, x_4026.y, x_4026.w, x_4026.z));
            let x_4029 : vec4<f32> = u_xlat11;
            let x_4032 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4035 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_4029.x, x_4029.y, x_4029.x, x_4029.y) * vec4<f32>(x_4032.x, x_4032.y, x_4032.x, x_4032.y)) + vec4<f32>(x_4035.x, x_4035.w, x_4035.z, x_4035.w));
            let x_4038 : vec4<f32> = u_xlat12;
            let x_4040 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_4038.x, x_4038.x, x_4038.x, x_4038.y) * vec4<f32>(x_4040.z, x_4040.w, x_4040.y, x_4040.z));
            let x_4043 : vec4<f32> = u_xlat12;
            let x_4045 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_4043.y, x_4043.y, x_4043.z, x_4043.z) * x_4045);
            let x_4049 : f32 = u_xlat12.z;
            let x_4051 : f32 = u_xlat17.y;
            u_xlat85 = (x_4049 * x_4051);
            let x_4054 : vec4<f32> = u_xlat15;
            let x_4055 : vec2<f32> = vec2<f32>(x_4054.x, x_4054.y);
            let x_4057 : f32 = u_xlat10.z;
            txVec64 = vec3<f32>(x_4055.x, x_4055.y, x_4057);
            let x_4064 : vec3<f32> = txVec64;
            let x_4066 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4064.xy, x_4064.z);
            u_xlat11.x = x_4066;
            let x_4069 : vec4<f32> = u_xlat15;
            let x_4070 : vec2<f32> = vec2<f32>(x_4069.z, x_4069.w);
            let x_4072 : f32 = u_xlat10.z;
            txVec65 = vec3<f32>(x_4070.x, x_4070.y, x_4072);
            let x_4080 : vec3<f32> = txVec65;
            let x_4082 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4080.xy, x_4080.z);
            u_xlat36 = x_4082;
            let x_4083 : f32 = u_xlat36;
            let x_4085 : f32 = u_xlat18.y;
            u_xlat36 = (x_4083 * x_4085);
            let x_4088 : f32 = u_xlat18.x;
            let x_4090 : f32 = u_xlat11.x;
            let x_4092 : f32 = u_xlat36;
            u_xlat11.x = ((x_4088 * x_4090) + x_4092);
            let x_4096 : vec2<f32> = u_xlat61;
            let x_4098 : f32 = u_xlat10.z;
            txVec66 = vec3<f32>(x_4096.x, x_4096.y, x_4098);
            let x_4105 : vec3<f32> = txVec66;
            let x_4107 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4105.xy, x_4105.z);
            u_xlat36 = x_4107;
            let x_4109 : f32 = u_xlat18.z;
            let x_4110 : f32 = u_xlat36;
            let x_4113 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4109 * x_4110) + x_4113);
            let x_4117 : vec4<f32> = u_xlat14;
            let x_4118 : vec2<f32> = vec2<f32>(x_4117.x, x_4117.y);
            let x_4120 : f32 = u_xlat10.z;
            txVec67 = vec3<f32>(x_4118.x, x_4118.y, x_4120);
            let x_4127 : vec3<f32> = txVec67;
            let x_4129 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4127.xy, x_4127.z);
            u_xlat36 = x_4129;
            let x_4131 : f32 = u_xlat18.w;
            let x_4132 : f32 = u_xlat36;
            let x_4135 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4131 * x_4132) + x_4135);
            let x_4139 : vec4<f32> = u_xlat16;
            let x_4140 : vec2<f32> = vec2<f32>(x_4139.x, x_4139.y);
            let x_4142 : f32 = u_xlat10.z;
            txVec68 = vec3<f32>(x_4140.x, x_4140.y, x_4142);
            let x_4149 : vec3<f32> = txVec68;
            let x_4151 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4149.xy, x_4149.z);
            u_xlat36 = x_4151;
            let x_4153 : f32 = u_xlat19.x;
            let x_4154 : f32 = u_xlat36;
            let x_4157 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4153 * x_4154) + x_4157);
            let x_4161 : vec4<f32> = u_xlat16;
            let x_4162 : vec2<f32> = vec2<f32>(x_4161.z, x_4161.w);
            let x_4164 : f32 = u_xlat10.z;
            txVec69 = vec3<f32>(x_4162.x, x_4162.y, x_4164);
            let x_4171 : vec3<f32> = txVec69;
            let x_4173 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4171.xy, x_4171.z);
            u_xlat36 = x_4173;
            let x_4175 : f32 = u_xlat19.y;
            let x_4176 : f32 = u_xlat36;
            let x_4179 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4175 * x_4176) + x_4179);
            let x_4183 : vec4<f32> = u_xlat14;
            let x_4184 : vec2<f32> = vec2<f32>(x_4183.z, x_4183.w);
            let x_4186 : f32 = u_xlat10.z;
            txVec70 = vec3<f32>(x_4184.x, x_4184.y, x_4186);
            let x_4193 : vec3<f32> = txVec70;
            let x_4195 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4193.xy, x_4193.z);
            u_xlat36 = x_4195;
            let x_4197 : f32 = u_xlat19.z;
            let x_4198 : f32 = u_xlat36;
            let x_4201 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4197 * x_4198) + x_4201);
            let x_4205 : vec4<f32> = u_xlat13;
            let x_4206 : vec2<f32> = vec2<f32>(x_4205.x, x_4205.y);
            let x_4208 : f32 = u_xlat10.z;
            txVec71 = vec3<f32>(x_4206.x, x_4206.y, x_4208);
            let x_4215 : vec3<f32> = txVec71;
            let x_4217 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4215.xy, x_4215.z);
            u_xlat36 = x_4217;
            let x_4219 : f32 = u_xlat19.w;
            let x_4220 : f32 = u_xlat36;
            let x_4223 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4219 * x_4220) + x_4223);
            let x_4227 : vec4<f32> = u_xlat13;
            let x_4228 : vec2<f32> = vec2<f32>(x_4227.z, x_4227.w);
            let x_4230 : f32 = u_xlat10.z;
            txVec72 = vec3<f32>(x_4228.x, x_4228.y, x_4230);
            let x_4237 : vec3<f32> = txVec72;
            let x_4239 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4237.xy, x_4237.z);
            u_xlat36 = x_4239;
            let x_4240 : f32 = u_xlat85;
            let x_4241 : f32 = u_xlat36;
            let x_4244 : f32 = u_xlat11.x;
            u_xlat84 = ((x_4240 * x_4241) + x_4244);
          } else {
            let x_4247 : vec4<f32> = u_xlat10;
            let x_4250 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4253 : vec2<f32> = ((vec2<f32>(x_4247.x, x_4247.y) * vec2<f32>(x_4250.z, x_4250.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4254 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_4253.x, x_4253.y, x_4254.z, x_4254.w);
            let x_4256 : vec4<f32> = u_xlat11;
            let x_4258 : vec2<f32> = floor(vec2<f32>(x_4256.x, x_4256.y));
            let x_4259 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_4258.x, x_4258.y, x_4259.z, x_4259.w);
            let x_4261 : vec4<f32> = u_xlat10;
            let x_4264 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4267 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_4261.x, x_4261.y) * vec2<f32>(x_4264.z, x_4264.w)) + -(vec2<f32>(x_4267.x, x_4267.y)));
            let x_4271 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_4271.x, x_4271.x, x_4271.y, x_4271.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4274 : vec4<f32> = u_xlat12;
            let x_4276 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_4274.x, x_4274.x, x_4274.z, x_4274.z) * vec4<f32>(x_4276.x, x_4276.x, x_4276.z, x_4276.z));
            let x_4279 : vec4<f32> = u_xlat13;
            let x_4281 : vec2<f32> = (vec2<f32>(x_4279.y, x_4279.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4282 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4282.x, x_4281.x, x_4282.z, x_4281.y);
            let x_4284 : vec4<f32> = u_xlat13;
            let x_4287 : vec2<f32> = u_xlat61;
            let x_4289 : vec2<f32> = ((vec2<f32>(x_4284.x, x_4284.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4287));
            let x_4290 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4289.x, x_4290.y, x_4289.y, x_4290.w);
            let x_4292 : vec2<f32> = u_xlat61;
            let x_4294 : vec2<f32> = (-(x_4292) + vec2<f32>(1.0f, 1.0f));
            let x_4295 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4294.x, x_4294.y, x_4295.z, x_4295.w);
            let x_4297 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_4297, vec2<f32>(0.0f, 0.0f));
            let x_4299 : vec2<f32> = u_xlat63;
            let x_4301 : vec2<f32> = u_xlat63;
            let x_4303 : vec4<f32> = u_xlat13;
            let x_4305 : vec2<f32> = ((-(x_4299) * x_4301) + vec2<f32>(x_4303.x, x_4303.y));
            let x_4306 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4305.x, x_4305.y, x_4306.z, x_4306.w);
            let x_4308 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_4308, vec2<f32>(0.0f, 0.0f));
            let x_4311 : vec2<f32> = u_xlat63;
            let x_4313 : vec2<f32> = u_xlat63;
            let x_4315 : vec4<f32> = u_xlat12;
            let x_4317 : vec2<f32> = ((-(x_4311) * x_4313) + vec2<f32>(x_4315.y, x_4315.w));
            let x_4318 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_4317.x, x_4318.y, x_4317.y);
            let x_4320 : vec4<f32> = u_xlat13;
            let x_4322 : vec2<f32> = (vec2<f32>(x_4320.x, x_4320.y) + vec2<f32>(2.0f, 2.0f));
            let x_4323 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4322.x, x_4322.y, x_4323.z, x_4323.w);
            let x_4325 : vec3<f32> = u_xlat37;
            let x_4327 : vec2<f32> = (vec2<f32>(x_4325.x, x_4325.z) + vec2<f32>(2.0f, 2.0f));
            let x_4328 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4328.x, x_4327.x, x_4328.z, x_4327.y);
            let x_4331 : f32 = u_xlat12.y;
            u_xlat15.z = (x_4331 * 0.08163200318813323975f);
            let x_4334 : vec4<f32> = u_xlat12;
            let x_4336 : vec3<f32> = (vec3<f32>(x_4334.z, x_4334.x, x_4334.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4337 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4336.x, x_4336.y, x_4336.z, x_4337.w);
            let x_4339 : vec4<f32> = u_xlat13;
            let x_4341 : vec2<f32> = (vec2<f32>(x_4339.x, x_4339.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4342 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4341.x, x_4341.y, x_4342.z, x_4342.w);
            let x_4345 : f32 = u_xlat16.y;
            u_xlat15.x = x_4345;
            let x_4347 : vec2<f32> = u_xlat61;
            let x_4350 : vec2<f32> = ((vec2<f32>(x_4347.x, x_4347.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4351 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4351.x, x_4350.x, x_4351.z, x_4350.y);
            let x_4353 : vec2<f32> = u_xlat61;
            let x_4356 : vec2<f32> = ((vec2<f32>(x_4353.x, x_4353.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4357 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4356.x, x_4357.y, x_4356.y, x_4357.w);
            let x_4360 : f32 = u_xlat12.x;
            u_xlat13.y = x_4360;
            let x_4363 : f32 = u_xlat14.y;
            u_xlat13.w = x_4363;
            let x_4365 : vec4<f32> = u_xlat13;
            let x_4366 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4365 + x_4366);
            let x_4368 : vec2<f32> = u_xlat61;
            let x_4371 : vec2<f32> = ((vec2<f32>(x_4368.y, x_4368.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4372 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4372.x, x_4371.x, x_4372.z, x_4371.y);
            let x_4374 : vec2<f32> = u_xlat61;
            let x_4377 : vec2<f32> = ((vec2<f32>(x_4374.y, x_4374.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4378 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4377.x, x_4378.y, x_4377.y, x_4378.w);
            let x_4381 : f32 = u_xlat12.y;
            u_xlat14.y = x_4381;
            let x_4383 : vec4<f32> = u_xlat14;
            let x_4384 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_4383 + x_4384);
            let x_4386 : vec4<f32> = u_xlat13;
            let x_4387 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_4386 / x_4387);
            let x_4389 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_4389 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4391 : vec4<f32> = u_xlat14;
            let x_4392 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_4391 / x_4392);
            let x_4394 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4394 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4396 : vec4<f32> = u_xlat13;
            let x_4399 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_4396.w, x_4396.x, x_4396.y, x_4396.z) * vec4<f32>(x_4399.x, x_4399.x, x_4399.x, x_4399.x));
            let x_4402 : vec4<f32> = u_xlat14;
            let x_4405 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4402.x, x_4402.w, x_4402.y, x_4402.z) * vec4<f32>(x_4405.y, x_4405.y, x_4405.y, x_4405.y));
            let x_4408 : vec4<f32> = u_xlat13;
            let x_4409 : vec3<f32> = vec3<f32>(x_4408.y, x_4408.z, x_4408.w);
            let x_4410 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4409.x, x_4410.y, x_4409.y, x_4409.z);
            let x_4413 : f32 = u_xlat14.x;
            u_xlat16.y = x_4413;
            let x_4415 : vec4<f32> = u_xlat11;
            let x_4418 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4421 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_4415.x, x_4415.y, x_4415.x, x_4415.y) * vec4<f32>(x_4418.x, x_4418.y, x_4418.x, x_4418.y)) + vec4<f32>(x_4421.x, x_4421.y, x_4421.z, x_4421.y));
            let x_4424 : vec4<f32> = u_xlat11;
            let x_4427 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4430 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_4424.x, x_4424.y) * vec2<f32>(x_4427.x, x_4427.y)) + vec2<f32>(x_4430.w, x_4430.y));
            let x_4434 : f32 = u_xlat16.y;
            u_xlat13.y = x_4434;
            let x_4437 : f32 = u_xlat14.z;
            u_xlat16.y = x_4437;
            let x_4439 : vec4<f32> = u_xlat11;
            let x_4442 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4445 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_4439.x, x_4439.y, x_4439.x, x_4439.y) * vec4<f32>(x_4442.x, x_4442.y, x_4442.x, x_4442.y)) + vec4<f32>(x_4445.x, x_4445.y, x_4445.z, x_4445.y));
            let x_4448 : vec4<f32> = u_xlat11;
            let x_4451 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4454 : vec4<f32> = u_xlat16;
            let x_4456 : vec2<f32> = ((vec2<f32>(x_4448.x, x_4448.y) * vec2<f32>(x_4451.x, x_4451.y)) + vec2<f32>(x_4454.w, x_4454.y));
            let x_4457 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_4456.x, x_4456.y, x_4457.z, x_4457.w);
            let x_4460 : f32 = u_xlat16.y;
            u_xlat13.z = x_4460;
            let x_4462 : vec4<f32> = u_xlat11;
            let x_4465 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4468 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_4462.x, x_4462.y, x_4462.x, x_4462.y) * vec4<f32>(x_4465.x, x_4465.y, x_4465.x, x_4465.y)) + vec4<f32>(x_4468.x, x_4468.y, x_4468.x, x_4468.z));
            let x_4472 : f32 = u_xlat14.w;
            u_xlat16.y = x_4472;
            let x_4475 : vec4<f32> = u_xlat11;
            let x_4478 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4481 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_4475.x, x_4475.y, x_4475.x, x_4475.y) * vec4<f32>(x_4478.x, x_4478.y, x_4478.x, x_4478.y)) + vec4<f32>(x_4481.x, x_4481.y, x_4481.z, x_4481.y));
            let x_4485 : vec4<f32> = u_xlat11;
            let x_4488 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4491 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_4485.x, x_4485.y) * vec2<f32>(x_4488.x, x_4488.y)) + vec2<f32>(x_4491.w, x_4491.y));
            let x_4495 : f32 = u_xlat16.y;
            u_xlat13.w = x_4495;
            let x_4498 : vec4<f32> = u_xlat11;
            let x_4501 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4504 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_4498.x, x_4498.y) * vec2<f32>(x_4501.x, x_4501.y)) + vec2<f32>(x_4504.x, x_4504.w));
            let x_4507 : vec4<f32> = u_xlat16;
            let x_4508 : vec3<f32> = vec3<f32>(x_4507.x, x_4507.z, x_4507.w);
            let x_4509 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4508.x, x_4509.y, x_4508.y, x_4508.z);
            let x_4511 : vec4<f32> = u_xlat11;
            let x_4514 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4517 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4511.x, x_4511.y, x_4511.x, x_4511.y) * vec4<f32>(x_4514.x, x_4514.y, x_4514.x, x_4514.y)) + vec4<f32>(x_4517.x, x_4517.y, x_4517.z, x_4517.y));
            let x_4520 : vec4<f32> = u_xlat11;
            let x_4523 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4526 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4520.x, x_4520.y) * vec2<f32>(x_4523.x, x_4523.y)) + vec2<f32>(x_4526.w, x_4526.y));
            let x_4530 : f32 = u_xlat13.x;
            u_xlat14.x = x_4530;
            let x_4532 : vec4<f32> = u_xlat11;
            let x_4535 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4538 : vec4<f32> = u_xlat14;
            let x_4540 : vec2<f32> = ((vec2<f32>(x_4532.x, x_4532.y) * vec2<f32>(x_4535.x, x_4535.y)) + vec2<f32>(x_4538.x, x_4538.y));
            let x_4541 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_4540.x, x_4540.y, x_4541.z, x_4541.w);
            let x_4544 : vec4<f32> = u_xlat12;
            let x_4546 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_4544.x, x_4544.x, x_4544.x, x_4544.x) * x_4546);
            let x_4549 : vec4<f32> = u_xlat12;
            let x_4551 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_4549.y, x_4549.y, x_4549.y, x_4549.y) * x_4551);
            let x_4554 : vec4<f32> = u_xlat12;
            let x_4556 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_4554.z, x_4554.z, x_4554.z, x_4554.z) * x_4556);
            let x_4558 : vec4<f32> = u_xlat12;
            let x_4560 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_4558.w, x_4558.w, x_4558.w, x_4558.w) * x_4560);
            let x_4563 : vec4<f32> = u_xlat17;
            let x_4564 : vec2<f32> = vec2<f32>(x_4563.x, x_4563.y);
            let x_4566 : f32 = u_xlat10.z;
            txVec73 = vec3<f32>(x_4564.x, x_4564.y, x_4566);
            let x_4573 : vec3<f32> = txVec73;
            let x_4575 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4573.xy, x_4573.z);
            u_xlat85 = x_4575;
            let x_4577 : vec4<f32> = u_xlat17;
            let x_4578 : vec2<f32> = vec2<f32>(x_4577.z, x_4577.w);
            let x_4580 : f32 = u_xlat10.z;
            txVec74 = vec3<f32>(x_4578.x, x_4578.y, x_4580);
            let x_4587 : vec3<f32> = txVec74;
            let x_4589 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4587.xy, x_4587.z);
            u_xlat13.x = x_4589;
            let x_4592 : f32 = u_xlat13.x;
            let x_4594 : f32 = u_xlat22.y;
            u_xlat13.x = (x_4592 * x_4594);
            let x_4598 : f32 = u_xlat22.x;
            let x_4599 : f32 = u_xlat85;
            let x_4602 : f32 = u_xlat13.x;
            u_xlat85 = ((x_4598 * x_4599) + x_4602);
            let x_4605 : vec2<f32> = u_xlat61;
            let x_4607 : f32 = u_xlat10.z;
            txVec75 = vec3<f32>(x_4605.x, x_4605.y, x_4607);
            let x_4614 : vec3<f32> = txVec75;
            let x_4616 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4614.xy, x_4614.z);
            u_xlat61.x = x_4616;
            let x_4619 : f32 = u_xlat22.z;
            let x_4621 : f32 = u_xlat61.x;
            let x_4623 : f32 = u_xlat85;
            u_xlat85 = ((x_4619 * x_4621) + x_4623);
            let x_4626 : vec4<f32> = u_xlat20;
            let x_4627 : vec2<f32> = vec2<f32>(x_4626.x, x_4626.y);
            let x_4629 : f32 = u_xlat10.z;
            txVec76 = vec3<f32>(x_4627.x, x_4627.y, x_4629);
            let x_4636 : vec3<f32> = txVec76;
            let x_4638 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4636.xy, x_4636.z);
            u_xlat61.x = x_4638;
            let x_4641 : f32 = u_xlat22.w;
            let x_4643 : f32 = u_xlat61.x;
            let x_4645 : f32 = u_xlat85;
            u_xlat85 = ((x_4641 * x_4643) + x_4645);
            let x_4648 : vec4<f32> = u_xlat18;
            let x_4649 : vec2<f32> = vec2<f32>(x_4648.x, x_4648.y);
            let x_4651 : f32 = u_xlat10.z;
            txVec77 = vec3<f32>(x_4649.x, x_4649.y, x_4651);
            let x_4658 : vec3<f32> = txVec77;
            let x_4660 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4658.xy, x_4658.z);
            u_xlat61.x = x_4660;
            let x_4663 : f32 = u_xlat23.x;
            let x_4665 : f32 = u_xlat61.x;
            let x_4667 : f32 = u_xlat85;
            u_xlat85 = ((x_4663 * x_4665) + x_4667);
            let x_4670 : vec4<f32> = u_xlat18;
            let x_4671 : vec2<f32> = vec2<f32>(x_4670.z, x_4670.w);
            let x_4673 : f32 = u_xlat10.z;
            txVec78 = vec3<f32>(x_4671.x, x_4671.y, x_4673);
            let x_4680 : vec3<f32> = txVec78;
            let x_4682 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4680.xy, x_4680.z);
            u_xlat61.x = x_4682;
            let x_4685 : f32 = u_xlat23.y;
            let x_4687 : f32 = u_xlat61.x;
            let x_4689 : f32 = u_xlat85;
            u_xlat85 = ((x_4685 * x_4687) + x_4689);
            let x_4692 : vec4<f32> = u_xlat19;
            let x_4693 : vec2<f32> = vec2<f32>(x_4692.x, x_4692.y);
            let x_4695 : f32 = u_xlat10.z;
            txVec79 = vec3<f32>(x_4693.x, x_4693.y, x_4695);
            let x_4702 : vec3<f32> = txVec79;
            let x_4704 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4702.xy, x_4702.z);
            u_xlat61.x = x_4704;
            let x_4707 : f32 = u_xlat23.z;
            let x_4709 : f32 = u_xlat61.x;
            let x_4711 : f32 = u_xlat85;
            u_xlat85 = ((x_4707 * x_4709) + x_4711);
            let x_4714 : vec4<f32> = u_xlat20;
            let x_4715 : vec2<f32> = vec2<f32>(x_4714.z, x_4714.w);
            let x_4717 : f32 = u_xlat10.z;
            txVec80 = vec3<f32>(x_4715.x, x_4715.y, x_4717);
            let x_4724 : vec3<f32> = txVec80;
            let x_4726 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4724.xy, x_4724.z);
            u_xlat61.x = x_4726;
            let x_4729 : f32 = u_xlat23.w;
            let x_4731 : f32 = u_xlat61.x;
            let x_4733 : f32 = u_xlat85;
            u_xlat85 = ((x_4729 * x_4731) + x_4733);
            let x_4736 : vec4<f32> = u_xlat21;
            let x_4737 : vec2<f32> = vec2<f32>(x_4736.x, x_4736.y);
            let x_4739 : f32 = u_xlat10.z;
            txVec81 = vec3<f32>(x_4737.x, x_4737.y, x_4739);
            let x_4746 : vec3<f32> = txVec81;
            let x_4748 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4746.xy, x_4746.z);
            u_xlat61.x = x_4748;
            let x_4751 : f32 = u_xlat24.x;
            let x_4753 : f32 = u_xlat61.x;
            let x_4755 : f32 = u_xlat85;
            u_xlat85 = ((x_4751 * x_4753) + x_4755);
            let x_4758 : vec4<f32> = u_xlat21;
            let x_4759 : vec2<f32> = vec2<f32>(x_4758.z, x_4758.w);
            let x_4761 : f32 = u_xlat10.z;
            txVec82 = vec3<f32>(x_4759.x, x_4759.y, x_4761);
            let x_4768 : vec3<f32> = txVec82;
            let x_4770 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4768.xy, x_4768.z);
            u_xlat61.x = x_4770;
            let x_4773 : f32 = u_xlat24.y;
            let x_4775 : f32 = u_xlat61.x;
            let x_4777 : f32 = u_xlat85;
            u_xlat85 = ((x_4773 * x_4775) + x_4777);
            let x_4780 : vec2<f32> = u_xlat38;
            let x_4782 : f32 = u_xlat10.z;
            txVec83 = vec3<f32>(x_4780.x, x_4780.y, x_4782);
            let x_4789 : vec3<f32> = txVec83;
            let x_4791 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4789.xy, x_4789.z);
            u_xlat61.x = x_4791;
            let x_4794 : f32 = u_xlat24.z;
            let x_4796 : f32 = u_xlat61.x;
            let x_4798 : f32 = u_xlat85;
            u_xlat85 = ((x_4794 * x_4796) + x_4798);
            let x_4801 : vec2<f32> = u_xlat69;
            let x_4803 : f32 = u_xlat10.z;
            txVec84 = vec3<f32>(x_4801.x, x_4801.y, x_4803);
            let x_4810 : vec3<f32> = txVec84;
            let x_4812 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4810.xy, x_4810.z);
            u_xlat61.x = x_4812;
            let x_4815 : f32 = u_xlat24.w;
            let x_4817 : f32 = u_xlat61.x;
            let x_4819 : f32 = u_xlat85;
            u_xlat85 = ((x_4815 * x_4817) + x_4819);
            let x_4822 : vec4<f32> = u_xlat16;
            let x_4823 : vec2<f32> = vec2<f32>(x_4822.x, x_4822.y);
            let x_4825 : f32 = u_xlat10.z;
            txVec85 = vec3<f32>(x_4823.x, x_4823.y, x_4825);
            let x_4832 : vec3<f32> = txVec85;
            let x_4834 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4832.xy, x_4832.z);
            u_xlat61.x = x_4834;
            let x_4837 : f32 = u_xlat12.x;
            let x_4839 : f32 = u_xlat61.x;
            let x_4841 : f32 = u_xlat85;
            u_xlat85 = ((x_4837 * x_4839) + x_4841);
            let x_4844 : vec4<f32> = u_xlat16;
            let x_4845 : vec2<f32> = vec2<f32>(x_4844.z, x_4844.w);
            let x_4847 : f32 = u_xlat10.z;
            txVec86 = vec3<f32>(x_4845.x, x_4845.y, x_4847);
            let x_4854 : vec3<f32> = txVec86;
            let x_4856 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4854.xy, x_4854.z);
            u_xlat61.x = x_4856;
            let x_4859 : f32 = u_xlat12.y;
            let x_4861 : f32 = u_xlat61.x;
            let x_4863 : f32 = u_xlat85;
            u_xlat85 = ((x_4859 * x_4861) + x_4863);
            let x_4866 : vec2<f32> = u_xlat64;
            let x_4868 : f32 = u_xlat10.z;
            txVec87 = vec3<f32>(x_4866.x, x_4866.y, x_4868);
            let x_4875 : vec3<f32> = txVec87;
            let x_4877 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4875.xy, x_4875.z);
            u_xlat61.x = x_4877;
            let x_4880 : f32 = u_xlat12.z;
            let x_4882 : f32 = u_xlat61.x;
            let x_4884 : f32 = u_xlat85;
            u_xlat85 = ((x_4880 * x_4882) + x_4884);
            let x_4887 : vec4<f32> = u_xlat11;
            let x_4888 : vec2<f32> = vec2<f32>(x_4887.x, x_4887.y);
            let x_4890 : f32 = u_xlat10.z;
            txVec88 = vec3<f32>(x_4888.x, x_4888.y, x_4890);
            let x_4897 : vec3<f32> = txVec88;
            let x_4899 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4897.xy, x_4897.z);
            u_xlat11.x = x_4899;
            let x_4902 : f32 = u_xlat12.w;
            let x_4904 : f32 = u_xlat11.x;
            let x_4906 : f32 = u_xlat85;
            u_xlat84 = ((x_4902 * x_4904) + x_4906);
          }
        }
      } else {
        let x_4910 : vec4<f32> = u_xlat10;
        let x_4911 : vec2<f32> = vec2<f32>(x_4910.x, x_4910.y);
        let x_4913 : f32 = u_xlat10.z;
        txVec89 = vec3<f32>(x_4911.x, x_4911.y, x_4913);
        let x_4920 : vec3<f32> = txVec89;
        let x_4922 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4920.xy, x_4920.z);
        u_xlat84 = x_4922;
      }
      let x_4923 : i32 = u_xlati79;
      let x_4925 : f32 = x_241.x_AdditionalShadowParams[x_4923].x;
      u_xlat10.x = (1.0f + -(x_4925));
      let x_4929 : f32 = u_xlat84;
      let x_4930 : i32 = u_xlati79;
      let x_4932 : f32 = x_241.x_AdditionalShadowParams[x_4930].x;
      let x_4935 : f32 = u_xlat10.x;
      u_xlat84 = ((x_4929 * x_4932) + x_4935);
      let x_4938 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_4938);
      let x_4943 : f32 = u_xlat10.z;
      u_xlatb35 = (x_4943 >= 1.0f);
      let x_4945 : bool = u_xlatb35;
      let x_4947 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_4945 | x_4947);
      let x_4951 : bool = u_xlatb10.x;
      let x_4952 : f32 = u_xlat84;
      u_xlat84 = select(x_4952, 1.0f, x_4951);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_4955 : f32 = u_xlat84;
    u_xlat10.x = (-(x_4955) + 1.0f);
    let x_4960 : f32 = u_xlat2.x;
    let x_4962 : f32 = u_xlat10.x;
    let x_4964 : f32 = u_xlat84;
    u_xlat84 = ((x_4960 * x_4962) + x_4964);
    let x_4966 : f32 = u_xlat82;
    let x_4967 : f32 = u_xlat84;
    u_xlat82 = (x_4966 * x_4967);
    let x_4969 : vec3<f32> = u_xlat25;
    let x_4970 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(x_4969, vec3<f32>(x_4970.x, x_4970.y, x_4970.z));
    let x_4973 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4973, 0.0f, 1.0f);
    let x_4975 : f32 = u_xlat82;
    let x_4976 : f32 = u_xlat84;
    u_xlat82 = (x_4975 * x_4976);
    let x_4978 : f32 = u_xlat82;
    let x_4980 : i32 = u_xlati79;
    let x_4982 : vec4<f32> = x_3473.x_AdditionalLightsColor[x_4980];
    let x_4984 : vec3<f32> = (vec3<f32>(x_4978, x_4978, x_4978) * vec3<f32>(x_4982.x, x_4982.y, x_4982.z));
    let x_4985 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4984.x, x_4984.y, x_4984.z, x_4985.w);
    let x_4987 : vec4<f32> = u_xlat8;
    let x_4989 : f32 = u_xlat83;
    let x_4992 : vec4<f32> = u_xlat4;
    let x_4994 : vec3<f32> = ((vec3<f32>(x_4987.x, x_4987.y, x_4987.z) * vec3<f32>(x_4989, x_4989, x_4989)) + vec3<f32>(x_4992.x, x_4992.y, x_4992.z));
    let x_4995 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4994.x, x_4994.y, x_4994.z, x_4995.w);
    let x_4997 : vec4<f32> = u_xlat8;
    let x_4999 : vec4<f32> = u_xlat8;
    u_xlat79 = dot(vec3<f32>(x_4997.x, x_4997.y, x_4997.z), vec3<f32>(x_4999.x, x_4999.y, x_4999.z));
    let x_5002 : f32 = u_xlat79;
    u_xlat79 = max(x_5002, 1.17549435e-38f);
    let x_5004 : f32 = u_xlat79;
    u_xlat79 = inverseSqrt(x_5004);
    let x_5006 : f32 = u_xlat79;
    let x_5008 : vec4<f32> = u_xlat8;
    let x_5010 : vec3<f32> = (vec3<f32>(x_5006, x_5006, x_5006) * vec3<f32>(x_5008.x, x_5008.y, x_5008.z));
    let x_5011 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5010.x, x_5010.y, x_5010.z, x_5011.w);
    let x_5013 : vec3<f32> = u_xlat25;
    let x_5014 : vec4<f32> = u_xlat8;
    u_xlat79 = dot(x_5013, vec3<f32>(x_5014.x, x_5014.y, x_5014.z));
    let x_5017 : f32 = u_xlat79;
    u_xlat79 = clamp(x_5017, 0.0f, 1.0f);
    let x_5019 : vec4<f32> = u_xlat9;
    let x_5021 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_5019.x, x_5019.y, x_5019.z), vec3<f32>(x_5021.x, x_5021.y, x_5021.z));
    let x_5024 : f32 = u_xlat82;
    u_xlat82 = clamp(x_5024, 0.0f, 1.0f);
    let x_5026 : f32 = u_xlat79;
    let x_5027 : f32 = u_xlat79;
    u_xlat79 = (x_5026 * x_5027);
    let x_5029 : f32 = u_xlat79;
    let x_5031 : f32 = u_xlat27.x;
    u_xlat79 = ((x_5029 * x_5031) + 1.00001001358032226562f);
    let x_5034 : f32 = u_xlat82;
    let x_5035 : f32 = u_xlat82;
    u_xlat82 = (x_5034 * x_5035);
    let x_5037 : f32 = u_xlat79;
    let x_5038 : f32 = u_xlat79;
    u_xlat79 = (x_5037 * x_5038);
    let x_5040 : f32 = u_xlat82;
    u_xlat82 = max(x_5040, 0.10000000149011611938f);
    let x_5042 : f32 = u_xlat79;
    let x_5043 : f32 = u_xlat82;
    u_xlat79 = (x_5042 * x_5043);
    let x_5045 : f32 = u_xlat80;
    let x_5046 : f32 = u_xlat79;
    u_xlat79 = (x_5045 * x_5046);
    let x_5048 : f32 = u_xlat78;
    let x_5049 : f32 = u_xlat79;
    u_xlat79 = (x_5048 / x_5049);
    let x_5051 : f32 = u_xlat79;
    let x_5054 : vec3<f32> = u_xlat5;
    let x_5055 : vec3<f32> = ((vec3<f32>(x_5051, x_5051, x_5051) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5054);
    let x_5056 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5055.x, x_5055.y, x_5055.z, x_5056.w);
    let x_5058 : vec4<f32> = u_xlat8;
    let x_5060 : vec4<f32> = u_xlat10;
    let x_5063 : vec4<f32> = u_xlat7;
    let x_5065 : vec3<f32> = ((vec3<f32>(x_5058.x, x_5058.y, x_5058.z) * vec3<f32>(x_5060.x, x_5060.y, x_5060.z)) + vec3<f32>(x_5063.x, x_5063.y, x_5063.z));
    let x_5066 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_5065.x, x_5065.y, x_5065.z, x_5066.w);

    continuing {
      let x_5068 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5068 + bitcast<u32>(1i));
    }
  }
  let x_5070 : vec4<f32> = u_xlat3;
  let x_5072 : vec4<f32> = u_xlat6;
  let x_5075 : vec3<f32> = u_xlat31;
  u_xlat0 = ((vec3<f32>(x_5070.x, x_5070.y, x_5070.z) * vec3<f32>(x_5072.x, x_5072.x, x_5072.x)) + x_5075);
  let x_5077 : vec4<f32> = u_xlat7;
  let x_5079 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_5077.x, x_5077.y, x_5077.z) + x_5079);
  let x_5083 : vec4<f32> = vs_INTERP6;
  let x_5085 : vec3<f32> = u_xlat1;
  let x_5087 : vec3<f32> = u_xlat0;
  let x_5088 : vec3<f32> = ((vec3<f32>(x_5083.w, x_5083.w, x_5083.w) * x_5085) + x_5087);
  let x_5089 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5088.x, x_5088.y, x_5088.z, x_5089.w);
  let x_5091 : bool = u_xlatb52;
  let x_5092 : f32 = u_xlat76;
  SV_Target0.w = select(1.0f, x_5092, x_5091);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(6) vs_INTERP9_param : vec3<f32>, @location(2) vs_INTERP4_param : vec4<f32>, @location(3) vs_INTERP5_param : vec4<f32>, @location(4) vs_INTERP6_param : vec4<f32>, @location(5) vs_INTERP8_param : vec3<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @location(1) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


