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

var<private> u_xlatb26 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_48 : UnityPerDraw;

var<private> u_xlat26 : vec3<f32>;

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

var<private> u_xlat32 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_241 : LightShadows;

var<private> u_xlatb0 : bool;

var<private> u_xlatb79 : bool;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat79 : f32;

var<private> u_xlatb80 : bool;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat29 : f32;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlatb28 : bool;

var<private> u_xlatb54 : bool;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat54 : f32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb58 : bool;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat84 : f32;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat86 : f32;

var<private> u_xlatb2 : bool;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu0 : u32;

var<private> u_xlatu81 : u32;

var<private> u_xlati83 : i32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_3473 : AdditionalLights;

var<private> u_xlati84 : i32;

var<private> u_xlatb85 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat87 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb87 : bool;

var<private> u_xlat78 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu80 : u32;

var<private> u_xlatb81 : bool;

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
  var x_1588 : f32;
  var x_1705 : vec3<f32>;
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
  var x_3086 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3612 : f32;
  var x_3622 : f32;
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
  u_xlatb26.x = (0.0f < x_39);
  let x_53 : f32 = x_48.unity_WorldTransformParams.w;
  u_xlatb26.y = (x_53 >= 0.0f);
  let x_59 : bool = u_xlatb26.x;
  u_xlat26.x = select(-1.0f, 1.0f, x_59);
  let x_64 : bool = u_xlatb26.y;
  u_xlat26.y = select(-1.0f, 1.0f, x_64);
  let x_68 : f32 = u_xlat26.y;
  let x_70 : f32 = u_xlat26.x;
  u_xlat26.x = (x_68 * x_70);
  let x_74 : vec4<f32> = vs_INTERP4;
  let x_76 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_74.y, x_74.z, x_74.x) * vec3<f32>(x_76.z, x_76.x, x_76.y));
  let x_79 : vec3<f32> = vs_INTERP9;
  let x_81 : vec4<f32> = vs_INTERP4;
  let x_84 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_79.y, x_79.z, x_79.x) * vec3<f32>(x_81.z, x_81.x, x_81.y)) + -(x_84));
  let x_87 : vec3<f32> = u_xlat26;
  let x_89 : vec3<f32> = u_xlat1;
  u_xlat26 = (vec3<f32>(x_87.x, x_87.x, x_87.x) * x_89);
  let x_91 : vec3<f32> = u_xlat0;
  let x_93 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_91.x, x_91.x, x_91.x) * x_93);
  let x_96 : vec3<f32> = u_xlat0;
  let x_98 : vec4<f32> = vs_INTERP4;
  u_xlat2 = (vec3<f32>(x_96.x, x_96.x, x_96.x) * vec3<f32>(x_98.x, x_98.y, x_98.z));
  let x_103 : vec3<f32> = u_xlat26;
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
  u_xlat32 = (vec3<f32>(x_172.x, x_172.x, x_172.x) * vec3<f32>(x_174.x, x_174.y, x_174.z));
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
  let x_196 : vec3<f32> = u_xlat32;
  let x_198 : vec3<f32> = (vec3<f32>(x_194.x, x_194.y, x_194.z) * vec3<f32>(x_196.y, x_196.y, x_196.y));
  let x_199 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_201 : vec3<f32> = u_xlat32;
  let x_203 : vec3<f32> = u_xlat2;
  let x_205 : vec4<f32> = u_xlat3;
  u_xlat2 = ((vec3<f32>(x_201.x, x_201.x, x_201.x) * x_203) + vec3<f32>(x_205.x, x_205.y, x_205.z));
  let x_208 : vec3<f32> = u_xlat32;
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
    u_xlatb79 = (x_278 == 1.0f);
    let x_280 : bool = u_xlatb79;
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
      u_xlat79 = dot(x_362, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_369 : f32 = x_241.x_MainLightShadowParams.y;
      u_xlatb80 = (x_369 == 2.0f);
      let x_371 : bool = u_xlatb80;
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
        u_xlat55 = ((vec2<f32>(x_393.x, x_393.y) * vec2<f32>(x_396.z, x_396.w)) + -(vec2<f32>(x_399.x, x_399.y)));
        let x_403 : vec2<f32> = u_xlat55;
        u_xlat7 = (vec4<f32>(x_403.x, x_403.x, x_403.y, x_403.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_408 : vec4<f32> = u_xlat7;
        let x_410 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_408.x, x_408.x, x_408.z, x_408.z) * vec4<f32>(x_410.x, x_410.x, x_410.z, x_410.z));
        let x_413 : vec4<f32> = u_xlat8;
        let x_417 : vec2<f32> = (vec2<f32>(x_413.y, x_413.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_418 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_417.x, x_418.y, x_417.y, x_418.w);
        let x_420 : vec4<f32> = u_xlat8;
        let x_423 : vec2<f32> = u_xlat55;
        let x_425 : vec2<f32> = ((vec2<f32>(x_420.x, x_420.z) * vec2<f32>(0.5f, 0.5f)) + -(x_423));
        let x_426 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_425.x, x_425.y, x_426.z, x_426.w);
        let x_429 : vec2<f32> = u_xlat55;
        u_xlat60 = (-(x_429) + vec2<f32>(1.0f, 1.0f));
        let x_434 : vec2<f32> = u_xlat55;
        let x_436 : vec2<f32> = min(x_434, vec2<f32>(0.0f, 0.0f));
        let x_437 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_436.x, x_436.y, x_437.z, x_437.w);
        let x_439 : vec4<f32> = u_xlat9;
        let x_442 : vec4<f32> = u_xlat9;
        let x_445 : vec2<f32> = u_xlat60;
        let x_446 : vec2<f32> = ((-(vec2<f32>(x_439.x, x_439.y)) * vec2<f32>(x_442.x, x_442.y)) + x_445);
        let x_447 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_446.x, x_446.y, x_447.z, x_447.w);
        let x_449 : vec2<f32> = u_xlat55;
        u_xlat55 = max(x_449, vec2<f32>(0.0f, 0.0f));
        let x_451 : vec2<f32> = u_xlat55;
        let x_453 : vec2<f32> = u_xlat55;
        let x_455 : vec4<f32> = u_xlat7;
        u_xlat55 = ((-(x_451) * x_453) + vec2<f32>(x_455.y, x_455.w));
        let x_458 : vec4<f32> = u_xlat9;
        let x_460 : vec2<f32> = (vec2<f32>(x_458.x, x_458.y) + vec2<f32>(1.0f, 1.0f));
        let x_461 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_460.x, x_460.y, x_461.z, x_461.w);
        let x_463 : vec2<f32> = u_xlat55;
        u_xlat55 = (x_463 + vec2<f32>(1.0f, 1.0f));
        let x_466 : vec4<f32> = u_xlat8;
        let x_470 : vec2<f32> = (vec2<f32>(x_466.x, x_466.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_471 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_470.x, x_470.y, x_471.z, x_471.w);
        let x_473 : vec2<f32> = u_xlat60;
        let x_474 : vec2<f32> = (x_473 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_475 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_474.x, x_474.y, x_475.z, x_475.w);
        let x_477 : vec4<f32> = u_xlat9;
        let x_479 : vec2<f32> = (vec2<f32>(x_477.x, x_477.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_480 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_479.x, x_479.y, x_480.z, x_480.w);
        let x_483 : vec2<f32> = u_xlat55;
        let x_484 : vec2<f32> = (x_483 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_485 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_484.x, x_484.y, x_485.z, x_485.w);
        let x_487 : vec4<f32> = u_xlat7;
        u_xlat55 = (vec2<f32>(x_487.y, x_487.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_491 : f32 = u_xlat9.x;
        u_xlat10.z = x_491;
        let x_494 : f32 = u_xlat55.x;
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
        let x_512 : f32 = u_xlat55.y;
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
        u_xlat55 = ((vec2<f32>(x_583.x, x_583.y) * vec2<f32>(x_586.x, x_586.y)) + vec2<f32>(x_589.z, x_589.w));
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
        u_xlat80 = (x_639 * x_641);
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
        u_xlat29 = x_672;
        let x_673 : f32 = u_xlat29;
        let x_675 : f32 = u_xlat13.y;
        u_xlat29 = (x_673 * x_675);
        let x_678 : f32 = u_xlat13.x;
        let x_680 : f32 = u_xlat3.x;
        let x_682 : f32 = u_xlat29;
        u_xlat3.x = ((x_678 * x_680) + x_682);
        let x_686 : vec2<f32> = u_xlat55;
        let x_688 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_686.x, x_686.y, x_688);
        let x_695 : vec3<f32> = txVec6;
        let x_697 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_695.xy, x_695.z);
        u_xlat29 = x_697;
        let x_699 : f32 = u_xlat13.z;
        let x_700 : f32 = u_xlat29;
        let x_703 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_699 * x_700) + x_703);
        let x_707 : vec4<f32> = u_xlat9;
        let x_708 : vec2<f32> = vec2<f32>(x_707.x, x_707.y);
        let x_710 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_708.x, x_708.y, x_710);
        let x_717 : vec3<f32> = txVec7;
        let x_719 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_717.xy, x_717.z);
        u_xlat29 = x_719;
        let x_721 : f32 = u_xlat13.w;
        let x_722 : f32 = u_xlat29;
        let x_725 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_721 * x_722) + x_725);
        let x_729 : vec4<f32> = u_xlat11;
        let x_730 : vec2<f32> = vec2<f32>(x_729.x, x_729.y);
        let x_732 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_730.x, x_730.y, x_732);
        let x_739 : vec3<f32> = txVec8;
        let x_741 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_739.xy, x_739.z);
        u_xlat29 = x_741;
        let x_743 : f32 = u_xlat14.x;
        let x_744 : f32 = u_xlat29;
        let x_747 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_743 * x_744) + x_747);
        let x_751 : vec4<f32> = u_xlat11;
        let x_752 : vec2<f32> = vec2<f32>(x_751.z, x_751.w);
        let x_754 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_752.x, x_752.y, x_754);
        let x_761 : vec3<f32> = txVec9;
        let x_763 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_761.xy, x_761.z);
        u_xlat29 = x_763;
        let x_765 : f32 = u_xlat14.y;
        let x_766 : f32 = u_xlat29;
        let x_769 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_765 * x_766) + x_769);
        let x_773 : vec4<f32> = u_xlat9;
        let x_774 : vec2<f32> = vec2<f32>(x_773.z, x_773.w);
        let x_776 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_774.x, x_774.y, x_776);
        let x_783 : vec3<f32> = txVec10;
        let x_785 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_783.xy, x_783.z);
        u_xlat29 = x_785;
        let x_787 : f32 = u_xlat14.z;
        let x_788 : f32 = u_xlat29;
        let x_791 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_787 * x_788) + x_791);
        let x_795 : vec4<f32> = u_xlat8;
        let x_796 : vec2<f32> = vec2<f32>(x_795.x, x_795.y);
        let x_798 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_796.x, x_796.y, x_798);
        let x_805 : vec3<f32> = txVec11;
        let x_807 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_805.xy, x_805.z);
        u_xlat29 = x_807;
        let x_809 : f32 = u_xlat14.w;
        let x_810 : f32 = u_xlat29;
        let x_813 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_809 * x_810) + x_813);
        let x_817 : vec4<f32> = u_xlat8;
        let x_818 : vec2<f32> = vec2<f32>(x_817.z, x_817.w);
        let x_820 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_818.x, x_818.y, x_820);
        let x_827 : vec3<f32> = txVec12;
        let x_829 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_827.xy, x_827.z);
        u_xlat29 = x_829;
        let x_830 : f32 = u_xlat80;
        let x_831 : f32 = u_xlat29;
        let x_834 : f32 = u_xlat3.x;
        u_xlat79 = ((x_830 * x_831) + x_834);
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
        u_xlat55 = ((vec2<f32>(x_851.x, x_851.y) * vec2<f32>(x_854.z, x_854.w)) + -(vec2<f32>(x_857.x, x_857.y)));
        let x_861 : vec2<f32> = u_xlat55;
        u_xlat7 = (vec4<f32>(x_861.x, x_861.x, x_861.y, x_861.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_864 : vec4<f32> = u_xlat7;
        let x_866 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_864.x, x_864.x, x_864.z, x_864.z) * vec4<f32>(x_866.x, x_866.x, x_866.z, x_866.z));
        let x_869 : vec4<f32> = u_xlat8;
        let x_873 : vec2<f32> = (vec2<f32>(x_869.y, x_869.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_874 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_874.x, x_873.x, x_874.z, x_873.y);
        let x_876 : vec4<f32> = u_xlat8;
        let x_879 : vec2<f32> = u_xlat55;
        let x_881 : vec2<f32> = ((vec2<f32>(x_876.x, x_876.z) * vec2<f32>(0.5f, 0.5f)) + -(x_879));
        let x_882 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_881.x, x_882.y, x_881.y, x_882.w);
        let x_884 : vec2<f32> = u_xlat55;
        let x_886 : vec2<f32> = (-(x_884) + vec2<f32>(1.0f, 1.0f));
        let x_887 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_886.x, x_886.y, x_887.z, x_887.w);
        let x_889 : vec2<f32> = u_xlat55;
        u_xlat60 = min(x_889, vec2<f32>(0.0f, 0.0f));
        let x_891 : vec2<f32> = u_xlat60;
        let x_893 : vec2<f32> = u_xlat60;
        let x_895 : vec4<f32> = u_xlat8;
        let x_897 : vec2<f32> = ((-(x_891) * x_893) + vec2<f32>(x_895.x, x_895.y));
        let x_898 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_897.x, x_897.y, x_898.z, x_898.w);
        let x_900 : vec2<f32> = u_xlat55;
        u_xlat60 = max(x_900, vec2<f32>(0.0f, 0.0f));
        let x_903 : vec2<f32> = u_xlat60;
        let x_905 : vec2<f32> = u_xlat60;
        let x_907 : vec4<f32> = u_xlat7;
        let x_909 : vec2<f32> = ((-(x_903) * x_905) + vec2<f32>(x_907.y, x_907.w));
        let x_910 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_909.x, x_910.y, x_909.y);
        let x_912 : vec4<f32> = u_xlat8;
        let x_915 : vec2<f32> = (vec2<f32>(x_912.x, x_912.y) + vec2<f32>(2.0f, 2.0f));
        let x_916 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_915.x, x_915.y, x_916.z, x_916.w);
        let x_918 : vec3<f32> = u_xlat33;
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
        let x_943 : vec2<f32> = u_xlat55;
        let x_950 : vec2<f32> = ((vec2<f32>(x_943.x, x_943.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_951 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_951.x, x_950.x, x_951.z, x_950.y);
        let x_953 : vec2<f32> = u_xlat55;
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
        let x_969 : vec2<f32> = u_xlat55;
        let x_972 : vec2<f32> = ((vec2<f32>(x_969.y, x_969.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_973 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_973.x, x_972.x, x_973.z, x_972.y);
        let x_975 : vec2<f32> = u_xlat55;
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
        u_xlat55 = ((vec2<f32>(x_1029.x, x_1029.y) * vec2<f32>(x_1032.x, x_1032.y)) + vec2<f32>(x_1035.w, x_1035.y));
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
        let x_1099 : vec2<f32> = ((vec2<f32>(x_1091.x, x_1091.y) * vec2<f32>(x_1094.x, x_1094.y)) + vec2<f32>(x_1097.w, x_1097.y));
        let x_1100 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1099.x, x_1099.y, x_1100.z);
        let x_1103 : f32 = u_xlat11.y;
        u_xlat8.w = x_1103;
        let x_1106 : vec4<f32> = u_xlat3;
        let x_1109 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_1112 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1106.x, x_1106.y) * vec2<f32>(x_1109.x, x_1109.y)) + vec2<f32>(x_1112.x, x_1112.w));
        let x_1115 : vec4<f32> = u_xlat11;
        let x_1116 : vec3<f32> = vec3<f32>(x_1115.x, x_1115.z, x_1115.w);
        let x_1117 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1116.x, x_1117.y, x_1116.y, x_1116.z);
        let x_1119 : vec4<f32> = u_xlat3;
        let x_1122 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_1125 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1119.x, x_1119.y, x_1119.x, x_1119.y) * vec4<f32>(x_1122.x, x_1122.y, x_1122.x, x_1122.y)) + vec4<f32>(x_1125.x, x_1125.y, x_1125.z, x_1125.y));
        let x_1129 : vec4<f32> = u_xlat3;
        let x_1132 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_1135 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1129.x, x_1129.y) * vec2<f32>(x_1132.x, x_1132.y)) + vec2<f32>(x_1135.w, x_1135.y));
        let x_1139 : f32 = u_xlat8.x;
        u_xlat9.x = x_1139;
        let x_1141 : vec4<f32> = u_xlat3;
        let x_1144 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_1147 : vec4<f32> = u_xlat9;
        let x_1149 : vec2<f32> = ((vec2<f32>(x_1141.x, x_1141.y) * vec2<f32>(x_1144.x, x_1144.y)) + vec2<f32>(x_1147.x, x_1147.y));
        let x_1150 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1149.x, x_1149.y, x_1150.z, x_1150.w);
        let x_1153 : vec4<f32> = u_xlat7;
        let x_1155 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1153.x, x_1153.x, x_1153.x, x_1153.x) * x_1155);
        let x_1158 : vec4<f32> = u_xlat7;
        let x_1160 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1158.y, x_1158.y, x_1158.y, x_1158.y) * x_1160);
        let x_1163 : vec4<f32> = u_xlat7;
        let x_1165 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1163.z, x_1163.z, x_1163.z, x_1163.z) * x_1165);
        let x_1167 : vec4<f32> = u_xlat7;
        let x_1169 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1167.w, x_1167.w, x_1167.w, x_1167.w) * x_1169);
        let x_1172 : vec4<f32> = u_xlat12;
        let x_1173 : vec2<f32> = vec2<f32>(x_1172.x, x_1172.y);
        let x_1175 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_1173.x, x_1173.y, x_1175);
        let x_1182 : vec3<f32> = txVec13;
        let x_1184 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1182.xy, x_1182.z);
        u_xlat80 = x_1184;
        let x_1186 : vec4<f32> = u_xlat12;
        let x_1187 : vec2<f32> = vec2<f32>(x_1186.z, x_1186.w);
        let x_1189 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1187.x, x_1187.y, x_1189);
        let x_1197 : vec3<f32> = txVec14;
        let x_1199 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1197.xy, x_1197.z);
        u_xlat83 = x_1199;
        let x_1200 : f32 = u_xlat83;
        let x_1202 : f32 = u_xlat17.y;
        u_xlat83 = (x_1200 * x_1202);
        let x_1205 : f32 = u_xlat17.x;
        let x_1206 : f32 = u_xlat80;
        let x_1208 : f32 = u_xlat83;
        u_xlat80 = ((x_1205 * x_1206) + x_1208);
        let x_1211 : vec2<f32> = u_xlat55;
        let x_1213 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1211.x, x_1211.y, x_1213);
        let x_1220 : vec3<f32> = txVec15;
        let x_1222 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1220.xy, x_1220.z);
        u_xlat55.x = x_1222;
        let x_1225 : f32 = u_xlat17.z;
        let x_1227 : f32 = u_xlat55.x;
        let x_1229 : f32 = u_xlat80;
        u_xlat80 = ((x_1225 * x_1227) + x_1229);
        let x_1232 : vec4<f32> = u_xlat15;
        let x_1233 : vec2<f32> = vec2<f32>(x_1232.x, x_1232.y);
        let x_1235 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1233.x, x_1233.y, x_1235);
        let x_1242 : vec3<f32> = txVec16;
        let x_1244 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1242.xy, x_1242.z);
        u_xlat55.x = x_1244;
        let x_1247 : f32 = u_xlat17.w;
        let x_1249 : f32 = u_xlat55.x;
        let x_1251 : f32 = u_xlat80;
        u_xlat80 = ((x_1247 * x_1249) + x_1251);
        let x_1254 : vec4<f32> = u_xlat13;
        let x_1255 : vec2<f32> = vec2<f32>(x_1254.x, x_1254.y);
        let x_1257 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1255.x, x_1255.y, x_1257);
        let x_1264 : vec3<f32> = txVec17;
        let x_1266 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1264.xy, x_1264.z);
        u_xlat55.x = x_1266;
        let x_1269 : f32 = u_xlat18.x;
        let x_1271 : f32 = u_xlat55.x;
        let x_1273 : f32 = u_xlat80;
        u_xlat80 = ((x_1269 * x_1271) + x_1273);
        let x_1276 : vec4<f32> = u_xlat13;
        let x_1277 : vec2<f32> = vec2<f32>(x_1276.z, x_1276.w);
        let x_1279 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1277.x, x_1277.y, x_1279);
        let x_1286 : vec3<f32> = txVec18;
        let x_1288 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1286.xy, x_1286.z);
        u_xlat55.x = x_1288;
        let x_1291 : f32 = u_xlat18.y;
        let x_1293 : f32 = u_xlat55.x;
        let x_1295 : f32 = u_xlat80;
        u_xlat80 = ((x_1291 * x_1293) + x_1295);
        let x_1298 : vec4<f32> = u_xlat14;
        let x_1299 : vec2<f32> = vec2<f32>(x_1298.x, x_1298.y);
        let x_1301 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1299.x, x_1299.y, x_1301);
        let x_1308 : vec3<f32> = txVec19;
        let x_1310 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1308.xy, x_1308.z);
        u_xlat55.x = x_1310;
        let x_1313 : f32 = u_xlat18.z;
        let x_1315 : f32 = u_xlat55.x;
        let x_1317 : f32 = u_xlat80;
        u_xlat80 = ((x_1313 * x_1315) + x_1317);
        let x_1320 : vec4<f32> = u_xlat15;
        let x_1321 : vec2<f32> = vec2<f32>(x_1320.z, x_1320.w);
        let x_1323 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1321.x, x_1321.y, x_1323);
        let x_1330 : vec3<f32> = txVec20;
        let x_1332 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1330.xy, x_1330.z);
        u_xlat55.x = x_1332;
        let x_1335 : f32 = u_xlat18.w;
        let x_1337 : f32 = u_xlat55.x;
        let x_1339 : f32 = u_xlat80;
        u_xlat80 = ((x_1335 * x_1337) + x_1339);
        let x_1342 : vec4<f32> = u_xlat16;
        let x_1343 : vec2<f32> = vec2<f32>(x_1342.x, x_1342.y);
        let x_1345 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1343.x, x_1343.y, x_1345);
        let x_1352 : vec3<f32> = txVec21;
        let x_1354 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1352.xy, x_1352.z);
        u_xlat55.x = x_1354;
        let x_1357 : f32 = u_xlat19.x;
        let x_1359 : f32 = u_xlat55.x;
        let x_1361 : f32 = u_xlat80;
        u_xlat80 = ((x_1357 * x_1359) + x_1361);
        let x_1364 : vec4<f32> = u_xlat16;
        let x_1365 : vec2<f32> = vec2<f32>(x_1364.z, x_1364.w);
        let x_1367 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1365.x, x_1365.y, x_1367);
        let x_1374 : vec3<f32> = txVec22;
        let x_1376 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1374.xy, x_1374.z);
        u_xlat55.x = x_1376;
        let x_1379 : f32 = u_xlat19.y;
        let x_1381 : f32 = u_xlat55.x;
        let x_1383 : f32 = u_xlat80;
        u_xlat80 = ((x_1379 * x_1381) + x_1383);
        let x_1386 : vec3<f32> = u_xlat34;
        let x_1387 : vec2<f32> = vec2<f32>(x_1386.x, x_1386.y);
        let x_1389 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1387.x, x_1387.y, x_1389);
        let x_1396 : vec3<f32> = txVec23;
        let x_1398 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1396.xy, x_1396.z);
        u_xlat55.x = x_1398;
        let x_1401 : f32 = u_xlat19.z;
        let x_1403 : f32 = u_xlat55.x;
        let x_1405 : f32 = u_xlat80;
        u_xlat80 = ((x_1401 * x_1403) + x_1405);
        let x_1408 : vec2<f32> = u_xlat66;
        let x_1410 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1408.x, x_1408.y, x_1410);
        let x_1417 : vec3<f32> = txVec24;
        let x_1419 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1417.xy, x_1417.z);
        u_xlat55.x = x_1419;
        let x_1422 : f32 = u_xlat19.w;
        let x_1424 : f32 = u_xlat55.x;
        let x_1426 : f32 = u_xlat80;
        u_xlat80 = ((x_1422 * x_1424) + x_1426);
        let x_1429 : vec4<f32> = u_xlat11;
        let x_1430 : vec2<f32> = vec2<f32>(x_1429.x, x_1429.y);
        let x_1432 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1430.x, x_1430.y, x_1432);
        let x_1439 : vec3<f32> = txVec25;
        let x_1441 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1439.xy, x_1439.z);
        u_xlat55.x = x_1441;
        let x_1444 : f32 = u_xlat7.x;
        let x_1446 : f32 = u_xlat55.x;
        let x_1448 : f32 = u_xlat80;
        u_xlat80 = ((x_1444 * x_1446) + x_1448);
        let x_1451 : vec4<f32> = u_xlat11;
        let x_1452 : vec2<f32> = vec2<f32>(x_1451.z, x_1451.w);
        let x_1454 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1452.x, x_1452.y, x_1454);
        let x_1461 : vec3<f32> = txVec26;
        let x_1463 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1461.xy, x_1461.z);
        u_xlat55.x = x_1463;
        let x_1466 : f32 = u_xlat7.y;
        let x_1468 : f32 = u_xlat55.x;
        let x_1470 : f32 = u_xlat80;
        u_xlat80 = ((x_1466 * x_1468) + x_1470);
        let x_1473 : vec2<f32> = u_xlat61;
        let x_1475 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1473.x, x_1473.y, x_1475);
        let x_1482 : vec3<f32> = txVec27;
        let x_1484 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1482.xy, x_1482.z);
        u_xlat55.x = x_1484;
        let x_1487 : f32 = u_xlat7.z;
        let x_1489 : f32 = u_xlat55.x;
        let x_1491 : f32 = u_xlat80;
        u_xlat80 = ((x_1487 * x_1489) + x_1491);
        let x_1494 : vec4<f32> = u_xlat3;
        let x_1495 : vec2<f32> = vec2<f32>(x_1494.x, x_1494.y);
        let x_1497 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1495.x, x_1495.y, x_1497);
        let x_1504 : vec3<f32> = txVec28;
        let x_1506 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1504.xy, x_1504.z);
        u_xlat3.x = x_1506;
        let x_1509 : f32 = u_xlat7.w;
        let x_1511 : f32 = u_xlat3.x;
        let x_1513 : f32 = u_xlat80;
        u_xlat79 = ((x_1509 * x_1511) + x_1513);
      }
    }
  } else {
    let x_1517 : vec3<f32> = u_xlat2;
    let x_1518 : vec2<f32> = vec2<f32>(x_1517.x, x_1517.y);
    let x_1520 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1518.x, x_1518.y, x_1520);
    let x_1527 : vec3<f32> = txVec29;
    let x_1529 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1527.xy, x_1527.z);
    u_xlat79 = x_1529;
  }
  let x_1531 : f32 = x_241.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_1531) + 1.0f);
  let x_1535 : f32 = u_xlat79;
  let x_1537 : f32 = x_241.x_MainLightShadowParams.x;
  let x_1540 : f32 = u_xlat2.x;
  u_xlat79 = ((x_1535 * x_1537) + x_1540);
  let x_1544 : f32 = u_xlat2.z;
  u_xlatb28 = (0.0f >= x_1544);
  let x_1548 : f32 = u_xlat2.z;
  u_xlatb54 = (x_1548 >= 1.0f);
  let x_1550 : bool = u_xlatb54;
  let x_1551 : bool = u_xlatb28;
  u_xlatb28 = (x_1550 | x_1551);
  let x_1553 : bool = u_xlatb28;
  let x_1554 : f32 = u_xlat79;
  u_xlat79 = select(x_1554, 1.0f, x_1553);
  let x_1556 : vec3<f32> = u_xlat1;
  let x_1558 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat1.x = dot(x_1556, -(vec3<f32>(x_1558.x, x_1558.y, x_1558.z)));
  let x_1564 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1564, 0.0f, 1.0f);
  let x_1568 : f32 = u_xlat79;
  let x_1571 : vec4<f32> = x_126.x_MainLightColor;
  u_xlat27 = (vec3<f32>(x_1568, x_1568, x_1568) * vec3<f32>(x_1571.x, x_1571.y, x_1571.z));
  let x_1574 : vec3<f32> = u_xlat27;
  let x_1575 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_1574 * vec3<f32>(x_1575.x, x_1575.x, x_1575.x));
  let x_1578 : vec3<f32> = u_xlat1;
  let x_1579 : vec4<f32> = u_xlat4;
  u_xlat1 = (x_1578 * vec3<f32>(x_1579.x, x_1579.y, x_1579.z));
  let x_1583 : f32 = u_xlat4.w;
  u_xlatb79 = (x_1583 >= 0.40000000596046447754f);
  let x_1586 : bool = u_xlatb79;
  if (x_1586) {
    let x_1592 : f32 = u_xlat4.w;
    x_1588 = x_1592;
  } else {
    x_1588 = 0.0f;
  }
  let x_1594 : f32 = x_1588;
  u_xlat79 = x_1594;
  let x_1597 : f32 = u_xlat4.w;
  u_xlat28 = (x_1597 + -0.40000000596046447754f);
  let x_1602 : f32 = u_xlat4.w;
  u_xlat54 = dpdxCoarse(x_1602);
  let x_1605 : f32 = u_xlat4.w;
  u_xlat80 = dpdyCoarse(x_1605);
  let x_1607 : f32 = u_xlat80;
  let x_1609 : f32 = u_xlat54;
  u_xlat54 = (abs(x_1607) + abs(x_1609));
  let x_1612 : f32 = u_xlat54;
  u_xlat54 = max(x_1612, 0.00009999999747378752f);
  let x_1615 : f32 = u_xlat28;
  let x_1616 : f32 = u_xlat54;
  u_xlat28 = (x_1615 / x_1616);
  let x_1618 : f32 = u_xlat28;
  u_xlat28 = (x_1618 + 0.5f);
  let x_1620 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1620, 0.0f, 1.0f);
  let x_1623 : f32 = x_126.x_AlphaToMaskAvailable;
  u_xlatb54 = !((x_1623 == 0.0f));
  let x_1625 : bool = u_xlatb54;
  let x_1626 : f32 = u_xlat28;
  let x_1627 : f32 = u_xlat79;
  u_xlat79 = select(x_1627, x_1626, x_1625);
  let x_1629 : f32 = u_xlat79;
  u_xlat28 = (x_1629 + -0.00009999999747378752f);
  let x_1632 : f32 = u_xlat28;
  u_xlatb28 = (x_1632 < 0.0f);
  let x_1634 : bool = u_xlatb28;
  if (((select(0i, 1i, x_1634) * -1i) != 0i)) {
    discard;
  }
  let x_1642 : vec3<f32> = u_xlat26;
  let x_1643 : vec3<f32> = u_xlat32;
  u_xlat26 = (x_1642 * vec3<f32>(x_1643.y, x_1643.y, x_1643.y));
  let x_1646 : vec3<f32> = u_xlat32;
  let x_1648 : vec4<f32> = vs_INTERP4;
  let x_1651 : vec3<f32> = u_xlat26;
  u_xlat26 = ((vec3<f32>(x_1646.x, x_1646.x, x_1646.x) * vec3<f32>(x_1648.x, x_1648.y, x_1648.z)) + x_1651);
  let x_1653 : vec3<f32> = u_xlat32;
  let x_1655 : vec3<f32> = vs_INTERP9;
  let x_1657 : vec3<f32> = u_xlat26;
  u_xlat26 = ((vec3<f32>(x_1653.z, x_1653.z, x_1653.z) * x_1655) + x_1657);
  let x_1659 : vec3<f32> = u_xlat26;
  let x_1660 : vec3<f32> = u_xlat26;
  u_xlat28 = dot(x_1659, x_1660);
  let x_1662 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1662);
  let x_1664 : vec3<f32> = u_xlat26;
  let x_1665 : f32 = u_xlat28;
  u_xlat26 = (x_1664 * vec3<f32>(x_1665, x_1665, x_1665));
  let x_1669 : f32 = x_126.unity_OrthoParams.w;
  u_xlatb28 = (x_1669 == 0.0f);
  let x_1671 : vec3<f32> = vs_INTERP8;
  let x_1676 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_1677 : vec3<f32> = (-(x_1671) + x_1676);
  let x_1678 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1677.x, x_1677.y, x_1677.z, x_1678.w);
  let x_1680 : vec4<f32> = u_xlat3;
  let x_1682 : vec4<f32> = u_xlat3;
  u_xlat80 = dot(vec3<f32>(x_1680.x, x_1680.y, x_1680.z), vec3<f32>(x_1682.x, x_1682.y, x_1682.z));
  let x_1685 : f32 = u_xlat80;
  u_xlat80 = inverseSqrt(x_1685);
  let x_1687 : f32 = u_xlat80;
  let x_1689 : vec4<f32> = u_xlat3;
  let x_1691 : vec3<f32> = (vec3<f32>(x_1687, x_1687, x_1687) * vec3<f32>(x_1689.x, x_1689.y, x_1689.z));
  let x_1692 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1691.x, x_1691.y, x_1691.z, x_1692.w);
  let x_1696 : f32 = x_126.unity_MatrixV[0i].z;
  u_xlat4.x = x_1696;
  let x_1699 : f32 = x_126.unity_MatrixV[1i].z;
  u_xlat4.y = x_1699;
  let x_1702 : f32 = x_126.unity_MatrixV[2i].z;
  u_xlat4.z = x_1702;
  let x_1704 : bool = u_xlatb28;
  if (x_1704) {
    let x_1708 : vec4<f32> = u_xlat3;
    x_1705 = vec3<f32>(x_1708.x, x_1708.y, x_1708.z);
  } else {
    let x_1711 : vec4<f32> = u_xlat4;
    x_1705 = vec3<f32>(x_1711.x, x_1711.y, x_1711.z);
  }
  let x_1713 : vec3<f32> = x_1705;
  let x_1714 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1713.x, x_1713.y, x_1713.z, x_1714.w);
  let x_1717 : f32 = vs_INTERP8.y;
  let x_1719 : f32 = x_126.unity_MatrixV[1i].z;
  u_xlat28 = (x_1717 * x_1719);
  let x_1722 : f32 = x_126.unity_MatrixV[0i].z;
  let x_1724 : f32 = vs_INTERP8.x;
  let x_1726 : f32 = u_xlat28;
  u_xlat28 = ((x_1722 * x_1724) + x_1726);
  let x_1729 : f32 = x_126.unity_MatrixV[2i].z;
  let x_1731 : f32 = vs_INTERP8.z;
  let x_1733 : f32 = u_xlat28;
  u_xlat28 = ((x_1729 * x_1731) + x_1733);
  let x_1735 : f32 = u_xlat28;
  let x_1737 : f32 = x_126.unity_MatrixV[3i].z;
  u_xlat28 = (x_1735 + x_1737);
  let x_1739 : f32 = u_xlat28;
  let x_1742 : f32 = x_126.x_ProjectionParams.y;
  u_xlat28 = (-(x_1739) + -(x_1742));
  let x_1745 : f32 = u_xlat28;
  u_xlat28 = max(x_1745, 0.0f);
  let x_1747 : f32 = u_xlat28;
  let x_1749 : f32 = x_126.unity_FogParams.x;
  u_xlat28 = (x_1747 * x_1749);
  let x_1758 : vec2<f32> = vs_INTERP0;
  let x_1760 : f32 = x_126.x_GlobalMipBias.x;
  let x_1761 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_1758, x_1760);
  u_xlat4 = x_1761;
  let x_1766 : vec2<f32> = vs_INTERP0;
  let x_1768 : f32 = x_126.x_GlobalMipBias.x;
  let x_1769 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_1766, x_1768);
  u_xlat32 = vec3<f32>(x_1769.x, x_1769.y, x_1769.z);
  let x_1771 : vec4<f32> = u_xlat4;
  let x_1774 : vec3<f32> = (vec3<f32>(x_1771.x, x_1771.y, x_1771.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1775 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1774.x, x_1774.y, x_1774.z, x_1775.w);
  let x_1777 : vec3<f32> = u_xlat26;
  let x_1778 : vec4<f32> = u_xlat4;
  u_xlat80 = dot(x_1777, vec3<f32>(x_1778.x, x_1778.y, x_1778.z));
  let x_1781 : f32 = u_xlat80;
  u_xlat80 = (x_1781 + 0.5f);
  let x_1783 : f32 = u_xlat80;
  let x_1785 : vec3<f32> = u_xlat32;
  let x_1786 : vec3<f32> = (vec3<f32>(x_1783, x_1783, x_1783) * x_1785);
  let x_1787 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1786.x, x_1786.y, x_1786.z, x_1787.w);
  let x_1790 : f32 = u_xlat4.w;
  u_xlat80 = max(x_1790, 0.00009999999747378752f);
  let x_1792 : vec4<f32> = u_xlat4;
  let x_1794 : f32 = u_xlat80;
  let x_1796 : vec3<f32> = (vec3<f32>(x_1792.x, x_1792.y, x_1792.z) / vec3<f32>(x_1794, x_1794, x_1794));
  let x_1797 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1796.x, x_1796.y, x_1796.z, x_1797.w);
  let x_1800 : f32 = u_xlat6.x;
  u_xlat6.x = x_1800;
  let x_1803 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1803, 0.0f, 1.0f);
  let x_1806 : f32 = u_xlat79;
  u_xlat79 = min(x_1806, 1.0f);
  let x_1808 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_1808 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_1813 : f32 = u_xlat6.x;
  u_xlat80 = (-(x_1813) + 1.0f);
  let x_1817 : f32 = u_xlat80;
  let x_1818 : f32 = u_xlat80;
  u_xlat81 = (x_1817 * x_1818);
  let x_1820 : f32 = u_xlat81;
  u_xlat81 = max(x_1820, 0.0078125f);
  let x_1824 : f32 = u_xlat81;
  let x_1825 : f32 = u_xlat81;
  u_xlat82 = (x_1824 * x_1825);
  let x_1828 : f32 = u_xlat6.x;
  u_xlat83 = (x_1828 + 0.04000002145767211914f);
  let x_1831 : f32 = u_xlat83;
  u_xlat83 = min(x_1831, 1.0f);
  let x_1833 : f32 = u_xlat81;
  u_xlat6.x = ((x_1833 * 4.0f) + 2.0f);
  let x_1839 : f32 = vs_INTERP6.w;
  u_xlat32.x = min(x_1839, 1.0f);
  let x_1842 : bool = u_xlatb0;
  if (x_1842) {
    let x_1846 : f32 = x_241.x_MainLightShadowParams.y;
    u_xlatb0 = (x_1846 == 1.0f);
    let x_1848 : bool = u_xlatb0;
    if (x_1848) {
      let x_1852 : vec4<f32> = vs_INTERP3;
      let x_1855 : vec4<f32> = x_241.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_1852.x, x_1852.y, x_1852.x, x_1852.y) + x_1855);
      let x_1858 : vec4<f32> = u_xlat7;
      let x_1859 : vec2<f32> = vec2<f32>(x_1858.x, x_1858.y);
      let x_1861 : f32 = vs_INTERP3.z;
      txVec30 = vec3<f32>(x_1859.x, x_1859.y, x_1861);
      let x_1868 : vec3<f32> = txVec30;
      let x_1870 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1868.xy, x_1868.z);
      u_xlat8.x = x_1870;
      let x_1873 : vec4<f32> = u_xlat7;
      let x_1874 : vec2<f32> = vec2<f32>(x_1873.z, x_1873.w);
      let x_1876 : f32 = vs_INTERP3.z;
      txVec31 = vec3<f32>(x_1874.x, x_1874.y, x_1876);
      let x_1883 : vec3<f32> = txVec31;
      let x_1885 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1883.xy, x_1883.z);
      u_xlat8.y = x_1885;
      let x_1887 : vec4<f32> = vs_INTERP3;
      let x_1890 : vec4<f32> = x_241.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_1887.x, x_1887.y, x_1887.x, x_1887.y) + x_1890);
      let x_1893 : vec4<f32> = u_xlat7;
      let x_1894 : vec2<f32> = vec2<f32>(x_1893.x, x_1893.y);
      let x_1896 : f32 = vs_INTERP3.z;
      txVec32 = vec3<f32>(x_1894.x, x_1894.y, x_1896);
      let x_1903 : vec3<f32> = txVec32;
      let x_1905 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1903.xy, x_1903.z);
      u_xlat8.z = x_1905;
      let x_1908 : vec4<f32> = u_xlat7;
      let x_1909 : vec2<f32> = vec2<f32>(x_1908.z, x_1908.w);
      let x_1911 : f32 = vs_INTERP3.z;
      txVec33 = vec3<f32>(x_1909.x, x_1909.y, x_1911);
      let x_1918 : vec3<f32> = txVec33;
      let x_1920 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1918.xy, x_1918.z);
      u_xlat8.w = x_1920;
      let x_1922 : vec4<f32> = u_xlat8;
      u_xlat0.x = dot(x_1922, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1928 : f32 = x_241.x_MainLightShadowParams.y;
      u_xlatb58 = (x_1928 == 2.0f);
      let x_1930 : bool = u_xlatb58;
      if (x_1930) {
        let x_1934 : vec4<f32> = vs_INTERP3;
        let x_1937 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_1934.x, x_1934.y) * vec2<f32>(x_1937.z, x_1937.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1941 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_1941);
        let x_1943 : vec4<f32> = vs_INTERP3;
        let x_1946 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_1949 : vec2<f32> = u_xlat58;
        let x_1951 : vec2<f32> = ((vec2<f32>(x_1943.x, x_1943.y) * vec2<f32>(x_1946.z, x_1946.w)) + -(x_1949));
        let x_1952 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1951.x, x_1951.y, x_1952.z, x_1952.w);
        let x_1954 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1954.x, x_1954.x, x_1954.y, x_1954.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1957 : vec4<f32> = u_xlat8;
        let x_1959 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1957.x, x_1957.x, x_1957.z, x_1957.z) * vec4<f32>(x_1959.x, x_1959.x, x_1959.z, x_1959.z));
        let x_1963 : vec4<f32> = u_xlat9;
        u_xlat59 = (vec2<f32>(x_1963.y, x_1963.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1966 : vec4<f32> = u_xlat9;
        let x_1969 : vec4<f32> = u_xlat7;
        let x_1972 : vec2<f32> = ((vec2<f32>(x_1966.x, x_1966.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1969.x, x_1969.y)));
        let x_1973 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1972.x, x_1973.y, x_1972.y, x_1973.w);
        let x_1975 : vec4<f32> = u_xlat7;
        let x_1978 : vec2<f32> = (-(vec2<f32>(x_1975.x, x_1975.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1979 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1978.x, x_1978.y, x_1979.z, x_1979.w);
        let x_1981 : vec4<f32> = u_xlat7;
        u_xlat61 = min(vec2<f32>(x_1981.x, x_1981.y), vec2<f32>(0.0f, 0.0f));
        let x_1984 : vec2<f32> = u_xlat61;
        let x_1986 : vec2<f32> = u_xlat61;
        let x_1988 : vec4<f32> = u_xlat9;
        u_xlat61 = ((-(x_1984) * x_1986) + vec2<f32>(x_1988.x, x_1988.y));
        let x_1991 : vec4<f32> = u_xlat7;
        let x_1993 : vec2<f32> = max(vec2<f32>(x_1991.x, x_1991.y), vec2<f32>(0.0f, 0.0f));
        let x_1994 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1993.x, x_1993.y, x_1994.z, x_1994.w);
        let x_1996 : vec4<f32> = u_xlat7;
        let x_1999 : vec4<f32> = u_xlat7;
        let x_2002 : vec4<f32> = u_xlat8;
        let x_2004 : vec2<f32> = ((-(vec2<f32>(x_1996.x, x_1996.y)) * vec2<f32>(x_1999.x, x_1999.y)) + vec2<f32>(x_2002.y, x_2002.w));
        let x_2005 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2004.x, x_2004.y, x_2005.z, x_2005.w);
        let x_2007 : vec2<f32> = u_xlat61;
        u_xlat61 = (x_2007 + vec2<f32>(1.0f, 1.0f));
        let x_2009 : vec4<f32> = u_xlat7;
        let x_2011 : vec2<f32> = (vec2<f32>(x_2009.x, x_2009.y) + vec2<f32>(1.0f, 1.0f));
        let x_2012 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2011.x, x_2011.y, x_2012.z, x_2012.w);
        let x_2014 : vec4<f32> = u_xlat8;
        let x_2016 : vec2<f32> = (vec2<f32>(x_2014.x, x_2014.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2017 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2016.x, x_2016.y, x_2017.z, x_2017.w);
        let x_2019 : vec4<f32> = u_xlat9;
        let x_2021 : vec2<f32> = (vec2<f32>(x_2019.x, x_2019.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2022 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2021.x, x_2021.y, x_2022.z, x_2022.w);
        let x_2024 : vec2<f32> = u_xlat61;
        let x_2025 : vec2<f32> = (x_2024 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2026 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2025.x, x_2025.y, x_2026.z, x_2026.w);
        let x_2028 : vec4<f32> = u_xlat7;
        let x_2030 : vec2<f32> = (vec2<f32>(x_2028.x, x_2028.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2031 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2030.x, x_2030.y, x_2031.z, x_2031.w);
        let x_2033 : vec4<f32> = u_xlat8;
        let x_2035 : vec2<f32> = (vec2<f32>(x_2033.y, x_2033.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2036 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2035.x, x_2035.y, x_2036.z, x_2036.w);
        let x_2039 : f32 = u_xlat9.x;
        u_xlat10.z = x_2039;
        let x_2042 : f32 = u_xlat7.x;
        u_xlat10.w = x_2042;
        let x_2045 : f32 = u_xlat12.x;
        u_xlat11.z = x_2045;
        let x_2048 : f32 = u_xlat59.x;
        u_xlat11.w = x_2048;
        let x_2050 : vec4<f32> = u_xlat10;
        let x_2052 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_2050.z, x_2050.w, x_2050.x, x_2050.z) + vec4<f32>(x_2052.z, x_2052.w, x_2052.x, x_2052.z));
        let x_2056 : f32 = u_xlat10.y;
        u_xlat9.z = x_2056;
        let x_2059 : f32 = u_xlat7.y;
        u_xlat9.w = x_2059;
        let x_2062 : f32 = u_xlat11.y;
        u_xlat12.z = x_2062;
        let x_2065 : f32 = u_xlat59.y;
        u_xlat12.w = x_2065;
        let x_2067 : vec4<f32> = u_xlat9;
        let x_2069 : vec4<f32> = u_xlat12;
        let x_2071 : vec3<f32> = (vec3<f32>(x_2067.z, x_2067.y, x_2067.w) + vec3<f32>(x_2069.z, x_2069.y, x_2069.w));
        let x_2072 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2071.x, x_2071.y, x_2071.z, x_2072.w);
        let x_2074 : vec4<f32> = u_xlat11;
        let x_2076 : vec4<f32> = u_xlat8;
        let x_2078 : vec3<f32> = (vec3<f32>(x_2074.x, x_2074.z, x_2074.w) / vec3<f32>(x_2076.z, x_2076.w, x_2076.y));
        let x_2079 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2078.x, x_2078.y, x_2078.z, x_2079.w);
        let x_2081 : vec4<f32> = u_xlat9;
        let x_2083 : vec3<f32> = (vec3<f32>(x_2081.x, x_2081.y, x_2081.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2084 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2083.x, x_2083.y, x_2083.z, x_2084.w);
        let x_2086 : vec4<f32> = u_xlat12;
        let x_2088 : vec4<f32> = u_xlat7;
        let x_2090 : vec3<f32> = (vec3<f32>(x_2086.z, x_2086.y, x_2086.w) / vec3<f32>(x_2088.x, x_2088.y, x_2088.z));
        let x_2091 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2090.x, x_2090.y, x_2090.z, x_2091.w);
        let x_2093 : vec4<f32> = u_xlat10;
        let x_2095 : vec3<f32> = (vec3<f32>(x_2093.x, x_2093.y, x_2093.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2096 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2095.x, x_2095.y, x_2095.z, x_2096.w);
        let x_2098 : vec4<f32> = u_xlat9;
        let x_2101 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2103 : vec3<f32> = (vec3<f32>(x_2098.y, x_2098.x, x_2098.z) * vec3<f32>(x_2101.x, x_2101.x, x_2101.x));
        let x_2104 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2103.x, x_2103.y, x_2103.z, x_2104.w);
        let x_2106 : vec4<f32> = u_xlat10;
        let x_2109 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2111 : vec3<f32> = (vec3<f32>(x_2106.x, x_2106.y, x_2106.z) * vec3<f32>(x_2109.y, x_2109.y, x_2109.y));
        let x_2112 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2111.x, x_2111.y, x_2111.z, x_2112.w);
        let x_2115 : f32 = u_xlat10.x;
        u_xlat9.w = x_2115;
        let x_2117 : vec2<f32> = u_xlat58;
        let x_2120 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2123 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2117.x, x_2117.y, x_2117.x, x_2117.y) * vec4<f32>(x_2120.x, x_2120.y, x_2120.x, x_2120.y)) + vec4<f32>(x_2123.y, x_2123.w, x_2123.x, x_2123.w));
        let x_2126 : vec2<f32> = u_xlat58;
        let x_2128 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2131 : vec4<f32> = u_xlat9;
        let x_2133 : vec2<f32> = ((x_2126 * vec2<f32>(x_2128.x, x_2128.y)) + vec2<f32>(x_2131.z, x_2131.w));
        let x_2134 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2133.x, x_2133.y, x_2134.z, x_2134.w);
        let x_2137 : f32 = u_xlat9.y;
        u_xlat10.w = x_2137;
        let x_2139 : vec4<f32> = u_xlat10;
        let x_2140 : vec2<f32> = vec2<f32>(x_2139.y, x_2139.z);
        let x_2141 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2141.x, x_2140.x, x_2141.z, x_2140.y);
        let x_2143 : vec2<f32> = u_xlat58;
        let x_2146 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2149 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_2143.x, x_2143.y, x_2143.x, x_2143.y) * vec4<f32>(x_2146.x, x_2146.y, x_2146.x, x_2146.y)) + vec4<f32>(x_2149.x, x_2149.y, x_2149.z, x_2149.y));
        let x_2152 : vec2<f32> = u_xlat58;
        let x_2155 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2158 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2152.x, x_2152.y, x_2152.x, x_2152.y) * vec4<f32>(x_2155.x, x_2155.y, x_2155.x, x_2155.y)) + vec4<f32>(x_2158.w, x_2158.y, x_2158.w, x_2158.z));
        let x_2161 : vec2<f32> = u_xlat58;
        let x_2164 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2167 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_2161.x, x_2161.y, x_2161.x, x_2161.y) * vec4<f32>(x_2164.x, x_2164.y, x_2164.x, x_2164.y)) + vec4<f32>(x_2167.x, x_2167.w, x_2167.z, x_2167.w));
        let x_2170 : vec4<f32> = u_xlat7;
        let x_2172 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_2170.x, x_2170.x, x_2170.x, x_2170.y) * vec4<f32>(x_2172.z, x_2172.w, x_2172.y, x_2172.z));
        let x_2175 : vec4<f32> = u_xlat7;
        let x_2177 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_2175.y, x_2175.y, x_2175.z, x_2175.z) * x_2177);
        let x_2180 : f32 = u_xlat7.z;
        let x_2182 : f32 = u_xlat8.y;
        u_xlat58.x = (x_2180 * x_2182);
        let x_2186 : vec4<f32> = u_xlat11;
        let x_2187 : vec2<f32> = vec2<f32>(x_2186.x, x_2186.y);
        let x_2189 : f32 = vs_INTERP3.z;
        txVec34 = vec3<f32>(x_2187.x, x_2187.y, x_2189);
        let x_2197 : vec3<f32> = txVec34;
        let x_2199 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2197.xy, x_2197.z);
        u_xlat84 = x_2199;
        let x_2201 : vec4<f32> = u_xlat11;
        let x_2202 : vec2<f32> = vec2<f32>(x_2201.z, x_2201.w);
        let x_2204 : f32 = vs_INTERP3.z;
        txVec35 = vec3<f32>(x_2202.x, x_2202.y, x_2204);
        let x_2211 : vec3<f32> = txVec35;
        let x_2213 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2211.xy, x_2211.z);
        u_xlat7.x = x_2213;
        let x_2216 : f32 = u_xlat7.x;
        let x_2218 : f32 = u_xlat14.y;
        u_xlat7.x = (x_2216 * x_2218);
        let x_2222 : f32 = u_xlat14.x;
        let x_2223 : f32 = u_xlat84;
        let x_2226 : f32 = u_xlat7.x;
        u_xlat84 = ((x_2222 * x_2223) + x_2226);
        let x_2229 : vec4<f32> = u_xlat12;
        let x_2230 : vec2<f32> = vec2<f32>(x_2229.x, x_2229.y);
        let x_2232 : f32 = vs_INTERP3.z;
        txVec36 = vec3<f32>(x_2230.x, x_2230.y, x_2232);
        let x_2239 : vec3<f32> = txVec36;
        let x_2241 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2239.xy, x_2239.z);
        u_xlat7.x = x_2241;
        let x_2244 : f32 = u_xlat14.z;
        let x_2246 : f32 = u_xlat7.x;
        let x_2248 : f32 = u_xlat84;
        u_xlat84 = ((x_2244 * x_2246) + x_2248);
        let x_2251 : vec4<f32> = u_xlat10;
        let x_2252 : vec2<f32> = vec2<f32>(x_2251.x, x_2251.y);
        let x_2254 : f32 = vs_INTERP3.z;
        txVec37 = vec3<f32>(x_2252.x, x_2252.y, x_2254);
        let x_2261 : vec3<f32> = txVec37;
        let x_2263 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2261.xy, x_2261.z);
        u_xlat7.x = x_2263;
        let x_2266 : f32 = u_xlat14.w;
        let x_2268 : f32 = u_xlat7.x;
        let x_2270 : f32 = u_xlat84;
        u_xlat84 = ((x_2266 * x_2268) + x_2270);
        let x_2273 : vec4<f32> = u_xlat13;
        let x_2274 : vec2<f32> = vec2<f32>(x_2273.x, x_2273.y);
        let x_2276 : f32 = vs_INTERP3.z;
        txVec38 = vec3<f32>(x_2274.x, x_2274.y, x_2276);
        let x_2283 : vec3<f32> = txVec38;
        let x_2285 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2283.xy, x_2283.z);
        u_xlat7.x = x_2285;
        let x_2288 : f32 = u_xlat15.x;
        let x_2290 : f32 = u_xlat7.x;
        let x_2292 : f32 = u_xlat84;
        u_xlat84 = ((x_2288 * x_2290) + x_2292);
        let x_2295 : vec4<f32> = u_xlat13;
        let x_2296 : vec2<f32> = vec2<f32>(x_2295.z, x_2295.w);
        let x_2298 : f32 = vs_INTERP3.z;
        txVec39 = vec3<f32>(x_2296.x, x_2296.y, x_2298);
        let x_2305 : vec3<f32> = txVec39;
        let x_2307 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2305.xy, x_2305.z);
        u_xlat7.x = x_2307;
        let x_2310 : f32 = u_xlat15.y;
        let x_2312 : f32 = u_xlat7.x;
        let x_2314 : f32 = u_xlat84;
        u_xlat84 = ((x_2310 * x_2312) + x_2314);
        let x_2317 : vec4<f32> = u_xlat10;
        let x_2318 : vec2<f32> = vec2<f32>(x_2317.z, x_2317.w);
        let x_2320 : f32 = vs_INTERP3.z;
        txVec40 = vec3<f32>(x_2318.x, x_2318.y, x_2320);
        let x_2327 : vec3<f32> = txVec40;
        let x_2329 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2327.xy, x_2327.z);
        u_xlat7.x = x_2329;
        let x_2332 : f32 = u_xlat15.z;
        let x_2334 : f32 = u_xlat7.x;
        let x_2336 : f32 = u_xlat84;
        u_xlat84 = ((x_2332 * x_2334) + x_2336);
        let x_2339 : vec4<f32> = u_xlat9;
        let x_2340 : vec2<f32> = vec2<f32>(x_2339.x, x_2339.y);
        let x_2342 : f32 = vs_INTERP3.z;
        txVec41 = vec3<f32>(x_2340.x, x_2340.y, x_2342);
        let x_2349 : vec3<f32> = txVec41;
        let x_2351 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2349.xy, x_2349.z);
        u_xlat7.x = x_2351;
        let x_2354 : f32 = u_xlat15.w;
        let x_2356 : f32 = u_xlat7.x;
        let x_2358 : f32 = u_xlat84;
        u_xlat84 = ((x_2354 * x_2356) + x_2358);
        let x_2361 : vec4<f32> = u_xlat9;
        let x_2362 : vec2<f32> = vec2<f32>(x_2361.z, x_2361.w);
        let x_2364 : f32 = vs_INTERP3.z;
        txVec42 = vec3<f32>(x_2362.x, x_2362.y, x_2364);
        let x_2371 : vec3<f32> = txVec42;
        let x_2373 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2371.xy, x_2371.z);
        u_xlat7.x = x_2373;
        let x_2376 : f32 = u_xlat58.x;
        let x_2378 : f32 = u_xlat7.x;
        let x_2380 : f32 = u_xlat84;
        u_xlat0.x = ((x_2376 * x_2378) + x_2380);
      } else {
        let x_2384 : vec4<f32> = vs_INTERP3;
        let x_2387 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_2384.x, x_2384.y) * vec2<f32>(x_2387.z, x_2387.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2391 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_2391);
        let x_2393 : vec4<f32> = vs_INTERP3;
        let x_2396 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2399 : vec2<f32> = u_xlat58;
        let x_2401 : vec2<f32> = ((vec2<f32>(x_2393.x, x_2393.y) * vec2<f32>(x_2396.z, x_2396.w)) + -(x_2399));
        let x_2402 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2401.x, x_2401.y, x_2402.z, x_2402.w);
        let x_2404 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2404.x, x_2404.x, x_2404.y, x_2404.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2407 : vec4<f32> = u_xlat8;
        let x_2409 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2407.x, x_2407.x, x_2407.z, x_2407.z) * vec4<f32>(x_2409.x, x_2409.x, x_2409.z, x_2409.z));
        let x_2412 : vec4<f32> = u_xlat9;
        let x_2414 : vec2<f32> = (vec2<f32>(x_2412.y, x_2412.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2415 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2415.x, x_2414.x, x_2415.z, x_2414.y);
        let x_2417 : vec4<f32> = u_xlat9;
        let x_2420 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_2417.x, x_2417.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2420.x, x_2420.y)));
        let x_2424 : vec4<f32> = u_xlat7;
        let x_2427 : vec2<f32> = (-(vec2<f32>(x_2424.x, x_2424.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2428 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2427.x, x_2428.y, x_2427.y, x_2428.w);
        let x_2430 : vec4<f32> = u_xlat7;
        let x_2432 : vec2<f32> = min(vec2<f32>(x_2430.x, x_2430.y), vec2<f32>(0.0f, 0.0f));
        let x_2433 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2432.x, x_2432.y, x_2433.z, x_2433.w);
        let x_2435 : vec4<f32> = u_xlat9;
        let x_2438 : vec4<f32> = u_xlat9;
        let x_2441 : vec4<f32> = u_xlat8;
        let x_2443 : vec2<f32> = ((-(vec2<f32>(x_2435.x, x_2435.y)) * vec2<f32>(x_2438.x, x_2438.y)) + vec2<f32>(x_2441.x, x_2441.z));
        let x_2444 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2443.x, x_2444.y, x_2443.y, x_2444.w);
        let x_2446 : vec4<f32> = u_xlat7;
        let x_2448 : vec2<f32> = max(vec2<f32>(x_2446.x, x_2446.y), vec2<f32>(0.0f, 0.0f));
        let x_2449 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2448.x, x_2448.y, x_2449.z, x_2449.w);
        let x_2451 : vec4<f32> = u_xlat9;
        let x_2454 : vec4<f32> = u_xlat9;
        let x_2457 : vec4<f32> = u_xlat8;
        let x_2459 : vec2<f32> = ((-(vec2<f32>(x_2451.x, x_2451.y)) * vec2<f32>(x_2454.x, x_2454.y)) + vec2<f32>(x_2457.y, x_2457.w));
        let x_2460 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2460.x, x_2459.x, x_2460.z, x_2459.y);
        let x_2462 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2462 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2465 : f32 = u_xlat8.y;
        u_xlat9.z = (x_2465 * 0.08163200318813323975f);
        let x_2468 : vec2<f32> = u_xlat59;
        let x_2470 : vec2<f32> = (vec2<f32>(x_2468.y, x_2468.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2471 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2470.x, x_2470.y, x_2471.z, x_2471.w);
        let x_2473 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_2473.x, x_2473.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2477 : f32 = u_xlat8.w;
        u_xlat11.z = (x_2477 * 0.08163200318813323975f);
        let x_2481 : f32 = u_xlat11.y;
        u_xlat9.x = x_2481;
        let x_2483 : vec4<f32> = u_xlat7;
        let x_2486 : vec2<f32> = ((vec2<f32>(x_2483.x, x_2483.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2487 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2487.x, x_2486.x, x_2487.z, x_2486.y);
        let x_2489 : vec4<f32> = u_xlat7;
        let x_2492 : vec2<f32> = ((vec2<f32>(x_2489.x, x_2489.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2493 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2492.x, x_2493.y, x_2492.y, x_2493.w);
        let x_2496 : f32 = u_xlat59.x;
        u_xlat8.y = x_2496;
        let x_2499 : f32 = u_xlat10.y;
        u_xlat8.w = x_2499;
        let x_2501 : vec4<f32> = u_xlat8;
        let x_2502 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2501 + x_2502);
        let x_2504 : vec4<f32> = u_xlat7;
        let x_2507 : vec2<f32> = ((vec2<f32>(x_2504.y, x_2504.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2508 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2508.x, x_2507.x, x_2508.z, x_2507.y);
        let x_2510 : vec4<f32> = u_xlat7;
        let x_2513 : vec2<f32> = ((vec2<f32>(x_2510.y, x_2510.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2514 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2513.x, x_2514.y, x_2513.y, x_2514.w);
        let x_2517 : f32 = u_xlat59.y;
        u_xlat10.y = x_2517;
        let x_2519 : vec4<f32> = u_xlat10;
        let x_2520 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_2519 + x_2520);
        let x_2522 : vec4<f32> = u_xlat8;
        let x_2523 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_2522 / x_2523);
        let x_2525 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2525 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2527 : vec4<f32> = u_xlat10;
        let x_2528 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_2527 / x_2528);
        let x_2530 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2530 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2532 : vec4<f32> = u_xlat8;
        let x_2535 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_2532.w, x_2532.x, x_2532.y, x_2532.z) * vec4<f32>(x_2535.x, x_2535.x, x_2535.x, x_2535.x));
        let x_2538 : vec4<f32> = u_xlat10;
        let x_2541 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_2538.x, x_2538.w, x_2538.y, x_2538.z) * vec4<f32>(x_2541.y, x_2541.y, x_2541.y, x_2541.y));
        let x_2544 : vec4<f32> = u_xlat8;
        let x_2545 : vec3<f32> = vec3<f32>(x_2544.y, x_2544.z, x_2544.w);
        let x_2546 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2545.x, x_2546.y, x_2545.y, x_2545.z);
        let x_2549 : f32 = u_xlat10.x;
        u_xlat11.y = x_2549;
        let x_2551 : vec2<f32> = u_xlat58;
        let x_2554 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2557 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2551.x, x_2551.y, x_2551.x, x_2551.y) * vec4<f32>(x_2554.x, x_2554.y, x_2554.x, x_2554.y)) + vec4<f32>(x_2557.x, x_2557.y, x_2557.z, x_2557.y));
        let x_2560 : vec2<f32> = u_xlat58;
        let x_2562 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2565 : vec4<f32> = u_xlat11;
        let x_2567 : vec2<f32> = ((x_2560 * vec2<f32>(x_2562.x, x_2562.y)) + vec2<f32>(x_2565.w, x_2565.y));
        let x_2568 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2567.x, x_2567.y, x_2568.z, x_2568.w);
        let x_2571 : f32 = u_xlat11.y;
        u_xlat8.y = x_2571;
        let x_2574 : f32 = u_xlat10.z;
        u_xlat11.y = x_2574;
        let x_2576 : vec2<f32> = u_xlat58;
        let x_2579 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2582 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_2576.x, x_2576.y, x_2576.x, x_2576.y) * vec4<f32>(x_2579.x, x_2579.y, x_2579.x, x_2579.y)) + vec4<f32>(x_2582.x, x_2582.y, x_2582.z, x_2582.y));
        let x_2586 : vec2<f32> = u_xlat58;
        let x_2588 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2591 : vec4<f32> = u_xlat11;
        u_xlat65 = ((x_2586 * vec2<f32>(x_2588.x, x_2588.y)) + vec2<f32>(x_2591.w, x_2591.y));
        let x_2595 : f32 = u_xlat11.y;
        u_xlat8.z = x_2595;
        let x_2597 : vec2<f32> = u_xlat58;
        let x_2600 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2603 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_2597.x, x_2597.y, x_2597.x, x_2597.y) * vec4<f32>(x_2600.x, x_2600.y, x_2600.x, x_2600.y)) + vec4<f32>(x_2603.x, x_2603.y, x_2603.x, x_2603.z));
        let x_2607 : f32 = u_xlat10.w;
        u_xlat11.y = x_2607;
        let x_2609 : vec2<f32> = u_xlat58;
        let x_2612 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2615 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_2609.x, x_2609.y, x_2609.x, x_2609.y) * vec4<f32>(x_2612.x, x_2612.y, x_2612.x, x_2612.y)) + vec4<f32>(x_2615.x, x_2615.y, x_2615.z, x_2615.y));
        let x_2618 : vec2<f32> = u_xlat58;
        let x_2620 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2623 : vec4<f32> = u_xlat11;
        let x_2625 : vec2<f32> = ((x_2618 * vec2<f32>(x_2620.x, x_2620.y)) + vec2<f32>(x_2623.w, x_2623.y));
        let x_2626 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_2625.x, x_2625.y, x_2626.z);
        let x_2629 : f32 = u_xlat11.y;
        u_xlat8.w = x_2629;
        let x_2631 : vec2<f32> = u_xlat58;
        let x_2633 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2636 : vec4<f32> = u_xlat8;
        let x_2638 : vec2<f32> = ((x_2631 * vec2<f32>(x_2633.x, x_2633.y)) + vec2<f32>(x_2636.x, x_2636.w));
        let x_2639 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_2638.x, x_2638.y, x_2639.z, x_2639.w);
        let x_2641 : vec4<f32> = u_xlat11;
        let x_2642 : vec3<f32> = vec3<f32>(x_2641.x, x_2641.z, x_2641.w);
        let x_2643 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2642.x, x_2643.y, x_2642.y, x_2642.z);
        let x_2645 : vec2<f32> = u_xlat58;
        let x_2648 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2651 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_2645.x, x_2645.y, x_2645.x, x_2645.y) * vec4<f32>(x_2648.x, x_2648.y, x_2648.x, x_2648.y)) + vec4<f32>(x_2651.x, x_2651.y, x_2651.z, x_2651.y));
        let x_2655 : vec2<f32> = u_xlat58;
        let x_2657 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2660 : vec4<f32> = u_xlat10;
        u_xlat62 = ((x_2655 * vec2<f32>(x_2657.x, x_2657.y)) + vec2<f32>(x_2660.w, x_2660.y));
        let x_2664 : f32 = u_xlat8.x;
        u_xlat10.x = x_2664;
        let x_2666 : vec2<f32> = u_xlat58;
        let x_2668 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2671 : vec4<f32> = u_xlat10;
        u_xlat58 = ((x_2666 * vec2<f32>(x_2668.x, x_2668.y)) + vec2<f32>(x_2671.x, x_2671.y));
        let x_2674 : vec4<f32> = u_xlat7;
        let x_2676 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_2674.x, x_2674.x, x_2674.x, x_2674.x) * x_2676);
        let x_2678 : vec4<f32> = u_xlat7;
        let x_2680 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_2678.y, x_2678.y, x_2678.y, x_2678.y) * x_2680);
        let x_2683 : vec4<f32> = u_xlat7;
        let x_2685 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_2683.z, x_2683.z, x_2683.z, x_2683.z) * x_2685);
        let x_2687 : vec4<f32> = u_xlat7;
        let x_2689 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_2687.w, x_2687.w, x_2687.w, x_2687.w) * x_2689);
        let x_2692 : vec4<f32> = u_xlat12;
        let x_2693 : vec2<f32> = vec2<f32>(x_2692.x, x_2692.y);
        let x_2695 : f32 = vs_INTERP3.z;
        txVec43 = vec3<f32>(x_2693.x, x_2693.y, x_2695);
        let x_2702 : vec3<f32> = txVec43;
        let x_2704 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2702.xy, x_2702.z);
        u_xlat8.x = x_2704;
        let x_2707 : vec4<f32> = u_xlat12;
        let x_2708 : vec2<f32> = vec2<f32>(x_2707.z, x_2707.w);
        let x_2710 : f32 = vs_INTERP3.z;
        txVec44 = vec3<f32>(x_2708.x, x_2708.y, x_2710);
        let x_2718 : vec3<f32> = txVec44;
        let x_2720 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2718.xy, x_2718.z);
        u_xlat86 = x_2720;
        let x_2721 : f32 = u_xlat86;
        let x_2723 : f32 = u_xlat18.y;
        u_xlat86 = (x_2721 * x_2723);
        let x_2726 : f32 = u_xlat18.x;
        let x_2728 : f32 = u_xlat8.x;
        let x_2730 : f32 = u_xlat86;
        u_xlat8.x = ((x_2726 * x_2728) + x_2730);
        let x_2734 : vec4<f32> = u_xlat13;
        let x_2735 : vec2<f32> = vec2<f32>(x_2734.x, x_2734.y);
        let x_2737 : f32 = vs_INTERP3.z;
        txVec45 = vec3<f32>(x_2735.x, x_2735.y, x_2737);
        let x_2744 : vec3<f32> = txVec45;
        let x_2746 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2744.xy, x_2744.z);
        u_xlat86 = x_2746;
        let x_2748 : f32 = u_xlat18.z;
        let x_2749 : f32 = u_xlat86;
        let x_2752 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2748 * x_2749) + x_2752);
        let x_2756 : vec4<f32> = u_xlat15;
        let x_2757 : vec2<f32> = vec2<f32>(x_2756.x, x_2756.y);
        let x_2759 : f32 = vs_INTERP3.z;
        txVec46 = vec3<f32>(x_2757.x, x_2757.y, x_2759);
        let x_2766 : vec3<f32> = txVec46;
        let x_2768 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2766.xy, x_2766.z);
        u_xlat86 = x_2768;
        let x_2770 : f32 = u_xlat18.w;
        let x_2771 : f32 = u_xlat86;
        let x_2774 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2770 * x_2771) + x_2774);
        let x_2778 : vec4<f32> = u_xlat14;
        let x_2779 : vec2<f32> = vec2<f32>(x_2778.x, x_2778.y);
        let x_2781 : f32 = vs_INTERP3.z;
        txVec47 = vec3<f32>(x_2779.x, x_2779.y, x_2781);
        let x_2788 : vec3<f32> = txVec47;
        let x_2790 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2788.xy, x_2788.z);
        u_xlat86 = x_2790;
        let x_2792 : f32 = u_xlat19.x;
        let x_2793 : f32 = u_xlat86;
        let x_2796 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2792 * x_2793) + x_2796);
        let x_2800 : vec4<f32> = u_xlat14;
        let x_2801 : vec2<f32> = vec2<f32>(x_2800.z, x_2800.w);
        let x_2803 : f32 = vs_INTERP3.z;
        txVec48 = vec3<f32>(x_2801.x, x_2801.y, x_2803);
        let x_2810 : vec3<f32> = txVec48;
        let x_2812 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2810.xy, x_2810.z);
        u_xlat86 = x_2812;
        let x_2814 : f32 = u_xlat19.y;
        let x_2815 : f32 = u_xlat86;
        let x_2818 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2814 * x_2815) + x_2818);
        let x_2822 : vec2<f32> = u_xlat65;
        let x_2824 : f32 = vs_INTERP3.z;
        txVec49 = vec3<f32>(x_2822.x, x_2822.y, x_2824);
        let x_2831 : vec3<f32> = txVec49;
        let x_2833 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2831.xy, x_2831.z);
        u_xlat86 = x_2833;
        let x_2835 : f32 = u_xlat19.z;
        let x_2836 : f32 = u_xlat86;
        let x_2839 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2835 * x_2836) + x_2839);
        let x_2843 : vec4<f32> = u_xlat15;
        let x_2844 : vec2<f32> = vec2<f32>(x_2843.z, x_2843.w);
        let x_2846 : f32 = vs_INTERP3.z;
        txVec50 = vec3<f32>(x_2844.x, x_2844.y, x_2846);
        let x_2853 : vec3<f32> = txVec50;
        let x_2855 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2853.xy, x_2853.z);
        u_xlat86 = x_2855;
        let x_2857 : f32 = u_xlat19.w;
        let x_2858 : f32 = u_xlat86;
        let x_2861 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2857 * x_2858) + x_2861);
        let x_2865 : vec4<f32> = u_xlat16;
        let x_2866 : vec2<f32> = vec2<f32>(x_2865.x, x_2865.y);
        let x_2868 : f32 = vs_INTERP3.z;
        txVec51 = vec3<f32>(x_2866.x, x_2866.y, x_2868);
        let x_2875 : vec3<f32> = txVec51;
        let x_2877 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2875.xy, x_2875.z);
        u_xlat86 = x_2877;
        let x_2879 : f32 = u_xlat20.x;
        let x_2880 : f32 = u_xlat86;
        let x_2883 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2879 * x_2880) + x_2883);
        let x_2887 : vec4<f32> = u_xlat16;
        let x_2888 : vec2<f32> = vec2<f32>(x_2887.z, x_2887.w);
        let x_2890 : f32 = vs_INTERP3.z;
        txVec52 = vec3<f32>(x_2888.x, x_2888.y, x_2890);
        let x_2897 : vec3<f32> = txVec52;
        let x_2899 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2897.xy, x_2897.z);
        u_xlat86 = x_2899;
        let x_2901 : f32 = u_xlat20.y;
        let x_2902 : f32 = u_xlat86;
        let x_2905 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2901 * x_2902) + x_2905);
        let x_2909 : vec3<f32> = u_xlat34;
        let x_2910 : vec2<f32> = vec2<f32>(x_2909.x, x_2909.y);
        let x_2912 : f32 = vs_INTERP3.z;
        txVec53 = vec3<f32>(x_2910.x, x_2910.y, x_2912);
        let x_2919 : vec3<f32> = txVec53;
        let x_2921 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2919.xy, x_2919.z);
        u_xlat34.x = x_2921;
        let x_2924 : f32 = u_xlat20.z;
        let x_2926 : f32 = u_xlat34.x;
        let x_2929 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2924 * x_2926) + x_2929);
        let x_2933 : vec4<f32> = u_xlat17;
        let x_2934 : vec2<f32> = vec2<f32>(x_2933.x, x_2933.y);
        let x_2936 : f32 = vs_INTERP3.z;
        txVec54 = vec3<f32>(x_2934.x, x_2934.y, x_2936);
        let x_2943 : vec3<f32> = txVec54;
        let x_2945 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2943.xy, x_2943.z);
        u_xlat34.x = x_2945;
        let x_2948 : f32 = u_xlat20.w;
        let x_2950 : f32 = u_xlat34.x;
        let x_2953 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2948 * x_2950) + x_2953);
        let x_2957 : vec4<f32> = u_xlat11;
        let x_2958 : vec2<f32> = vec2<f32>(x_2957.x, x_2957.y);
        let x_2960 : f32 = vs_INTERP3.z;
        txVec55 = vec3<f32>(x_2958.x, x_2958.y, x_2960);
        let x_2967 : vec3<f32> = txVec55;
        let x_2969 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2967.xy, x_2967.z);
        u_xlat34.x = x_2969;
        let x_2972 : f32 = u_xlat7.x;
        let x_2974 : f32 = u_xlat34.x;
        let x_2977 : f32 = u_xlat8.x;
        u_xlat7.x = ((x_2972 * x_2974) + x_2977);
        let x_2981 : vec4<f32> = u_xlat11;
        let x_2982 : vec2<f32> = vec2<f32>(x_2981.z, x_2981.w);
        let x_2984 : f32 = vs_INTERP3.z;
        txVec56 = vec3<f32>(x_2982.x, x_2982.y, x_2984);
        let x_2991 : vec3<f32> = txVec56;
        let x_2993 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2991.xy, x_2991.z);
        u_xlat8.x = x_2993;
        let x_2996 : f32 = u_xlat7.y;
        let x_2998 : f32 = u_xlat8.x;
        let x_3001 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_2996 * x_2998) + x_3001);
        let x_3005 : vec2<f32> = u_xlat62;
        let x_3007 : f32 = vs_INTERP3.z;
        txVec57 = vec3<f32>(x_3005.x, x_3005.y, x_3007);
        let x_3014 : vec3<f32> = txVec57;
        let x_3016 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3014.xy, x_3014.z);
        u_xlat33.x = x_3016;
        let x_3019 : f32 = u_xlat7.z;
        let x_3021 : f32 = u_xlat33.x;
        let x_3024 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_3019 * x_3021) + x_3024);
        let x_3028 : vec2<f32> = u_xlat58;
        let x_3030 : f32 = vs_INTERP3.z;
        txVec58 = vec3<f32>(x_3028.x, x_3028.y, x_3030);
        let x_3037 : vec3<f32> = txVec58;
        let x_3039 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3037.xy, x_3037.z);
        u_xlat58.x = x_3039;
        let x_3042 : f32 = u_xlat7.w;
        let x_3044 : f32 = u_xlat58.x;
        let x_3047 : f32 = u_xlat7.x;
        u_xlat0.x = ((x_3042 * x_3044) + x_3047);
      }
    }
  } else {
    let x_3052 : vec4<f32> = vs_INTERP3;
    let x_3053 : vec2<f32> = vec2<f32>(x_3052.x, x_3052.y);
    let x_3055 : f32 = vs_INTERP3.z;
    txVec59 = vec3<f32>(x_3053.x, x_3053.y, x_3055);
    let x_3062 : vec3<f32> = txVec59;
    let x_3064 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3062.xy, x_3062.z);
    u_xlat0.x = x_3064;
  }
  let x_3067 : f32 = u_xlat0.x;
  let x_3069 : f32 = x_241.x_MainLightShadowParams.x;
  let x_3072 : f32 = u_xlat2.x;
  u_xlat0.x = ((x_3067 * x_3069) + x_3072);
  let x_3077 : f32 = vs_INTERP3.z;
  u_xlatb2 = (0.0f >= x_3077);
  let x_3080 : f32 = vs_INTERP3.z;
  u_xlatb58 = (x_3080 >= 1.0f);
  let x_3082 : bool = u_xlatb2;
  let x_3083 : bool = u_xlatb58;
  u_xlatb2 = (x_3082 | x_3083);
  let x_3085 : bool = u_xlatb2;
  if (x_3085) {
    x_3086 = 1.0f;
  } else {
    let x_3091 : f32 = u_xlat0.x;
    x_3086 = x_3091;
  }
  let x_3092 : f32 = x_3086;
  u_xlat0.x = x_3092;
  let x_3094 : vec3<f32> = vs_INTERP8;
  let x_3096 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_3098 : vec3<f32> = (x_3094 + -(x_3096));
  let x_3099 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3098.x, x_3098.y, x_3098.z, x_3099.w);
  let x_3101 : vec4<f32> = u_xlat7;
  let x_3103 : vec4<f32> = u_xlat7;
  u_xlat2.x = dot(vec3<f32>(x_3101.x, x_3101.y, x_3101.z), vec3<f32>(x_3103.x, x_3103.y, x_3103.z));
  let x_3108 : f32 = u_xlat2.x;
  let x_3110 : f32 = x_241.x_MainLightShadowParams.z;
  let x_3113 : f32 = x_241.x_MainLightShadowParams.w;
  u_xlat58.x = ((x_3108 * x_3110) + x_3113);
  let x_3117 : f32 = u_xlat58.x;
  u_xlat58.x = clamp(x_3117, 0.0f, 1.0f);
  let x_3121 : f32 = u_xlat0.x;
  u_xlat84 = (-(x_3121) + 1.0f);
  let x_3125 : f32 = u_xlat58.x;
  let x_3126 : f32 = u_xlat84;
  let x_3129 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_3125 * x_3126) + x_3129);
  let x_3132 : vec4<f32> = u_xlat3;
  let x_3135 : vec3<f32> = u_xlat26;
  u_xlat58.x = dot(-(vec3<f32>(x_3132.x, x_3132.y, x_3132.z)), x_3135);
  let x_3139 : f32 = u_xlat58.x;
  let x_3141 : f32 = u_xlat58.x;
  u_xlat58.x = (x_3139 + x_3141);
  let x_3144 : vec3<f32> = u_xlat26;
  let x_3145 : vec2<f32> = u_xlat58;
  let x_3149 : vec4<f32> = u_xlat3;
  let x_3152 : vec3<f32> = ((x_3144 * -(vec3<f32>(x_3145.x, x_3145.x, x_3145.x))) + -(vec3<f32>(x_3149.x, x_3149.y, x_3149.z)));
  let x_3153 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3152.x, x_3152.y, x_3152.z, x_3153.w);
  let x_3155 : vec3<f32> = u_xlat26;
  let x_3156 : vec4<f32> = u_xlat3;
  u_xlat58.x = dot(x_3155, vec3<f32>(x_3156.x, x_3156.y, x_3156.z));
  let x_3161 : f32 = u_xlat58.x;
  u_xlat58.x = clamp(x_3161, 0.0f, 1.0f);
  let x_3165 : f32 = u_xlat58.x;
  u_xlat58.x = (-(x_3165) + 1.0f);
  let x_3170 : f32 = u_xlat58.x;
  let x_3172 : f32 = u_xlat58.x;
  u_xlat58.x = (x_3170 * x_3172);
  let x_3176 : f32 = u_xlat58.x;
  let x_3178 : f32 = u_xlat58.x;
  u_xlat58.x = (x_3176 * x_3178);
  let x_3181 : f32 = u_xlat80;
  u_xlat84 = ((-(x_3181) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3187 : f32 = u_xlat80;
  let x_3188 : f32 = u_xlat84;
  u_xlat80 = (x_3187 * x_3188);
  let x_3190 : f32 = u_xlat80;
  u_xlat80 = (x_3190 * 6.0f);
  let x_3201 : vec4<f32> = u_xlat7;
  let x_3203 : f32 = u_xlat80;
  let x_3204 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_3201.x, x_3201.y, x_3201.z), x_3203);
  u_xlat7 = x_3204;
  let x_3206 : f32 = u_xlat7.w;
  u_xlat80 = (x_3206 + -1.0f);
  let x_3209 : f32 = x_48.unity_SpecCube0_HDR.w;
  let x_3210 : f32 = u_xlat80;
  u_xlat80 = ((x_3209 * x_3210) + 1.0f);
  let x_3213 : f32 = u_xlat80;
  u_xlat80 = max(x_3213, 0.0f);
  let x_3215 : f32 = u_xlat80;
  u_xlat80 = log2(x_3215);
  let x_3217 : f32 = u_xlat80;
  let x_3219 : f32 = x_48.unity_SpecCube0_HDR.y;
  u_xlat80 = (x_3217 * x_3219);
  let x_3221 : f32 = u_xlat80;
  u_xlat80 = exp2(x_3221);
  let x_3223 : f32 = u_xlat80;
  let x_3225 : f32 = x_48.unity_SpecCube0_HDR.x;
  u_xlat80 = (x_3223 * x_3225);
  let x_3227 : vec4<f32> = u_xlat7;
  let x_3229 : f32 = u_xlat80;
  let x_3231 : vec3<f32> = (vec3<f32>(x_3227.x, x_3227.y, x_3227.z) * vec3<f32>(x_3229, x_3229, x_3229));
  let x_3232 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3231.x, x_3231.y, x_3231.z, x_3232.w);
  let x_3234 : f32 = u_xlat81;
  let x_3236 : f32 = u_xlat81;
  let x_3240 : vec2<f32> = ((vec2<f32>(x_3234, x_3234) * vec2<f32>(x_3236, x_3236)) + vec2<f32>(-1.0f, 1.0f));
  let x_3241 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3240.x, x_3240.y, x_3241.z, x_3241.w);
  let x_3244 : f32 = u_xlat8.y;
  u_xlat80 = (1.0f / x_3244);
  let x_3246 : f32 = u_xlat83;
  u_xlat81 = (x_3246 + -0.03999999910593032837f);
  let x_3250 : f32 = u_xlat58.x;
  let x_3251 : f32 = u_xlat81;
  u_xlat81 = ((x_3250 * x_3251) + 0.03999999910593032837f);
  let x_3255 : f32 = u_xlat80;
  let x_3256 : f32 = u_xlat81;
  u_xlat80 = (x_3255 * x_3256);
  let x_3258 : f32 = u_xlat80;
  let x_3260 : vec4<f32> = u_xlat7;
  let x_3262 : vec3<f32> = (vec3<f32>(x_3258, x_3258, x_3258) * vec3<f32>(x_3260.x, x_3260.y, x_3260.z));
  let x_3263 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3262.x, x_3262.y, x_3262.z, x_3263.w);
  let x_3265 : vec4<f32> = u_xlat4;
  let x_3267 : vec3<f32> = u_xlat5;
  let x_3269 : vec4<f32> = u_xlat7;
  let x_3271 : vec3<f32> = ((vec3<f32>(x_3265.x, x_3265.y, x_3265.z) * x_3267) + vec3<f32>(x_3269.x, x_3269.y, x_3269.z));
  let x_3272 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_3271.x, x_3271.y, x_3271.z, x_3272.w);
  let x_3275 : f32 = u_xlat0.x;
  let x_3277 : f32 = x_48.unity_LightData.z;
  u_xlat0.x = (x_3275 * x_3277);
  let x_3280 : vec3<f32> = u_xlat26;
  let x_3282 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat80 = dot(x_3280, vec3<f32>(x_3282.x, x_3282.y, x_3282.z));
  let x_3285 : f32 = u_xlat80;
  u_xlat80 = clamp(x_3285, 0.0f, 1.0f);
  let x_3288 : f32 = u_xlat0.x;
  let x_3289 : f32 = u_xlat80;
  u_xlat0.x = (x_3288 * x_3289);
  let x_3292 : vec3<f32> = u_xlat0;
  let x_3295 : vec4<f32> = x_126.x_MainLightColor;
  let x_3297 : vec3<f32> = (vec3<f32>(x_3292.x, x_3292.x, x_3292.x) * vec3<f32>(x_3295.x, x_3295.y, x_3295.z));
  let x_3298 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3297.x, x_3297.y, x_3297.z, x_3298.w);
  let x_3300 : vec4<f32> = u_xlat3;
  let x_3303 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat34 = (vec3<f32>(x_3300.x, x_3300.y, x_3300.z) + vec3<f32>(x_3303.x, x_3303.y, x_3303.z));
  let x_3306 : vec3<f32> = u_xlat34;
  let x_3307 : vec3<f32> = u_xlat34;
  u_xlat0.x = dot(x_3306, x_3307);
  let x_3311 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_3311, 1.17549435e-38f);
  let x_3315 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_3315);
  let x_3318 : vec3<f32> = u_xlat0;
  let x_3320 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_3318.x, x_3318.x, x_3318.x) * x_3320);
  let x_3322 : vec3<f32> = u_xlat26;
  let x_3323 : vec3<f32> = u_xlat34;
  u_xlat0.x = dot(x_3322, x_3323);
  let x_3327 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_3327, 0.0f, 1.0f);
  let x_3331 : vec4<f32> = x_126.x_MainLightPosition;
  let x_3333 : vec3<f32> = u_xlat34;
  u_xlat80 = dot(vec3<f32>(x_3331.x, x_3331.y, x_3331.z), x_3333);
  let x_3335 : f32 = u_xlat80;
  u_xlat80 = clamp(x_3335, 0.0f, 1.0f);
  let x_3338 : f32 = u_xlat0.x;
  let x_3340 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3338 * x_3340);
  let x_3344 : f32 = u_xlat0.x;
  let x_3346 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_3344 * x_3346) + 1.00001001358032226562f);
  let x_3351 : f32 = u_xlat80;
  let x_3352 : f32 = u_xlat80;
  u_xlat80 = (x_3351 * x_3352);
  let x_3355 : f32 = u_xlat0.x;
  let x_3357 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3355 * x_3357);
  let x_3360 : f32 = u_xlat80;
  u_xlat80 = max(x_3360, 0.10000000149011611938f);
  let x_3364 : f32 = u_xlat0.x;
  let x_3365 : f32 = u_xlat80;
  u_xlat0.x = (x_3364 * x_3365);
  let x_3369 : f32 = u_xlat6.x;
  let x_3371 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3369 * x_3371);
  let x_3374 : f32 = u_xlat82;
  let x_3376 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3374 / x_3376);
  let x_3379 : vec3<f32> = u_xlat0;
  let x_3383 : vec3<f32> = u_xlat5;
  u_xlat34 = ((vec3<f32>(x_3379.x, x_3379.x, x_3379.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3383);
  let x_3385 : vec4<f32> = u_xlat7;
  let x_3387 : vec3<f32> = u_xlat34;
  let x_3388 : vec3<f32> = (vec3<f32>(x_3385.x, x_3385.y, x_3385.z) * x_3387);
  let x_3389 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3388.x, x_3388.y, x_3388.z, x_3389.w);
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
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3428 : u32 = u_xlatu_loop_1;
    let x_3429 : u32 = u_xlatu0;
    if ((x_3428 < x_3429)) {
    } else {
      break;
    }
    let x_3432 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_3432 >> 2u);
    let x_3436 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_3436 & 3u));
    let x_3439 : u32 = u_xlatu81;
    let x_3442 : vec4<f32> = x_48.unity_LightIndices[bitcast<i32>(x_3439)];
    let x_3452 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3457 : vec4<u32> = indexable[x_3452];
    u_xlat81 = dot(x_3442, bitcast<vec4<f32>>(x_3457));
    let x_3461 : f32 = u_xlat81;
    u_xlati81 = i32(x_3461);
    let x_3463 : vec3<f32> = vs_INTERP8;
    let x_3474 : i32 = u_xlati81;
    let x_3476 : vec4<f32> = x_3473.x_AdditionalLightsPosition[x_3474];
    let x_3479 : i32 = u_xlati81;
    let x_3481 : vec4<f32> = x_3473.x_AdditionalLightsPosition[x_3479];
    let x_3483 : vec3<f32> = ((-(x_3463) * vec3<f32>(x_3476.w, x_3476.w, x_3476.w)) + vec3<f32>(x_3481.x, x_3481.y, x_3481.z));
    let x_3484 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3483.x, x_3483.y, x_3483.z, x_3484.w);
    let x_3486 : vec4<f32> = u_xlat9;
    let x_3488 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_3486.x, x_3486.y, x_3486.z), vec3<f32>(x_3488.x, x_3488.y, x_3488.z));
    let x_3491 : f32 = u_xlat83;
    u_xlat83 = max(x_3491, 0.00006103515625f);
    let x_3494 : f32 = u_xlat83;
    u_xlat58.x = inverseSqrt(x_3494);
    let x_3497 : vec2<f32> = u_xlat58;
    let x_3499 : vec4<f32> = u_xlat9;
    let x_3501 : vec3<f32> = (vec3<f32>(x_3497.x, x_3497.x, x_3497.x) * vec3<f32>(x_3499.x, x_3499.y, x_3499.z));
    let x_3502 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3501.x, x_3501.y, x_3501.z, x_3502.w);
    let x_3504 : f32 = u_xlat83;
    u_xlat84 = (1.0f / x_3504);
    let x_3506 : f32 = u_xlat83;
    let x_3507 : i32 = u_xlati81;
    let x_3509 : f32 = x_3473.x_AdditionalLightsAttenuation[x_3507].x;
    u_xlat83 = (x_3506 * x_3509);
    let x_3511 : f32 = u_xlat83;
    let x_3513 : f32 = u_xlat83;
    u_xlat83 = ((-(x_3511) * x_3513) + 1.0f);
    let x_3516 : f32 = u_xlat83;
    u_xlat83 = max(x_3516, 0.0f);
    let x_3518 : f32 = u_xlat83;
    let x_3519 : f32 = u_xlat83;
    u_xlat83 = (x_3518 * x_3519);
    let x_3521 : f32 = u_xlat83;
    let x_3522 : f32 = u_xlat84;
    u_xlat83 = (x_3521 * x_3522);
    let x_3524 : i32 = u_xlati81;
    let x_3526 : vec4<f32> = x_3473.x_AdditionalLightsSpotDir[x_3524];
    let x_3528 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_3526.x, x_3526.y, x_3526.z), vec3<f32>(x_3528.x, x_3528.y, x_3528.z));
    let x_3531 : f32 = u_xlat84;
    let x_3532 : i32 = u_xlati81;
    let x_3534 : f32 = x_3473.x_AdditionalLightsAttenuation[x_3532].z;
    let x_3536 : i32 = u_xlati81;
    let x_3538 : f32 = x_3473.x_AdditionalLightsAttenuation[x_3536].w;
    u_xlat84 = ((x_3531 * x_3534) + x_3538);
    let x_3540 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3540, 0.0f, 1.0f);
    let x_3542 : f32 = u_xlat84;
    let x_3543 : f32 = u_xlat84;
    u_xlat84 = (x_3542 * x_3543);
    let x_3545 : f32 = u_xlat83;
    let x_3546 : f32 = u_xlat84;
    u_xlat83 = (x_3545 * x_3546);
    let x_3550 : i32 = u_xlati81;
    let x_3552 : f32 = x_241.x_AdditionalShadowParams[x_3550].w;
    u_xlati84 = i32(x_3552);
    let x_3555 : i32 = u_xlati84;
    u_xlatb85 = (x_3555 >= 0i);
    let x_3557 : bool = u_xlatb85;
    if (x_3557) {
      let x_3561 : i32 = u_xlati81;
      let x_3563 : f32 = x_241.x_AdditionalShadowParams[x_3561].z;
      u_xlatb85 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3563, x_3563, x_3563, x_3563))));
      let x_3568 : bool = u_xlatb85;
      if (x_3568) {
        let x_3573 : vec4<f32> = u_xlat10;
        let x_3576 : vec4<f32> = u_xlat10;
        let x_3579 : vec4<bool> = (abs(vec4<f32>(x_3573.z, x_3573.z, x_3573.y, x_3573.z)) >= abs(vec4<f32>(x_3576.x, x_3576.y, x_3576.x, x_3576.x)));
        let x_3581 : vec3<bool> = vec3<bool>(x_3579.x, x_3579.y, x_3579.z);
        let x_3582 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3581.x, x_3581.y, x_3581.z, x_3582.w);
        let x_3585 : bool = u_xlatb11.y;
        let x_3587 : bool = u_xlatb11.x;
        u_xlatb85 = (x_3585 & x_3587);
        let x_3589 : vec4<f32> = u_xlat10;
        let x_3592 : vec4<bool> = (-(vec4<f32>(x_3589.z, x_3589.y, x_3589.z, x_3589.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3593 : vec3<bool> = vec3<bool>(x_3592.x, x_3592.y, x_3592.w);
        let x_3594 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3593.x, x_3593.y, x_3594.z, x_3593.z);
        let x_3597 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3597);
        let x_3602 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3602);
        let x_3608 : bool = u_xlatb11.w;
        u_xlat87 = select(0.0f, 1.0f, x_3608);
        let x_3611 : bool = u_xlatb11.z;
        if (x_3611) {
          let x_3616 : f32 = u_xlat11.y;
          x_3612 = x_3616;
        } else {
          let x_3618 : f32 = u_xlat87;
          x_3612 = x_3618;
        }
        let x_3619 : f32 = x_3612;
        u_xlat87 = x_3619;
        let x_3621 : bool = u_xlatb85;
        if (x_3621) {
          let x_3626 : f32 = u_xlat11.x;
          x_3622 = x_3626;
        } else {
          let x_3628 : f32 = u_xlat87;
          x_3622 = x_3628;
        }
        let x_3629 : f32 = x_3622;
        u_xlat85 = x_3629;
        let x_3630 : i32 = u_xlati81;
        let x_3632 : f32 = x_241.x_AdditionalShadowParams[x_3630].w;
        u_xlat87 = trunc(x_3632);
        let x_3634 : f32 = u_xlat85;
        let x_3635 : f32 = u_xlat87;
        u_xlat85 = (x_3634 + x_3635);
        let x_3637 : f32 = u_xlat85;
        u_xlati84 = i32(x_3637);
      }
      let x_3639 : i32 = u_xlati84;
      u_xlati84 = (x_3639 << bitcast<u32>(2i));
      let x_3641 : vec3<f32> = vs_INTERP8;
      let x_3644 : i32 = u_xlati84;
      let x_3647 : i32 = u_xlati84;
      let x_3651 : vec4<f32> = x_241.x_AdditionalLightsWorldToShadow[((x_3644 + 1i) / 4i)][((x_3647 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3641.y, x_3641.y, x_3641.y, x_3641.y) * x_3651);
      let x_3653 : i32 = u_xlati84;
      let x_3655 : i32 = u_xlati84;
      let x_3658 : vec4<f32> = x_241.x_AdditionalLightsWorldToShadow[(x_3653 / 4i)][(x_3655 % 4i)];
      let x_3659 : vec3<f32> = vs_INTERP8;
      let x_3662 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3658 * vec4<f32>(x_3659.x, x_3659.x, x_3659.x, x_3659.x)) + x_3662);
      let x_3664 : i32 = u_xlati84;
      let x_3667 : i32 = u_xlati84;
      let x_3671 : vec4<f32> = x_241.x_AdditionalLightsWorldToShadow[((x_3664 + 2i) / 4i)][((x_3667 + 2i) % 4i)];
      let x_3672 : vec3<f32> = vs_INTERP8;
      let x_3675 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3671 * vec4<f32>(x_3672.z, x_3672.z, x_3672.z, x_3672.z)) + x_3675);
      let x_3677 : vec4<f32> = u_xlat11;
      let x_3678 : i32 = u_xlati84;
      let x_3681 : i32 = u_xlati84;
      let x_3685 : vec4<f32> = x_241.x_AdditionalLightsWorldToShadow[((x_3678 + 3i) / 4i)][((x_3681 + 3i) % 4i)];
      u_xlat11 = (x_3677 + x_3685);
      let x_3687 : vec4<f32> = u_xlat11;
      let x_3689 : vec4<f32> = u_xlat11;
      let x_3691 : vec3<f32> = (vec3<f32>(x_3687.x, x_3687.y, x_3687.z) / vec3<f32>(x_3689.w, x_3689.w, x_3689.w));
      let x_3692 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3691.x, x_3691.y, x_3691.z, x_3692.w);
      let x_3695 : i32 = u_xlati81;
      let x_3697 : f32 = x_241.x_AdditionalShadowParams[x_3695].y;
      u_xlatb84 = (0.0f < x_3697);
      let x_3699 : bool = u_xlatb84;
      if (x_3699) {
        let x_3702 : i32 = u_xlati81;
        let x_3704 : f32 = x_241.x_AdditionalShadowParams[x_3702].y;
        u_xlatb84 = (1.0f == x_3704);
        let x_3706 : bool = u_xlatb84;
        if (x_3706) {
          let x_3709 : vec4<f32> = u_xlat11;
          let x_3712 : vec4<f32> = x_241.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3709.x, x_3709.y, x_3709.x, x_3709.y) + x_3712);
          let x_3715 : vec4<f32> = u_xlat12;
          let x_3716 : vec2<f32> = vec2<f32>(x_3715.x, x_3715.y);
          let x_3718 : f32 = u_xlat11.z;
          txVec60 = vec3<f32>(x_3716.x, x_3716.y, x_3718);
          let x_3726 : vec3<f32> = txVec60;
          let x_3728 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3726.xy, x_3726.z);
          u_xlat13.x = x_3728;
          let x_3731 : vec4<f32> = u_xlat12;
          let x_3732 : vec2<f32> = vec2<f32>(x_3731.z, x_3731.w);
          let x_3734 : f32 = u_xlat11.z;
          txVec61 = vec3<f32>(x_3732.x, x_3732.y, x_3734);
          let x_3741 : vec3<f32> = txVec61;
          let x_3743 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3741.xy, x_3741.z);
          u_xlat13.y = x_3743;
          let x_3745 : vec4<f32> = u_xlat11;
          let x_3749 : vec4<f32> = x_241.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3745.x, x_3745.y, x_3745.x, x_3745.y) + x_3749);
          let x_3752 : vec4<f32> = u_xlat12;
          let x_3753 : vec2<f32> = vec2<f32>(x_3752.x, x_3752.y);
          let x_3755 : f32 = u_xlat11.z;
          txVec62 = vec3<f32>(x_3753.x, x_3753.y, x_3755);
          let x_3762 : vec3<f32> = txVec62;
          let x_3764 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3762.xy, x_3762.z);
          u_xlat13.z = x_3764;
          let x_3767 : vec4<f32> = u_xlat12;
          let x_3768 : vec2<f32> = vec2<f32>(x_3767.z, x_3767.w);
          let x_3770 : f32 = u_xlat11.z;
          txVec63 = vec3<f32>(x_3768.x, x_3768.y, x_3770);
          let x_3777 : vec3<f32> = txVec63;
          let x_3779 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3777.xy, x_3777.z);
          u_xlat13.w = x_3779;
          let x_3781 : vec4<f32> = u_xlat13;
          u_xlat84 = dot(x_3781, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3784 : i32 = u_xlati81;
          let x_3786 : f32 = x_241.x_AdditionalShadowParams[x_3784].y;
          u_xlatb85 = (2.0f == x_3786);
          let x_3788 : bool = u_xlatb85;
          if (x_3788) {
            let x_3791 : vec4<f32> = u_xlat11;
            let x_3795 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_3798 : vec2<f32> = ((vec2<f32>(x_3791.x, x_3791.y) * vec2<f32>(x_3795.z, x_3795.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3799 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3798.x, x_3798.y, x_3799.z, x_3799.w);
            let x_3801 : vec4<f32> = u_xlat12;
            let x_3803 : vec2<f32> = floor(vec2<f32>(x_3801.x, x_3801.y));
            let x_3804 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3803.x, x_3803.y, x_3804.z, x_3804.w);
            let x_3807 : vec4<f32> = u_xlat11;
            let x_3810 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_3813 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3807.x, x_3807.y) * vec2<f32>(x_3810.z, x_3810.w)) + -(vec2<f32>(x_3813.x, x_3813.y)));
            let x_3817 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3817.x, x_3817.x, x_3817.y, x_3817.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3820 : vec4<f32> = u_xlat13;
            let x_3822 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3820.x, x_3820.x, x_3820.z, x_3820.z) * vec4<f32>(x_3822.x, x_3822.x, x_3822.z, x_3822.z));
            let x_3825 : vec4<f32> = u_xlat14;
            let x_3827 : vec2<f32> = (vec2<f32>(x_3825.y, x_3825.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3828 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3827.x, x_3828.y, x_3827.y, x_3828.w);
            let x_3830 : vec4<f32> = u_xlat14;
            let x_3833 : vec2<f32> = u_xlat64;
            let x_3835 : vec2<f32> = ((vec2<f32>(x_3830.x, x_3830.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3833));
            let x_3836 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3835.x, x_3835.y, x_3836.z, x_3836.w);
            let x_3838 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3838) + vec2<f32>(1.0f, 1.0f));
            let x_3841 : vec2<f32> = u_xlat64;
            let x_3842 : vec2<f32> = min(x_3841, vec2<f32>(0.0f, 0.0f));
            let x_3843 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3842.x, x_3842.y, x_3843.z, x_3843.w);
            let x_3845 : vec4<f32> = u_xlat15;
            let x_3848 : vec4<f32> = u_xlat15;
            let x_3851 : vec2<f32> = u_xlat66;
            let x_3852 : vec2<f32> = ((-(vec2<f32>(x_3845.x, x_3845.y)) * vec2<f32>(x_3848.x, x_3848.y)) + x_3851);
            let x_3853 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3852.x, x_3852.y, x_3853.z, x_3853.w);
            let x_3855 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3855, vec2<f32>(0.0f, 0.0f));
            let x_3857 : vec2<f32> = u_xlat64;
            let x_3859 : vec2<f32> = u_xlat64;
            let x_3861 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3857) * x_3859) + vec2<f32>(x_3861.y, x_3861.w));
            let x_3864 : vec4<f32> = u_xlat15;
            let x_3866 : vec2<f32> = (vec2<f32>(x_3864.x, x_3864.y) + vec2<f32>(1.0f, 1.0f));
            let x_3867 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3866.x, x_3866.y, x_3867.z, x_3867.w);
            let x_3869 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3869 + vec2<f32>(1.0f, 1.0f));
            let x_3871 : vec4<f32> = u_xlat14;
            let x_3873 : vec2<f32> = (vec2<f32>(x_3871.x, x_3871.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3874 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3873.x, x_3873.y, x_3874.z, x_3874.w);
            let x_3876 : vec2<f32> = u_xlat66;
            let x_3877 : vec2<f32> = (x_3876 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3878 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3877.x, x_3877.y, x_3878.z, x_3878.w);
            let x_3880 : vec4<f32> = u_xlat15;
            let x_3882 : vec2<f32> = (vec2<f32>(x_3880.x, x_3880.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3883 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3882.x, x_3882.y, x_3883.z, x_3883.w);
            let x_3885 : vec2<f32> = u_xlat64;
            let x_3886 : vec2<f32> = (x_3885 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3887 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3886.x, x_3886.y, x_3887.z, x_3887.w);
            let x_3889 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3889.y, x_3889.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3893 : f32 = u_xlat15.x;
            u_xlat16.z = x_3893;
            let x_3896 : f32 = u_xlat64.x;
            u_xlat16.w = x_3896;
            let x_3899 : f32 = u_xlat17.x;
            u_xlat14.z = x_3899;
            let x_3902 : f32 = u_xlat13.x;
            u_xlat14.w = x_3902;
            let x_3904 : vec4<f32> = u_xlat14;
            let x_3906 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3904.z, x_3904.w, x_3904.x, x_3904.z) + vec4<f32>(x_3906.z, x_3906.w, x_3906.x, x_3906.z));
            let x_3910 : f32 = u_xlat16.y;
            u_xlat15.z = x_3910;
            let x_3913 : f32 = u_xlat64.y;
            u_xlat15.w = x_3913;
            let x_3916 : f32 = u_xlat14.y;
            u_xlat17.z = x_3916;
            let x_3919 : f32 = u_xlat13.z;
            u_xlat17.w = x_3919;
            let x_3921 : vec4<f32> = u_xlat15;
            let x_3923 : vec4<f32> = u_xlat17;
            let x_3925 : vec3<f32> = (vec3<f32>(x_3921.z, x_3921.y, x_3921.w) + vec3<f32>(x_3923.z, x_3923.y, x_3923.w));
            let x_3926 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3925.x, x_3925.y, x_3925.z, x_3926.w);
            let x_3928 : vec4<f32> = u_xlat14;
            let x_3930 : vec4<f32> = u_xlat18;
            let x_3932 : vec3<f32> = (vec3<f32>(x_3928.x, x_3928.z, x_3928.w) / vec3<f32>(x_3930.z, x_3930.w, x_3930.y));
            let x_3933 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3932.x, x_3932.y, x_3932.z, x_3933.w);
            let x_3935 : vec4<f32> = u_xlat14;
            let x_3937 : vec3<f32> = (vec3<f32>(x_3935.x, x_3935.y, x_3935.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3938 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3937.x, x_3937.y, x_3937.z, x_3938.w);
            let x_3940 : vec4<f32> = u_xlat17;
            let x_3942 : vec4<f32> = u_xlat13;
            let x_3944 : vec3<f32> = (vec3<f32>(x_3940.z, x_3940.y, x_3940.w) / vec3<f32>(x_3942.x, x_3942.y, x_3942.z));
            let x_3945 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3944.x, x_3944.y, x_3944.z, x_3945.w);
            let x_3947 : vec4<f32> = u_xlat15;
            let x_3949 : vec3<f32> = (vec3<f32>(x_3947.x, x_3947.y, x_3947.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3950 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3949.x, x_3949.y, x_3949.z, x_3950.w);
            let x_3952 : vec4<f32> = u_xlat14;
            let x_3955 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_3957 : vec3<f32> = (vec3<f32>(x_3952.y, x_3952.x, x_3952.z) * vec3<f32>(x_3955.x, x_3955.x, x_3955.x));
            let x_3958 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3957.x, x_3957.y, x_3957.z, x_3958.w);
            let x_3960 : vec4<f32> = u_xlat15;
            let x_3963 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_3965 : vec3<f32> = (vec3<f32>(x_3960.x, x_3960.y, x_3960.z) * vec3<f32>(x_3963.y, x_3963.y, x_3963.y));
            let x_3966 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3965.x, x_3965.y, x_3965.z, x_3966.w);
            let x_3969 : f32 = u_xlat15.x;
            u_xlat14.w = x_3969;
            let x_3971 : vec4<f32> = u_xlat12;
            let x_3974 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_3977 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3971.x, x_3971.y, x_3971.x, x_3971.y) * vec4<f32>(x_3974.x, x_3974.y, x_3974.x, x_3974.y)) + vec4<f32>(x_3977.y, x_3977.w, x_3977.x, x_3977.w));
            let x_3980 : vec4<f32> = u_xlat12;
            let x_3983 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_3986 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3980.x, x_3980.y) * vec2<f32>(x_3983.x, x_3983.y)) + vec2<f32>(x_3986.z, x_3986.w));
            let x_3990 : f32 = u_xlat14.y;
            u_xlat15.w = x_3990;
            let x_3992 : vec4<f32> = u_xlat15;
            let x_3993 : vec2<f32> = vec2<f32>(x_3992.y, x_3992.z);
            let x_3994 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3994.x, x_3993.x, x_3994.z, x_3993.y);
            let x_3996 : vec4<f32> = u_xlat12;
            let x_3999 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4002 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3996.x, x_3996.y, x_3996.x, x_3996.y) * vec4<f32>(x_3999.x, x_3999.y, x_3999.x, x_3999.y)) + vec4<f32>(x_4002.x, x_4002.y, x_4002.z, x_4002.y));
            let x_4005 : vec4<f32> = u_xlat12;
            let x_4008 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4011 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4005.x, x_4005.y, x_4005.x, x_4005.y) * vec4<f32>(x_4008.x, x_4008.y, x_4008.x, x_4008.y)) + vec4<f32>(x_4011.w, x_4011.y, x_4011.w, x_4011.z));
            let x_4014 : vec4<f32> = u_xlat12;
            let x_4017 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4020 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4014.x, x_4014.y, x_4014.x, x_4014.y) * vec4<f32>(x_4017.x, x_4017.y, x_4017.x, x_4017.y)) + vec4<f32>(x_4020.x, x_4020.w, x_4020.z, x_4020.w));
            let x_4023 : vec4<f32> = u_xlat13;
            let x_4025 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_4023.x, x_4023.x, x_4023.x, x_4023.y) * vec4<f32>(x_4025.z, x_4025.w, x_4025.y, x_4025.z));
            let x_4028 : vec4<f32> = u_xlat13;
            let x_4030 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_4028.y, x_4028.y, x_4028.z, x_4028.z) * x_4030);
            let x_4033 : f32 = u_xlat13.z;
            let x_4035 : f32 = u_xlat18.y;
            u_xlat85 = (x_4033 * x_4035);
            let x_4038 : vec4<f32> = u_xlat16;
            let x_4039 : vec2<f32> = vec2<f32>(x_4038.x, x_4038.y);
            let x_4041 : f32 = u_xlat11.z;
            txVec64 = vec3<f32>(x_4039.x, x_4039.y, x_4041);
            let x_4048 : vec3<f32> = txVec64;
            let x_4050 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4048.xy, x_4048.z);
            u_xlat87 = x_4050;
            let x_4052 : vec4<f32> = u_xlat16;
            let x_4053 : vec2<f32> = vec2<f32>(x_4052.z, x_4052.w);
            let x_4055 : f32 = u_xlat11.z;
            txVec65 = vec3<f32>(x_4053.x, x_4053.y, x_4055);
            let x_4063 : vec3<f32> = txVec65;
            let x_4065 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4063.xy, x_4063.z);
            u_xlat88 = x_4065;
            let x_4066 : f32 = u_xlat88;
            let x_4068 : f32 = u_xlat19.y;
            u_xlat88 = (x_4066 * x_4068);
            let x_4071 : f32 = u_xlat19.x;
            let x_4072 : f32 = u_xlat87;
            let x_4074 : f32 = u_xlat88;
            u_xlat87 = ((x_4071 * x_4072) + x_4074);
            let x_4077 : vec2<f32> = u_xlat64;
            let x_4079 : f32 = u_xlat11.z;
            txVec66 = vec3<f32>(x_4077.x, x_4077.y, x_4079);
            let x_4086 : vec3<f32> = txVec66;
            let x_4088 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4086.xy, x_4086.z);
            u_xlat88 = x_4088;
            let x_4090 : f32 = u_xlat19.z;
            let x_4091 : f32 = u_xlat88;
            let x_4093 : f32 = u_xlat87;
            u_xlat87 = ((x_4090 * x_4091) + x_4093);
            let x_4096 : vec4<f32> = u_xlat15;
            let x_4097 : vec2<f32> = vec2<f32>(x_4096.x, x_4096.y);
            let x_4099 : f32 = u_xlat11.z;
            txVec67 = vec3<f32>(x_4097.x, x_4097.y, x_4099);
            let x_4106 : vec3<f32> = txVec67;
            let x_4108 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4106.xy, x_4106.z);
            u_xlat88 = x_4108;
            let x_4110 : f32 = u_xlat19.w;
            let x_4111 : f32 = u_xlat88;
            let x_4113 : f32 = u_xlat87;
            u_xlat87 = ((x_4110 * x_4111) + x_4113);
            let x_4116 : vec4<f32> = u_xlat17;
            let x_4117 : vec2<f32> = vec2<f32>(x_4116.x, x_4116.y);
            let x_4119 : f32 = u_xlat11.z;
            txVec68 = vec3<f32>(x_4117.x, x_4117.y, x_4119);
            let x_4126 : vec3<f32> = txVec68;
            let x_4128 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4126.xy, x_4126.z);
            u_xlat88 = x_4128;
            let x_4130 : f32 = u_xlat20.x;
            let x_4131 : f32 = u_xlat88;
            let x_4133 : f32 = u_xlat87;
            u_xlat87 = ((x_4130 * x_4131) + x_4133);
            let x_4136 : vec4<f32> = u_xlat17;
            let x_4137 : vec2<f32> = vec2<f32>(x_4136.z, x_4136.w);
            let x_4139 : f32 = u_xlat11.z;
            txVec69 = vec3<f32>(x_4137.x, x_4137.y, x_4139);
            let x_4146 : vec3<f32> = txVec69;
            let x_4148 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4146.xy, x_4146.z);
            u_xlat88 = x_4148;
            let x_4150 : f32 = u_xlat20.y;
            let x_4151 : f32 = u_xlat88;
            let x_4153 : f32 = u_xlat87;
            u_xlat87 = ((x_4150 * x_4151) + x_4153);
            let x_4156 : vec4<f32> = u_xlat15;
            let x_4157 : vec2<f32> = vec2<f32>(x_4156.z, x_4156.w);
            let x_4159 : f32 = u_xlat11.z;
            txVec70 = vec3<f32>(x_4157.x, x_4157.y, x_4159);
            let x_4166 : vec3<f32> = txVec70;
            let x_4168 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4166.xy, x_4166.z);
            u_xlat88 = x_4168;
            let x_4170 : f32 = u_xlat20.z;
            let x_4171 : f32 = u_xlat88;
            let x_4173 : f32 = u_xlat87;
            u_xlat87 = ((x_4170 * x_4171) + x_4173);
            let x_4176 : vec4<f32> = u_xlat14;
            let x_4177 : vec2<f32> = vec2<f32>(x_4176.x, x_4176.y);
            let x_4179 : f32 = u_xlat11.z;
            txVec71 = vec3<f32>(x_4177.x, x_4177.y, x_4179);
            let x_4186 : vec3<f32> = txVec71;
            let x_4188 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4186.xy, x_4186.z);
            u_xlat88 = x_4188;
            let x_4190 : f32 = u_xlat20.w;
            let x_4191 : f32 = u_xlat88;
            let x_4193 : f32 = u_xlat87;
            u_xlat87 = ((x_4190 * x_4191) + x_4193);
            let x_4196 : vec4<f32> = u_xlat14;
            let x_4197 : vec2<f32> = vec2<f32>(x_4196.z, x_4196.w);
            let x_4199 : f32 = u_xlat11.z;
            txVec72 = vec3<f32>(x_4197.x, x_4197.y, x_4199);
            let x_4206 : vec3<f32> = txVec72;
            let x_4208 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4206.xy, x_4206.z);
            u_xlat88 = x_4208;
            let x_4209 : f32 = u_xlat85;
            let x_4210 : f32 = u_xlat88;
            let x_4212 : f32 = u_xlat87;
            u_xlat84 = ((x_4209 * x_4210) + x_4212);
          } else {
            let x_4215 : vec4<f32> = u_xlat11;
            let x_4218 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4221 : vec2<f32> = ((vec2<f32>(x_4215.x, x_4215.y) * vec2<f32>(x_4218.z, x_4218.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4222 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4221.x, x_4221.y, x_4222.z, x_4222.w);
            let x_4224 : vec4<f32> = u_xlat12;
            let x_4226 : vec2<f32> = floor(vec2<f32>(x_4224.x, x_4224.y));
            let x_4227 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4226.x, x_4226.y, x_4227.z, x_4227.w);
            let x_4229 : vec4<f32> = u_xlat11;
            let x_4232 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4235 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4229.x, x_4229.y) * vec2<f32>(x_4232.z, x_4232.w)) + -(vec2<f32>(x_4235.x, x_4235.y)));
            let x_4239 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4239.x, x_4239.x, x_4239.y, x_4239.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4242 : vec4<f32> = u_xlat13;
            let x_4244 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4242.x, x_4242.x, x_4242.z, x_4242.z) * vec4<f32>(x_4244.x, x_4244.x, x_4244.z, x_4244.z));
            let x_4247 : vec4<f32> = u_xlat14;
            let x_4249 : vec2<f32> = (vec2<f32>(x_4247.y, x_4247.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4250 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4250.x, x_4249.x, x_4250.z, x_4249.y);
            let x_4252 : vec4<f32> = u_xlat14;
            let x_4255 : vec2<f32> = u_xlat64;
            let x_4257 : vec2<f32> = ((vec2<f32>(x_4252.x, x_4252.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4255));
            let x_4258 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4257.x, x_4258.y, x_4257.y, x_4258.w);
            let x_4260 : vec2<f32> = u_xlat64;
            let x_4262 : vec2<f32> = (-(x_4260) + vec2<f32>(1.0f, 1.0f));
            let x_4263 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4262.x, x_4262.y, x_4263.z, x_4263.w);
            let x_4265 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_4265, vec2<f32>(0.0f, 0.0f));
            let x_4267 : vec2<f32> = u_xlat66;
            let x_4269 : vec2<f32> = u_xlat66;
            let x_4271 : vec4<f32> = u_xlat14;
            let x_4273 : vec2<f32> = ((-(x_4267) * x_4269) + vec2<f32>(x_4271.x, x_4271.y));
            let x_4274 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4273.x, x_4273.y, x_4274.z, x_4274.w);
            let x_4276 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_4276, vec2<f32>(0.0f, 0.0f));
            let x_4279 : vec2<f32> = u_xlat66;
            let x_4281 : vec2<f32> = u_xlat66;
            let x_4283 : vec4<f32> = u_xlat13;
            let x_4285 : vec2<f32> = ((-(x_4279) * x_4281) + vec2<f32>(x_4283.y, x_4283.w));
            let x_4286 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_4285.x, x_4286.y, x_4285.y);
            let x_4288 : vec4<f32> = u_xlat14;
            let x_4290 : vec2<f32> = (vec2<f32>(x_4288.x, x_4288.y) + vec2<f32>(2.0f, 2.0f));
            let x_4291 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4290.x, x_4290.y, x_4291.z, x_4291.w);
            let x_4293 : vec3<f32> = u_xlat39;
            let x_4295 : vec2<f32> = (vec2<f32>(x_4293.x, x_4293.z) + vec2<f32>(2.0f, 2.0f));
            let x_4296 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4296.x, x_4295.x, x_4296.z, x_4295.y);
            let x_4299 : f32 = u_xlat13.y;
            u_xlat16.z = (x_4299 * 0.08163200318813323975f);
            let x_4302 : vec4<f32> = u_xlat13;
            let x_4304 : vec3<f32> = (vec3<f32>(x_4302.z, x_4302.x, x_4302.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4305 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4304.x, x_4304.y, x_4304.z, x_4305.w);
            let x_4307 : vec4<f32> = u_xlat14;
            let x_4309 : vec2<f32> = (vec2<f32>(x_4307.x, x_4307.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4310 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4309.x, x_4309.y, x_4310.z, x_4310.w);
            let x_4313 : f32 = u_xlat17.y;
            u_xlat16.x = x_4313;
            let x_4315 : vec2<f32> = u_xlat64;
            let x_4318 : vec2<f32> = ((vec2<f32>(x_4315.x, x_4315.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4319 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4319.x, x_4318.x, x_4319.z, x_4318.y);
            let x_4321 : vec2<f32> = u_xlat64;
            let x_4324 : vec2<f32> = ((vec2<f32>(x_4321.x, x_4321.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4325 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4324.x, x_4325.y, x_4324.y, x_4325.w);
            let x_4328 : f32 = u_xlat13.x;
            u_xlat14.y = x_4328;
            let x_4331 : f32 = u_xlat15.y;
            u_xlat14.w = x_4331;
            let x_4333 : vec4<f32> = u_xlat14;
            let x_4334 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4333 + x_4334);
            let x_4336 : vec2<f32> = u_xlat64;
            let x_4339 : vec2<f32> = ((vec2<f32>(x_4336.y, x_4336.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4340 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4340.x, x_4339.x, x_4340.z, x_4339.y);
            let x_4342 : vec2<f32> = u_xlat64;
            let x_4345 : vec2<f32> = ((vec2<f32>(x_4342.y, x_4342.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4346 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4345.x, x_4346.y, x_4345.y, x_4346.w);
            let x_4349 : f32 = u_xlat13.y;
            u_xlat15.y = x_4349;
            let x_4351 : vec4<f32> = u_xlat15;
            let x_4352 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4351 + x_4352);
            let x_4354 : vec4<f32> = u_xlat14;
            let x_4355 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_4354 / x_4355);
            let x_4357 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4357 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4359 : vec4<f32> = u_xlat15;
            let x_4360 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_4359 / x_4360);
            let x_4362 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4362 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4364 : vec4<f32> = u_xlat14;
            let x_4367 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4364.w, x_4364.x, x_4364.y, x_4364.z) * vec4<f32>(x_4367.x, x_4367.x, x_4367.x, x_4367.x));
            let x_4370 : vec4<f32> = u_xlat15;
            let x_4373 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_4370.x, x_4370.w, x_4370.y, x_4370.z) * vec4<f32>(x_4373.y, x_4373.y, x_4373.y, x_4373.y));
            let x_4376 : vec4<f32> = u_xlat14;
            let x_4377 : vec3<f32> = vec3<f32>(x_4376.y, x_4376.z, x_4376.w);
            let x_4378 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4377.x, x_4378.y, x_4377.y, x_4377.z);
            let x_4381 : f32 = u_xlat15.x;
            u_xlat17.y = x_4381;
            let x_4383 : vec4<f32> = u_xlat12;
            let x_4386 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4389 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4383.x, x_4383.y, x_4383.x, x_4383.y) * vec4<f32>(x_4386.x, x_4386.y, x_4386.x, x_4386.y)) + vec4<f32>(x_4389.x, x_4389.y, x_4389.z, x_4389.y));
            let x_4392 : vec4<f32> = u_xlat12;
            let x_4395 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4398 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_4392.x, x_4392.y) * vec2<f32>(x_4395.x, x_4395.y)) + vec2<f32>(x_4398.w, x_4398.y));
            let x_4402 : f32 = u_xlat17.y;
            u_xlat14.y = x_4402;
            let x_4405 : f32 = u_xlat15.z;
            u_xlat17.y = x_4405;
            let x_4407 : vec4<f32> = u_xlat12;
            let x_4410 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4413 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_4407.x, x_4407.y, x_4407.x, x_4407.y) * vec4<f32>(x_4410.x, x_4410.y, x_4410.x, x_4410.y)) + vec4<f32>(x_4413.x, x_4413.y, x_4413.z, x_4413.y));
            let x_4416 : vec4<f32> = u_xlat12;
            let x_4419 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4422 : vec4<f32> = u_xlat17;
            let x_4424 : vec2<f32> = ((vec2<f32>(x_4416.x, x_4416.y) * vec2<f32>(x_4419.x, x_4419.y)) + vec2<f32>(x_4422.w, x_4422.y));
            let x_4425 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_4424.x, x_4424.y, x_4425.z, x_4425.w);
            let x_4428 : f32 = u_xlat17.y;
            u_xlat14.z = x_4428;
            let x_4431 : vec4<f32> = u_xlat12;
            let x_4434 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4437 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4431.x, x_4431.y, x_4431.x, x_4431.y) * vec4<f32>(x_4434.x, x_4434.y, x_4434.x, x_4434.y)) + vec4<f32>(x_4437.x, x_4437.y, x_4437.x, x_4437.z));
            let x_4441 : f32 = u_xlat15.w;
            u_xlat17.y = x_4441;
            let x_4444 : vec4<f32> = u_xlat12;
            let x_4447 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4450 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4444.x, x_4444.y, x_4444.x, x_4444.y) * vec4<f32>(x_4447.x, x_4447.y, x_4447.x, x_4447.y)) + vec4<f32>(x_4450.x, x_4450.y, x_4450.z, x_4450.y));
            let x_4454 : vec4<f32> = u_xlat12;
            let x_4457 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4460 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_4454.x, x_4454.y) * vec2<f32>(x_4457.x, x_4457.y)) + vec2<f32>(x_4460.w, x_4460.y));
            let x_4464 : f32 = u_xlat17.y;
            u_xlat14.w = x_4464;
            let x_4467 : vec4<f32> = u_xlat12;
            let x_4470 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4473 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4467.x, x_4467.y) * vec2<f32>(x_4470.x, x_4470.y)) + vec2<f32>(x_4473.x, x_4473.w));
            let x_4476 : vec4<f32> = u_xlat17;
            let x_4477 : vec3<f32> = vec3<f32>(x_4476.x, x_4476.z, x_4476.w);
            let x_4478 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4477.x, x_4478.y, x_4477.y, x_4477.z);
            let x_4480 : vec4<f32> = u_xlat12;
            let x_4483 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4486 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4480.x, x_4480.y, x_4480.x, x_4480.y) * vec4<f32>(x_4483.x, x_4483.y, x_4483.x, x_4483.y)) + vec4<f32>(x_4486.x, x_4486.y, x_4486.z, x_4486.y));
            let x_4490 : vec4<f32> = u_xlat12;
            let x_4493 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4496 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4490.x, x_4490.y) * vec2<f32>(x_4493.x, x_4493.y)) + vec2<f32>(x_4496.w, x_4496.y));
            let x_4500 : f32 = u_xlat14.x;
            u_xlat15.x = x_4500;
            let x_4502 : vec4<f32> = u_xlat12;
            let x_4505 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4508 : vec4<f32> = u_xlat15;
            let x_4510 : vec2<f32> = ((vec2<f32>(x_4502.x, x_4502.y) * vec2<f32>(x_4505.x, x_4505.y)) + vec2<f32>(x_4508.x, x_4508.y));
            let x_4511 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4510.x, x_4510.y, x_4511.z, x_4511.w);
            let x_4514 : vec4<f32> = u_xlat13;
            let x_4516 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4514.x, x_4514.x, x_4514.x, x_4514.x) * x_4516);
            let x_4519 : vec4<f32> = u_xlat13;
            let x_4521 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4519.y, x_4519.y, x_4519.y, x_4519.y) * x_4521);
            let x_4524 : vec4<f32> = u_xlat13;
            let x_4526 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4524.z, x_4524.z, x_4524.z, x_4524.z) * x_4526);
            let x_4528 : vec4<f32> = u_xlat13;
            let x_4530 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4528.w, x_4528.w, x_4528.w, x_4528.w) * x_4530);
            let x_4533 : vec4<f32> = u_xlat18;
            let x_4534 : vec2<f32> = vec2<f32>(x_4533.x, x_4533.y);
            let x_4536 : f32 = u_xlat11.z;
            txVec73 = vec3<f32>(x_4534.x, x_4534.y, x_4536);
            let x_4543 : vec3<f32> = txVec73;
            let x_4545 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4543.xy, x_4543.z);
            u_xlat85 = x_4545;
            let x_4547 : vec4<f32> = u_xlat18;
            let x_4548 : vec2<f32> = vec2<f32>(x_4547.z, x_4547.w);
            let x_4550 : f32 = u_xlat11.z;
            txVec74 = vec3<f32>(x_4548.x, x_4548.y, x_4550);
            let x_4557 : vec3<f32> = txVec74;
            let x_4559 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4557.xy, x_4557.z);
            u_xlat87 = x_4559;
            let x_4560 : f32 = u_xlat87;
            let x_4562 : f32 = u_xlat23.y;
            u_xlat87 = (x_4560 * x_4562);
            let x_4565 : f32 = u_xlat23.x;
            let x_4566 : f32 = u_xlat85;
            let x_4568 : f32 = u_xlat87;
            u_xlat85 = ((x_4565 * x_4566) + x_4568);
            let x_4571 : vec2<f32> = u_xlat64;
            let x_4573 : f32 = u_xlat11.z;
            txVec75 = vec3<f32>(x_4571.x, x_4571.y, x_4573);
            let x_4580 : vec3<f32> = txVec75;
            let x_4582 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4580.xy, x_4580.z);
            u_xlat87 = x_4582;
            let x_4584 : f32 = u_xlat23.z;
            let x_4585 : f32 = u_xlat87;
            let x_4587 : f32 = u_xlat85;
            u_xlat85 = ((x_4584 * x_4585) + x_4587);
            let x_4590 : vec4<f32> = u_xlat21;
            let x_4591 : vec2<f32> = vec2<f32>(x_4590.x, x_4590.y);
            let x_4593 : f32 = u_xlat11.z;
            txVec76 = vec3<f32>(x_4591.x, x_4591.y, x_4593);
            let x_4600 : vec3<f32> = txVec76;
            let x_4602 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4600.xy, x_4600.z);
            u_xlat87 = x_4602;
            let x_4604 : f32 = u_xlat23.w;
            let x_4605 : f32 = u_xlat87;
            let x_4607 : f32 = u_xlat85;
            u_xlat85 = ((x_4604 * x_4605) + x_4607);
            let x_4610 : vec4<f32> = u_xlat19;
            let x_4611 : vec2<f32> = vec2<f32>(x_4610.x, x_4610.y);
            let x_4613 : f32 = u_xlat11.z;
            txVec77 = vec3<f32>(x_4611.x, x_4611.y, x_4613);
            let x_4620 : vec3<f32> = txVec77;
            let x_4622 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4620.xy, x_4620.z);
            u_xlat87 = x_4622;
            let x_4624 : f32 = u_xlat24.x;
            let x_4625 : f32 = u_xlat87;
            let x_4627 : f32 = u_xlat85;
            u_xlat85 = ((x_4624 * x_4625) + x_4627);
            let x_4630 : vec4<f32> = u_xlat19;
            let x_4631 : vec2<f32> = vec2<f32>(x_4630.z, x_4630.w);
            let x_4633 : f32 = u_xlat11.z;
            txVec78 = vec3<f32>(x_4631.x, x_4631.y, x_4633);
            let x_4640 : vec3<f32> = txVec78;
            let x_4642 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4640.xy, x_4640.z);
            u_xlat87 = x_4642;
            let x_4644 : f32 = u_xlat24.y;
            let x_4645 : f32 = u_xlat87;
            let x_4647 : f32 = u_xlat85;
            u_xlat85 = ((x_4644 * x_4645) + x_4647);
            let x_4650 : vec4<f32> = u_xlat20;
            let x_4651 : vec2<f32> = vec2<f32>(x_4650.x, x_4650.y);
            let x_4653 : f32 = u_xlat11.z;
            txVec79 = vec3<f32>(x_4651.x, x_4651.y, x_4653);
            let x_4660 : vec3<f32> = txVec79;
            let x_4662 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4660.xy, x_4660.z);
            u_xlat87 = x_4662;
            let x_4664 : f32 = u_xlat24.z;
            let x_4665 : f32 = u_xlat87;
            let x_4667 : f32 = u_xlat85;
            u_xlat85 = ((x_4664 * x_4665) + x_4667);
            let x_4670 : vec4<f32> = u_xlat21;
            let x_4671 : vec2<f32> = vec2<f32>(x_4670.z, x_4670.w);
            let x_4673 : f32 = u_xlat11.z;
            txVec80 = vec3<f32>(x_4671.x, x_4671.y, x_4673);
            let x_4680 : vec3<f32> = txVec80;
            let x_4682 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4680.xy, x_4680.z);
            u_xlat87 = x_4682;
            let x_4684 : f32 = u_xlat24.w;
            let x_4685 : f32 = u_xlat87;
            let x_4687 : f32 = u_xlat85;
            u_xlat85 = ((x_4684 * x_4685) + x_4687);
            let x_4690 : vec4<f32> = u_xlat22;
            let x_4691 : vec2<f32> = vec2<f32>(x_4690.x, x_4690.y);
            let x_4693 : f32 = u_xlat11.z;
            txVec81 = vec3<f32>(x_4691.x, x_4691.y, x_4693);
            let x_4700 : vec3<f32> = txVec81;
            let x_4702 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4700.xy, x_4700.z);
            u_xlat87 = x_4702;
            let x_4704 : f32 = u_xlat25.x;
            let x_4705 : f32 = u_xlat87;
            let x_4707 : f32 = u_xlat85;
            u_xlat85 = ((x_4704 * x_4705) + x_4707);
            let x_4710 : vec4<f32> = u_xlat22;
            let x_4711 : vec2<f32> = vec2<f32>(x_4710.z, x_4710.w);
            let x_4713 : f32 = u_xlat11.z;
            txVec82 = vec3<f32>(x_4711.x, x_4711.y, x_4713);
            let x_4720 : vec3<f32> = txVec82;
            let x_4722 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4720.xy, x_4720.z);
            u_xlat87 = x_4722;
            let x_4724 : f32 = u_xlat25.y;
            let x_4725 : f32 = u_xlat87;
            let x_4727 : f32 = u_xlat85;
            u_xlat85 = ((x_4724 * x_4725) + x_4727);
            let x_4730 : vec2<f32> = u_xlat40;
            let x_4732 : f32 = u_xlat11.z;
            txVec83 = vec3<f32>(x_4730.x, x_4730.y, x_4732);
            let x_4739 : vec3<f32> = txVec83;
            let x_4741 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4739.xy, x_4739.z);
            u_xlat87 = x_4741;
            let x_4743 : f32 = u_xlat25.z;
            let x_4744 : f32 = u_xlat87;
            let x_4746 : f32 = u_xlat85;
            u_xlat85 = ((x_4743 * x_4744) + x_4746);
            let x_4749 : vec2<f32> = u_xlat72;
            let x_4751 : f32 = u_xlat11.z;
            txVec84 = vec3<f32>(x_4749.x, x_4749.y, x_4751);
            let x_4758 : vec3<f32> = txVec84;
            let x_4760 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4758.xy, x_4758.z);
            u_xlat87 = x_4760;
            let x_4762 : f32 = u_xlat25.w;
            let x_4763 : f32 = u_xlat87;
            let x_4765 : f32 = u_xlat85;
            u_xlat85 = ((x_4762 * x_4763) + x_4765);
            let x_4768 : vec4<f32> = u_xlat17;
            let x_4769 : vec2<f32> = vec2<f32>(x_4768.x, x_4768.y);
            let x_4771 : f32 = u_xlat11.z;
            txVec85 = vec3<f32>(x_4769.x, x_4769.y, x_4771);
            let x_4778 : vec3<f32> = txVec85;
            let x_4780 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4778.xy, x_4778.z);
            u_xlat87 = x_4780;
            let x_4782 : f32 = u_xlat13.x;
            let x_4783 : f32 = u_xlat87;
            let x_4785 : f32 = u_xlat85;
            u_xlat85 = ((x_4782 * x_4783) + x_4785);
            let x_4788 : vec4<f32> = u_xlat17;
            let x_4789 : vec2<f32> = vec2<f32>(x_4788.z, x_4788.w);
            let x_4791 : f32 = u_xlat11.z;
            txVec86 = vec3<f32>(x_4789.x, x_4789.y, x_4791);
            let x_4798 : vec3<f32> = txVec86;
            let x_4800 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4798.xy, x_4798.z);
            u_xlat87 = x_4800;
            let x_4802 : f32 = u_xlat13.y;
            let x_4803 : f32 = u_xlat87;
            let x_4805 : f32 = u_xlat85;
            u_xlat85 = ((x_4802 * x_4803) + x_4805);
            let x_4808 : vec2<f32> = u_xlat67;
            let x_4810 : f32 = u_xlat11.z;
            txVec87 = vec3<f32>(x_4808.x, x_4808.y, x_4810);
            let x_4817 : vec3<f32> = txVec87;
            let x_4819 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4817.xy, x_4817.z);
            u_xlat87 = x_4819;
            let x_4821 : f32 = u_xlat13.z;
            let x_4822 : f32 = u_xlat87;
            let x_4824 : f32 = u_xlat85;
            u_xlat85 = ((x_4821 * x_4822) + x_4824);
            let x_4827 : vec4<f32> = u_xlat12;
            let x_4828 : vec2<f32> = vec2<f32>(x_4827.x, x_4827.y);
            let x_4830 : f32 = u_xlat11.z;
            txVec88 = vec3<f32>(x_4828.x, x_4828.y, x_4830);
            let x_4837 : vec3<f32> = txVec88;
            let x_4839 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4837.xy, x_4837.z);
            u_xlat87 = x_4839;
            let x_4841 : f32 = u_xlat13.w;
            let x_4842 : f32 = u_xlat87;
            let x_4844 : f32 = u_xlat85;
            u_xlat84 = ((x_4841 * x_4842) + x_4844);
          }
        }
      } else {
        let x_4848 : vec4<f32> = u_xlat11;
        let x_4849 : vec2<f32> = vec2<f32>(x_4848.x, x_4848.y);
        let x_4851 : f32 = u_xlat11.z;
        txVec89 = vec3<f32>(x_4849.x, x_4849.y, x_4851);
        let x_4858 : vec3<f32> = txVec89;
        let x_4860 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4858.xy, x_4858.z);
        u_xlat84 = x_4860;
      }
      let x_4861 : i32 = u_xlati81;
      let x_4863 : f32 = x_241.x_AdditionalShadowParams[x_4861].x;
      u_xlat85 = (1.0f + -(x_4863));
      let x_4866 : f32 = u_xlat84;
      let x_4867 : i32 = u_xlati81;
      let x_4869 : f32 = x_241.x_AdditionalShadowParams[x_4867].x;
      let x_4871 : f32 = u_xlat85;
      u_xlat84 = ((x_4866 * x_4869) + x_4871);
      let x_4874 : f32 = u_xlat11.z;
      u_xlatb85 = (0.0f >= x_4874);
      let x_4878 : f32 = u_xlat11.z;
      u_xlatb87 = (x_4878 >= 1.0f);
      let x_4880 : bool = u_xlatb85;
      let x_4881 : bool = u_xlatb87;
      u_xlatb85 = (x_4880 | x_4881);
      let x_4883 : bool = u_xlatb85;
      let x_4884 : f32 = u_xlat84;
      u_xlat84 = select(x_4884, 1.0f, x_4883);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_4887 : f32 = u_xlat84;
    u_xlat85 = (-(x_4887) + 1.0f);
    let x_4891 : f32 = u_xlat2.x;
    let x_4892 : f32 = u_xlat85;
    let x_4894 : f32 = u_xlat84;
    u_xlat84 = ((x_4891 * x_4892) + x_4894);
    let x_4896 : f32 = u_xlat83;
    let x_4897 : f32 = u_xlat84;
    u_xlat83 = (x_4896 * x_4897);
    let x_4899 : vec3<f32> = u_xlat26;
    let x_4900 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(x_4899, vec3<f32>(x_4900.x, x_4900.y, x_4900.z));
    let x_4903 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4903, 0.0f, 1.0f);
    let x_4905 : f32 = u_xlat83;
    let x_4906 : f32 = u_xlat84;
    u_xlat83 = (x_4905 * x_4906);
    let x_4908 : f32 = u_xlat83;
    let x_4910 : i32 = u_xlati81;
    let x_4912 : vec4<f32> = x_3473.x_AdditionalLightsColor[x_4910];
    let x_4914 : vec3<f32> = (vec3<f32>(x_4908, x_4908, x_4908) * vec3<f32>(x_4912.x, x_4912.y, x_4912.z));
    let x_4915 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4914.x, x_4914.y, x_4914.z, x_4915.w);
    let x_4917 : vec4<f32> = u_xlat9;
    let x_4919 : vec2<f32> = u_xlat58;
    let x_4922 : vec4<f32> = u_xlat3;
    let x_4924 : vec3<f32> = ((vec3<f32>(x_4917.x, x_4917.y, x_4917.z) * vec3<f32>(x_4919.x, x_4919.x, x_4919.x)) + vec3<f32>(x_4922.x, x_4922.y, x_4922.z));
    let x_4925 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4924.x, x_4924.y, x_4924.z, x_4925.w);
    let x_4927 : vec4<f32> = u_xlat9;
    let x_4929 : vec4<f32> = u_xlat9;
    u_xlat81 = dot(vec3<f32>(x_4927.x, x_4927.y, x_4927.z), vec3<f32>(x_4929.x, x_4929.y, x_4929.z));
    let x_4932 : f32 = u_xlat81;
    u_xlat81 = max(x_4932, 1.17549435e-38f);
    let x_4934 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_4934);
    let x_4936 : f32 = u_xlat81;
    let x_4938 : vec4<f32> = u_xlat9;
    let x_4940 : vec3<f32> = (vec3<f32>(x_4936, x_4936, x_4936) * vec3<f32>(x_4938.x, x_4938.y, x_4938.z));
    let x_4941 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4940.x, x_4940.y, x_4940.z, x_4941.w);
    let x_4943 : vec3<f32> = u_xlat26;
    let x_4944 : vec4<f32> = u_xlat9;
    u_xlat81 = dot(x_4943, vec3<f32>(x_4944.x, x_4944.y, x_4944.z));
    let x_4947 : f32 = u_xlat81;
    u_xlat81 = clamp(x_4947, 0.0f, 1.0f);
    let x_4949 : vec4<f32> = u_xlat10;
    let x_4951 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4949.x, x_4949.y, x_4949.z), vec3<f32>(x_4951.x, x_4951.y, x_4951.z));
    let x_4954 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4954, 0.0f, 1.0f);
    let x_4956 : f32 = u_xlat81;
    let x_4957 : f32 = u_xlat81;
    u_xlat81 = (x_4956 * x_4957);
    let x_4959 : f32 = u_xlat81;
    let x_4961 : f32 = u_xlat8.x;
    u_xlat81 = ((x_4959 * x_4961) + 1.00001001358032226562f);
    let x_4964 : f32 = u_xlat83;
    let x_4965 : f32 = u_xlat83;
    u_xlat83 = (x_4964 * x_4965);
    let x_4967 : f32 = u_xlat81;
    let x_4968 : f32 = u_xlat81;
    u_xlat81 = (x_4967 * x_4968);
    let x_4970 : f32 = u_xlat83;
    u_xlat83 = max(x_4970, 0.10000000149011611938f);
    let x_4972 : f32 = u_xlat81;
    let x_4973 : f32 = u_xlat83;
    u_xlat81 = (x_4972 * x_4973);
    let x_4976 : f32 = u_xlat6.x;
    let x_4977 : f32 = u_xlat81;
    u_xlat81 = (x_4976 * x_4977);
    let x_4979 : f32 = u_xlat82;
    let x_4980 : f32 = u_xlat81;
    u_xlat81 = (x_4979 / x_4980);
    let x_4982 : f32 = u_xlat81;
    let x_4985 : vec3<f32> = u_xlat5;
    let x_4986 : vec3<f32> = ((vec3<f32>(x_4982, x_4982, x_4982) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_4985);
    let x_4987 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4986.x, x_4986.y, x_4986.z, x_4987.w);
    let x_4989 : vec4<f32> = u_xlat9;
    let x_4991 : vec4<f32> = u_xlat11;
    let x_4994 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4989.x, x_4989.y, x_4989.z) * vec3<f32>(x_4991.x, x_4991.y, x_4991.z)) + x_4994);

    continuing {
      let x_4996 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4996 + bitcast<u32>(1i));
    }
  }
  let x_4998 : vec4<f32> = u_xlat4;
  let x_5000 : vec3<f32> = u_xlat32;
  let x_5003 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_4998.x, x_4998.y, x_4998.z) * vec3<f32>(x_5000.x, x_5000.x, x_5000.x)) + vec3<f32>(x_5003.x, x_5003.y, x_5003.z));
  let x_5006 : vec3<f32> = u_xlat34;
  let x_5007 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_5006 + x_5007);
  let x_5009 : vec4<f32> = vs_INTERP6;
  let x_5011 : vec3<f32> = u_xlat1;
  let x_5013 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_5009.w, x_5009.w, x_5009.w) * x_5011) + x_5013);
  let x_5016 : f32 = u_xlat28;
  let x_5017 : f32 = u_xlat28;
  u_xlat78 = (x_5016 * -(x_5017));
  let x_5020 : f32 = u_xlat78;
  u_xlat78 = exp2(x_5020);
  let x_5022 : vec3<f32> = u_xlat0;
  let x_5024 : vec4<f32> = x_126.unity_FogColor;
  u_xlat0 = (x_5022 + -(vec3<f32>(x_5024.x, x_5024.y, x_5024.z)));
  let x_5030 : f32 = u_xlat78;
  let x_5032 : vec3<f32> = u_xlat0;
  let x_5035 : vec4<f32> = x_126.unity_FogColor;
  let x_5037 : vec3<f32> = ((vec3<f32>(x_5030, x_5030, x_5030) * x_5032) + vec3<f32>(x_5035.x, x_5035.y, x_5035.z));
  let x_5038 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5037.x, x_5037.y, x_5037.z, x_5038.w);
  let x_5040 : bool = u_xlatb54;
  let x_5041 : f32 = u_xlat79;
  SV_Target0.w = select(1.0f, x_5041, x_5040);
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


