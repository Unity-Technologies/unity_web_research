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

alias Arr_5 = array<mat4x4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_5,
}

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

alias Arr_8 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_4,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_8,
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

@group(0) @binding(7) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_126 : PGlobals;

var<private> u_xlat5 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_136 : UnityPerMaterial;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(8) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat32 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_241 : LightShadows;

var<private> u_xlatb0 : bool;

var<private> u_xlatb79 : bool;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb32 : vec2<bool>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat58 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb2 : bool;

@group(1) @binding(4) var<uniform> x_3123 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat85 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu0 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu82 : u32;

var<private> u_xlati59 : i32;

var<private> u_xlati82 : i32;

@group(1) @binding(1) var<uniform> x_3607 : AdditionalLights;

var<private> u_xlat86 : f32;

var<private> u_xlati86 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb86 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat89 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb88 : bool;

var<private> u_xlati87 : i32;

var<private> u_xlati88 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat37 : vec3<f32>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_LinearClamp : sampler;

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
  var x_3076 : f32;
  var x_3206 : f32;
  var x_3217 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3764 : f32;
  var x_3774 : f32;
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
  var x_5358 : f32;
  var x_5371 : f32;
  var x_5429 : f32;
  var x_5440 : vec3<f32>;
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
  u_xlat26 = (x_1678 * vec3<f32>(x_1679.x, x_1679.x, x_1679.x));
  let x_1683 : f32 = x_126.unity_OrthoParams.w;
  u_xlatb28 = (x_1683 == 0.0f);
  let x_1685 : vec3<f32> = vs_INTERP8;
  let x_1690 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_1691 : vec3<f32> = (-(x_1685) + x_1690);
  let x_1692 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1691.x, x_1691.y, x_1691.z, x_1692.w);
  let x_1694 : vec4<f32> = u_xlat3;
  let x_1696 : vec4<f32> = u_xlat3;
  u_xlat80 = dot(vec3<f32>(x_1694.x, x_1694.y, x_1694.z), vec3<f32>(x_1696.x, x_1696.y, x_1696.z));
  let x_1699 : f32 = u_xlat80;
  u_xlat80 = inverseSqrt(x_1699);
  let x_1701 : f32 = u_xlat80;
  let x_1703 : vec4<f32> = u_xlat3;
  let x_1705 : vec3<f32> = (vec3<f32>(x_1701, x_1701, x_1701) * vec3<f32>(x_1703.x, x_1703.y, x_1703.z));
  let x_1706 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1705.x, x_1705.y, x_1705.z, x_1706.w);
  let x_1708 : bool = u_xlatb28;
  if (x_1708) {
    let x_1713 : f32 = u_xlat3.x;
    x_1709 = x_1713;
  } else {
    let x_1716 : f32 = x_126.unity_MatrixV[0i].z;
    x_1709 = x_1716;
  }
  let x_1717 : f32 = x_1709;
  u_xlat4.x = x_1717;
  let x_1719 : bool = u_xlatb28;
  if (x_1719) {
    let x_1724 : f32 = u_xlat3.y;
    x_1720 = x_1724;
  } else {
    let x_1727 : f32 = x_126.unity_MatrixV[1i].z;
    x_1720 = x_1727;
  }
  let x_1728 : f32 = x_1720;
  u_xlat4.y = x_1728;
  let x_1730 : bool = u_xlatb28;
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
  u_xlat32 = vec3<f32>(x_1759.x, x_1759.y, x_1759.z);
  let x_1761 : vec4<f32> = u_xlat3;
  let x_1764 : vec3<f32> = (vec3<f32>(x_1761.x, x_1761.y, x_1761.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1765 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1764.x, x_1764.y, x_1764.z, x_1765.w);
  let x_1767 : vec3<f32> = u_xlat26;
  let x_1768 : vec4<f32> = u_xlat3;
  u_xlat28.x = dot(x_1767, vec3<f32>(x_1768.x, x_1768.y, x_1768.z));
  let x_1773 : f32 = u_xlat28.x;
  u_xlat28.x = (x_1773 + 0.5f);
  let x_1776 : vec3<f32> = u_xlat28;
  let x_1778 : vec3<f32> = u_xlat32;
  let x_1779 : vec3<f32> = (vec3<f32>(x_1776.x, x_1776.x, x_1776.x) * x_1778);
  let x_1780 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1779.x, x_1779.y, x_1779.z, x_1780.w);
  let x_1783 : f32 = u_xlat3.w;
  u_xlat28.x = max(x_1783, 0.00009999999747378752f);
  let x_1786 : vec4<f32> = u_xlat3;
  let x_1788 : vec3<f32> = u_xlat28;
  let x_1790 : vec3<f32> = (vec3<f32>(x_1786.x, x_1786.y, x_1786.z) / vec3<f32>(x_1788.x, x_1788.x, x_1788.x));
  let x_1791 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1790.x, x_1790.y, x_1790.z, x_1791.w);
  let x_1794 : f32 = u_xlat6.x;
  u_xlat6.x = x_1794;
  let x_1797 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1797, 0.0f, 1.0f);
  let x_1800 : f32 = u_xlat79;
  u_xlat79 = min(x_1800, 1.0f);
  let x_1802 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_1802 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_1807 : f32 = u_xlat6.x;
  u_xlat28.x = (-(x_1807) + 1.0f);
  let x_1812 : f32 = u_xlat28.x;
  let x_1814 : f32 = u_xlat28.x;
  u_xlat80 = (x_1812 * x_1814);
  let x_1816 : f32 = u_xlat80;
  u_xlat80 = max(x_1816, 0.0078125f);
  let x_1820 : f32 = u_xlat80;
  let x_1821 : f32 = u_xlat80;
  u_xlat81 = (x_1820 * x_1821);
  let x_1825 : f32 = u_xlat6.x;
  u_xlat82 = (x_1825 + 0.04000002145767211914f);
  let x_1828 : f32 = u_xlat82;
  u_xlat82 = min(x_1828, 1.0f);
  let x_1830 : f32 = u_xlat80;
  u_xlat83 = ((x_1830 * 4.0f) + 2.0f);
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
      u_xlatb32.x = (x_1924 == 2.0f);
      let x_1928 : bool = u_xlatb32.x;
      if (x_1928) {
        let x_1931 : vec4<f32> = vs_INTERP3;
        let x_1934 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_1937 : vec2<f32> = ((vec2<f32>(x_1931.x, x_1931.y) * vec2<f32>(x_1934.z, x_1934.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1938 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1937.x, x_1937.y, x_1938.z);
        let x_1940 : vec3<f32> = u_xlat32;
        let x_1942 : vec2<f32> = floor(vec2<f32>(x_1940.x, x_1940.y));
        let x_1943 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1942.x, x_1942.y, x_1943.z);
        let x_1945 : vec4<f32> = vs_INTERP3;
        let x_1948 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_1951 : vec3<f32> = u_xlat32;
        let x_1954 : vec2<f32> = ((vec2<f32>(x_1945.x, x_1945.y) * vec2<f32>(x_1948.z, x_1948.w)) + -(vec2<f32>(x_1951.x, x_1951.y)));
        let x_1955 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1954.x, x_1954.y, x_1955.z, x_1955.w);
        let x_1957 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1957.x, x_1957.x, x_1957.y, x_1957.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1960 : vec4<f32> = u_xlat8;
        let x_1962 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1960.x, x_1960.x, x_1960.z, x_1960.z) * vec4<f32>(x_1962.x, x_1962.x, x_1962.z, x_1962.z));
        let x_1966 : vec4<f32> = u_xlat9;
        u_xlat59 = (vec2<f32>(x_1966.y, x_1966.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1969 : vec4<f32> = u_xlat9;
        let x_1972 : vec4<f32> = u_xlat7;
        let x_1975 : vec2<f32> = ((vec2<f32>(x_1969.x, x_1969.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1972.x, x_1972.y)));
        let x_1976 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1975.x, x_1976.y, x_1975.y, x_1976.w);
        let x_1978 : vec4<f32> = u_xlat7;
        let x_1981 : vec2<f32> = (-(vec2<f32>(x_1978.x, x_1978.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1982 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1981.x, x_1981.y, x_1982.z, x_1982.w);
        let x_1984 : vec4<f32> = u_xlat7;
        u_xlat61 = min(vec2<f32>(x_1984.x, x_1984.y), vec2<f32>(0.0f, 0.0f));
        let x_1987 : vec2<f32> = u_xlat61;
        let x_1989 : vec2<f32> = u_xlat61;
        let x_1991 : vec4<f32> = u_xlat9;
        u_xlat61 = ((-(x_1987) * x_1989) + vec2<f32>(x_1991.x, x_1991.y));
        let x_1994 : vec4<f32> = u_xlat7;
        let x_1996 : vec2<f32> = max(vec2<f32>(x_1994.x, x_1994.y), vec2<f32>(0.0f, 0.0f));
        let x_1997 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1996.x, x_1996.y, x_1997.z, x_1997.w);
        let x_1999 : vec4<f32> = u_xlat7;
        let x_2002 : vec4<f32> = u_xlat7;
        let x_2005 : vec4<f32> = u_xlat8;
        let x_2007 : vec2<f32> = ((-(vec2<f32>(x_1999.x, x_1999.y)) * vec2<f32>(x_2002.x, x_2002.y)) + vec2<f32>(x_2005.y, x_2005.w));
        let x_2008 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2007.x, x_2007.y, x_2008.z, x_2008.w);
        let x_2010 : vec2<f32> = u_xlat61;
        u_xlat61 = (x_2010 + vec2<f32>(1.0f, 1.0f));
        let x_2012 : vec4<f32> = u_xlat7;
        let x_2014 : vec2<f32> = (vec2<f32>(x_2012.x, x_2012.y) + vec2<f32>(1.0f, 1.0f));
        let x_2015 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2014.x, x_2014.y, x_2015.z, x_2015.w);
        let x_2017 : vec4<f32> = u_xlat8;
        let x_2019 : vec2<f32> = (vec2<f32>(x_2017.x, x_2017.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2020 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2019.x, x_2019.y, x_2020.z, x_2020.w);
        let x_2022 : vec4<f32> = u_xlat9;
        let x_2024 : vec2<f32> = (vec2<f32>(x_2022.x, x_2022.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2025 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2024.x, x_2024.y, x_2025.z, x_2025.w);
        let x_2027 : vec2<f32> = u_xlat61;
        let x_2028 : vec2<f32> = (x_2027 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2029 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2028.x, x_2028.y, x_2029.z, x_2029.w);
        let x_2031 : vec4<f32> = u_xlat7;
        let x_2033 : vec2<f32> = (vec2<f32>(x_2031.x, x_2031.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2034 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2033.x, x_2033.y, x_2034.z, x_2034.w);
        let x_2036 : vec4<f32> = u_xlat8;
        let x_2038 : vec2<f32> = (vec2<f32>(x_2036.y, x_2036.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2039 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2038.x, x_2038.y, x_2039.z, x_2039.w);
        let x_2042 : f32 = u_xlat9.x;
        u_xlat10.z = x_2042;
        let x_2045 : f32 = u_xlat7.x;
        u_xlat10.w = x_2045;
        let x_2048 : f32 = u_xlat12.x;
        u_xlat11.z = x_2048;
        let x_2051 : f32 = u_xlat59.x;
        u_xlat11.w = x_2051;
        let x_2053 : vec4<f32> = u_xlat10;
        let x_2055 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_2053.z, x_2053.w, x_2053.x, x_2053.z) + vec4<f32>(x_2055.z, x_2055.w, x_2055.x, x_2055.z));
        let x_2059 : f32 = u_xlat10.y;
        u_xlat9.z = x_2059;
        let x_2062 : f32 = u_xlat7.y;
        u_xlat9.w = x_2062;
        let x_2065 : f32 = u_xlat11.y;
        u_xlat12.z = x_2065;
        let x_2068 : f32 = u_xlat59.y;
        u_xlat12.w = x_2068;
        let x_2070 : vec4<f32> = u_xlat9;
        let x_2072 : vec4<f32> = u_xlat12;
        let x_2074 : vec3<f32> = (vec3<f32>(x_2070.z, x_2070.y, x_2070.w) + vec3<f32>(x_2072.z, x_2072.y, x_2072.w));
        let x_2075 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2074.x, x_2074.y, x_2074.z, x_2075.w);
        let x_2077 : vec4<f32> = u_xlat11;
        let x_2079 : vec4<f32> = u_xlat8;
        let x_2081 : vec3<f32> = (vec3<f32>(x_2077.x, x_2077.z, x_2077.w) / vec3<f32>(x_2079.z, x_2079.w, x_2079.y));
        let x_2082 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2081.x, x_2081.y, x_2081.z, x_2082.w);
        let x_2084 : vec4<f32> = u_xlat9;
        let x_2086 : vec3<f32> = (vec3<f32>(x_2084.x, x_2084.y, x_2084.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2087 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2086.x, x_2086.y, x_2086.z, x_2087.w);
        let x_2089 : vec4<f32> = u_xlat12;
        let x_2091 : vec4<f32> = u_xlat7;
        let x_2093 : vec3<f32> = (vec3<f32>(x_2089.z, x_2089.y, x_2089.w) / vec3<f32>(x_2091.x, x_2091.y, x_2091.z));
        let x_2094 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2093.x, x_2093.y, x_2093.z, x_2094.w);
        let x_2096 : vec4<f32> = u_xlat10;
        let x_2098 : vec3<f32> = (vec3<f32>(x_2096.x, x_2096.y, x_2096.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2099 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2098.x, x_2098.y, x_2098.z, x_2099.w);
        let x_2101 : vec4<f32> = u_xlat9;
        let x_2104 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2106 : vec3<f32> = (vec3<f32>(x_2101.y, x_2101.x, x_2101.z) * vec3<f32>(x_2104.x, x_2104.x, x_2104.x));
        let x_2107 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2106.x, x_2106.y, x_2106.z, x_2107.w);
        let x_2109 : vec4<f32> = u_xlat10;
        let x_2112 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2114 : vec3<f32> = (vec3<f32>(x_2109.x, x_2109.y, x_2109.z) * vec3<f32>(x_2112.y, x_2112.y, x_2112.y));
        let x_2115 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2114.x, x_2114.y, x_2114.z, x_2115.w);
        let x_2118 : f32 = u_xlat10.x;
        u_xlat9.w = x_2118;
        let x_2120 : vec3<f32> = u_xlat32;
        let x_2123 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2126 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2120.x, x_2120.y, x_2120.x, x_2120.y) * vec4<f32>(x_2123.x, x_2123.y, x_2123.x, x_2123.y)) + vec4<f32>(x_2126.y, x_2126.w, x_2126.x, x_2126.w));
        let x_2129 : vec3<f32> = u_xlat32;
        let x_2132 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2135 : vec4<f32> = u_xlat9;
        let x_2137 : vec2<f32> = ((vec2<f32>(x_2129.x, x_2129.y) * vec2<f32>(x_2132.x, x_2132.y)) + vec2<f32>(x_2135.z, x_2135.w));
        let x_2138 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2137.x, x_2137.y, x_2138.z, x_2138.w);
        let x_2141 : f32 = u_xlat9.y;
        u_xlat10.w = x_2141;
        let x_2143 : vec4<f32> = u_xlat10;
        let x_2144 : vec2<f32> = vec2<f32>(x_2143.y, x_2143.z);
        let x_2145 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2145.x, x_2144.x, x_2145.z, x_2144.y);
        let x_2147 : vec3<f32> = u_xlat32;
        let x_2150 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2153 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_2147.x, x_2147.y, x_2147.x, x_2147.y) * vec4<f32>(x_2150.x, x_2150.y, x_2150.x, x_2150.y)) + vec4<f32>(x_2153.x, x_2153.y, x_2153.z, x_2153.y));
        let x_2156 : vec3<f32> = u_xlat32;
        let x_2159 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2162 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2156.x, x_2156.y, x_2156.x, x_2156.y) * vec4<f32>(x_2159.x, x_2159.y, x_2159.x, x_2159.y)) + vec4<f32>(x_2162.w, x_2162.y, x_2162.w, x_2162.z));
        let x_2165 : vec3<f32> = u_xlat32;
        let x_2168 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2171 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_2165.x, x_2165.y, x_2165.x, x_2165.y) * vec4<f32>(x_2168.x, x_2168.y, x_2168.x, x_2168.y)) + vec4<f32>(x_2171.x, x_2171.w, x_2171.z, x_2171.w));
        let x_2174 : vec4<f32> = u_xlat7;
        let x_2176 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_2174.x, x_2174.x, x_2174.x, x_2174.y) * vec4<f32>(x_2176.z, x_2176.w, x_2176.y, x_2176.z));
        let x_2179 : vec4<f32> = u_xlat7;
        let x_2181 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_2179.y, x_2179.y, x_2179.z, x_2179.z) * x_2181);
        let x_2184 : f32 = u_xlat7.z;
        let x_2186 : f32 = u_xlat8.y;
        u_xlat32.x = (x_2184 * x_2186);
        let x_2190 : vec4<f32> = u_xlat11;
        let x_2191 : vec2<f32> = vec2<f32>(x_2190.x, x_2190.y);
        let x_2193 : f32 = vs_INTERP3.z;
        txVec34 = vec3<f32>(x_2191.x, x_2191.y, x_2193);
        let x_2201 : vec3<f32> = txVec34;
        let x_2203 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2201.xy, x_2201.z);
        u_xlat58 = x_2203;
        let x_2205 : vec4<f32> = u_xlat11;
        let x_2206 : vec2<f32> = vec2<f32>(x_2205.z, x_2205.w);
        let x_2208 : f32 = vs_INTERP3.z;
        txVec35 = vec3<f32>(x_2206.x, x_2206.y, x_2208);
        let x_2216 : vec3<f32> = txVec35;
        let x_2218 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2216.xy, x_2216.z);
        u_xlat84 = x_2218;
        let x_2219 : f32 = u_xlat84;
        let x_2221 : f32 = u_xlat14.y;
        u_xlat84 = (x_2219 * x_2221);
        let x_2224 : f32 = u_xlat14.x;
        let x_2225 : f32 = u_xlat58;
        let x_2227 : f32 = u_xlat84;
        u_xlat58 = ((x_2224 * x_2225) + x_2227);
        let x_2230 : vec4<f32> = u_xlat12;
        let x_2231 : vec2<f32> = vec2<f32>(x_2230.x, x_2230.y);
        let x_2233 : f32 = vs_INTERP3.z;
        txVec36 = vec3<f32>(x_2231.x, x_2231.y, x_2233);
        let x_2240 : vec3<f32> = txVec36;
        let x_2242 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2240.xy, x_2240.z);
        u_xlat84 = x_2242;
        let x_2244 : f32 = u_xlat14.z;
        let x_2245 : f32 = u_xlat84;
        let x_2247 : f32 = u_xlat58;
        u_xlat58 = ((x_2244 * x_2245) + x_2247);
        let x_2250 : vec4<f32> = u_xlat10;
        let x_2251 : vec2<f32> = vec2<f32>(x_2250.x, x_2250.y);
        let x_2253 : f32 = vs_INTERP3.z;
        txVec37 = vec3<f32>(x_2251.x, x_2251.y, x_2253);
        let x_2260 : vec3<f32> = txVec37;
        let x_2262 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2260.xy, x_2260.z);
        u_xlat84 = x_2262;
        let x_2264 : f32 = u_xlat14.w;
        let x_2265 : f32 = u_xlat84;
        let x_2267 : f32 = u_xlat58;
        u_xlat58 = ((x_2264 * x_2265) + x_2267);
        let x_2270 : vec4<f32> = u_xlat13;
        let x_2271 : vec2<f32> = vec2<f32>(x_2270.x, x_2270.y);
        let x_2273 : f32 = vs_INTERP3.z;
        txVec38 = vec3<f32>(x_2271.x, x_2271.y, x_2273);
        let x_2280 : vec3<f32> = txVec38;
        let x_2282 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2280.xy, x_2280.z);
        u_xlat84 = x_2282;
        let x_2284 : f32 = u_xlat15.x;
        let x_2285 : f32 = u_xlat84;
        let x_2287 : f32 = u_xlat58;
        u_xlat58 = ((x_2284 * x_2285) + x_2287);
        let x_2290 : vec4<f32> = u_xlat13;
        let x_2291 : vec2<f32> = vec2<f32>(x_2290.z, x_2290.w);
        let x_2293 : f32 = vs_INTERP3.z;
        txVec39 = vec3<f32>(x_2291.x, x_2291.y, x_2293);
        let x_2300 : vec3<f32> = txVec39;
        let x_2302 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2300.xy, x_2300.z);
        u_xlat84 = x_2302;
        let x_2304 : f32 = u_xlat15.y;
        let x_2305 : f32 = u_xlat84;
        let x_2307 : f32 = u_xlat58;
        u_xlat58 = ((x_2304 * x_2305) + x_2307);
        let x_2310 : vec4<f32> = u_xlat10;
        let x_2311 : vec2<f32> = vec2<f32>(x_2310.z, x_2310.w);
        let x_2313 : f32 = vs_INTERP3.z;
        txVec40 = vec3<f32>(x_2311.x, x_2311.y, x_2313);
        let x_2320 : vec3<f32> = txVec40;
        let x_2322 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2320.xy, x_2320.z);
        u_xlat84 = x_2322;
        let x_2324 : f32 = u_xlat15.z;
        let x_2325 : f32 = u_xlat84;
        let x_2327 : f32 = u_xlat58;
        u_xlat58 = ((x_2324 * x_2325) + x_2327);
        let x_2330 : vec4<f32> = u_xlat9;
        let x_2331 : vec2<f32> = vec2<f32>(x_2330.x, x_2330.y);
        let x_2333 : f32 = vs_INTERP3.z;
        txVec41 = vec3<f32>(x_2331.x, x_2331.y, x_2333);
        let x_2340 : vec3<f32> = txVec41;
        let x_2342 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2340.xy, x_2340.z);
        u_xlat84 = x_2342;
        let x_2344 : f32 = u_xlat15.w;
        let x_2345 : f32 = u_xlat84;
        let x_2347 : f32 = u_xlat58;
        u_xlat58 = ((x_2344 * x_2345) + x_2347);
        let x_2350 : vec4<f32> = u_xlat9;
        let x_2351 : vec2<f32> = vec2<f32>(x_2350.z, x_2350.w);
        let x_2353 : f32 = vs_INTERP3.z;
        txVec42 = vec3<f32>(x_2351.x, x_2351.y, x_2353);
        let x_2360 : vec3<f32> = txVec42;
        let x_2362 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2360.xy, x_2360.z);
        u_xlat84 = x_2362;
        let x_2364 : f32 = u_xlat32.x;
        let x_2365 : f32 = u_xlat84;
        let x_2367 : f32 = u_xlat58;
        u_xlat0.x = ((x_2364 * x_2365) + x_2367);
      } else {
        let x_2371 : vec4<f32> = vs_INTERP3;
        let x_2374 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2377 : vec2<f32> = ((vec2<f32>(x_2371.x, x_2371.y) * vec2<f32>(x_2374.z, x_2374.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2378 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_2377.x, x_2377.y, x_2378.z);
        let x_2380 : vec3<f32> = u_xlat32;
        let x_2382 : vec2<f32> = floor(vec2<f32>(x_2380.x, x_2380.y));
        let x_2383 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_2382.x, x_2382.y, x_2383.z);
        let x_2385 : vec4<f32> = vs_INTERP3;
        let x_2388 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2391 : vec3<f32> = u_xlat32;
        let x_2394 : vec2<f32> = ((vec2<f32>(x_2385.x, x_2385.y) * vec2<f32>(x_2388.z, x_2388.w)) + -(vec2<f32>(x_2391.x, x_2391.y)));
        let x_2395 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2394.x, x_2394.y, x_2395.z, x_2395.w);
        let x_2397 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2397.x, x_2397.x, x_2397.y, x_2397.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2400 : vec4<f32> = u_xlat8;
        let x_2402 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2400.x, x_2400.x, x_2400.z, x_2400.z) * vec4<f32>(x_2402.x, x_2402.x, x_2402.z, x_2402.z));
        let x_2405 : vec4<f32> = u_xlat9;
        let x_2407 : vec2<f32> = (vec2<f32>(x_2405.y, x_2405.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2408 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2408.x, x_2407.x, x_2408.z, x_2407.y);
        let x_2410 : vec4<f32> = u_xlat9;
        let x_2413 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_2410.x, x_2410.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2413.x, x_2413.y)));
        let x_2417 : vec4<f32> = u_xlat7;
        let x_2420 : vec2<f32> = (-(vec2<f32>(x_2417.x, x_2417.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2421 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2420.x, x_2421.y, x_2420.y, x_2421.w);
        let x_2423 : vec4<f32> = u_xlat7;
        let x_2425 : vec2<f32> = min(vec2<f32>(x_2423.x, x_2423.y), vec2<f32>(0.0f, 0.0f));
        let x_2426 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2425.x, x_2425.y, x_2426.z, x_2426.w);
        let x_2428 : vec4<f32> = u_xlat9;
        let x_2431 : vec4<f32> = u_xlat9;
        let x_2434 : vec4<f32> = u_xlat8;
        let x_2436 : vec2<f32> = ((-(vec2<f32>(x_2428.x, x_2428.y)) * vec2<f32>(x_2431.x, x_2431.y)) + vec2<f32>(x_2434.x, x_2434.z));
        let x_2437 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2436.x, x_2437.y, x_2436.y, x_2437.w);
        let x_2439 : vec4<f32> = u_xlat7;
        let x_2441 : vec2<f32> = max(vec2<f32>(x_2439.x, x_2439.y), vec2<f32>(0.0f, 0.0f));
        let x_2442 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2441.x, x_2441.y, x_2442.z, x_2442.w);
        let x_2444 : vec4<f32> = u_xlat9;
        let x_2447 : vec4<f32> = u_xlat9;
        let x_2450 : vec4<f32> = u_xlat8;
        let x_2452 : vec2<f32> = ((-(vec2<f32>(x_2444.x, x_2444.y)) * vec2<f32>(x_2447.x, x_2447.y)) + vec2<f32>(x_2450.y, x_2450.w));
        let x_2453 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2453.x, x_2452.x, x_2453.z, x_2452.y);
        let x_2455 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2455 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2458 : f32 = u_xlat8.y;
        u_xlat9.z = (x_2458 * 0.08163200318813323975f);
        let x_2461 : vec2<f32> = u_xlat59;
        let x_2463 : vec2<f32> = (vec2<f32>(x_2461.y, x_2461.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2464 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2463.x, x_2463.y, x_2464.z, x_2464.w);
        let x_2466 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_2466.x, x_2466.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2470 : f32 = u_xlat8.w;
        u_xlat11.z = (x_2470 * 0.08163200318813323975f);
        let x_2474 : f32 = u_xlat11.y;
        u_xlat9.x = x_2474;
        let x_2476 : vec4<f32> = u_xlat7;
        let x_2479 : vec2<f32> = ((vec2<f32>(x_2476.x, x_2476.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2480 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2480.x, x_2479.x, x_2480.z, x_2479.y);
        let x_2482 : vec4<f32> = u_xlat7;
        let x_2485 : vec2<f32> = ((vec2<f32>(x_2482.x, x_2482.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2486 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2485.x, x_2486.y, x_2485.y, x_2486.w);
        let x_2489 : f32 = u_xlat59.x;
        u_xlat8.y = x_2489;
        let x_2492 : f32 = u_xlat10.y;
        u_xlat8.w = x_2492;
        let x_2494 : vec4<f32> = u_xlat8;
        let x_2495 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2494 + x_2495);
        let x_2497 : vec4<f32> = u_xlat7;
        let x_2500 : vec2<f32> = ((vec2<f32>(x_2497.y, x_2497.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2501 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2501.x, x_2500.x, x_2501.z, x_2500.y);
        let x_2503 : vec4<f32> = u_xlat7;
        let x_2506 : vec2<f32> = ((vec2<f32>(x_2503.y, x_2503.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2507 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2506.x, x_2507.y, x_2506.y, x_2507.w);
        let x_2510 : f32 = u_xlat59.y;
        u_xlat10.y = x_2510;
        let x_2512 : vec4<f32> = u_xlat10;
        let x_2513 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_2512 + x_2513);
        let x_2515 : vec4<f32> = u_xlat8;
        let x_2516 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_2515 / x_2516);
        let x_2518 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2518 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2520 : vec4<f32> = u_xlat10;
        let x_2521 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_2520 / x_2521);
        let x_2523 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2523 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2525 : vec4<f32> = u_xlat8;
        let x_2528 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_2525.w, x_2525.x, x_2525.y, x_2525.z) * vec4<f32>(x_2528.x, x_2528.x, x_2528.x, x_2528.x));
        let x_2531 : vec4<f32> = u_xlat10;
        let x_2534 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_2531.x, x_2531.w, x_2531.y, x_2531.z) * vec4<f32>(x_2534.y, x_2534.y, x_2534.y, x_2534.y));
        let x_2537 : vec4<f32> = u_xlat8;
        let x_2538 : vec3<f32> = vec3<f32>(x_2537.y, x_2537.z, x_2537.w);
        let x_2539 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2538.x, x_2539.y, x_2538.y, x_2538.z);
        let x_2542 : f32 = u_xlat10.x;
        u_xlat11.y = x_2542;
        let x_2544 : vec3<f32> = u_xlat32;
        let x_2547 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2550 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2544.x, x_2544.y, x_2544.x, x_2544.y) * vec4<f32>(x_2547.x, x_2547.y, x_2547.x, x_2547.y)) + vec4<f32>(x_2550.x, x_2550.y, x_2550.z, x_2550.y));
        let x_2553 : vec3<f32> = u_xlat32;
        let x_2556 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2559 : vec4<f32> = u_xlat11;
        let x_2561 : vec2<f32> = ((vec2<f32>(x_2553.x, x_2553.y) * vec2<f32>(x_2556.x, x_2556.y)) + vec2<f32>(x_2559.w, x_2559.y));
        let x_2562 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2561.x, x_2561.y, x_2562.z, x_2562.w);
        let x_2565 : f32 = u_xlat11.y;
        u_xlat8.y = x_2565;
        let x_2568 : f32 = u_xlat10.z;
        u_xlat11.y = x_2568;
        let x_2570 : vec3<f32> = u_xlat32;
        let x_2573 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2576 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_2570.x, x_2570.y, x_2570.x, x_2570.y) * vec4<f32>(x_2573.x, x_2573.y, x_2573.x, x_2573.y)) + vec4<f32>(x_2576.x, x_2576.y, x_2576.z, x_2576.y));
        let x_2580 : vec3<f32> = u_xlat32;
        let x_2583 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2586 : vec4<f32> = u_xlat11;
        u_xlat65 = ((vec2<f32>(x_2580.x, x_2580.y) * vec2<f32>(x_2583.x, x_2583.y)) + vec2<f32>(x_2586.w, x_2586.y));
        let x_2590 : f32 = u_xlat11.y;
        u_xlat8.z = x_2590;
        let x_2592 : vec3<f32> = u_xlat32;
        let x_2595 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2598 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_2592.x, x_2592.y, x_2592.x, x_2592.y) * vec4<f32>(x_2595.x, x_2595.y, x_2595.x, x_2595.y)) + vec4<f32>(x_2598.x, x_2598.y, x_2598.x, x_2598.z));
        let x_2602 : f32 = u_xlat10.w;
        u_xlat11.y = x_2602;
        let x_2604 : vec3<f32> = u_xlat32;
        let x_2607 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2610 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_2604.x, x_2604.y, x_2604.x, x_2604.y) * vec4<f32>(x_2607.x, x_2607.y, x_2607.x, x_2607.y)) + vec4<f32>(x_2610.x, x_2610.y, x_2610.z, x_2610.y));
        let x_2613 : vec3<f32> = u_xlat32;
        let x_2616 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2619 : vec4<f32> = u_xlat11;
        u_xlat34 = ((vec2<f32>(x_2613.x, x_2613.y) * vec2<f32>(x_2616.x, x_2616.y)) + vec2<f32>(x_2619.w, x_2619.y));
        let x_2623 : f32 = u_xlat11.y;
        u_xlat8.w = x_2623;
        let x_2625 : vec3<f32> = u_xlat32;
        let x_2628 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2631 : vec4<f32> = u_xlat8;
        let x_2633 : vec2<f32> = ((vec2<f32>(x_2625.x, x_2625.y) * vec2<f32>(x_2628.x, x_2628.y)) + vec2<f32>(x_2631.x, x_2631.w));
        let x_2634 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_2633.x, x_2633.y, x_2634.z, x_2634.w);
        let x_2636 : vec4<f32> = u_xlat11;
        let x_2637 : vec3<f32> = vec3<f32>(x_2636.x, x_2636.z, x_2636.w);
        let x_2638 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2637.x, x_2638.y, x_2637.y, x_2637.z);
        let x_2640 : vec3<f32> = u_xlat32;
        let x_2643 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2646 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_2640.x, x_2640.y, x_2640.x, x_2640.y) * vec4<f32>(x_2643.x, x_2643.y, x_2643.x, x_2643.y)) + vec4<f32>(x_2646.x, x_2646.y, x_2646.z, x_2646.y));
        let x_2650 : vec3<f32> = u_xlat32;
        let x_2653 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2656 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_2650.x, x_2650.y) * vec2<f32>(x_2653.x, x_2653.y)) + vec2<f32>(x_2656.w, x_2656.y));
        let x_2660 : f32 = u_xlat8.x;
        u_xlat10.x = x_2660;
        let x_2662 : vec3<f32> = u_xlat32;
        let x_2665 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2668 : vec4<f32> = u_xlat10;
        let x_2670 : vec2<f32> = ((vec2<f32>(x_2662.x, x_2662.y) * vec2<f32>(x_2665.x, x_2665.y)) + vec2<f32>(x_2668.x, x_2668.y));
        let x_2671 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_2670.x, x_2670.y, x_2671.z);
        let x_2673 : vec4<f32> = u_xlat7;
        let x_2675 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_2673.x, x_2673.x, x_2673.x, x_2673.x) * x_2675);
        let x_2677 : vec4<f32> = u_xlat7;
        let x_2679 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_2677.y, x_2677.y, x_2677.y, x_2677.y) * x_2679);
        let x_2682 : vec4<f32> = u_xlat7;
        let x_2684 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_2682.z, x_2682.z, x_2682.z, x_2682.z) * x_2684);
        let x_2686 : vec4<f32> = u_xlat7;
        let x_2688 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_2686.w, x_2686.w, x_2686.w, x_2686.w) * x_2688);
        let x_2691 : vec4<f32> = u_xlat12;
        let x_2692 : vec2<f32> = vec2<f32>(x_2691.x, x_2691.y);
        let x_2694 : f32 = vs_INTERP3.z;
        txVec43 = vec3<f32>(x_2692.x, x_2692.y, x_2694);
        let x_2701 : vec3<f32> = txVec43;
        let x_2703 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2701.xy, x_2701.z);
        u_xlat84 = x_2703;
        let x_2705 : vec4<f32> = u_xlat12;
        let x_2706 : vec2<f32> = vec2<f32>(x_2705.z, x_2705.w);
        let x_2708 : f32 = vs_INTERP3.z;
        txVec44 = vec3<f32>(x_2706.x, x_2706.y, x_2708);
        let x_2715 : vec3<f32> = txVec44;
        let x_2717 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2715.xy, x_2715.z);
        u_xlat8.x = x_2717;
        let x_2720 : f32 = u_xlat8.x;
        let x_2722 : f32 = u_xlat18.y;
        u_xlat8.x = (x_2720 * x_2722);
        let x_2726 : f32 = u_xlat18.x;
        let x_2727 : f32 = u_xlat84;
        let x_2730 : f32 = u_xlat8.x;
        u_xlat84 = ((x_2726 * x_2727) + x_2730);
        let x_2733 : vec4<f32> = u_xlat13;
        let x_2734 : vec2<f32> = vec2<f32>(x_2733.x, x_2733.y);
        let x_2736 : f32 = vs_INTERP3.z;
        txVec45 = vec3<f32>(x_2734.x, x_2734.y, x_2736);
        let x_2743 : vec3<f32> = txVec45;
        let x_2745 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2743.xy, x_2743.z);
        u_xlat8.x = x_2745;
        let x_2748 : f32 = u_xlat18.z;
        let x_2750 : f32 = u_xlat8.x;
        let x_2752 : f32 = u_xlat84;
        u_xlat84 = ((x_2748 * x_2750) + x_2752);
        let x_2755 : vec4<f32> = u_xlat15;
        let x_2756 : vec2<f32> = vec2<f32>(x_2755.x, x_2755.y);
        let x_2758 : f32 = vs_INTERP3.z;
        txVec46 = vec3<f32>(x_2756.x, x_2756.y, x_2758);
        let x_2765 : vec3<f32> = txVec46;
        let x_2767 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2765.xy, x_2765.z);
        u_xlat8.x = x_2767;
        let x_2770 : f32 = u_xlat18.w;
        let x_2772 : f32 = u_xlat8.x;
        let x_2774 : f32 = u_xlat84;
        u_xlat84 = ((x_2770 * x_2772) + x_2774);
        let x_2777 : vec4<f32> = u_xlat14;
        let x_2778 : vec2<f32> = vec2<f32>(x_2777.x, x_2777.y);
        let x_2780 : f32 = vs_INTERP3.z;
        txVec47 = vec3<f32>(x_2778.x, x_2778.y, x_2780);
        let x_2787 : vec3<f32> = txVec47;
        let x_2789 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2787.xy, x_2787.z);
        u_xlat8.x = x_2789;
        let x_2792 : f32 = u_xlat19.x;
        let x_2794 : f32 = u_xlat8.x;
        let x_2796 : f32 = u_xlat84;
        u_xlat84 = ((x_2792 * x_2794) + x_2796);
        let x_2799 : vec4<f32> = u_xlat14;
        let x_2800 : vec2<f32> = vec2<f32>(x_2799.z, x_2799.w);
        let x_2802 : f32 = vs_INTERP3.z;
        txVec48 = vec3<f32>(x_2800.x, x_2800.y, x_2802);
        let x_2809 : vec3<f32> = txVec48;
        let x_2811 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2809.xy, x_2809.z);
        u_xlat8.x = x_2811;
        let x_2814 : f32 = u_xlat19.y;
        let x_2816 : f32 = u_xlat8.x;
        let x_2818 : f32 = u_xlat84;
        u_xlat84 = ((x_2814 * x_2816) + x_2818);
        let x_2821 : vec2<f32> = u_xlat65;
        let x_2823 : f32 = vs_INTERP3.z;
        txVec49 = vec3<f32>(x_2821.x, x_2821.y, x_2823);
        let x_2830 : vec3<f32> = txVec49;
        let x_2832 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2830.xy, x_2830.z);
        u_xlat8.x = x_2832;
        let x_2835 : f32 = u_xlat19.z;
        let x_2837 : f32 = u_xlat8.x;
        let x_2839 : f32 = u_xlat84;
        u_xlat84 = ((x_2835 * x_2837) + x_2839);
        let x_2842 : vec4<f32> = u_xlat15;
        let x_2843 : vec2<f32> = vec2<f32>(x_2842.z, x_2842.w);
        let x_2845 : f32 = vs_INTERP3.z;
        txVec50 = vec3<f32>(x_2843.x, x_2843.y, x_2845);
        let x_2852 : vec3<f32> = txVec50;
        let x_2854 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2852.xy, x_2852.z);
        u_xlat8.x = x_2854;
        let x_2857 : f32 = u_xlat19.w;
        let x_2859 : f32 = u_xlat8.x;
        let x_2861 : f32 = u_xlat84;
        u_xlat84 = ((x_2857 * x_2859) + x_2861);
        let x_2864 : vec4<f32> = u_xlat16;
        let x_2865 : vec2<f32> = vec2<f32>(x_2864.x, x_2864.y);
        let x_2867 : f32 = vs_INTERP3.z;
        txVec51 = vec3<f32>(x_2865.x, x_2865.y, x_2867);
        let x_2874 : vec3<f32> = txVec51;
        let x_2876 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2874.xy, x_2874.z);
        u_xlat8.x = x_2876;
        let x_2879 : f32 = u_xlat20.x;
        let x_2881 : f32 = u_xlat8.x;
        let x_2883 : f32 = u_xlat84;
        u_xlat84 = ((x_2879 * x_2881) + x_2883);
        let x_2886 : vec4<f32> = u_xlat16;
        let x_2887 : vec2<f32> = vec2<f32>(x_2886.z, x_2886.w);
        let x_2889 : f32 = vs_INTERP3.z;
        txVec52 = vec3<f32>(x_2887.x, x_2887.y, x_2889);
        let x_2896 : vec3<f32> = txVec52;
        let x_2898 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2896.xy, x_2896.z);
        u_xlat8.x = x_2898;
        let x_2901 : f32 = u_xlat20.y;
        let x_2903 : f32 = u_xlat8.x;
        let x_2905 : f32 = u_xlat84;
        u_xlat84 = ((x_2901 * x_2903) + x_2905);
        let x_2908 : vec2<f32> = u_xlat34;
        let x_2910 : f32 = vs_INTERP3.z;
        txVec53 = vec3<f32>(x_2908.x, x_2908.y, x_2910);
        let x_2917 : vec3<f32> = txVec53;
        let x_2919 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2917.xy, x_2917.z);
        u_xlat8.x = x_2919;
        let x_2922 : f32 = u_xlat20.z;
        let x_2924 : f32 = u_xlat8.x;
        let x_2926 : f32 = u_xlat84;
        u_xlat84 = ((x_2922 * x_2924) + x_2926);
        let x_2929 : vec4<f32> = u_xlat17;
        let x_2930 : vec2<f32> = vec2<f32>(x_2929.x, x_2929.y);
        let x_2932 : f32 = vs_INTERP3.z;
        txVec54 = vec3<f32>(x_2930.x, x_2930.y, x_2932);
        let x_2939 : vec3<f32> = txVec54;
        let x_2941 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2939.xy, x_2939.z);
        u_xlat8.x = x_2941;
        let x_2944 : f32 = u_xlat20.w;
        let x_2946 : f32 = u_xlat8.x;
        let x_2948 : f32 = u_xlat84;
        u_xlat84 = ((x_2944 * x_2946) + x_2948);
        let x_2951 : vec4<f32> = u_xlat11;
        let x_2952 : vec2<f32> = vec2<f32>(x_2951.x, x_2951.y);
        let x_2954 : f32 = vs_INTERP3.z;
        txVec55 = vec3<f32>(x_2952.x, x_2952.y, x_2954);
        let x_2961 : vec3<f32> = txVec55;
        let x_2963 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2961.xy, x_2961.z);
        u_xlat8.x = x_2963;
        let x_2966 : f32 = u_xlat7.x;
        let x_2968 : f32 = u_xlat8.x;
        let x_2970 : f32 = u_xlat84;
        u_xlat84 = ((x_2966 * x_2968) + x_2970);
        let x_2973 : vec4<f32> = u_xlat11;
        let x_2974 : vec2<f32> = vec2<f32>(x_2973.z, x_2973.w);
        let x_2976 : f32 = vs_INTERP3.z;
        txVec56 = vec3<f32>(x_2974.x, x_2974.y, x_2976);
        let x_2983 : vec3<f32> = txVec56;
        let x_2985 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2983.xy, x_2983.z);
        u_xlat7.x = x_2985;
        let x_2988 : f32 = u_xlat7.y;
        let x_2990 : f32 = u_xlat7.x;
        let x_2992 : f32 = u_xlat84;
        u_xlat84 = ((x_2988 * x_2990) + x_2992);
        let x_2995 : vec2<f32> = u_xlat62;
        let x_2997 : f32 = vs_INTERP3.z;
        txVec57 = vec3<f32>(x_2995.x, x_2995.y, x_2997);
        let x_3004 : vec3<f32> = txVec57;
        let x_3006 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3004.xy, x_3004.z);
        u_xlat7.x = x_3006;
        let x_3009 : f32 = u_xlat7.z;
        let x_3011 : f32 = u_xlat7.x;
        let x_3013 : f32 = u_xlat84;
        u_xlat84 = ((x_3009 * x_3011) + x_3013);
        let x_3016 : vec3<f32> = u_xlat32;
        let x_3017 : vec2<f32> = vec2<f32>(x_3016.x, x_3016.y);
        let x_3019 : f32 = vs_INTERP3.z;
        txVec58 = vec3<f32>(x_3017.x, x_3017.y, x_3019);
        let x_3026 : vec3<f32> = txVec58;
        let x_3028 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3026.xy, x_3026.z);
        u_xlat32.x = x_3028;
        let x_3031 : f32 = u_xlat7.w;
        let x_3033 : f32 = u_xlat32.x;
        let x_3035 : f32 = u_xlat84;
        u_xlat0.x = ((x_3031 * x_3033) + x_3035);
      }
    }
  } else {
    let x_3040 : vec4<f32> = vs_INTERP3;
    let x_3041 : vec2<f32> = vec2<f32>(x_3040.x, x_3040.y);
    let x_3043 : f32 = vs_INTERP3.z;
    txVec59 = vec3<f32>(x_3041.x, x_3041.y, x_3043);
    let x_3050 : vec3<f32> = txVec59;
    let x_3052 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3050.xy, x_3050.z);
    u_xlat0.x = x_3052;
  }
  let x_3055 : f32 = u_xlat0.x;
  let x_3057 : f32 = x_241.x_MainLightShadowParams.x;
  let x_3060 : f32 = u_xlat2.x;
  u_xlat0.x = ((x_3055 * x_3057) + x_3060);
  let x_3065 : f32 = vs_INTERP3.z;
  u_xlatb2 = (0.0f >= x_3065);
  let x_3068 : f32 = vs_INTERP3.z;
  u_xlatb32.x = (x_3068 >= 1.0f);
  let x_3071 : bool = u_xlatb2;
  let x_3073 : bool = u_xlatb32.x;
  u_xlatb2 = (x_3071 | x_3073);
  let x_3075 : bool = u_xlatb2;
  if (x_3075) {
    x_3076 = 1.0f;
  } else {
    let x_3081 : f32 = u_xlat0.x;
    x_3076 = x_3081;
  }
  let x_3082 : f32 = x_3076;
  u_xlat0.x = x_3082;
  let x_3084 : vec3<f32> = vs_INTERP8;
  let x_3086 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  u_xlat32 = (x_3084 + -(x_3086));
  let x_3089 : vec3<f32> = u_xlat32;
  let x_3090 : vec3<f32> = u_xlat32;
  u_xlat2.x = dot(x_3089, x_3090);
  let x_3094 : f32 = u_xlat2.x;
  let x_3096 : f32 = x_241.x_MainLightShadowParams.z;
  let x_3099 : f32 = x_241.x_MainLightShadowParams.w;
  u_xlat32.x = ((x_3094 * x_3096) + x_3099);
  let x_3103 : f32 = u_xlat32.x;
  u_xlat32.x = clamp(x_3103, 0.0f, 1.0f);
  let x_3107 : f32 = u_xlat0.x;
  u_xlat58 = (-(x_3107) + 1.0f);
  let x_3111 : f32 = u_xlat32.x;
  let x_3112 : f32 = u_xlat58;
  let x_3115 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_3111 * x_3112) + x_3115);
  let x_3125 : f32 = x_3123.x_MainLightCookieTextureFormat;
  u_xlatb32.x = !((x_3125 == -1.0f));
  let x_3129 : bool = u_xlatb32.x;
  if (x_3129) {
    let x_3132 : vec3<f32> = vs_INTERP8;
    let x_3135 : vec4<f32> = x_3123.x_MainLightWorldToLight[1i];
    let x_3137 : vec2<f32> = (vec2<f32>(x_3132.y, x_3132.y) * vec2<f32>(x_3135.x, x_3135.y));
    let x_3138 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_3137.x, x_3137.y, x_3138.z);
    let x_3141 : vec4<f32> = x_3123.x_MainLightWorldToLight[0i];
    let x_3143 : vec3<f32> = vs_INTERP8;
    let x_3146 : vec3<f32> = u_xlat32;
    let x_3148 : vec2<f32> = ((vec2<f32>(x_3141.x, x_3141.y) * vec2<f32>(x_3143.x, x_3143.x)) + vec2<f32>(x_3146.x, x_3146.y));
    let x_3149 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_3148.x, x_3148.y, x_3149.z);
    let x_3152 : vec4<f32> = x_3123.x_MainLightWorldToLight[2i];
    let x_3154 : vec3<f32> = vs_INTERP8;
    let x_3157 : vec3<f32> = u_xlat32;
    let x_3159 : vec2<f32> = ((vec2<f32>(x_3152.x, x_3152.y) * vec2<f32>(x_3154.z, x_3154.z)) + vec2<f32>(x_3157.x, x_3157.y));
    let x_3160 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_3159.x, x_3159.y, x_3160.z);
    let x_3162 : vec3<f32> = u_xlat32;
    let x_3165 : vec4<f32> = x_3123.x_MainLightWorldToLight[3i];
    let x_3167 : vec2<f32> = (vec2<f32>(x_3162.x, x_3162.y) + vec2<f32>(x_3165.x, x_3165.y));
    let x_3168 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_3167.x, x_3167.y, x_3168.z);
    let x_3170 : vec3<f32> = u_xlat32;
    let x_3173 : vec2<f32> = ((vec2<f32>(x_3170.x, x_3170.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_3174 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_3173.x, x_3173.y, x_3174.z);
    let x_3181 : vec3<f32> = u_xlat32;
    let x_3184 : f32 = x_126.x_GlobalMipBias.x;
    let x_3185 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_3181.x, x_3181.y), x_3184);
    u_xlat7 = x_3185;
    let x_3187 : f32 = x_3123.x_MainLightCookieTextureFormat;
    let x_3189 : f32 = x_3123.x_MainLightCookieTextureFormat;
    let x_3191 : f32 = x_3123.x_MainLightCookieTextureFormat;
    let x_3193 : f32 = x_3123.x_MainLightCookieTextureFormat;
    let x_3194 : vec4<f32> = vec4<f32>(x_3187, x_3189, x_3191, x_3193);
    let x_3202 : vec4<bool> = (vec4<f32>(x_3194.x, x_3194.y, x_3194.z, x_3194.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb32 = vec2<bool>(x_3202.x, x_3202.y);
    let x_3205 : bool = u_xlatb32.y;
    if (x_3205) {
      let x_3210 : f32 = u_xlat7.w;
      x_3206 = x_3210;
    } else {
      let x_3213 : f32 = u_xlat7.x;
      x_3206 = x_3213;
    }
    let x_3214 : f32 = x_3206;
    u_xlat58 = x_3214;
    let x_3216 : bool = u_xlatb32.x;
    if (x_3216) {
      let x_3220 : vec4<f32> = u_xlat7;
      x_3217 = vec3<f32>(x_3220.x, x_3220.y, x_3220.z);
    } else {
      let x_3223 : f32 = u_xlat58;
      x_3217 = vec3<f32>(x_3223, x_3223, x_3223);
    }
    let x_3225 : vec3<f32> = x_3217;
    u_xlat32 = x_3225;
  } else {
    u_xlat32.x = 1.0f;
    u_xlat32.y = 1.0f;
    u_xlat32.z = 1.0f;
  }
  let x_3230 : vec3<f32> = u_xlat32;
  let x_3232 : vec4<f32> = x_126.x_MainLightColor;
  u_xlat32 = (x_3230 * vec3<f32>(x_3232.x, x_3232.y, x_3232.z));
  let x_3235 : vec4<f32> = u_xlat4;
  let x_3238 : vec3<f32> = u_xlat26;
  u_xlat7.x = dot(-(vec3<f32>(x_3235.x, x_3235.y, x_3235.z)), x_3238);
  let x_3242 : f32 = u_xlat7.x;
  let x_3244 : f32 = u_xlat7.x;
  u_xlat7.x = (x_3242 + x_3244);
  let x_3247 : vec3<f32> = u_xlat26;
  let x_3248 : vec4<f32> = u_xlat7;
  let x_3252 : vec4<f32> = u_xlat4;
  let x_3255 : vec3<f32> = ((x_3247 * -(vec3<f32>(x_3248.x, x_3248.x, x_3248.x))) + -(vec3<f32>(x_3252.x, x_3252.y, x_3252.z)));
  let x_3256 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3255.x, x_3255.y, x_3255.z, x_3256.w);
  let x_3259 : vec3<f32> = u_xlat26;
  let x_3260 : vec4<f32> = u_xlat4;
  u_xlat85 = dot(x_3259, vec3<f32>(x_3260.x, x_3260.y, x_3260.z));
  let x_3263 : f32 = u_xlat85;
  u_xlat85 = clamp(x_3263, 0.0f, 1.0f);
  let x_3265 : f32 = u_xlat85;
  u_xlat85 = (-(x_3265) + 1.0f);
  let x_3268 : f32 = u_xlat85;
  let x_3269 : f32 = u_xlat85;
  u_xlat85 = (x_3268 * x_3269);
  let x_3271 : f32 = u_xlat85;
  let x_3272 : f32 = u_xlat85;
  u_xlat85 = (x_3271 * x_3272);
  let x_3275 : f32 = u_xlat28.x;
  u_xlat8.x = ((-(x_3275) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3283 : f32 = u_xlat28.x;
  let x_3285 : f32 = u_xlat8.x;
  u_xlat28.x = (x_3283 * x_3285);
  let x_3289 : f32 = u_xlat28.x;
  u_xlat28.x = (x_3289 * 6.0f);
  let x_3301 : vec4<f32> = u_xlat7;
  let x_3304 : f32 = u_xlat28.x;
  let x_3305 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_3301.x, x_3301.y, x_3301.z), x_3304);
  u_xlat8 = x_3305;
  let x_3307 : f32 = u_xlat8.w;
  u_xlat28.x = (x_3307 + -1.0f);
  let x_3311 : f32 = x_48.unity_SpecCube0_HDR.w;
  let x_3313 : f32 = u_xlat28.x;
  u_xlat28.x = ((x_3311 * x_3313) + 1.0f);
  let x_3318 : f32 = u_xlat28.x;
  u_xlat28.x = max(x_3318, 0.0f);
  let x_3322 : f32 = u_xlat28.x;
  u_xlat28.x = log2(x_3322);
  let x_3326 : f32 = u_xlat28.x;
  let x_3328 : f32 = x_48.unity_SpecCube0_HDR.y;
  u_xlat28.x = (x_3326 * x_3328);
  let x_3332 : f32 = u_xlat28.x;
  u_xlat28.x = exp2(x_3332);
  let x_3336 : f32 = u_xlat28.x;
  let x_3338 : f32 = x_48.unity_SpecCube0_HDR.x;
  u_xlat28.x = (x_3336 * x_3338);
  let x_3341 : vec4<f32> = u_xlat8;
  let x_3343 : vec3<f32> = u_xlat28;
  let x_3345 : vec3<f32> = (vec3<f32>(x_3341.x, x_3341.y, x_3341.z) * vec3<f32>(x_3343.x, x_3343.x, x_3343.x));
  let x_3346 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3345.x, x_3345.y, x_3345.z, x_3346.w);
  let x_3348 : f32 = u_xlat80;
  let x_3350 : f32 = u_xlat80;
  let x_3354 : vec2<f32> = ((vec2<f32>(x_3348, x_3348) * vec2<f32>(x_3350, x_3350)) + vec2<f32>(-1.0f, 1.0f));
  let x_3355 : vec3<f32> = u_xlat28;
  u_xlat28 = vec3<f32>(x_3354.x, x_3355.y, x_3354.y);
  let x_3358 : f32 = u_xlat28.z;
  u_xlat80 = (1.0f / x_3358);
  let x_3360 : f32 = u_xlat82;
  u_xlat82 = (x_3360 + -0.03999999910593032837f);
  let x_3363 : f32 = u_xlat85;
  let x_3364 : f32 = u_xlat82;
  u_xlat82 = ((x_3363 * x_3364) + 0.03999999910593032837f);
  let x_3368 : f32 = u_xlat80;
  let x_3369 : f32 = u_xlat82;
  u_xlat80 = (x_3368 * x_3369);
  let x_3371 : f32 = u_xlat80;
  let x_3373 : vec4<f32> = u_xlat7;
  let x_3375 : vec3<f32> = (vec3<f32>(x_3371, x_3371, x_3371) * vec3<f32>(x_3373.x, x_3373.y, x_3373.z));
  let x_3376 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3375.x, x_3375.y, x_3375.z, x_3376.w);
  let x_3378 : vec4<f32> = u_xlat3;
  let x_3380 : vec3<f32> = u_xlat5;
  let x_3382 : vec4<f32> = u_xlat7;
  let x_3384 : vec3<f32> = ((vec3<f32>(x_3378.x, x_3378.y, x_3378.z) * x_3380) + vec3<f32>(x_3382.x, x_3382.y, x_3382.z));
  let x_3385 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_3384.x, x_3384.y, x_3384.z, x_3385.w);
  let x_3388 : f32 = u_xlat0.x;
  let x_3390 : f32 = x_48.unity_LightData.z;
  u_xlat0.x = (x_3388 * x_3390);
  let x_3393 : vec3<f32> = u_xlat26;
  let x_3395 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat80 = dot(x_3393, vec3<f32>(x_3395.x, x_3395.y, x_3395.z));
  let x_3398 : f32 = u_xlat80;
  u_xlat80 = clamp(x_3398, 0.0f, 1.0f);
  let x_3401 : f32 = u_xlat0.x;
  let x_3402 : f32 = u_xlat80;
  u_xlat0.x = (x_3401 * x_3402);
  let x_3405 : vec3<f32> = u_xlat0;
  let x_3407 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_3405.x, x_3405.x, x_3405.x) * x_3407);
  let x_3409 : vec4<f32> = u_xlat4;
  let x_3412 : vec4<f32> = x_126.x_MainLightPosition;
  let x_3414 : vec3<f32> = (vec3<f32>(x_3409.x, x_3409.y, x_3409.z) + vec3<f32>(x_3412.x, x_3412.y, x_3412.z));
  let x_3415 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3414.x, x_3414.y, x_3414.z, x_3415.w);
  let x_3417 : vec4<f32> = u_xlat7;
  let x_3419 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_3417.x, x_3417.y, x_3417.z), vec3<f32>(x_3419.x, x_3419.y, x_3419.z));
  let x_3424 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_3424, 1.17549435e-38f);
  let x_3428 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_3428);
  let x_3431 : vec3<f32> = u_xlat0;
  let x_3433 : vec4<f32> = u_xlat7;
  let x_3435 : vec3<f32> = (vec3<f32>(x_3431.x, x_3431.x, x_3431.x) * vec3<f32>(x_3433.x, x_3433.y, x_3433.z));
  let x_3436 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3435.x, x_3435.y, x_3435.z, x_3436.w);
  let x_3438 : vec3<f32> = u_xlat26;
  let x_3439 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_3438, vec3<f32>(x_3439.x, x_3439.y, x_3439.z));
  let x_3444 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_3444, 0.0f, 1.0f);
  let x_3448 : vec4<f32> = x_126.x_MainLightPosition;
  let x_3450 : vec4<f32> = u_xlat7;
  u_xlat80 = dot(vec3<f32>(x_3448.x, x_3448.y, x_3448.z), vec3<f32>(x_3450.x, x_3450.y, x_3450.z));
  let x_3453 : f32 = u_xlat80;
  u_xlat80 = clamp(x_3453, 0.0f, 1.0f);
  let x_3456 : f32 = u_xlat0.x;
  let x_3458 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3456 * x_3458);
  let x_3462 : f32 = u_xlat0.x;
  let x_3464 : f32 = u_xlat28.x;
  u_xlat0.x = ((x_3462 * x_3464) + 1.00001001358032226562f);
  let x_3469 : f32 = u_xlat80;
  let x_3470 : f32 = u_xlat80;
  u_xlat80 = (x_3469 * x_3470);
  let x_3473 : f32 = u_xlat0.x;
  let x_3475 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3473 * x_3475);
  let x_3478 : f32 = u_xlat80;
  u_xlat80 = max(x_3478, 0.10000000149011611938f);
  let x_3482 : f32 = u_xlat0.x;
  let x_3483 : f32 = u_xlat80;
  u_xlat0.x = (x_3482 * x_3483);
  let x_3486 : f32 = u_xlat83;
  let x_3488 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3486 * x_3488);
  let x_3491 : f32 = u_xlat81;
  let x_3493 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3491 / x_3493);
  let x_3496 : vec3<f32> = u_xlat0;
  let x_3500 : vec3<f32> = u_xlat5;
  let x_3501 : vec3<f32> = ((vec3<f32>(x_3496.x, x_3496.x, x_3496.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3500);
  let x_3502 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3501.x, x_3501.y, x_3501.z, x_3502.w);
  let x_3504 : vec3<f32> = u_xlat32;
  let x_3505 : vec4<f32> = u_xlat7;
  u_xlat32 = (x_3504 * vec3<f32>(x_3505.x, x_3505.y, x_3505.z));
  let x_3510 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_3512 : f32 = x_48.unity_LightData.y;
  u_xlat0.x = min(x_3510, x_3512);
  let x_3518 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_3518));
  let x_3522 : f32 = u_xlat2.x;
  let x_3525 : f32 = x_241.x_AdditionalShadowFadeParams.x;
  let x_3528 : f32 = x_241.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_3522 * x_3525) + x_3528);
  let x_3532 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_3532, 0.0f, 1.0f);
  let x_3537 : f32 = x_3123.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3539 : f32 = x_3123.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3541 : f32 = x_3123.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3543 : f32 = x_3123.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3544 : vec4<f32> = vec4<f32>(x_3537, x_3539, x_3541, x_3543);
  let x_3550 : vec4<bool> = (vec4<f32>(x_3544.x, x_3544.y, x_3544.z, x_3544.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_3550.x, x_3550.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3562 : u32 = u_xlatu_loop_1;
    let x_3563 : u32 = u_xlatu0;
    if ((x_3562 < x_3563)) {
    } else {
      break;
    }
    let x_3566 : u32 = u_xlatu_loop_1;
    u_xlatu82 = (x_3566 >> 2u);
    let x_3570 : u32 = u_xlatu_loop_1;
    u_xlati59 = bitcast<i32>((x_3570 & 3u));
    let x_3573 : u32 = u_xlatu82;
    let x_3576 : vec4<f32> = x_48.unity_LightIndices[bitcast<i32>(x_3573)];
    let x_3586 : i32 = u_xlati59;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3591 : vec4<u32> = indexable[x_3586];
    u_xlat82 = dot(x_3576, bitcast<vec4<f32>>(x_3591));
    let x_3595 : f32 = u_xlat82;
    u_xlati82 = i32(x_3595);
    let x_3597 : vec3<f32> = vs_INTERP8;
    let x_3608 : i32 = u_xlati82;
    let x_3610 : vec4<f32> = x_3607.x_AdditionalLightsPosition[x_3608];
    let x_3613 : i32 = u_xlati82;
    let x_3615 : vec4<f32> = x_3607.x_AdditionalLightsPosition[x_3613];
    let x_3617 : vec3<f32> = ((-(x_3597) * vec3<f32>(x_3610.w, x_3610.w, x_3610.w)) + vec3<f32>(x_3615.x, x_3615.y, x_3615.z));
    let x_3618 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3617.x, x_3617.y, x_3617.z, x_3618.w);
    let x_3620 : vec4<f32> = u_xlat9;
    let x_3622 : vec4<f32> = u_xlat9;
    u_xlat59.x = dot(vec3<f32>(x_3620.x, x_3620.y, x_3620.z), vec3<f32>(x_3622.x, x_3622.y, x_3622.z));
    let x_3627 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_3627, 0.00006103515625f);
    let x_3632 : f32 = u_xlat59.x;
    u_xlat85 = inverseSqrt(x_3632);
    let x_3634 : f32 = u_xlat85;
    let x_3636 : vec4<f32> = u_xlat9;
    let x_3638 : vec3<f32> = (vec3<f32>(x_3634, x_3634, x_3634) * vec3<f32>(x_3636.x, x_3636.y, x_3636.z));
    let x_3639 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3638.x, x_3638.y, x_3638.z, x_3639.w);
    let x_3643 : f32 = u_xlat59.x;
    u_xlat86 = (1.0f / x_3643);
    let x_3646 : f32 = u_xlat59.x;
    let x_3647 : i32 = u_xlati82;
    let x_3649 : f32 = x_3607.x_AdditionalLightsAttenuation[x_3647].x;
    u_xlat59.x = (x_3646 * x_3649);
    let x_3653 : f32 = u_xlat59.x;
    let x_3656 : f32 = u_xlat59.x;
    u_xlat59.x = ((-(x_3653) * x_3656) + 1.0f);
    let x_3661 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_3661, 0.0f);
    let x_3665 : f32 = u_xlat59.x;
    let x_3667 : f32 = u_xlat59.x;
    u_xlat59.x = (x_3665 * x_3667);
    let x_3671 : f32 = u_xlat59.x;
    let x_3672 : f32 = u_xlat86;
    u_xlat59.x = (x_3671 * x_3672);
    let x_3675 : i32 = u_xlati82;
    let x_3677 : vec4<f32> = x_3607.x_AdditionalLightsSpotDir[x_3675];
    let x_3679 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_3677.x, x_3677.y, x_3677.z), vec3<f32>(x_3679.x, x_3679.y, x_3679.z));
    let x_3682 : f32 = u_xlat86;
    let x_3683 : i32 = u_xlati82;
    let x_3685 : f32 = x_3607.x_AdditionalLightsAttenuation[x_3683].z;
    let x_3687 : i32 = u_xlati82;
    let x_3689 : f32 = x_3607.x_AdditionalLightsAttenuation[x_3687].w;
    u_xlat86 = ((x_3682 * x_3685) + x_3689);
    let x_3691 : f32 = u_xlat86;
    u_xlat86 = clamp(x_3691, 0.0f, 1.0f);
    let x_3693 : f32 = u_xlat86;
    let x_3694 : f32 = u_xlat86;
    u_xlat86 = (x_3693 * x_3694);
    let x_3697 : f32 = u_xlat59.x;
    let x_3698 : f32 = u_xlat86;
    u_xlat59.x = (x_3697 * x_3698);
    let x_3703 : i32 = u_xlati82;
    let x_3705 : f32 = x_241.x_AdditionalShadowParams[x_3703].w;
    u_xlati86 = i32(x_3705);
    let x_3708 : i32 = u_xlati86;
    u_xlatb87 = (x_3708 >= 0i);
    let x_3710 : bool = u_xlatb87;
    if (x_3710) {
      let x_3714 : i32 = u_xlati82;
      let x_3716 : f32 = x_241.x_AdditionalShadowParams[x_3714].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3716, x_3716, x_3716, x_3716))));
      let x_3720 : bool = u_xlatb87;
      if (x_3720) {
        let x_3725 : vec4<f32> = u_xlat10;
        let x_3728 : vec4<f32> = u_xlat10;
        let x_3731 : vec4<bool> = (abs(vec4<f32>(x_3725.z, x_3725.z, x_3725.y, x_3725.z)) >= abs(vec4<f32>(x_3728.x, x_3728.y, x_3728.x, x_3728.x)));
        let x_3733 : vec3<bool> = vec3<bool>(x_3731.x, x_3731.y, x_3731.z);
        let x_3734 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3733.x, x_3733.y, x_3733.z, x_3734.w);
        let x_3737 : bool = u_xlatb11.y;
        let x_3739 : bool = u_xlatb11.x;
        u_xlatb87 = (x_3737 & x_3739);
        let x_3741 : vec4<f32> = u_xlat10;
        let x_3744 : vec4<bool> = (-(vec4<f32>(x_3741.z, x_3741.y, x_3741.z, x_3741.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3745 : vec3<bool> = vec3<bool>(x_3744.x, x_3744.y, x_3744.w);
        let x_3746 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3745.x, x_3745.y, x_3746.z, x_3745.z);
        let x_3749 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3749);
        let x_3754 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3754);
        let x_3760 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_3760);
        let x_3763 : bool = u_xlatb11.z;
        if (x_3763) {
          let x_3768 : f32 = u_xlat11.y;
          x_3764 = x_3768;
        } else {
          let x_3770 : f32 = u_xlat88;
          x_3764 = x_3770;
        }
        let x_3771 : f32 = x_3764;
        u_xlat88 = x_3771;
        let x_3773 : bool = u_xlatb87;
        if (x_3773) {
          let x_3778 : f32 = u_xlat11.x;
          x_3774 = x_3778;
        } else {
          let x_3780 : f32 = u_xlat88;
          x_3774 = x_3780;
        }
        let x_3781 : f32 = x_3774;
        u_xlat87 = x_3781;
        let x_3782 : i32 = u_xlati82;
        let x_3784 : f32 = x_241.x_AdditionalShadowParams[x_3782].w;
        u_xlat88 = trunc(x_3784);
        let x_3786 : f32 = u_xlat87;
        let x_3787 : f32 = u_xlat88;
        u_xlat87 = (x_3786 + x_3787);
        let x_3789 : f32 = u_xlat87;
        u_xlati86 = i32(x_3789);
      }
      let x_3791 : i32 = u_xlati86;
      u_xlati86 = (x_3791 << bitcast<u32>(2i));
      let x_3793 : vec3<f32> = vs_INTERP8;
      let x_3796 : i32 = u_xlati86;
      let x_3799 : i32 = u_xlati86;
      let x_3803 : vec4<f32> = x_241.x_AdditionalLightsWorldToShadow[((x_3796 + 1i) / 4i)][((x_3799 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3793.y, x_3793.y, x_3793.y, x_3793.y) * x_3803);
      let x_3805 : i32 = u_xlati86;
      let x_3807 : i32 = u_xlati86;
      let x_3810 : vec4<f32> = x_241.x_AdditionalLightsWorldToShadow[(x_3805 / 4i)][(x_3807 % 4i)];
      let x_3811 : vec3<f32> = vs_INTERP8;
      let x_3814 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3810 * vec4<f32>(x_3811.x, x_3811.x, x_3811.x, x_3811.x)) + x_3814);
      let x_3816 : i32 = u_xlati86;
      let x_3819 : i32 = u_xlati86;
      let x_3823 : vec4<f32> = x_241.x_AdditionalLightsWorldToShadow[((x_3816 + 2i) / 4i)][((x_3819 + 2i) % 4i)];
      let x_3824 : vec3<f32> = vs_INTERP8;
      let x_3827 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3823 * vec4<f32>(x_3824.z, x_3824.z, x_3824.z, x_3824.z)) + x_3827);
      let x_3829 : vec4<f32> = u_xlat11;
      let x_3830 : i32 = u_xlati86;
      let x_3833 : i32 = u_xlati86;
      let x_3837 : vec4<f32> = x_241.x_AdditionalLightsWorldToShadow[((x_3830 + 3i) / 4i)][((x_3833 + 3i) % 4i)];
      u_xlat11 = (x_3829 + x_3837);
      let x_3839 : vec4<f32> = u_xlat11;
      let x_3841 : vec4<f32> = u_xlat11;
      let x_3843 : vec3<f32> = (vec3<f32>(x_3839.x, x_3839.y, x_3839.z) / vec3<f32>(x_3841.w, x_3841.w, x_3841.w));
      let x_3844 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3843.x, x_3843.y, x_3843.z, x_3844.w);
      let x_3847 : i32 = u_xlati82;
      let x_3849 : f32 = x_241.x_AdditionalShadowParams[x_3847].y;
      u_xlatb86 = (0.0f < x_3849);
      let x_3851 : bool = u_xlatb86;
      if (x_3851) {
        let x_3854 : i32 = u_xlati82;
        let x_3856 : f32 = x_241.x_AdditionalShadowParams[x_3854].y;
        u_xlatb86 = (1.0f == x_3856);
        let x_3858 : bool = u_xlatb86;
        if (x_3858) {
          let x_3861 : vec4<f32> = u_xlat11;
          let x_3865 : vec4<f32> = x_241.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3861.x, x_3861.y, x_3861.x, x_3861.y) + x_3865);
          let x_3868 : vec4<f32> = u_xlat12;
          let x_3869 : vec2<f32> = vec2<f32>(x_3868.x, x_3868.y);
          let x_3871 : f32 = u_xlat11.z;
          txVec60 = vec3<f32>(x_3869.x, x_3869.y, x_3871);
          let x_3879 : vec3<f32> = txVec60;
          let x_3881 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3879.xy, x_3879.z);
          u_xlat13.x = x_3881;
          let x_3884 : vec4<f32> = u_xlat12;
          let x_3885 : vec2<f32> = vec2<f32>(x_3884.z, x_3884.w);
          let x_3887 : f32 = u_xlat11.z;
          txVec61 = vec3<f32>(x_3885.x, x_3885.y, x_3887);
          let x_3894 : vec3<f32> = txVec61;
          let x_3896 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3894.xy, x_3894.z);
          u_xlat13.y = x_3896;
          let x_3898 : vec4<f32> = u_xlat11;
          let x_3902 : vec4<f32> = x_241.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3898.x, x_3898.y, x_3898.x, x_3898.y) + x_3902);
          let x_3905 : vec4<f32> = u_xlat12;
          let x_3906 : vec2<f32> = vec2<f32>(x_3905.x, x_3905.y);
          let x_3908 : f32 = u_xlat11.z;
          txVec62 = vec3<f32>(x_3906.x, x_3906.y, x_3908);
          let x_3915 : vec3<f32> = txVec62;
          let x_3917 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3915.xy, x_3915.z);
          u_xlat13.z = x_3917;
          let x_3920 : vec4<f32> = u_xlat12;
          let x_3921 : vec2<f32> = vec2<f32>(x_3920.z, x_3920.w);
          let x_3923 : f32 = u_xlat11.z;
          txVec63 = vec3<f32>(x_3921.x, x_3921.y, x_3923);
          let x_3930 : vec3<f32> = txVec63;
          let x_3932 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3930.xy, x_3930.z);
          u_xlat13.w = x_3932;
          let x_3934 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_3934, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3937 : i32 = u_xlati82;
          let x_3939 : f32 = x_241.x_AdditionalShadowParams[x_3937].y;
          u_xlatb87 = (2.0f == x_3939);
          let x_3941 : bool = u_xlatb87;
          if (x_3941) {
            let x_3944 : vec4<f32> = u_xlat11;
            let x_3948 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_3951 : vec2<f32> = ((vec2<f32>(x_3944.x, x_3944.y) * vec2<f32>(x_3948.z, x_3948.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3952 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3951.x, x_3951.y, x_3952.z, x_3952.w);
            let x_3954 : vec4<f32> = u_xlat12;
            let x_3956 : vec2<f32> = floor(vec2<f32>(x_3954.x, x_3954.y));
            let x_3957 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3956.x, x_3956.y, x_3957.z, x_3957.w);
            let x_3960 : vec4<f32> = u_xlat11;
            let x_3963 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_3966 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3960.x, x_3960.y) * vec2<f32>(x_3963.z, x_3963.w)) + -(vec2<f32>(x_3966.x, x_3966.y)));
            let x_3970 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3970.x, x_3970.x, x_3970.y, x_3970.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3973 : vec4<f32> = u_xlat13;
            let x_3975 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3973.x, x_3973.x, x_3973.z, x_3973.z) * vec4<f32>(x_3975.x, x_3975.x, x_3975.z, x_3975.z));
            let x_3978 : vec4<f32> = u_xlat14;
            let x_3980 : vec2<f32> = (vec2<f32>(x_3978.y, x_3978.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3981 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3980.x, x_3981.y, x_3980.y, x_3981.w);
            let x_3983 : vec4<f32> = u_xlat14;
            let x_3986 : vec2<f32> = u_xlat64;
            let x_3988 : vec2<f32> = ((vec2<f32>(x_3983.x, x_3983.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3986));
            let x_3989 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3988.x, x_3988.y, x_3989.z, x_3989.w);
            let x_3991 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3991) + vec2<f32>(1.0f, 1.0f));
            let x_3994 : vec2<f32> = u_xlat64;
            let x_3995 : vec2<f32> = min(x_3994, vec2<f32>(0.0f, 0.0f));
            let x_3996 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3995.x, x_3995.y, x_3996.z, x_3996.w);
            let x_3998 : vec4<f32> = u_xlat15;
            let x_4001 : vec4<f32> = u_xlat15;
            let x_4004 : vec2<f32> = u_xlat66;
            let x_4005 : vec2<f32> = ((-(vec2<f32>(x_3998.x, x_3998.y)) * vec2<f32>(x_4001.x, x_4001.y)) + x_4004);
            let x_4006 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4005.x, x_4005.y, x_4006.z, x_4006.w);
            let x_4008 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_4008, vec2<f32>(0.0f, 0.0f));
            let x_4010 : vec2<f32> = u_xlat64;
            let x_4012 : vec2<f32> = u_xlat64;
            let x_4014 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_4010) * x_4012) + vec2<f32>(x_4014.y, x_4014.w));
            let x_4017 : vec4<f32> = u_xlat15;
            let x_4019 : vec2<f32> = (vec2<f32>(x_4017.x, x_4017.y) + vec2<f32>(1.0f, 1.0f));
            let x_4020 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4019.x, x_4019.y, x_4020.z, x_4020.w);
            let x_4022 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_4022 + vec2<f32>(1.0f, 1.0f));
            let x_4024 : vec4<f32> = u_xlat14;
            let x_4026 : vec2<f32> = (vec2<f32>(x_4024.x, x_4024.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4027 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4026.x, x_4026.y, x_4027.z, x_4027.w);
            let x_4029 : vec2<f32> = u_xlat66;
            let x_4030 : vec2<f32> = (x_4029 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4031 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4030.x, x_4030.y, x_4031.z, x_4031.w);
            let x_4033 : vec4<f32> = u_xlat15;
            let x_4035 : vec2<f32> = (vec2<f32>(x_4033.x, x_4033.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4036 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4035.x, x_4035.y, x_4036.z, x_4036.w);
            let x_4038 : vec2<f32> = u_xlat64;
            let x_4039 : vec2<f32> = (x_4038 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4040 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4039.x, x_4039.y, x_4040.z, x_4040.w);
            let x_4042 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_4042.y, x_4042.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4046 : f32 = u_xlat15.x;
            u_xlat16.z = x_4046;
            let x_4049 : f32 = u_xlat64.x;
            u_xlat16.w = x_4049;
            let x_4052 : f32 = u_xlat17.x;
            u_xlat14.z = x_4052;
            let x_4055 : f32 = u_xlat13.x;
            u_xlat14.w = x_4055;
            let x_4057 : vec4<f32> = u_xlat14;
            let x_4059 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_4057.z, x_4057.w, x_4057.x, x_4057.z) + vec4<f32>(x_4059.z, x_4059.w, x_4059.x, x_4059.z));
            let x_4063 : f32 = u_xlat16.y;
            u_xlat15.z = x_4063;
            let x_4066 : f32 = u_xlat64.y;
            u_xlat15.w = x_4066;
            let x_4069 : f32 = u_xlat14.y;
            u_xlat17.z = x_4069;
            let x_4072 : f32 = u_xlat13.z;
            u_xlat17.w = x_4072;
            let x_4074 : vec4<f32> = u_xlat15;
            let x_4076 : vec4<f32> = u_xlat17;
            let x_4078 : vec3<f32> = (vec3<f32>(x_4074.z, x_4074.y, x_4074.w) + vec3<f32>(x_4076.z, x_4076.y, x_4076.w));
            let x_4079 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4078.x, x_4078.y, x_4078.z, x_4079.w);
            let x_4081 : vec4<f32> = u_xlat14;
            let x_4083 : vec4<f32> = u_xlat18;
            let x_4085 : vec3<f32> = (vec3<f32>(x_4081.x, x_4081.z, x_4081.w) / vec3<f32>(x_4083.z, x_4083.w, x_4083.y));
            let x_4086 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4085.x, x_4085.y, x_4085.z, x_4086.w);
            let x_4088 : vec4<f32> = u_xlat14;
            let x_4090 : vec3<f32> = (vec3<f32>(x_4088.x, x_4088.y, x_4088.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4091 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4090.x, x_4090.y, x_4090.z, x_4091.w);
            let x_4093 : vec4<f32> = u_xlat17;
            let x_4095 : vec4<f32> = u_xlat13;
            let x_4097 : vec3<f32> = (vec3<f32>(x_4093.z, x_4093.y, x_4093.w) / vec3<f32>(x_4095.x, x_4095.y, x_4095.z));
            let x_4098 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4097.x, x_4097.y, x_4097.z, x_4098.w);
            let x_4100 : vec4<f32> = u_xlat15;
            let x_4102 : vec3<f32> = (vec3<f32>(x_4100.x, x_4100.y, x_4100.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4103 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4102.x, x_4102.y, x_4102.z, x_4103.w);
            let x_4105 : vec4<f32> = u_xlat14;
            let x_4108 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4110 : vec3<f32> = (vec3<f32>(x_4105.y, x_4105.x, x_4105.z) * vec3<f32>(x_4108.x, x_4108.x, x_4108.x));
            let x_4111 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4110.x, x_4110.y, x_4110.z, x_4111.w);
            let x_4113 : vec4<f32> = u_xlat15;
            let x_4116 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4118 : vec3<f32> = (vec3<f32>(x_4113.x, x_4113.y, x_4113.z) * vec3<f32>(x_4116.y, x_4116.y, x_4116.y));
            let x_4119 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4118.x, x_4118.y, x_4118.z, x_4119.w);
            let x_4122 : f32 = u_xlat15.x;
            u_xlat14.w = x_4122;
            let x_4124 : vec4<f32> = u_xlat12;
            let x_4127 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4130 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4124.x, x_4124.y, x_4124.x, x_4124.y) * vec4<f32>(x_4127.x, x_4127.y, x_4127.x, x_4127.y)) + vec4<f32>(x_4130.y, x_4130.w, x_4130.x, x_4130.w));
            let x_4133 : vec4<f32> = u_xlat12;
            let x_4136 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4139 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4133.x, x_4133.y) * vec2<f32>(x_4136.x, x_4136.y)) + vec2<f32>(x_4139.z, x_4139.w));
            let x_4143 : f32 = u_xlat14.y;
            u_xlat15.w = x_4143;
            let x_4145 : vec4<f32> = u_xlat15;
            let x_4146 : vec2<f32> = vec2<f32>(x_4145.y, x_4145.z);
            let x_4147 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4147.x, x_4146.x, x_4147.z, x_4146.y);
            let x_4149 : vec4<f32> = u_xlat12;
            let x_4152 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4155 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_4149.x, x_4149.y, x_4149.x, x_4149.y) * vec4<f32>(x_4152.x, x_4152.y, x_4152.x, x_4152.y)) + vec4<f32>(x_4155.x, x_4155.y, x_4155.z, x_4155.y));
            let x_4158 : vec4<f32> = u_xlat12;
            let x_4161 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4164 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4158.x, x_4158.y, x_4158.x, x_4158.y) * vec4<f32>(x_4161.x, x_4161.y, x_4161.x, x_4161.y)) + vec4<f32>(x_4164.w, x_4164.y, x_4164.w, x_4164.z));
            let x_4167 : vec4<f32> = u_xlat12;
            let x_4170 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4173 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4167.x, x_4167.y, x_4167.x, x_4167.y) * vec4<f32>(x_4170.x, x_4170.y, x_4170.x, x_4170.y)) + vec4<f32>(x_4173.x, x_4173.w, x_4173.z, x_4173.w));
            let x_4176 : vec4<f32> = u_xlat13;
            let x_4178 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_4176.x, x_4176.x, x_4176.x, x_4176.y) * vec4<f32>(x_4178.z, x_4178.w, x_4178.y, x_4178.z));
            let x_4181 : vec4<f32> = u_xlat13;
            let x_4183 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_4181.y, x_4181.y, x_4181.z, x_4181.z) * x_4183);
            let x_4186 : f32 = u_xlat13.z;
            let x_4188 : f32 = u_xlat18.y;
            u_xlat87 = (x_4186 * x_4188);
            let x_4191 : vec4<f32> = u_xlat16;
            let x_4192 : vec2<f32> = vec2<f32>(x_4191.x, x_4191.y);
            let x_4194 : f32 = u_xlat11.z;
            txVec64 = vec3<f32>(x_4192.x, x_4192.y, x_4194);
            let x_4201 : vec3<f32> = txVec64;
            let x_4203 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4201.xy, x_4201.z);
            u_xlat88 = x_4203;
            let x_4205 : vec4<f32> = u_xlat16;
            let x_4206 : vec2<f32> = vec2<f32>(x_4205.z, x_4205.w);
            let x_4208 : f32 = u_xlat11.z;
            txVec65 = vec3<f32>(x_4206.x, x_4206.y, x_4208);
            let x_4216 : vec3<f32> = txVec65;
            let x_4218 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4216.xy, x_4216.z);
            u_xlat89 = x_4218;
            let x_4219 : f32 = u_xlat89;
            let x_4221 : f32 = u_xlat19.y;
            u_xlat89 = (x_4219 * x_4221);
            let x_4224 : f32 = u_xlat19.x;
            let x_4225 : f32 = u_xlat88;
            let x_4227 : f32 = u_xlat89;
            u_xlat88 = ((x_4224 * x_4225) + x_4227);
            let x_4230 : vec2<f32> = u_xlat64;
            let x_4232 : f32 = u_xlat11.z;
            txVec66 = vec3<f32>(x_4230.x, x_4230.y, x_4232);
            let x_4239 : vec3<f32> = txVec66;
            let x_4241 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4239.xy, x_4239.z);
            u_xlat89 = x_4241;
            let x_4243 : f32 = u_xlat19.z;
            let x_4244 : f32 = u_xlat89;
            let x_4246 : f32 = u_xlat88;
            u_xlat88 = ((x_4243 * x_4244) + x_4246);
            let x_4249 : vec4<f32> = u_xlat15;
            let x_4250 : vec2<f32> = vec2<f32>(x_4249.x, x_4249.y);
            let x_4252 : f32 = u_xlat11.z;
            txVec67 = vec3<f32>(x_4250.x, x_4250.y, x_4252);
            let x_4259 : vec3<f32> = txVec67;
            let x_4261 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4259.xy, x_4259.z);
            u_xlat89 = x_4261;
            let x_4263 : f32 = u_xlat19.w;
            let x_4264 : f32 = u_xlat89;
            let x_4266 : f32 = u_xlat88;
            u_xlat88 = ((x_4263 * x_4264) + x_4266);
            let x_4269 : vec4<f32> = u_xlat17;
            let x_4270 : vec2<f32> = vec2<f32>(x_4269.x, x_4269.y);
            let x_4272 : f32 = u_xlat11.z;
            txVec68 = vec3<f32>(x_4270.x, x_4270.y, x_4272);
            let x_4279 : vec3<f32> = txVec68;
            let x_4281 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4279.xy, x_4279.z);
            u_xlat89 = x_4281;
            let x_4283 : f32 = u_xlat20.x;
            let x_4284 : f32 = u_xlat89;
            let x_4286 : f32 = u_xlat88;
            u_xlat88 = ((x_4283 * x_4284) + x_4286);
            let x_4289 : vec4<f32> = u_xlat17;
            let x_4290 : vec2<f32> = vec2<f32>(x_4289.z, x_4289.w);
            let x_4292 : f32 = u_xlat11.z;
            txVec69 = vec3<f32>(x_4290.x, x_4290.y, x_4292);
            let x_4299 : vec3<f32> = txVec69;
            let x_4301 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4299.xy, x_4299.z);
            u_xlat89 = x_4301;
            let x_4303 : f32 = u_xlat20.y;
            let x_4304 : f32 = u_xlat89;
            let x_4306 : f32 = u_xlat88;
            u_xlat88 = ((x_4303 * x_4304) + x_4306);
            let x_4309 : vec4<f32> = u_xlat15;
            let x_4310 : vec2<f32> = vec2<f32>(x_4309.z, x_4309.w);
            let x_4312 : f32 = u_xlat11.z;
            txVec70 = vec3<f32>(x_4310.x, x_4310.y, x_4312);
            let x_4319 : vec3<f32> = txVec70;
            let x_4321 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4319.xy, x_4319.z);
            u_xlat89 = x_4321;
            let x_4323 : f32 = u_xlat20.z;
            let x_4324 : f32 = u_xlat89;
            let x_4326 : f32 = u_xlat88;
            u_xlat88 = ((x_4323 * x_4324) + x_4326);
            let x_4329 : vec4<f32> = u_xlat14;
            let x_4330 : vec2<f32> = vec2<f32>(x_4329.x, x_4329.y);
            let x_4332 : f32 = u_xlat11.z;
            txVec71 = vec3<f32>(x_4330.x, x_4330.y, x_4332);
            let x_4339 : vec3<f32> = txVec71;
            let x_4341 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4339.xy, x_4339.z);
            u_xlat89 = x_4341;
            let x_4343 : f32 = u_xlat20.w;
            let x_4344 : f32 = u_xlat89;
            let x_4346 : f32 = u_xlat88;
            u_xlat88 = ((x_4343 * x_4344) + x_4346);
            let x_4349 : vec4<f32> = u_xlat14;
            let x_4350 : vec2<f32> = vec2<f32>(x_4349.z, x_4349.w);
            let x_4352 : f32 = u_xlat11.z;
            txVec72 = vec3<f32>(x_4350.x, x_4350.y, x_4352);
            let x_4359 : vec3<f32> = txVec72;
            let x_4361 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4359.xy, x_4359.z);
            u_xlat89 = x_4361;
            let x_4362 : f32 = u_xlat87;
            let x_4363 : f32 = u_xlat89;
            let x_4365 : f32 = u_xlat88;
            u_xlat86 = ((x_4362 * x_4363) + x_4365);
          } else {
            let x_4368 : vec4<f32> = u_xlat11;
            let x_4371 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4374 : vec2<f32> = ((vec2<f32>(x_4368.x, x_4368.y) * vec2<f32>(x_4371.z, x_4371.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4375 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4374.x, x_4374.y, x_4375.z, x_4375.w);
            let x_4377 : vec4<f32> = u_xlat12;
            let x_4379 : vec2<f32> = floor(vec2<f32>(x_4377.x, x_4377.y));
            let x_4380 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4379.x, x_4379.y, x_4380.z, x_4380.w);
            let x_4382 : vec4<f32> = u_xlat11;
            let x_4385 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4388 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4382.x, x_4382.y) * vec2<f32>(x_4385.z, x_4385.w)) + -(vec2<f32>(x_4388.x, x_4388.y)));
            let x_4392 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4392.x, x_4392.x, x_4392.y, x_4392.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4395 : vec4<f32> = u_xlat13;
            let x_4397 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4395.x, x_4395.x, x_4395.z, x_4395.z) * vec4<f32>(x_4397.x, x_4397.x, x_4397.z, x_4397.z));
            let x_4400 : vec4<f32> = u_xlat14;
            let x_4402 : vec2<f32> = (vec2<f32>(x_4400.y, x_4400.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4403 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4403.x, x_4402.x, x_4403.z, x_4402.y);
            let x_4405 : vec4<f32> = u_xlat14;
            let x_4408 : vec2<f32> = u_xlat64;
            let x_4410 : vec2<f32> = ((vec2<f32>(x_4405.x, x_4405.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4408));
            let x_4411 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4410.x, x_4411.y, x_4410.y, x_4411.w);
            let x_4413 : vec2<f32> = u_xlat64;
            let x_4415 : vec2<f32> = (-(x_4413) + vec2<f32>(1.0f, 1.0f));
            let x_4416 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4415.x, x_4415.y, x_4416.z, x_4416.w);
            let x_4418 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_4418, vec2<f32>(0.0f, 0.0f));
            let x_4420 : vec2<f32> = u_xlat66;
            let x_4422 : vec2<f32> = u_xlat66;
            let x_4424 : vec4<f32> = u_xlat14;
            let x_4426 : vec2<f32> = ((-(x_4420) * x_4422) + vec2<f32>(x_4424.x, x_4424.y));
            let x_4427 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4426.x, x_4426.y, x_4427.z, x_4427.w);
            let x_4429 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_4429, vec2<f32>(0.0f, 0.0f));
            let x_4432 : vec2<f32> = u_xlat66;
            let x_4434 : vec2<f32> = u_xlat66;
            let x_4436 : vec4<f32> = u_xlat13;
            let x_4438 : vec2<f32> = ((-(x_4432) * x_4434) + vec2<f32>(x_4436.y, x_4436.w));
            let x_4439 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_4438.x, x_4439.y, x_4438.y);
            let x_4441 : vec4<f32> = u_xlat14;
            let x_4443 : vec2<f32> = (vec2<f32>(x_4441.x, x_4441.y) + vec2<f32>(2.0f, 2.0f));
            let x_4444 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4443.x, x_4443.y, x_4444.z, x_4444.w);
            let x_4446 : vec3<f32> = u_xlat39;
            let x_4448 : vec2<f32> = (vec2<f32>(x_4446.x, x_4446.z) + vec2<f32>(2.0f, 2.0f));
            let x_4449 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4449.x, x_4448.x, x_4449.z, x_4448.y);
            let x_4452 : f32 = u_xlat13.y;
            u_xlat16.z = (x_4452 * 0.08163200318813323975f);
            let x_4455 : vec4<f32> = u_xlat13;
            let x_4457 : vec3<f32> = (vec3<f32>(x_4455.z, x_4455.x, x_4455.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4458 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4457.x, x_4457.y, x_4457.z, x_4458.w);
            let x_4460 : vec4<f32> = u_xlat14;
            let x_4462 : vec2<f32> = (vec2<f32>(x_4460.x, x_4460.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4463 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4462.x, x_4462.y, x_4463.z, x_4463.w);
            let x_4466 : f32 = u_xlat17.y;
            u_xlat16.x = x_4466;
            let x_4468 : vec2<f32> = u_xlat64;
            let x_4471 : vec2<f32> = ((vec2<f32>(x_4468.x, x_4468.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4472 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4472.x, x_4471.x, x_4472.z, x_4471.y);
            let x_4474 : vec2<f32> = u_xlat64;
            let x_4477 : vec2<f32> = ((vec2<f32>(x_4474.x, x_4474.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4478 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4477.x, x_4478.y, x_4477.y, x_4478.w);
            let x_4481 : f32 = u_xlat13.x;
            u_xlat14.y = x_4481;
            let x_4484 : f32 = u_xlat15.y;
            u_xlat14.w = x_4484;
            let x_4486 : vec4<f32> = u_xlat14;
            let x_4487 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4486 + x_4487);
            let x_4489 : vec2<f32> = u_xlat64;
            let x_4492 : vec2<f32> = ((vec2<f32>(x_4489.y, x_4489.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4493 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4493.x, x_4492.x, x_4493.z, x_4492.y);
            let x_4495 : vec2<f32> = u_xlat64;
            let x_4498 : vec2<f32> = ((vec2<f32>(x_4495.y, x_4495.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4499 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4498.x, x_4499.y, x_4498.y, x_4499.w);
            let x_4502 : f32 = u_xlat13.y;
            u_xlat15.y = x_4502;
            let x_4504 : vec4<f32> = u_xlat15;
            let x_4505 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4504 + x_4505);
            let x_4507 : vec4<f32> = u_xlat14;
            let x_4508 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_4507 / x_4508);
            let x_4510 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4510 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4512 : vec4<f32> = u_xlat15;
            let x_4513 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_4512 / x_4513);
            let x_4515 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4515 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4517 : vec4<f32> = u_xlat14;
            let x_4520 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4517.w, x_4517.x, x_4517.y, x_4517.z) * vec4<f32>(x_4520.x, x_4520.x, x_4520.x, x_4520.x));
            let x_4523 : vec4<f32> = u_xlat15;
            let x_4526 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_4523.x, x_4523.w, x_4523.y, x_4523.z) * vec4<f32>(x_4526.y, x_4526.y, x_4526.y, x_4526.y));
            let x_4529 : vec4<f32> = u_xlat14;
            let x_4530 : vec3<f32> = vec3<f32>(x_4529.y, x_4529.z, x_4529.w);
            let x_4531 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4530.x, x_4531.y, x_4530.y, x_4530.z);
            let x_4534 : f32 = u_xlat15.x;
            u_xlat17.y = x_4534;
            let x_4536 : vec4<f32> = u_xlat12;
            let x_4539 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4542 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4536.x, x_4536.y, x_4536.x, x_4536.y) * vec4<f32>(x_4539.x, x_4539.y, x_4539.x, x_4539.y)) + vec4<f32>(x_4542.x, x_4542.y, x_4542.z, x_4542.y));
            let x_4545 : vec4<f32> = u_xlat12;
            let x_4548 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4551 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_4545.x, x_4545.y) * vec2<f32>(x_4548.x, x_4548.y)) + vec2<f32>(x_4551.w, x_4551.y));
            let x_4555 : f32 = u_xlat17.y;
            u_xlat14.y = x_4555;
            let x_4558 : f32 = u_xlat15.z;
            u_xlat17.y = x_4558;
            let x_4560 : vec4<f32> = u_xlat12;
            let x_4563 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4566 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_4560.x, x_4560.y, x_4560.x, x_4560.y) * vec4<f32>(x_4563.x, x_4563.y, x_4563.x, x_4563.y)) + vec4<f32>(x_4566.x, x_4566.y, x_4566.z, x_4566.y));
            let x_4569 : vec4<f32> = u_xlat12;
            let x_4572 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4575 : vec4<f32> = u_xlat17;
            let x_4577 : vec2<f32> = ((vec2<f32>(x_4569.x, x_4569.y) * vec2<f32>(x_4572.x, x_4572.y)) + vec2<f32>(x_4575.w, x_4575.y));
            let x_4578 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_4577.x, x_4577.y, x_4578.z, x_4578.w);
            let x_4581 : f32 = u_xlat17.y;
            u_xlat14.z = x_4581;
            let x_4584 : vec4<f32> = u_xlat12;
            let x_4587 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4590 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4584.x, x_4584.y, x_4584.x, x_4584.y) * vec4<f32>(x_4587.x, x_4587.y, x_4587.x, x_4587.y)) + vec4<f32>(x_4590.x, x_4590.y, x_4590.x, x_4590.z));
            let x_4594 : f32 = u_xlat15.w;
            u_xlat17.y = x_4594;
            let x_4597 : vec4<f32> = u_xlat12;
            let x_4600 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4603 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4597.x, x_4597.y, x_4597.x, x_4597.y) * vec4<f32>(x_4600.x, x_4600.y, x_4600.x, x_4600.y)) + vec4<f32>(x_4603.x, x_4603.y, x_4603.z, x_4603.y));
            let x_4607 : vec4<f32> = u_xlat12;
            let x_4610 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4613 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_4607.x, x_4607.y) * vec2<f32>(x_4610.x, x_4610.y)) + vec2<f32>(x_4613.w, x_4613.y));
            let x_4617 : f32 = u_xlat17.y;
            u_xlat14.w = x_4617;
            let x_4620 : vec4<f32> = u_xlat12;
            let x_4623 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4626 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4620.x, x_4620.y) * vec2<f32>(x_4623.x, x_4623.y)) + vec2<f32>(x_4626.x, x_4626.w));
            let x_4629 : vec4<f32> = u_xlat17;
            let x_4630 : vec3<f32> = vec3<f32>(x_4629.x, x_4629.z, x_4629.w);
            let x_4631 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4630.x, x_4631.y, x_4630.y, x_4630.z);
            let x_4633 : vec4<f32> = u_xlat12;
            let x_4636 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4639 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4633.x, x_4633.y, x_4633.x, x_4633.y) * vec4<f32>(x_4636.x, x_4636.y, x_4636.x, x_4636.y)) + vec4<f32>(x_4639.x, x_4639.y, x_4639.z, x_4639.y));
            let x_4643 : vec4<f32> = u_xlat12;
            let x_4646 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4649 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4643.x, x_4643.y) * vec2<f32>(x_4646.x, x_4646.y)) + vec2<f32>(x_4649.w, x_4649.y));
            let x_4653 : f32 = u_xlat14.x;
            u_xlat15.x = x_4653;
            let x_4655 : vec4<f32> = u_xlat12;
            let x_4658 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4661 : vec4<f32> = u_xlat15;
            let x_4663 : vec2<f32> = ((vec2<f32>(x_4655.x, x_4655.y) * vec2<f32>(x_4658.x, x_4658.y)) + vec2<f32>(x_4661.x, x_4661.y));
            let x_4664 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4663.x, x_4663.y, x_4664.z, x_4664.w);
            let x_4667 : vec4<f32> = u_xlat13;
            let x_4669 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4667.x, x_4667.x, x_4667.x, x_4667.x) * x_4669);
            let x_4672 : vec4<f32> = u_xlat13;
            let x_4674 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4672.y, x_4672.y, x_4672.y, x_4672.y) * x_4674);
            let x_4677 : vec4<f32> = u_xlat13;
            let x_4679 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4677.z, x_4677.z, x_4677.z, x_4677.z) * x_4679);
            let x_4681 : vec4<f32> = u_xlat13;
            let x_4683 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4681.w, x_4681.w, x_4681.w, x_4681.w) * x_4683);
            let x_4686 : vec4<f32> = u_xlat18;
            let x_4687 : vec2<f32> = vec2<f32>(x_4686.x, x_4686.y);
            let x_4689 : f32 = u_xlat11.z;
            txVec73 = vec3<f32>(x_4687.x, x_4687.y, x_4689);
            let x_4696 : vec3<f32> = txVec73;
            let x_4698 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4696.xy, x_4696.z);
            u_xlat87 = x_4698;
            let x_4700 : vec4<f32> = u_xlat18;
            let x_4701 : vec2<f32> = vec2<f32>(x_4700.z, x_4700.w);
            let x_4703 : f32 = u_xlat11.z;
            txVec74 = vec3<f32>(x_4701.x, x_4701.y, x_4703);
            let x_4710 : vec3<f32> = txVec74;
            let x_4712 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4710.xy, x_4710.z);
            u_xlat88 = x_4712;
            let x_4713 : f32 = u_xlat88;
            let x_4715 : f32 = u_xlat23.y;
            u_xlat88 = (x_4713 * x_4715);
            let x_4718 : f32 = u_xlat23.x;
            let x_4719 : f32 = u_xlat87;
            let x_4721 : f32 = u_xlat88;
            u_xlat87 = ((x_4718 * x_4719) + x_4721);
            let x_4724 : vec2<f32> = u_xlat64;
            let x_4726 : f32 = u_xlat11.z;
            txVec75 = vec3<f32>(x_4724.x, x_4724.y, x_4726);
            let x_4733 : vec3<f32> = txVec75;
            let x_4735 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4733.xy, x_4733.z);
            u_xlat88 = x_4735;
            let x_4737 : f32 = u_xlat23.z;
            let x_4738 : f32 = u_xlat88;
            let x_4740 : f32 = u_xlat87;
            u_xlat87 = ((x_4737 * x_4738) + x_4740);
            let x_4743 : vec4<f32> = u_xlat21;
            let x_4744 : vec2<f32> = vec2<f32>(x_4743.x, x_4743.y);
            let x_4746 : f32 = u_xlat11.z;
            txVec76 = vec3<f32>(x_4744.x, x_4744.y, x_4746);
            let x_4753 : vec3<f32> = txVec76;
            let x_4755 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4753.xy, x_4753.z);
            u_xlat88 = x_4755;
            let x_4757 : f32 = u_xlat23.w;
            let x_4758 : f32 = u_xlat88;
            let x_4760 : f32 = u_xlat87;
            u_xlat87 = ((x_4757 * x_4758) + x_4760);
            let x_4763 : vec4<f32> = u_xlat19;
            let x_4764 : vec2<f32> = vec2<f32>(x_4763.x, x_4763.y);
            let x_4766 : f32 = u_xlat11.z;
            txVec77 = vec3<f32>(x_4764.x, x_4764.y, x_4766);
            let x_4773 : vec3<f32> = txVec77;
            let x_4775 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4773.xy, x_4773.z);
            u_xlat88 = x_4775;
            let x_4777 : f32 = u_xlat24.x;
            let x_4778 : f32 = u_xlat88;
            let x_4780 : f32 = u_xlat87;
            u_xlat87 = ((x_4777 * x_4778) + x_4780);
            let x_4783 : vec4<f32> = u_xlat19;
            let x_4784 : vec2<f32> = vec2<f32>(x_4783.z, x_4783.w);
            let x_4786 : f32 = u_xlat11.z;
            txVec78 = vec3<f32>(x_4784.x, x_4784.y, x_4786);
            let x_4793 : vec3<f32> = txVec78;
            let x_4795 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4793.xy, x_4793.z);
            u_xlat88 = x_4795;
            let x_4797 : f32 = u_xlat24.y;
            let x_4798 : f32 = u_xlat88;
            let x_4800 : f32 = u_xlat87;
            u_xlat87 = ((x_4797 * x_4798) + x_4800);
            let x_4803 : vec4<f32> = u_xlat20;
            let x_4804 : vec2<f32> = vec2<f32>(x_4803.x, x_4803.y);
            let x_4806 : f32 = u_xlat11.z;
            txVec79 = vec3<f32>(x_4804.x, x_4804.y, x_4806);
            let x_4813 : vec3<f32> = txVec79;
            let x_4815 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4813.xy, x_4813.z);
            u_xlat88 = x_4815;
            let x_4817 : f32 = u_xlat24.z;
            let x_4818 : f32 = u_xlat88;
            let x_4820 : f32 = u_xlat87;
            u_xlat87 = ((x_4817 * x_4818) + x_4820);
            let x_4823 : vec4<f32> = u_xlat21;
            let x_4824 : vec2<f32> = vec2<f32>(x_4823.z, x_4823.w);
            let x_4826 : f32 = u_xlat11.z;
            txVec80 = vec3<f32>(x_4824.x, x_4824.y, x_4826);
            let x_4833 : vec3<f32> = txVec80;
            let x_4835 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4833.xy, x_4833.z);
            u_xlat88 = x_4835;
            let x_4837 : f32 = u_xlat24.w;
            let x_4838 : f32 = u_xlat88;
            let x_4840 : f32 = u_xlat87;
            u_xlat87 = ((x_4837 * x_4838) + x_4840);
            let x_4843 : vec4<f32> = u_xlat22;
            let x_4844 : vec2<f32> = vec2<f32>(x_4843.x, x_4843.y);
            let x_4846 : f32 = u_xlat11.z;
            txVec81 = vec3<f32>(x_4844.x, x_4844.y, x_4846);
            let x_4853 : vec3<f32> = txVec81;
            let x_4855 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4853.xy, x_4853.z);
            u_xlat88 = x_4855;
            let x_4857 : f32 = u_xlat25.x;
            let x_4858 : f32 = u_xlat88;
            let x_4860 : f32 = u_xlat87;
            u_xlat87 = ((x_4857 * x_4858) + x_4860);
            let x_4863 : vec4<f32> = u_xlat22;
            let x_4864 : vec2<f32> = vec2<f32>(x_4863.z, x_4863.w);
            let x_4866 : f32 = u_xlat11.z;
            txVec82 = vec3<f32>(x_4864.x, x_4864.y, x_4866);
            let x_4873 : vec3<f32> = txVec82;
            let x_4875 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4873.xy, x_4873.z);
            u_xlat88 = x_4875;
            let x_4877 : f32 = u_xlat25.y;
            let x_4878 : f32 = u_xlat88;
            let x_4880 : f32 = u_xlat87;
            u_xlat87 = ((x_4877 * x_4878) + x_4880);
            let x_4883 : vec2<f32> = u_xlat40;
            let x_4885 : f32 = u_xlat11.z;
            txVec83 = vec3<f32>(x_4883.x, x_4883.y, x_4885);
            let x_4892 : vec3<f32> = txVec83;
            let x_4894 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4892.xy, x_4892.z);
            u_xlat88 = x_4894;
            let x_4896 : f32 = u_xlat25.z;
            let x_4897 : f32 = u_xlat88;
            let x_4899 : f32 = u_xlat87;
            u_xlat87 = ((x_4896 * x_4897) + x_4899);
            let x_4902 : vec2<f32> = u_xlat72;
            let x_4904 : f32 = u_xlat11.z;
            txVec84 = vec3<f32>(x_4902.x, x_4902.y, x_4904);
            let x_4911 : vec3<f32> = txVec84;
            let x_4913 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4911.xy, x_4911.z);
            u_xlat88 = x_4913;
            let x_4915 : f32 = u_xlat25.w;
            let x_4916 : f32 = u_xlat88;
            let x_4918 : f32 = u_xlat87;
            u_xlat87 = ((x_4915 * x_4916) + x_4918);
            let x_4921 : vec4<f32> = u_xlat17;
            let x_4922 : vec2<f32> = vec2<f32>(x_4921.x, x_4921.y);
            let x_4924 : f32 = u_xlat11.z;
            txVec85 = vec3<f32>(x_4922.x, x_4922.y, x_4924);
            let x_4931 : vec3<f32> = txVec85;
            let x_4933 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4931.xy, x_4931.z);
            u_xlat88 = x_4933;
            let x_4935 : f32 = u_xlat13.x;
            let x_4936 : f32 = u_xlat88;
            let x_4938 : f32 = u_xlat87;
            u_xlat87 = ((x_4935 * x_4936) + x_4938);
            let x_4941 : vec4<f32> = u_xlat17;
            let x_4942 : vec2<f32> = vec2<f32>(x_4941.z, x_4941.w);
            let x_4944 : f32 = u_xlat11.z;
            txVec86 = vec3<f32>(x_4942.x, x_4942.y, x_4944);
            let x_4951 : vec3<f32> = txVec86;
            let x_4953 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4951.xy, x_4951.z);
            u_xlat88 = x_4953;
            let x_4955 : f32 = u_xlat13.y;
            let x_4956 : f32 = u_xlat88;
            let x_4958 : f32 = u_xlat87;
            u_xlat87 = ((x_4955 * x_4956) + x_4958);
            let x_4961 : vec2<f32> = u_xlat67;
            let x_4963 : f32 = u_xlat11.z;
            txVec87 = vec3<f32>(x_4961.x, x_4961.y, x_4963);
            let x_4970 : vec3<f32> = txVec87;
            let x_4972 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4970.xy, x_4970.z);
            u_xlat88 = x_4972;
            let x_4974 : f32 = u_xlat13.z;
            let x_4975 : f32 = u_xlat88;
            let x_4977 : f32 = u_xlat87;
            u_xlat87 = ((x_4974 * x_4975) + x_4977);
            let x_4980 : vec4<f32> = u_xlat12;
            let x_4981 : vec2<f32> = vec2<f32>(x_4980.x, x_4980.y);
            let x_4983 : f32 = u_xlat11.z;
            txVec88 = vec3<f32>(x_4981.x, x_4981.y, x_4983);
            let x_4990 : vec3<f32> = txVec88;
            let x_4992 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4990.xy, x_4990.z);
            u_xlat88 = x_4992;
            let x_4994 : f32 = u_xlat13.w;
            let x_4995 : f32 = u_xlat88;
            let x_4997 : f32 = u_xlat87;
            u_xlat86 = ((x_4994 * x_4995) + x_4997);
          }
        }
      } else {
        let x_5001 : vec4<f32> = u_xlat11;
        let x_5002 : vec2<f32> = vec2<f32>(x_5001.x, x_5001.y);
        let x_5004 : f32 = u_xlat11.z;
        txVec89 = vec3<f32>(x_5002.x, x_5002.y, x_5004);
        let x_5011 : vec3<f32> = txVec89;
        let x_5013 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5011.xy, x_5011.z);
        u_xlat86 = x_5013;
      }
      let x_5014 : i32 = u_xlati82;
      let x_5016 : f32 = x_241.x_AdditionalShadowParams[x_5014].x;
      u_xlat87 = (1.0f + -(x_5016));
      let x_5019 : f32 = u_xlat86;
      let x_5020 : i32 = u_xlati82;
      let x_5022 : f32 = x_241.x_AdditionalShadowParams[x_5020].x;
      let x_5024 : f32 = u_xlat87;
      u_xlat86 = ((x_5019 * x_5022) + x_5024);
      let x_5027 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_5027);
      let x_5031 : f32 = u_xlat11.z;
      u_xlatb88 = (x_5031 >= 1.0f);
      let x_5033 : bool = u_xlatb87;
      let x_5034 : bool = u_xlatb88;
      u_xlatb87 = (x_5033 | x_5034);
      let x_5036 : bool = u_xlatb87;
      let x_5037 : f32 = u_xlat86;
      u_xlat86 = select(x_5037, 1.0f, x_5036);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_5040 : f32 = u_xlat86;
    u_xlat87 = (-(x_5040) + 1.0f);
    let x_5044 : f32 = u_xlat2.x;
    let x_5045 : f32 = u_xlat87;
    let x_5047 : f32 = u_xlat86;
    u_xlat86 = ((x_5044 * x_5045) + x_5047);
    let x_5050 : i32 = u_xlati82;
    u_xlati87 = (1i << bitcast<u32>((x_5050 & 31i)));
    let x_5054 : i32 = u_xlati87;
    let x_5057 : f32 = x_3123.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_5054) & bitcast<u32>(x_5057)));
    let x_5061 : i32 = u_xlati87;
    if ((x_5061 != 0i)) {
      let x_5065 : i32 = u_xlati82;
      let x_5067 : f32 = x_3123.x_AdditionalLightsLightTypes[x_5065].el;
      u_xlati87 = i32(x_5067);
      let x_5070 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_5070 != 0i));
      let x_5074 : i32 = u_xlati82;
      u_xlati11 = (x_5074 << bitcast<u32>(2i));
      let x_5076 : i32 = u_xlati88;
      if ((x_5076 != 0i)) {
        let x_5081 : vec3<f32> = vs_INTERP8;
        let x_5083 : i32 = u_xlati11;
        let x_5086 : i32 = u_xlati11;
        let x_5090 : vec4<f32> = x_3123.x_AdditionalLightsWorldToLights[((x_5083 + 1i) / 4i)][((x_5086 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_5081.y, x_5081.y, x_5081.y) * vec3<f32>(x_5090.x, x_5090.y, x_5090.w));
        let x_5093 : i32 = u_xlati11;
        let x_5095 : i32 = u_xlati11;
        let x_5098 : vec4<f32> = x_3123.x_AdditionalLightsWorldToLights[(x_5093 / 4i)][(x_5095 % 4i)];
        let x_5100 : vec3<f32> = vs_INTERP8;
        let x_5103 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_5098.x, x_5098.y, x_5098.w) * vec3<f32>(x_5100.x, x_5100.x, x_5100.x)) + x_5103);
        let x_5105 : i32 = u_xlati11;
        let x_5108 : i32 = u_xlati11;
        let x_5112 : vec4<f32> = x_3123.x_AdditionalLightsWorldToLights[((x_5105 + 2i) / 4i)][((x_5108 + 2i) % 4i)];
        let x_5114 : vec3<f32> = vs_INTERP8;
        let x_5117 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_5112.x, x_5112.y, x_5112.w) * vec3<f32>(x_5114.z, x_5114.z, x_5114.z)) + x_5117);
        let x_5119 : vec3<f32> = u_xlat37;
        let x_5120 : i32 = u_xlati11;
        let x_5123 : i32 = u_xlati11;
        let x_5127 : vec4<f32> = x_3123.x_AdditionalLightsWorldToLights[((x_5120 + 3i) / 4i)][((x_5123 + 3i) % 4i)];
        u_xlat37 = (x_5119 + vec3<f32>(x_5127.x, x_5127.y, x_5127.w));
        let x_5130 : vec3<f32> = u_xlat37;
        let x_5132 : vec3<f32> = u_xlat37;
        let x_5134 : vec2<f32> = (vec2<f32>(x_5130.x, x_5130.y) / vec2<f32>(x_5132.z, x_5132.z));
        let x_5135 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5134.x, x_5134.y, x_5135.z);
        let x_5137 : vec3<f32> = u_xlat37;
        let x_5140 : vec2<f32> = ((vec2<f32>(x_5137.x, x_5137.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_5141 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5140.x, x_5140.y, x_5141.z);
        let x_5143 : vec3<f32> = u_xlat37;
        let x_5147 : vec2<f32> = clamp(vec2<f32>(x_5143.x, x_5143.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_5148 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5147.x, x_5147.y, x_5148.z);
        let x_5150 : i32 = u_xlati82;
        let x_5152 : vec4<f32> = x_3123.x_AdditionalLightsCookieAtlasUVRects[x_5150];
        let x_5154 : vec3<f32> = u_xlat37;
        let x_5157 : i32 = u_xlati82;
        let x_5159 : vec4<f32> = x_3123.x_AdditionalLightsCookieAtlasUVRects[x_5157];
        let x_5161 : vec2<f32> = ((vec2<f32>(x_5152.x, x_5152.y) * vec2<f32>(x_5154.x, x_5154.y)) + vec2<f32>(x_5159.z, x_5159.w));
        let x_5162 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5161.x, x_5161.y, x_5162.z);
      } else {
        let x_5165 : i32 = u_xlati87;
        u_xlatb87 = (x_5165 == 1i);
        let x_5167 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_5167);
        let x_5169 : i32 = u_xlati87;
        if ((x_5169 != 0i)) {
          let x_5173 : vec3<f32> = vs_INTERP8;
          let x_5175 : i32 = u_xlati11;
          let x_5178 : i32 = u_xlati11;
          let x_5182 : vec4<f32> = x_3123.x_AdditionalLightsWorldToLights[((x_5175 + 1i) / 4i)][((x_5178 + 1i) % 4i)];
          let x_5184 : vec2<f32> = (vec2<f32>(x_5173.y, x_5173.y) * vec2<f32>(x_5182.x, x_5182.y));
          let x_5185 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5184.x, x_5184.y, x_5185.z, x_5185.w);
          let x_5187 : i32 = u_xlati11;
          let x_5189 : i32 = u_xlati11;
          let x_5192 : vec4<f32> = x_3123.x_AdditionalLightsWorldToLights[(x_5187 / 4i)][(x_5189 % 4i)];
          let x_5194 : vec3<f32> = vs_INTERP8;
          let x_5197 : vec4<f32> = u_xlat12;
          let x_5199 : vec2<f32> = ((vec2<f32>(x_5192.x, x_5192.y) * vec2<f32>(x_5194.x, x_5194.x)) + vec2<f32>(x_5197.x, x_5197.y));
          let x_5200 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5199.x, x_5199.y, x_5200.z, x_5200.w);
          let x_5202 : i32 = u_xlati11;
          let x_5205 : i32 = u_xlati11;
          let x_5209 : vec4<f32> = x_3123.x_AdditionalLightsWorldToLights[((x_5202 + 2i) / 4i)][((x_5205 + 2i) % 4i)];
          let x_5211 : vec3<f32> = vs_INTERP8;
          let x_5214 : vec4<f32> = u_xlat12;
          let x_5216 : vec2<f32> = ((vec2<f32>(x_5209.x, x_5209.y) * vec2<f32>(x_5211.z, x_5211.z)) + vec2<f32>(x_5214.x, x_5214.y));
          let x_5217 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5216.x, x_5216.y, x_5217.z, x_5217.w);
          let x_5219 : vec4<f32> = u_xlat12;
          let x_5221 : i32 = u_xlati11;
          let x_5224 : i32 = u_xlati11;
          let x_5228 : vec4<f32> = x_3123.x_AdditionalLightsWorldToLights[((x_5221 + 3i) / 4i)][((x_5224 + 3i) % 4i)];
          let x_5230 : vec2<f32> = (vec2<f32>(x_5219.x, x_5219.y) + vec2<f32>(x_5228.x, x_5228.y));
          let x_5231 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5230.x, x_5230.y, x_5231.z, x_5231.w);
          let x_5233 : vec4<f32> = u_xlat12;
          let x_5236 : vec2<f32> = ((vec2<f32>(x_5233.x, x_5233.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5237 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5236.x, x_5236.y, x_5237.z, x_5237.w);
          let x_5239 : vec4<f32> = u_xlat12;
          let x_5241 : vec2<f32> = fract(vec2<f32>(x_5239.x, x_5239.y));
          let x_5242 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5241.x, x_5241.y, x_5242.z, x_5242.w);
          let x_5244 : i32 = u_xlati82;
          let x_5246 : vec4<f32> = x_3123.x_AdditionalLightsCookieAtlasUVRects[x_5244];
          let x_5248 : vec4<f32> = u_xlat12;
          let x_5251 : i32 = u_xlati82;
          let x_5253 : vec4<f32> = x_3123.x_AdditionalLightsCookieAtlasUVRects[x_5251];
          let x_5255 : vec2<f32> = ((vec2<f32>(x_5246.x, x_5246.y) * vec2<f32>(x_5248.x, x_5248.y)) + vec2<f32>(x_5253.z, x_5253.w));
          let x_5256 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5255.x, x_5255.y, x_5256.z);
        } else {
          let x_5259 : vec3<f32> = vs_INTERP8;
          let x_5261 : i32 = u_xlati11;
          let x_5264 : i32 = u_xlati11;
          let x_5268 : vec4<f32> = x_3123.x_AdditionalLightsWorldToLights[((x_5261 + 1i) / 4i)][((x_5264 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_5259.y, x_5259.y, x_5259.y, x_5259.y) * x_5268);
          let x_5270 : i32 = u_xlati11;
          let x_5272 : i32 = u_xlati11;
          let x_5275 : vec4<f32> = x_3123.x_AdditionalLightsWorldToLights[(x_5270 / 4i)][(x_5272 % 4i)];
          let x_5276 : vec3<f32> = vs_INTERP8;
          let x_5279 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5275 * vec4<f32>(x_5276.x, x_5276.x, x_5276.x, x_5276.x)) + x_5279);
          let x_5281 : i32 = u_xlati11;
          let x_5284 : i32 = u_xlati11;
          let x_5288 : vec4<f32> = x_3123.x_AdditionalLightsWorldToLights[((x_5281 + 2i) / 4i)][((x_5284 + 2i) % 4i)];
          let x_5289 : vec3<f32> = vs_INTERP8;
          let x_5292 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5288 * vec4<f32>(x_5289.z, x_5289.z, x_5289.z, x_5289.z)) + x_5292);
          let x_5294 : vec4<f32> = u_xlat12;
          let x_5295 : i32 = u_xlati11;
          let x_5298 : i32 = u_xlati11;
          let x_5302 : vec4<f32> = x_3123.x_AdditionalLightsWorldToLights[((x_5295 + 3i) / 4i)][((x_5298 + 3i) % 4i)];
          u_xlat12 = (x_5294 + x_5302);
          let x_5304 : vec4<f32> = u_xlat12;
          let x_5306 : vec4<f32> = u_xlat12;
          let x_5308 : vec3<f32> = (vec3<f32>(x_5304.x, x_5304.y, x_5304.z) / vec3<f32>(x_5306.w, x_5306.w, x_5306.w));
          let x_5309 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5308.x, x_5308.y, x_5308.z, x_5309.w);
          let x_5311 : vec4<f32> = u_xlat12;
          let x_5313 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_5311.x, x_5311.y, x_5311.z), vec3<f32>(x_5313.x, x_5313.y, x_5313.z));
          let x_5316 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_5316);
          let x_5318 : f32 = u_xlat87;
          let x_5320 : vec4<f32> = u_xlat12;
          let x_5322 : vec3<f32> = (vec3<f32>(x_5318, x_5318, x_5318) * vec3<f32>(x_5320.x, x_5320.y, x_5320.z));
          let x_5323 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5322.x, x_5322.y, x_5322.z, x_5323.w);
          let x_5325 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_5325.x, x_5325.y, x_5325.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_5330 : f32 = u_xlat87;
          u_xlat87 = max(x_5330, 0.00000099999999747524f);
          let x_5333 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_5333);
          let x_5335 : f32 = u_xlat87;
          let x_5337 : vec4<f32> = u_xlat12;
          let x_5339 : vec3<f32> = (vec3<f32>(x_5335, x_5335, x_5335) * vec3<f32>(x_5337.z, x_5337.x, x_5337.y));
          let x_5340 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_5339.x, x_5339.y, x_5339.z, x_5340.w);
          let x_5343 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_5343);
          let x_5347 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_5347, 0.0f, 1.0f);
          let x_5350 : vec4<f32> = u_xlat13;
          let x_5352 : vec4<bool> = (vec4<f32>(x_5350.y, x_5350.y, x_5350.y, x_5350.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_5353 : vec2<bool> = vec2<bool>(x_5352.x, x_5352.w);
          let x_5354 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_5353.x, x_5354.y, x_5354.z, x_5353.y);
          let x_5357 : bool = u_xlatb11.x;
          if (x_5357) {
            let x_5362 : f32 = u_xlat13.x;
            x_5358 = x_5362;
          } else {
            let x_5365 : f32 = u_xlat13.x;
            x_5358 = -(x_5365);
          }
          let x_5367 : f32 = x_5358;
          u_xlat11.x = x_5367;
          let x_5370 : bool = u_xlatb11.w;
          if (x_5370) {
            let x_5375 : f32 = u_xlat13.x;
            x_5371 = x_5375;
          } else {
            let x_5378 : f32 = u_xlat13.x;
            x_5371 = -(x_5378);
          }
          let x_5380 : f32 = x_5371;
          u_xlat11.w = x_5380;
          let x_5382 : vec4<f32> = u_xlat12;
          let x_5384 : f32 = u_xlat87;
          let x_5387 : vec4<f32> = u_xlat11;
          let x_5389 : vec2<f32> = ((vec2<f32>(x_5382.x, x_5382.y) * vec2<f32>(x_5384, x_5384)) + vec2<f32>(x_5387.x, x_5387.w));
          let x_5390 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5389.x, x_5390.y, x_5390.z, x_5389.y);
          let x_5392 : vec4<f32> = u_xlat11;
          let x_5395 : vec2<f32> = ((vec2<f32>(x_5392.x, x_5392.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5396 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5395.x, x_5396.y, x_5396.z, x_5395.y);
          let x_5398 : vec4<f32> = u_xlat11;
          let x_5402 : vec2<f32> = clamp(vec2<f32>(x_5398.x, x_5398.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_5403 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5402.x, x_5403.y, x_5403.z, x_5402.y);
          let x_5405 : i32 = u_xlati82;
          let x_5407 : vec4<f32> = x_3123.x_AdditionalLightsCookieAtlasUVRects[x_5405];
          let x_5409 : vec4<f32> = u_xlat11;
          let x_5412 : i32 = u_xlati82;
          let x_5414 : vec4<f32> = x_3123.x_AdditionalLightsCookieAtlasUVRects[x_5412];
          let x_5416 : vec2<f32> = ((vec2<f32>(x_5407.x, x_5407.y) * vec2<f32>(x_5409.x, x_5409.w)) + vec2<f32>(x_5414.z, x_5414.w));
          let x_5417 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5416.x, x_5416.y, x_5417.z);
        }
      }
      let x_5424 : vec3<f32> = u_xlat37;
      let x_5426 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_5424.x, x_5424.y), 0.0f);
      u_xlat11 = x_5426;
      let x_5428 : bool = u_xlatb7.y;
      if (x_5428) {
        let x_5433 : f32 = u_xlat11.w;
        x_5429 = x_5433;
      } else {
        let x_5436 : f32 = u_xlat11.x;
        x_5429 = x_5436;
      }
      let x_5437 : f32 = x_5429;
      u_xlat87 = x_5437;
      let x_5439 : bool = u_xlatb7.x;
      if (x_5439) {
        let x_5443 : vec4<f32> = u_xlat11;
        x_5440 = vec3<f32>(x_5443.x, x_5443.y, x_5443.z);
      } else {
        let x_5446 : f32 = u_xlat87;
        x_5440 = vec3<f32>(x_5446, x_5446, x_5446);
      }
      let x_5448 : vec3<f32> = x_5440;
      let x_5449 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_5448.x, x_5448.y, x_5448.z, x_5449.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_5455 : vec4<f32> = u_xlat11;
    let x_5457 : i32 = u_xlati82;
    let x_5459 : vec4<f32> = x_3607.x_AdditionalLightsColor[x_5457];
    let x_5461 : vec3<f32> = (vec3<f32>(x_5455.x, x_5455.y, x_5455.z) * vec3<f32>(x_5459.x, x_5459.y, x_5459.z));
    let x_5462 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5461.x, x_5461.y, x_5461.z, x_5462.w);
    let x_5465 : f32 = u_xlat59.x;
    let x_5466 : f32 = u_xlat86;
    u_xlat82 = (x_5465 * x_5466);
    let x_5468 : vec3<f32> = u_xlat26;
    let x_5469 : vec4<f32> = u_xlat10;
    u_xlat59.x = dot(x_5468, vec3<f32>(x_5469.x, x_5469.y, x_5469.z));
    let x_5474 : f32 = u_xlat59.x;
    u_xlat59.x = clamp(x_5474, 0.0f, 1.0f);
    let x_5477 : f32 = u_xlat82;
    let x_5479 : f32 = u_xlat59.x;
    u_xlat82 = (x_5477 * x_5479);
    let x_5481 : f32 = u_xlat82;
    let x_5483 : vec4<f32> = u_xlat11;
    let x_5485 : vec3<f32> = (vec3<f32>(x_5481, x_5481, x_5481) * vec3<f32>(x_5483.x, x_5483.y, x_5483.z));
    let x_5486 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5485.x, x_5485.y, x_5485.z, x_5486.w);
    let x_5488 : vec4<f32> = u_xlat9;
    let x_5490 : f32 = u_xlat85;
    let x_5493 : vec4<f32> = u_xlat4;
    let x_5495 : vec3<f32> = ((vec3<f32>(x_5488.x, x_5488.y, x_5488.z) * vec3<f32>(x_5490, x_5490, x_5490)) + vec3<f32>(x_5493.x, x_5493.y, x_5493.z));
    let x_5496 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5495.x, x_5495.y, x_5495.z, x_5496.w);
    let x_5498 : vec4<f32> = u_xlat9;
    let x_5500 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_5498.x, x_5498.y, x_5498.z), vec3<f32>(x_5500.x, x_5500.y, x_5500.z));
    let x_5503 : f32 = u_xlat82;
    u_xlat82 = max(x_5503, 1.17549435e-38f);
    let x_5505 : f32 = u_xlat82;
    u_xlat82 = inverseSqrt(x_5505);
    let x_5507 : f32 = u_xlat82;
    let x_5509 : vec4<f32> = u_xlat9;
    let x_5511 : vec3<f32> = (vec3<f32>(x_5507, x_5507, x_5507) * vec3<f32>(x_5509.x, x_5509.y, x_5509.z));
    let x_5512 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5511.x, x_5511.y, x_5511.z, x_5512.w);
    let x_5514 : vec3<f32> = u_xlat26;
    let x_5515 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(x_5514, vec3<f32>(x_5515.x, x_5515.y, x_5515.z));
    let x_5518 : f32 = u_xlat82;
    u_xlat82 = clamp(x_5518, 0.0f, 1.0f);
    let x_5520 : vec4<f32> = u_xlat10;
    let x_5522 : vec4<f32> = u_xlat9;
    u_xlat59.x = dot(vec3<f32>(x_5520.x, x_5520.y, x_5520.z), vec3<f32>(x_5522.x, x_5522.y, x_5522.z));
    let x_5527 : f32 = u_xlat59.x;
    u_xlat59.x = clamp(x_5527, 0.0f, 1.0f);
    let x_5530 : f32 = u_xlat82;
    let x_5531 : f32 = u_xlat82;
    u_xlat82 = (x_5530 * x_5531);
    let x_5533 : f32 = u_xlat82;
    let x_5535 : f32 = u_xlat28.x;
    u_xlat82 = ((x_5533 * x_5535) + 1.00001001358032226562f);
    let x_5539 : f32 = u_xlat59.x;
    let x_5541 : f32 = u_xlat59.x;
    u_xlat59.x = (x_5539 * x_5541);
    let x_5544 : f32 = u_xlat82;
    let x_5545 : f32 = u_xlat82;
    u_xlat82 = (x_5544 * x_5545);
    let x_5548 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_5548, 0.10000000149011611938f);
    let x_5551 : f32 = u_xlat82;
    let x_5553 : f32 = u_xlat59.x;
    u_xlat82 = (x_5551 * x_5553);
    let x_5555 : f32 = u_xlat83;
    let x_5556 : f32 = u_xlat82;
    u_xlat82 = (x_5555 * x_5556);
    let x_5558 : f32 = u_xlat81;
    let x_5559 : f32 = u_xlat82;
    u_xlat82 = (x_5558 / x_5559);
    let x_5561 : f32 = u_xlat82;
    let x_5564 : vec3<f32> = u_xlat5;
    let x_5565 : vec3<f32> = ((vec3<f32>(x_5561, x_5561, x_5561) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5564);
    let x_5566 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5565.x, x_5565.y, x_5565.z, x_5566.w);
    let x_5568 : vec4<f32> = u_xlat9;
    let x_5570 : vec4<f32> = u_xlat11;
    let x_5573 : vec4<f32> = u_xlat8;
    let x_5575 : vec3<f32> = ((vec3<f32>(x_5568.x, x_5568.y, x_5568.z) * vec3<f32>(x_5570.x, x_5570.y, x_5570.z)) + vec3<f32>(x_5573.x, x_5573.y, x_5573.z));
    let x_5576 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5575.x, x_5575.y, x_5575.z, x_5576.w);

    continuing {
      let x_5578 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5578 + bitcast<u32>(1i));
    }
  }
  let x_5580 : vec4<f32> = u_xlat3;
  let x_5582 : vec4<f32> = u_xlat6;
  let x_5585 : vec3<f32> = u_xlat32;
  u_xlat0 = ((vec3<f32>(x_5580.x, x_5580.y, x_5580.z) * vec3<f32>(x_5582.x, x_5582.x, x_5582.x)) + x_5585);
  let x_5587 : vec4<f32> = u_xlat8;
  let x_5589 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_5587.x, x_5587.y, x_5587.z) + x_5589);
  let x_5593 : vec4<f32> = vs_INTERP6;
  let x_5595 : vec3<f32> = u_xlat1;
  let x_5597 : vec3<f32> = u_xlat0;
  let x_5598 : vec3<f32> = ((vec3<f32>(x_5593.w, x_5593.w, x_5593.w) * x_5595) + x_5597);
  let x_5599 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5598.x, x_5598.y, x_5598.z, x_5599.w);
  let x_5601 : bool = u_xlatb54;
  let x_5602 : f32 = u_xlat79;
  SV_Target0.w = select(1.0f, x_5602, x_5601);
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


