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

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_128 : PGlobals;

var<private> u_xlat5 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_138 : UnityPerMaterial;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat32 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_246 : LightShadows;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu0 : u32;

var<private> u_xlati0 : i32;

var<private> u_xlatb0 : bool;

var<private> u_xlatb79 : bool;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat79 : f32;

var<private> u_xlatb80 : bool;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat29 : vec3<f32>;

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

var<private> u_xlatb3 : bool;

var<private> u_xlatb29 : bool;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlatb55 : bool;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlatb58 : bool;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat84 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlat35 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat54 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu81 : u32;

var<private> u_xlati83 : i32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_3650 : AdditionalLights;

var<private> u_xlati84 : i32;

var<private> u_xlatb85 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat86 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

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

var<private> u_xlatu3 : u32;

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
  var x_1768 : f32;
  var x_1819 : f32;
  var x_1897 : f32;
  var x_1908 : f32;
  var x_1919 : f32;
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
  var x_3227 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3786 : f32;
  var x_3795 : f32;
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
  let x_97 : vec3<f32> = u_xlat0;
  let x_99 : vec4<f32> = vs_INTERP4;
  let x_101 : vec3<f32> = (vec3<f32>(x_97.x, x_97.x, x_97.x) * vec3<f32>(x_99.x, x_99.y, x_99.z));
  let x_102 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_101.x, x_101.y, x_101.z, x_102.w);
  let x_105 : vec3<f32> = u_xlat26;
  let x_106 : vec3<f32> = u_xlat0;
  let x_108 : vec3<f32> = (x_105 * vec3<f32>(x_106.x, x_106.x, x_106.x));
  let x_109 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_108.x, x_108.y, x_108.z, x_109.w);
  let x_124 : vec4<f32> = vs_INTERP5;
  let x_131 : f32 = x_128.x_GlobalMipBias.x;
  let x_132 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_124.x, x_124.y), x_131);
  u_xlat4 = x_132;
  let x_134 : vec4<f32> = u_xlat4;
  let x_142 : vec4<f32> = x_138.Color_C30C7CA3;
  u_xlat5 = (vec3<f32>(x_134.x, x_134.y, x_134.z) * vec3<f32>(x_142.x, x_142.y, x_142.z));
  let x_151 : vec4<f32> = vs_INTERP5;
  let x_154 : f32 = x_128.x_GlobalMipBias.x;
  let x_155 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_151.x, x_151.y), x_154);
  u_xlat6 = vec4<f32>(x_155.w, x_155.x, x_155.y, x_155.z);
  let x_158 : vec4<f32> = u_xlat6;
  u_xlat7 = ((vec4<f32>(x_158.y, x_158.z, x_158.w, x_158.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_165 : vec4<f32> = u_xlat7;
  let x_166 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_165, x_166);
  let x_170 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_170);
  let x_174 : vec3<f32> = u_xlat0;
  let x_176 : vec4<f32> = u_xlat7;
  u_xlat32 = (vec3<f32>(x_174.x, x_174.x, x_174.x) * vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_181 : f32 = vs_INTERP6.y;
  u_xlat0.x = (x_181 * 200.0f);
  let x_186 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_186, 1.0f);
  let x_189 : vec3<f32> = u_xlat0;
  let x_191 : vec4<f32> = u_xlat4;
  let x_193 : vec3<f32> = (vec3<f32>(x_189.x, x_189.x, x_189.x) * vec3<f32>(x_191.x, x_191.y, x_191.z));
  let x_194 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_196 : vec4<f32> = u_xlat3;
  let x_198 : vec3<f32> = u_xlat32;
  let x_200 : vec3<f32> = (vec3<f32>(x_196.x, x_196.y, x_196.z) * vec3<f32>(x_198.y, x_198.y, x_198.y));
  let x_201 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_200.x, x_200.y, x_200.z, x_201.w);
  let x_203 : vec3<f32> = u_xlat32;
  let x_205 : vec4<f32> = u_xlat2;
  let x_208 : vec4<f32> = u_xlat3;
  let x_210 : vec3<f32> = ((vec3<f32>(x_203.x, x_203.x, x_203.x) * vec3<f32>(x_205.x, x_205.y, x_205.z)) + vec3<f32>(x_208.x, x_208.y, x_208.z));
  let x_211 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
  let x_213 : vec3<f32> = u_xlat32;
  let x_215 : vec3<f32> = u_xlat1;
  let x_217 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_213.z, x_213.z, x_213.z) * x_215) + vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_220 : vec3<f32> = u_xlat1;
  let x_221 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_220, x_221);
  let x_225 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_225, 1.17549435e-38f);
  let x_230 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_230);
  let x_233 : vec3<f32> = u_xlat0;
  let x_235 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_233.x, x_233.x, x_233.x) * x_235);
  let x_238 : vec3<f32> = vs_INTERP8;
  let x_248 : vec4<f32> = x_246.x_CascadeShadowSplitSpheres0;
  let x_251 : vec3<f32> = (x_238 + -(vec3<f32>(x_248.x, x_248.y, x_248.z)));
  let x_252 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_254 : vec3<f32> = vs_INTERP8;
  let x_257 : vec4<f32> = x_246.x_CascadeShadowSplitSpheres1;
  let x_260 : vec3<f32> = (x_254 + -(vec3<f32>(x_257.x, x_257.y, x_257.z)));
  let x_261 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_263 : vec3<f32> = vs_INTERP8;
  let x_265 : vec4<f32> = x_246.x_CascadeShadowSplitSpheres2;
  let x_268 : vec3<f32> = (x_263 + -(vec3<f32>(x_265.x, x_265.y, x_265.z)));
  let x_269 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_272 : vec3<f32> = vs_INTERP8;
  let x_275 : vec4<f32> = x_246.x_CascadeShadowSplitSpheres3;
  let x_278 : vec3<f32> = (x_272 + -(vec3<f32>(x_275.x, x_275.y, x_275.z)));
  let x_279 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
  let x_281 : vec4<f32> = u_xlat2;
  let x_283 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_281.x, x_281.y, x_281.z), vec3<f32>(x_283.x, x_283.y, x_283.z));
  let x_287 : vec4<f32> = u_xlat3;
  let x_289 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_287.x, x_287.y, x_287.z), vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_293 : vec4<f32> = u_xlat7;
  let x_295 : vec4<f32> = u_xlat7;
  u_xlat2.z = dot(vec3<f32>(x_293.x, x_293.y, x_293.z), vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_299 : vec4<f32> = u_xlat8;
  let x_301 : vec4<f32> = u_xlat8;
  u_xlat2.w = dot(vec3<f32>(x_299.x, x_299.y, x_299.z), vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_308 : vec4<f32> = u_xlat2;
  let x_311 : vec4<f32> = x_246.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_308 < x_311);
  let x_314 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_314);
  let x_318 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_318);
  let x_322 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_322);
  let x_326 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_326);
  let x_330 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_330);
  let x_335 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_335);
  let x_339 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_339);
  let x_342 : vec4<f32> = u_xlat2;
  let x_344 : vec4<f32> = u_xlat3;
  let x_346 : vec3<f32> = (vec3<f32>(x_342.x, x_342.y, x_342.z) + vec3<f32>(x_344.y, x_344.z, x_344.w));
  let x_347 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_349 : vec4<f32> = u_xlat2;
  let x_352 : vec3<f32> = max(vec3<f32>(x_349.x, x_349.y, x_349.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_353 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_353.x, x_352.x, x_352.y, x_352.z);
  let x_355 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(x_355, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_362 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_362) + 4.0f);
  let x_369 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_369);
  let x_373 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_373) << bitcast<u32>(2i));
  let x_376 : vec3<f32> = vs_INTERP8;
  let x_378 : i32 = u_xlati0;
  let x_381 : i32 = u_xlati0;
  let x_385 : vec4<f32> = x_246.x_MainLightWorldToShadow[((x_378 + 1i) / 4i)][((x_381 + 1i) % 4i)];
  let x_387 : vec3<f32> = (vec3<f32>(x_376.y, x_376.y, x_376.y) * vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_388 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_390 : i32 = u_xlati0;
  let x_392 : i32 = u_xlati0;
  let x_395 : vec4<f32> = x_246.x_MainLightWorldToShadow[(x_390 / 4i)][(x_392 % 4i)];
  let x_397 : vec3<f32> = vs_INTERP8;
  let x_400 : vec4<f32> = u_xlat2;
  let x_402 : vec3<f32> = ((vec3<f32>(x_395.x, x_395.y, x_395.z) * vec3<f32>(x_397.x, x_397.x, x_397.x)) + vec3<f32>(x_400.x, x_400.y, x_400.z));
  let x_403 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
  let x_405 : i32 = u_xlati0;
  let x_408 : i32 = u_xlati0;
  let x_412 : vec4<f32> = x_246.x_MainLightWorldToShadow[((x_405 + 2i) / 4i)][((x_408 + 2i) % 4i)];
  let x_414 : vec3<f32> = vs_INTERP8;
  let x_417 : vec4<f32> = u_xlat2;
  let x_419 : vec3<f32> = ((vec3<f32>(x_412.x, x_412.y, x_412.z) * vec3<f32>(x_414.z, x_414.z, x_414.z)) + vec3<f32>(x_417.x, x_417.y, x_417.z));
  let x_420 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_422 : vec4<f32> = u_xlat2;
  let x_424 : i32 = u_xlati0;
  let x_427 : i32 = u_xlati0;
  let x_431 : vec4<f32> = x_246.x_MainLightWorldToShadow[((x_424 + 3i) / 4i)][((x_427 + 3i) % 4i)];
  let x_433 : vec3<f32> = (vec3<f32>(x_422.x, x_422.y, x_422.z) + vec3<f32>(x_431.x, x_431.y, x_431.z));
  let x_434 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
  let x_439 : f32 = x_246.x_MainLightShadowParams.y;
  u_xlatb0 = (0.0f < x_439);
  let x_441 : bool = u_xlatb0;
  if (x_441) {
    let x_446 : f32 = x_246.x_MainLightShadowParams.y;
    u_xlatb79 = (x_446 == 1.0f);
    let x_448 : bool = u_xlatb79;
    if (x_448) {
      let x_451 : vec4<f32> = u_xlat2;
      let x_455 : vec4<f32> = x_246.x_MainLightShadowOffset0;
      u_xlat3 = (vec4<f32>(x_451.x, x_451.y, x_451.x, x_451.y) + x_455);
      let x_459 : vec4<f32> = u_xlat3;
      let x_460 : vec2<f32> = vec2<f32>(x_459.x, x_459.y);
      let x_462 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_460.x, x_460.y, x_462);
      let x_474 : vec3<f32> = txVec0;
      let x_476 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_474.xy, x_474.z);
      u_xlat7.x = x_476;
      let x_479 : vec4<f32> = u_xlat3;
      let x_480 : vec2<f32> = vec2<f32>(x_479.z, x_479.w);
      let x_482 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_480.x, x_480.y, x_482);
      let x_489 : vec3<f32> = txVec1;
      let x_491 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_489.xy, x_489.z);
      u_xlat7.y = x_491;
      let x_493 : vec4<f32> = u_xlat2;
      let x_497 : vec4<f32> = x_246.x_MainLightShadowOffset1;
      u_xlat3 = (vec4<f32>(x_493.x, x_493.y, x_493.x, x_493.y) + x_497);
      let x_500 : vec4<f32> = u_xlat3;
      let x_501 : vec2<f32> = vec2<f32>(x_500.x, x_500.y);
      let x_503 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_501.x, x_501.y, x_503);
      let x_510 : vec3<f32> = txVec2;
      let x_512 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_510.xy, x_510.z);
      u_xlat7.z = x_512;
      let x_515 : vec4<f32> = u_xlat3;
      let x_516 : vec2<f32> = vec2<f32>(x_515.z, x_515.w);
      let x_518 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_516.x, x_516.y, x_518);
      let x_525 : vec3<f32> = txVec3;
      let x_527 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_525.xy, x_525.z);
      u_xlat7.w = x_527;
      let x_530 : vec4<f32> = u_xlat7;
      u_xlat79 = dot(x_530, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_537 : f32 = x_246.x_MainLightShadowParams.y;
      u_xlatb80 = (x_537 == 2.0f);
      let x_539 : bool = u_xlatb80;
      if (x_539) {
        let x_542 : vec4<f32> = u_xlat2;
        let x_546 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_551 : vec2<f32> = ((vec2<f32>(x_542.x, x_542.y) * vec2<f32>(x_546.z, x_546.w)) + vec2<f32>(0.5f, 0.5f));
        let x_552 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_551.x, x_551.y, x_552.z, x_552.w);
        let x_554 : vec4<f32> = u_xlat3;
        let x_556 : vec2<f32> = floor(vec2<f32>(x_554.x, x_554.y));
        let x_557 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_556.x, x_556.y, x_557.z, x_557.w);
        let x_561 : vec4<f32> = u_xlat2;
        let x_564 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_567 : vec4<f32> = u_xlat3;
        u_xlat55 = ((vec2<f32>(x_561.x, x_561.y) * vec2<f32>(x_564.z, x_564.w)) + -(vec2<f32>(x_567.x, x_567.y)));
        let x_571 : vec2<f32> = u_xlat55;
        u_xlat7 = (vec4<f32>(x_571.x, x_571.x, x_571.y, x_571.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_575 : vec4<f32> = u_xlat7;
        let x_577 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_575.x, x_575.x, x_575.z, x_575.z) * vec4<f32>(x_577.x, x_577.x, x_577.z, x_577.z));
        let x_580 : vec4<f32> = u_xlat8;
        let x_584 : vec2<f32> = (vec2<f32>(x_580.y, x_580.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_585 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_584.x, x_585.y, x_584.y, x_585.w);
        let x_587 : vec4<f32> = u_xlat8;
        let x_590 : vec2<f32> = u_xlat55;
        let x_592 : vec2<f32> = ((vec2<f32>(x_587.x, x_587.z) * vec2<f32>(0.5f, 0.5f)) + -(x_590));
        let x_593 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_592.x, x_592.y, x_593.z, x_593.w);
        let x_596 : vec2<f32> = u_xlat55;
        u_xlat60 = (-(x_596) + vec2<f32>(1.0f, 1.0f));
        let x_601 : vec2<f32> = u_xlat55;
        let x_603 : vec2<f32> = min(x_601, vec2<f32>(0.0f, 0.0f));
        let x_604 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_603.x, x_603.y, x_604.z, x_604.w);
        let x_606 : vec4<f32> = u_xlat9;
        let x_609 : vec4<f32> = u_xlat9;
        let x_612 : vec2<f32> = u_xlat60;
        let x_613 : vec2<f32> = ((-(vec2<f32>(x_606.x, x_606.y)) * vec2<f32>(x_609.x, x_609.y)) + x_612);
        let x_614 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_613.x, x_613.y, x_614.z, x_614.w);
        let x_616 : vec2<f32> = u_xlat55;
        u_xlat55 = max(x_616, vec2<f32>(0.0f, 0.0f));
        let x_618 : vec2<f32> = u_xlat55;
        let x_620 : vec2<f32> = u_xlat55;
        let x_622 : vec4<f32> = u_xlat7;
        u_xlat55 = ((-(x_618) * x_620) + vec2<f32>(x_622.y, x_622.w));
        let x_625 : vec4<f32> = u_xlat9;
        let x_627 : vec2<f32> = (vec2<f32>(x_625.x, x_625.y) + vec2<f32>(1.0f, 1.0f));
        let x_628 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_627.x, x_627.y, x_628.z, x_628.w);
        let x_630 : vec2<f32> = u_xlat55;
        u_xlat55 = (x_630 + vec2<f32>(1.0f, 1.0f));
        let x_633 : vec4<f32> = u_xlat8;
        let x_637 : vec2<f32> = (vec2<f32>(x_633.x, x_633.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_638 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_637.x, x_637.y, x_638.z, x_638.w);
        let x_640 : vec2<f32> = u_xlat60;
        let x_641 : vec2<f32> = (x_640 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_642 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_641.x, x_641.y, x_642.z, x_642.w);
        let x_644 : vec4<f32> = u_xlat9;
        let x_646 : vec2<f32> = (vec2<f32>(x_644.x, x_644.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_647 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_646.x, x_646.y, x_647.z, x_647.w);
        let x_650 : vec2<f32> = u_xlat55;
        let x_651 : vec2<f32> = (x_650 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_652 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_651.x, x_651.y, x_652.z, x_652.w);
        let x_654 : vec4<f32> = u_xlat7;
        u_xlat55 = (vec2<f32>(x_654.y, x_654.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_658 : f32 = u_xlat9.x;
        u_xlat10.z = x_658;
        let x_661 : f32 = u_xlat55.x;
        u_xlat10.w = x_661;
        let x_664 : f32 = u_xlat11.x;
        u_xlat8.z = x_664;
        let x_667 : f32 = u_xlat7.x;
        u_xlat8.w = x_667;
        let x_670 : vec4<f32> = u_xlat8;
        let x_672 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_670.z, x_670.w, x_670.x, x_670.z) + vec4<f32>(x_672.z, x_672.w, x_672.x, x_672.z));
        let x_676 : f32 = u_xlat10.y;
        u_xlat9.z = x_676;
        let x_679 : f32 = u_xlat55.y;
        u_xlat9.w = x_679;
        let x_682 : f32 = u_xlat8.y;
        u_xlat11.z = x_682;
        let x_685 : f32 = u_xlat7.z;
        u_xlat11.w = x_685;
        let x_687 : vec4<f32> = u_xlat9;
        let x_689 : vec4<f32> = u_xlat11;
        let x_691 : vec3<f32> = (vec3<f32>(x_687.z, x_687.y, x_687.w) + vec3<f32>(x_689.z, x_689.y, x_689.w));
        let x_692 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
        let x_694 : vec4<f32> = u_xlat8;
        let x_696 : vec4<f32> = u_xlat12;
        let x_698 : vec3<f32> = (vec3<f32>(x_694.x, x_694.z, x_694.w) / vec3<f32>(x_696.z, x_696.w, x_696.y));
        let x_699 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
        let x_701 : vec4<f32> = u_xlat8;
        let x_707 : vec3<f32> = (vec3<f32>(x_701.x, x_701.y, x_701.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_708 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
        let x_710 : vec4<f32> = u_xlat11;
        let x_712 : vec4<f32> = u_xlat7;
        let x_714 : vec3<f32> = (vec3<f32>(x_710.z, x_710.y, x_710.w) / vec3<f32>(x_712.x, x_712.y, x_712.z));
        let x_715 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
        let x_717 : vec4<f32> = u_xlat9;
        let x_719 : vec3<f32> = (vec3<f32>(x_717.x, x_717.y, x_717.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_720 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_719.x, x_719.y, x_719.z, x_720.w);
        let x_722 : vec4<f32> = u_xlat8;
        let x_725 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_727 : vec3<f32> = (vec3<f32>(x_722.y, x_722.x, x_722.z) * vec3<f32>(x_725.x, x_725.x, x_725.x));
        let x_728 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_727.x, x_727.y, x_727.z, x_728.w);
        let x_730 : vec4<f32> = u_xlat9;
        let x_733 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_735 : vec3<f32> = (vec3<f32>(x_730.x, x_730.y, x_730.z) * vec3<f32>(x_733.y, x_733.y, x_733.y));
        let x_736 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_735.x, x_735.y, x_735.z, x_736.w);
        let x_739 : f32 = u_xlat9.x;
        u_xlat8.w = x_739;
        let x_741 : vec4<f32> = u_xlat3;
        let x_744 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_747 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_741.x, x_741.y, x_741.x, x_741.y) * vec4<f32>(x_744.x, x_744.y, x_744.x, x_744.y)) + vec4<f32>(x_747.y, x_747.w, x_747.x, x_747.w));
        let x_750 : vec4<f32> = u_xlat3;
        let x_753 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_756 : vec4<f32> = u_xlat8;
        u_xlat55 = ((vec2<f32>(x_750.x, x_750.y) * vec2<f32>(x_753.x, x_753.y)) + vec2<f32>(x_756.z, x_756.w));
        let x_760 : f32 = u_xlat8.y;
        u_xlat9.w = x_760;
        let x_762 : vec4<f32> = u_xlat9;
        let x_763 : vec2<f32> = vec2<f32>(x_762.y, x_762.z);
        let x_764 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_764.x, x_763.x, x_764.z, x_763.y);
        let x_766 : vec4<f32> = u_xlat3;
        let x_769 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_772 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_766.x, x_766.y, x_766.x, x_766.y) * vec4<f32>(x_769.x, x_769.y, x_769.x, x_769.y)) + vec4<f32>(x_772.x, x_772.y, x_772.z, x_772.y));
        let x_775 : vec4<f32> = u_xlat3;
        let x_778 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_781 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_775.x, x_775.y, x_775.x, x_775.y) * vec4<f32>(x_778.x, x_778.y, x_778.x, x_778.y)) + vec4<f32>(x_781.w, x_781.y, x_781.w, x_781.z));
        let x_784 : vec4<f32> = u_xlat3;
        let x_787 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_790 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_784.x, x_784.y, x_784.x, x_784.y) * vec4<f32>(x_787.x, x_787.y, x_787.x, x_787.y)) + vec4<f32>(x_790.x, x_790.w, x_790.z, x_790.w));
        let x_794 : vec4<f32> = u_xlat7;
        let x_796 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_794.x, x_794.x, x_794.x, x_794.y) * vec4<f32>(x_796.z, x_796.w, x_796.y, x_796.z));
        let x_800 : vec4<f32> = u_xlat7;
        let x_802 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_800.y, x_800.y, x_800.z, x_800.z) * x_802);
        let x_806 : f32 = u_xlat7.z;
        let x_808 : f32 = u_xlat12.y;
        u_xlat80 = (x_806 * x_808);
        let x_811 : vec4<f32> = u_xlat10;
        let x_812 : vec2<f32> = vec2<f32>(x_811.x, x_811.y);
        let x_814 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_812.x, x_812.y, x_814);
        let x_821 : vec3<f32> = txVec4;
        let x_823 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_821.xy, x_821.z);
        u_xlat3.x = x_823;
        let x_826 : vec4<f32> = u_xlat10;
        let x_827 : vec2<f32> = vec2<f32>(x_826.z, x_826.w);
        let x_829 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_827.x, x_827.y, x_829);
        let x_837 : vec3<f32> = txVec5;
        let x_839 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_837.xy, x_837.z);
        u_xlat29.x = x_839;
        let x_842 : f32 = u_xlat29.x;
        let x_844 : f32 = u_xlat13.y;
        u_xlat29.x = (x_842 * x_844);
        let x_848 : f32 = u_xlat13.x;
        let x_850 : f32 = u_xlat3.x;
        let x_853 : f32 = u_xlat29.x;
        u_xlat3.x = ((x_848 * x_850) + x_853);
        let x_857 : vec2<f32> = u_xlat55;
        let x_859 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_857.x, x_857.y, x_859);
        let x_866 : vec3<f32> = txVec6;
        let x_868 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_866.xy, x_866.z);
        u_xlat29.x = x_868;
        let x_871 : f32 = u_xlat13.z;
        let x_873 : f32 = u_xlat29.x;
        let x_876 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_871 * x_873) + x_876);
        let x_880 : vec4<f32> = u_xlat9;
        let x_881 : vec2<f32> = vec2<f32>(x_880.x, x_880.y);
        let x_883 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_881.x, x_881.y, x_883);
        let x_890 : vec3<f32> = txVec7;
        let x_892 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_890.xy, x_890.z);
        u_xlat29.x = x_892;
        let x_895 : f32 = u_xlat13.w;
        let x_897 : f32 = u_xlat29.x;
        let x_900 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_895 * x_897) + x_900);
        let x_904 : vec4<f32> = u_xlat11;
        let x_905 : vec2<f32> = vec2<f32>(x_904.x, x_904.y);
        let x_907 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_905.x, x_905.y, x_907);
        let x_914 : vec3<f32> = txVec8;
        let x_916 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_914.xy, x_914.z);
        u_xlat29.x = x_916;
        let x_919 : f32 = u_xlat14.x;
        let x_921 : f32 = u_xlat29.x;
        let x_924 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_919 * x_921) + x_924);
        let x_928 : vec4<f32> = u_xlat11;
        let x_929 : vec2<f32> = vec2<f32>(x_928.z, x_928.w);
        let x_931 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_929.x, x_929.y, x_931);
        let x_938 : vec3<f32> = txVec9;
        let x_940 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_938.xy, x_938.z);
        u_xlat29.x = x_940;
        let x_943 : f32 = u_xlat14.y;
        let x_945 : f32 = u_xlat29.x;
        let x_948 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_943 * x_945) + x_948);
        let x_952 : vec4<f32> = u_xlat9;
        let x_953 : vec2<f32> = vec2<f32>(x_952.z, x_952.w);
        let x_955 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_953.x, x_953.y, x_955);
        let x_962 : vec3<f32> = txVec10;
        let x_964 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_962.xy, x_962.z);
        u_xlat29.x = x_964;
        let x_967 : f32 = u_xlat14.z;
        let x_969 : f32 = u_xlat29.x;
        let x_972 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_967 * x_969) + x_972);
        let x_976 : vec4<f32> = u_xlat8;
        let x_977 : vec2<f32> = vec2<f32>(x_976.x, x_976.y);
        let x_979 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_977.x, x_977.y, x_979);
        let x_986 : vec3<f32> = txVec11;
        let x_988 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_986.xy, x_986.z);
        u_xlat29.x = x_988;
        let x_991 : f32 = u_xlat14.w;
        let x_993 : f32 = u_xlat29.x;
        let x_996 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_991 * x_993) + x_996);
        let x_1000 : vec4<f32> = u_xlat8;
        let x_1001 : vec2<f32> = vec2<f32>(x_1000.z, x_1000.w);
        let x_1003 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_1001.x, x_1001.y, x_1003);
        let x_1010 : vec3<f32> = txVec12;
        let x_1012 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1010.xy, x_1010.z);
        u_xlat29.x = x_1012;
        let x_1014 : f32 = u_xlat80;
        let x_1016 : f32 = u_xlat29.x;
        let x_1019 : f32 = u_xlat3.x;
        u_xlat79 = ((x_1014 * x_1016) + x_1019);
      } else {
        let x_1022 : vec4<f32> = u_xlat2;
        let x_1025 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1028 : vec2<f32> = ((vec2<f32>(x_1022.x, x_1022.y) * vec2<f32>(x_1025.z, x_1025.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1029 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1028.x, x_1028.y, x_1029.z, x_1029.w);
        let x_1031 : vec4<f32> = u_xlat3;
        let x_1033 : vec2<f32> = floor(vec2<f32>(x_1031.x, x_1031.y));
        let x_1034 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1033.x, x_1033.y, x_1034.z, x_1034.w);
        let x_1036 : vec4<f32> = u_xlat2;
        let x_1039 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1042 : vec4<f32> = u_xlat3;
        u_xlat55 = ((vec2<f32>(x_1036.x, x_1036.y) * vec2<f32>(x_1039.z, x_1039.w)) + -(vec2<f32>(x_1042.x, x_1042.y)));
        let x_1046 : vec2<f32> = u_xlat55;
        u_xlat7 = (vec4<f32>(x_1046.x, x_1046.x, x_1046.y, x_1046.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1049 : vec4<f32> = u_xlat7;
        let x_1051 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1049.x, x_1049.x, x_1049.z, x_1049.z) * vec4<f32>(x_1051.x, x_1051.x, x_1051.z, x_1051.z));
        let x_1054 : vec4<f32> = u_xlat8;
        let x_1058 : vec2<f32> = (vec2<f32>(x_1054.y, x_1054.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1059 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1059.x, x_1058.x, x_1059.z, x_1058.y);
        let x_1061 : vec4<f32> = u_xlat8;
        let x_1064 : vec2<f32> = u_xlat55;
        let x_1066 : vec2<f32> = ((vec2<f32>(x_1061.x, x_1061.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1064));
        let x_1067 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1066.x, x_1067.y, x_1066.y, x_1067.w);
        let x_1069 : vec2<f32> = u_xlat55;
        let x_1071 : vec2<f32> = (-(x_1069) + vec2<f32>(1.0f, 1.0f));
        let x_1072 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1071.x, x_1071.y, x_1072.z, x_1072.w);
        let x_1074 : vec2<f32> = u_xlat55;
        u_xlat60 = min(x_1074, vec2<f32>(0.0f, 0.0f));
        let x_1076 : vec2<f32> = u_xlat60;
        let x_1078 : vec2<f32> = u_xlat60;
        let x_1080 : vec4<f32> = u_xlat8;
        let x_1082 : vec2<f32> = ((-(x_1076) * x_1078) + vec2<f32>(x_1080.x, x_1080.y));
        let x_1083 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1082.x, x_1082.y, x_1083.z, x_1083.w);
        let x_1085 : vec2<f32> = u_xlat55;
        u_xlat60 = max(x_1085, vec2<f32>(0.0f, 0.0f));
        let x_1088 : vec2<f32> = u_xlat60;
        let x_1090 : vec2<f32> = u_xlat60;
        let x_1092 : vec4<f32> = u_xlat7;
        let x_1094 : vec2<f32> = ((-(x_1088) * x_1090) + vec2<f32>(x_1092.y, x_1092.w));
        let x_1095 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1094.x, x_1095.y, x_1094.y);
        let x_1097 : vec4<f32> = u_xlat8;
        let x_1100 : vec2<f32> = (vec2<f32>(x_1097.x, x_1097.y) + vec2<f32>(2.0f, 2.0f));
        let x_1101 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1100.x, x_1100.y, x_1101.z, x_1101.w);
        let x_1103 : vec3<f32> = u_xlat33;
        let x_1105 : vec2<f32> = (vec2<f32>(x_1103.x, x_1103.z) + vec2<f32>(2.0f, 2.0f));
        let x_1106 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1106.x, x_1105.x, x_1106.z, x_1105.y);
        let x_1109 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1109 * 0.08163200318813323975f);
        let x_1113 : vec4<f32> = u_xlat7;
        let x_1116 : vec3<f32> = (vec3<f32>(x_1113.z, x_1113.x, x_1113.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1117 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1116.x, x_1116.y, x_1116.z, x_1117.w);
        let x_1119 : vec4<f32> = u_xlat8;
        let x_1122 : vec2<f32> = (vec2<f32>(x_1119.x, x_1119.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1123 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1122.x, x_1122.y, x_1123.z, x_1123.w);
        let x_1126 : f32 = u_xlat11.y;
        u_xlat10.x = x_1126;
        let x_1128 : vec2<f32> = u_xlat55;
        let x_1135 : vec2<f32> = ((vec2<f32>(x_1128.x, x_1128.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1136 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1136.x, x_1135.x, x_1136.z, x_1135.y);
        let x_1138 : vec2<f32> = u_xlat55;
        let x_1142 : vec2<f32> = ((vec2<f32>(x_1138.x, x_1138.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1143 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1142.x, x_1143.y, x_1142.y, x_1143.w);
        let x_1146 : f32 = u_xlat7.x;
        u_xlat8.y = x_1146;
        let x_1149 : f32 = u_xlat9.y;
        u_xlat8.w = x_1149;
        let x_1151 : vec4<f32> = u_xlat8;
        let x_1152 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1151 + x_1152);
        let x_1154 : vec2<f32> = u_xlat55;
        let x_1157 : vec2<f32> = ((vec2<f32>(x_1154.y, x_1154.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1158 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1158.x, x_1157.x, x_1158.z, x_1157.y);
        let x_1160 : vec2<f32> = u_xlat55;
        let x_1163 : vec2<f32> = ((vec2<f32>(x_1160.y, x_1160.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1164 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1163.x, x_1164.y, x_1163.y, x_1164.w);
        let x_1167 : f32 = u_xlat7.y;
        u_xlat9.y = x_1167;
        let x_1169 : vec4<f32> = u_xlat9;
        let x_1170 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1169 + x_1170);
        let x_1172 : vec4<f32> = u_xlat8;
        let x_1173 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1172 / x_1173);
        let x_1175 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1175 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1181 : vec4<f32> = u_xlat9;
        let x_1182 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1181 / x_1182);
        let x_1184 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1184 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1186 : vec4<f32> = u_xlat8;
        let x_1189 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1186.w, x_1186.x, x_1186.y, x_1186.z) * vec4<f32>(x_1189.x, x_1189.x, x_1189.x, x_1189.x));
        let x_1192 : vec4<f32> = u_xlat9;
        let x_1195 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1192.x, x_1192.w, x_1192.y, x_1192.z) * vec4<f32>(x_1195.y, x_1195.y, x_1195.y, x_1195.y));
        let x_1198 : vec4<f32> = u_xlat8;
        let x_1199 : vec3<f32> = vec3<f32>(x_1198.y, x_1198.z, x_1198.w);
        let x_1200 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1199.x, x_1200.y, x_1199.y, x_1199.z);
        let x_1203 : f32 = u_xlat9.x;
        u_xlat11.y = x_1203;
        let x_1205 : vec4<f32> = u_xlat3;
        let x_1208 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1211 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1205.x, x_1205.y, x_1205.x, x_1205.y) * vec4<f32>(x_1208.x, x_1208.y, x_1208.x, x_1208.y)) + vec4<f32>(x_1211.x, x_1211.y, x_1211.z, x_1211.y));
        let x_1214 : vec4<f32> = u_xlat3;
        let x_1217 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1220 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1214.x, x_1214.y) * vec2<f32>(x_1217.x, x_1217.y)) + vec2<f32>(x_1220.w, x_1220.y));
        let x_1224 : f32 = u_xlat11.y;
        u_xlat8.y = x_1224;
        let x_1227 : f32 = u_xlat9.z;
        u_xlat11.y = x_1227;
        let x_1229 : vec4<f32> = u_xlat3;
        let x_1232 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1235 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1229.x, x_1229.y, x_1229.x, x_1229.y) * vec4<f32>(x_1232.x, x_1232.y, x_1232.x, x_1232.y)) + vec4<f32>(x_1235.x, x_1235.y, x_1235.z, x_1235.y));
        let x_1238 : vec4<f32> = u_xlat3;
        let x_1241 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1244 : vec4<f32> = u_xlat11;
        let x_1246 : vec2<f32> = ((vec2<f32>(x_1238.x, x_1238.y) * vec2<f32>(x_1241.x, x_1241.y)) + vec2<f32>(x_1244.w, x_1244.y));
        let x_1247 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1246.x, x_1246.y, x_1247.z, x_1247.w);
        let x_1250 : f32 = u_xlat11.y;
        u_xlat8.z = x_1250;
        let x_1253 : vec4<f32> = u_xlat3;
        let x_1256 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1259 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1253.x, x_1253.y, x_1253.x, x_1253.y) * vec4<f32>(x_1256.x, x_1256.y, x_1256.x, x_1256.y)) + vec4<f32>(x_1259.x, x_1259.y, x_1259.x, x_1259.z));
        let x_1263 : f32 = u_xlat9.w;
        u_xlat11.y = x_1263;
        let x_1266 : vec4<f32> = u_xlat3;
        let x_1269 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1272 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1266.x, x_1266.y, x_1266.x, x_1266.y) * vec4<f32>(x_1269.x, x_1269.y, x_1269.x, x_1269.y)) + vec4<f32>(x_1272.x, x_1272.y, x_1272.z, x_1272.y));
        let x_1276 : vec4<f32> = u_xlat3;
        let x_1279 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1282 : vec4<f32> = u_xlat11;
        u_xlat34 = ((vec2<f32>(x_1276.x, x_1276.y) * vec2<f32>(x_1279.x, x_1279.y)) + vec2<f32>(x_1282.w, x_1282.y));
        let x_1286 : f32 = u_xlat11.y;
        u_xlat8.w = x_1286;
        let x_1289 : vec4<f32> = u_xlat3;
        let x_1292 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1295 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1289.x, x_1289.y) * vec2<f32>(x_1292.x, x_1292.y)) + vec2<f32>(x_1295.x, x_1295.w));
        let x_1298 : vec4<f32> = u_xlat11;
        let x_1299 : vec3<f32> = vec3<f32>(x_1298.x, x_1298.z, x_1298.w);
        let x_1300 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1299.x, x_1300.y, x_1299.y, x_1299.z);
        let x_1302 : vec4<f32> = u_xlat3;
        let x_1305 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1308 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1302.x, x_1302.y, x_1302.x, x_1302.y) * vec4<f32>(x_1305.x, x_1305.y, x_1305.x, x_1305.y)) + vec4<f32>(x_1308.x, x_1308.y, x_1308.z, x_1308.y));
        let x_1312 : vec4<f32> = u_xlat3;
        let x_1315 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1318 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1312.x, x_1312.y) * vec2<f32>(x_1315.x, x_1315.y)) + vec2<f32>(x_1318.w, x_1318.y));
        let x_1322 : f32 = u_xlat8.x;
        u_xlat9.x = x_1322;
        let x_1324 : vec4<f32> = u_xlat3;
        let x_1327 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1330 : vec4<f32> = u_xlat9;
        let x_1332 : vec2<f32> = ((vec2<f32>(x_1324.x, x_1324.y) * vec2<f32>(x_1327.x, x_1327.y)) + vec2<f32>(x_1330.x, x_1330.y));
        let x_1333 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1332.x, x_1332.y, x_1333.z, x_1333.w);
        let x_1336 : vec4<f32> = u_xlat7;
        let x_1338 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1336.x, x_1336.x, x_1336.x, x_1336.x) * x_1338);
        let x_1341 : vec4<f32> = u_xlat7;
        let x_1343 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1341.y, x_1341.y, x_1341.y, x_1341.y) * x_1343);
        let x_1346 : vec4<f32> = u_xlat7;
        let x_1348 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1346.z, x_1346.z, x_1346.z, x_1346.z) * x_1348);
        let x_1350 : vec4<f32> = u_xlat7;
        let x_1352 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1350.w, x_1350.w, x_1350.w, x_1350.w) * x_1352);
        let x_1355 : vec4<f32> = u_xlat12;
        let x_1356 : vec2<f32> = vec2<f32>(x_1355.x, x_1355.y);
        let x_1358 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_1356.x, x_1356.y, x_1358);
        let x_1365 : vec3<f32> = txVec13;
        let x_1367 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1365.xy, x_1365.z);
        u_xlat80 = x_1367;
        let x_1369 : vec4<f32> = u_xlat12;
        let x_1370 : vec2<f32> = vec2<f32>(x_1369.z, x_1369.w);
        let x_1372 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1370.x, x_1370.y, x_1372);
        let x_1380 : vec3<f32> = txVec14;
        let x_1382 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1380.xy, x_1380.z);
        u_xlat83 = x_1382;
        let x_1383 : f32 = u_xlat83;
        let x_1385 : f32 = u_xlat17.y;
        u_xlat83 = (x_1383 * x_1385);
        let x_1388 : f32 = u_xlat17.x;
        let x_1389 : f32 = u_xlat80;
        let x_1391 : f32 = u_xlat83;
        u_xlat80 = ((x_1388 * x_1389) + x_1391);
        let x_1394 : vec2<f32> = u_xlat55;
        let x_1396 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1394.x, x_1394.y, x_1396);
        let x_1403 : vec3<f32> = txVec15;
        let x_1405 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1403.xy, x_1403.z);
        u_xlat55.x = x_1405;
        let x_1408 : f32 = u_xlat17.z;
        let x_1410 : f32 = u_xlat55.x;
        let x_1412 : f32 = u_xlat80;
        u_xlat80 = ((x_1408 * x_1410) + x_1412);
        let x_1415 : vec4<f32> = u_xlat15;
        let x_1416 : vec2<f32> = vec2<f32>(x_1415.x, x_1415.y);
        let x_1418 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1416.x, x_1416.y, x_1418);
        let x_1425 : vec3<f32> = txVec16;
        let x_1427 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1425.xy, x_1425.z);
        u_xlat55.x = x_1427;
        let x_1430 : f32 = u_xlat17.w;
        let x_1432 : f32 = u_xlat55.x;
        let x_1434 : f32 = u_xlat80;
        u_xlat80 = ((x_1430 * x_1432) + x_1434);
        let x_1437 : vec4<f32> = u_xlat13;
        let x_1438 : vec2<f32> = vec2<f32>(x_1437.x, x_1437.y);
        let x_1440 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1438.x, x_1438.y, x_1440);
        let x_1447 : vec3<f32> = txVec17;
        let x_1449 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1447.xy, x_1447.z);
        u_xlat55.x = x_1449;
        let x_1452 : f32 = u_xlat18.x;
        let x_1454 : f32 = u_xlat55.x;
        let x_1456 : f32 = u_xlat80;
        u_xlat80 = ((x_1452 * x_1454) + x_1456);
        let x_1459 : vec4<f32> = u_xlat13;
        let x_1460 : vec2<f32> = vec2<f32>(x_1459.z, x_1459.w);
        let x_1462 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1460.x, x_1460.y, x_1462);
        let x_1469 : vec3<f32> = txVec18;
        let x_1471 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1469.xy, x_1469.z);
        u_xlat55.x = x_1471;
        let x_1474 : f32 = u_xlat18.y;
        let x_1476 : f32 = u_xlat55.x;
        let x_1478 : f32 = u_xlat80;
        u_xlat80 = ((x_1474 * x_1476) + x_1478);
        let x_1481 : vec4<f32> = u_xlat14;
        let x_1482 : vec2<f32> = vec2<f32>(x_1481.x, x_1481.y);
        let x_1484 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1482.x, x_1482.y, x_1484);
        let x_1491 : vec3<f32> = txVec19;
        let x_1493 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1491.xy, x_1491.z);
        u_xlat55.x = x_1493;
        let x_1496 : f32 = u_xlat18.z;
        let x_1498 : f32 = u_xlat55.x;
        let x_1500 : f32 = u_xlat80;
        u_xlat80 = ((x_1496 * x_1498) + x_1500);
        let x_1503 : vec4<f32> = u_xlat15;
        let x_1504 : vec2<f32> = vec2<f32>(x_1503.z, x_1503.w);
        let x_1506 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1504.x, x_1504.y, x_1506);
        let x_1513 : vec3<f32> = txVec20;
        let x_1515 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1513.xy, x_1513.z);
        u_xlat55.x = x_1515;
        let x_1518 : f32 = u_xlat18.w;
        let x_1520 : f32 = u_xlat55.x;
        let x_1522 : f32 = u_xlat80;
        u_xlat80 = ((x_1518 * x_1520) + x_1522);
        let x_1525 : vec4<f32> = u_xlat16;
        let x_1526 : vec2<f32> = vec2<f32>(x_1525.x, x_1525.y);
        let x_1528 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1526.x, x_1526.y, x_1528);
        let x_1535 : vec3<f32> = txVec21;
        let x_1537 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1535.xy, x_1535.z);
        u_xlat55.x = x_1537;
        let x_1540 : f32 = u_xlat19.x;
        let x_1542 : f32 = u_xlat55.x;
        let x_1544 : f32 = u_xlat80;
        u_xlat80 = ((x_1540 * x_1542) + x_1544);
        let x_1547 : vec4<f32> = u_xlat16;
        let x_1548 : vec2<f32> = vec2<f32>(x_1547.z, x_1547.w);
        let x_1550 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1548.x, x_1548.y, x_1550);
        let x_1557 : vec3<f32> = txVec22;
        let x_1559 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1557.xy, x_1557.z);
        u_xlat55.x = x_1559;
        let x_1562 : f32 = u_xlat19.y;
        let x_1564 : f32 = u_xlat55.x;
        let x_1566 : f32 = u_xlat80;
        u_xlat80 = ((x_1562 * x_1564) + x_1566);
        let x_1569 : vec2<f32> = u_xlat34;
        let x_1571 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1569.x, x_1569.y, x_1571);
        let x_1578 : vec3<f32> = txVec23;
        let x_1580 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1578.xy, x_1578.z);
        u_xlat55.x = x_1580;
        let x_1583 : f32 = u_xlat19.z;
        let x_1585 : f32 = u_xlat55.x;
        let x_1587 : f32 = u_xlat80;
        u_xlat80 = ((x_1583 * x_1585) + x_1587);
        let x_1590 : vec2<f32> = u_xlat66;
        let x_1592 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1590.x, x_1590.y, x_1592);
        let x_1599 : vec3<f32> = txVec24;
        let x_1601 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1599.xy, x_1599.z);
        u_xlat55.x = x_1601;
        let x_1604 : f32 = u_xlat19.w;
        let x_1606 : f32 = u_xlat55.x;
        let x_1608 : f32 = u_xlat80;
        u_xlat80 = ((x_1604 * x_1606) + x_1608);
        let x_1611 : vec4<f32> = u_xlat11;
        let x_1612 : vec2<f32> = vec2<f32>(x_1611.x, x_1611.y);
        let x_1614 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1612.x, x_1612.y, x_1614);
        let x_1621 : vec3<f32> = txVec25;
        let x_1623 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1621.xy, x_1621.z);
        u_xlat55.x = x_1623;
        let x_1626 : f32 = u_xlat7.x;
        let x_1628 : f32 = u_xlat55.x;
        let x_1630 : f32 = u_xlat80;
        u_xlat80 = ((x_1626 * x_1628) + x_1630);
        let x_1633 : vec4<f32> = u_xlat11;
        let x_1634 : vec2<f32> = vec2<f32>(x_1633.z, x_1633.w);
        let x_1636 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1634.x, x_1634.y, x_1636);
        let x_1643 : vec3<f32> = txVec26;
        let x_1645 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1643.xy, x_1643.z);
        u_xlat55.x = x_1645;
        let x_1648 : f32 = u_xlat7.y;
        let x_1650 : f32 = u_xlat55.x;
        let x_1652 : f32 = u_xlat80;
        u_xlat80 = ((x_1648 * x_1650) + x_1652);
        let x_1655 : vec2<f32> = u_xlat61;
        let x_1657 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1655.x, x_1655.y, x_1657);
        let x_1664 : vec3<f32> = txVec27;
        let x_1666 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1664.xy, x_1664.z);
        u_xlat55.x = x_1666;
        let x_1669 : f32 = u_xlat7.z;
        let x_1671 : f32 = u_xlat55.x;
        let x_1673 : f32 = u_xlat80;
        u_xlat80 = ((x_1669 * x_1671) + x_1673);
        let x_1676 : vec4<f32> = u_xlat3;
        let x_1677 : vec2<f32> = vec2<f32>(x_1676.x, x_1676.y);
        let x_1679 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1677.x, x_1677.y, x_1679);
        let x_1686 : vec3<f32> = txVec28;
        let x_1688 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1686.xy, x_1686.z);
        u_xlat3.x = x_1688;
        let x_1691 : f32 = u_xlat7.w;
        let x_1693 : f32 = u_xlat3.x;
        let x_1695 : f32 = u_xlat80;
        u_xlat79 = ((x_1691 * x_1693) + x_1695);
      }
    }
  } else {
    let x_1699 : vec4<f32> = u_xlat2;
    let x_1700 : vec2<f32> = vec2<f32>(x_1699.x, x_1699.y);
    let x_1702 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1700.x, x_1700.y, x_1702);
    let x_1709 : vec3<f32> = txVec29;
    let x_1711 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1709.xy, x_1709.z);
    u_xlat79 = x_1711;
  }
  let x_1713 : f32 = x_246.x_MainLightShadowParams.x;
  u_xlat80 = (-(x_1713) + 1.0f);
  let x_1716 : f32 = u_xlat79;
  let x_1718 : f32 = x_246.x_MainLightShadowParams.x;
  let x_1720 : f32 = u_xlat80;
  u_xlat79 = ((x_1716 * x_1718) + x_1720);
  let x_1724 : f32 = u_xlat2.z;
  u_xlatb3 = (0.0f >= x_1724);
  let x_1728 : f32 = u_xlat2.z;
  u_xlatb29 = (x_1728 >= 1.0f);
  let x_1730 : bool = u_xlatb29;
  let x_1731 : bool = u_xlatb3;
  u_xlatb3 = (x_1730 | x_1731);
  let x_1733 : bool = u_xlatb3;
  let x_1734 : f32 = u_xlat79;
  u_xlat79 = select(x_1734, 1.0f, x_1733);
  let x_1736 : vec3<f32> = u_xlat1;
  let x_1738 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat1.x = dot(x_1736, -(vec3<f32>(x_1738.x, x_1738.y, x_1738.z)));
  let x_1744 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1744, 0.0f, 1.0f);
  let x_1748 : f32 = u_xlat79;
  let x_1751 : vec4<f32> = x_128.x_MainLightColor;
  u_xlat27 = (vec3<f32>(x_1748, x_1748, x_1748) * vec3<f32>(x_1751.x, x_1751.y, x_1751.z));
  let x_1754 : vec3<f32> = u_xlat27;
  let x_1755 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_1754 * vec3<f32>(x_1755.x, x_1755.x, x_1755.x));
  let x_1758 : vec3<f32> = u_xlat1;
  let x_1759 : vec4<f32> = u_xlat4;
  u_xlat1 = (x_1758 * vec3<f32>(x_1759.x, x_1759.y, x_1759.z));
  let x_1763 : f32 = u_xlat4.w;
  u_xlatb79 = (x_1763 >= 0.40000000596046447754f);
  let x_1766 : bool = u_xlatb79;
  if (x_1766) {
    let x_1772 : f32 = u_xlat4.w;
    x_1768 = x_1772;
  } else {
    x_1768 = 0.0f;
  }
  let x_1774 : f32 = x_1768;
  u_xlat79 = x_1774;
  let x_1776 : f32 = u_xlat4.w;
  u_xlat29.x = (x_1776 + -0.40000000596046447754f);
  let x_1781 : f32 = u_xlat4.w;
  u_xlat55.x = dpdxCoarse(x_1781);
  let x_1786 : f32 = u_xlat4.w;
  u_xlat81 = dpdyCoarse(x_1786);
  let x_1788 : f32 = u_xlat81;
  let x_1791 : f32 = u_xlat55.x;
  u_xlat55.x = (abs(x_1788) + abs(x_1791));
  let x_1796 : f32 = u_xlat55.x;
  u_xlat55.x = max(x_1796, 0.00009999999747378752f);
  let x_1801 : f32 = u_xlat29.x;
  let x_1803 : f32 = u_xlat55.x;
  u_xlat29.x = (x_1801 / x_1803);
  let x_1807 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1807 + 0.5f);
  let x_1811 : f32 = u_xlat29.x;
  u_xlat29.x = clamp(x_1811, 0.0f, 1.0f);
  let x_1816 : f32 = x_128.x_AlphaToMaskAvailable;
  u_xlatb55 = !((x_1816 == 0.0f));
  let x_1818 : bool = u_xlatb55;
  if (x_1818) {
    let x_1823 : f32 = u_xlat29.x;
    x_1819 = x_1823;
  } else {
    let x_1825 : f32 = u_xlat79;
    x_1819 = x_1825;
  }
  let x_1826 : f32 = x_1819;
  u_xlat79 = x_1826;
  let x_1827 : f32 = u_xlat79;
  u_xlat29.x = (x_1827 + -0.00009999999747378752f);
  let x_1832 : f32 = u_xlat29.x;
  u_xlatb29 = (x_1832 < 0.0f);
  let x_1834 : bool = u_xlatb29;
  if (((select(0i, 1i, x_1834) * -1i) != 0i)) {
    discard;
  }
  let x_1842 : vec3<f32> = u_xlat26;
  let x_1843 : vec3<f32> = u_xlat32;
  u_xlat26 = (x_1842 * vec3<f32>(x_1843.y, x_1843.y, x_1843.y));
  let x_1846 : vec3<f32> = u_xlat32;
  let x_1848 : vec4<f32> = vs_INTERP4;
  let x_1851 : vec3<f32> = u_xlat26;
  u_xlat26 = ((vec3<f32>(x_1846.x, x_1846.x, x_1846.x) * vec3<f32>(x_1848.x, x_1848.y, x_1848.z)) + x_1851);
  let x_1853 : vec3<f32> = u_xlat32;
  let x_1855 : vec3<f32> = vs_INTERP9;
  let x_1857 : vec3<f32> = u_xlat26;
  u_xlat26 = ((vec3<f32>(x_1853.z, x_1853.z, x_1853.z) * x_1855) + x_1857);
  let x_1859 : vec3<f32> = u_xlat26;
  let x_1860 : vec3<f32> = u_xlat26;
  u_xlat29.x = dot(x_1859, x_1860);
  let x_1864 : f32 = u_xlat29.x;
  u_xlat29.x = inverseSqrt(x_1864);
  let x_1867 : vec3<f32> = u_xlat26;
  let x_1868 : vec3<f32> = u_xlat29;
  u_xlat26 = (x_1867 * vec3<f32>(x_1868.x, x_1868.x, x_1868.x));
  let x_1872 : f32 = x_128.unity_OrthoParams.w;
  u_xlatb29 = (x_1872 == 0.0f);
  let x_1874 : vec3<f32> = vs_INTERP8;
  let x_1878 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  let x_1879 : vec3<f32> = (-(x_1874) + x_1878);
  let x_1880 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1879.x, x_1879.y, x_1879.z, x_1880.w);
  let x_1882 : vec4<f32> = u_xlat4;
  let x_1884 : vec4<f32> = u_xlat4;
  u_xlat81 = dot(vec3<f32>(x_1882.x, x_1882.y, x_1882.z), vec3<f32>(x_1884.x, x_1884.y, x_1884.z));
  let x_1887 : f32 = u_xlat81;
  u_xlat81 = inverseSqrt(x_1887);
  let x_1889 : f32 = u_xlat81;
  let x_1891 : vec4<f32> = u_xlat4;
  let x_1893 : vec3<f32> = (vec3<f32>(x_1889, x_1889, x_1889) * vec3<f32>(x_1891.x, x_1891.y, x_1891.z));
  let x_1894 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1893.x, x_1893.y, x_1893.z, x_1894.w);
  let x_1896 : bool = u_xlatb29;
  if (x_1896) {
    let x_1901 : f32 = u_xlat4.x;
    x_1897 = x_1901;
  } else {
    let x_1904 : f32 = x_128.unity_MatrixV[0i].z;
    x_1897 = x_1904;
  }
  let x_1905 : f32 = x_1897;
  u_xlat7.x = x_1905;
  let x_1907 : bool = u_xlatb29;
  if (x_1907) {
    let x_1912 : f32 = u_xlat4.y;
    x_1908 = x_1912;
  } else {
    let x_1915 : f32 = x_128.unity_MatrixV[1i].z;
    x_1908 = x_1915;
  }
  let x_1916 : f32 = x_1908;
  u_xlat7.y = x_1916;
  let x_1918 : bool = u_xlatb29;
  if (x_1918) {
    let x_1923 : f32 = u_xlat4.z;
    x_1919 = x_1923;
  } else {
    let x_1926 : f32 = x_128.unity_MatrixV[2i].z;
    x_1919 = x_1926;
  }
  let x_1927 : f32 = x_1919;
  u_xlat7.z = x_1927;
  let x_1936 : vec2<f32> = vs_INTERP0;
  let x_1938 : f32 = x_128.x_GlobalMipBias.x;
  let x_1939 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_1936, x_1938);
  u_xlat4 = x_1939;
  let x_1944 : vec2<f32> = vs_INTERP0;
  let x_1946 : f32 = x_128.x_GlobalMipBias.x;
  let x_1947 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_1944, x_1946);
  u_xlat32 = vec3<f32>(x_1947.x, x_1947.y, x_1947.z);
  let x_1949 : vec4<f32> = u_xlat4;
  let x_1952 : vec3<f32> = (vec3<f32>(x_1949.x, x_1949.y, x_1949.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1953 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1952.x, x_1952.y, x_1952.z, x_1953.w);
  let x_1955 : vec3<f32> = u_xlat26;
  let x_1956 : vec4<f32> = u_xlat4;
  u_xlat29.x = dot(x_1955, vec3<f32>(x_1956.x, x_1956.y, x_1956.z));
  let x_1961 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1961 + 0.5f);
  let x_1964 : vec3<f32> = u_xlat29;
  let x_1966 : vec3<f32> = u_xlat32;
  let x_1967 : vec3<f32> = (vec3<f32>(x_1964.x, x_1964.x, x_1964.x) * x_1966);
  let x_1968 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1967.x, x_1967.y, x_1967.z, x_1968.w);
  let x_1971 : f32 = u_xlat4.w;
  u_xlat29.x = max(x_1971, 0.00009999999747378752f);
  let x_1974 : vec4<f32> = u_xlat4;
  let x_1976 : vec3<f32> = u_xlat29;
  let x_1978 : vec3<f32> = (vec3<f32>(x_1974.x, x_1974.y, x_1974.z) / vec3<f32>(x_1976.x, x_1976.x, x_1976.x));
  let x_1979 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1978.x, x_1978.y, x_1978.z, x_1979.w);
  let x_1982 : f32 = u_xlat6.x;
  u_xlat6.x = x_1982;
  let x_1985 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1985, 0.0f, 1.0f);
  let x_1988 : f32 = u_xlat79;
  u_xlat79 = min(x_1988, 1.0f);
  let x_1990 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_1990 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_1995 : f32 = u_xlat6.x;
  u_xlat29.x = (-(x_1995) + 1.0f);
  let x_2000 : f32 = u_xlat29.x;
  let x_2002 : f32 = u_xlat29.x;
  u_xlat81 = (x_2000 * x_2002);
  let x_2004 : f32 = u_xlat81;
  u_xlat81 = max(x_2004, 0.0078125f);
  let x_2008 : f32 = u_xlat81;
  let x_2009 : f32 = u_xlat81;
  u_xlat82 = (x_2008 * x_2009);
  let x_2012 : f32 = u_xlat6.x;
  u_xlat83 = (x_2012 + 0.04000002145767211914f);
  let x_2015 : f32 = u_xlat83;
  u_xlat83 = min(x_2015, 1.0f);
  let x_2017 : f32 = u_xlat81;
  u_xlat6.x = ((x_2017 * 4.0f) + 2.0f);
  let x_2022 : f32 = vs_INTERP6.w;
  u_xlat32.x = min(x_2022, 1.0f);
  let x_2025 : bool = u_xlatb0;
  if (x_2025) {
    let x_2029 : f32 = x_246.x_MainLightShadowParams.y;
    u_xlatb0 = (x_2029 == 1.0f);
    let x_2031 : bool = u_xlatb0;
    if (x_2031) {
      let x_2034 : vec4<f32> = u_xlat2;
      let x_2037 : vec4<f32> = x_246.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_2034.x, x_2034.y, x_2034.x, x_2034.y) + x_2037);
      let x_2040 : vec4<f32> = u_xlat8;
      let x_2041 : vec2<f32> = vec2<f32>(x_2040.x, x_2040.y);
      let x_2043 : f32 = u_xlat2.z;
      txVec30 = vec3<f32>(x_2041.x, x_2041.y, x_2043);
      let x_2050 : vec3<f32> = txVec30;
      let x_2052 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2050.xy, x_2050.z);
      u_xlat9.x = x_2052;
      let x_2055 : vec4<f32> = u_xlat8;
      let x_2056 : vec2<f32> = vec2<f32>(x_2055.z, x_2055.w);
      let x_2058 : f32 = u_xlat2.z;
      txVec31 = vec3<f32>(x_2056.x, x_2056.y, x_2058);
      let x_2065 : vec3<f32> = txVec31;
      let x_2067 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2065.xy, x_2065.z);
      u_xlat9.y = x_2067;
      let x_2069 : vec4<f32> = u_xlat2;
      let x_2072 : vec4<f32> = x_246.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_2069.x, x_2069.y, x_2069.x, x_2069.y) + x_2072);
      let x_2075 : vec4<f32> = u_xlat8;
      let x_2076 : vec2<f32> = vec2<f32>(x_2075.x, x_2075.y);
      let x_2078 : f32 = u_xlat2.z;
      txVec32 = vec3<f32>(x_2076.x, x_2076.y, x_2078);
      let x_2085 : vec3<f32> = txVec32;
      let x_2087 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2085.xy, x_2085.z);
      u_xlat9.z = x_2087;
      let x_2090 : vec4<f32> = u_xlat8;
      let x_2091 : vec2<f32> = vec2<f32>(x_2090.z, x_2090.w);
      let x_2093 : f32 = u_xlat2.z;
      txVec33 = vec3<f32>(x_2091.x, x_2091.y, x_2093);
      let x_2100 : vec3<f32> = txVec33;
      let x_2102 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2100.xy, x_2100.z);
      u_xlat9.w = x_2102;
      let x_2104 : vec4<f32> = u_xlat9;
      u_xlat0.x = dot(x_2104, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_2110 : f32 = x_246.x_MainLightShadowParams.y;
      u_xlatb58 = (x_2110 == 2.0f);
      let x_2112 : bool = u_xlatb58;
      if (x_2112) {
        let x_2116 : vec4<f32> = u_xlat2;
        let x_2119 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_2116.x, x_2116.y) * vec2<f32>(x_2119.z, x_2119.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2123 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_2123);
        let x_2125 : vec4<f32> = u_xlat2;
        let x_2128 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2131 : vec2<f32> = u_xlat58;
        let x_2133 : vec2<f32> = ((vec2<f32>(x_2125.x, x_2125.y) * vec2<f32>(x_2128.z, x_2128.w)) + -(x_2131));
        let x_2134 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2133.x, x_2133.y, x_2134.z, x_2134.w);
        let x_2136 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2136.x, x_2136.x, x_2136.y, x_2136.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2139 : vec4<f32> = u_xlat9;
        let x_2141 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2139.x, x_2139.x, x_2139.z, x_2139.z) * vec4<f32>(x_2141.x, x_2141.x, x_2141.z, x_2141.z));
        let x_2144 : vec4<f32> = u_xlat10;
        u_xlat60 = (vec2<f32>(x_2144.y, x_2144.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_2147 : vec4<f32> = u_xlat10;
        let x_2150 : vec4<f32> = u_xlat8;
        let x_2153 : vec2<f32> = ((vec2<f32>(x_2147.x, x_2147.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2150.x, x_2150.y)));
        let x_2154 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2153.x, x_2154.y, x_2153.y, x_2154.w);
        let x_2156 : vec4<f32> = u_xlat8;
        let x_2159 : vec2<f32> = (-(vec2<f32>(x_2156.x, x_2156.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2160 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2159.x, x_2159.y, x_2160.z, x_2160.w);
        let x_2163 : vec4<f32> = u_xlat8;
        u_xlat62 = min(vec2<f32>(x_2163.x, x_2163.y), vec2<f32>(0.0f, 0.0f));
        let x_2166 : vec2<f32> = u_xlat62;
        let x_2168 : vec2<f32> = u_xlat62;
        let x_2170 : vec4<f32> = u_xlat10;
        u_xlat62 = ((-(x_2166) * x_2168) + vec2<f32>(x_2170.x, x_2170.y));
        let x_2173 : vec4<f32> = u_xlat8;
        let x_2175 : vec2<f32> = max(vec2<f32>(x_2173.x, x_2173.y), vec2<f32>(0.0f, 0.0f));
        let x_2176 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2175.x, x_2175.y, x_2176.z, x_2176.w);
        let x_2178 : vec4<f32> = u_xlat8;
        let x_2181 : vec4<f32> = u_xlat8;
        let x_2184 : vec4<f32> = u_xlat9;
        let x_2186 : vec2<f32> = ((-(vec2<f32>(x_2178.x, x_2178.y)) * vec2<f32>(x_2181.x, x_2181.y)) + vec2<f32>(x_2184.y, x_2184.w));
        let x_2187 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2186.x, x_2186.y, x_2187.z, x_2187.w);
        let x_2189 : vec2<f32> = u_xlat62;
        u_xlat62 = (x_2189 + vec2<f32>(1.0f, 1.0f));
        let x_2191 : vec4<f32> = u_xlat8;
        let x_2193 : vec2<f32> = (vec2<f32>(x_2191.x, x_2191.y) + vec2<f32>(1.0f, 1.0f));
        let x_2194 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2193.x, x_2193.y, x_2194.z, x_2194.w);
        let x_2196 : vec4<f32> = u_xlat9;
        let x_2198 : vec2<f32> = (vec2<f32>(x_2196.x, x_2196.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2199 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2198.x, x_2198.y, x_2199.z, x_2199.w);
        let x_2201 : vec4<f32> = u_xlat10;
        let x_2203 : vec2<f32> = (vec2<f32>(x_2201.x, x_2201.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2204 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2203.x, x_2203.y, x_2204.z, x_2204.w);
        let x_2206 : vec2<f32> = u_xlat62;
        let x_2207 : vec2<f32> = (x_2206 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2208 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2207.x, x_2207.y, x_2208.z, x_2208.w);
        let x_2210 : vec4<f32> = u_xlat8;
        let x_2212 : vec2<f32> = (vec2<f32>(x_2210.x, x_2210.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2213 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2212.x, x_2212.y, x_2213.z, x_2213.w);
        let x_2215 : vec4<f32> = u_xlat9;
        let x_2217 : vec2<f32> = (vec2<f32>(x_2215.y, x_2215.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2218 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2217.x, x_2217.y, x_2218.z, x_2218.w);
        let x_2221 : f32 = u_xlat10.x;
        u_xlat11.z = x_2221;
        let x_2224 : f32 = u_xlat8.x;
        u_xlat11.w = x_2224;
        let x_2227 : f32 = u_xlat13.x;
        u_xlat12.z = x_2227;
        let x_2230 : f32 = u_xlat60.x;
        u_xlat12.w = x_2230;
        let x_2232 : vec4<f32> = u_xlat11;
        let x_2234 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_2232.z, x_2232.w, x_2232.x, x_2232.z) + vec4<f32>(x_2234.z, x_2234.w, x_2234.x, x_2234.z));
        let x_2238 : f32 = u_xlat11.y;
        u_xlat10.z = x_2238;
        let x_2241 : f32 = u_xlat8.y;
        u_xlat10.w = x_2241;
        let x_2244 : f32 = u_xlat12.y;
        u_xlat13.z = x_2244;
        let x_2247 : f32 = u_xlat60.y;
        u_xlat13.w = x_2247;
        let x_2249 : vec4<f32> = u_xlat10;
        let x_2251 : vec4<f32> = u_xlat13;
        let x_2253 : vec3<f32> = (vec3<f32>(x_2249.z, x_2249.y, x_2249.w) + vec3<f32>(x_2251.z, x_2251.y, x_2251.w));
        let x_2254 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2253.x, x_2253.y, x_2253.z, x_2254.w);
        let x_2256 : vec4<f32> = u_xlat12;
        let x_2258 : vec4<f32> = u_xlat9;
        let x_2260 : vec3<f32> = (vec3<f32>(x_2256.x, x_2256.z, x_2256.w) / vec3<f32>(x_2258.z, x_2258.w, x_2258.y));
        let x_2261 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2260.x, x_2260.y, x_2260.z, x_2261.w);
        let x_2263 : vec4<f32> = u_xlat10;
        let x_2265 : vec3<f32> = (vec3<f32>(x_2263.x, x_2263.y, x_2263.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2266 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2265.x, x_2265.y, x_2265.z, x_2266.w);
        let x_2268 : vec4<f32> = u_xlat13;
        let x_2270 : vec4<f32> = u_xlat8;
        let x_2272 : vec3<f32> = (vec3<f32>(x_2268.z, x_2268.y, x_2268.w) / vec3<f32>(x_2270.x, x_2270.y, x_2270.z));
        let x_2273 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2272.x, x_2272.y, x_2272.z, x_2273.w);
        let x_2275 : vec4<f32> = u_xlat11;
        let x_2277 : vec3<f32> = (vec3<f32>(x_2275.x, x_2275.y, x_2275.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2278 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2277.x, x_2277.y, x_2277.z, x_2278.w);
        let x_2280 : vec4<f32> = u_xlat10;
        let x_2283 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2285 : vec3<f32> = (vec3<f32>(x_2280.y, x_2280.x, x_2280.z) * vec3<f32>(x_2283.x, x_2283.x, x_2283.x));
        let x_2286 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2285.x, x_2285.y, x_2285.z, x_2286.w);
        let x_2288 : vec4<f32> = u_xlat11;
        let x_2291 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2293 : vec3<f32> = (vec3<f32>(x_2288.x, x_2288.y, x_2288.z) * vec3<f32>(x_2291.y, x_2291.y, x_2291.y));
        let x_2294 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2293.x, x_2293.y, x_2293.z, x_2294.w);
        let x_2297 : f32 = u_xlat11.x;
        u_xlat10.w = x_2297;
        let x_2299 : vec2<f32> = u_xlat58;
        let x_2302 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2305 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_2299.x, x_2299.y, x_2299.x, x_2299.y) * vec4<f32>(x_2302.x, x_2302.y, x_2302.x, x_2302.y)) + vec4<f32>(x_2305.y, x_2305.w, x_2305.x, x_2305.w));
        let x_2308 : vec2<f32> = u_xlat58;
        let x_2310 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2313 : vec4<f32> = u_xlat10;
        let x_2315 : vec2<f32> = ((x_2308 * vec2<f32>(x_2310.x, x_2310.y)) + vec2<f32>(x_2313.z, x_2313.w));
        let x_2316 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2315.x, x_2315.y, x_2316.z, x_2316.w);
        let x_2319 : f32 = u_xlat10.y;
        u_xlat11.w = x_2319;
        let x_2321 : vec4<f32> = u_xlat11;
        let x_2322 : vec2<f32> = vec2<f32>(x_2321.y, x_2321.z);
        let x_2323 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2323.x, x_2322.x, x_2323.z, x_2322.y);
        let x_2325 : vec2<f32> = u_xlat58;
        let x_2328 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2331 : vec4<f32> = u_xlat10;
        u_xlat14 = ((vec4<f32>(x_2325.x, x_2325.y, x_2325.x, x_2325.y) * vec4<f32>(x_2328.x, x_2328.y, x_2328.x, x_2328.y)) + vec4<f32>(x_2331.x, x_2331.y, x_2331.z, x_2331.y));
        let x_2334 : vec2<f32> = u_xlat58;
        let x_2337 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2340 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_2334.x, x_2334.y, x_2334.x, x_2334.y) * vec4<f32>(x_2337.x, x_2337.y, x_2337.x, x_2337.y)) + vec4<f32>(x_2340.w, x_2340.y, x_2340.w, x_2340.z));
        let x_2343 : vec2<f32> = u_xlat58;
        let x_2346 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2349 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2343.x, x_2343.y, x_2343.x, x_2343.y) * vec4<f32>(x_2346.x, x_2346.y, x_2346.x, x_2346.y)) + vec4<f32>(x_2349.x, x_2349.w, x_2349.z, x_2349.w));
        let x_2352 : vec4<f32> = u_xlat8;
        let x_2354 : vec4<f32> = u_xlat9;
        u_xlat15 = (vec4<f32>(x_2352.x, x_2352.x, x_2352.x, x_2352.y) * vec4<f32>(x_2354.z, x_2354.w, x_2354.y, x_2354.z));
        let x_2357 : vec4<f32> = u_xlat8;
        let x_2359 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_2357.y, x_2357.y, x_2357.z, x_2357.z) * x_2359);
        let x_2362 : f32 = u_xlat8.z;
        let x_2364 : f32 = u_xlat9.y;
        u_xlat58.x = (x_2362 * x_2364);
        let x_2368 : vec4<f32> = u_xlat12;
        let x_2369 : vec2<f32> = vec2<f32>(x_2368.x, x_2368.y);
        let x_2371 : f32 = u_xlat2.z;
        txVec34 = vec3<f32>(x_2369.x, x_2369.y, x_2371);
        let x_2379 : vec3<f32> = txVec34;
        let x_2381 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2379.xy, x_2379.z);
        u_xlat84 = x_2381;
        let x_2383 : vec4<f32> = u_xlat12;
        let x_2384 : vec2<f32> = vec2<f32>(x_2383.z, x_2383.w);
        let x_2386 : f32 = u_xlat2.z;
        txVec35 = vec3<f32>(x_2384.x, x_2384.y, x_2386);
        let x_2394 : vec3<f32> = txVec35;
        let x_2396 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2394.xy, x_2394.z);
        u_xlat85 = x_2396;
        let x_2397 : f32 = u_xlat85;
        let x_2399 : f32 = u_xlat15.y;
        u_xlat85 = (x_2397 * x_2399);
        let x_2402 : f32 = u_xlat15.x;
        let x_2403 : f32 = u_xlat84;
        let x_2405 : f32 = u_xlat85;
        u_xlat84 = ((x_2402 * x_2403) + x_2405);
        let x_2408 : vec4<f32> = u_xlat13;
        let x_2409 : vec2<f32> = vec2<f32>(x_2408.x, x_2408.y);
        let x_2411 : f32 = u_xlat2.z;
        txVec36 = vec3<f32>(x_2409.x, x_2409.y, x_2411);
        let x_2418 : vec3<f32> = txVec36;
        let x_2420 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2418.xy, x_2418.z);
        u_xlat85 = x_2420;
        let x_2422 : f32 = u_xlat15.z;
        let x_2423 : f32 = u_xlat85;
        let x_2425 : f32 = u_xlat84;
        u_xlat84 = ((x_2422 * x_2423) + x_2425);
        let x_2428 : vec4<f32> = u_xlat11;
        let x_2429 : vec2<f32> = vec2<f32>(x_2428.x, x_2428.y);
        let x_2431 : f32 = u_xlat2.z;
        txVec37 = vec3<f32>(x_2429.x, x_2429.y, x_2431);
        let x_2438 : vec3<f32> = txVec37;
        let x_2440 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2438.xy, x_2438.z);
        u_xlat85 = x_2440;
        let x_2442 : f32 = u_xlat15.w;
        let x_2443 : f32 = u_xlat85;
        let x_2445 : f32 = u_xlat84;
        u_xlat84 = ((x_2442 * x_2443) + x_2445);
        let x_2448 : vec4<f32> = u_xlat14;
        let x_2449 : vec2<f32> = vec2<f32>(x_2448.x, x_2448.y);
        let x_2451 : f32 = u_xlat2.z;
        txVec38 = vec3<f32>(x_2449.x, x_2449.y, x_2451);
        let x_2458 : vec3<f32> = txVec38;
        let x_2460 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2458.xy, x_2458.z);
        u_xlat85 = x_2460;
        let x_2462 : f32 = u_xlat16.x;
        let x_2463 : f32 = u_xlat85;
        let x_2465 : f32 = u_xlat84;
        u_xlat84 = ((x_2462 * x_2463) + x_2465);
        let x_2468 : vec4<f32> = u_xlat14;
        let x_2469 : vec2<f32> = vec2<f32>(x_2468.z, x_2468.w);
        let x_2471 : f32 = u_xlat2.z;
        txVec39 = vec3<f32>(x_2469.x, x_2469.y, x_2471);
        let x_2478 : vec3<f32> = txVec39;
        let x_2480 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2478.xy, x_2478.z);
        u_xlat85 = x_2480;
        let x_2482 : f32 = u_xlat16.y;
        let x_2483 : f32 = u_xlat85;
        let x_2485 : f32 = u_xlat84;
        u_xlat84 = ((x_2482 * x_2483) + x_2485);
        let x_2488 : vec4<f32> = u_xlat11;
        let x_2489 : vec2<f32> = vec2<f32>(x_2488.z, x_2488.w);
        let x_2491 : f32 = u_xlat2.z;
        txVec40 = vec3<f32>(x_2489.x, x_2489.y, x_2491);
        let x_2498 : vec3<f32> = txVec40;
        let x_2500 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2498.xy, x_2498.z);
        u_xlat85 = x_2500;
        let x_2502 : f32 = u_xlat16.z;
        let x_2503 : f32 = u_xlat85;
        let x_2505 : f32 = u_xlat84;
        u_xlat84 = ((x_2502 * x_2503) + x_2505);
        let x_2508 : vec4<f32> = u_xlat10;
        let x_2509 : vec2<f32> = vec2<f32>(x_2508.x, x_2508.y);
        let x_2511 : f32 = u_xlat2.z;
        txVec41 = vec3<f32>(x_2509.x, x_2509.y, x_2511);
        let x_2518 : vec3<f32> = txVec41;
        let x_2520 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2518.xy, x_2518.z);
        u_xlat85 = x_2520;
        let x_2522 : f32 = u_xlat16.w;
        let x_2523 : f32 = u_xlat85;
        let x_2525 : f32 = u_xlat84;
        u_xlat84 = ((x_2522 * x_2523) + x_2525);
        let x_2528 : vec4<f32> = u_xlat10;
        let x_2529 : vec2<f32> = vec2<f32>(x_2528.z, x_2528.w);
        let x_2531 : f32 = u_xlat2.z;
        txVec42 = vec3<f32>(x_2529.x, x_2529.y, x_2531);
        let x_2538 : vec3<f32> = txVec42;
        let x_2540 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2538.xy, x_2538.z);
        u_xlat85 = x_2540;
        let x_2542 : f32 = u_xlat58.x;
        let x_2543 : f32 = u_xlat85;
        let x_2545 : f32 = u_xlat84;
        u_xlat0.x = ((x_2542 * x_2543) + x_2545);
      } else {
        let x_2549 : vec4<f32> = u_xlat2;
        let x_2552 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_2549.x, x_2549.y) * vec2<f32>(x_2552.z, x_2552.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2556 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_2556);
        let x_2558 : vec4<f32> = u_xlat2;
        let x_2561 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2564 : vec2<f32> = u_xlat58;
        let x_2566 : vec2<f32> = ((vec2<f32>(x_2558.x, x_2558.y) * vec2<f32>(x_2561.z, x_2561.w)) + -(x_2564));
        let x_2567 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2566.x, x_2566.y, x_2567.z, x_2567.w);
        let x_2569 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2569.x, x_2569.x, x_2569.y, x_2569.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2572 : vec4<f32> = u_xlat9;
        let x_2574 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2572.x, x_2572.x, x_2572.z, x_2572.z) * vec4<f32>(x_2574.x, x_2574.x, x_2574.z, x_2574.z));
        let x_2577 : vec4<f32> = u_xlat10;
        let x_2579 : vec2<f32> = (vec2<f32>(x_2577.y, x_2577.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2580 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2580.x, x_2579.x, x_2580.z, x_2579.y);
        let x_2582 : vec4<f32> = u_xlat10;
        let x_2585 : vec4<f32> = u_xlat8;
        u_xlat60 = ((vec2<f32>(x_2582.x, x_2582.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2585.x, x_2585.y)));
        let x_2589 : vec4<f32> = u_xlat8;
        let x_2592 : vec2<f32> = (-(vec2<f32>(x_2589.x, x_2589.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2593 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2592.x, x_2593.y, x_2592.y, x_2593.w);
        let x_2595 : vec4<f32> = u_xlat8;
        let x_2597 : vec2<f32> = min(vec2<f32>(x_2595.x, x_2595.y), vec2<f32>(0.0f, 0.0f));
        let x_2598 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2597.x, x_2597.y, x_2598.z, x_2598.w);
        let x_2600 : vec4<f32> = u_xlat10;
        let x_2603 : vec4<f32> = u_xlat10;
        let x_2606 : vec4<f32> = u_xlat9;
        let x_2608 : vec2<f32> = ((-(vec2<f32>(x_2600.x, x_2600.y)) * vec2<f32>(x_2603.x, x_2603.y)) + vec2<f32>(x_2606.x, x_2606.z));
        let x_2609 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2608.x, x_2609.y, x_2608.y, x_2609.w);
        let x_2611 : vec4<f32> = u_xlat8;
        let x_2613 : vec2<f32> = max(vec2<f32>(x_2611.x, x_2611.y), vec2<f32>(0.0f, 0.0f));
        let x_2614 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2613.x, x_2613.y, x_2614.z, x_2614.w);
        let x_2616 : vec4<f32> = u_xlat10;
        let x_2619 : vec4<f32> = u_xlat10;
        let x_2622 : vec4<f32> = u_xlat9;
        let x_2624 : vec2<f32> = ((-(vec2<f32>(x_2616.x, x_2616.y)) * vec2<f32>(x_2619.x, x_2619.y)) + vec2<f32>(x_2622.y, x_2622.w));
        let x_2625 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2625.x, x_2624.x, x_2625.z, x_2624.y);
        let x_2627 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2627 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2630 : f32 = u_xlat9.y;
        u_xlat10.z = (x_2630 * 0.08163200318813323975f);
        let x_2633 : vec2<f32> = u_xlat60;
        let x_2635 : vec2<f32> = (vec2<f32>(x_2633.y, x_2633.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2636 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2635.x, x_2635.y, x_2636.z, x_2636.w);
        let x_2638 : vec4<f32> = u_xlat9;
        u_xlat60 = (vec2<f32>(x_2638.x, x_2638.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2642 : f32 = u_xlat9.w;
        u_xlat12.z = (x_2642 * 0.08163200318813323975f);
        let x_2646 : f32 = u_xlat12.y;
        u_xlat10.x = x_2646;
        let x_2648 : vec4<f32> = u_xlat8;
        let x_2651 : vec2<f32> = ((vec2<f32>(x_2648.x, x_2648.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2652 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2652.x, x_2651.x, x_2652.z, x_2651.y);
        let x_2654 : vec4<f32> = u_xlat8;
        let x_2657 : vec2<f32> = ((vec2<f32>(x_2654.x, x_2654.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2658 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2657.x, x_2658.y, x_2657.y, x_2658.w);
        let x_2661 : f32 = u_xlat60.x;
        u_xlat9.y = x_2661;
        let x_2664 : f32 = u_xlat11.y;
        u_xlat9.w = x_2664;
        let x_2666 : vec4<f32> = u_xlat9;
        let x_2667 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2666 + x_2667);
        let x_2669 : vec4<f32> = u_xlat8;
        let x_2672 : vec2<f32> = ((vec2<f32>(x_2669.y, x_2669.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2673 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2673.x, x_2672.x, x_2673.z, x_2672.y);
        let x_2675 : vec4<f32> = u_xlat8;
        let x_2678 : vec2<f32> = ((vec2<f32>(x_2675.y, x_2675.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2679 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2678.x, x_2679.y, x_2678.y, x_2679.w);
        let x_2682 : f32 = u_xlat60.y;
        u_xlat11.y = x_2682;
        let x_2684 : vec4<f32> = u_xlat11;
        let x_2685 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_2684 + x_2685);
        let x_2687 : vec4<f32> = u_xlat9;
        let x_2688 : vec4<f32> = u_xlat10;
        u_xlat9 = (x_2687 / x_2688);
        let x_2690 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2690 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2692 : vec4<f32> = u_xlat11;
        let x_2693 : vec4<f32> = u_xlat8;
        u_xlat11 = (x_2692 / x_2693);
        let x_2695 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_2695 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2697 : vec4<f32> = u_xlat9;
        let x_2700 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_2697.w, x_2697.x, x_2697.y, x_2697.z) * vec4<f32>(x_2700.x, x_2700.x, x_2700.x, x_2700.x));
        let x_2703 : vec4<f32> = u_xlat11;
        let x_2706 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_2703.x, x_2703.w, x_2703.y, x_2703.z) * vec4<f32>(x_2706.y, x_2706.y, x_2706.y, x_2706.y));
        let x_2709 : vec4<f32> = u_xlat9;
        let x_2710 : vec3<f32> = vec3<f32>(x_2709.y, x_2709.z, x_2709.w);
        let x_2711 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2710.x, x_2711.y, x_2710.y, x_2710.z);
        let x_2714 : f32 = u_xlat11.x;
        u_xlat12.y = x_2714;
        let x_2716 : vec2<f32> = u_xlat58;
        let x_2719 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2722 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_2716.x, x_2716.y, x_2716.x, x_2716.y) * vec4<f32>(x_2719.x, x_2719.y, x_2719.x, x_2719.y)) + vec4<f32>(x_2722.x, x_2722.y, x_2722.z, x_2722.y));
        let x_2725 : vec2<f32> = u_xlat58;
        let x_2727 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2730 : vec4<f32> = u_xlat12;
        let x_2732 : vec2<f32> = ((x_2725 * vec2<f32>(x_2727.x, x_2727.y)) + vec2<f32>(x_2730.w, x_2730.y));
        let x_2733 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_2732.x, x_2732.y, x_2733.z, x_2733.w);
        let x_2736 : f32 = u_xlat12.y;
        u_xlat9.y = x_2736;
        let x_2739 : f32 = u_xlat11.z;
        u_xlat12.y = x_2739;
        let x_2741 : vec2<f32> = u_xlat58;
        let x_2744 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2747 : vec4<f32> = u_xlat12;
        u_xlat15 = ((vec4<f32>(x_2741.x, x_2741.y, x_2741.x, x_2741.y) * vec4<f32>(x_2744.x, x_2744.y, x_2744.x, x_2744.y)) + vec4<f32>(x_2747.x, x_2747.y, x_2747.z, x_2747.y));
        let x_2750 : vec2<f32> = u_xlat58;
        let x_2752 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2755 : vec4<f32> = u_xlat12;
        u_xlat66 = ((x_2750 * vec2<f32>(x_2752.x, x_2752.y)) + vec2<f32>(x_2755.w, x_2755.y));
        let x_2759 : f32 = u_xlat12.y;
        u_xlat9.z = x_2759;
        let x_2761 : vec2<f32> = u_xlat58;
        let x_2764 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2767 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_2761.x, x_2761.y, x_2761.x, x_2761.y) * vec4<f32>(x_2764.x, x_2764.y, x_2764.x, x_2764.y)) + vec4<f32>(x_2767.x, x_2767.y, x_2767.x, x_2767.z));
        let x_2771 : f32 = u_xlat11.w;
        u_xlat12.y = x_2771;
        let x_2773 : vec2<f32> = u_xlat58;
        let x_2776 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2779 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_2773.x, x_2773.y, x_2773.x, x_2773.y) * vec4<f32>(x_2776.x, x_2776.y, x_2776.x, x_2776.y)) + vec4<f32>(x_2779.x, x_2779.y, x_2779.z, x_2779.y));
        let x_2783 : vec2<f32> = u_xlat58;
        let x_2785 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2788 : vec4<f32> = u_xlat12;
        u_xlat35 = ((x_2783 * vec2<f32>(x_2785.x, x_2785.y)) + vec2<f32>(x_2788.w, x_2788.y));
        let x_2792 : f32 = u_xlat12.y;
        u_xlat9.w = x_2792;
        let x_2794 : vec2<f32> = u_xlat58;
        let x_2796 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2799 : vec4<f32> = u_xlat9;
        let x_2801 : vec2<f32> = ((x_2794 * vec2<f32>(x_2796.x, x_2796.y)) + vec2<f32>(x_2799.x, x_2799.w));
        let x_2802 : vec4<f32> = u_xlat18;
        u_xlat18 = vec4<f32>(x_2801.x, x_2801.y, x_2802.z, x_2802.w);
        let x_2804 : vec4<f32> = u_xlat12;
        let x_2805 : vec3<f32> = vec3<f32>(x_2804.x, x_2804.z, x_2804.w);
        let x_2806 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2805.x, x_2806.y, x_2805.y, x_2805.z);
        let x_2808 : vec2<f32> = u_xlat58;
        let x_2811 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2814 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2808.x, x_2808.y, x_2808.x, x_2808.y) * vec4<f32>(x_2811.x, x_2811.y, x_2811.x, x_2811.y)) + vec4<f32>(x_2814.x, x_2814.y, x_2814.z, x_2814.y));
        let x_2818 : vec2<f32> = u_xlat58;
        let x_2820 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2823 : vec4<f32> = u_xlat11;
        u_xlat63 = ((x_2818 * vec2<f32>(x_2820.x, x_2820.y)) + vec2<f32>(x_2823.w, x_2823.y));
        let x_2827 : f32 = u_xlat9.x;
        u_xlat11.x = x_2827;
        let x_2829 : vec2<f32> = u_xlat58;
        let x_2831 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2834 : vec4<f32> = u_xlat11;
        u_xlat58 = ((x_2829 * vec2<f32>(x_2831.x, x_2831.y)) + vec2<f32>(x_2834.x, x_2834.y));
        let x_2837 : vec4<f32> = u_xlat8;
        let x_2839 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_2837.x, x_2837.x, x_2837.x, x_2837.x) * x_2839);
        let x_2842 : vec4<f32> = u_xlat8;
        let x_2844 : vec4<f32> = u_xlat10;
        u_xlat20 = (vec4<f32>(x_2842.y, x_2842.y, x_2842.y, x_2842.y) * x_2844);
        let x_2847 : vec4<f32> = u_xlat8;
        let x_2849 : vec4<f32> = u_xlat10;
        u_xlat21 = (vec4<f32>(x_2847.z, x_2847.z, x_2847.z, x_2847.z) * x_2849);
        let x_2851 : vec4<f32> = u_xlat8;
        let x_2853 : vec4<f32> = u_xlat10;
        u_xlat8 = (vec4<f32>(x_2851.w, x_2851.w, x_2851.w, x_2851.w) * x_2853);
        let x_2856 : vec4<f32> = u_xlat13;
        let x_2857 : vec2<f32> = vec2<f32>(x_2856.x, x_2856.y);
        let x_2859 : f32 = u_xlat2.z;
        txVec43 = vec3<f32>(x_2857.x, x_2857.y, x_2859);
        let x_2866 : vec3<f32> = txVec43;
        let x_2868 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2866.xy, x_2866.z);
        u_xlat85 = x_2868;
        let x_2870 : vec4<f32> = u_xlat13;
        let x_2871 : vec2<f32> = vec2<f32>(x_2870.z, x_2870.w);
        let x_2873 : f32 = u_xlat2.z;
        txVec44 = vec3<f32>(x_2871.x, x_2871.y, x_2873);
        let x_2880 : vec3<f32> = txVec44;
        let x_2882 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2880.xy, x_2880.z);
        u_xlat9.x = x_2882;
        let x_2885 : f32 = u_xlat9.x;
        let x_2887 : f32 = u_xlat19.y;
        u_xlat9.x = (x_2885 * x_2887);
        let x_2891 : f32 = u_xlat19.x;
        let x_2892 : f32 = u_xlat85;
        let x_2895 : f32 = u_xlat9.x;
        u_xlat85 = ((x_2891 * x_2892) + x_2895);
        let x_2898 : vec4<f32> = u_xlat14;
        let x_2899 : vec2<f32> = vec2<f32>(x_2898.x, x_2898.y);
        let x_2901 : f32 = u_xlat2.z;
        txVec45 = vec3<f32>(x_2899.x, x_2899.y, x_2901);
        let x_2908 : vec3<f32> = txVec45;
        let x_2910 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2908.xy, x_2908.z);
        u_xlat9.x = x_2910;
        let x_2913 : f32 = u_xlat19.z;
        let x_2915 : f32 = u_xlat9.x;
        let x_2917 : f32 = u_xlat85;
        u_xlat85 = ((x_2913 * x_2915) + x_2917);
        let x_2920 : vec4<f32> = u_xlat16;
        let x_2921 : vec2<f32> = vec2<f32>(x_2920.x, x_2920.y);
        let x_2923 : f32 = u_xlat2.z;
        txVec46 = vec3<f32>(x_2921.x, x_2921.y, x_2923);
        let x_2930 : vec3<f32> = txVec46;
        let x_2932 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2930.xy, x_2930.z);
        u_xlat9.x = x_2932;
        let x_2935 : f32 = u_xlat19.w;
        let x_2937 : f32 = u_xlat9.x;
        let x_2939 : f32 = u_xlat85;
        u_xlat85 = ((x_2935 * x_2937) + x_2939);
        let x_2942 : vec4<f32> = u_xlat15;
        let x_2943 : vec2<f32> = vec2<f32>(x_2942.x, x_2942.y);
        let x_2945 : f32 = u_xlat2.z;
        txVec47 = vec3<f32>(x_2943.x, x_2943.y, x_2945);
        let x_2952 : vec3<f32> = txVec47;
        let x_2954 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2952.xy, x_2952.z);
        u_xlat9.x = x_2954;
        let x_2957 : f32 = u_xlat20.x;
        let x_2959 : f32 = u_xlat9.x;
        let x_2961 : f32 = u_xlat85;
        u_xlat85 = ((x_2957 * x_2959) + x_2961);
        let x_2964 : vec4<f32> = u_xlat15;
        let x_2965 : vec2<f32> = vec2<f32>(x_2964.z, x_2964.w);
        let x_2967 : f32 = u_xlat2.z;
        txVec48 = vec3<f32>(x_2965.x, x_2965.y, x_2967);
        let x_2974 : vec3<f32> = txVec48;
        let x_2976 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2974.xy, x_2974.z);
        u_xlat9.x = x_2976;
        let x_2979 : f32 = u_xlat20.y;
        let x_2981 : f32 = u_xlat9.x;
        let x_2983 : f32 = u_xlat85;
        u_xlat85 = ((x_2979 * x_2981) + x_2983);
        let x_2986 : vec2<f32> = u_xlat66;
        let x_2988 : f32 = u_xlat2.z;
        txVec49 = vec3<f32>(x_2986.x, x_2986.y, x_2988);
        let x_2995 : vec3<f32> = txVec49;
        let x_2997 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2995.xy, x_2995.z);
        u_xlat9.x = x_2997;
        let x_3000 : f32 = u_xlat20.z;
        let x_3002 : f32 = u_xlat9.x;
        let x_3004 : f32 = u_xlat85;
        u_xlat85 = ((x_3000 * x_3002) + x_3004);
        let x_3007 : vec4<f32> = u_xlat16;
        let x_3008 : vec2<f32> = vec2<f32>(x_3007.z, x_3007.w);
        let x_3010 : f32 = u_xlat2.z;
        txVec50 = vec3<f32>(x_3008.x, x_3008.y, x_3010);
        let x_3017 : vec3<f32> = txVec50;
        let x_3019 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3017.xy, x_3017.z);
        u_xlat9.x = x_3019;
        let x_3022 : f32 = u_xlat20.w;
        let x_3024 : f32 = u_xlat9.x;
        let x_3026 : f32 = u_xlat85;
        u_xlat85 = ((x_3022 * x_3024) + x_3026);
        let x_3029 : vec4<f32> = u_xlat17;
        let x_3030 : vec2<f32> = vec2<f32>(x_3029.x, x_3029.y);
        let x_3032 : f32 = u_xlat2.z;
        txVec51 = vec3<f32>(x_3030.x, x_3030.y, x_3032);
        let x_3039 : vec3<f32> = txVec51;
        let x_3041 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3039.xy, x_3039.z);
        u_xlat9.x = x_3041;
        let x_3044 : f32 = u_xlat21.x;
        let x_3046 : f32 = u_xlat9.x;
        let x_3048 : f32 = u_xlat85;
        u_xlat85 = ((x_3044 * x_3046) + x_3048);
        let x_3051 : vec4<f32> = u_xlat17;
        let x_3052 : vec2<f32> = vec2<f32>(x_3051.z, x_3051.w);
        let x_3054 : f32 = u_xlat2.z;
        txVec52 = vec3<f32>(x_3052.x, x_3052.y, x_3054);
        let x_3061 : vec3<f32> = txVec52;
        let x_3063 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3061.xy, x_3061.z);
        u_xlat9.x = x_3063;
        let x_3066 : f32 = u_xlat21.y;
        let x_3068 : f32 = u_xlat9.x;
        let x_3070 : f32 = u_xlat85;
        u_xlat85 = ((x_3066 * x_3068) + x_3070);
        let x_3073 : vec2<f32> = u_xlat35;
        let x_3075 : f32 = u_xlat2.z;
        txVec53 = vec3<f32>(x_3073.x, x_3073.y, x_3075);
        let x_3082 : vec3<f32> = txVec53;
        let x_3084 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3082.xy, x_3082.z);
        u_xlat9.x = x_3084;
        let x_3087 : f32 = u_xlat21.z;
        let x_3089 : f32 = u_xlat9.x;
        let x_3091 : f32 = u_xlat85;
        u_xlat85 = ((x_3087 * x_3089) + x_3091);
        let x_3094 : vec4<f32> = u_xlat18;
        let x_3095 : vec2<f32> = vec2<f32>(x_3094.x, x_3094.y);
        let x_3097 : f32 = u_xlat2.z;
        txVec54 = vec3<f32>(x_3095.x, x_3095.y, x_3097);
        let x_3104 : vec3<f32> = txVec54;
        let x_3106 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3104.xy, x_3104.z);
        u_xlat9.x = x_3106;
        let x_3109 : f32 = u_xlat21.w;
        let x_3111 : f32 = u_xlat9.x;
        let x_3113 : f32 = u_xlat85;
        u_xlat85 = ((x_3109 * x_3111) + x_3113);
        let x_3116 : vec4<f32> = u_xlat12;
        let x_3117 : vec2<f32> = vec2<f32>(x_3116.x, x_3116.y);
        let x_3119 : f32 = u_xlat2.z;
        txVec55 = vec3<f32>(x_3117.x, x_3117.y, x_3119);
        let x_3126 : vec3<f32> = txVec55;
        let x_3128 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3126.xy, x_3126.z);
        u_xlat9.x = x_3128;
        let x_3131 : f32 = u_xlat8.x;
        let x_3133 : f32 = u_xlat9.x;
        let x_3135 : f32 = u_xlat85;
        u_xlat85 = ((x_3131 * x_3133) + x_3135);
        let x_3138 : vec4<f32> = u_xlat12;
        let x_3139 : vec2<f32> = vec2<f32>(x_3138.z, x_3138.w);
        let x_3141 : f32 = u_xlat2.z;
        txVec56 = vec3<f32>(x_3139.x, x_3139.y, x_3141);
        let x_3148 : vec3<f32> = txVec56;
        let x_3150 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3148.xy, x_3148.z);
        u_xlat8.x = x_3150;
        let x_3153 : f32 = u_xlat8.y;
        let x_3155 : f32 = u_xlat8.x;
        let x_3157 : f32 = u_xlat85;
        u_xlat85 = ((x_3153 * x_3155) + x_3157);
        let x_3160 : vec2<f32> = u_xlat63;
        let x_3162 : f32 = u_xlat2.z;
        txVec57 = vec3<f32>(x_3160.x, x_3160.y, x_3162);
        let x_3169 : vec3<f32> = txVec57;
        let x_3171 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3169.xy, x_3169.z);
        u_xlat8.x = x_3171;
        let x_3174 : f32 = u_xlat8.z;
        let x_3176 : f32 = u_xlat8.x;
        let x_3178 : f32 = u_xlat85;
        u_xlat85 = ((x_3174 * x_3176) + x_3178);
        let x_3181 : vec2<f32> = u_xlat58;
        let x_3183 : f32 = u_xlat2.z;
        txVec58 = vec3<f32>(x_3181.x, x_3181.y, x_3183);
        let x_3190 : vec3<f32> = txVec58;
        let x_3192 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3190.xy, x_3190.z);
        u_xlat58.x = x_3192;
        let x_3195 : f32 = u_xlat8.w;
        let x_3197 : f32 = u_xlat58.x;
        let x_3199 : f32 = u_xlat85;
        u_xlat0.x = ((x_3195 * x_3197) + x_3199);
      }
    }
  } else {
    let x_3204 : vec4<f32> = u_xlat2;
    let x_3205 : vec2<f32> = vec2<f32>(x_3204.x, x_3204.y);
    let x_3207 : f32 = u_xlat2.z;
    txVec59 = vec3<f32>(x_3205.x, x_3205.y, x_3207);
    let x_3214 : vec3<f32> = txVec59;
    let x_3216 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3214.xy, x_3214.z);
    u_xlat0.x = x_3216;
  }
  let x_3219 : f32 = u_xlat0.x;
  let x_3221 : f32 = x_246.x_MainLightShadowParams.x;
  let x_3223 : f32 = u_xlat80;
  u_xlat0.x = ((x_3219 * x_3221) + x_3223);
  let x_3226 : bool = u_xlatb3;
  if (x_3226) {
    x_3227 = 1.0f;
  } else {
    let x_3232 : f32 = u_xlat0.x;
    x_3227 = x_3232;
  }
  let x_3233 : f32 = x_3227;
  u_xlat0.x = x_3233;
  let x_3235 : vec3<f32> = vs_INTERP8;
  let x_3237 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  let x_3239 : vec3<f32> = (x_3235 + -(x_3237));
  let x_3240 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_3239.x, x_3239.y, x_3239.z, x_3240.w);
  let x_3242 : vec4<f32> = u_xlat2;
  let x_3244 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_3242.x, x_3242.y, x_3242.z), vec3<f32>(x_3244.x, x_3244.y, x_3244.z));
  let x_3250 : f32 = u_xlat2.x;
  let x_3252 : f32 = x_246.x_MainLightShadowParams.z;
  let x_3255 : f32 = x_246.x_MainLightShadowParams.w;
  u_xlat28.x = ((x_3250 * x_3252) + x_3255);
  let x_3259 : f32 = u_xlat28.x;
  u_xlat28.x = clamp(x_3259, 0.0f, 1.0f);
  let x_3264 : f32 = u_xlat0.x;
  u_xlat54 = (-(x_3264) + 1.0f);
  let x_3268 : f32 = u_xlat28.x;
  let x_3269 : f32 = u_xlat54;
  let x_3272 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_3268 * x_3269) + x_3272);
  let x_3275 : vec4<f32> = u_xlat7;
  let x_3278 : vec3<f32> = u_xlat26;
  u_xlat28.x = dot(-(vec3<f32>(x_3275.x, x_3275.y, x_3275.z)), x_3278);
  let x_3282 : f32 = u_xlat28.x;
  let x_3284 : f32 = u_xlat28.x;
  u_xlat28.x = (x_3282 + x_3284);
  let x_3287 : vec3<f32> = u_xlat26;
  let x_3288 : vec3<f32> = u_xlat28;
  let x_3292 : vec4<f32> = u_xlat7;
  u_xlat28 = ((x_3287 * -(vec3<f32>(x_3288.x, x_3288.x, x_3288.x))) + -(vec3<f32>(x_3292.x, x_3292.y, x_3292.z)));
  let x_3296 : vec3<f32> = u_xlat26;
  let x_3297 : vec4<f32> = u_xlat7;
  u_xlat3.x = dot(x_3296, vec3<f32>(x_3297.x, x_3297.y, x_3297.z));
  let x_3302 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_3302, 0.0f, 1.0f);
  let x_3306 : f32 = u_xlat3.x;
  u_xlat3.x = (-(x_3306) + 1.0f);
  let x_3311 : f32 = u_xlat3.x;
  let x_3313 : f32 = u_xlat3.x;
  u_xlat3.x = (x_3311 * x_3313);
  let x_3317 : f32 = u_xlat3.x;
  let x_3319 : f32 = u_xlat3.x;
  u_xlat3.x = (x_3317 * x_3319);
  let x_3323 : f32 = u_xlat29.x;
  u_xlat58.x = ((-(x_3323) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3331 : f32 = u_xlat29.x;
  let x_3333 : f32 = u_xlat58.x;
  u_xlat29.x = (x_3331 * x_3333);
  let x_3337 : f32 = u_xlat29.x;
  u_xlat29.x = (x_3337 * 6.0f);
  let x_3349 : vec3<f32> = u_xlat28;
  let x_3351 : f32 = u_xlat29.x;
  let x_3352 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_3349, x_3351);
  u_xlat8 = x_3352;
  let x_3354 : f32 = u_xlat8.w;
  u_xlat28.x = (x_3354 + -1.0f);
  let x_3358 : f32 = x_48.unity_SpecCube0_HDR.w;
  let x_3360 : f32 = u_xlat28.x;
  u_xlat28.x = ((x_3358 * x_3360) + 1.0f);
  let x_3365 : f32 = u_xlat28.x;
  u_xlat28.x = max(x_3365, 0.0f);
  let x_3369 : f32 = u_xlat28.x;
  u_xlat28.x = log2(x_3369);
  let x_3373 : f32 = u_xlat28.x;
  let x_3375 : f32 = x_48.unity_SpecCube0_HDR.y;
  u_xlat28.x = (x_3373 * x_3375);
  let x_3379 : f32 = u_xlat28.x;
  u_xlat28.x = exp2(x_3379);
  let x_3383 : f32 = u_xlat28.x;
  let x_3385 : f32 = x_48.unity_SpecCube0_HDR.x;
  u_xlat28.x = (x_3383 * x_3385);
  let x_3388 : vec4<f32> = u_xlat8;
  let x_3390 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_3388.x, x_3388.y, x_3388.z) * vec3<f32>(x_3390.x, x_3390.x, x_3390.x));
  let x_3393 : f32 = u_xlat81;
  let x_3395 : f32 = u_xlat81;
  let x_3399 : vec2<f32> = ((vec2<f32>(x_3393, x_3393) * vec2<f32>(x_3395, x_3395)) + vec2<f32>(-1.0f, 1.0f));
  let x_3400 : vec3<f32> = u_xlat29;
  u_xlat29 = vec3<f32>(x_3399.x, x_3400.y, x_3399.y);
  let x_3403 : f32 = u_xlat29.z;
  u_xlat81 = (1.0f / x_3403);
  let x_3405 : f32 = u_xlat83;
  u_xlat83 = (x_3405 + -0.03999999910593032837f);
  let x_3409 : f32 = u_xlat3.x;
  let x_3410 : f32 = u_xlat83;
  u_xlat3.x = ((x_3409 * x_3410) + 0.03999999910593032837f);
  let x_3416 : f32 = u_xlat3.x;
  let x_3417 : f32 = u_xlat81;
  u_xlat3.x = (x_3416 * x_3417);
  let x_3420 : vec3<f32> = u_xlat28;
  let x_3421 : vec4<f32> = u_xlat3;
  u_xlat28 = (x_3420 * vec3<f32>(x_3421.x, x_3421.x, x_3421.x));
  let x_3424 : vec4<f32> = u_xlat4;
  let x_3426 : vec3<f32> = u_xlat5;
  let x_3428 : vec3<f32> = u_xlat28;
  u_xlat28 = ((vec3<f32>(x_3424.x, x_3424.y, x_3424.z) * x_3426) + x_3428);
  let x_3431 : f32 = u_xlat0.x;
  let x_3433 : f32 = x_48.unity_LightData.z;
  u_xlat0.x = (x_3431 * x_3433);
  let x_3436 : vec3<f32> = u_xlat26;
  let x_3438 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat3.x = dot(x_3436, vec3<f32>(x_3438.x, x_3438.y, x_3438.z));
  let x_3443 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_3443, 0.0f, 1.0f);
  let x_3447 : f32 = u_xlat0.x;
  let x_3449 : f32 = u_xlat3.x;
  u_xlat0.x = (x_3447 * x_3449);
  let x_3452 : vec3<f32> = u_xlat0;
  let x_3455 : vec4<f32> = x_128.x_MainLightColor;
  let x_3457 : vec3<f32> = (vec3<f32>(x_3452.x, x_3452.x, x_3452.x) * vec3<f32>(x_3455.x, x_3455.y, x_3455.z));
  let x_3458 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_3457.x, x_3457.y, x_3457.z, x_3458.w);
  let x_3460 : vec4<f32> = u_xlat7;
  let x_3463 : vec4<f32> = x_128.x_MainLightPosition;
  let x_3465 : vec3<f32> = (vec3<f32>(x_3460.x, x_3460.y, x_3460.z) + vec3<f32>(x_3463.x, x_3463.y, x_3463.z));
  let x_3466 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3465.x, x_3465.y, x_3465.z, x_3466.w);
  let x_3468 : vec4<f32> = u_xlat8;
  let x_3470 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_3468.x, x_3468.y, x_3468.z), vec3<f32>(x_3470.x, x_3470.y, x_3470.z));
  let x_3475 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_3475, 1.17549435e-38f);
  let x_3479 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_3479);
  let x_3482 : vec3<f32> = u_xlat0;
  let x_3484 : vec4<f32> = u_xlat8;
  let x_3486 : vec3<f32> = (vec3<f32>(x_3482.x, x_3482.x, x_3482.x) * vec3<f32>(x_3484.x, x_3484.y, x_3484.z));
  let x_3487 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3486.x, x_3486.y, x_3486.z, x_3487.w);
  let x_3489 : vec3<f32> = u_xlat26;
  let x_3490 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_3489, vec3<f32>(x_3490.x, x_3490.y, x_3490.z));
  let x_3495 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_3495, 0.0f, 1.0f);
  let x_3499 : vec4<f32> = x_128.x_MainLightPosition;
  let x_3501 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_3499.x, x_3499.y, x_3499.z), vec3<f32>(x_3501.x, x_3501.y, x_3501.z));
  let x_3506 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_3506, 0.0f, 1.0f);
  let x_3510 : f32 = u_xlat0.x;
  let x_3512 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3510 * x_3512);
  let x_3516 : f32 = u_xlat0.x;
  let x_3518 : f32 = u_xlat29.x;
  u_xlat0.x = ((x_3516 * x_3518) + 1.00001001358032226562f);
  let x_3524 : f32 = u_xlat3.x;
  let x_3526 : f32 = u_xlat3.x;
  u_xlat3.x = (x_3524 * x_3526);
  let x_3530 : f32 = u_xlat0.x;
  let x_3532 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3530 * x_3532);
  let x_3536 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_3536, 0.10000000149011611938f);
  let x_3541 : f32 = u_xlat0.x;
  let x_3543 : f32 = u_xlat3.x;
  u_xlat0.x = (x_3541 * x_3543);
  let x_3547 : f32 = u_xlat6.x;
  let x_3549 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3547 * x_3549);
  let x_3552 : f32 = u_xlat82;
  let x_3554 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3552 / x_3554);
  let x_3557 : vec3<f32> = u_xlat0;
  let x_3561 : vec3<f32> = u_xlat5;
  let x_3562 : vec3<f32> = ((vec3<f32>(x_3557.x, x_3557.x, x_3557.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3561);
  let x_3563 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3562.x, x_3562.y, x_3562.z, x_3563.w);
  let x_3565 : vec4<f32> = u_xlat4;
  let x_3567 : vec4<f32> = u_xlat8;
  let x_3569 : vec3<f32> = (vec3<f32>(x_3565.x, x_3565.y, x_3565.z) * vec3<f32>(x_3567.x, x_3567.y, x_3567.z));
  let x_3570 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_3569.x, x_3569.y, x_3569.z, x_3570.w);
  let x_3573 : f32 = x_128.x_AdditionalLightsCount.x;
  let x_3575 : f32 = x_48.unity_LightData.y;
  u_xlat0.x = min(x_3573, x_3575);
  let x_3579 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_3579));
  let x_3583 : f32 = u_xlat2.x;
  let x_3586 : f32 = x_246.x_AdditionalShadowFadeParams.x;
  let x_3589 : f32 = x_246.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_3583 * x_3586) + x_3589);
  let x_3593 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_3593, 0.0f, 1.0f);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3606 : u32 = u_xlatu_loop_1;
    let x_3607 : u32 = u_xlatu0;
    if ((x_3606 < x_3607)) {
    } else {
      break;
    }
    let x_3610 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_3610 >> 2u);
    let x_3613 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_3613 & 3u));
    let x_3616 : u32 = u_xlatu81;
    let x_3619 : vec4<f32> = x_48.unity_LightIndices[bitcast<i32>(x_3616)];
    let x_3629 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3634 : vec4<u32> = indexable[x_3629];
    u_xlat81 = dot(x_3619, bitcast<vec4<f32>>(x_3634));
    let x_3638 : f32 = u_xlat81;
    u_xlati81 = i32(x_3638);
    let x_3640 : vec3<f32> = vs_INTERP8;
    let x_3651 : i32 = u_xlati81;
    let x_3653 : vec4<f32> = x_3650.x_AdditionalLightsPosition[x_3651];
    let x_3656 : i32 = u_xlati81;
    let x_3658 : vec4<f32> = x_3650.x_AdditionalLightsPosition[x_3656];
    let x_3660 : vec3<f32> = ((-(x_3640) * vec3<f32>(x_3653.w, x_3653.w, x_3653.w)) + vec3<f32>(x_3658.x, x_3658.y, x_3658.z));
    let x_3661 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3660.x, x_3660.y, x_3660.z, x_3661.w);
    let x_3663 : vec4<f32> = u_xlat9;
    let x_3665 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_3663.x, x_3663.y, x_3663.z), vec3<f32>(x_3665.x, x_3665.y, x_3665.z));
    let x_3668 : f32 = u_xlat83;
    u_xlat83 = max(x_3668, 0.00006103515625f);
    let x_3671 : f32 = u_xlat83;
    u_xlat58.x = inverseSqrt(x_3671);
    let x_3674 : vec2<f32> = u_xlat58;
    let x_3676 : vec4<f32> = u_xlat9;
    let x_3678 : vec3<f32> = (vec3<f32>(x_3674.x, x_3674.x, x_3674.x) * vec3<f32>(x_3676.x, x_3676.y, x_3676.z));
    let x_3679 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3678.x, x_3678.y, x_3678.z, x_3679.w);
    let x_3681 : f32 = u_xlat83;
    u_xlat84 = (1.0f / x_3681);
    let x_3683 : f32 = u_xlat83;
    let x_3684 : i32 = u_xlati81;
    let x_3686 : f32 = x_3650.x_AdditionalLightsAttenuation[x_3684].x;
    u_xlat83 = (x_3683 * x_3686);
    let x_3688 : f32 = u_xlat83;
    let x_3690 : f32 = u_xlat83;
    u_xlat83 = ((-(x_3688) * x_3690) + 1.0f);
    let x_3693 : f32 = u_xlat83;
    u_xlat83 = max(x_3693, 0.0f);
    let x_3695 : f32 = u_xlat83;
    let x_3696 : f32 = u_xlat83;
    u_xlat83 = (x_3695 * x_3696);
    let x_3698 : f32 = u_xlat83;
    let x_3699 : f32 = u_xlat84;
    u_xlat83 = (x_3698 * x_3699);
    let x_3701 : i32 = u_xlati81;
    let x_3703 : vec4<f32> = x_3650.x_AdditionalLightsSpotDir[x_3701];
    let x_3705 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_3703.x, x_3703.y, x_3703.z), vec3<f32>(x_3705.x, x_3705.y, x_3705.z));
    let x_3708 : f32 = u_xlat84;
    let x_3709 : i32 = u_xlati81;
    let x_3711 : f32 = x_3650.x_AdditionalLightsAttenuation[x_3709].z;
    let x_3713 : i32 = u_xlati81;
    let x_3715 : f32 = x_3650.x_AdditionalLightsAttenuation[x_3713].w;
    u_xlat84 = ((x_3708 * x_3711) + x_3715);
    let x_3717 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3717, 0.0f, 1.0f);
    let x_3719 : f32 = u_xlat84;
    let x_3720 : f32 = u_xlat84;
    u_xlat84 = (x_3719 * x_3720);
    let x_3722 : f32 = u_xlat83;
    let x_3723 : f32 = u_xlat84;
    u_xlat83 = (x_3722 * x_3723);
    let x_3727 : i32 = u_xlati81;
    let x_3729 : f32 = x_246.x_AdditionalShadowParams[x_3727].w;
    u_xlati84 = i32(x_3729);
    let x_3732 : i32 = u_xlati84;
    u_xlatb85 = (x_3732 >= 0i);
    let x_3734 : bool = u_xlatb85;
    if (x_3734) {
      let x_3738 : i32 = u_xlati81;
      let x_3740 : f32 = x_246.x_AdditionalShadowParams[x_3738].z;
      u_xlatb85 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3740, x_3740, x_3740, x_3740))));
      let x_3744 : bool = u_xlatb85;
      if (x_3744) {
        let x_3748 : vec4<f32> = u_xlat10;
        let x_3751 : vec4<f32> = u_xlat10;
        let x_3754 : vec4<bool> = (abs(vec4<f32>(x_3748.z, x_3748.z, x_3748.y, x_3748.z)) >= abs(vec4<f32>(x_3751.x, x_3751.y, x_3751.x, x_3751.x)));
        let x_3756 : vec3<bool> = vec3<bool>(x_3754.x, x_3754.y, x_3754.z);
        let x_3757 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3756.x, x_3756.y, x_3756.z, x_3757.w);
        let x_3760 : bool = u_xlatb11.y;
        let x_3762 : bool = u_xlatb11.x;
        u_xlatb85 = (x_3760 & x_3762);
        let x_3764 : vec4<f32> = u_xlat10;
        let x_3767 : vec4<bool> = (-(vec4<f32>(x_3764.z, x_3764.y, x_3764.z, x_3764.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3768 : vec3<bool> = vec3<bool>(x_3767.x, x_3767.y, x_3767.w);
        let x_3769 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3768.x, x_3768.y, x_3769.z, x_3768.z);
        let x_3772 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3772);
        let x_3777 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3777);
        let x_3782 : bool = u_xlatb11.w;
        u_xlat86 = select(0.0f, 1.0f, x_3782);
        let x_3785 : bool = u_xlatb11.z;
        if (x_3785) {
          let x_3790 : f32 = u_xlat11.y;
          x_3786 = x_3790;
        } else {
          let x_3792 : f32 = u_xlat86;
          x_3786 = x_3792;
        }
        let x_3793 : f32 = x_3786;
        u_xlat86 = x_3793;
        let x_3794 : bool = u_xlatb85;
        if (x_3794) {
          let x_3799 : f32 = u_xlat11.x;
          x_3795 = x_3799;
        } else {
          let x_3801 : f32 = u_xlat86;
          x_3795 = x_3801;
        }
        let x_3802 : f32 = x_3795;
        u_xlat85 = x_3802;
        let x_3803 : i32 = u_xlati81;
        let x_3805 : f32 = x_246.x_AdditionalShadowParams[x_3803].w;
        u_xlat86 = trunc(x_3805);
        let x_3807 : f32 = u_xlat85;
        let x_3808 : f32 = u_xlat86;
        u_xlat85 = (x_3807 + x_3808);
        let x_3810 : f32 = u_xlat85;
        u_xlati84 = i32(x_3810);
      }
      let x_3812 : i32 = u_xlati84;
      u_xlati84 = (x_3812 << bitcast<u32>(2i));
      let x_3814 : vec3<f32> = vs_INTERP8;
      let x_3817 : i32 = u_xlati84;
      let x_3820 : i32 = u_xlati84;
      let x_3824 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[((x_3817 + 1i) / 4i)][((x_3820 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3814.y, x_3814.y, x_3814.y, x_3814.y) * x_3824);
      let x_3826 : i32 = u_xlati84;
      let x_3828 : i32 = u_xlati84;
      let x_3831 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[(x_3826 / 4i)][(x_3828 % 4i)];
      let x_3832 : vec3<f32> = vs_INTERP8;
      let x_3835 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3831 * vec4<f32>(x_3832.x, x_3832.x, x_3832.x, x_3832.x)) + x_3835);
      let x_3837 : i32 = u_xlati84;
      let x_3840 : i32 = u_xlati84;
      let x_3844 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[((x_3837 + 2i) / 4i)][((x_3840 + 2i) % 4i)];
      let x_3845 : vec3<f32> = vs_INTERP8;
      let x_3848 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3844 * vec4<f32>(x_3845.z, x_3845.z, x_3845.z, x_3845.z)) + x_3848);
      let x_3850 : vec4<f32> = u_xlat11;
      let x_3851 : i32 = u_xlati84;
      let x_3854 : i32 = u_xlati84;
      let x_3858 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[((x_3851 + 3i) / 4i)][((x_3854 + 3i) % 4i)];
      u_xlat11 = (x_3850 + x_3858);
      let x_3860 : vec4<f32> = u_xlat11;
      let x_3862 : vec4<f32> = u_xlat11;
      let x_3864 : vec3<f32> = (vec3<f32>(x_3860.x, x_3860.y, x_3860.z) / vec3<f32>(x_3862.w, x_3862.w, x_3862.w));
      let x_3865 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3864.x, x_3864.y, x_3864.z, x_3865.w);
      let x_3868 : i32 = u_xlati81;
      let x_3870 : f32 = x_246.x_AdditionalShadowParams[x_3868].y;
      u_xlatb84 = (0.0f < x_3870);
      let x_3872 : bool = u_xlatb84;
      if (x_3872) {
        let x_3875 : i32 = u_xlati81;
        let x_3877 : f32 = x_246.x_AdditionalShadowParams[x_3875].y;
        u_xlatb84 = (1.0f == x_3877);
        let x_3879 : bool = u_xlatb84;
        if (x_3879) {
          let x_3882 : vec4<f32> = u_xlat11;
          let x_3886 : vec4<f32> = x_246.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3882.x, x_3882.y, x_3882.x, x_3882.y) + x_3886);
          let x_3889 : vec4<f32> = u_xlat12;
          let x_3890 : vec2<f32> = vec2<f32>(x_3889.x, x_3889.y);
          let x_3892 : f32 = u_xlat11.z;
          txVec60 = vec3<f32>(x_3890.x, x_3890.y, x_3892);
          let x_3900 : vec3<f32> = txVec60;
          let x_3902 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3900.xy, x_3900.z);
          u_xlat13.x = x_3902;
          let x_3905 : vec4<f32> = u_xlat12;
          let x_3906 : vec2<f32> = vec2<f32>(x_3905.z, x_3905.w);
          let x_3908 : f32 = u_xlat11.z;
          txVec61 = vec3<f32>(x_3906.x, x_3906.y, x_3908);
          let x_3915 : vec3<f32> = txVec61;
          let x_3917 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3915.xy, x_3915.z);
          u_xlat13.y = x_3917;
          let x_3919 : vec4<f32> = u_xlat11;
          let x_3923 : vec4<f32> = x_246.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3919.x, x_3919.y, x_3919.x, x_3919.y) + x_3923);
          let x_3926 : vec4<f32> = u_xlat12;
          let x_3927 : vec2<f32> = vec2<f32>(x_3926.x, x_3926.y);
          let x_3929 : f32 = u_xlat11.z;
          txVec62 = vec3<f32>(x_3927.x, x_3927.y, x_3929);
          let x_3936 : vec3<f32> = txVec62;
          let x_3938 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3936.xy, x_3936.z);
          u_xlat13.z = x_3938;
          let x_3941 : vec4<f32> = u_xlat12;
          let x_3942 : vec2<f32> = vec2<f32>(x_3941.z, x_3941.w);
          let x_3944 : f32 = u_xlat11.z;
          txVec63 = vec3<f32>(x_3942.x, x_3942.y, x_3944);
          let x_3951 : vec3<f32> = txVec63;
          let x_3953 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3951.xy, x_3951.z);
          u_xlat13.w = x_3953;
          let x_3955 : vec4<f32> = u_xlat13;
          u_xlat84 = dot(x_3955, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3958 : i32 = u_xlati81;
          let x_3960 : f32 = x_246.x_AdditionalShadowParams[x_3958].y;
          u_xlatb85 = (2.0f == x_3960);
          let x_3962 : bool = u_xlatb85;
          if (x_3962) {
            let x_3965 : vec4<f32> = u_xlat11;
            let x_3969 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_3972 : vec2<f32> = ((vec2<f32>(x_3965.x, x_3965.y) * vec2<f32>(x_3969.z, x_3969.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3973 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3972.x, x_3972.y, x_3973.z, x_3973.w);
            let x_3975 : vec4<f32> = u_xlat12;
            let x_3977 : vec2<f32> = floor(vec2<f32>(x_3975.x, x_3975.y));
            let x_3978 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3977.x, x_3977.y, x_3978.z, x_3978.w);
            let x_3981 : vec4<f32> = u_xlat11;
            let x_3984 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_3987 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3981.x, x_3981.y) * vec2<f32>(x_3984.z, x_3984.w)) + -(vec2<f32>(x_3987.x, x_3987.y)));
            let x_3991 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3991.x, x_3991.x, x_3991.y, x_3991.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3994 : vec4<f32> = u_xlat13;
            let x_3996 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3994.x, x_3994.x, x_3994.z, x_3994.z) * vec4<f32>(x_3996.x, x_3996.x, x_3996.z, x_3996.z));
            let x_3999 : vec4<f32> = u_xlat14;
            let x_4001 : vec2<f32> = (vec2<f32>(x_3999.y, x_3999.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_4002 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4001.x, x_4002.y, x_4001.y, x_4002.w);
            let x_4004 : vec4<f32> = u_xlat14;
            let x_4007 : vec2<f32> = u_xlat64;
            let x_4009 : vec2<f32> = ((vec2<f32>(x_4004.x, x_4004.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4007));
            let x_4010 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4009.x, x_4009.y, x_4010.z, x_4010.w);
            let x_4012 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_4012) + vec2<f32>(1.0f, 1.0f));
            let x_4015 : vec2<f32> = u_xlat64;
            let x_4016 : vec2<f32> = min(x_4015, vec2<f32>(0.0f, 0.0f));
            let x_4017 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4016.x, x_4016.y, x_4017.z, x_4017.w);
            let x_4019 : vec4<f32> = u_xlat15;
            let x_4022 : vec4<f32> = u_xlat15;
            let x_4025 : vec2<f32> = u_xlat66;
            let x_4026 : vec2<f32> = ((-(vec2<f32>(x_4019.x, x_4019.y)) * vec2<f32>(x_4022.x, x_4022.y)) + x_4025);
            let x_4027 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4026.x, x_4026.y, x_4027.z, x_4027.w);
            let x_4029 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_4029, vec2<f32>(0.0f, 0.0f));
            let x_4031 : vec2<f32> = u_xlat64;
            let x_4033 : vec2<f32> = u_xlat64;
            let x_4035 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_4031) * x_4033) + vec2<f32>(x_4035.y, x_4035.w));
            let x_4038 : vec4<f32> = u_xlat15;
            let x_4040 : vec2<f32> = (vec2<f32>(x_4038.x, x_4038.y) + vec2<f32>(1.0f, 1.0f));
            let x_4041 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4040.x, x_4040.y, x_4041.z, x_4041.w);
            let x_4043 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_4043 + vec2<f32>(1.0f, 1.0f));
            let x_4045 : vec4<f32> = u_xlat14;
            let x_4047 : vec2<f32> = (vec2<f32>(x_4045.x, x_4045.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4048 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4047.x, x_4047.y, x_4048.z, x_4048.w);
            let x_4050 : vec2<f32> = u_xlat66;
            let x_4051 : vec2<f32> = (x_4050 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4052 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4051.x, x_4051.y, x_4052.z, x_4052.w);
            let x_4054 : vec4<f32> = u_xlat15;
            let x_4056 : vec2<f32> = (vec2<f32>(x_4054.x, x_4054.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4057 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4056.x, x_4056.y, x_4057.z, x_4057.w);
            let x_4059 : vec2<f32> = u_xlat64;
            let x_4060 : vec2<f32> = (x_4059 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4061 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4060.x, x_4060.y, x_4061.z, x_4061.w);
            let x_4063 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_4063.y, x_4063.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4067 : f32 = u_xlat15.x;
            u_xlat16.z = x_4067;
            let x_4070 : f32 = u_xlat64.x;
            u_xlat16.w = x_4070;
            let x_4073 : f32 = u_xlat17.x;
            u_xlat14.z = x_4073;
            let x_4076 : f32 = u_xlat13.x;
            u_xlat14.w = x_4076;
            let x_4078 : vec4<f32> = u_xlat14;
            let x_4080 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_4078.z, x_4078.w, x_4078.x, x_4078.z) + vec4<f32>(x_4080.z, x_4080.w, x_4080.x, x_4080.z));
            let x_4084 : f32 = u_xlat16.y;
            u_xlat15.z = x_4084;
            let x_4087 : f32 = u_xlat64.y;
            u_xlat15.w = x_4087;
            let x_4090 : f32 = u_xlat14.y;
            u_xlat17.z = x_4090;
            let x_4093 : f32 = u_xlat13.z;
            u_xlat17.w = x_4093;
            let x_4095 : vec4<f32> = u_xlat15;
            let x_4097 : vec4<f32> = u_xlat17;
            let x_4099 : vec3<f32> = (vec3<f32>(x_4095.z, x_4095.y, x_4095.w) + vec3<f32>(x_4097.z, x_4097.y, x_4097.w));
            let x_4100 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4099.x, x_4099.y, x_4099.z, x_4100.w);
            let x_4102 : vec4<f32> = u_xlat14;
            let x_4104 : vec4<f32> = u_xlat18;
            let x_4106 : vec3<f32> = (vec3<f32>(x_4102.x, x_4102.z, x_4102.w) / vec3<f32>(x_4104.z, x_4104.w, x_4104.y));
            let x_4107 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4106.x, x_4106.y, x_4106.z, x_4107.w);
            let x_4109 : vec4<f32> = u_xlat14;
            let x_4111 : vec3<f32> = (vec3<f32>(x_4109.x, x_4109.y, x_4109.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4112 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4111.x, x_4111.y, x_4111.z, x_4112.w);
            let x_4114 : vec4<f32> = u_xlat17;
            let x_4116 : vec4<f32> = u_xlat13;
            let x_4118 : vec3<f32> = (vec3<f32>(x_4114.z, x_4114.y, x_4114.w) / vec3<f32>(x_4116.x, x_4116.y, x_4116.z));
            let x_4119 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4118.x, x_4118.y, x_4118.z, x_4119.w);
            let x_4121 : vec4<f32> = u_xlat15;
            let x_4123 : vec3<f32> = (vec3<f32>(x_4121.x, x_4121.y, x_4121.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4124 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4123.x, x_4123.y, x_4123.z, x_4124.w);
            let x_4126 : vec4<f32> = u_xlat14;
            let x_4129 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4131 : vec3<f32> = (vec3<f32>(x_4126.y, x_4126.x, x_4126.z) * vec3<f32>(x_4129.x, x_4129.x, x_4129.x));
            let x_4132 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4131.x, x_4131.y, x_4131.z, x_4132.w);
            let x_4134 : vec4<f32> = u_xlat15;
            let x_4137 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4139 : vec3<f32> = (vec3<f32>(x_4134.x, x_4134.y, x_4134.z) * vec3<f32>(x_4137.y, x_4137.y, x_4137.y));
            let x_4140 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4139.x, x_4139.y, x_4139.z, x_4140.w);
            let x_4143 : f32 = u_xlat15.x;
            u_xlat14.w = x_4143;
            let x_4145 : vec4<f32> = u_xlat12;
            let x_4148 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4151 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4145.x, x_4145.y, x_4145.x, x_4145.y) * vec4<f32>(x_4148.x, x_4148.y, x_4148.x, x_4148.y)) + vec4<f32>(x_4151.y, x_4151.w, x_4151.x, x_4151.w));
            let x_4154 : vec4<f32> = u_xlat12;
            let x_4157 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4160 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4154.x, x_4154.y) * vec2<f32>(x_4157.x, x_4157.y)) + vec2<f32>(x_4160.z, x_4160.w));
            let x_4164 : f32 = u_xlat14.y;
            u_xlat15.w = x_4164;
            let x_4166 : vec4<f32> = u_xlat15;
            let x_4167 : vec2<f32> = vec2<f32>(x_4166.y, x_4166.z);
            let x_4168 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4168.x, x_4167.x, x_4168.z, x_4167.y);
            let x_4170 : vec4<f32> = u_xlat12;
            let x_4173 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4176 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_4170.x, x_4170.y, x_4170.x, x_4170.y) * vec4<f32>(x_4173.x, x_4173.y, x_4173.x, x_4173.y)) + vec4<f32>(x_4176.x, x_4176.y, x_4176.z, x_4176.y));
            let x_4179 : vec4<f32> = u_xlat12;
            let x_4182 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4185 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4179.x, x_4179.y, x_4179.x, x_4179.y) * vec4<f32>(x_4182.x, x_4182.y, x_4182.x, x_4182.y)) + vec4<f32>(x_4185.w, x_4185.y, x_4185.w, x_4185.z));
            let x_4188 : vec4<f32> = u_xlat12;
            let x_4191 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4194 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4188.x, x_4188.y, x_4188.x, x_4188.y) * vec4<f32>(x_4191.x, x_4191.y, x_4191.x, x_4191.y)) + vec4<f32>(x_4194.x, x_4194.w, x_4194.z, x_4194.w));
            let x_4197 : vec4<f32> = u_xlat13;
            let x_4199 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_4197.x, x_4197.x, x_4197.x, x_4197.y) * vec4<f32>(x_4199.z, x_4199.w, x_4199.y, x_4199.z));
            let x_4202 : vec4<f32> = u_xlat13;
            let x_4204 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_4202.y, x_4202.y, x_4202.z, x_4202.z) * x_4204);
            let x_4207 : f32 = u_xlat13.z;
            let x_4209 : f32 = u_xlat18.y;
            u_xlat85 = (x_4207 * x_4209);
            let x_4212 : vec4<f32> = u_xlat16;
            let x_4213 : vec2<f32> = vec2<f32>(x_4212.x, x_4212.y);
            let x_4215 : f32 = u_xlat11.z;
            txVec64 = vec3<f32>(x_4213.x, x_4213.y, x_4215);
            let x_4222 : vec3<f32> = txVec64;
            let x_4224 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4222.xy, x_4222.z);
            u_xlat86 = x_4224;
            let x_4226 : vec4<f32> = u_xlat16;
            let x_4227 : vec2<f32> = vec2<f32>(x_4226.z, x_4226.w);
            let x_4229 : f32 = u_xlat11.z;
            txVec65 = vec3<f32>(x_4227.x, x_4227.y, x_4229);
            let x_4237 : vec3<f32> = txVec65;
            let x_4239 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4237.xy, x_4237.z);
            u_xlat87 = x_4239;
            let x_4240 : f32 = u_xlat87;
            let x_4242 : f32 = u_xlat19.y;
            u_xlat87 = (x_4240 * x_4242);
            let x_4245 : f32 = u_xlat19.x;
            let x_4246 : f32 = u_xlat86;
            let x_4248 : f32 = u_xlat87;
            u_xlat86 = ((x_4245 * x_4246) + x_4248);
            let x_4251 : vec2<f32> = u_xlat64;
            let x_4253 : f32 = u_xlat11.z;
            txVec66 = vec3<f32>(x_4251.x, x_4251.y, x_4253);
            let x_4260 : vec3<f32> = txVec66;
            let x_4262 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4260.xy, x_4260.z);
            u_xlat87 = x_4262;
            let x_4264 : f32 = u_xlat19.z;
            let x_4265 : f32 = u_xlat87;
            let x_4267 : f32 = u_xlat86;
            u_xlat86 = ((x_4264 * x_4265) + x_4267);
            let x_4270 : vec4<f32> = u_xlat15;
            let x_4271 : vec2<f32> = vec2<f32>(x_4270.x, x_4270.y);
            let x_4273 : f32 = u_xlat11.z;
            txVec67 = vec3<f32>(x_4271.x, x_4271.y, x_4273);
            let x_4280 : vec3<f32> = txVec67;
            let x_4282 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4280.xy, x_4280.z);
            u_xlat87 = x_4282;
            let x_4284 : f32 = u_xlat19.w;
            let x_4285 : f32 = u_xlat87;
            let x_4287 : f32 = u_xlat86;
            u_xlat86 = ((x_4284 * x_4285) + x_4287);
            let x_4290 : vec4<f32> = u_xlat17;
            let x_4291 : vec2<f32> = vec2<f32>(x_4290.x, x_4290.y);
            let x_4293 : f32 = u_xlat11.z;
            txVec68 = vec3<f32>(x_4291.x, x_4291.y, x_4293);
            let x_4300 : vec3<f32> = txVec68;
            let x_4302 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4300.xy, x_4300.z);
            u_xlat87 = x_4302;
            let x_4304 : f32 = u_xlat20.x;
            let x_4305 : f32 = u_xlat87;
            let x_4307 : f32 = u_xlat86;
            u_xlat86 = ((x_4304 * x_4305) + x_4307);
            let x_4310 : vec4<f32> = u_xlat17;
            let x_4311 : vec2<f32> = vec2<f32>(x_4310.z, x_4310.w);
            let x_4313 : f32 = u_xlat11.z;
            txVec69 = vec3<f32>(x_4311.x, x_4311.y, x_4313);
            let x_4320 : vec3<f32> = txVec69;
            let x_4322 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4320.xy, x_4320.z);
            u_xlat87 = x_4322;
            let x_4324 : f32 = u_xlat20.y;
            let x_4325 : f32 = u_xlat87;
            let x_4327 : f32 = u_xlat86;
            u_xlat86 = ((x_4324 * x_4325) + x_4327);
            let x_4330 : vec4<f32> = u_xlat15;
            let x_4331 : vec2<f32> = vec2<f32>(x_4330.z, x_4330.w);
            let x_4333 : f32 = u_xlat11.z;
            txVec70 = vec3<f32>(x_4331.x, x_4331.y, x_4333);
            let x_4340 : vec3<f32> = txVec70;
            let x_4342 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4340.xy, x_4340.z);
            u_xlat87 = x_4342;
            let x_4344 : f32 = u_xlat20.z;
            let x_4345 : f32 = u_xlat87;
            let x_4347 : f32 = u_xlat86;
            u_xlat86 = ((x_4344 * x_4345) + x_4347);
            let x_4350 : vec4<f32> = u_xlat14;
            let x_4351 : vec2<f32> = vec2<f32>(x_4350.x, x_4350.y);
            let x_4353 : f32 = u_xlat11.z;
            txVec71 = vec3<f32>(x_4351.x, x_4351.y, x_4353);
            let x_4360 : vec3<f32> = txVec71;
            let x_4362 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4360.xy, x_4360.z);
            u_xlat87 = x_4362;
            let x_4364 : f32 = u_xlat20.w;
            let x_4365 : f32 = u_xlat87;
            let x_4367 : f32 = u_xlat86;
            u_xlat86 = ((x_4364 * x_4365) + x_4367);
            let x_4370 : vec4<f32> = u_xlat14;
            let x_4371 : vec2<f32> = vec2<f32>(x_4370.z, x_4370.w);
            let x_4373 : f32 = u_xlat11.z;
            txVec72 = vec3<f32>(x_4371.x, x_4371.y, x_4373);
            let x_4380 : vec3<f32> = txVec72;
            let x_4382 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4380.xy, x_4380.z);
            u_xlat87 = x_4382;
            let x_4383 : f32 = u_xlat85;
            let x_4384 : f32 = u_xlat87;
            let x_4386 : f32 = u_xlat86;
            u_xlat84 = ((x_4383 * x_4384) + x_4386);
          } else {
            let x_4389 : vec4<f32> = u_xlat11;
            let x_4392 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4395 : vec2<f32> = ((vec2<f32>(x_4389.x, x_4389.y) * vec2<f32>(x_4392.z, x_4392.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4396 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4395.x, x_4395.y, x_4396.z, x_4396.w);
            let x_4398 : vec4<f32> = u_xlat12;
            let x_4400 : vec2<f32> = floor(vec2<f32>(x_4398.x, x_4398.y));
            let x_4401 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4400.x, x_4400.y, x_4401.z, x_4401.w);
            let x_4403 : vec4<f32> = u_xlat11;
            let x_4406 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4409 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4403.x, x_4403.y) * vec2<f32>(x_4406.z, x_4406.w)) + -(vec2<f32>(x_4409.x, x_4409.y)));
            let x_4413 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4413.x, x_4413.x, x_4413.y, x_4413.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4416 : vec4<f32> = u_xlat13;
            let x_4418 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4416.x, x_4416.x, x_4416.z, x_4416.z) * vec4<f32>(x_4418.x, x_4418.x, x_4418.z, x_4418.z));
            let x_4421 : vec4<f32> = u_xlat14;
            let x_4423 : vec2<f32> = (vec2<f32>(x_4421.y, x_4421.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4424 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4424.x, x_4423.x, x_4424.z, x_4423.y);
            let x_4426 : vec4<f32> = u_xlat14;
            let x_4429 : vec2<f32> = u_xlat64;
            let x_4431 : vec2<f32> = ((vec2<f32>(x_4426.x, x_4426.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4429));
            let x_4432 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4431.x, x_4432.y, x_4431.y, x_4432.w);
            let x_4434 : vec2<f32> = u_xlat64;
            let x_4436 : vec2<f32> = (-(x_4434) + vec2<f32>(1.0f, 1.0f));
            let x_4437 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4436.x, x_4436.y, x_4437.z, x_4437.w);
            let x_4439 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_4439, vec2<f32>(0.0f, 0.0f));
            let x_4441 : vec2<f32> = u_xlat66;
            let x_4443 : vec2<f32> = u_xlat66;
            let x_4445 : vec4<f32> = u_xlat14;
            let x_4447 : vec2<f32> = ((-(x_4441) * x_4443) + vec2<f32>(x_4445.x, x_4445.y));
            let x_4448 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4447.x, x_4447.y, x_4448.z, x_4448.w);
            let x_4450 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_4450, vec2<f32>(0.0f, 0.0f));
            let x_4453 : vec2<f32> = u_xlat66;
            let x_4455 : vec2<f32> = u_xlat66;
            let x_4457 : vec4<f32> = u_xlat13;
            let x_4459 : vec2<f32> = ((-(x_4453) * x_4455) + vec2<f32>(x_4457.y, x_4457.w));
            let x_4460 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_4459.x, x_4460.y, x_4459.y);
            let x_4462 : vec4<f32> = u_xlat14;
            let x_4464 : vec2<f32> = (vec2<f32>(x_4462.x, x_4462.y) + vec2<f32>(2.0f, 2.0f));
            let x_4465 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4464.x, x_4464.y, x_4465.z, x_4465.w);
            let x_4467 : vec3<f32> = u_xlat39;
            let x_4469 : vec2<f32> = (vec2<f32>(x_4467.x, x_4467.z) + vec2<f32>(2.0f, 2.0f));
            let x_4470 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4470.x, x_4469.x, x_4470.z, x_4469.y);
            let x_4473 : f32 = u_xlat13.y;
            u_xlat16.z = (x_4473 * 0.08163200318813323975f);
            let x_4476 : vec4<f32> = u_xlat13;
            let x_4478 : vec3<f32> = (vec3<f32>(x_4476.z, x_4476.x, x_4476.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4479 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4478.x, x_4478.y, x_4478.z, x_4479.w);
            let x_4481 : vec4<f32> = u_xlat14;
            let x_4483 : vec2<f32> = (vec2<f32>(x_4481.x, x_4481.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4484 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4483.x, x_4483.y, x_4484.z, x_4484.w);
            let x_4487 : f32 = u_xlat17.y;
            u_xlat16.x = x_4487;
            let x_4489 : vec2<f32> = u_xlat64;
            let x_4492 : vec2<f32> = ((vec2<f32>(x_4489.x, x_4489.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4493 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4493.x, x_4492.x, x_4493.z, x_4492.y);
            let x_4495 : vec2<f32> = u_xlat64;
            let x_4498 : vec2<f32> = ((vec2<f32>(x_4495.x, x_4495.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4499 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4498.x, x_4499.y, x_4498.y, x_4499.w);
            let x_4502 : f32 = u_xlat13.x;
            u_xlat14.y = x_4502;
            let x_4505 : f32 = u_xlat15.y;
            u_xlat14.w = x_4505;
            let x_4507 : vec4<f32> = u_xlat14;
            let x_4508 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4507 + x_4508);
            let x_4510 : vec2<f32> = u_xlat64;
            let x_4513 : vec2<f32> = ((vec2<f32>(x_4510.y, x_4510.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4514 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4514.x, x_4513.x, x_4514.z, x_4513.y);
            let x_4516 : vec2<f32> = u_xlat64;
            let x_4519 : vec2<f32> = ((vec2<f32>(x_4516.y, x_4516.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4520 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4519.x, x_4520.y, x_4519.y, x_4520.w);
            let x_4523 : f32 = u_xlat13.y;
            u_xlat15.y = x_4523;
            let x_4525 : vec4<f32> = u_xlat15;
            let x_4526 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4525 + x_4526);
            let x_4528 : vec4<f32> = u_xlat14;
            let x_4529 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_4528 / x_4529);
            let x_4531 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4531 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4533 : vec4<f32> = u_xlat15;
            let x_4534 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_4533 / x_4534);
            let x_4536 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4536 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4538 : vec4<f32> = u_xlat14;
            let x_4541 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4538.w, x_4538.x, x_4538.y, x_4538.z) * vec4<f32>(x_4541.x, x_4541.x, x_4541.x, x_4541.x));
            let x_4544 : vec4<f32> = u_xlat15;
            let x_4547 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_4544.x, x_4544.w, x_4544.y, x_4544.z) * vec4<f32>(x_4547.y, x_4547.y, x_4547.y, x_4547.y));
            let x_4550 : vec4<f32> = u_xlat14;
            let x_4551 : vec3<f32> = vec3<f32>(x_4550.y, x_4550.z, x_4550.w);
            let x_4552 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4551.x, x_4552.y, x_4551.y, x_4551.z);
            let x_4555 : f32 = u_xlat15.x;
            u_xlat17.y = x_4555;
            let x_4557 : vec4<f32> = u_xlat12;
            let x_4560 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4563 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4557.x, x_4557.y, x_4557.x, x_4557.y) * vec4<f32>(x_4560.x, x_4560.y, x_4560.x, x_4560.y)) + vec4<f32>(x_4563.x, x_4563.y, x_4563.z, x_4563.y));
            let x_4566 : vec4<f32> = u_xlat12;
            let x_4569 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4572 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_4566.x, x_4566.y) * vec2<f32>(x_4569.x, x_4569.y)) + vec2<f32>(x_4572.w, x_4572.y));
            let x_4576 : f32 = u_xlat17.y;
            u_xlat14.y = x_4576;
            let x_4579 : f32 = u_xlat15.z;
            u_xlat17.y = x_4579;
            let x_4581 : vec4<f32> = u_xlat12;
            let x_4584 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4587 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_4581.x, x_4581.y, x_4581.x, x_4581.y) * vec4<f32>(x_4584.x, x_4584.y, x_4584.x, x_4584.y)) + vec4<f32>(x_4587.x, x_4587.y, x_4587.z, x_4587.y));
            let x_4590 : vec4<f32> = u_xlat12;
            let x_4593 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4596 : vec4<f32> = u_xlat17;
            let x_4598 : vec2<f32> = ((vec2<f32>(x_4590.x, x_4590.y) * vec2<f32>(x_4593.x, x_4593.y)) + vec2<f32>(x_4596.w, x_4596.y));
            let x_4599 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_4598.x, x_4598.y, x_4599.z, x_4599.w);
            let x_4602 : f32 = u_xlat17.y;
            u_xlat14.z = x_4602;
            let x_4604 : vec4<f32> = u_xlat12;
            let x_4607 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4610 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4604.x, x_4604.y, x_4604.x, x_4604.y) * vec4<f32>(x_4607.x, x_4607.y, x_4607.x, x_4607.y)) + vec4<f32>(x_4610.x, x_4610.y, x_4610.x, x_4610.z));
            let x_4614 : f32 = u_xlat15.w;
            u_xlat17.y = x_4614;
            let x_4617 : vec4<f32> = u_xlat12;
            let x_4620 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4623 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4617.x, x_4617.y, x_4617.x, x_4617.y) * vec4<f32>(x_4620.x, x_4620.y, x_4620.x, x_4620.y)) + vec4<f32>(x_4623.x, x_4623.y, x_4623.z, x_4623.y));
            let x_4627 : vec4<f32> = u_xlat12;
            let x_4630 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4633 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_4627.x, x_4627.y) * vec2<f32>(x_4630.x, x_4630.y)) + vec2<f32>(x_4633.w, x_4633.y));
            let x_4637 : f32 = u_xlat17.y;
            u_xlat14.w = x_4637;
            let x_4640 : vec4<f32> = u_xlat12;
            let x_4643 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4646 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4640.x, x_4640.y) * vec2<f32>(x_4643.x, x_4643.y)) + vec2<f32>(x_4646.x, x_4646.w));
            let x_4649 : vec4<f32> = u_xlat17;
            let x_4650 : vec3<f32> = vec3<f32>(x_4649.x, x_4649.z, x_4649.w);
            let x_4651 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4650.x, x_4651.y, x_4650.y, x_4650.z);
            let x_4653 : vec4<f32> = u_xlat12;
            let x_4656 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4659 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4653.x, x_4653.y, x_4653.x, x_4653.y) * vec4<f32>(x_4656.x, x_4656.y, x_4656.x, x_4656.y)) + vec4<f32>(x_4659.x, x_4659.y, x_4659.z, x_4659.y));
            let x_4663 : vec4<f32> = u_xlat12;
            let x_4666 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4669 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4663.x, x_4663.y) * vec2<f32>(x_4666.x, x_4666.y)) + vec2<f32>(x_4669.w, x_4669.y));
            let x_4673 : f32 = u_xlat14.x;
            u_xlat15.x = x_4673;
            let x_4675 : vec4<f32> = u_xlat12;
            let x_4678 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4681 : vec4<f32> = u_xlat15;
            let x_4683 : vec2<f32> = ((vec2<f32>(x_4675.x, x_4675.y) * vec2<f32>(x_4678.x, x_4678.y)) + vec2<f32>(x_4681.x, x_4681.y));
            let x_4684 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4683.x, x_4683.y, x_4684.z, x_4684.w);
            let x_4687 : vec4<f32> = u_xlat13;
            let x_4689 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4687.x, x_4687.x, x_4687.x, x_4687.x) * x_4689);
            let x_4692 : vec4<f32> = u_xlat13;
            let x_4694 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4692.y, x_4692.y, x_4692.y, x_4692.y) * x_4694);
            let x_4697 : vec4<f32> = u_xlat13;
            let x_4699 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4697.z, x_4697.z, x_4697.z, x_4697.z) * x_4699);
            let x_4701 : vec4<f32> = u_xlat13;
            let x_4703 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4701.w, x_4701.w, x_4701.w, x_4701.w) * x_4703);
            let x_4706 : vec4<f32> = u_xlat18;
            let x_4707 : vec2<f32> = vec2<f32>(x_4706.x, x_4706.y);
            let x_4709 : f32 = u_xlat11.z;
            txVec73 = vec3<f32>(x_4707.x, x_4707.y, x_4709);
            let x_4716 : vec3<f32> = txVec73;
            let x_4718 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4716.xy, x_4716.z);
            u_xlat85 = x_4718;
            let x_4720 : vec4<f32> = u_xlat18;
            let x_4721 : vec2<f32> = vec2<f32>(x_4720.z, x_4720.w);
            let x_4723 : f32 = u_xlat11.z;
            txVec74 = vec3<f32>(x_4721.x, x_4721.y, x_4723);
            let x_4730 : vec3<f32> = txVec74;
            let x_4732 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4730.xy, x_4730.z);
            u_xlat86 = x_4732;
            let x_4733 : f32 = u_xlat86;
            let x_4735 : f32 = u_xlat23.y;
            u_xlat86 = (x_4733 * x_4735);
            let x_4738 : f32 = u_xlat23.x;
            let x_4739 : f32 = u_xlat85;
            let x_4741 : f32 = u_xlat86;
            u_xlat85 = ((x_4738 * x_4739) + x_4741);
            let x_4744 : vec2<f32> = u_xlat64;
            let x_4746 : f32 = u_xlat11.z;
            txVec75 = vec3<f32>(x_4744.x, x_4744.y, x_4746);
            let x_4753 : vec3<f32> = txVec75;
            let x_4755 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4753.xy, x_4753.z);
            u_xlat86 = x_4755;
            let x_4757 : f32 = u_xlat23.z;
            let x_4758 : f32 = u_xlat86;
            let x_4760 : f32 = u_xlat85;
            u_xlat85 = ((x_4757 * x_4758) + x_4760);
            let x_4763 : vec4<f32> = u_xlat21;
            let x_4764 : vec2<f32> = vec2<f32>(x_4763.x, x_4763.y);
            let x_4766 : f32 = u_xlat11.z;
            txVec76 = vec3<f32>(x_4764.x, x_4764.y, x_4766);
            let x_4773 : vec3<f32> = txVec76;
            let x_4775 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4773.xy, x_4773.z);
            u_xlat86 = x_4775;
            let x_4777 : f32 = u_xlat23.w;
            let x_4778 : f32 = u_xlat86;
            let x_4780 : f32 = u_xlat85;
            u_xlat85 = ((x_4777 * x_4778) + x_4780);
            let x_4783 : vec4<f32> = u_xlat19;
            let x_4784 : vec2<f32> = vec2<f32>(x_4783.x, x_4783.y);
            let x_4786 : f32 = u_xlat11.z;
            txVec77 = vec3<f32>(x_4784.x, x_4784.y, x_4786);
            let x_4793 : vec3<f32> = txVec77;
            let x_4795 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4793.xy, x_4793.z);
            u_xlat86 = x_4795;
            let x_4797 : f32 = u_xlat24.x;
            let x_4798 : f32 = u_xlat86;
            let x_4800 : f32 = u_xlat85;
            u_xlat85 = ((x_4797 * x_4798) + x_4800);
            let x_4803 : vec4<f32> = u_xlat19;
            let x_4804 : vec2<f32> = vec2<f32>(x_4803.z, x_4803.w);
            let x_4806 : f32 = u_xlat11.z;
            txVec78 = vec3<f32>(x_4804.x, x_4804.y, x_4806);
            let x_4813 : vec3<f32> = txVec78;
            let x_4815 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4813.xy, x_4813.z);
            u_xlat86 = x_4815;
            let x_4817 : f32 = u_xlat24.y;
            let x_4818 : f32 = u_xlat86;
            let x_4820 : f32 = u_xlat85;
            u_xlat85 = ((x_4817 * x_4818) + x_4820);
            let x_4823 : vec4<f32> = u_xlat20;
            let x_4824 : vec2<f32> = vec2<f32>(x_4823.x, x_4823.y);
            let x_4826 : f32 = u_xlat11.z;
            txVec79 = vec3<f32>(x_4824.x, x_4824.y, x_4826);
            let x_4833 : vec3<f32> = txVec79;
            let x_4835 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4833.xy, x_4833.z);
            u_xlat86 = x_4835;
            let x_4837 : f32 = u_xlat24.z;
            let x_4838 : f32 = u_xlat86;
            let x_4840 : f32 = u_xlat85;
            u_xlat85 = ((x_4837 * x_4838) + x_4840);
            let x_4843 : vec4<f32> = u_xlat21;
            let x_4844 : vec2<f32> = vec2<f32>(x_4843.z, x_4843.w);
            let x_4846 : f32 = u_xlat11.z;
            txVec80 = vec3<f32>(x_4844.x, x_4844.y, x_4846);
            let x_4853 : vec3<f32> = txVec80;
            let x_4855 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4853.xy, x_4853.z);
            u_xlat86 = x_4855;
            let x_4857 : f32 = u_xlat24.w;
            let x_4858 : f32 = u_xlat86;
            let x_4860 : f32 = u_xlat85;
            u_xlat85 = ((x_4857 * x_4858) + x_4860);
            let x_4863 : vec4<f32> = u_xlat22;
            let x_4864 : vec2<f32> = vec2<f32>(x_4863.x, x_4863.y);
            let x_4866 : f32 = u_xlat11.z;
            txVec81 = vec3<f32>(x_4864.x, x_4864.y, x_4866);
            let x_4873 : vec3<f32> = txVec81;
            let x_4875 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4873.xy, x_4873.z);
            u_xlat86 = x_4875;
            let x_4877 : f32 = u_xlat25.x;
            let x_4878 : f32 = u_xlat86;
            let x_4880 : f32 = u_xlat85;
            u_xlat85 = ((x_4877 * x_4878) + x_4880);
            let x_4883 : vec4<f32> = u_xlat22;
            let x_4884 : vec2<f32> = vec2<f32>(x_4883.z, x_4883.w);
            let x_4886 : f32 = u_xlat11.z;
            txVec82 = vec3<f32>(x_4884.x, x_4884.y, x_4886);
            let x_4893 : vec3<f32> = txVec82;
            let x_4895 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4893.xy, x_4893.z);
            u_xlat86 = x_4895;
            let x_4897 : f32 = u_xlat25.y;
            let x_4898 : f32 = u_xlat86;
            let x_4900 : f32 = u_xlat85;
            u_xlat85 = ((x_4897 * x_4898) + x_4900);
            let x_4903 : vec2<f32> = u_xlat40;
            let x_4905 : f32 = u_xlat11.z;
            txVec83 = vec3<f32>(x_4903.x, x_4903.y, x_4905);
            let x_4912 : vec3<f32> = txVec83;
            let x_4914 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4912.xy, x_4912.z);
            u_xlat86 = x_4914;
            let x_4916 : f32 = u_xlat25.z;
            let x_4917 : f32 = u_xlat86;
            let x_4919 : f32 = u_xlat85;
            u_xlat85 = ((x_4916 * x_4917) + x_4919);
            let x_4922 : vec2<f32> = u_xlat72;
            let x_4924 : f32 = u_xlat11.z;
            txVec84 = vec3<f32>(x_4922.x, x_4922.y, x_4924);
            let x_4931 : vec3<f32> = txVec84;
            let x_4933 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4931.xy, x_4931.z);
            u_xlat86 = x_4933;
            let x_4935 : f32 = u_xlat25.w;
            let x_4936 : f32 = u_xlat86;
            let x_4938 : f32 = u_xlat85;
            u_xlat85 = ((x_4935 * x_4936) + x_4938);
            let x_4941 : vec4<f32> = u_xlat17;
            let x_4942 : vec2<f32> = vec2<f32>(x_4941.x, x_4941.y);
            let x_4944 : f32 = u_xlat11.z;
            txVec85 = vec3<f32>(x_4942.x, x_4942.y, x_4944);
            let x_4951 : vec3<f32> = txVec85;
            let x_4953 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4951.xy, x_4951.z);
            u_xlat86 = x_4953;
            let x_4955 : f32 = u_xlat13.x;
            let x_4956 : f32 = u_xlat86;
            let x_4958 : f32 = u_xlat85;
            u_xlat85 = ((x_4955 * x_4956) + x_4958);
            let x_4961 : vec4<f32> = u_xlat17;
            let x_4962 : vec2<f32> = vec2<f32>(x_4961.z, x_4961.w);
            let x_4964 : f32 = u_xlat11.z;
            txVec86 = vec3<f32>(x_4962.x, x_4962.y, x_4964);
            let x_4971 : vec3<f32> = txVec86;
            let x_4973 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4971.xy, x_4971.z);
            u_xlat86 = x_4973;
            let x_4975 : f32 = u_xlat13.y;
            let x_4976 : f32 = u_xlat86;
            let x_4978 : f32 = u_xlat85;
            u_xlat85 = ((x_4975 * x_4976) + x_4978);
            let x_4981 : vec2<f32> = u_xlat67;
            let x_4983 : f32 = u_xlat11.z;
            txVec87 = vec3<f32>(x_4981.x, x_4981.y, x_4983);
            let x_4990 : vec3<f32> = txVec87;
            let x_4992 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4990.xy, x_4990.z);
            u_xlat86 = x_4992;
            let x_4994 : f32 = u_xlat13.z;
            let x_4995 : f32 = u_xlat86;
            let x_4997 : f32 = u_xlat85;
            u_xlat85 = ((x_4994 * x_4995) + x_4997);
            let x_5000 : vec4<f32> = u_xlat12;
            let x_5001 : vec2<f32> = vec2<f32>(x_5000.x, x_5000.y);
            let x_5003 : f32 = u_xlat11.z;
            txVec88 = vec3<f32>(x_5001.x, x_5001.y, x_5003);
            let x_5010 : vec3<f32> = txVec88;
            let x_5012 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5010.xy, x_5010.z);
            u_xlat86 = x_5012;
            let x_5014 : f32 = u_xlat13.w;
            let x_5015 : f32 = u_xlat86;
            let x_5017 : f32 = u_xlat85;
            u_xlat84 = ((x_5014 * x_5015) + x_5017);
          }
        }
      } else {
        let x_5021 : vec4<f32> = u_xlat11;
        let x_5022 : vec2<f32> = vec2<f32>(x_5021.x, x_5021.y);
        let x_5024 : f32 = u_xlat11.z;
        txVec89 = vec3<f32>(x_5022.x, x_5022.y, x_5024);
        let x_5031 : vec3<f32> = txVec89;
        let x_5033 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5031.xy, x_5031.z);
        u_xlat84 = x_5033;
      }
      let x_5034 : i32 = u_xlati81;
      let x_5036 : f32 = x_246.x_AdditionalShadowParams[x_5034].x;
      u_xlat85 = (1.0f + -(x_5036));
      let x_5039 : f32 = u_xlat84;
      let x_5040 : i32 = u_xlati81;
      let x_5042 : f32 = x_246.x_AdditionalShadowParams[x_5040].x;
      let x_5044 : f32 = u_xlat85;
      u_xlat84 = ((x_5039 * x_5042) + x_5044);
      let x_5047 : f32 = u_xlat11.z;
      u_xlatb85 = (0.0f >= x_5047);
      let x_5051 : f32 = u_xlat11.z;
      u_xlatb86 = (x_5051 >= 1.0f);
      let x_5053 : bool = u_xlatb85;
      let x_5054 : bool = u_xlatb86;
      u_xlatb85 = (x_5053 | x_5054);
      let x_5056 : bool = u_xlatb85;
      let x_5057 : f32 = u_xlat84;
      u_xlat84 = select(x_5057, 1.0f, x_5056);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_5060 : f32 = u_xlat84;
    u_xlat85 = (-(x_5060) + 1.0f);
    let x_5064 : f32 = u_xlat2.x;
    let x_5065 : f32 = u_xlat85;
    let x_5067 : f32 = u_xlat84;
    u_xlat84 = ((x_5064 * x_5065) + x_5067);
    let x_5069 : f32 = u_xlat83;
    let x_5070 : f32 = u_xlat84;
    u_xlat83 = (x_5069 * x_5070);
    let x_5072 : vec3<f32> = u_xlat26;
    let x_5073 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(x_5072, vec3<f32>(x_5073.x, x_5073.y, x_5073.z));
    let x_5076 : f32 = u_xlat84;
    u_xlat84 = clamp(x_5076, 0.0f, 1.0f);
    let x_5078 : f32 = u_xlat83;
    let x_5079 : f32 = u_xlat84;
    u_xlat83 = (x_5078 * x_5079);
    let x_5081 : f32 = u_xlat83;
    let x_5083 : i32 = u_xlati81;
    let x_5085 : vec4<f32> = x_3650.x_AdditionalLightsColor[x_5083];
    let x_5087 : vec3<f32> = (vec3<f32>(x_5081, x_5081, x_5081) * vec3<f32>(x_5085.x, x_5085.y, x_5085.z));
    let x_5088 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5087.x, x_5087.y, x_5087.z, x_5088.w);
    let x_5090 : vec4<f32> = u_xlat9;
    let x_5092 : vec2<f32> = u_xlat58;
    let x_5095 : vec4<f32> = u_xlat7;
    let x_5097 : vec3<f32> = ((vec3<f32>(x_5090.x, x_5090.y, x_5090.z) * vec3<f32>(x_5092.x, x_5092.x, x_5092.x)) + vec3<f32>(x_5095.x, x_5095.y, x_5095.z));
    let x_5098 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5097.x, x_5097.y, x_5097.z, x_5098.w);
    let x_5100 : vec4<f32> = u_xlat9;
    let x_5102 : vec4<f32> = u_xlat9;
    u_xlat81 = dot(vec3<f32>(x_5100.x, x_5100.y, x_5100.z), vec3<f32>(x_5102.x, x_5102.y, x_5102.z));
    let x_5105 : f32 = u_xlat81;
    u_xlat81 = max(x_5105, 1.17549435e-38f);
    let x_5107 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_5107);
    let x_5109 : f32 = u_xlat81;
    let x_5111 : vec4<f32> = u_xlat9;
    let x_5113 : vec3<f32> = (vec3<f32>(x_5109, x_5109, x_5109) * vec3<f32>(x_5111.x, x_5111.y, x_5111.z));
    let x_5114 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5113.x, x_5113.y, x_5113.z, x_5114.w);
    let x_5116 : vec3<f32> = u_xlat26;
    let x_5117 : vec4<f32> = u_xlat9;
    u_xlat81 = dot(x_5116, vec3<f32>(x_5117.x, x_5117.y, x_5117.z));
    let x_5120 : f32 = u_xlat81;
    u_xlat81 = clamp(x_5120, 0.0f, 1.0f);
    let x_5122 : vec4<f32> = u_xlat10;
    let x_5124 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_5122.x, x_5122.y, x_5122.z), vec3<f32>(x_5124.x, x_5124.y, x_5124.z));
    let x_5127 : f32 = u_xlat83;
    u_xlat83 = clamp(x_5127, 0.0f, 1.0f);
    let x_5129 : f32 = u_xlat81;
    let x_5130 : f32 = u_xlat81;
    u_xlat81 = (x_5129 * x_5130);
    let x_5132 : f32 = u_xlat81;
    let x_5134 : f32 = u_xlat29.x;
    u_xlat81 = ((x_5132 * x_5134) + 1.00001001358032226562f);
    let x_5137 : f32 = u_xlat83;
    let x_5138 : f32 = u_xlat83;
    u_xlat83 = (x_5137 * x_5138);
    let x_5140 : f32 = u_xlat81;
    let x_5141 : f32 = u_xlat81;
    u_xlat81 = (x_5140 * x_5141);
    let x_5143 : f32 = u_xlat83;
    u_xlat83 = max(x_5143, 0.10000000149011611938f);
    let x_5145 : f32 = u_xlat81;
    let x_5146 : f32 = u_xlat83;
    u_xlat81 = (x_5145 * x_5146);
    let x_5149 : f32 = u_xlat6.x;
    let x_5150 : f32 = u_xlat81;
    u_xlat81 = (x_5149 * x_5150);
    let x_5152 : f32 = u_xlat82;
    let x_5153 : f32 = u_xlat81;
    u_xlat81 = (x_5152 / x_5153);
    let x_5155 : f32 = u_xlat81;
    let x_5158 : vec3<f32> = u_xlat5;
    let x_5159 : vec3<f32> = ((vec3<f32>(x_5155, x_5155, x_5155) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5158);
    let x_5160 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5159.x, x_5159.y, x_5159.z, x_5160.w);
    let x_5162 : vec4<f32> = u_xlat9;
    let x_5164 : vec4<f32> = u_xlat11;
    let x_5167 : vec4<f32> = u_xlat8;
    let x_5169 : vec3<f32> = ((vec3<f32>(x_5162.x, x_5162.y, x_5162.z) * vec3<f32>(x_5164.x, x_5164.y, x_5164.z)) + vec3<f32>(x_5167.x, x_5167.y, x_5167.z));
    let x_5170 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5169.x, x_5169.y, x_5169.z, x_5170.w);

    continuing {
      let x_5172 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5172 + bitcast<u32>(1i));
    }
  }
  let x_5174 : vec3<f32> = u_xlat28;
  let x_5175 : vec3<f32> = u_xlat32;
  let x_5178 : vec4<f32> = u_xlat4;
  u_xlat0 = ((x_5174 * vec3<f32>(x_5175.x, x_5175.x, x_5175.x)) + vec3<f32>(x_5178.x, x_5178.y, x_5178.z));
  let x_5181 : vec4<f32> = u_xlat8;
  let x_5183 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_5181.x, x_5181.y, x_5181.z) + x_5183);
  let x_5187 : vec4<f32> = vs_INTERP6;
  let x_5189 : vec3<f32> = u_xlat1;
  let x_5191 : vec3<f32> = u_xlat0;
  let x_5192 : vec3<f32> = ((vec3<f32>(x_5187.w, x_5187.w, x_5187.w) * x_5189) + x_5191);
  let x_5193 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5192.x, x_5192.y, x_5192.z, x_5193.w);
  let x_5195 : bool = u_xlatb55;
  let x_5196 : f32 = u_xlat79;
  SV_Target0.w = select(1.0f, x_5196, x_5195);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_INTERP9_param : vec3<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(2) vs_INTERP5_param : vec4<f32>, @location(3) vs_INTERP6_param : vec4<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP0 = vs_INTERP0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


