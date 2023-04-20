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

var<private> u_xlatb26 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_48 : UnityPerDraw;

var<private> u_xlat26 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(7) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_126 : PGlobals;

var<private> u_xlat5 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_136 : UnityPerMaterial;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(4) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(8) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat32 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_241 : LightShadows;

var<private> u_xlatb0 : bool;

var<private> u_xlatb79 : bool;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlatb28 : bool;

var<private> u_xlatb54 : bool;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat54 : f32;

var<private> u_xlat52 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlat31 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb57 : bool;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlatb2 : bool;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu0 : u32;

var<private> u_xlatu82 : u32;

var<private> u_xlati57 : i32;

var<private> u_xlati82 : i32;

@group(1) @binding(1) var<uniform> x_3527 : AdditionalLights;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb85 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat86 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat87 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

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

var<private> u_xlatu80 : u32;

var<private> u_xlatb82 : bool;

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
  var x_1714 : f32;
  var x_1726 : f32;
  var x_1738 : f32;
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
  var x_3105 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3685 : f32;
  var x_3694 : f32;
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
        u_xlat34 = ((vec2<f32>(x_1091.x, x_1091.y) * vec2<f32>(x_1094.x, x_1094.y)) + vec2<f32>(x_1097.w, x_1097.y));
        let x_1101 : f32 = u_xlat11.y;
        u_xlat8.w = x_1101;
        let x_1104 : vec4<f32> = u_xlat3;
        let x_1107 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_1110 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1104.x, x_1104.y) * vec2<f32>(x_1107.x, x_1107.y)) + vec2<f32>(x_1110.x, x_1110.w));
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
        u_xlat61 = ((vec2<f32>(x_1127.x, x_1127.y) * vec2<f32>(x_1130.x, x_1130.y)) + vec2<f32>(x_1133.w, x_1133.y));
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
        u_xlat80 = x_1182;
        let x_1184 : vec4<f32> = u_xlat12;
        let x_1185 : vec2<f32> = vec2<f32>(x_1184.z, x_1184.w);
        let x_1187 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1185.x, x_1185.y, x_1187);
        let x_1195 : vec3<f32> = txVec14;
        let x_1197 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1195.xy, x_1195.z);
        u_xlat83 = x_1197;
        let x_1198 : f32 = u_xlat83;
        let x_1200 : f32 = u_xlat17.y;
        u_xlat83 = (x_1198 * x_1200);
        let x_1203 : f32 = u_xlat17.x;
        let x_1204 : f32 = u_xlat80;
        let x_1206 : f32 = u_xlat83;
        u_xlat80 = ((x_1203 * x_1204) + x_1206);
        let x_1209 : vec2<f32> = u_xlat55;
        let x_1211 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1209.x, x_1209.y, x_1211);
        let x_1218 : vec3<f32> = txVec15;
        let x_1220 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1218.xy, x_1218.z);
        u_xlat55.x = x_1220;
        let x_1223 : f32 = u_xlat17.z;
        let x_1225 : f32 = u_xlat55.x;
        let x_1227 : f32 = u_xlat80;
        u_xlat80 = ((x_1223 * x_1225) + x_1227);
        let x_1230 : vec4<f32> = u_xlat15;
        let x_1231 : vec2<f32> = vec2<f32>(x_1230.x, x_1230.y);
        let x_1233 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1231.x, x_1231.y, x_1233);
        let x_1240 : vec3<f32> = txVec16;
        let x_1242 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1240.xy, x_1240.z);
        u_xlat55.x = x_1242;
        let x_1245 : f32 = u_xlat17.w;
        let x_1247 : f32 = u_xlat55.x;
        let x_1249 : f32 = u_xlat80;
        u_xlat80 = ((x_1245 * x_1247) + x_1249);
        let x_1252 : vec4<f32> = u_xlat13;
        let x_1253 : vec2<f32> = vec2<f32>(x_1252.x, x_1252.y);
        let x_1255 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1253.x, x_1253.y, x_1255);
        let x_1262 : vec3<f32> = txVec17;
        let x_1264 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1262.xy, x_1262.z);
        u_xlat55.x = x_1264;
        let x_1267 : f32 = u_xlat18.x;
        let x_1269 : f32 = u_xlat55.x;
        let x_1271 : f32 = u_xlat80;
        u_xlat80 = ((x_1267 * x_1269) + x_1271);
        let x_1274 : vec4<f32> = u_xlat13;
        let x_1275 : vec2<f32> = vec2<f32>(x_1274.z, x_1274.w);
        let x_1277 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1275.x, x_1275.y, x_1277);
        let x_1284 : vec3<f32> = txVec18;
        let x_1286 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1284.xy, x_1284.z);
        u_xlat55.x = x_1286;
        let x_1289 : f32 = u_xlat18.y;
        let x_1291 : f32 = u_xlat55.x;
        let x_1293 : f32 = u_xlat80;
        u_xlat80 = ((x_1289 * x_1291) + x_1293);
        let x_1296 : vec4<f32> = u_xlat14;
        let x_1297 : vec2<f32> = vec2<f32>(x_1296.x, x_1296.y);
        let x_1299 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1297.x, x_1297.y, x_1299);
        let x_1306 : vec3<f32> = txVec19;
        let x_1308 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1306.xy, x_1306.z);
        u_xlat55.x = x_1308;
        let x_1311 : f32 = u_xlat18.z;
        let x_1313 : f32 = u_xlat55.x;
        let x_1315 : f32 = u_xlat80;
        u_xlat80 = ((x_1311 * x_1313) + x_1315);
        let x_1318 : vec4<f32> = u_xlat15;
        let x_1319 : vec2<f32> = vec2<f32>(x_1318.z, x_1318.w);
        let x_1321 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1319.x, x_1319.y, x_1321);
        let x_1328 : vec3<f32> = txVec20;
        let x_1330 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1328.xy, x_1328.z);
        u_xlat55.x = x_1330;
        let x_1333 : f32 = u_xlat18.w;
        let x_1335 : f32 = u_xlat55.x;
        let x_1337 : f32 = u_xlat80;
        u_xlat80 = ((x_1333 * x_1335) + x_1337);
        let x_1340 : vec4<f32> = u_xlat16;
        let x_1341 : vec2<f32> = vec2<f32>(x_1340.x, x_1340.y);
        let x_1343 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1341.x, x_1341.y, x_1343);
        let x_1350 : vec3<f32> = txVec21;
        let x_1352 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1350.xy, x_1350.z);
        u_xlat55.x = x_1352;
        let x_1355 : f32 = u_xlat19.x;
        let x_1357 : f32 = u_xlat55.x;
        let x_1359 : f32 = u_xlat80;
        u_xlat80 = ((x_1355 * x_1357) + x_1359);
        let x_1362 : vec4<f32> = u_xlat16;
        let x_1363 : vec2<f32> = vec2<f32>(x_1362.z, x_1362.w);
        let x_1365 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1363.x, x_1363.y, x_1365);
        let x_1372 : vec3<f32> = txVec22;
        let x_1374 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1372.xy, x_1372.z);
        u_xlat55.x = x_1374;
        let x_1377 : f32 = u_xlat19.y;
        let x_1379 : f32 = u_xlat55.x;
        let x_1381 : f32 = u_xlat80;
        u_xlat80 = ((x_1377 * x_1379) + x_1381);
        let x_1384 : vec2<f32> = u_xlat34;
        let x_1386 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1384.x, x_1384.y, x_1386);
        let x_1393 : vec3<f32> = txVec23;
        let x_1395 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1393.xy, x_1393.z);
        u_xlat55.x = x_1395;
        let x_1398 : f32 = u_xlat19.z;
        let x_1400 : f32 = u_xlat55.x;
        let x_1402 : f32 = u_xlat80;
        u_xlat80 = ((x_1398 * x_1400) + x_1402);
        let x_1405 : vec2<f32> = u_xlat66;
        let x_1407 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1405.x, x_1405.y, x_1407);
        let x_1414 : vec3<f32> = txVec24;
        let x_1416 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1414.xy, x_1414.z);
        u_xlat55.x = x_1416;
        let x_1419 : f32 = u_xlat19.w;
        let x_1421 : f32 = u_xlat55.x;
        let x_1423 : f32 = u_xlat80;
        u_xlat80 = ((x_1419 * x_1421) + x_1423);
        let x_1426 : vec4<f32> = u_xlat11;
        let x_1427 : vec2<f32> = vec2<f32>(x_1426.x, x_1426.y);
        let x_1429 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1427.x, x_1427.y, x_1429);
        let x_1436 : vec3<f32> = txVec25;
        let x_1438 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1436.xy, x_1436.z);
        u_xlat55.x = x_1438;
        let x_1441 : f32 = u_xlat7.x;
        let x_1443 : f32 = u_xlat55.x;
        let x_1445 : f32 = u_xlat80;
        u_xlat80 = ((x_1441 * x_1443) + x_1445);
        let x_1448 : vec4<f32> = u_xlat11;
        let x_1449 : vec2<f32> = vec2<f32>(x_1448.z, x_1448.w);
        let x_1451 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1449.x, x_1449.y, x_1451);
        let x_1458 : vec3<f32> = txVec26;
        let x_1460 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1458.xy, x_1458.z);
        u_xlat55.x = x_1460;
        let x_1463 : f32 = u_xlat7.y;
        let x_1465 : f32 = u_xlat55.x;
        let x_1467 : f32 = u_xlat80;
        u_xlat80 = ((x_1463 * x_1465) + x_1467);
        let x_1470 : vec2<f32> = u_xlat61;
        let x_1472 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1470.x, x_1470.y, x_1472);
        let x_1479 : vec3<f32> = txVec27;
        let x_1481 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1479.xy, x_1479.z);
        u_xlat55.x = x_1481;
        let x_1484 : f32 = u_xlat7.z;
        let x_1486 : f32 = u_xlat55.x;
        let x_1488 : f32 = u_xlat80;
        u_xlat80 = ((x_1484 * x_1486) + x_1488);
        let x_1491 : vec4<f32> = u_xlat3;
        let x_1492 : vec2<f32> = vec2<f32>(x_1491.x, x_1491.y);
        let x_1494 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1492.x, x_1492.y, x_1494);
        let x_1501 : vec3<f32> = txVec28;
        let x_1503 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1501.xy, x_1501.z);
        u_xlat3.x = x_1503;
        let x_1506 : f32 = u_xlat7.w;
        let x_1508 : f32 = u_xlat3.x;
        let x_1510 : f32 = u_xlat80;
        u_xlat79 = ((x_1506 * x_1508) + x_1510);
      }
    }
  } else {
    let x_1514 : vec3<f32> = u_xlat2;
    let x_1515 : vec2<f32> = vec2<f32>(x_1514.x, x_1514.y);
    let x_1517 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1515.x, x_1515.y, x_1517);
    let x_1524 : vec3<f32> = txVec29;
    let x_1526 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1524.xy, x_1524.z);
    u_xlat79 = x_1526;
  }
  let x_1528 : f32 = x_241.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_1528) + 1.0f);
  let x_1532 : f32 = u_xlat79;
  let x_1534 : f32 = x_241.x_MainLightShadowParams.x;
  let x_1537 : f32 = u_xlat2.x;
  u_xlat79 = ((x_1532 * x_1534) + x_1537);
  let x_1541 : f32 = u_xlat2.z;
  u_xlatb28 = (0.0f >= x_1541);
  let x_1545 : f32 = u_xlat2.z;
  u_xlatb54 = (x_1545 >= 1.0f);
  let x_1547 : bool = u_xlatb54;
  let x_1548 : bool = u_xlatb28;
  u_xlatb28 = (x_1547 | x_1548);
  let x_1550 : bool = u_xlatb28;
  let x_1551 : f32 = u_xlat79;
  u_xlat79 = select(x_1551, 1.0f, x_1550);
  let x_1553 : vec3<f32> = u_xlat1;
  let x_1555 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat1.x = dot(x_1553, -(vec3<f32>(x_1555.x, x_1555.y, x_1555.z)));
  let x_1561 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1561, 0.0f, 1.0f);
  let x_1565 : f32 = u_xlat79;
  let x_1568 : vec4<f32> = x_126.x_MainLightColor;
  u_xlat27 = (vec3<f32>(x_1565, x_1565, x_1565) * vec3<f32>(x_1568.x, x_1568.y, x_1568.z));
  let x_1571 : vec3<f32> = u_xlat27;
  let x_1572 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_1571 * vec3<f32>(x_1572.x, x_1572.x, x_1572.x));
  let x_1575 : vec3<f32> = u_xlat1;
  let x_1576 : vec4<f32> = u_xlat4;
  u_xlat1 = (x_1575 * vec3<f32>(x_1576.x, x_1576.y, x_1576.z));
  let x_1580 : f32 = u_xlat4.w;
  u_xlatb79 = (x_1580 >= 0.40000000596046447754f);
  let x_1583 : bool = u_xlatb79;
  if (x_1583) {
    let x_1589 : f32 = u_xlat4.w;
    x_1585 = x_1589;
  } else {
    x_1585 = 0.0f;
  }
  let x_1591 : f32 = x_1585;
  u_xlat79 = x_1591;
  let x_1594 : f32 = u_xlat4.w;
  u_xlat28.x = (x_1594 + -0.40000000596046447754f);
  let x_1600 : f32 = u_xlat4.w;
  u_xlat54 = dpdxCoarse(x_1600);
  let x_1603 : f32 = u_xlat4.w;
  u_xlat80 = dpdyCoarse(x_1603);
  let x_1605 : f32 = u_xlat80;
  let x_1607 : f32 = u_xlat54;
  u_xlat54 = (abs(x_1605) + abs(x_1607));
  let x_1610 : f32 = u_xlat54;
  u_xlat54 = max(x_1610, 0.00009999999747378752f);
  let x_1614 : f32 = u_xlat28.x;
  let x_1615 : f32 = u_xlat54;
  u_xlat28.x = (x_1614 / x_1615);
  let x_1619 : f32 = u_xlat28.x;
  u_xlat28.x = (x_1619 + 0.5f);
  let x_1623 : f32 = u_xlat28.x;
  u_xlat28.x = clamp(x_1623, 0.0f, 1.0f);
  let x_1627 : f32 = x_126.x_AlphaToMaskAvailable;
  u_xlatb54 = !((x_1627 == 0.0f));
  let x_1629 : bool = u_xlatb54;
  if (x_1629) {
    let x_1634 : f32 = u_xlat28.x;
    x_1630 = x_1634;
  } else {
    let x_1636 : f32 = u_xlat79;
    x_1630 = x_1636;
  }
  let x_1637 : f32 = x_1630;
  u_xlat79 = x_1637;
  let x_1638 : f32 = u_xlat79;
  u_xlat28.x = (x_1638 + -0.00009999999747378752f);
  let x_1643 : f32 = u_xlat28.x;
  u_xlatb28 = (x_1643 < 0.0f);
  let x_1645 : bool = u_xlatb28;
  if (((select(0i, 1i, x_1645) * -1i) != 0i)) {
    discard;
  }
  let x_1653 : vec3<f32> = u_xlat26;
  let x_1654 : vec3<f32> = u_xlat32;
  u_xlat26 = (x_1653 * vec3<f32>(x_1654.y, x_1654.y, x_1654.y));
  let x_1657 : vec3<f32> = u_xlat32;
  let x_1659 : vec4<f32> = vs_INTERP4;
  let x_1662 : vec3<f32> = u_xlat26;
  u_xlat26 = ((vec3<f32>(x_1657.x, x_1657.x, x_1657.x) * vec3<f32>(x_1659.x, x_1659.y, x_1659.z)) + x_1662);
  let x_1664 : vec3<f32> = u_xlat32;
  let x_1666 : vec3<f32> = vs_INTERP9;
  let x_1668 : vec3<f32> = u_xlat26;
  u_xlat26 = ((vec3<f32>(x_1664.z, x_1664.z, x_1664.z) * x_1666) + x_1668);
  let x_1670 : vec3<f32> = u_xlat26;
  let x_1671 : vec3<f32> = u_xlat26;
  u_xlat28.x = dot(x_1670, x_1671);
  let x_1675 : f32 = u_xlat28.x;
  u_xlat28.x = inverseSqrt(x_1675);
  let x_1678 : vec3<f32> = u_xlat26;
  let x_1679 : vec3<f32> = u_xlat28;
  let x_1681 : vec3<f32> = (x_1678 * vec3<f32>(x_1679.x, x_1679.x, x_1679.x));
  let x_1682 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1681.x, x_1681.y, x_1681.z, x_1682.w);
  let x_1685 : f32 = x_126.unity_OrthoParams.w;
  u_xlatb26.x = (x_1685 == 0.0f);
  let x_1688 : vec3<f32> = vs_INTERP8;
  let x_1693 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_1694 : vec3<f32> = (-(x_1688) + x_1693);
  let x_1695 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1694.x, x_1694.y, x_1694.z, x_1695.w);
  let x_1698 : vec4<f32> = u_xlat4;
  let x_1700 : vec4<f32> = u_xlat4;
  u_xlat52 = dot(vec3<f32>(x_1698.x, x_1698.y, x_1698.z), vec3<f32>(x_1700.x, x_1700.y, x_1700.z));
  let x_1703 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_1703);
  let x_1705 : f32 = u_xlat52;
  let x_1707 : vec4<f32> = u_xlat4;
  let x_1709 : vec3<f32> = (vec3<f32>(x_1705, x_1705, x_1705) * vec3<f32>(x_1707.x, x_1707.y, x_1707.z));
  let x_1710 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1709.x, x_1709.y, x_1709.z, x_1710.w);
  let x_1713 : bool = u_xlatb26.x;
  if (x_1713) {
    let x_1718 : f32 = u_xlat4.x;
    x_1714 = x_1718;
  } else {
    let x_1721 : f32 = x_126.unity_MatrixV[0i].z;
    x_1714 = x_1721;
  }
  let x_1722 : f32 = x_1714;
  u_xlat7.x = x_1722;
  let x_1725 : bool = u_xlatb26.x;
  if (x_1725) {
    let x_1730 : f32 = u_xlat4.y;
    x_1726 = x_1730;
  } else {
    let x_1733 : f32 = x_126.unity_MatrixV[1i].z;
    x_1726 = x_1733;
  }
  let x_1734 : f32 = x_1726;
  u_xlat7.y = x_1734;
  let x_1737 : bool = u_xlatb26.x;
  if (x_1737) {
    let x_1742 : f32 = u_xlat4.z;
    x_1738 = x_1742;
  } else {
    let x_1745 : f32 = x_126.unity_MatrixV[2i].z;
    x_1738 = x_1745;
  }
  let x_1746 : f32 = x_1738;
  u_xlat7.z = x_1746;
  u_xlat3.w = 1.0f;
  let x_1751 : vec4<f32> = x_48.unity_SHAr;
  let x_1752 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_1751, x_1752);
  let x_1757 : vec4<f32> = x_48.unity_SHAg;
  let x_1758 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_1757, x_1758);
  let x_1763 : vec4<f32> = x_48.unity_SHAb;
  let x_1764 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_1763, x_1764);
  let x_1767 : vec4<f32> = u_xlat3;
  let x_1769 : vec4<f32> = u_xlat3;
  u_xlat8 = (vec4<f32>(x_1767.y, x_1767.z, x_1767.z, x_1767.x) * vec4<f32>(x_1769.x, x_1769.y, x_1769.z, x_1769.z));
  let x_1774 : vec4<f32> = x_48.unity_SHBr;
  let x_1775 : vec4<f32> = u_xlat8;
  u_xlat9.x = dot(x_1774, x_1775);
  let x_1780 : vec4<f32> = x_48.unity_SHBg;
  let x_1781 : vec4<f32> = u_xlat8;
  u_xlat9.y = dot(x_1780, x_1781);
  let x_1786 : vec4<f32> = x_48.unity_SHBb;
  let x_1787 : vec4<f32> = u_xlat8;
  u_xlat9.z = dot(x_1786, x_1787);
  let x_1791 : f32 = u_xlat3.y;
  let x_1793 : f32 = u_xlat3.y;
  u_xlat26.x = (x_1791 * x_1793);
  let x_1797 : f32 = u_xlat3.x;
  let x_1799 : f32 = u_xlat3.x;
  let x_1802 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_1797 * x_1799) + -(x_1802));
  let x_1808 : vec4<f32> = x_48.unity_SHC;
  let x_1810 : vec3<f32> = u_xlat26;
  let x_1813 : vec4<f32> = u_xlat9;
  u_xlat26 = ((vec3<f32>(x_1808.x, x_1808.y, x_1808.z) * vec3<f32>(x_1810.x, x_1810.x, x_1810.x)) + vec3<f32>(x_1813.x, x_1813.y, x_1813.z));
  let x_1816 : vec3<f32> = u_xlat26;
  let x_1817 : vec4<f32> = u_xlat4;
  u_xlat26 = (x_1816 + vec3<f32>(x_1817.x, x_1817.y, x_1817.z));
  let x_1820 : vec3<f32> = u_xlat26;
  u_xlat26 = max(x_1820, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1824 : f32 = u_xlat6.x;
  u_xlat6.x = x_1824;
  let x_1827 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1827, 0.0f, 1.0f);
  let x_1830 : f32 = u_xlat79;
  u_xlat79 = min(x_1830, 1.0f);
  let x_1832 : vec3<f32> = u_xlat5;
  let x_1835 : vec3<f32> = (x_1832 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_1836 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1835.x, x_1835.y, x_1835.z, x_1836.w);
  let x_1839 : f32 = u_xlat6.x;
  u_xlat28.x = (-(x_1839) + 1.0f);
  let x_1844 : f32 = u_xlat28.x;
  let x_1846 : f32 = u_xlat28.x;
  u_xlat80 = (x_1844 * x_1846);
  let x_1848 : f32 = u_xlat80;
  u_xlat80 = max(x_1848, 0.0078125f);
  let x_1852 : f32 = u_xlat80;
  let x_1853 : f32 = u_xlat80;
  u_xlat81 = (x_1852 * x_1853);
  let x_1857 : f32 = u_xlat6.x;
  u_xlat82 = (x_1857 + 0.04000002145767211914f);
  let x_1860 : f32 = u_xlat82;
  u_xlat82 = min(x_1860, 1.0f);
  let x_1862 : f32 = u_xlat80;
  u_xlat5.x = ((x_1862 * 4.0f) + 2.0f);
  let x_1869 : f32 = vs_INTERP6.w;
  u_xlat31 = min(x_1869, 1.0f);
  let x_1871 : bool = u_xlatb0;
  if (x_1871) {
    let x_1875 : f32 = x_241.x_MainLightShadowParams.y;
    u_xlatb0 = (x_1875 == 1.0f);
    let x_1877 : bool = u_xlatb0;
    if (x_1877) {
      let x_1881 : vec4<f32> = vs_INTERP3;
      let x_1884 : vec4<f32> = x_241.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_1881.x, x_1881.y, x_1881.x, x_1881.y) + x_1884);
      let x_1887 : vec4<f32> = u_xlat6;
      let x_1888 : vec2<f32> = vec2<f32>(x_1887.x, x_1887.y);
      let x_1890 : f32 = vs_INTERP3.z;
      txVec30 = vec3<f32>(x_1888.x, x_1888.y, x_1890);
      let x_1897 : vec3<f32> = txVec30;
      let x_1899 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1897.xy, x_1897.z);
      u_xlat8.x = x_1899;
      let x_1902 : vec4<f32> = u_xlat6;
      let x_1903 : vec2<f32> = vec2<f32>(x_1902.z, x_1902.w);
      let x_1905 : f32 = vs_INTERP3.z;
      txVec31 = vec3<f32>(x_1903.x, x_1903.y, x_1905);
      let x_1912 : vec3<f32> = txVec31;
      let x_1914 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1912.xy, x_1912.z);
      u_xlat8.y = x_1914;
      let x_1916 : vec4<f32> = vs_INTERP3;
      let x_1919 : vec4<f32> = x_241.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1916.x, x_1916.y, x_1916.x, x_1916.y) + x_1919);
      let x_1922 : vec4<f32> = u_xlat6;
      let x_1923 : vec2<f32> = vec2<f32>(x_1922.x, x_1922.y);
      let x_1925 : f32 = vs_INTERP3.z;
      txVec32 = vec3<f32>(x_1923.x, x_1923.y, x_1925);
      let x_1932 : vec3<f32> = txVec32;
      let x_1934 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1932.xy, x_1932.z);
      u_xlat8.z = x_1934;
      let x_1937 : vec4<f32> = u_xlat6;
      let x_1938 : vec2<f32> = vec2<f32>(x_1937.z, x_1937.w);
      let x_1940 : f32 = vs_INTERP3.z;
      txVec33 = vec3<f32>(x_1938.x, x_1938.y, x_1940);
      let x_1947 : vec3<f32> = txVec33;
      let x_1949 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1947.xy, x_1947.z);
      u_xlat8.w = x_1949;
      let x_1951 : vec4<f32> = u_xlat8;
      u_xlat0.x = dot(x_1951, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1957 : f32 = x_241.x_MainLightShadowParams.y;
      u_xlatb57 = (x_1957 == 2.0f);
      let x_1959 : bool = u_xlatb57;
      if (x_1959) {
        let x_1963 : vec4<f32> = vs_INTERP3;
        let x_1966 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        u_xlat57 = ((vec2<f32>(x_1963.x, x_1963.y) * vec2<f32>(x_1966.z, x_1966.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1970 : vec2<f32> = u_xlat57;
        u_xlat57 = floor(x_1970);
        let x_1972 : vec4<f32> = vs_INTERP3;
        let x_1975 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_1978 : vec2<f32> = u_xlat57;
        let x_1980 : vec2<f32> = ((vec2<f32>(x_1972.x, x_1972.y) * vec2<f32>(x_1975.z, x_1975.w)) + -(x_1978));
        let x_1981 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1980.x, x_1980.y, x_1981.z, x_1981.w);
        let x_1983 : vec4<f32> = u_xlat6;
        u_xlat8 = (vec4<f32>(x_1983.x, x_1983.x, x_1983.y, x_1983.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1986 : vec4<f32> = u_xlat8;
        let x_1988 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1986.x, x_1986.x, x_1986.z, x_1986.z) * vec4<f32>(x_1988.x, x_1988.x, x_1988.z, x_1988.z));
        let x_1992 : vec4<f32> = u_xlat9;
        u_xlat58 = (vec2<f32>(x_1992.y, x_1992.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1995 : vec4<f32> = u_xlat9;
        let x_1998 : vec4<f32> = u_xlat6;
        let x_2001 : vec2<f32> = ((vec2<f32>(x_1995.x, x_1995.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1998.x, x_1998.y)));
        let x_2002 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2001.x, x_2002.y, x_2001.y, x_2002.w);
        let x_2004 : vec4<f32> = u_xlat6;
        let x_2007 : vec2<f32> = (-(vec2<f32>(x_2004.x, x_2004.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2008 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2007.x, x_2007.y, x_2008.z, x_2008.w);
        let x_2010 : vec4<f32> = u_xlat6;
        u_xlat61 = min(vec2<f32>(x_2010.x, x_2010.y), vec2<f32>(0.0f, 0.0f));
        let x_2013 : vec2<f32> = u_xlat61;
        let x_2015 : vec2<f32> = u_xlat61;
        let x_2017 : vec4<f32> = u_xlat9;
        u_xlat61 = ((-(x_2013) * x_2015) + vec2<f32>(x_2017.x, x_2017.y));
        let x_2020 : vec4<f32> = u_xlat6;
        let x_2022 : vec2<f32> = max(vec2<f32>(x_2020.x, x_2020.y), vec2<f32>(0.0f, 0.0f));
        let x_2023 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_2022.x, x_2022.y, x_2023.z, x_2023.w);
        let x_2025 : vec4<f32> = u_xlat6;
        let x_2028 : vec4<f32> = u_xlat6;
        let x_2031 : vec4<f32> = u_xlat8;
        let x_2033 : vec2<f32> = ((-(vec2<f32>(x_2025.x, x_2025.y)) * vec2<f32>(x_2028.x, x_2028.y)) + vec2<f32>(x_2031.y, x_2031.w));
        let x_2034 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_2033.x, x_2033.y, x_2034.z, x_2034.w);
        let x_2036 : vec2<f32> = u_xlat61;
        u_xlat61 = (x_2036 + vec2<f32>(1.0f, 1.0f));
        let x_2038 : vec4<f32> = u_xlat6;
        let x_2040 : vec2<f32> = (vec2<f32>(x_2038.x, x_2038.y) + vec2<f32>(1.0f, 1.0f));
        let x_2041 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_2040.x, x_2040.y, x_2041.z, x_2041.w);
        let x_2043 : vec4<f32> = u_xlat8;
        let x_2045 : vec2<f32> = (vec2<f32>(x_2043.x, x_2043.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2046 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2045.x, x_2045.y, x_2046.z, x_2046.w);
        let x_2048 : vec4<f32> = u_xlat9;
        let x_2050 : vec2<f32> = (vec2<f32>(x_2048.x, x_2048.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2051 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2050.x, x_2050.y, x_2051.z, x_2051.w);
        let x_2053 : vec2<f32> = u_xlat61;
        let x_2054 : vec2<f32> = (x_2053 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2055 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2054.x, x_2054.y, x_2055.z, x_2055.w);
        let x_2057 : vec4<f32> = u_xlat6;
        let x_2059 : vec2<f32> = (vec2<f32>(x_2057.x, x_2057.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2060 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2059.x, x_2059.y, x_2060.z, x_2060.w);
        let x_2062 : vec4<f32> = u_xlat8;
        let x_2064 : vec2<f32> = (vec2<f32>(x_2062.y, x_2062.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2065 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_2064.x, x_2064.y, x_2065.z, x_2065.w);
        let x_2068 : f32 = u_xlat9.x;
        u_xlat10.z = x_2068;
        let x_2071 : f32 = u_xlat6.x;
        u_xlat10.w = x_2071;
        let x_2074 : f32 = u_xlat12.x;
        u_xlat11.z = x_2074;
        let x_2077 : f32 = u_xlat58.x;
        u_xlat11.w = x_2077;
        let x_2079 : vec4<f32> = u_xlat10;
        let x_2081 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_2079.z, x_2079.w, x_2079.x, x_2079.z) + vec4<f32>(x_2081.z, x_2081.w, x_2081.x, x_2081.z));
        let x_2085 : f32 = u_xlat10.y;
        u_xlat9.z = x_2085;
        let x_2088 : f32 = u_xlat6.y;
        u_xlat9.w = x_2088;
        let x_2091 : f32 = u_xlat11.y;
        u_xlat12.z = x_2091;
        let x_2094 : f32 = u_xlat58.y;
        u_xlat12.w = x_2094;
        let x_2096 : vec4<f32> = u_xlat9;
        let x_2098 : vec4<f32> = u_xlat12;
        let x_2100 : vec3<f32> = (vec3<f32>(x_2096.z, x_2096.y, x_2096.w) + vec3<f32>(x_2098.z, x_2098.y, x_2098.w));
        let x_2101 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_2100.x, x_2100.y, x_2100.z, x_2101.w);
        let x_2103 : vec4<f32> = u_xlat11;
        let x_2105 : vec4<f32> = u_xlat8;
        let x_2107 : vec3<f32> = (vec3<f32>(x_2103.x, x_2103.z, x_2103.w) / vec3<f32>(x_2105.z, x_2105.w, x_2105.y));
        let x_2108 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2107.x, x_2107.y, x_2107.z, x_2108.w);
        let x_2110 : vec4<f32> = u_xlat9;
        let x_2112 : vec3<f32> = (vec3<f32>(x_2110.x, x_2110.y, x_2110.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2113 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2112.x, x_2112.y, x_2112.z, x_2113.w);
        let x_2115 : vec4<f32> = u_xlat12;
        let x_2117 : vec4<f32> = u_xlat6;
        let x_2119 : vec3<f32> = (vec3<f32>(x_2115.z, x_2115.y, x_2115.w) / vec3<f32>(x_2117.x, x_2117.y, x_2117.z));
        let x_2120 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2119.x, x_2119.y, x_2119.z, x_2120.w);
        let x_2122 : vec4<f32> = u_xlat10;
        let x_2124 : vec3<f32> = (vec3<f32>(x_2122.x, x_2122.y, x_2122.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2125 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2124.x, x_2124.y, x_2124.z, x_2125.w);
        let x_2127 : vec4<f32> = u_xlat9;
        let x_2130 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2132 : vec3<f32> = (vec3<f32>(x_2127.y, x_2127.x, x_2127.z) * vec3<f32>(x_2130.x, x_2130.x, x_2130.x));
        let x_2133 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2132.x, x_2132.y, x_2132.z, x_2133.w);
        let x_2135 : vec4<f32> = u_xlat10;
        let x_2138 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2140 : vec3<f32> = (vec3<f32>(x_2135.x, x_2135.y, x_2135.z) * vec3<f32>(x_2138.y, x_2138.y, x_2138.y));
        let x_2141 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2140.x, x_2140.y, x_2140.z, x_2141.w);
        let x_2144 : f32 = u_xlat10.x;
        u_xlat9.w = x_2144;
        let x_2146 : vec2<f32> = u_xlat57;
        let x_2149 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2152 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2146.x, x_2146.y, x_2146.x, x_2146.y) * vec4<f32>(x_2149.x, x_2149.y, x_2149.x, x_2149.y)) + vec4<f32>(x_2152.y, x_2152.w, x_2152.x, x_2152.w));
        let x_2155 : vec2<f32> = u_xlat57;
        let x_2157 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2160 : vec4<f32> = u_xlat9;
        let x_2162 : vec2<f32> = ((x_2155 * vec2<f32>(x_2157.x, x_2157.y)) + vec2<f32>(x_2160.z, x_2160.w));
        let x_2163 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2162.x, x_2162.y, x_2163.z, x_2163.w);
        let x_2166 : f32 = u_xlat9.y;
        u_xlat10.w = x_2166;
        let x_2168 : vec4<f32> = u_xlat10;
        let x_2169 : vec2<f32> = vec2<f32>(x_2168.y, x_2168.z);
        let x_2170 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2170.x, x_2169.x, x_2170.z, x_2169.y);
        let x_2172 : vec2<f32> = u_xlat57;
        let x_2175 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2178 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_2172.x, x_2172.y, x_2172.x, x_2172.y) * vec4<f32>(x_2175.x, x_2175.y, x_2175.x, x_2175.y)) + vec4<f32>(x_2178.x, x_2178.y, x_2178.z, x_2178.y));
        let x_2181 : vec2<f32> = u_xlat57;
        let x_2184 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2187 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2181.x, x_2181.y, x_2181.x, x_2181.y) * vec4<f32>(x_2184.x, x_2184.y, x_2184.x, x_2184.y)) + vec4<f32>(x_2187.w, x_2187.y, x_2187.w, x_2187.z));
        let x_2190 : vec2<f32> = u_xlat57;
        let x_2193 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2196 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_2190.x, x_2190.y, x_2190.x, x_2190.y) * vec4<f32>(x_2193.x, x_2193.y, x_2193.x, x_2193.y)) + vec4<f32>(x_2196.x, x_2196.w, x_2196.z, x_2196.w));
        let x_2199 : vec4<f32> = u_xlat6;
        let x_2201 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_2199.x, x_2199.x, x_2199.x, x_2199.y) * vec4<f32>(x_2201.z, x_2201.w, x_2201.y, x_2201.z));
        let x_2204 : vec4<f32> = u_xlat6;
        let x_2206 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_2204.y, x_2204.y, x_2204.z, x_2204.z) * x_2206);
        let x_2209 : f32 = u_xlat6.z;
        let x_2211 : f32 = u_xlat8.y;
        u_xlat57.x = (x_2209 * x_2211);
        let x_2215 : vec4<f32> = u_xlat11;
        let x_2216 : vec2<f32> = vec2<f32>(x_2215.x, x_2215.y);
        let x_2218 : f32 = vs_INTERP3.z;
        txVec34 = vec3<f32>(x_2216.x, x_2216.y, x_2218);
        let x_2225 : vec3<f32> = txVec34;
        let x_2227 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2225.xy, x_2225.z);
        u_xlat83 = x_2227;
        let x_2229 : vec4<f32> = u_xlat11;
        let x_2230 : vec2<f32> = vec2<f32>(x_2229.z, x_2229.w);
        let x_2232 : f32 = vs_INTERP3.z;
        txVec35 = vec3<f32>(x_2230.x, x_2230.y, x_2232);
        let x_2239 : vec3<f32> = txVec35;
        let x_2241 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2239.xy, x_2239.z);
        u_xlat6.x = x_2241;
        let x_2244 : f32 = u_xlat6.x;
        let x_2246 : f32 = u_xlat14.y;
        u_xlat6.x = (x_2244 * x_2246);
        let x_2250 : f32 = u_xlat14.x;
        let x_2251 : f32 = u_xlat83;
        let x_2254 : f32 = u_xlat6.x;
        u_xlat83 = ((x_2250 * x_2251) + x_2254);
        let x_2257 : vec4<f32> = u_xlat12;
        let x_2258 : vec2<f32> = vec2<f32>(x_2257.x, x_2257.y);
        let x_2260 : f32 = vs_INTERP3.z;
        txVec36 = vec3<f32>(x_2258.x, x_2258.y, x_2260);
        let x_2267 : vec3<f32> = txVec36;
        let x_2269 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2267.xy, x_2267.z);
        u_xlat6.x = x_2269;
        let x_2272 : f32 = u_xlat14.z;
        let x_2274 : f32 = u_xlat6.x;
        let x_2276 : f32 = u_xlat83;
        u_xlat83 = ((x_2272 * x_2274) + x_2276);
        let x_2279 : vec4<f32> = u_xlat10;
        let x_2280 : vec2<f32> = vec2<f32>(x_2279.x, x_2279.y);
        let x_2282 : f32 = vs_INTERP3.z;
        txVec37 = vec3<f32>(x_2280.x, x_2280.y, x_2282);
        let x_2289 : vec3<f32> = txVec37;
        let x_2291 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2289.xy, x_2289.z);
        u_xlat6.x = x_2291;
        let x_2294 : f32 = u_xlat14.w;
        let x_2296 : f32 = u_xlat6.x;
        let x_2298 : f32 = u_xlat83;
        u_xlat83 = ((x_2294 * x_2296) + x_2298);
        let x_2301 : vec4<f32> = u_xlat13;
        let x_2302 : vec2<f32> = vec2<f32>(x_2301.x, x_2301.y);
        let x_2304 : f32 = vs_INTERP3.z;
        txVec38 = vec3<f32>(x_2302.x, x_2302.y, x_2304);
        let x_2311 : vec3<f32> = txVec38;
        let x_2313 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2311.xy, x_2311.z);
        u_xlat6.x = x_2313;
        let x_2316 : f32 = u_xlat15.x;
        let x_2318 : f32 = u_xlat6.x;
        let x_2320 : f32 = u_xlat83;
        u_xlat83 = ((x_2316 * x_2318) + x_2320);
        let x_2323 : vec4<f32> = u_xlat13;
        let x_2324 : vec2<f32> = vec2<f32>(x_2323.z, x_2323.w);
        let x_2326 : f32 = vs_INTERP3.z;
        txVec39 = vec3<f32>(x_2324.x, x_2324.y, x_2326);
        let x_2333 : vec3<f32> = txVec39;
        let x_2335 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2333.xy, x_2333.z);
        u_xlat6.x = x_2335;
        let x_2338 : f32 = u_xlat15.y;
        let x_2340 : f32 = u_xlat6.x;
        let x_2342 : f32 = u_xlat83;
        u_xlat83 = ((x_2338 * x_2340) + x_2342);
        let x_2345 : vec4<f32> = u_xlat10;
        let x_2346 : vec2<f32> = vec2<f32>(x_2345.z, x_2345.w);
        let x_2348 : f32 = vs_INTERP3.z;
        txVec40 = vec3<f32>(x_2346.x, x_2346.y, x_2348);
        let x_2355 : vec3<f32> = txVec40;
        let x_2357 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2355.xy, x_2355.z);
        u_xlat6.x = x_2357;
        let x_2360 : f32 = u_xlat15.z;
        let x_2362 : f32 = u_xlat6.x;
        let x_2364 : f32 = u_xlat83;
        u_xlat83 = ((x_2360 * x_2362) + x_2364);
        let x_2367 : vec4<f32> = u_xlat9;
        let x_2368 : vec2<f32> = vec2<f32>(x_2367.x, x_2367.y);
        let x_2370 : f32 = vs_INTERP3.z;
        txVec41 = vec3<f32>(x_2368.x, x_2368.y, x_2370);
        let x_2377 : vec3<f32> = txVec41;
        let x_2379 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2377.xy, x_2377.z);
        u_xlat6.x = x_2379;
        let x_2382 : f32 = u_xlat15.w;
        let x_2384 : f32 = u_xlat6.x;
        let x_2386 : f32 = u_xlat83;
        u_xlat83 = ((x_2382 * x_2384) + x_2386);
        let x_2389 : vec4<f32> = u_xlat9;
        let x_2390 : vec2<f32> = vec2<f32>(x_2389.z, x_2389.w);
        let x_2392 : f32 = vs_INTERP3.z;
        txVec42 = vec3<f32>(x_2390.x, x_2390.y, x_2392);
        let x_2399 : vec3<f32> = txVec42;
        let x_2401 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2399.xy, x_2399.z);
        u_xlat6.x = x_2401;
        let x_2404 : f32 = u_xlat57.x;
        let x_2406 : f32 = u_xlat6.x;
        let x_2408 : f32 = u_xlat83;
        u_xlat0.x = ((x_2404 * x_2406) + x_2408);
      } else {
        let x_2412 : vec4<f32> = vs_INTERP3;
        let x_2415 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        u_xlat57 = ((vec2<f32>(x_2412.x, x_2412.y) * vec2<f32>(x_2415.z, x_2415.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2419 : vec2<f32> = u_xlat57;
        u_xlat57 = floor(x_2419);
        let x_2421 : vec4<f32> = vs_INTERP3;
        let x_2424 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2427 : vec2<f32> = u_xlat57;
        let x_2429 : vec2<f32> = ((vec2<f32>(x_2421.x, x_2421.y) * vec2<f32>(x_2424.z, x_2424.w)) + -(x_2427));
        let x_2430 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_2429.x, x_2429.y, x_2430.z, x_2430.w);
        let x_2432 : vec4<f32> = u_xlat6;
        u_xlat8 = (vec4<f32>(x_2432.x, x_2432.x, x_2432.y, x_2432.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2435 : vec4<f32> = u_xlat8;
        let x_2437 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2435.x, x_2435.x, x_2435.z, x_2435.z) * vec4<f32>(x_2437.x, x_2437.x, x_2437.z, x_2437.z));
        let x_2440 : vec4<f32> = u_xlat9;
        let x_2442 : vec2<f32> = (vec2<f32>(x_2440.y, x_2440.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2443 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2443.x, x_2442.x, x_2443.z, x_2442.y);
        let x_2445 : vec4<f32> = u_xlat9;
        let x_2448 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_2445.x, x_2445.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2448.x, x_2448.y)));
        let x_2452 : vec4<f32> = u_xlat6;
        let x_2455 : vec2<f32> = (-(vec2<f32>(x_2452.x, x_2452.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2456 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2455.x, x_2456.y, x_2455.y, x_2456.w);
        let x_2458 : vec4<f32> = u_xlat6;
        let x_2460 : vec2<f32> = min(vec2<f32>(x_2458.x, x_2458.y), vec2<f32>(0.0f, 0.0f));
        let x_2461 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2460.x, x_2460.y, x_2461.z, x_2461.w);
        let x_2463 : vec4<f32> = u_xlat9;
        let x_2466 : vec4<f32> = u_xlat9;
        let x_2469 : vec4<f32> = u_xlat8;
        let x_2471 : vec2<f32> = ((-(vec2<f32>(x_2463.x, x_2463.y)) * vec2<f32>(x_2466.x, x_2466.y)) + vec2<f32>(x_2469.x, x_2469.z));
        let x_2472 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2471.x, x_2472.y, x_2471.y, x_2472.w);
        let x_2474 : vec4<f32> = u_xlat6;
        let x_2476 : vec2<f32> = max(vec2<f32>(x_2474.x, x_2474.y), vec2<f32>(0.0f, 0.0f));
        let x_2477 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2476.x, x_2476.y, x_2477.z, x_2477.w);
        let x_2479 : vec4<f32> = u_xlat9;
        let x_2482 : vec4<f32> = u_xlat9;
        let x_2485 : vec4<f32> = u_xlat8;
        let x_2487 : vec2<f32> = ((-(vec2<f32>(x_2479.x, x_2479.y)) * vec2<f32>(x_2482.x, x_2482.y)) + vec2<f32>(x_2485.y, x_2485.w));
        let x_2488 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2488.x, x_2487.x, x_2488.z, x_2487.y);
        let x_2490 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2490 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2493 : f32 = u_xlat8.y;
        u_xlat9.z = (x_2493 * 0.08163200318813323975f);
        let x_2496 : vec2<f32> = u_xlat58;
        let x_2498 : vec2<f32> = (vec2<f32>(x_2496.y, x_2496.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2499 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2498.x, x_2498.y, x_2499.z, x_2499.w);
        let x_2501 : vec4<f32> = u_xlat8;
        u_xlat58 = (vec2<f32>(x_2501.x, x_2501.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2505 : f32 = u_xlat8.w;
        u_xlat11.z = (x_2505 * 0.08163200318813323975f);
        let x_2509 : f32 = u_xlat11.y;
        u_xlat9.x = x_2509;
        let x_2511 : vec4<f32> = u_xlat6;
        let x_2514 : vec2<f32> = ((vec2<f32>(x_2511.x, x_2511.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2515 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2515.x, x_2514.x, x_2515.z, x_2514.y);
        let x_2517 : vec4<f32> = u_xlat6;
        let x_2520 : vec2<f32> = ((vec2<f32>(x_2517.x, x_2517.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2521 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2520.x, x_2521.y, x_2520.y, x_2521.w);
        let x_2524 : f32 = u_xlat58.x;
        u_xlat8.y = x_2524;
        let x_2527 : f32 = u_xlat10.y;
        u_xlat8.w = x_2527;
        let x_2529 : vec4<f32> = u_xlat8;
        let x_2530 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2529 + x_2530);
        let x_2532 : vec4<f32> = u_xlat6;
        let x_2535 : vec2<f32> = ((vec2<f32>(x_2532.y, x_2532.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2536 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2536.x, x_2535.x, x_2536.z, x_2535.y);
        let x_2538 : vec4<f32> = u_xlat6;
        let x_2541 : vec2<f32> = ((vec2<f32>(x_2538.y, x_2538.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2542 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2541.x, x_2542.y, x_2541.y, x_2542.w);
        let x_2545 : f32 = u_xlat58.y;
        u_xlat10.y = x_2545;
        let x_2547 : vec4<f32> = u_xlat10;
        let x_2548 : vec4<f32> = u_xlat11;
        u_xlat6 = (x_2547 + x_2548);
        let x_2550 : vec4<f32> = u_xlat8;
        let x_2551 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_2550 / x_2551);
        let x_2553 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2553 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2555 : vec4<f32> = u_xlat10;
        let x_2556 : vec4<f32> = u_xlat6;
        u_xlat10 = (x_2555 / x_2556);
        let x_2558 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2558 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2560 : vec4<f32> = u_xlat8;
        let x_2563 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_2560.w, x_2560.x, x_2560.y, x_2560.z) * vec4<f32>(x_2563.x, x_2563.x, x_2563.x, x_2563.x));
        let x_2566 : vec4<f32> = u_xlat10;
        let x_2569 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_2566.x, x_2566.w, x_2566.y, x_2566.z) * vec4<f32>(x_2569.y, x_2569.y, x_2569.y, x_2569.y));
        let x_2572 : vec4<f32> = u_xlat8;
        let x_2573 : vec3<f32> = vec3<f32>(x_2572.y, x_2572.z, x_2572.w);
        let x_2574 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2573.x, x_2574.y, x_2573.y, x_2573.z);
        let x_2577 : f32 = u_xlat10.x;
        u_xlat11.y = x_2577;
        let x_2579 : vec2<f32> = u_xlat57;
        let x_2582 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2585 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2579.x, x_2579.y, x_2579.x, x_2579.y) * vec4<f32>(x_2582.x, x_2582.y, x_2582.x, x_2582.y)) + vec4<f32>(x_2585.x, x_2585.y, x_2585.z, x_2585.y));
        let x_2588 : vec2<f32> = u_xlat57;
        let x_2590 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2593 : vec4<f32> = u_xlat11;
        let x_2595 : vec2<f32> = ((x_2588 * vec2<f32>(x_2590.x, x_2590.y)) + vec2<f32>(x_2593.w, x_2593.y));
        let x_2596 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2595.x, x_2595.y, x_2596.z, x_2596.w);
        let x_2599 : f32 = u_xlat11.y;
        u_xlat8.y = x_2599;
        let x_2602 : f32 = u_xlat10.z;
        u_xlat11.y = x_2602;
        let x_2604 : vec2<f32> = u_xlat57;
        let x_2607 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2610 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_2604.x, x_2604.y, x_2604.x, x_2604.y) * vec4<f32>(x_2607.x, x_2607.y, x_2607.x, x_2607.y)) + vec4<f32>(x_2610.x, x_2610.y, x_2610.z, x_2610.y));
        let x_2614 : vec2<f32> = u_xlat57;
        let x_2616 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2619 : vec4<f32> = u_xlat11;
        u_xlat65 = ((x_2614 * vec2<f32>(x_2616.x, x_2616.y)) + vec2<f32>(x_2619.w, x_2619.y));
        let x_2623 : f32 = u_xlat11.y;
        u_xlat8.z = x_2623;
        let x_2625 : vec2<f32> = u_xlat57;
        let x_2628 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2631 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_2625.x, x_2625.y, x_2625.x, x_2625.y) * vec4<f32>(x_2628.x, x_2628.y, x_2628.x, x_2628.y)) + vec4<f32>(x_2631.x, x_2631.y, x_2631.x, x_2631.z));
        let x_2635 : f32 = u_xlat10.w;
        u_xlat11.y = x_2635;
        let x_2637 : vec2<f32> = u_xlat57;
        let x_2640 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2643 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_2637.x, x_2637.y, x_2637.x, x_2637.y) * vec4<f32>(x_2640.x, x_2640.y, x_2640.x, x_2640.y)) + vec4<f32>(x_2643.x, x_2643.y, x_2643.z, x_2643.y));
        let x_2646 : vec2<f32> = u_xlat57;
        let x_2648 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2651 : vec4<f32> = u_xlat11;
        u_xlat34 = ((x_2646 * vec2<f32>(x_2648.x, x_2648.y)) + vec2<f32>(x_2651.w, x_2651.y));
        let x_2655 : f32 = u_xlat11.y;
        u_xlat8.w = x_2655;
        let x_2657 : vec2<f32> = u_xlat57;
        let x_2659 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2662 : vec4<f32> = u_xlat8;
        let x_2664 : vec2<f32> = ((x_2657 * vec2<f32>(x_2659.x, x_2659.y)) + vec2<f32>(x_2662.x, x_2662.w));
        let x_2665 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_2664.x, x_2664.y, x_2665.z, x_2665.w);
        let x_2667 : vec4<f32> = u_xlat11;
        let x_2668 : vec3<f32> = vec3<f32>(x_2667.x, x_2667.z, x_2667.w);
        let x_2669 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2668.x, x_2669.y, x_2668.y, x_2668.z);
        let x_2671 : vec2<f32> = u_xlat57;
        let x_2674 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2677 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_2671.x, x_2671.y, x_2671.x, x_2671.y) * vec4<f32>(x_2674.x, x_2674.y, x_2674.x, x_2674.y)) + vec4<f32>(x_2677.x, x_2677.y, x_2677.z, x_2677.y));
        let x_2681 : vec2<f32> = u_xlat57;
        let x_2683 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2686 : vec4<f32> = u_xlat10;
        u_xlat62 = ((x_2681 * vec2<f32>(x_2683.x, x_2683.y)) + vec2<f32>(x_2686.w, x_2686.y));
        let x_2690 : f32 = u_xlat8.x;
        u_xlat10.x = x_2690;
        let x_2692 : vec2<f32> = u_xlat57;
        let x_2694 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2697 : vec4<f32> = u_xlat10;
        u_xlat57 = ((x_2692 * vec2<f32>(x_2694.x, x_2694.y)) + vec2<f32>(x_2697.x, x_2697.y));
        let x_2700 : vec4<f32> = u_xlat6;
        let x_2702 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_2700.x, x_2700.x, x_2700.x, x_2700.x) * x_2702);
        let x_2704 : vec4<f32> = u_xlat6;
        let x_2706 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_2704.y, x_2704.y, x_2704.y, x_2704.y) * x_2706);
        let x_2709 : vec4<f32> = u_xlat6;
        let x_2711 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_2709.z, x_2709.z, x_2709.z, x_2709.z) * x_2711);
        let x_2713 : vec4<f32> = u_xlat6;
        let x_2715 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_2713.w, x_2713.w, x_2713.w, x_2713.w) * x_2715);
        let x_2718 : vec4<f32> = u_xlat12;
        let x_2719 : vec2<f32> = vec2<f32>(x_2718.x, x_2718.y);
        let x_2721 : f32 = vs_INTERP3.z;
        txVec43 = vec3<f32>(x_2719.x, x_2719.y, x_2721);
        let x_2729 : vec3<f32> = txVec43;
        let x_2731 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2729.xy, x_2729.z);
        u_xlat85 = x_2731;
        let x_2733 : vec4<f32> = u_xlat12;
        let x_2734 : vec2<f32> = vec2<f32>(x_2733.z, x_2733.w);
        let x_2736 : f32 = vs_INTERP3.z;
        txVec44 = vec3<f32>(x_2734.x, x_2734.y, x_2736);
        let x_2743 : vec3<f32> = txVec44;
        let x_2745 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2743.xy, x_2743.z);
        u_xlat8.x = x_2745;
        let x_2748 : f32 = u_xlat8.x;
        let x_2750 : f32 = u_xlat18.y;
        u_xlat8.x = (x_2748 * x_2750);
        let x_2754 : f32 = u_xlat18.x;
        let x_2755 : f32 = u_xlat85;
        let x_2758 : f32 = u_xlat8.x;
        u_xlat85 = ((x_2754 * x_2755) + x_2758);
        let x_2761 : vec4<f32> = u_xlat13;
        let x_2762 : vec2<f32> = vec2<f32>(x_2761.x, x_2761.y);
        let x_2764 : f32 = vs_INTERP3.z;
        txVec45 = vec3<f32>(x_2762.x, x_2762.y, x_2764);
        let x_2771 : vec3<f32> = txVec45;
        let x_2773 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2771.xy, x_2771.z);
        u_xlat8.x = x_2773;
        let x_2776 : f32 = u_xlat18.z;
        let x_2778 : f32 = u_xlat8.x;
        let x_2780 : f32 = u_xlat85;
        u_xlat85 = ((x_2776 * x_2778) + x_2780);
        let x_2783 : vec4<f32> = u_xlat15;
        let x_2784 : vec2<f32> = vec2<f32>(x_2783.x, x_2783.y);
        let x_2786 : f32 = vs_INTERP3.z;
        txVec46 = vec3<f32>(x_2784.x, x_2784.y, x_2786);
        let x_2793 : vec3<f32> = txVec46;
        let x_2795 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2793.xy, x_2793.z);
        u_xlat8.x = x_2795;
        let x_2798 : f32 = u_xlat18.w;
        let x_2800 : f32 = u_xlat8.x;
        let x_2802 : f32 = u_xlat85;
        u_xlat85 = ((x_2798 * x_2800) + x_2802);
        let x_2805 : vec4<f32> = u_xlat14;
        let x_2806 : vec2<f32> = vec2<f32>(x_2805.x, x_2805.y);
        let x_2808 : f32 = vs_INTERP3.z;
        txVec47 = vec3<f32>(x_2806.x, x_2806.y, x_2808);
        let x_2815 : vec3<f32> = txVec47;
        let x_2817 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2815.xy, x_2815.z);
        u_xlat8.x = x_2817;
        let x_2820 : f32 = u_xlat19.x;
        let x_2822 : f32 = u_xlat8.x;
        let x_2824 : f32 = u_xlat85;
        u_xlat85 = ((x_2820 * x_2822) + x_2824);
        let x_2827 : vec4<f32> = u_xlat14;
        let x_2828 : vec2<f32> = vec2<f32>(x_2827.z, x_2827.w);
        let x_2830 : f32 = vs_INTERP3.z;
        txVec48 = vec3<f32>(x_2828.x, x_2828.y, x_2830);
        let x_2837 : vec3<f32> = txVec48;
        let x_2839 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2837.xy, x_2837.z);
        u_xlat8.x = x_2839;
        let x_2842 : f32 = u_xlat19.y;
        let x_2844 : f32 = u_xlat8.x;
        let x_2846 : f32 = u_xlat85;
        u_xlat85 = ((x_2842 * x_2844) + x_2846);
        let x_2849 : vec2<f32> = u_xlat65;
        let x_2851 : f32 = vs_INTERP3.z;
        txVec49 = vec3<f32>(x_2849.x, x_2849.y, x_2851);
        let x_2858 : vec3<f32> = txVec49;
        let x_2860 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2858.xy, x_2858.z);
        u_xlat8.x = x_2860;
        let x_2863 : f32 = u_xlat19.z;
        let x_2865 : f32 = u_xlat8.x;
        let x_2867 : f32 = u_xlat85;
        u_xlat85 = ((x_2863 * x_2865) + x_2867);
        let x_2870 : vec4<f32> = u_xlat15;
        let x_2871 : vec2<f32> = vec2<f32>(x_2870.z, x_2870.w);
        let x_2873 : f32 = vs_INTERP3.z;
        txVec50 = vec3<f32>(x_2871.x, x_2871.y, x_2873);
        let x_2880 : vec3<f32> = txVec50;
        let x_2882 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2880.xy, x_2880.z);
        u_xlat8.x = x_2882;
        let x_2885 : f32 = u_xlat19.w;
        let x_2887 : f32 = u_xlat8.x;
        let x_2889 : f32 = u_xlat85;
        u_xlat85 = ((x_2885 * x_2887) + x_2889);
        let x_2892 : vec4<f32> = u_xlat16;
        let x_2893 : vec2<f32> = vec2<f32>(x_2892.x, x_2892.y);
        let x_2895 : f32 = vs_INTERP3.z;
        txVec51 = vec3<f32>(x_2893.x, x_2893.y, x_2895);
        let x_2902 : vec3<f32> = txVec51;
        let x_2904 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2902.xy, x_2902.z);
        u_xlat8.x = x_2904;
        let x_2907 : f32 = u_xlat20.x;
        let x_2909 : f32 = u_xlat8.x;
        let x_2911 : f32 = u_xlat85;
        u_xlat85 = ((x_2907 * x_2909) + x_2911);
        let x_2914 : vec4<f32> = u_xlat16;
        let x_2915 : vec2<f32> = vec2<f32>(x_2914.z, x_2914.w);
        let x_2917 : f32 = vs_INTERP3.z;
        txVec52 = vec3<f32>(x_2915.x, x_2915.y, x_2917);
        let x_2924 : vec3<f32> = txVec52;
        let x_2926 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2924.xy, x_2924.z);
        u_xlat8.x = x_2926;
        let x_2929 : f32 = u_xlat20.y;
        let x_2931 : f32 = u_xlat8.x;
        let x_2933 : f32 = u_xlat85;
        u_xlat85 = ((x_2929 * x_2931) + x_2933);
        let x_2936 : vec2<f32> = u_xlat34;
        let x_2938 : f32 = vs_INTERP3.z;
        txVec53 = vec3<f32>(x_2936.x, x_2936.y, x_2938);
        let x_2945 : vec3<f32> = txVec53;
        let x_2947 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2945.xy, x_2945.z);
        u_xlat8.x = x_2947;
        let x_2950 : f32 = u_xlat20.z;
        let x_2952 : f32 = u_xlat8.x;
        let x_2954 : f32 = u_xlat85;
        u_xlat85 = ((x_2950 * x_2952) + x_2954);
        let x_2957 : vec4<f32> = u_xlat17;
        let x_2958 : vec2<f32> = vec2<f32>(x_2957.x, x_2957.y);
        let x_2960 : f32 = vs_INTERP3.z;
        txVec54 = vec3<f32>(x_2958.x, x_2958.y, x_2960);
        let x_2967 : vec3<f32> = txVec54;
        let x_2969 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2967.xy, x_2967.z);
        u_xlat8.x = x_2969;
        let x_2972 : f32 = u_xlat20.w;
        let x_2974 : f32 = u_xlat8.x;
        let x_2976 : f32 = u_xlat85;
        u_xlat85 = ((x_2972 * x_2974) + x_2976);
        let x_2979 : vec4<f32> = u_xlat11;
        let x_2980 : vec2<f32> = vec2<f32>(x_2979.x, x_2979.y);
        let x_2982 : f32 = vs_INTERP3.z;
        txVec55 = vec3<f32>(x_2980.x, x_2980.y, x_2982);
        let x_2989 : vec3<f32> = txVec55;
        let x_2991 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2989.xy, x_2989.z);
        u_xlat8.x = x_2991;
        let x_2994 : f32 = u_xlat6.x;
        let x_2996 : f32 = u_xlat8.x;
        let x_2998 : f32 = u_xlat85;
        u_xlat6.x = ((x_2994 * x_2996) + x_2998);
        let x_3002 : vec4<f32> = u_xlat11;
        let x_3003 : vec2<f32> = vec2<f32>(x_3002.z, x_3002.w);
        let x_3005 : f32 = vs_INTERP3.z;
        txVec56 = vec3<f32>(x_3003.x, x_3003.y, x_3005);
        let x_3012 : vec3<f32> = txVec56;
        let x_3014 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3012.xy, x_3012.z);
        u_xlat85 = x_3014;
        let x_3016 : f32 = u_xlat6.y;
        let x_3017 : f32 = u_xlat85;
        let x_3020 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_3016 * x_3017) + x_3020);
        let x_3024 : vec2<f32> = u_xlat62;
        let x_3026 : f32 = vs_INTERP3.z;
        txVec57 = vec3<f32>(x_3024.x, x_3024.y, x_3026);
        let x_3033 : vec3<f32> = txVec57;
        let x_3035 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3033.xy, x_3033.z);
        u_xlat32.x = x_3035;
        let x_3038 : f32 = u_xlat6.z;
        let x_3040 : f32 = u_xlat32.x;
        let x_3043 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_3038 * x_3040) + x_3043);
        let x_3047 : vec2<f32> = u_xlat57;
        let x_3049 : f32 = vs_INTERP3.z;
        txVec58 = vec3<f32>(x_3047.x, x_3047.y, x_3049);
        let x_3056 : vec3<f32> = txVec58;
        let x_3058 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3056.xy, x_3056.z);
        u_xlat57.x = x_3058;
        let x_3061 : f32 = u_xlat6.w;
        let x_3063 : f32 = u_xlat57.x;
        let x_3066 : f32 = u_xlat6.x;
        u_xlat0.x = ((x_3061 * x_3063) + x_3066);
      }
    }
  } else {
    let x_3071 : vec4<f32> = vs_INTERP3;
    let x_3072 : vec2<f32> = vec2<f32>(x_3071.x, x_3071.y);
    let x_3074 : f32 = vs_INTERP3.z;
    txVec59 = vec3<f32>(x_3072.x, x_3072.y, x_3074);
    let x_3081 : vec3<f32> = txVec59;
    let x_3083 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3081.xy, x_3081.z);
    u_xlat0.x = x_3083;
  }
  let x_3086 : f32 = u_xlat0.x;
  let x_3088 : f32 = x_241.x_MainLightShadowParams.x;
  let x_3091 : f32 = u_xlat2.x;
  u_xlat0.x = ((x_3086 * x_3088) + x_3091);
  let x_3096 : f32 = vs_INTERP3.z;
  u_xlatb2 = (0.0f >= x_3096);
  let x_3099 : f32 = vs_INTERP3.z;
  u_xlatb57 = (x_3099 >= 1.0f);
  let x_3101 : bool = u_xlatb2;
  let x_3102 : bool = u_xlatb57;
  u_xlatb2 = (x_3101 | x_3102);
  let x_3104 : bool = u_xlatb2;
  if (x_3104) {
    x_3105 = 1.0f;
  } else {
    let x_3110 : f32 = u_xlat0.x;
    x_3105 = x_3110;
  }
  let x_3111 : f32 = x_3105;
  u_xlat0.x = x_3111;
  let x_3113 : vec3<f32> = vs_INTERP8;
  let x_3115 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_3117 : vec3<f32> = (x_3113 + -(x_3115));
  let x_3118 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3117.x, x_3117.y, x_3117.z, x_3118.w);
  let x_3120 : vec4<f32> = u_xlat6;
  let x_3122 : vec4<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_3120.x, x_3120.y, x_3120.z), vec3<f32>(x_3122.x, x_3122.y, x_3122.z));
  let x_3127 : f32 = u_xlat2.x;
  let x_3129 : f32 = x_241.x_MainLightShadowParams.z;
  let x_3132 : f32 = x_241.x_MainLightShadowParams.w;
  u_xlat57.x = ((x_3127 * x_3129) + x_3132);
  let x_3136 : f32 = u_xlat57.x;
  u_xlat57.x = clamp(x_3136, 0.0f, 1.0f);
  let x_3140 : f32 = u_xlat0.x;
  u_xlat83 = (-(x_3140) + 1.0f);
  let x_3144 : f32 = u_xlat57.x;
  let x_3145 : f32 = u_xlat83;
  let x_3148 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_3144 * x_3145) + x_3148);
  let x_3151 : vec4<f32> = u_xlat7;
  let x_3154 : vec4<f32> = u_xlat3;
  u_xlat57.x = dot(-(vec3<f32>(x_3151.x, x_3151.y, x_3151.z)), vec3<f32>(x_3154.x, x_3154.y, x_3154.z));
  let x_3159 : f32 = u_xlat57.x;
  let x_3161 : f32 = u_xlat57.x;
  u_xlat57.x = (x_3159 + x_3161);
  let x_3164 : vec4<f32> = u_xlat3;
  let x_3166 : vec2<f32> = u_xlat57;
  let x_3170 : vec4<f32> = u_xlat7;
  let x_3173 : vec3<f32> = ((vec3<f32>(x_3164.x, x_3164.y, x_3164.z) * -(vec3<f32>(x_3166.x, x_3166.x, x_3166.x))) + -(vec3<f32>(x_3170.x, x_3170.y, x_3170.z)));
  let x_3174 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3173.x, x_3173.y, x_3173.z, x_3174.w);
  let x_3176 : vec4<f32> = u_xlat3;
  let x_3178 : vec4<f32> = u_xlat7;
  u_xlat57.x = dot(vec3<f32>(x_3176.x, x_3176.y, x_3176.z), vec3<f32>(x_3178.x, x_3178.y, x_3178.z));
  let x_3183 : f32 = u_xlat57.x;
  u_xlat57.x = clamp(x_3183, 0.0f, 1.0f);
  let x_3187 : f32 = u_xlat57.x;
  u_xlat57.x = (-(x_3187) + 1.0f);
  let x_3192 : f32 = u_xlat57.x;
  let x_3194 : f32 = u_xlat57.x;
  u_xlat57.x = (x_3192 * x_3194);
  let x_3198 : f32 = u_xlat57.x;
  let x_3200 : f32 = u_xlat57.x;
  u_xlat57.x = (x_3198 * x_3200);
  let x_3204 : f32 = u_xlat28.x;
  u_xlat83 = ((-(x_3204) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3211 : f32 = u_xlat28.x;
  let x_3212 : f32 = u_xlat83;
  u_xlat28.x = (x_3211 * x_3212);
  let x_3216 : f32 = u_xlat28.x;
  u_xlat28.x = (x_3216 * 6.0f);
  let x_3228 : vec4<f32> = u_xlat6;
  let x_3231 : f32 = u_xlat28.x;
  let x_3232 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_3228.x, x_3228.y, x_3228.z), x_3231);
  u_xlat6 = x_3232;
  let x_3234 : f32 = u_xlat6.w;
  u_xlat28.x = (x_3234 + -1.0f);
  let x_3238 : f32 = x_48.unity_SpecCube0_HDR.w;
  let x_3240 : f32 = u_xlat28.x;
  u_xlat28.x = ((x_3238 * x_3240) + 1.0f);
  let x_3245 : f32 = u_xlat28.x;
  u_xlat28.x = max(x_3245, 0.0f);
  let x_3249 : f32 = u_xlat28.x;
  u_xlat28.x = log2(x_3249);
  let x_3253 : f32 = u_xlat28.x;
  let x_3255 : f32 = x_48.unity_SpecCube0_HDR.y;
  u_xlat28.x = (x_3253 * x_3255);
  let x_3259 : f32 = u_xlat28.x;
  u_xlat28.x = exp2(x_3259);
  let x_3263 : f32 = u_xlat28.x;
  let x_3265 : f32 = x_48.unity_SpecCube0_HDR.x;
  u_xlat28.x = (x_3263 * x_3265);
  let x_3268 : vec4<f32> = u_xlat6;
  let x_3270 : vec3<f32> = u_xlat28;
  let x_3272 : vec3<f32> = (vec3<f32>(x_3268.x, x_3268.y, x_3268.z) * vec3<f32>(x_3270.x, x_3270.x, x_3270.x));
  let x_3273 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3272.x, x_3272.y, x_3272.z, x_3273.w);
  let x_3275 : f32 = u_xlat80;
  let x_3277 : f32 = u_xlat80;
  let x_3281 : vec2<f32> = ((vec2<f32>(x_3275, x_3275) * vec2<f32>(x_3277, x_3277)) + vec2<f32>(-1.0f, 1.0f));
  let x_3282 : vec3<f32> = u_xlat28;
  u_xlat28 = vec3<f32>(x_3281.x, x_3282.y, x_3281.y);
  let x_3285 : f32 = u_xlat28.z;
  u_xlat80 = (1.0f / x_3285);
  let x_3287 : f32 = u_xlat82;
  u_xlat82 = (x_3287 + -0.03999999910593032837f);
  let x_3291 : f32 = u_xlat57.x;
  let x_3292 : f32 = u_xlat82;
  u_xlat82 = ((x_3291 * x_3292) + 0.03999999910593032837f);
  let x_3296 : f32 = u_xlat80;
  let x_3297 : f32 = u_xlat82;
  u_xlat80 = (x_3296 * x_3297);
  let x_3299 : f32 = u_xlat80;
  let x_3301 : vec4<f32> = u_xlat6;
  let x_3303 : vec3<f32> = (vec3<f32>(x_3299, x_3299, x_3299) * vec3<f32>(x_3301.x, x_3301.y, x_3301.z));
  let x_3304 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3303.x, x_3303.y, x_3303.z, x_3304.w);
  let x_3306 : vec3<f32> = u_xlat26;
  let x_3307 : vec4<f32> = u_xlat4;
  let x_3310 : vec4<f32> = u_xlat6;
  u_xlat26 = ((x_3306 * vec3<f32>(x_3307.x, x_3307.y, x_3307.z)) + vec3<f32>(x_3310.x, x_3310.y, x_3310.z));
  let x_3314 : f32 = u_xlat0.x;
  let x_3316 : f32 = x_48.unity_LightData.z;
  u_xlat0.x = (x_3314 * x_3316);
  let x_3319 : vec4<f32> = u_xlat3;
  let x_3322 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat80 = dot(vec3<f32>(x_3319.x, x_3319.y, x_3319.z), vec3<f32>(x_3322.x, x_3322.y, x_3322.z));
  let x_3325 : f32 = u_xlat80;
  u_xlat80 = clamp(x_3325, 0.0f, 1.0f);
  let x_3328 : f32 = u_xlat0.x;
  let x_3329 : f32 = u_xlat80;
  u_xlat0.x = (x_3328 * x_3329);
  let x_3332 : vec3<f32> = u_xlat0;
  let x_3335 : vec4<f32> = x_126.x_MainLightColor;
  let x_3337 : vec3<f32> = (vec3<f32>(x_3332.x, x_3332.x, x_3332.x) * vec3<f32>(x_3335.x, x_3335.y, x_3335.z));
  let x_3338 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3337.x, x_3337.y, x_3337.z, x_3338.w);
  let x_3340 : vec4<f32> = u_xlat7;
  let x_3343 : vec4<f32> = x_126.x_MainLightPosition;
  let x_3345 : vec3<f32> = (vec3<f32>(x_3340.x, x_3340.y, x_3340.z) + vec3<f32>(x_3343.x, x_3343.y, x_3343.z));
  let x_3346 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3345.x, x_3345.y, x_3345.z, x_3346.w);
  let x_3348 : vec4<f32> = u_xlat8;
  let x_3350 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_3348.x, x_3348.y, x_3348.z), vec3<f32>(x_3350.x, x_3350.y, x_3350.z));
  let x_3355 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_3355, 1.17549435e-38f);
  let x_3359 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_3359);
  let x_3362 : vec3<f32> = u_xlat0;
  let x_3364 : vec4<f32> = u_xlat8;
  let x_3366 : vec3<f32> = (vec3<f32>(x_3362.x, x_3362.x, x_3362.x) * vec3<f32>(x_3364.x, x_3364.y, x_3364.z));
  let x_3367 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3366.x, x_3366.y, x_3366.z, x_3367.w);
  let x_3369 : vec4<f32> = u_xlat3;
  let x_3371 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_3369.x, x_3369.y, x_3369.z), vec3<f32>(x_3371.x, x_3371.y, x_3371.z));
  let x_3376 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_3376, 0.0f, 1.0f);
  let x_3380 : vec4<f32> = x_126.x_MainLightPosition;
  let x_3382 : vec4<f32> = u_xlat8;
  u_xlat80 = dot(vec3<f32>(x_3380.x, x_3380.y, x_3380.z), vec3<f32>(x_3382.x, x_3382.y, x_3382.z));
  let x_3385 : f32 = u_xlat80;
  u_xlat80 = clamp(x_3385, 0.0f, 1.0f);
  let x_3388 : f32 = u_xlat0.x;
  let x_3390 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3388 * x_3390);
  let x_3394 : f32 = u_xlat0.x;
  let x_3396 : f32 = u_xlat28.x;
  u_xlat0.x = ((x_3394 * x_3396) + 1.00001001358032226562f);
  let x_3401 : f32 = u_xlat80;
  let x_3402 : f32 = u_xlat80;
  u_xlat80 = (x_3401 * x_3402);
  let x_3405 : f32 = u_xlat0.x;
  let x_3407 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3405 * x_3407);
  let x_3410 : f32 = u_xlat80;
  u_xlat80 = max(x_3410, 0.10000000149011611938f);
  let x_3414 : f32 = u_xlat0.x;
  let x_3415 : f32 = u_xlat80;
  u_xlat0.x = (x_3414 * x_3415);
  let x_3419 : f32 = u_xlat5.x;
  let x_3421 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3419 * x_3421);
  let x_3424 : f32 = u_xlat81;
  let x_3426 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3424 / x_3426);
  let x_3429 : vec3<f32> = u_xlat0;
  let x_3433 : vec4<f32> = u_xlat4;
  let x_3435 : vec3<f32> = ((vec3<f32>(x_3429.x, x_3429.x, x_3429.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_3433.x, x_3433.y, x_3433.z));
  let x_3436 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3435.x, x_3435.y, x_3435.z, x_3436.w);
  let x_3438 : vec4<f32> = u_xlat6;
  let x_3440 : vec4<f32> = u_xlat8;
  let x_3442 : vec3<f32> = (vec3<f32>(x_3438.x, x_3438.y, x_3438.z) * vec3<f32>(x_3440.x, x_3440.y, x_3440.z));
  let x_3443 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3442.x, x_3442.y, x_3442.z, x_3443.w);
  let x_3447 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_3449 : f32 = x_48.unity_LightData.y;
  u_xlat0.x = min(x_3447, x_3449);
  let x_3455 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_3455));
  let x_3459 : f32 = u_xlat2.x;
  let x_3462 : f32 = x_241.x_AdditionalShadowFadeParams.x;
  let x_3465 : f32 = x_241.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_3459 * x_3462) + x_3465);
  let x_3469 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_3469, 0.0f, 1.0f);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3482 : u32 = u_xlatu_loop_1;
    let x_3483 : u32 = u_xlatu0;
    if ((x_3482 < x_3483)) {
    } else {
      break;
    }
    let x_3486 : u32 = u_xlatu_loop_1;
    u_xlatu82 = (x_3486 >> 2u);
    let x_3490 : u32 = u_xlatu_loop_1;
    u_xlati57 = bitcast<i32>((x_3490 & 3u));
    let x_3493 : u32 = u_xlatu82;
    let x_3496 : vec4<f32> = x_48.unity_LightIndices[bitcast<i32>(x_3493)];
    let x_3506 : i32 = u_xlati57;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3511 : vec4<u32> = indexable[x_3506];
    u_xlat82 = dot(x_3496, bitcast<vec4<f32>>(x_3511));
    let x_3515 : f32 = u_xlat82;
    u_xlati82 = i32(x_3515);
    let x_3517 : vec3<f32> = vs_INTERP8;
    let x_3528 : i32 = u_xlati82;
    let x_3530 : vec4<f32> = x_3527.x_AdditionalLightsPosition[x_3528];
    let x_3533 : i32 = u_xlati82;
    let x_3535 : vec4<f32> = x_3527.x_AdditionalLightsPosition[x_3533];
    let x_3537 : vec3<f32> = ((-(x_3517) * vec3<f32>(x_3530.w, x_3530.w, x_3530.w)) + vec3<f32>(x_3535.x, x_3535.y, x_3535.z));
    let x_3538 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3537.x, x_3537.y, x_3537.z, x_3538.w);
    let x_3540 : vec4<f32> = u_xlat9;
    let x_3542 : vec4<f32> = u_xlat9;
    u_xlat57.x = dot(vec3<f32>(x_3540.x, x_3540.y, x_3540.z), vec3<f32>(x_3542.x, x_3542.y, x_3542.z));
    let x_3547 : f32 = u_xlat57.x;
    u_xlat57.x = max(x_3547, 0.00006103515625f);
    let x_3552 : f32 = u_xlat57.x;
    u_xlat83 = inverseSqrt(x_3552);
    let x_3554 : f32 = u_xlat83;
    let x_3556 : vec4<f32> = u_xlat9;
    let x_3558 : vec3<f32> = (vec3<f32>(x_3554, x_3554, x_3554) * vec3<f32>(x_3556.x, x_3556.y, x_3556.z));
    let x_3559 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3558.x, x_3558.y, x_3558.z, x_3559.w);
    let x_3563 : f32 = u_xlat57.x;
    u_xlat84 = (1.0f / x_3563);
    let x_3566 : f32 = u_xlat57.x;
    let x_3567 : i32 = u_xlati82;
    let x_3569 : f32 = x_3527.x_AdditionalLightsAttenuation[x_3567].x;
    u_xlat57.x = (x_3566 * x_3569);
    let x_3573 : f32 = u_xlat57.x;
    let x_3576 : f32 = u_xlat57.x;
    u_xlat57.x = ((-(x_3573) * x_3576) + 1.0f);
    let x_3581 : f32 = u_xlat57.x;
    u_xlat57.x = max(x_3581, 0.0f);
    let x_3585 : f32 = u_xlat57.x;
    let x_3587 : f32 = u_xlat57.x;
    u_xlat57.x = (x_3585 * x_3587);
    let x_3591 : f32 = u_xlat57.x;
    let x_3592 : f32 = u_xlat84;
    u_xlat57.x = (x_3591 * x_3592);
    let x_3595 : i32 = u_xlati82;
    let x_3597 : vec4<f32> = x_3527.x_AdditionalLightsSpotDir[x_3595];
    let x_3599 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_3597.x, x_3597.y, x_3597.z), vec3<f32>(x_3599.x, x_3599.y, x_3599.z));
    let x_3602 : f32 = u_xlat84;
    let x_3603 : i32 = u_xlati82;
    let x_3605 : f32 = x_3527.x_AdditionalLightsAttenuation[x_3603].z;
    let x_3607 : i32 = u_xlati82;
    let x_3609 : f32 = x_3527.x_AdditionalLightsAttenuation[x_3607].w;
    u_xlat84 = ((x_3602 * x_3605) + x_3609);
    let x_3611 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3611, 0.0f, 1.0f);
    let x_3613 : f32 = u_xlat84;
    let x_3614 : f32 = u_xlat84;
    u_xlat84 = (x_3613 * x_3614);
    let x_3617 : f32 = u_xlat57.x;
    let x_3618 : f32 = u_xlat84;
    u_xlat57.x = (x_3617 * x_3618);
    let x_3623 : i32 = u_xlati82;
    let x_3625 : f32 = x_241.x_AdditionalShadowParams[x_3623].w;
    u_xlati84 = i32(x_3625);
    let x_3628 : i32 = u_xlati84;
    u_xlatb85 = (x_3628 >= 0i);
    let x_3630 : bool = u_xlatb85;
    if (x_3630) {
      let x_3634 : i32 = u_xlati82;
      let x_3636 : f32 = x_241.x_AdditionalShadowParams[x_3634].z;
      u_xlatb85 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3636, x_3636, x_3636, x_3636))));
      let x_3641 : bool = u_xlatb85;
      if (x_3641) {
        let x_3646 : vec4<f32> = u_xlat10;
        let x_3649 : vec4<f32> = u_xlat10;
        let x_3652 : vec4<bool> = (abs(vec4<f32>(x_3646.z, x_3646.z, x_3646.y, x_3646.z)) >= abs(vec4<f32>(x_3649.x, x_3649.y, x_3649.x, x_3649.x)));
        let x_3654 : vec3<bool> = vec3<bool>(x_3652.x, x_3652.y, x_3652.z);
        let x_3655 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3654.x, x_3654.y, x_3654.z, x_3655.w);
        let x_3658 : bool = u_xlatb11.y;
        let x_3660 : bool = u_xlatb11.x;
        u_xlatb85 = (x_3658 & x_3660);
        let x_3662 : vec4<f32> = u_xlat10;
        let x_3665 : vec4<bool> = (-(vec4<f32>(x_3662.z, x_3662.y, x_3662.z, x_3662.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3666 : vec3<bool> = vec3<bool>(x_3665.x, x_3665.y, x_3665.w);
        let x_3667 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3666.x, x_3666.y, x_3667.z, x_3666.z);
        let x_3670 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3670);
        let x_3675 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3675);
        let x_3681 : bool = u_xlatb11.w;
        u_xlat86 = select(0.0f, 1.0f, x_3681);
        let x_3684 : bool = u_xlatb11.z;
        if (x_3684) {
          let x_3689 : f32 = u_xlat11.y;
          x_3685 = x_3689;
        } else {
          let x_3691 : f32 = u_xlat86;
          x_3685 = x_3691;
        }
        let x_3692 : f32 = x_3685;
        u_xlat86 = x_3692;
        let x_3693 : bool = u_xlatb85;
        if (x_3693) {
          let x_3698 : f32 = u_xlat11.x;
          x_3694 = x_3698;
        } else {
          let x_3700 : f32 = u_xlat86;
          x_3694 = x_3700;
        }
        let x_3701 : f32 = x_3694;
        u_xlat85 = x_3701;
        let x_3702 : i32 = u_xlati82;
        let x_3704 : f32 = x_241.x_AdditionalShadowParams[x_3702].w;
        u_xlat86 = trunc(x_3704);
        let x_3706 : f32 = u_xlat85;
        let x_3707 : f32 = u_xlat86;
        u_xlat85 = (x_3706 + x_3707);
        let x_3709 : f32 = u_xlat85;
        u_xlati84 = i32(x_3709);
      }
      let x_3711 : i32 = u_xlati84;
      u_xlati84 = (x_3711 << bitcast<u32>(2i));
      let x_3713 : vec3<f32> = vs_INTERP8;
      let x_3716 : i32 = u_xlati84;
      let x_3719 : i32 = u_xlati84;
      let x_3723 : vec4<f32> = x_241.x_AdditionalLightsWorldToShadow[((x_3716 + 1i) / 4i)][((x_3719 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3713.y, x_3713.y, x_3713.y, x_3713.y) * x_3723);
      let x_3725 : i32 = u_xlati84;
      let x_3727 : i32 = u_xlati84;
      let x_3730 : vec4<f32> = x_241.x_AdditionalLightsWorldToShadow[(x_3725 / 4i)][(x_3727 % 4i)];
      let x_3731 : vec3<f32> = vs_INTERP8;
      let x_3734 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3730 * vec4<f32>(x_3731.x, x_3731.x, x_3731.x, x_3731.x)) + x_3734);
      let x_3736 : i32 = u_xlati84;
      let x_3739 : i32 = u_xlati84;
      let x_3743 : vec4<f32> = x_241.x_AdditionalLightsWorldToShadow[((x_3736 + 2i) / 4i)][((x_3739 + 2i) % 4i)];
      let x_3744 : vec3<f32> = vs_INTERP8;
      let x_3747 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3743 * vec4<f32>(x_3744.z, x_3744.z, x_3744.z, x_3744.z)) + x_3747);
      let x_3749 : vec4<f32> = u_xlat11;
      let x_3750 : i32 = u_xlati84;
      let x_3753 : i32 = u_xlati84;
      let x_3757 : vec4<f32> = x_241.x_AdditionalLightsWorldToShadow[((x_3750 + 3i) / 4i)][((x_3753 + 3i) % 4i)];
      u_xlat11 = (x_3749 + x_3757);
      let x_3759 : vec4<f32> = u_xlat11;
      let x_3761 : vec4<f32> = u_xlat11;
      let x_3763 : vec3<f32> = (vec3<f32>(x_3759.x, x_3759.y, x_3759.z) / vec3<f32>(x_3761.w, x_3761.w, x_3761.w));
      let x_3764 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3763.x, x_3763.y, x_3763.z, x_3764.w);
      let x_3767 : i32 = u_xlati82;
      let x_3769 : f32 = x_241.x_AdditionalShadowParams[x_3767].y;
      u_xlatb84 = (0.0f < x_3769);
      let x_3771 : bool = u_xlatb84;
      if (x_3771) {
        let x_3774 : i32 = u_xlati82;
        let x_3776 : f32 = x_241.x_AdditionalShadowParams[x_3774].y;
        u_xlatb84 = (1.0f == x_3776);
        let x_3778 : bool = u_xlatb84;
        if (x_3778) {
          let x_3781 : vec4<f32> = u_xlat11;
          let x_3785 : vec4<f32> = x_241.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3781.x, x_3781.y, x_3781.x, x_3781.y) + x_3785);
          let x_3788 : vec4<f32> = u_xlat12;
          let x_3789 : vec2<f32> = vec2<f32>(x_3788.x, x_3788.y);
          let x_3791 : f32 = u_xlat11.z;
          txVec60 = vec3<f32>(x_3789.x, x_3789.y, x_3791);
          let x_3799 : vec3<f32> = txVec60;
          let x_3801 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3799.xy, x_3799.z);
          u_xlat13.x = x_3801;
          let x_3804 : vec4<f32> = u_xlat12;
          let x_3805 : vec2<f32> = vec2<f32>(x_3804.z, x_3804.w);
          let x_3807 : f32 = u_xlat11.z;
          txVec61 = vec3<f32>(x_3805.x, x_3805.y, x_3807);
          let x_3814 : vec3<f32> = txVec61;
          let x_3816 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3814.xy, x_3814.z);
          u_xlat13.y = x_3816;
          let x_3818 : vec4<f32> = u_xlat11;
          let x_3822 : vec4<f32> = x_241.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3818.x, x_3818.y, x_3818.x, x_3818.y) + x_3822);
          let x_3825 : vec4<f32> = u_xlat12;
          let x_3826 : vec2<f32> = vec2<f32>(x_3825.x, x_3825.y);
          let x_3828 : f32 = u_xlat11.z;
          txVec62 = vec3<f32>(x_3826.x, x_3826.y, x_3828);
          let x_3835 : vec3<f32> = txVec62;
          let x_3837 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3835.xy, x_3835.z);
          u_xlat13.z = x_3837;
          let x_3840 : vec4<f32> = u_xlat12;
          let x_3841 : vec2<f32> = vec2<f32>(x_3840.z, x_3840.w);
          let x_3843 : f32 = u_xlat11.z;
          txVec63 = vec3<f32>(x_3841.x, x_3841.y, x_3843);
          let x_3850 : vec3<f32> = txVec63;
          let x_3852 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3850.xy, x_3850.z);
          u_xlat13.w = x_3852;
          let x_3854 : vec4<f32> = u_xlat13;
          u_xlat84 = dot(x_3854, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3857 : i32 = u_xlati82;
          let x_3859 : f32 = x_241.x_AdditionalShadowParams[x_3857].y;
          u_xlatb85 = (2.0f == x_3859);
          let x_3861 : bool = u_xlatb85;
          if (x_3861) {
            let x_3864 : vec4<f32> = u_xlat11;
            let x_3868 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_3871 : vec2<f32> = ((vec2<f32>(x_3864.x, x_3864.y) * vec2<f32>(x_3868.z, x_3868.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3872 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3871.x, x_3871.y, x_3872.z, x_3872.w);
            let x_3874 : vec4<f32> = u_xlat12;
            let x_3876 : vec2<f32> = floor(vec2<f32>(x_3874.x, x_3874.y));
            let x_3877 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3876.x, x_3876.y, x_3877.z, x_3877.w);
            let x_3880 : vec4<f32> = u_xlat11;
            let x_3883 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_3886 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3880.x, x_3880.y) * vec2<f32>(x_3883.z, x_3883.w)) + -(vec2<f32>(x_3886.x, x_3886.y)));
            let x_3890 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3890.x, x_3890.x, x_3890.y, x_3890.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3893 : vec4<f32> = u_xlat13;
            let x_3895 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3893.x, x_3893.x, x_3893.z, x_3893.z) * vec4<f32>(x_3895.x, x_3895.x, x_3895.z, x_3895.z));
            let x_3898 : vec4<f32> = u_xlat14;
            let x_3900 : vec2<f32> = (vec2<f32>(x_3898.y, x_3898.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3901 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3900.x, x_3901.y, x_3900.y, x_3901.w);
            let x_3903 : vec4<f32> = u_xlat14;
            let x_3906 : vec2<f32> = u_xlat64;
            let x_3908 : vec2<f32> = ((vec2<f32>(x_3903.x, x_3903.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3906));
            let x_3909 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3908.x, x_3908.y, x_3909.z, x_3909.w);
            let x_3911 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3911) + vec2<f32>(1.0f, 1.0f));
            let x_3914 : vec2<f32> = u_xlat64;
            let x_3915 : vec2<f32> = min(x_3914, vec2<f32>(0.0f, 0.0f));
            let x_3916 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3915.x, x_3915.y, x_3916.z, x_3916.w);
            let x_3918 : vec4<f32> = u_xlat15;
            let x_3921 : vec4<f32> = u_xlat15;
            let x_3924 : vec2<f32> = u_xlat66;
            let x_3925 : vec2<f32> = ((-(vec2<f32>(x_3918.x, x_3918.y)) * vec2<f32>(x_3921.x, x_3921.y)) + x_3924);
            let x_3926 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3925.x, x_3925.y, x_3926.z, x_3926.w);
            let x_3928 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3928, vec2<f32>(0.0f, 0.0f));
            let x_3930 : vec2<f32> = u_xlat64;
            let x_3932 : vec2<f32> = u_xlat64;
            let x_3934 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3930) * x_3932) + vec2<f32>(x_3934.y, x_3934.w));
            let x_3937 : vec4<f32> = u_xlat15;
            let x_3939 : vec2<f32> = (vec2<f32>(x_3937.x, x_3937.y) + vec2<f32>(1.0f, 1.0f));
            let x_3940 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3939.x, x_3939.y, x_3940.z, x_3940.w);
            let x_3942 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3942 + vec2<f32>(1.0f, 1.0f));
            let x_3944 : vec4<f32> = u_xlat14;
            let x_3946 : vec2<f32> = (vec2<f32>(x_3944.x, x_3944.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3947 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3946.x, x_3946.y, x_3947.z, x_3947.w);
            let x_3949 : vec2<f32> = u_xlat66;
            let x_3950 : vec2<f32> = (x_3949 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3951 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3950.x, x_3950.y, x_3951.z, x_3951.w);
            let x_3953 : vec4<f32> = u_xlat15;
            let x_3955 : vec2<f32> = (vec2<f32>(x_3953.x, x_3953.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3956 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3955.x, x_3955.y, x_3956.z, x_3956.w);
            let x_3958 : vec2<f32> = u_xlat64;
            let x_3959 : vec2<f32> = (x_3958 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3960 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3959.x, x_3959.y, x_3960.z, x_3960.w);
            let x_3962 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3962.y, x_3962.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3966 : f32 = u_xlat15.x;
            u_xlat16.z = x_3966;
            let x_3969 : f32 = u_xlat64.x;
            u_xlat16.w = x_3969;
            let x_3972 : f32 = u_xlat17.x;
            u_xlat14.z = x_3972;
            let x_3975 : f32 = u_xlat13.x;
            u_xlat14.w = x_3975;
            let x_3977 : vec4<f32> = u_xlat14;
            let x_3979 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3977.z, x_3977.w, x_3977.x, x_3977.z) + vec4<f32>(x_3979.z, x_3979.w, x_3979.x, x_3979.z));
            let x_3983 : f32 = u_xlat16.y;
            u_xlat15.z = x_3983;
            let x_3986 : f32 = u_xlat64.y;
            u_xlat15.w = x_3986;
            let x_3989 : f32 = u_xlat14.y;
            u_xlat17.z = x_3989;
            let x_3992 : f32 = u_xlat13.z;
            u_xlat17.w = x_3992;
            let x_3994 : vec4<f32> = u_xlat15;
            let x_3996 : vec4<f32> = u_xlat17;
            let x_3998 : vec3<f32> = (vec3<f32>(x_3994.z, x_3994.y, x_3994.w) + vec3<f32>(x_3996.z, x_3996.y, x_3996.w));
            let x_3999 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3998.x, x_3998.y, x_3998.z, x_3999.w);
            let x_4001 : vec4<f32> = u_xlat14;
            let x_4003 : vec4<f32> = u_xlat18;
            let x_4005 : vec3<f32> = (vec3<f32>(x_4001.x, x_4001.z, x_4001.w) / vec3<f32>(x_4003.z, x_4003.w, x_4003.y));
            let x_4006 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4005.x, x_4005.y, x_4005.z, x_4006.w);
            let x_4008 : vec4<f32> = u_xlat14;
            let x_4010 : vec3<f32> = (vec3<f32>(x_4008.x, x_4008.y, x_4008.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4011 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4010.x, x_4010.y, x_4010.z, x_4011.w);
            let x_4013 : vec4<f32> = u_xlat17;
            let x_4015 : vec4<f32> = u_xlat13;
            let x_4017 : vec3<f32> = (vec3<f32>(x_4013.z, x_4013.y, x_4013.w) / vec3<f32>(x_4015.x, x_4015.y, x_4015.z));
            let x_4018 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4017.x, x_4017.y, x_4017.z, x_4018.w);
            let x_4020 : vec4<f32> = u_xlat15;
            let x_4022 : vec3<f32> = (vec3<f32>(x_4020.x, x_4020.y, x_4020.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4023 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4022.x, x_4022.y, x_4022.z, x_4023.w);
            let x_4025 : vec4<f32> = u_xlat14;
            let x_4028 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4030 : vec3<f32> = (vec3<f32>(x_4025.y, x_4025.x, x_4025.z) * vec3<f32>(x_4028.x, x_4028.x, x_4028.x));
            let x_4031 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4030.x, x_4030.y, x_4030.z, x_4031.w);
            let x_4033 : vec4<f32> = u_xlat15;
            let x_4036 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4038 : vec3<f32> = (vec3<f32>(x_4033.x, x_4033.y, x_4033.z) * vec3<f32>(x_4036.y, x_4036.y, x_4036.y));
            let x_4039 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4038.x, x_4038.y, x_4038.z, x_4039.w);
            let x_4042 : f32 = u_xlat15.x;
            u_xlat14.w = x_4042;
            let x_4044 : vec4<f32> = u_xlat12;
            let x_4047 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4050 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4044.x, x_4044.y, x_4044.x, x_4044.y) * vec4<f32>(x_4047.x, x_4047.y, x_4047.x, x_4047.y)) + vec4<f32>(x_4050.y, x_4050.w, x_4050.x, x_4050.w));
            let x_4053 : vec4<f32> = u_xlat12;
            let x_4056 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4059 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4053.x, x_4053.y) * vec2<f32>(x_4056.x, x_4056.y)) + vec2<f32>(x_4059.z, x_4059.w));
            let x_4063 : f32 = u_xlat14.y;
            u_xlat15.w = x_4063;
            let x_4065 : vec4<f32> = u_xlat15;
            let x_4066 : vec2<f32> = vec2<f32>(x_4065.y, x_4065.z);
            let x_4067 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4067.x, x_4066.x, x_4067.z, x_4066.y);
            let x_4069 : vec4<f32> = u_xlat12;
            let x_4072 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4075 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_4069.x, x_4069.y, x_4069.x, x_4069.y) * vec4<f32>(x_4072.x, x_4072.y, x_4072.x, x_4072.y)) + vec4<f32>(x_4075.x, x_4075.y, x_4075.z, x_4075.y));
            let x_4078 : vec4<f32> = u_xlat12;
            let x_4081 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4084 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4078.x, x_4078.y, x_4078.x, x_4078.y) * vec4<f32>(x_4081.x, x_4081.y, x_4081.x, x_4081.y)) + vec4<f32>(x_4084.w, x_4084.y, x_4084.w, x_4084.z));
            let x_4087 : vec4<f32> = u_xlat12;
            let x_4090 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4093 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4087.x, x_4087.y, x_4087.x, x_4087.y) * vec4<f32>(x_4090.x, x_4090.y, x_4090.x, x_4090.y)) + vec4<f32>(x_4093.x, x_4093.w, x_4093.z, x_4093.w));
            let x_4096 : vec4<f32> = u_xlat13;
            let x_4098 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_4096.x, x_4096.x, x_4096.x, x_4096.y) * vec4<f32>(x_4098.z, x_4098.w, x_4098.y, x_4098.z));
            let x_4101 : vec4<f32> = u_xlat13;
            let x_4103 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_4101.y, x_4101.y, x_4101.z, x_4101.z) * x_4103);
            let x_4106 : f32 = u_xlat13.z;
            let x_4108 : f32 = u_xlat18.y;
            u_xlat85 = (x_4106 * x_4108);
            let x_4111 : vec4<f32> = u_xlat16;
            let x_4112 : vec2<f32> = vec2<f32>(x_4111.x, x_4111.y);
            let x_4114 : f32 = u_xlat11.z;
            txVec64 = vec3<f32>(x_4112.x, x_4112.y, x_4114);
            let x_4121 : vec3<f32> = txVec64;
            let x_4123 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4121.xy, x_4121.z);
            u_xlat86 = x_4123;
            let x_4125 : vec4<f32> = u_xlat16;
            let x_4126 : vec2<f32> = vec2<f32>(x_4125.z, x_4125.w);
            let x_4128 : f32 = u_xlat11.z;
            txVec65 = vec3<f32>(x_4126.x, x_4126.y, x_4128);
            let x_4136 : vec3<f32> = txVec65;
            let x_4138 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4136.xy, x_4136.z);
            u_xlat87 = x_4138;
            let x_4139 : f32 = u_xlat87;
            let x_4141 : f32 = u_xlat19.y;
            u_xlat87 = (x_4139 * x_4141);
            let x_4144 : f32 = u_xlat19.x;
            let x_4145 : f32 = u_xlat86;
            let x_4147 : f32 = u_xlat87;
            u_xlat86 = ((x_4144 * x_4145) + x_4147);
            let x_4150 : vec2<f32> = u_xlat64;
            let x_4152 : f32 = u_xlat11.z;
            txVec66 = vec3<f32>(x_4150.x, x_4150.y, x_4152);
            let x_4159 : vec3<f32> = txVec66;
            let x_4161 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4159.xy, x_4159.z);
            u_xlat87 = x_4161;
            let x_4163 : f32 = u_xlat19.z;
            let x_4164 : f32 = u_xlat87;
            let x_4166 : f32 = u_xlat86;
            u_xlat86 = ((x_4163 * x_4164) + x_4166);
            let x_4169 : vec4<f32> = u_xlat15;
            let x_4170 : vec2<f32> = vec2<f32>(x_4169.x, x_4169.y);
            let x_4172 : f32 = u_xlat11.z;
            txVec67 = vec3<f32>(x_4170.x, x_4170.y, x_4172);
            let x_4179 : vec3<f32> = txVec67;
            let x_4181 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4179.xy, x_4179.z);
            u_xlat87 = x_4181;
            let x_4183 : f32 = u_xlat19.w;
            let x_4184 : f32 = u_xlat87;
            let x_4186 : f32 = u_xlat86;
            u_xlat86 = ((x_4183 * x_4184) + x_4186);
            let x_4189 : vec4<f32> = u_xlat17;
            let x_4190 : vec2<f32> = vec2<f32>(x_4189.x, x_4189.y);
            let x_4192 : f32 = u_xlat11.z;
            txVec68 = vec3<f32>(x_4190.x, x_4190.y, x_4192);
            let x_4199 : vec3<f32> = txVec68;
            let x_4201 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4199.xy, x_4199.z);
            u_xlat87 = x_4201;
            let x_4203 : f32 = u_xlat20.x;
            let x_4204 : f32 = u_xlat87;
            let x_4206 : f32 = u_xlat86;
            u_xlat86 = ((x_4203 * x_4204) + x_4206);
            let x_4209 : vec4<f32> = u_xlat17;
            let x_4210 : vec2<f32> = vec2<f32>(x_4209.z, x_4209.w);
            let x_4212 : f32 = u_xlat11.z;
            txVec69 = vec3<f32>(x_4210.x, x_4210.y, x_4212);
            let x_4219 : vec3<f32> = txVec69;
            let x_4221 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4219.xy, x_4219.z);
            u_xlat87 = x_4221;
            let x_4223 : f32 = u_xlat20.y;
            let x_4224 : f32 = u_xlat87;
            let x_4226 : f32 = u_xlat86;
            u_xlat86 = ((x_4223 * x_4224) + x_4226);
            let x_4229 : vec4<f32> = u_xlat15;
            let x_4230 : vec2<f32> = vec2<f32>(x_4229.z, x_4229.w);
            let x_4232 : f32 = u_xlat11.z;
            txVec70 = vec3<f32>(x_4230.x, x_4230.y, x_4232);
            let x_4239 : vec3<f32> = txVec70;
            let x_4241 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4239.xy, x_4239.z);
            u_xlat87 = x_4241;
            let x_4243 : f32 = u_xlat20.z;
            let x_4244 : f32 = u_xlat87;
            let x_4246 : f32 = u_xlat86;
            u_xlat86 = ((x_4243 * x_4244) + x_4246);
            let x_4249 : vec4<f32> = u_xlat14;
            let x_4250 : vec2<f32> = vec2<f32>(x_4249.x, x_4249.y);
            let x_4252 : f32 = u_xlat11.z;
            txVec71 = vec3<f32>(x_4250.x, x_4250.y, x_4252);
            let x_4259 : vec3<f32> = txVec71;
            let x_4261 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4259.xy, x_4259.z);
            u_xlat87 = x_4261;
            let x_4263 : f32 = u_xlat20.w;
            let x_4264 : f32 = u_xlat87;
            let x_4266 : f32 = u_xlat86;
            u_xlat86 = ((x_4263 * x_4264) + x_4266);
            let x_4269 : vec4<f32> = u_xlat14;
            let x_4270 : vec2<f32> = vec2<f32>(x_4269.z, x_4269.w);
            let x_4272 : f32 = u_xlat11.z;
            txVec72 = vec3<f32>(x_4270.x, x_4270.y, x_4272);
            let x_4279 : vec3<f32> = txVec72;
            let x_4281 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4279.xy, x_4279.z);
            u_xlat87 = x_4281;
            let x_4282 : f32 = u_xlat85;
            let x_4283 : f32 = u_xlat87;
            let x_4285 : f32 = u_xlat86;
            u_xlat84 = ((x_4282 * x_4283) + x_4285);
          } else {
            let x_4288 : vec4<f32> = u_xlat11;
            let x_4291 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4294 : vec2<f32> = ((vec2<f32>(x_4288.x, x_4288.y) * vec2<f32>(x_4291.z, x_4291.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4295 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4294.x, x_4294.y, x_4295.z, x_4295.w);
            let x_4297 : vec4<f32> = u_xlat12;
            let x_4299 : vec2<f32> = floor(vec2<f32>(x_4297.x, x_4297.y));
            let x_4300 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4299.x, x_4299.y, x_4300.z, x_4300.w);
            let x_4302 : vec4<f32> = u_xlat11;
            let x_4305 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4308 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4302.x, x_4302.y) * vec2<f32>(x_4305.z, x_4305.w)) + -(vec2<f32>(x_4308.x, x_4308.y)));
            let x_4312 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4312.x, x_4312.x, x_4312.y, x_4312.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4315 : vec4<f32> = u_xlat13;
            let x_4317 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4315.x, x_4315.x, x_4315.z, x_4315.z) * vec4<f32>(x_4317.x, x_4317.x, x_4317.z, x_4317.z));
            let x_4320 : vec4<f32> = u_xlat14;
            let x_4322 : vec2<f32> = (vec2<f32>(x_4320.y, x_4320.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4323 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4323.x, x_4322.x, x_4323.z, x_4322.y);
            let x_4325 : vec4<f32> = u_xlat14;
            let x_4328 : vec2<f32> = u_xlat64;
            let x_4330 : vec2<f32> = ((vec2<f32>(x_4325.x, x_4325.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4328));
            let x_4331 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4330.x, x_4331.y, x_4330.y, x_4331.w);
            let x_4333 : vec2<f32> = u_xlat64;
            let x_4335 : vec2<f32> = (-(x_4333) + vec2<f32>(1.0f, 1.0f));
            let x_4336 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4335.x, x_4335.y, x_4336.z, x_4336.w);
            let x_4338 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_4338, vec2<f32>(0.0f, 0.0f));
            let x_4340 : vec2<f32> = u_xlat66;
            let x_4342 : vec2<f32> = u_xlat66;
            let x_4344 : vec4<f32> = u_xlat14;
            let x_4346 : vec2<f32> = ((-(x_4340) * x_4342) + vec2<f32>(x_4344.x, x_4344.y));
            let x_4347 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4346.x, x_4346.y, x_4347.z, x_4347.w);
            let x_4349 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_4349, vec2<f32>(0.0f, 0.0f));
            let x_4352 : vec2<f32> = u_xlat66;
            let x_4354 : vec2<f32> = u_xlat66;
            let x_4356 : vec4<f32> = u_xlat13;
            let x_4358 : vec2<f32> = ((-(x_4352) * x_4354) + vec2<f32>(x_4356.y, x_4356.w));
            let x_4359 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_4358.x, x_4359.y, x_4358.y);
            let x_4361 : vec4<f32> = u_xlat14;
            let x_4363 : vec2<f32> = (vec2<f32>(x_4361.x, x_4361.y) + vec2<f32>(2.0f, 2.0f));
            let x_4364 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4363.x, x_4363.y, x_4364.z, x_4364.w);
            let x_4366 : vec3<f32> = u_xlat39;
            let x_4368 : vec2<f32> = (vec2<f32>(x_4366.x, x_4366.z) + vec2<f32>(2.0f, 2.0f));
            let x_4369 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4369.x, x_4368.x, x_4369.z, x_4368.y);
            let x_4372 : f32 = u_xlat13.y;
            u_xlat16.z = (x_4372 * 0.08163200318813323975f);
            let x_4375 : vec4<f32> = u_xlat13;
            let x_4377 : vec3<f32> = (vec3<f32>(x_4375.z, x_4375.x, x_4375.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4378 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4377.x, x_4377.y, x_4377.z, x_4378.w);
            let x_4380 : vec4<f32> = u_xlat14;
            let x_4382 : vec2<f32> = (vec2<f32>(x_4380.x, x_4380.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4383 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4382.x, x_4382.y, x_4383.z, x_4383.w);
            let x_4386 : f32 = u_xlat17.y;
            u_xlat16.x = x_4386;
            let x_4388 : vec2<f32> = u_xlat64;
            let x_4391 : vec2<f32> = ((vec2<f32>(x_4388.x, x_4388.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4392 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4392.x, x_4391.x, x_4392.z, x_4391.y);
            let x_4394 : vec2<f32> = u_xlat64;
            let x_4397 : vec2<f32> = ((vec2<f32>(x_4394.x, x_4394.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4398 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4397.x, x_4398.y, x_4397.y, x_4398.w);
            let x_4401 : f32 = u_xlat13.x;
            u_xlat14.y = x_4401;
            let x_4404 : f32 = u_xlat15.y;
            u_xlat14.w = x_4404;
            let x_4406 : vec4<f32> = u_xlat14;
            let x_4407 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4406 + x_4407);
            let x_4409 : vec2<f32> = u_xlat64;
            let x_4412 : vec2<f32> = ((vec2<f32>(x_4409.y, x_4409.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4413 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4413.x, x_4412.x, x_4413.z, x_4412.y);
            let x_4415 : vec2<f32> = u_xlat64;
            let x_4418 : vec2<f32> = ((vec2<f32>(x_4415.y, x_4415.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4419 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4418.x, x_4419.y, x_4418.y, x_4419.w);
            let x_4422 : f32 = u_xlat13.y;
            u_xlat15.y = x_4422;
            let x_4424 : vec4<f32> = u_xlat15;
            let x_4425 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4424 + x_4425);
            let x_4427 : vec4<f32> = u_xlat14;
            let x_4428 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_4427 / x_4428);
            let x_4430 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4430 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4432 : vec4<f32> = u_xlat15;
            let x_4433 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_4432 / x_4433);
            let x_4435 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4435 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4437 : vec4<f32> = u_xlat14;
            let x_4440 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4437.w, x_4437.x, x_4437.y, x_4437.z) * vec4<f32>(x_4440.x, x_4440.x, x_4440.x, x_4440.x));
            let x_4443 : vec4<f32> = u_xlat15;
            let x_4446 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_4443.x, x_4443.w, x_4443.y, x_4443.z) * vec4<f32>(x_4446.y, x_4446.y, x_4446.y, x_4446.y));
            let x_4449 : vec4<f32> = u_xlat14;
            let x_4450 : vec3<f32> = vec3<f32>(x_4449.y, x_4449.z, x_4449.w);
            let x_4451 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4450.x, x_4451.y, x_4450.y, x_4450.z);
            let x_4454 : f32 = u_xlat15.x;
            u_xlat17.y = x_4454;
            let x_4456 : vec4<f32> = u_xlat12;
            let x_4459 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4462 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4456.x, x_4456.y, x_4456.x, x_4456.y) * vec4<f32>(x_4459.x, x_4459.y, x_4459.x, x_4459.y)) + vec4<f32>(x_4462.x, x_4462.y, x_4462.z, x_4462.y));
            let x_4465 : vec4<f32> = u_xlat12;
            let x_4468 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4471 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_4465.x, x_4465.y) * vec2<f32>(x_4468.x, x_4468.y)) + vec2<f32>(x_4471.w, x_4471.y));
            let x_4475 : f32 = u_xlat17.y;
            u_xlat14.y = x_4475;
            let x_4478 : f32 = u_xlat15.z;
            u_xlat17.y = x_4478;
            let x_4480 : vec4<f32> = u_xlat12;
            let x_4483 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4486 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_4480.x, x_4480.y, x_4480.x, x_4480.y) * vec4<f32>(x_4483.x, x_4483.y, x_4483.x, x_4483.y)) + vec4<f32>(x_4486.x, x_4486.y, x_4486.z, x_4486.y));
            let x_4489 : vec4<f32> = u_xlat12;
            let x_4492 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4495 : vec4<f32> = u_xlat17;
            let x_4497 : vec2<f32> = ((vec2<f32>(x_4489.x, x_4489.y) * vec2<f32>(x_4492.x, x_4492.y)) + vec2<f32>(x_4495.w, x_4495.y));
            let x_4498 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_4497.x, x_4497.y, x_4498.z, x_4498.w);
            let x_4501 : f32 = u_xlat17.y;
            u_xlat14.z = x_4501;
            let x_4504 : vec4<f32> = u_xlat12;
            let x_4507 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4510 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4504.x, x_4504.y, x_4504.x, x_4504.y) * vec4<f32>(x_4507.x, x_4507.y, x_4507.x, x_4507.y)) + vec4<f32>(x_4510.x, x_4510.y, x_4510.x, x_4510.z));
            let x_4514 : f32 = u_xlat15.w;
            u_xlat17.y = x_4514;
            let x_4517 : vec4<f32> = u_xlat12;
            let x_4520 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4523 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4517.x, x_4517.y, x_4517.x, x_4517.y) * vec4<f32>(x_4520.x, x_4520.y, x_4520.x, x_4520.y)) + vec4<f32>(x_4523.x, x_4523.y, x_4523.z, x_4523.y));
            let x_4527 : vec4<f32> = u_xlat12;
            let x_4530 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4533 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_4527.x, x_4527.y) * vec2<f32>(x_4530.x, x_4530.y)) + vec2<f32>(x_4533.w, x_4533.y));
            let x_4537 : f32 = u_xlat17.y;
            u_xlat14.w = x_4537;
            let x_4540 : vec4<f32> = u_xlat12;
            let x_4543 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4546 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4540.x, x_4540.y) * vec2<f32>(x_4543.x, x_4543.y)) + vec2<f32>(x_4546.x, x_4546.w));
            let x_4549 : vec4<f32> = u_xlat17;
            let x_4550 : vec3<f32> = vec3<f32>(x_4549.x, x_4549.z, x_4549.w);
            let x_4551 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4550.x, x_4551.y, x_4550.y, x_4550.z);
            let x_4553 : vec4<f32> = u_xlat12;
            let x_4556 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4559 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4553.x, x_4553.y, x_4553.x, x_4553.y) * vec4<f32>(x_4556.x, x_4556.y, x_4556.x, x_4556.y)) + vec4<f32>(x_4559.x, x_4559.y, x_4559.z, x_4559.y));
            let x_4563 : vec4<f32> = u_xlat12;
            let x_4566 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4569 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4563.x, x_4563.y) * vec2<f32>(x_4566.x, x_4566.y)) + vec2<f32>(x_4569.w, x_4569.y));
            let x_4573 : f32 = u_xlat14.x;
            u_xlat15.x = x_4573;
            let x_4575 : vec4<f32> = u_xlat12;
            let x_4578 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4581 : vec4<f32> = u_xlat15;
            let x_4583 : vec2<f32> = ((vec2<f32>(x_4575.x, x_4575.y) * vec2<f32>(x_4578.x, x_4578.y)) + vec2<f32>(x_4581.x, x_4581.y));
            let x_4584 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4583.x, x_4583.y, x_4584.z, x_4584.w);
            let x_4587 : vec4<f32> = u_xlat13;
            let x_4589 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4587.x, x_4587.x, x_4587.x, x_4587.x) * x_4589);
            let x_4592 : vec4<f32> = u_xlat13;
            let x_4594 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4592.y, x_4592.y, x_4592.y, x_4592.y) * x_4594);
            let x_4597 : vec4<f32> = u_xlat13;
            let x_4599 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4597.z, x_4597.z, x_4597.z, x_4597.z) * x_4599);
            let x_4601 : vec4<f32> = u_xlat13;
            let x_4603 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4601.w, x_4601.w, x_4601.w, x_4601.w) * x_4603);
            let x_4606 : vec4<f32> = u_xlat18;
            let x_4607 : vec2<f32> = vec2<f32>(x_4606.x, x_4606.y);
            let x_4609 : f32 = u_xlat11.z;
            txVec73 = vec3<f32>(x_4607.x, x_4607.y, x_4609);
            let x_4616 : vec3<f32> = txVec73;
            let x_4618 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4616.xy, x_4616.z);
            u_xlat85 = x_4618;
            let x_4620 : vec4<f32> = u_xlat18;
            let x_4621 : vec2<f32> = vec2<f32>(x_4620.z, x_4620.w);
            let x_4623 : f32 = u_xlat11.z;
            txVec74 = vec3<f32>(x_4621.x, x_4621.y, x_4623);
            let x_4630 : vec3<f32> = txVec74;
            let x_4632 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4630.xy, x_4630.z);
            u_xlat86 = x_4632;
            let x_4633 : f32 = u_xlat86;
            let x_4635 : f32 = u_xlat23.y;
            u_xlat86 = (x_4633 * x_4635);
            let x_4638 : f32 = u_xlat23.x;
            let x_4639 : f32 = u_xlat85;
            let x_4641 : f32 = u_xlat86;
            u_xlat85 = ((x_4638 * x_4639) + x_4641);
            let x_4644 : vec2<f32> = u_xlat64;
            let x_4646 : f32 = u_xlat11.z;
            txVec75 = vec3<f32>(x_4644.x, x_4644.y, x_4646);
            let x_4653 : vec3<f32> = txVec75;
            let x_4655 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4653.xy, x_4653.z);
            u_xlat86 = x_4655;
            let x_4657 : f32 = u_xlat23.z;
            let x_4658 : f32 = u_xlat86;
            let x_4660 : f32 = u_xlat85;
            u_xlat85 = ((x_4657 * x_4658) + x_4660);
            let x_4663 : vec4<f32> = u_xlat21;
            let x_4664 : vec2<f32> = vec2<f32>(x_4663.x, x_4663.y);
            let x_4666 : f32 = u_xlat11.z;
            txVec76 = vec3<f32>(x_4664.x, x_4664.y, x_4666);
            let x_4673 : vec3<f32> = txVec76;
            let x_4675 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4673.xy, x_4673.z);
            u_xlat86 = x_4675;
            let x_4677 : f32 = u_xlat23.w;
            let x_4678 : f32 = u_xlat86;
            let x_4680 : f32 = u_xlat85;
            u_xlat85 = ((x_4677 * x_4678) + x_4680);
            let x_4683 : vec4<f32> = u_xlat19;
            let x_4684 : vec2<f32> = vec2<f32>(x_4683.x, x_4683.y);
            let x_4686 : f32 = u_xlat11.z;
            txVec77 = vec3<f32>(x_4684.x, x_4684.y, x_4686);
            let x_4693 : vec3<f32> = txVec77;
            let x_4695 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4693.xy, x_4693.z);
            u_xlat86 = x_4695;
            let x_4697 : f32 = u_xlat24.x;
            let x_4698 : f32 = u_xlat86;
            let x_4700 : f32 = u_xlat85;
            u_xlat85 = ((x_4697 * x_4698) + x_4700);
            let x_4703 : vec4<f32> = u_xlat19;
            let x_4704 : vec2<f32> = vec2<f32>(x_4703.z, x_4703.w);
            let x_4706 : f32 = u_xlat11.z;
            txVec78 = vec3<f32>(x_4704.x, x_4704.y, x_4706);
            let x_4713 : vec3<f32> = txVec78;
            let x_4715 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4713.xy, x_4713.z);
            u_xlat86 = x_4715;
            let x_4717 : f32 = u_xlat24.y;
            let x_4718 : f32 = u_xlat86;
            let x_4720 : f32 = u_xlat85;
            u_xlat85 = ((x_4717 * x_4718) + x_4720);
            let x_4723 : vec4<f32> = u_xlat20;
            let x_4724 : vec2<f32> = vec2<f32>(x_4723.x, x_4723.y);
            let x_4726 : f32 = u_xlat11.z;
            txVec79 = vec3<f32>(x_4724.x, x_4724.y, x_4726);
            let x_4733 : vec3<f32> = txVec79;
            let x_4735 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4733.xy, x_4733.z);
            u_xlat86 = x_4735;
            let x_4737 : f32 = u_xlat24.z;
            let x_4738 : f32 = u_xlat86;
            let x_4740 : f32 = u_xlat85;
            u_xlat85 = ((x_4737 * x_4738) + x_4740);
            let x_4743 : vec4<f32> = u_xlat21;
            let x_4744 : vec2<f32> = vec2<f32>(x_4743.z, x_4743.w);
            let x_4746 : f32 = u_xlat11.z;
            txVec80 = vec3<f32>(x_4744.x, x_4744.y, x_4746);
            let x_4753 : vec3<f32> = txVec80;
            let x_4755 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4753.xy, x_4753.z);
            u_xlat86 = x_4755;
            let x_4757 : f32 = u_xlat24.w;
            let x_4758 : f32 = u_xlat86;
            let x_4760 : f32 = u_xlat85;
            u_xlat85 = ((x_4757 * x_4758) + x_4760);
            let x_4763 : vec4<f32> = u_xlat22;
            let x_4764 : vec2<f32> = vec2<f32>(x_4763.x, x_4763.y);
            let x_4766 : f32 = u_xlat11.z;
            txVec81 = vec3<f32>(x_4764.x, x_4764.y, x_4766);
            let x_4773 : vec3<f32> = txVec81;
            let x_4775 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4773.xy, x_4773.z);
            u_xlat86 = x_4775;
            let x_4777 : f32 = u_xlat25.x;
            let x_4778 : f32 = u_xlat86;
            let x_4780 : f32 = u_xlat85;
            u_xlat85 = ((x_4777 * x_4778) + x_4780);
            let x_4783 : vec4<f32> = u_xlat22;
            let x_4784 : vec2<f32> = vec2<f32>(x_4783.z, x_4783.w);
            let x_4786 : f32 = u_xlat11.z;
            txVec82 = vec3<f32>(x_4784.x, x_4784.y, x_4786);
            let x_4793 : vec3<f32> = txVec82;
            let x_4795 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4793.xy, x_4793.z);
            u_xlat86 = x_4795;
            let x_4797 : f32 = u_xlat25.y;
            let x_4798 : f32 = u_xlat86;
            let x_4800 : f32 = u_xlat85;
            u_xlat85 = ((x_4797 * x_4798) + x_4800);
            let x_4803 : vec2<f32> = u_xlat40;
            let x_4805 : f32 = u_xlat11.z;
            txVec83 = vec3<f32>(x_4803.x, x_4803.y, x_4805);
            let x_4812 : vec3<f32> = txVec83;
            let x_4814 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4812.xy, x_4812.z);
            u_xlat86 = x_4814;
            let x_4816 : f32 = u_xlat25.z;
            let x_4817 : f32 = u_xlat86;
            let x_4819 : f32 = u_xlat85;
            u_xlat85 = ((x_4816 * x_4817) + x_4819);
            let x_4822 : vec2<f32> = u_xlat72;
            let x_4824 : f32 = u_xlat11.z;
            txVec84 = vec3<f32>(x_4822.x, x_4822.y, x_4824);
            let x_4831 : vec3<f32> = txVec84;
            let x_4833 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4831.xy, x_4831.z);
            u_xlat86 = x_4833;
            let x_4835 : f32 = u_xlat25.w;
            let x_4836 : f32 = u_xlat86;
            let x_4838 : f32 = u_xlat85;
            u_xlat85 = ((x_4835 * x_4836) + x_4838);
            let x_4841 : vec4<f32> = u_xlat17;
            let x_4842 : vec2<f32> = vec2<f32>(x_4841.x, x_4841.y);
            let x_4844 : f32 = u_xlat11.z;
            txVec85 = vec3<f32>(x_4842.x, x_4842.y, x_4844);
            let x_4851 : vec3<f32> = txVec85;
            let x_4853 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4851.xy, x_4851.z);
            u_xlat86 = x_4853;
            let x_4855 : f32 = u_xlat13.x;
            let x_4856 : f32 = u_xlat86;
            let x_4858 : f32 = u_xlat85;
            u_xlat85 = ((x_4855 * x_4856) + x_4858);
            let x_4861 : vec4<f32> = u_xlat17;
            let x_4862 : vec2<f32> = vec2<f32>(x_4861.z, x_4861.w);
            let x_4864 : f32 = u_xlat11.z;
            txVec86 = vec3<f32>(x_4862.x, x_4862.y, x_4864);
            let x_4871 : vec3<f32> = txVec86;
            let x_4873 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4871.xy, x_4871.z);
            u_xlat86 = x_4873;
            let x_4875 : f32 = u_xlat13.y;
            let x_4876 : f32 = u_xlat86;
            let x_4878 : f32 = u_xlat85;
            u_xlat85 = ((x_4875 * x_4876) + x_4878);
            let x_4881 : vec2<f32> = u_xlat67;
            let x_4883 : f32 = u_xlat11.z;
            txVec87 = vec3<f32>(x_4881.x, x_4881.y, x_4883);
            let x_4890 : vec3<f32> = txVec87;
            let x_4892 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4890.xy, x_4890.z);
            u_xlat86 = x_4892;
            let x_4894 : f32 = u_xlat13.z;
            let x_4895 : f32 = u_xlat86;
            let x_4897 : f32 = u_xlat85;
            u_xlat85 = ((x_4894 * x_4895) + x_4897);
            let x_4900 : vec4<f32> = u_xlat12;
            let x_4901 : vec2<f32> = vec2<f32>(x_4900.x, x_4900.y);
            let x_4903 : f32 = u_xlat11.z;
            txVec88 = vec3<f32>(x_4901.x, x_4901.y, x_4903);
            let x_4910 : vec3<f32> = txVec88;
            let x_4912 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4910.xy, x_4910.z);
            u_xlat86 = x_4912;
            let x_4914 : f32 = u_xlat13.w;
            let x_4915 : f32 = u_xlat86;
            let x_4917 : f32 = u_xlat85;
            u_xlat84 = ((x_4914 * x_4915) + x_4917);
          }
        }
      } else {
        let x_4921 : vec4<f32> = u_xlat11;
        let x_4922 : vec2<f32> = vec2<f32>(x_4921.x, x_4921.y);
        let x_4924 : f32 = u_xlat11.z;
        txVec89 = vec3<f32>(x_4922.x, x_4922.y, x_4924);
        let x_4931 : vec3<f32> = txVec89;
        let x_4933 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4931.xy, x_4931.z);
        u_xlat84 = x_4933;
      }
      let x_4934 : i32 = u_xlati82;
      let x_4936 : f32 = x_241.x_AdditionalShadowParams[x_4934].x;
      u_xlat85 = (1.0f + -(x_4936));
      let x_4939 : f32 = u_xlat84;
      let x_4940 : i32 = u_xlati82;
      let x_4942 : f32 = x_241.x_AdditionalShadowParams[x_4940].x;
      let x_4944 : f32 = u_xlat85;
      u_xlat84 = ((x_4939 * x_4942) + x_4944);
      let x_4947 : f32 = u_xlat11.z;
      u_xlatb85 = (0.0f >= x_4947);
      let x_4951 : f32 = u_xlat11.z;
      u_xlatb86 = (x_4951 >= 1.0f);
      let x_4953 : bool = u_xlatb85;
      let x_4954 : bool = u_xlatb86;
      u_xlatb85 = (x_4953 | x_4954);
      let x_4956 : bool = u_xlatb85;
      let x_4957 : f32 = u_xlat84;
      u_xlat84 = select(x_4957, 1.0f, x_4956);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_4960 : f32 = u_xlat84;
    u_xlat85 = (-(x_4960) + 1.0f);
    let x_4964 : f32 = u_xlat2.x;
    let x_4965 : f32 = u_xlat85;
    let x_4967 : f32 = u_xlat84;
    u_xlat84 = ((x_4964 * x_4965) + x_4967);
    let x_4970 : f32 = u_xlat57.x;
    let x_4971 : f32 = u_xlat84;
    u_xlat57.x = (x_4970 * x_4971);
    let x_4974 : vec4<f32> = u_xlat3;
    let x_4976 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_4974.x, x_4974.y, x_4974.z), vec3<f32>(x_4976.x, x_4976.y, x_4976.z));
    let x_4979 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4979, 0.0f, 1.0f);
    let x_4982 : f32 = u_xlat57.x;
    let x_4983 : f32 = u_xlat84;
    u_xlat57.x = (x_4982 * x_4983);
    let x_4986 : vec2<f32> = u_xlat57;
    let x_4988 : i32 = u_xlati82;
    let x_4990 : vec4<f32> = x_3527.x_AdditionalLightsColor[x_4988];
    let x_4992 : vec3<f32> = (vec3<f32>(x_4986.x, x_4986.x, x_4986.x) * vec3<f32>(x_4990.x, x_4990.y, x_4990.z));
    let x_4993 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4992.x, x_4992.y, x_4992.z, x_4993.w);
    let x_4995 : vec4<f32> = u_xlat9;
    let x_4997 : f32 = u_xlat83;
    let x_5000 : vec4<f32> = u_xlat7;
    let x_5002 : vec3<f32> = ((vec3<f32>(x_4995.x, x_4995.y, x_4995.z) * vec3<f32>(x_4997, x_4997, x_4997)) + vec3<f32>(x_5000.x, x_5000.y, x_5000.z));
    let x_5003 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5002.x, x_5002.y, x_5002.z, x_5003.w);
    let x_5005 : vec4<f32> = u_xlat9;
    let x_5007 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_5005.x, x_5005.y, x_5005.z), vec3<f32>(x_5007.x, x_5007.y, x_5007.z));
    let x_5010 : f32 = u_xlat82;
    u_xlat82 = max(x_5010, 1.17549435e-38f);
    let x_5012 : f32 = u_xlat82;
    u_xlat82 = inverseSqrt(x_5012);
    let x_5014 : f32 = u_xlat82;
    let x_5016 : vec4<f32> = u_xlat9;
    let x_5018 : vec3<f32> = (vec3<f32>(x_5014, x_5014, x_5014) * vec3<f32>(x_5016.x, x_5016.y, x_5016.z));
    let x_5019 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5018.x, x_5018.y, x_5018.z, x_5019.w);
    let x_5021 : vec4<f32> = u_xlat3;
    let x_5023 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_5021.x, x_5021.y, x_5021.z), vec3<f32>(x_5023.x, x_5023.y, x_5023.z));
    let x_5026 : f32 = u_xlat82;
    u_xlat82 = clamp(x_5026, 0.0f, 1.0f);
    let x_5028 : vec4<f32> = u_xlat10;
    let x_5030 : vec4<f32> = u_xlat9;
    u_xlat57.x = dot(vec3<f32>(x_5028.x, x_5028.y, x_5028.z), vec3<f32>(x_5030.x, x_5030.y, x_5030.z));
    let x_5035 : f32 = u_xlat57.x;
    u_xlat57.x = clamp(x_5035, 0.0f, 1.0f);
    let x_5038 : f32 = u_xlat82;
    let x_5039 : f32 = u_xlat82;
    u_xlat82 = (x_5038 * x_5039);
    let x_5041 : f32 = u_xlat82;
    let x_5043 : f32 = u_xlat28.x;
    u_xlat82 = ((x_5041 * x_5043) + 1.00001001358032226562f);
    let x_5047 : f32 = u_xlat57.x;
    let x_5049 : f32 = u_xlat57.x;
    u_xlat57.x = (x_5047 * x_5049);
    let x_5052 : f32 = u_xlat82;
    let x_5053 : f32 = u_xlat82;
    u_xlat82 = (x_5052 * x_5053);
    let x_5056 : f32 = u_xlat57.x;
    u_xlat57.x = max(x_5056, 0.10000000149011611938f);
    let x_5059 : f32 = u_xlat82;
    let x_5061 : f32 = u_xlat57.x;
    u_xlat82 = (x_5059 * x_5061);
    let x_5064 : f32 = u_xlat5.x;
    let x_5065 : f32 = u_xlat82;
    u_xlat82 = (x_5064 * x_5065);
    let x_5067 : f32 = u_xlat81;
    let x_5068 : f32 = u_xlat82;
    u_xlat82 = (x_5067 / x_5068);
    let x_5070 : f32 = u_xlat82;
    let x_5073 : vec4<f32> = u_xlat4;
    let x_5075 : vec3<f32> = ((vec3<f32>(x_5070, x_5070, x_5070) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_5073.x, x_5073.y, x_5073.z));
    let x_5076 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5075.x, x_5075.y, x_5075.z, x_5076.w);
    let x_5078 : vec4<f32> = u_xlat9;
    let x_5080 : vec4<f32> = u_xlat11;
    let x_5083 : vec4<f32> = u_xlat8;
    let x_5085 : vec3<f32> = ((vec3<f32>(x_5078.x, x_5078.y, x_5078.z) * vec3<f32>(x_5080.x, x_5080.y, x_5080.z)) + vec3<f32>(x_5083.x, x_5083.y, x_5083.z));
    let x_5086 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5085.x, x_5085.y, x_5085.z, x_5086.w);

    continuing {
      let x_5088 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5088 + bitcast<u32>(1i));
    }
  }
  let x_5090 : vec3<f32> = u_xlat26;
  let x_5091 : f32 = u_xlat31;
  let x_5094 : vec4<f32> = u_xlat6;
  u_xlat0 = ((x_5090 * vec3<f32>(x_5091, x_5091, x_5091)) + vec3<f32>(x_5094.x, x_5094.y, x_5094.z));
  let x_5097 : vec4<f32> = u_xlat8;
  let x_5099 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_5097.x, x_5097.y, x_5097.z) + x_5099);
  let x_5103 : vec4<f32> = vs_INTERP6;
  let x_5105 : vec3<f32> = u_xlat1;
  let x_5107 : vec3<f32> = u_xlat0;
  let x_5108 : vec3<f32> = ((vec3<f32>(x_5103.w, x_5103.w, x_5103.w) * x_5105) + x_5107);
  let x_5109 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5108.x, x_5108.y, x_5108.z, x_5109.w);
  let x_5111 : bool = u_xlatb54;
  let x_5112 : f32 = u_xlat79;
  SV_Target0.w = select(1.0f, x_5112, x_5111);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_INTERP9_param : vec3<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(2) vs_INTERP5_param : vec4<f32>, @location(3) vs_INTERP6_param : vec4<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(0) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


