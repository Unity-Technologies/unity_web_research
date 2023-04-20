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

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_126 : PGlobals;

var<private> u_xlat5 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_136 : UnityPerMaterial;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat32 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_241 : LightShadows;

var<private> u_xlatb0 : bool;

var<private> u_xlatb79 : bool;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

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

var<private> u_xlat28 : f32;

var<private> u_xlat54 : f32;

var<private> u_xlat52 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb58 : vec2<bool>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat84 : f32;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat86 : f32;

var<private> u_xlatb2 : bool;

@group(1) @binding(4) var<uniform> x_3167 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu0 : u32;

var<private> u_xlatu81 : u32;

var<private> u_xlati83 : i32;

var<private> u_xlati81 : i32;

var<private> u_xlat35 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_3639 : AdditionalLights;

var<private> u_xlat85 : f32;

var<private> u_xlati86 : i32;

var<private> u_xlatb88 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat89 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlatb86 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlati88 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlati37 : i32;

var<private> u_xlatb37 : vec3<bool>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearClamp : sampler;

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
  var x_1585 : f32;
  var x_1707 : vec3<f32>;
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
  var x_3116 : f32;
  var x_3235 : f32;
  var x_3246 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3773 : f32;
  var x_3784 : f32;
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
  var x_5400 : f32;
  var x_5413 : f32;
  var x_5471 : f32;
  var x_5482 : vec3<f32>;
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
  u_xlat28 = (x_1594 + -0.40000000596046447754f);
  let x_1599 : f32 = u_xlat4.w;
  u_xlat54 = dpdxCoarse(x_1599);
  let x_1602 : f32 = u_xlat4.w;
  u_xlat80 = dpdyCoarse(x_1602);
  let x_1604 : f32 = u_xlat80;
  let x_1606 : f32 = u_xlat54;
  u_xlat54 = (abs(x_1604) + abs(x_1606));
  let x_1609 : f32 = u_xlat54;
  u_xlat54 = max(x_1609, 0.00009999999747378752f);
  let x_1612 : f32 = u_xlat28;
  let x_1613 : f32 = u_xlat54;
  u_xlat28 = (x_1612 / x_1613);
  let x_1615 : f32 = u_xlat28;
  u_xlat28 = (x_1615 + 0.5f);
  let x_1617 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1617, 0.0f, 1.0f);
  let x_1620 : f32 = x_126.x_AlphaToMaskAvailable;
  u_xlatb54 = !((x_1620 == 0.0f));
  let x_1622 : bool = u_xlatb54;
  let x_1623 : f32 = u_xlat28;
  let x_1624 : f32 = u_xlat79;
  u_xlat79 = select(x_1624, x_1623, x_1622);
  let x_1626 : f32 = u_xlat79;
  u_xlat28 = (x_1626 + -0.00009999999747378752f);
  let x_1629 : f32 = u_xlat28;
  u_xlatb28 = (x_1629 < 0.0f);
  let x_1631 : bool = u_xlatb28;
  if (((select(0i, 1i, x_1631) * -1i) != 0i)) {
    discard;
  }
  let x_1639 : vec3<f32> = u_xlat26;
  let x_1640 : vec3<f32> = u_xlat32;
  u_xlat26 = (x_1639 * vec3<f32>(x_1640.y, x_1640.y, x_1640.y));
  let x_1643 : vec3<f32> = u_xlat32;
  let x_1645 : vec4<f32> = vs_INTERP4;
  let x_1648 : vec3<f32> = u_xlat26;
  u_xlat26 = ((vec3<f32>(x_1643.x, x_1643.x, x_1643.x) * vec3<f32>(x_1645.x, x_1645.y, x_1645.z)) + x_1648);
  let x_1650 : vec3<f32> = u_xlat32;
  let x_1652 : vec3<f32> = vs_INTERP9;
  let x_1654 : vec3<f32> = u_xlat26;
  u_xlat26 = ((vec3<f32>(x_1650.z, x_1650.z, x_1650.z) * x_1652) + x_1654);
  let x_1656 : vec3<f32> = u_xlat26;
  let x_1657 : vec3<f32> = u_xlat26;
  u_xlat28 = dot(x_1656, x_1657);
  let x_1659 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1659);
  let x_1661 : vec3<f32> = u_xlat26;
  let x_1662 : f32 = u_xlat28;
  let x_1664 : vec3<f32> = (x_1661 * vec3<f32>(x_1662, x_1662, x_1662));
  let x_1665 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1664.x, x_1664.y, x_1664.z, x_1665.w);
  let x_1668 : f32 = x_126.unity_OrthoParams.w;
  u_xlatb26.x = (x_1668 == 0.0f);
  let x_1671 : vec3<f32> = vs_INTERP8;
  let x_1676 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_1677 : vec3<f32> = (-(x_1671) + x_1676);
  let x_1678 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1677.x, x_1677.y, x_1677.z, x_1678.w);
  let x_1681 : vec4<f32> = u_xlat4;
  let x_1683 : vec4<f32> = u_xlat4;
  u_xlat52 = dot(vec3<f32>(x_1681.x, x_1681.y, x_1681.z), vec3<f32>(x_1683.x, x_1683.y, x_1683.z));
  let x_1686 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_1686);
  let x_1688 : f32 = u_xlat52;
  let x_1690 : vec4<f32> = u_xlat4;
  let x_1692 : vec3<f32> = (vec3<f32>(x_1688, x_1688, x_1688) * vec3<f32>(x_1690.x, x_1690.y, x_1690.z));
  let x_1693 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1692.x, x_1692.y, x_1692.z, x_1693.w);
  let x_1697 : f32 = x_126.unity_MatrixV[0i].z;
  u_xlat7.x = x_1697;
  let x_1700 : f32 = x_126.unity_MatrixV[1i].z;
  u_xlat7.y = x_1700;
  let x_1703 : f32 = x_126.unity_MatrixV[2i].z;
  u_xlat7.z = x_1703;
  let x_1706 : bool = u_xlatb26.x;
  if (x_1706) {
    let x_1710 : vec4<f32> = u_xlat4;
    x_1707 = vec3<f32>(x_1710.x, x_1710.y, x_1710.z);
  } else {
    let x_1713 : vec4<f32> = u_xlat7;
    x_1707 = vec3<f32>(x_1713.x, x_1713.y, x_1713.z);
  }
  let x_1715 : vec3<f32> = x_1707;
  u_xlat26 = x_1715;
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
  u_xlat3.w = 1.0f;
  let x_1754 : vec4<f32> = x_48.unity_SHAr;
  let x_1755 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_1754, x_1755);
  let x_1760 : vec4<f32> = x_48.unity_SHAg;
  let x_1761 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_1760, x_1761);
  let x_1766 : vec4<f32> = x_48.unity_SHAb;
  let x_1767 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_1766, x_1767);
  let x_1770 : vec4<f32> = u_xlat3;
  let x_1772 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec4<f32>(x_1770.y, x_1770.z, x_1770.z, x_1770.x) * vec4<f32>(x_1772.x, x_1772.y, x_1772.z, x_1772.z));
  let x_1777 : vec4<f32> = x_48.unity_SHBr;
  let x_1778 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_1777, x_1778);
  let x_1783 : vec4<f32> = x_48.unity_SHBg;
  let x_1784 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_1783, x_1784);
  let x_1789 : vec4<f32> = x_48.unity_SHBb;
  let x_1790 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_1789, x_1790);
  let x_1794 : f32 = u_xlat3.y;
  let x_1796 : f32 = u_xlat3.y;
  u_xlat80 = (x_1794 * x_1796);
  let x_1799 : f32 = u_xlat3.x;
  let x_1801 : f32 = u_xlat3.x;
  let x_1803 : f32 = u_xlat80;
  u_xlat80 = ((x_1799 * x_1801) + -(x_1803));
  let x_1808 : vec4<f32> = x_48.unity_SHC;
  let x_1810 : f32 = u_xlat80;
  let x_1813 : vec4<f32> = u_xlat8;
  u_xlat32 = ((vec3<f32>(x_1808.x, x_1808.y, x_1808.z) * vec3<f32>(x_1810, x_1810, x_1810)) + vec3<f32>(x_1813.x, x_1813.y, x_1813.z));
  let x_1816 : vec4<f32> = u_xlat4;
  let x_1818 : vec3<f32> = u_xlat32;
  let x_1819 : vec3<f32> = (vec3<f32>(x_1816.x, x_1816.y, x_1816.z) + x_1818);
  let x_1820 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1819.x, x_1819.y, x_1819.z, x_1820.w);
  let x_1822 : vec4<f32> = u_xlat4;
  let x_1825 : vec3<f32> = max(vec3<f32>(x_1822.x, x_1822.y, x_1822.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1826 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1825.x, x_1825.y, x_1825.z, x_1826.w);
  let x_1829 : f32 = u_xlat6.x;
  u_xlat6.x = x_1829;
  let x_1832 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1832, 0.0f, 1.0f);
  let x_1835 : f32 = u_xlat79;
  u_xlat79 = min(x_1835, 1.0f);
  let x_1837 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_1837 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_1842 : f32 = u_xlat6.x;
  u_xlat80 = (-(x_1842) + 1.0f);
  let x_1846 : f32 = u_xlat80;
  let x_1847 : f32 = u_xlat80;
  u_xlat81 = (x_1846 * x_1847);
  let x_1849 : f32 = u_xlat81;
  u_xlat81 = max(x_1849, 0.0078125f);
  let x_1853 : f32 = u_xlat81;
  let x_1854 : f32 = u_xlat81;
  u_xlat82 = (x_1853 * x_1854);
  let x_1857 : f32 = u_xlat6.x;
  u_xlat83 = (x_1857 + 0.04000002145767211914f);
  let x_1860 : f32 = u_xlat83;
  u_xlat83 = min(x_1860, 1.0f);
  let x_1862 : f32 = u_xlat81;
  u_xlat6.x = ((x_1862 * 4.0f) + 2.0f);
  let x_1868 : f32 = vs_INTERP6.w;
  u_xlat32.x = min(x_1868, 1.0f);
  let x_1871 : bool = u_xlatb0;
  if (x_1871) {
    let x_1875 : f32 = x_241.x_MainLightShadowParams.y;
    u_xlatb0 = (x_1875 == 1.0f);
    let x_1877 : bool = u_xlatb0;
    if (x_1877) {
      let x_1881 : vec4<f32> = vs_INTERP3;
      let x_1884 : vec4<f32> = x_241.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_1881.x, x_1881.y, x_1881.x, x_1881.y) + x_1884);
      let x_1887 : vec4<f32> = u_xlat7;
      let x_1888 : vec2<f32> = vec2<f32>(x_1887.x, x_1887.y);
      let x_1890 : f32 = vs_INTERP3.z;
      txVec30 = vec3<f32>(x_1888.x, x_1888.y, x_1890);
      let x_1897 : vec3<f32> = txVec30;
      let x_1899 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1897.xy, x_1897.z);
      u_xlat8.x = x_1899;
      let x_1902 : vec4<f32> = u_xlat7;
      let x_1903 : vec2<f32> = vec2<f32>(x_1902.z, x_1902.w);
      let x_1905 : f32 = vs_INTERP3.z;
      txVec31 = vec3<f32>(x_1903.x, x_1903.y, x_1905);
      let x_1912 : vec3<f32> = txVec31;
      let x_1914 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1912.xy, x_1912.z);
      u_xlat8.y = x_1914;
      let x_1916 : vec4<f32> = vs_INTERP3;
      let x_1919 : vec4<f32> = x_241.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_1916.x, x_1916.y, x_1916.x, x_1916.y) + x_1919);
      let x_1922 : vec4<f32> = u_xlat7;
      let x_1923 : vec2<f32> = vec2<f32>(x_1922.x, x_1922.y);
      let x_1925 : f32 = vs_INTERP3.z;
      txVec32 = vec3<f32>(x_1923.x, x_1923.y, x_1925);
      let x_1932 : vec3<f32> = txVec32;
      let x_1934 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1932.xy, x_1932.z);
      u_xlat8.z = x_1934;
      let x_1937 : vec4<f32> = u_xlat7;
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
      u_xlatb58.x = (x_1957 == 2.0f);
      let x_1961 : bool = u_xlatb58.x;
      if (x_1961) {
        let x_1965 : vec4<f32> = vs_INTERP3;
        let x_1968 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_1965.x, x_1965.y) * vec2<f32>(x_1968.z, x_1968.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1972 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_1972);
        let x_1974 : vec4<f32> = vs_INTERP3;
        let x_1977 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_1980 : vec2<f32> = u_xlat58;
        let x_1982 : vec2<f32> = ((vec2<f32>(x_1974.x, x_1974.y) * vec2<f32>(x_1977.z, x_1977.w)) + -(x_1980));
        let x_1983 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1982.x, x_1982.y, x_1983.z, x_1983.w);
        let x_1985 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1985.x, x_1985.x, x_1985.y, x_1985.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1988 : vec4<f32> = u_xlat8;
        let x_1990 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1988.x, x_1988.x, x_1988.z, x_1988.z) * vec4<f32>(x_1990.x, x_1990.x, x_1990.z, x_1990.z));
        let x_1994 : vec4<f32> = u_xlat9;
        u_xlat59 = (vec2<f32>(x_1994.y, x_1994.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1997 : vec4<f32> = u_xlat9;
        let x_2000 : vec4<f32> = u_xlat7;
        let x_2003 : vec2<f32> = ((vec2<f32>(x_1997.x, x_1997.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2000.x, x_2000.y)));
        let x_2004 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2003.x, x_2004.y, x_2003.y, x_2004.w);
        let x_2006 : vec4<f32> = u_xlat7;
        let x_2009 : vec2<f32> = (-(vec2<f32>(x_2006.x, x_2006.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2010 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2009.x, x_2009.y, x_2010.z, x_2010.w);
        let x_2012 : vec4<f32> = u_xlat7;
        u_xlat61 = min(vec2<f32>(x_2012.x, x_2012.y), vec2<f32>(0.0f, 0.0f));
        let x_2015 : vec2<f32> = u_xlat61;
        let x_2017 : vec2<f32> = u_xlat61;
        let x_2019 : vec4<f32> = u_xlat9;
        u_xlat61 = ((-(x_2015) * x_2017) + vec2<f32>(x_2019.x, x_2019.y));
        let x_2022 : vec4<f32> = u_xlat7;
        let x_2024 : vec2<f32> = max(vec2<f32>(x_2022.x, x_2022.y), vec2<f32>(0.0f, 0.0f));
        let x_2025 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2024.x, x_2024.y, x_2025.z, x_2025.w);
        let x_2027 : vec4<f32> = u_xlat7;
        let x_2030 : vec4<f32> = u_xlat7;
        let x_2033 : vec4<f32> = u_xlat8;
        let x_2035 : vec2<f32> = ((-(vec2<f32>(x_2027.x, x_2027.y)) * vec2<f32>(x_2030.x, x_2030.y)) + vec2<f32>(x_2033.y, x_2033.w));
        let x_2036 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2035.x, x_2035.y, x_2036.z, x_2036.w);
        let x_2038 : vec2<f32> = u_xlat61;
        u_xlat61 = (x_2038 + vec2<f32>(1.0f, 1.0f));
        let x_2040 : vec4<f32> = u_xlat7;
        let x_2042 : vec2<f32> = (vec2<f32>(x_2040.x, x_2040.y) + vec2<f32>(1.0f, 1.0f));
        let x_2043 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2042.x, x_2042.y, x_2043.z, x_2043.w);
        let x_2045 : vec4<f32> = u_xlat8;
        let x_2047 : vec2<f32> = (vec2<f32>(x_2045.x, x_2045.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2048 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2047.x, x_2047.y, x_2048.z, x_2048.w);
        let x_2050 : vec4<f32> = u_xlat9;
        let x_2052 : vec2<f32> = (vec2<f32>(x_2050.x, x_2050.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2053 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2052.x, x_2052.y, x_2053.z, x_2053.w);
        let x_2055 : vec2<f32> = u_xlat61;
        let x_2056 : vec2<f32> = (x_2055 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2057 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2056.x, x_2056.y, x_2057.z, x_2057.w);
        let x_2059 : vec4<f32> = u_xlat7;
        let x_2061 : vec2<f32> = (vec2<f32>(x_2059.x, x_2059.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2062 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2061.x, x_2061.y, x_2062.z, x_2062.w);
        let x_2064 : vec4<f32> = u_xlat8;
        let x_2066 : vec2<f32> = (vec2<f32>(x_2064.y, x_2064.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2067 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2066.x, x_2066.y, x_2067.z, x_2067.w);
        let x_2070 : f32 = u_xlat9.x;
        u_xlat10.z = x_2070;
        let x_2073 : f32 = u_xlat7.x;
        u_xlat10.w = x_2073;
        let x_2076 : f32 = u_xlat12.x;
        u_xlat11.z = x_2076;
        let x_2079 : f32 = u_xlat59.x;
        u_xlat11.w = x_2079;
        let x_2081 : vec4<f32> = u_xlat10;
        let x_2083 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_2081.z, x_2081.w, x_2081.x, x_2081.z) + vec4<f32>(x_2083.z, x_2083.w, x_2083.x, x_2083.z));
        let x_2087 : f32 = u_xlat10.y;
        u_xlat9.z = x_2087;
        let x_2090 : f32 = u_xlat7.y;
        u_xlat9.w = x_2090;
        let x_2093 : f32 = u_xlat11.y;
        u_xlat12.z = x_2093;
        let x_2096 : f32 = u_xlat59.y;
        u_xlat12.w = x_2096;
        let x_2098 : vec4<f32> = u_xlat9;
        let x_2100 : vec4<f32> = u_xlat12;
        let x_2102 : vec3<f32> = (vec3<f32>(x_2098.z, x_2098.y, x_2098.w) + vec3<f32>(x_2100.z, x_2100.y, x_2100.w));
        let x_2103 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2102.x, x_2102.y, x_2102.z, x_2103.w);
        let x_2105 : vec4<f32> = u_xlat11;
        let x_2107 : vec4<f32> = u_xlat8;
        let x_2109 : vec3<f32> = (vec3<f32>(x_2105.x, x_2105.z, x_2105.w) / vec3<f32>(x_2107.z, x_2107.w, x_2107.y));
        let x_2110 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2109.x, x_2109.y, x_2109.z, x_2110.w);
        let x_2112 : vec4<f32> = u_xlat9;
        let x_2114 : vec3<f32> = (vec3<f32>(x_2112.x, x_2112.y, x_2112.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2115 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2114.x, x_2114.y, x_2114.z, x_2115.w);
        let x_2117 : vec4<f32> = u_xlat12;
        let x_2119 : vec4<f32> = u_xlat7;
        let x_2121 : vec3<f32> = (vec3<f32>(x_2117.z, x_2117.y, x_2117.w) / vec3<f32>(x_2119.x, x_2119.y, x_2119.z));
        let x_2122 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2121.x, x_2121.y, x_2121.z, x_2122.w);
        let x_2124 : vec4<f32> = u_xlat10;
        let x_2126 : vec3<f32> = (vec3<f32>(x_2124.x, x_2124.y, x_2124.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2127 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2126.x, x_2126.y, x_2126.z, x_2127.w);
        let x_2129 : vec4<f32> = u_xlat9;
        let x_2132 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2134 : vec3<f32> = (vec3<f32>(x_2129.y, x_2129.x, x_2129.z) * vec3<f32>(x_2132.x, x_2132.x, x_2132.x));
        let x_2135 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2134.x, x_2134.y, x_2134.z, x_2135.w);
        let x_2137 : vec4<f32> = u_xlat10;
        let x_2140 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2142 : vec3<f32> = (vec3<f32>(x_2137.x, x_2137.y, x_2137.z) * vec3<f32>(x_2140.y, x_2140.y, x_2140.y));
        let x_2143 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2142.x, x_2142.y, x_2142.z, x_2143.w);
        let x_2146 : f32 = u_xlat10.x;
        u_xlat9.w = x_2146;
        let x_2148 : vec2<f32> = u_xlat58;
        let x_2151 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2154 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2148.x, x_2148.y, x_2148.x, x_2148.y) * vec4<f32>(x_2151.x, x_2151.y, x_2151.x, x_2151.y)) + vec4<f32>(x_2154.y, x_2154.w, x_2154.x, x_2154.w));
        let x_2157 : vec2<f32> = u_xlat58;
        let x_2159 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2162 : vec4<f32> = u_xlat9;
        let x_2164 : vec2<f32> = ((x_2157 * vec2<f32>(x_2159.x, x_2159.y)) + vec2<f32>(x_2162.z, x_2162.w));
        let x_2165 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2164.x, x_2164.y, x_2165.z, x_2165.w);
        let x_2168 : f32 = u_xlat9.y;
        u_xlat10.w = x_2168;
        let x_2170 : vec4<f32> = u_xlat10;
        let x_2171 : vec2<f32> = vec2<f32>(x_2170.y, x_2170.z);
        let x_2172 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2172.x, x_2171.x, x_2172.z, x_2171.y);
        let x_2174 : vec2<f32> = u_xlat58;
        let x_2177 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2180 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_2174.x, x_2174.y, x_2174.x, x_2174.y) * vec4<f32>(x_2177.x, x_2177.y, x_2177.x, x_2177.y)) + vec4<f32>(x_2180.x, x_2180.y, x_2180.z, x_2180.y));
        let x_2183 : vec2<f32> = u_xlat58;
        let x_2186 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2189 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2183.x, x_2183.y, x_2183.x, x_2183.y) * vec4<f32>(x_2186.x, x_2186.y, x_2186.x, x_2186.y)) + vec4<f32>(x_2189.w, x_2189.y, x_2189.w, x_2189.z));
        let x_2192 : vec2<f32> = u_xlat58;
        let x_2195 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2198 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_2192.x, x_2192.y, x_2192.x, x_2192.y) * vec4<f32>(x_2195.x, x_2195.y, x_2195.x, x_2195.y)) + vec4<f32>(x_2198.x, x_2198.w, x_2198.z, x_2198.w));
        let x_2201 : vec4<f32> = u_xlat7;
        let x_2203 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_2201.x, x_2201.x, x_2201.x, x_2201.y) * vec4<f32>(x_2203.z, x_2203.w, x_2203.y, x_2203.z));
        let x_2206 : vec4<f32> = u_xlat7;
        let x_2208 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_2206.y, x_2206.y, x_2206.z, x_2206.z) * x_2208);
        let x_2211 : f32 = u_xlat7.z;
        let x_2213 : f32 = u_xlat8.y;
        u_xlat58.x = (x_2211 * x_2213);
        let x_2217 : vec4<f32> = u_xlat11;
        let x_2218 : vec2<f32> = vec2<f32>(x_2217.x, x_2217.y);
        let x_2220 : f32 = vs_INTERP3.z;
        txVec34 = vec3<f32>(x_2218.x, x_2218.y, x_2220);
        let x_2228 : vec3<f32> = txVec34;
        let x_2230 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2228.xy, x_2228.z);
        u_xlat84 = x_2230;
        let x_2232 : vec4<f32> = u_xlat11;
        let x_2233 : vec2<f32> = vec2<f32>(x_2232.z, x_2232.w);
        let x_2235 : f32 = vs_INTERP3.z;
        txVec35 = vec3<f32>(x_2233.x, x_2233.y, x_2235);
        let x_2242 : vec3<f32> = txVec35;
        let x_2244 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2242.xy, x_2242.z);
        u_xlat7.x = x_2244;
        let x_2247 : f32 = u_xlat7.x;
        let x_2249 : f32 = u_xlat14.y;
        u_xlat7.x = (x_2247 * x_2249);
        let x_2253 : f32 = u_xlat14.x;
        let x_2254 : f32 = u_xlat84;
        let x_2257 : f32 = u_xlat7.x;
        u_xlat84 = ((x_2253 * x_2254) + x_2257);
        let x_2260 : vec4<f32> = u_xlat12;
        let x_2261 : vec2<f32> = vec2<f32>(x_2260.x, x_2260.y);
        let x_2263 : f32 = vs_INTERP3.z;
        txVec36 = vec3<f32>(x_2261.x, x_2261.y, x_2263);
        let x_2270 : vec3<f32> = txVec36;
        let x_2272 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2270.xy, x_2270.z);
        u_xlat7.x = x_2272;
        let x_2275 : f32 = u_xlat14.z;
        let x_2277 : f32 = u_xlat7.x;
        let x_2279 : f32 = u_xlat84;
        u_xlat84 = ((x_2275 * x_2277) + x_2279);
        let x_2282 : vec4<f32> = u_xlat10;
        let x_2283 : vec2<f32> = vec2<f32>(x_2282.x, x_2282.y);
        let x_2285 : f32 = vs_INTERP3.z;
        txVec37 = vec3<f32>(x_2283.x, x_2283.y, x_2285);
        let x_2292 : vec3<f32> = txVec37;
        let x_2294 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2292.xy, x_2292.z);
        u_xlat7.x = x_2294;
        let x_2297 : f32 = u_xlat14.w;
        let x_2299 : f32 = u_xlat7.x;
        let x_2301 : f32 = u_xlat84;
        u_xlat84 = ((x_2297 * x_2299) + x_2301);
        let x_2304 : vec4<f32> = u_xlat13;
        let x_2305 : vec2<f32> = vec2<f32>(x_2304.x, x_2304.y);
        let x_2307 : f32 = vs_INTERP3.z;
        txVec38 = vec3<f32>(x_2305.x, x_2305.y, x_2307);
        let x_2314 : vec3<f32> = txVec38;
        let x_2316 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2314.xy, x_2314.z);
        u_xlat7.x = x_2316;
        let x_2319 : f32 = u_xlat15.x;
        let x_2321 : f32 = u_xlat7.x;
        let x_2323 : f32 = u_xlat84;
        u_xlat84 = ((x_2319 * x_2321) + x_2323);
        let x_2326 : vec4<f32> = u_xlat13;
        let x_2327 : vec2<f32> = vec2<f32>(x_2326.z, x_2326.w);
        let x_2329 : f32 = vs_INTERP3.z;
        txVec39 = vec3<f32>(x_2327.x, x_2327.y, x_2329);
        let x_2336 : vec3<f32> = txVec39;
        let x_2338 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2336.xy, x_2336.z);
        u_xlat7.x = x_2338;
        let x_2341 : f32 = u_xlat15.y;
        let x_2343 : f32 = u_xlat7.x;
        let x_2345 : f32 = u_xlat84;
        u_xlat84 = ((x_2341 * x_2343) + x_2345);
        let x_2348 : vec4<f32> = u_xlat10;
        let x_2349 : vec2<f32> = vec2<f32>(x_2348.z, x_2348.w);
        let x_2351 : f32 = vs_INTERP3.z;
        txVec40 = vec3<f32>(x_2349.x, x_2349.y, x_2351);
        let x_2358 : vec3<f32> = txVec40;
        let x_2360 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2358.xy, x_2358.z);
        u_xlat7.x = x_2360;
        let x_2363 : f32 = u_xlat15.z;
        let x_2365 : f32 = u_xlat7.x;
        let x_2367 : f32 = u_xlat84;
        u_xlat84 = ((x_2363 * x_2365) + x_2367);
        let x_2370 : vec4<f32> = u_xlat9;
        let x_2371 : vec2<f32> = vec2<f32>(x_2370.x, x_2370.y);
        let x_2373 : f32 = vs_INTERP3.z;
        txVec41 = vec3<f32>(x_2371.x, x_2371.y, x_2373);
        let x_2380 : vec3<f32> = txVec41;
        let x_2382 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2380.xy, x_2380.z);
        u_xlat7.x = x_2382;
        let x_2385 : f32 = u_xlat15.w;
        let x_2387 : f32 = u_xlat7.x;
        let x_2389 : f32 = u_xlat84;
        u_xlat84 = ((x_2385 * x_2387) + x_2389);
        let x_2392 : vec4<f32> = u_xlat9;
        let x_2393 : vec2<f32> = vec2<f32>(x_2392.z, x_2392.w);
        let x_2395 : f32 = vs_INTERP3.z;
        txVec42 = vec3<f32>(x_2393.x, x_2393.y, x_2395);
        let x_2402 : vec3<f32> = txVec42;
        let x_2404 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2402.xy, x_2402.z);
        u_xlat7.x = x_2404;
        let x_2407 : f32 = u_xlat58.x;
        let x_2409 : f32 = u_xlat7.x;
        let x_2411 : f32 = u_xlat84;
        u_xlat0.x = ((x_2407 * x_2409) + x_2411);
      } else {
        let x_2415 : vec4<f32> = vs_INTERP3;
        let x_2418 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_2415.x, x_2415.y) * vec2<f32>(x_2418.z, x_2418.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2422 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_2422);
        let x_2424 : vec4<f32> = vs_INTERP3;
        let x_2427 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2430 : vec2<f32> = u_xlat58;
        let x_2432 : vec2<f32> = ((vec2<f32>(x_2424.x, x_2424.y) * vec2<f32>(x_2427.z, x_2427.w)) + -(x_2430));
        let x_2433 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2432.x, x_2432.y, x_2433.z, x_2433.w);
        let x_2435 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2435.x, x_2435.x, x_2435.y, x_2435.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2438 : vec4<f32> = u_xlat8;
        let x_2440 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2438.x, x_2438.x, x_2438.z, x_2438.z) * vec4<f32>(x_2440.x, x_2440.x, x_2440.z, x_2440.z));
        let x_2443 : vec4<f32> = u_xlat9;
        let x_2445 : vec2<f32> = (vec2<f32>(x_2443.y, x_2443.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2446 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2446.x, x_2445.x, x_2446.z, x_2445.y);
        let x_2448 : vec4<f32> = u_xlat9;
        let x_2451 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_2448.x, x_2448.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2451.x, x_2451.y)));
        let x_2455 : vec4<f32> = u_xlat7;
        let x_2458 : vec2<f32> = (-(vec2<f32>(x_2455.x, x_2455.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2459 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2458.x, x_2459.y, x_2458.y, x_2459.w);
        let x_2461 : vec4<f32> = u_xlat7;
        let x_2463 : vec2<f32> = min(vec2<f32>(x_2461.x, x_2461.y), vec2<f32>(0.0f, 0.0f));
        let x_2464 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2463.x, x_2463.y, x_2464.z, x_2464.w);
        let x_2466 : vec4<f32> = u_xlat9;
        let x_2469 : vec4<f32> = u_xlat9;
        let x_2472 : vec4<f32> = u_xlat8;
        let x_2474 : vec2<f32> = ((-(vec2<f32>(x_2466.x, x_2466.y)) * vec2<f32>(x_2469.x, x_2469.y)) + vec2<f32>(x_2472.x, x_2472.z));
        let x_2475 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2474.x, x_2475.y, x_2474.y, x_2475.w);
        let x_2477 : vec4<f32> = u_xlat7;
        let x_2479 : vec2<f32> = max(vec2<f32>(x_2477.x, x_2477.y), vec2<f32>(0.0f, 0.0f));
        let x_2480 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2479.x, x_2479.y, x_2480.z, x_2480.w);
        let x_2482 : vec4<f32> = u_xlat9;
        let x_2485 : vec4<f32> = u_xlat9;
        let x_2488 : vec4<f32> = u_xlat8;
        let x_2490 : vec2<f32> = ((-(vec2<f32>(x_2482.x, x_2482.y)) * vec2<f32>(x_2485.x, x_2485.y)) + vec2<f32>(x_2488.y, x_2488.w));
        let x_2491 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2491.x, x_2490.x, x_2491.z, x_2490.y);
        let x_2493 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2493 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2496 : f32 = u_xlat8.y;
        u_xlat9.z = (x_2496 * 0.08163200318813323975f);
        let x_2499 : vec2<f32> = u_xlat59;
        let x_2501 : vec2<f32> = (vec2<f32>(x_2499.y, x_2499.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2502 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2501.x, x_2501.y, x_2502.z, x_2502.w);
        let x_2504 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_2504.x, x_2504.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2508 : f32 = u_xlat8.w;
        u_xlat11.z = (x_2508 * 0.08163200318813323975f);
        let x_2512 : f32 = u_xlat11.y;
        u_xlat9.x = x_2512;
        let x_2514 : vec4<f32> = u_xlat7;
        let x_2517 : vec2<f32> = ((vec2<f32>(x_2514.x, x_2514.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2518 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2518.x, x_2517.x, x_2518.z, x_2517.y);
        let x_2520 : vec4<f32> = u_xlat7;
        let x_2523 : vec2<f32> = ((vec2<f32>(x_2520.x, x_2520.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2524 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2523.x, x_2524.y, x_2523.y, x_2524.w);
        let x_2527 : f32 = u_xlat59.x;
        u_xlat8.y = x_2527;
        let x_2530 : f32 = u_xlat10.y;
        u_xlat8.w = x_2530;
        let x_2532 : vec4<f32> = u_xlat8;
        let x_2533 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2532 + x_2533);
        let x_2535 : vec4<f32> = u_xlat7;
        let x_2538 : vec2<f32> = ((vec2<f32>(x_2535.y, x_2535.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2539 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2539.x, x_2538.x, x_2539.z, x_2538.y);
        let x_2541 : vec4<f32> = u_xlat7;
        let x_2544 : vec2<f32> = ((vec2<f32>(x_2541.y, x_2541.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2545 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2544.x, x_2545.y, x_2544.y, x_2545.w);
        let x_2548 : f32 = u_xlat59.y;
        u_xlat10.y = x_2548;
        let x_2550 : vec4<f32> = u_xlat10;
        let x_2551 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_2550 + x_2551);
        let x_2553 : vec4<f32> = u_xlat8;
        let x_2554 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_2553 / x_2554);
        let x_2556 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2556 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2558 : vec4<f32> = u_xlat10;
        let x_2559 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_2558 / x_2559);
        let x_2561 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2561 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2563 : vec4<f32> = u_xlat8;
        let x_2566 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_2563.w, x_2563.x, x_2563.y, x_2563.z) * vec4<f32>(x_2566.x, x_2566.x, x_2566.x, x_2566.x));
        let x_2569 : vec4<f32> = u_xlat10;
        let x_2572 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_2569.x, x_2569.w, x_2569.y, x_2569.z) * vec4<f32>(x_2572.y, x_2572.y, x_2572.y, x_2572.y));
        let x_2575 : vec4<f32> = u_xlat8;
        let x_2576 : vec3<f32> = vec3<f32>(x_2575.y, x_2575.z, x_2575.w);
        let x_2577 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2576.x, x_2577.y, x_2576.y, x_2576.z);
        let x_2580 : f32 = u_xlat10.x;
        u_xlat11.y = x_2580;
        let x_2582 : vec2<f32> = u_xlat58;
        let x_2585 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2588 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2582.x, x_2582.y, x_2582.x, x_2582.y) * vec4<f32>(x_2585.x, x_2585.y, x_2585.x, x_2585.y)) + vec4<f32>(x_2588.x, x_2588.y, x_2588.z, x_2588.y));
        let x_2591 : vec2<f32> = u_xlat58;
        let x_2593 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2596 : vec4<f32> = u_xlat11;
        let x_2598 : vec2<f32> = ((x_2591 * vec2<f32>(x_2593.x, x_2593.y)) + vec2<f32>(x_2596.w, x_2596.y));
        let x_2599 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2598.x, x_2598.y, x_2599.z, x_2599.w);
        let x_2602 : f32 = u_xlat11.y;
        u_xlat8.y = x_2602;
        let x_2605 : f32 = u_xlat10.z;
        u_xlat11.y = x_2605;
        let x_2607 : vec2<f32> = u_xlat58;
        let x_2610 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2613 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_2607.x, x_2607.y, x_2607.x, x_2607.y) * vec4<f32>(x_2610.x, x_2610.y, x_2610.x, x_2610.y)) + vec4<f32>(x_2613.x, x_2613.y, x_2613.z, x_2613.y));
        let x_2617 : vec2<f32> = u_xlat58;
        let x_2619 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2622 : vec4<f32> = u_xlat11;
        u_xlat65 = ((x_2617 * vec2<f32>(x_2619.x, x_2619.y)) + vec2<f32>(x_2622.w, x_2622.y));
        let x_2626 : f32 = u_xlat11.y;
        u_xlat8.z = x_2626;
        let x_2628 : vec2<f32> = u_xlat58;
        let x_2631 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2634 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_2628.x, x_2628.y, x_2628.x, x_2628.y) * vec4<f32>(x_2631.x, x_2631.y, x_2631.x, x_2631.y)) + vec4<f32>(x_2634.x, x_2634.y, x_2634.x, x_2634.z));
        let x_2638 : f32 = u_xlat10.w;
        u_xlat11.y = x_2638;
        let x_2640 : vec2<f32> = u_xlat58;
        let x_2643 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2646 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_2640.x, x_2640.y, x_2640.x, x_2640.y) * vec4<f32>(x_2643.x, x_2643.y, x_2643.x, x_2643.y)) + vec4<f32>(x_2646.x, x_2646.y, x_2646.z, x_2646.y));
        let x_2649 : vec2<f32> = u_xlat58;
        let x_2651 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2654 : vec4<f32> = u_xlat11;
        u_xlat34 = ((x_2649 * vec2<f32>(x_2651.x, x_2651.y)) + vec2<f32>(x_2654.w, x_2654.y));
        let x_2658 : f32 = u_xlat11.y;
        u_xlat8.w = x_2658;
        let x_2660 : vec2<f32> = u_xlat58;
        let x_2662 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2665 : vec4<f32> = u_xlat8;
        let x_2667 : vec2<f32> = ((x_2660 * vec2<f32>(x_2662.x, x_2662.y)) + vec2<f32>(x_2665.x, x_2665.w));
        let x_2668 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_2667.x, x_2667.y, x_2668.z, x_2668.w);
        let x_2670 : vec4<f32> = u_xlat11;
        let x_2671 : vec3<f32> = vec3<f32>(x_2670.x, x_2670.z, x_2670.w);
        let x_2672 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2671.x, x_2672.y, x_2671.y, x_2671.z);
        let x_2674 : vec2<f32> = u_xlat58;
        let x_2677 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2680 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_2674.x, x_2674.y, x_2674.x, x_2674.y) * vec4<f32>(x_2677.x, x_2677.y, x_2677.x, x_2677.y)) + vec4<f32>(x_2680.x, x_2680.y, x_2680.z, x_2680.y));
        let x_2684 : vec2<f32> = u_xlat58;
        let x_2686 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2689 : vec4<f32> = u_xlat10;
        u_xlat62 = ((x_2684 * vec2<f32>(x_2686.x, x_2686.y)) + vec2<f32>(x_2689.w, x_2689.y));
        let x_2693 : f32 = u_xlat8.x;
        u_xlat10.x = x_2693;
        let x_2695 : vec2<f32> = u_xlat58;
        let x_2697 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2700 : vec4<f32> = u_xlat10;
        u_xlat58 = ((x_2695 * vec2<f32>(x_2697.x, x_2697.y)) + vec2<f32>(x_2700.x, x_2700.y));
        let x_2703 : vec4<f32> = u_xlat7;
        let x_2705 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_2703.x, x_2703.x, x_2703.x, x_2703.x) * x_2705);
        let x_2707 : vec4<f32> = u_xlat7;
        let x_2709 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_2707.y, x_2707.y, x_2707.y, x_2707.y) * x_2709);
        let x_2712 : vec4<f32> = u_xlat7;
        let x_2714 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_2712.z, x_2712.z, x_2712.z, x_2712.z) * x_2714);
        let x_2716 : vec4<f32> = u_xlat7;
        let x_2718 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_2716.w, x_2716.w, x_2716.w, x_2716.w) * x_2718);
        let x_2721 : vec4<f32> = u_xlat12;
        let x_2722 : vec2<f32> = vec2<f32>(x_2721.x, x_2721.y);
        let x_2724 : f32 = vs_INTERP3.z;
        txVec43 = vec3<f32>(x_2722.x, x_2722.y, x_2724);
        let x_2731 : vec3<f32> = txVec43;
        let x_2733 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2731.xy, x_2731.z);
        u_xlat8.x = x_2733;
        let x_2736 : vec4<f32> = u_xlat12;
        let x_2737 : vec2<f32> = vec2<f32>(x_2736.z, x_2736.w);
        let x_2739 : f32 = vs_INTERP3.z;
        txVec44 = vec3<f32>(x_2737.x, x_2737.y, x_2739);
        let x_2747 : vec3<f32> = txVec44;
        let x_2749 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2747.xy, x_2747.z);
        u_xlat86 = x_2749;
        let x_2750 : f32 = u_xlat86;
        let x_2752 : f32 = u_xlat18.y;
        u_xlat86 = (x_2750 * x_2752);
        let x_2755 : f32 = u_xlat18.x;
        let x_2757 : f32 = u_xlat8.x;
        let x_2759 : f32 = u_xlat86;
        u_xlat8.x = ((x_2755 * x_2757) + x_2759);
        let x_2763 : vec4<f32> = u_xlat13;
        let x_2764 : vec2<f32> = vec2<f32>(x_2763.x, x_2763.y);
        let x_2766 : f32 = vs_INTERP3.z;
        txVec45 = vec3<f32>(x_2764.x, x_2764.y, x_2766);
        let x_2773 : vec3<f32> = txVec45;
        let x_2775 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2773.xy, x_2773.z);
        u_xlat86 = x_2775;
        let x_2777 : f32 = u_xlat18.z;
        let x_2778 : f32 = u_xlat86;
        let x_2781 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2777 * x_2778) + x_2781);
        let x_2785 : vec4<f32> = u_xlat15;
        let x_2786 : vec2<f32> = vec2<f32>(x_2785.x, x_2785.y);
        let x_2788 : f32 = vs_INTERP3.z;
        txVec46 = vec3<f32>(x_2786.x, x_2786.y, x_2788);
        let x_2795 : vec3<f32> = txVec46;
        let x_2797 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2795.xy, x_2795.z);
        u_xlat86 = x_2797;
        let x_2799 : f32 = u_xlat18.w;
        let x_2800 : f32 = u_xlat86;
        let x_2803 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2799 * x_2800) + x_2803);
        let x_2807 : vec4<f32> = u_xlat14;
        let x_2808 : vec2<f32> = vec2<f32>(x_2807.x, x_2807.y);
        let x_2810 : f32 = vs_INTERP3.z;
        txVec47 = vec3<f32>(x_2808.x, x_2808.y, x_2810);
        let x_2817 : vec3<f32> = txVec47;
        let x_2819 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2817.xy, x_2817.z);
        u_xlat86 = x_2819;
        let x_2821 : f32 = u_xlat19.x;
        let x_2822 : f32 = u_xlat86;
        let x_2825 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2821 * x_2822) + x_2825);
        let x_2829 : vec4<f32> = u_xlat14;
        let x_2830 : vec2<f32> = vec2<f32>(x_2829.z, x_2829.w);
        let x_2832 : f32 = vs_INTERP3.z;
        txVec48 = vec3<f32>(x_2830.x, x_2830.y, x_2832);
        let x_2839 : vec3<f32> = txVec48;
        let x_2841 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2839.xy, x_2839.z);
        u_xlat86 = x_2841;
        let x_2843 : f32 = u_xlat19.y;
        let x_2844 : f32 = u_xlat86;
        let x_2847 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2843 * x_2844) + x_2847);
        let x_2851 : vec2<f32> = u_xlat65;
        let x_2853 : f32 = vs_INTERP3.z;
        txVec49 = vec3<f32>(x_2851.x, x_2851.y, x_2853);
        let x_2860 : vec3<f32> = txVec49;
        let x_2862 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2860.xy, x_2860.z);
        u_xlat86 = x_2862;
        let x_2864 : f32 = u_xlat19.z;
        let x_2865 : f32 = u_xlat86;
        let x_2868 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2864 * x_2865) + x_2868);
        let x_2872 : vec4<f32> = u_xlat15;
        let x_2873 : vec2<f32> = vec2<f32>(x_2872.z, x_2872.w);
        let x_2875 : f32 = vs_INTERP3.z;
        txVec50 = vec3<f32>(x_2873.x, x_2873.y, x_2875);
        let x_2882 : vec3<f32> = txVec50;
        let x_2884 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2882.xy, x_2882.z);
        u_xlat86 = x_2884;
        let x_2886 : f32 = u_xlat19.w;
        let x_2887 : f32 = u_xlat86;
        let x_2890 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2886 * x_2887) + x_2890);
        let x_2894 : vec4<f32> = u_xlat16;
        let x_2895 : vec2<f32> = vec2<f32>(x_2894.x, x_2894.y);
        let x_2897 : f32 = vs_INTERP3.z;
        txVec51 = vec3<f32>(x_2895.x, x_2895.y, x_2897);
        let x_2904 : vec3<f32> = txVec51;
        let x_2906 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2904.xy, x_2904.z);
        u_xlat86 = x_2906;
        let x_2908 : f32 = u_xlat20.x;
        let x_2909 : f32 = u_xlat86;
        let x_2912 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2908 * x_2909) + x_2912);
        let x_2916 : vec4<f32> = u_xlat16;
        let x_2917 : vec2<f32> = vec2<f32>(x_2916.z, x_2916.w);
        let x_2919 : f32 = vs_INTERP3.z;
        txVec52 = vec3<f32>(x_2917.x, x_2917.y, x_2919);
        let x_2926 : vec3<f32> = txVec52;
        let x_2928 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2926.xy, x_2926.z);
        u_xlat86 = x_2928;
        let x_2930 : f32 = u_xlat20.y;
        let x_2931 : f32 = u_xlat86;
        let x_2934 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2930 * x_2931) + x_2934);
        let x_2938 : vec2<f32> = u_xlat34;
        let x_2940 : f32 = vs_INTERP3.z;
        txVec53 = vec3<f32>(x_2938.x, x_2938.y, x_2940);
        let x_2947 : vec3<f32> = txVec53;
        let x_2949 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2947.xy, x_2947.z);
        u_xlat34.x = x_2949;
        let x_2952 : f32 = u_xlat20.z;
        let x_2954 : f32 = u_xlat34.x;
        let x_2957 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2952 * x_2954) + x_2957);
        let x_2961 : vec4<f32> = u_xlat17;
        let x_2962 : vec2<f32> = vec2<f32>(x_2961.x, x_2961.y);
        let x_2964 : f32 = vs_INTERP3.z;
        txVec54 = vec3<f32>(x_2962.x, x_2962.y, x_2964);
        let x_2971 : vec3<f32> = txVec54;
        let x_2973 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2971.xy, x_2971.z);
        u_xlat34.x = x_2973;
        let x_2976 : f32 = u_xlat20.w;
        let x_2978 : f32 = u_xlat34.x;
        let x_2981 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2976 * x_2978) + x_2981);
        let x_2985 : vec4<f32> = u_xlat11;
        let x_2986 : vec2<f32> = vec2<f32>(x_2985.x, x_2985.y);
        let x_2988 : f32 = vs_INTERP3.z;
        txVec55 = vec3<f32>(x_2986.x, x_2986.y, x_2988);
        let x_2995 : vec3<f32> = txVec55;
        let x_2997 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2995.xy, x_2995.z);
        u_xlat34.x = x_2997;
        let x_3000 : f32 = u_xlat7.x;
        let x_3002 : f32 = u_xlat34.x;
        let x_3005 : f32 = u_xlat8.x;
        u_xlat7.x = ((x_3000 * x_3002) + x_3005);
        let x_3009 : vec4<f32> = u_xlat11;
        let x_3010 : vec2<f32> = vec2<f32>(x_3009.z, x_3009.w);
        let x_3012 : f32 = vs_INTERP3.z;
        txVec56 = vec3<f32>(x_3010.x, x_3010.y, x_3012);
        let x_3019 : vec3<f32> = txVec56;
        let x_3021 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3019.xy, x_3019.z);
        u_xlat8.x = x_3021;
        let x_3024 : f32 = u_xlat7.y;
        let x_3026 : f32 = u_xlat8.x;
        let x_3029 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_3024 * x_3026) + x_3029);
        let x_3033 : vec2<f32> = u_xlat62;
        let x_3035 : f32 = vs_INTERP3.z;
        txVec57 = vec3<f32>(x_3033.x, x_3033.y, x_3035);
        let x_3042 : vec3<f32> = txVec57;
        let x_3044 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3042.xy, x_3042.z);
        u_xlat33.x = x_3044;
        let x_3047 : f32 = u_xlat7.z;
        let x_3049 : f32 = u_xlat33.x;
        let x_3052 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_3047 * x_3049) + x_3052);
        let x_3056 : vec2<f32> = u_xlat58;
        let x_3058 : f32 = vs_INTERP3.z;
        txVec58 = vec3<f32>(x_3056.x, x_3056.y, x_3058);
        let x_3065 : vec3<f32> = txVec58;
        let x_3067 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3065.xy, x_3065.z);
        u_xlat58.x = x_3067;
        let x_3070 : f32 = u_xlat7.w;
        let x_3072 : f32 = u_xlat58.x;
        let x_3075 : f32 = u_xlat7.x;
        u_xlat0.x = ((x_3070 * x_3072) + x_3075);
      }
    }
  } else {
    let x_3080 : vec4<f32> = vs_INTERP3;
    let x_3081 : vec2<f32> = vec2<f32>(x_3080.x, x_3080.y);
    let x_3083 : f32 = vs_INTERP3.z;
    txVec59 = vec3<f32>(x_3081.x, x_3081.y, x_3083);
    let x_3090 : vec3<f32> = txVec59;
    let x_3092 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3090.xy, x_3090.z);
    u_xlat0.x = x_3092;
  }
  let x_3095 : f32 = u_xlat0.x;
  let x_3097 : f32 = x_241.x_MainLightShadowParams.x;
  let x_3100 : f32 = u_xlat2.x;
  u_xlat0.x = ((x_3095 * x_3097) + x_3100);
  let x_3105 : f32 = vs_INTERP3.z;
  u_xlatb2 = (0.0f >= x_3105);
  let x_3108 : f32 = vs_INTERP3.z;
  u_xlatb58.x = (x_3108 >= 1.0f);
  let x_3111 : bool = u_xlatb2;
  let x_3113 : bool = u_xlatb58.x;
  u_xlatb2 = (x_3111 | x_3113);
  let x_3115 : bool = u_xlatb2;
  if (x_3115) {
    x_3116 = 1.0f;
  } else {
    let x_3121 : f32 = u_xlat0.x;
    x_3116 = x_3121;
  }
  let x_3122 : f32 = x_3116;
  u_xlat0.x = x_3122;
  let x_3124 : vec3<f32> = vs_INTERP8;
  let x_3126 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_3128 : vec3<f32> = (x_3124 + -(x_3126));
  let x_3129 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3128.x, x_3128.y, x_3128.z, x_3129.w);
  let x_3131 : vec4<f32> = u_xlat7;
  let x_3133 : vec4<f32> = u_xlat7;
  u_xlat2.x = dot(vec3<f32>(x_3131.x, x_3131.y, x_3131.z), vec3<f32>(x_3133.x, x_3133.y, x_3133.z));
  let x_3138 : f32 = u_xlat2.x;
  let x_3140 : f32 = x_241.x_MainLightShadowParams.z;
  let x_3143 : f32 = x_241.x_MainLightShadowParams.w;
  u_xlat58.x = ((x_3138 * x_3140) + x_3143);
  let x_3147 : f32 = u_xlat58.x;
  u_xlat58.x = clamp(x_3147, 0.0f, 1.0f);
  let x_3151 : f32 = u_xlat0.x;
  u_xlat84 = (-(x_3151) + 1.0f);
  let x_3155 : f32 = u_xlat58.x;
  let x_3156 : f32 = u_xlat84;
  let x_3159 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_3155 * x_3156) + x_3159);
  let x_3169 : f32 = x_3167.x_MainLightCookieTextureFormat;
  u_xlatb58.x = !((x_3169 == -1.0f));
  let x_3173 : bool = u_xlatb58.x;
  if (x_3173) {
    let x_3176 : vec3<f32> = vs_INTERP8;
    let x_3179 : vec4<f32> = x_3167.x_MainLightWorldToLight[1i];
    u_xlat58 = (vec2<f32>(x_3176.y, x_3176.y) * vec2<f32>(x_3179.x, x_3179.y));
    let x_3183 : vec4<f32> = x_3167.x_MainLightWorldToLight[0i];
    let x_3185 : vec3<f32> = vs_INTERP8;
    let x_3188 : vec2<f32> = u_xlat58;
    u_xlat58 = ((vec2<f32>(x_3183.x, x_3183.y) * vec2<f32>(x_3185.x, x_3185.x)) + x_3188);
    let x_3191 : vec4<f32> = x_3167.x_MainLightWorldToLight[2i];
    let x_3193 : vec3<f32> = vs_INTERP8;
    let x_3196 : vec2<f32> = u_xlat58;
    u_xlat58 = ((vec2<f32>(x_3191.x, x_3191.y) * vec2<f32>(x_3193.z, x_3193.z)) + x_3196);
    let x_3198 : vec2<f32> = u_xlat58;
    let x_3200 : vec4<f32> = x_3167.x_MainLightWorldToLight[3i];
    u_xlat58 = (x_3198 + vec2<f32>(x_3200.x, x_3200.y));
    let x_3203 : vec2<f32> = u_xlat58;
    u_xlat58 = ((x_3203 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_3211 : vec2<f32> = u_xlat58;
    let x_3213 : f32 = x_126.x_GlobalMipBias.x;
    let x_3214 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_3211, x_3213);
    u_xlat7 = x_3214;
    let x_3216 : f32 = x_3167.x_MainLightCookieTextureFormat;
    let x_3218 : f32 = x_3167.x_MainLightCookieTextureFormat;
    let x_3220 : f32 = x_3167.x_MainLightCookieTextureFormat;
    let x_3222 : f32 = x_3167.x_MainLightCookieTextureFormat;
    let x_3223 : vec4<f32> = vec4<f32>(x_3216, x_3218, x_3220, x_3222);
    let x_3231 : vec4<bool> = (vec4<f32>(x_3223.x, x_3223.y, x_3223.z, x_3223.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb58 = vec2<bool>(x_3231.x, x_3231.y);
    let x_3234 : bool = u_xlatb58.y;
    if (x_3234) {
      let x_3239 : f32 = u_xlat7.w;
      x_3235 = x_3239;
    } else {
      let x_3242 : f32 = u_xlat7.x;
      x_3235 = x_3242;
    }
    let x_3243 : f32 = x_3235;
    u_xlat84 = x_3243;
    let x_3245 : bool = u_xlatb58.x;
    if (x_3245) {
      let x_3249 : vec4<f32> = u_xlat7;
      x_3246 = vec3<f32>(x_3249.x, x_3249.y, x_3249.z);
    } else {
      let x_3252 : f32 = u_xlat84;
      x_3246 = vec3<f32>(x_3252, x_3252, x_3252);
    }
    let x_3254 : vec3<f32> = x_3246;
    let x_3255 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3254.x, x_3254.y, x_3254.z, x_3255.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_3261 : vec4<f32> = u_xlat7;
  let x_3264 : vec4<f32> = x_126.x_MainLightColor;
  let x_3266 : vec3<f32> = (vec3<f32>(x_3261.x, x_3261.y, x_3261.z) * vec3<f32>(x_3264.x, x_3264.y, x_3264.z));
  let x_3267 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3266.x, x_3266.y, x_3266.z, x_3267.w);
  let x_3269 : vec3<f32> = u_xlat26;
  let x_3271 : vec4<f32> = u_xlat3;
  u_xlat58.x = dot(-(x_3269), vec3<f32>(x_3271.x, x_3271.y, x_3271.z));
  let x_3276 : f32 = u_xlat58.x;
  let x_3278 : f32 = u_xlat58.x;
  u_xlat58.x = (x_3276 + x_3278);
  let x_3281 : vec4<f32> = u_xlat3;
  let x_3283 : vec2<f32> = u_xlat58;
  let x_3287 : vec3<f32> = u_xlat26;
  let x_3289 : vec3<f32> = ((vec3<f32>(x_3281.x, x_3281.y, x_3281.z) * -(vec3<f32>(x_3283.x, x_3283.x, x_3283.x))) + -(x_3287));
  let x_3290 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3289.x, x_3289.y, x_3289.z, x_3290.w);
  let x_3292 : vec4<f32> = u_xlat3;
  let x_3294 : vec3<f32> = u_xlat26;
  u_xlat58.x = dot(vec3<f32>(x_3292.x, x_3292.y, x_3292.z), x_3294);
  let x_3298 : f32 = u_xlat58.x;
  u_xlat58.x = clamp(x_3298, 0.0f, 1.0f);
  let x_3302 : f32 = u_xlat58.x;
  u_xlat58.x = (-(x_3302) + 1.0f);
  let x_3307 : f32 = u_xlat58.x;
  let x_3309 : f32 = u_xlat58.x;
  u_xlat58.x = (x_3307 * x_3309);
  let x_3313 : f32 = u_xlat58.x;
  let x_3315 : f32 = u_xlat58.x;
  u_xlat58.x = (x_3313 * x_3315);
  let x_3318 : f32 = u_xlat80;
  u_xlat84 = ((-(x_3318) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3324 : f32 = u_xlat80;
  let x_3325 : f32 = u_xlat84;
  u_xlat80 = (x_3324 * x_3325);
  let x_3327 : f32 = u_xlat80;
  u_xlat80 = (x_3327 * 6.0f);
  let x_3338 : vec4<f32> = u_xlat8;
  let x_3340 : f32 = u_xlat80;
  let x_3341 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_3338.x, x_3338.y, x_3338.z), x_3340);
  u_xlat8 = x_3341;
  let x_3343 : f32 = u_xlat8.w;
  u_xlat80 = (x_3343 + -1.0f);
  let x_3346 : f32 = x_48.unity_SpecCube0_HDR.w;
  let x_3347 : f32 = u_xlat80;
  u_xlat80 = ((x_3346 * x_3347) + 1.0f);
  let x_3350 : f32 = u_xlat80;
  u_xlat80 = max(x_3350, 0.0f);
  let x_3352 : f32 = u_xlat80;
  u_xlat80 = log2(x_3352);
  let x_3354 : f32 = u_xlat80;
  let x_3356 : f32 = x_48.unity_SpecCube0_HDR.y;
  u_xlat80 = (x_3354 * x_3356);
  let x_3358 : f32 = u_xlat80;
  u_xlat80 = exp2(x_3358);
  let x_3360 : f32 = u_xlat80;
  let x_3362 : f32 = x_48.unity_SpecCube0_HDR.x;
  u_xlat80 = (x_3360 * x_3362);
  let x_3364 : vec4<f32> = u_xlat8;
  let x_3366 : f32 = u_xlat80;
  let x_3368 : vec3<f32> = (vec3<f32>(x_3364.x, x_3364.y, x_3364.z) * vec3<f32>(x_3366, x_3366, x_3366));
  let x_3369 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3368.x, x_3368.y, x_3368.z, x_3369.w);
  let x_3371 : f32 = u_xlat81;
  let x_3373 : f32 = u_xlat81;
  let x_3377 : vec2<f32> = ((vec2<f32>(x_3371, x_3371) * vec2<f32>(x_3373, x_3373)) + vec2<f32>(-1.0f, 1.0f));
  let x_3378 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_3377.x, x_3377.y, x_3378.z, x_3378.w);
  let x_3381 : f32 = u_xlat9.y;
  u_xlat80 = (1.0f / x_3381);
  let x_3383 : f32 = u_xlat83;
  u_xlat81 = (x_3383 + -0.03999999910593032837f);
  let x_3387 : f32 = u_xlat58.x;
  let x_3388 : f32 = u_xlat81;
  u_xlat81 = ((x_3387 * x_3388) + 0.03999999910593032837f);
  let x_3392 : f32 = u_xlat80;
  let x_3393 : f32 = u_xlat81;
  u_xlat80 = (x_3392 * x_3393);
  let x_3395 : f32 = u_xlat80;
  let x_3397 : vec4<f32> = u_xlat8;
  let x_3399 : vec3<f32> = (vec3<f32>(x_3395, x_3395, x_3395) * vec3<f32>(x_3397.x, x_3397.y, x_3397.z));
  let x_3400 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3399.x, x_3399.y, x_3399.z, x_3400.w);
  let x_3402 : vec4<f32> = u_xlat4;
  let x_3404 : vec3<f32> = u_xlat5;
  let x_3406 : vec4<f32> = u_xlat8;
  let x_3408 : vec3<f32> = ((vec3<f32>(x_3402.x, x_3402.y, x_3402.z) * x_3404) + vec3<f32>(x_3406.x, x_3406.y, x_3406.z));
  let x_3409 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_3408.x, x_3408.y, x_3408.z, x_3409.w);
  let x_3412 : f32 = u_xlat0.x;
  let x_3414 : f32 = x_48.unity_LightData.z;
  u_xlat0.x = (x_3412 * x_3414);
  let x_3417 : vec4<f32> = u_xlat3;
  let x_3420 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat80 = dot(vec3<f32>(x_3417.x, x_3417.y, x_3417.z), vec3<f32>(x_3420.x, x_3420.y, x_3420.z));
  let x_3423 : f32 = u_xlat80;
  u_xlat80 = clamp(x_3423, 0.0f, 1.0f);
  let x_3426 : f32 = u_xlat0.x;
  let x_3427 : f32 = u_xlat80;
  u_xlat0.x = (x_3426 * x_3427);
  let x_3430 : vec3<f32> = u_xlat0;
  let x_3432 : vec4<f32> = u_xlat7;
  let x_3434 : vec3<f32> = (vec3<f32>(x_3430.x, x_3430.x, x_3430.x) * vec3<f32>(x_3432.x, x_3432.y, x_3432.z));
  let x_3435 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3434.x, x_3434.y, x_3434.z, x_3435.w);
  let x_3437 : vec3<f32> = u_xlat26;
  let x_3439 : vec4<f32> = x_126.x_MainLightPosition;
  let x_3441 : vec3<f32> = (x_3437 + vec3<f32>(x_3439.x, x_3439.y, x_3439.z));
  let x_3442 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3441.x, x_3441.y, x_3441.z, x_3442.w);
  let x_3444 : vec4<f32> = u_xlat8;
  let x_3446 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_3444.x, x_3444.y, x_3444.z), vec3<f32>(x_3446.x, x_3446.y, x_3446.z));
  let x_3451 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_3451, 1.17549435e-38f);
  let x_3455 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_3455);
  let x_3458 : vec3<f32> = u_xlat0;
  let x_3460 : vec4<f32> = u_xlat8;
  let x_3462 : vec3<f32> = (vec3<f32>(x_3458.x, x_3458.x, x_3458.x) * vec3<f32>(x_3460.x, x_3460.y, x_3460.z));
  let x_3463 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3462.x, x_3462.y, x_3462.z, x_3463.w);
  let x_3465 : vec4<f32> = u_xlat3;
  let x_3467 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_3465.x, x_3465.y, x_3465.z), vec3<f32>(x_3467.x, x_3467.y, x_3467.z));
  let x_3472 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_3472, 0.0f, 1.0f);
  let x_3476 : vec4<f32> = x_126.x_MainLightPosition;
  let x_3478 : vec4<f32> = u_xlat8;
  u_xlat80 = dot(vec3<f32>(x_3476.x, x_3476.y, x_3476.z), vec3<f32>(x_3478.x, x_3478.y, x_3478.z));
  let x_3481 : f32 = u_xlat80;
  u_xlat80 = clamp(x_3481, 0.0f, 1.0f);
  let x_3484 : f32 = u_xlat0.x;
  let x_3486 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3484 * x_3486);
  let x_3490 : f32 = u_xlat0.x;
  let x_3492 : f32 = u_xlat9.x;
  u_xlat0.x = ((x_3490 * x_3492) + 1.00001001358032226562f);
  let x_3497 : f32 = u_xlat80;
  let x_3498 : f32 = u_xlat80;
  u_xlat80 = (x_3497 * x_3498);
  let x_3501 : f32 = u_xlat0.x;
  let x_3503 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3501 * x_3503);
  let x_3506 : f32 = u_xlat80;
  u_xlat80 = max(x_3506, 0.10000000149011611938f);
  let x_3510 : f32 = u_xlat0.x;
  let x_3511 : f32 = u_xlat80;
  u_xlat0.x = (x_3510 * x_3511);
  let x_3515 : f32 = u_xlat6.x;
  let x_3517 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3515 * x_3517);
  let x_3520 : f32 = u_xlat82;
  let x_3522 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3520 / x_3522);
  let x_3525 : vec3<f32> = u_xlat0;
  let x_3529 : vec3<f32> = u_xlat5;
  let x_3530 : vec3<f32> = ((vec3<f32>(x_3525.x, x_3525.x, x_3525.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3529);
  let x_3531 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3530.x, x_3530.y, x_3530.z, x_3531.w);
  let x_3533 : vec4<f32> = u_xlat7;
  let x_3535 : vec4<f32> = u_xlat8;
  let x_3537 : vec3<f32> = (vec3<f32>(x_3533.x, x_3533.y, x_3533.z) * vec3<f32>(x_3535.x, x_3535.y, x_3535.z));
  let x_3538 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3537.x, x_3537.y, x_3537.z, x_3538.w);
  let x_3542 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_3544 : f32 = x_48.unity_LightData.y;
  u_xlat0.x = min(x_3542, x_3544);
  let x_3550 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_3550));
  let x_3554 : f32 = u_xlat2.x;
  let x_3557 : f32 = x_241.x_AdditionalShadowFadeParams.x;
  let x_3560 : f32 = x_241.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_3554 * x_3557) + x_3560);
  let x_3564 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_3564, 0.0f, 1.0f);
  let x_3568 : f32 = x_3167.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3570 : f32 = x_3167.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3572 : f32 = x_3167.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3574 : f32 = x_3167.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3575 : vec4<f32> = vec4<f32>(x_3568, x_3570, x_3572, x_3574);
  let x_3581 : vec4<bool> = (vec4<f32>(x_3575.x, x_3575.y, x_3575.z, x_3575.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  u_xlatb58 = vec2<bool>(x_3581.x, x_3581.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3593 : u32 = u_xlatu_loop_1;
    let x_3594 : u32 = u_xlatu0;
    if ((x_3593 < x_3594)) {
    } else {
      break;
    }
    let x_3597 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_3597 >> 2u);
    let x_3601 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_3601 & 3u));
    let x_3604 : u32 = u_xlatu81;
    let x_3607 : vec4<f32> = x_48.unity_LightIndices[bitcast<i32>(x_3604)];
    let x_3617 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3622 : vec4<u32> = indexable[x_3617];
    u_xlat81 = dot(x_3607, bitcast<vec4<f32>>(x_3622));
    let x_3626 : f32 = u_xlat81;
    u_xlati81 = i32(x_3626);
    let x_3629 : vec3<f32> = vs_INTERP8;
    let x_3640 : i32 = u_xlati81;
    let x_3642 : vec4<f32> = x_3639.x_AdditionalLightsPosition[x_3640];
    let x_3645 : i32 = u_xlati81;
    let x_3647 : vec4<f32> = x_3639.x_AdditionalLightsPosition[x_3645];
    u_xlat35 = ((-(x_3629) * vec3<f32>(x_3642.w, x_3642.w, x_3642.w)) + vec3<f32>(x_3647.x, x_3647.y, x_3647.z));
    let x_3650 : vec3<f32> = u_xlat35;
    let x_3651 : vec3<f32> = u_xlat35;
    u_xlat83 = dot(x_3650, x_3651);
    let x_3653 : f32 = u_xlat83;
    u_xlat83 = max(x_3653, 0.00006103515625f);
    let x_3657 : f32 = u_xlat83;
    u_xlat85 = inverseSqrt(x_3657);
    let x_3659 : f32 = u_xlat85;
    let x_3661 : vec3<f32> = u_xlat35;
    let x_3662 : vec3<f32> = (vec3<f32>(x_3659, x_3659, x_3659) * x_3661);
    let x_3663 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3662.x, x_3662.y, x_3662.z, x_3663.w);
    let x_3665 : f32 = u_xlat83;
    u_xlat86 = (1.0f / x_3665);
    let x_3667 : f32 = u_xlat83;
    let x_3668 : i32 = u_xlati81;
    let x_3670 : f32 = x_3639.x_AdditionalLightsAttenuation[x_3668].x;
    u_xlat83 = (x_3667 * x_3670);
    let x_3672 : f32 = u_xlat83;
    let x_3674 : f32 = u_xlat83;
    u_xlat83 = ((-(x_3672) * x_3674) + 1.0f);
    let x_3677 : f32 = u_xlat83;
    u_xlat83 = max(x_3677, 0.0f);
    let x_3679 : f32 = u_xlat83;
    let x_3680 : f32 = u_xlat83;
    u_xlat83 = (x_3679 * x_3680);
    let x_3682 : f32 = u_xlat83;
    let x_3683 : f32 = u_xlat86;
    u_xlat83 = (x_3682 * x_3683);
    let x_3685 : i32 = u_xlati81;
    let x_3687 : vec4<f32> = x_3639.x_AdditionalLightsSpotDir[x_3685];
    let x_3689 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_3687.x, x_3687.y, x_3687.z), vec3<f32>(x_3689.x, x_3689.y, x_3689.z));
    let x_3692 : f32 = u_xlat86;
    let x_3693 : i32 = u_xlati81;
    let x_3695 : f32 = x_3639.x_AdditionalLightsAttenuation[x_3693].z;
    let x_3697 : i32 = u_xlati81;
    let x_3699 : f32 = x_3639.x_AdditionalLightsAttenuation[x_3697].w;
    u_xlat86 = ((x_3692 * x_3695) + x_3699);
    let x_3701 : f32 = u_xlat86;
    u_xlat86 = clamp(x_3701, 0.0f, 1.0f);
    let x_3703 : f32 = u_xlat86;
    let x_3704 : f32 = u_xlat86;
    u_xlat86 = (x_3703 * x_3704);
    let x_3706 : f32 = u_xlat83;
    let x_3707 : f32 = u_xlat86;
    u_xlat83 = (x_3706 * x_3707);
    let x_3711 : i32 = u_xlati81;
    let x_3713 : f32 = x_241.x_AdditionalShadowParams[x_3711].w;
    u_xlati86 = i32(x_3713);
    let x_3716 : i32 = u_xlati86;
    u_xlatb88 = (x_3716 >= 0i);
    let x_3718 : bool = u_xlatb88;
    if (x_3718) {
      let x_3722 : i32 = u_xlati81;
      let x_3724 : f32 = x_241.x_AdditionalShadowParams[x_3722].z;
      u_xlatb88 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3724, x_3724, x_3724, x_3724))));
      let x_3728 : bool = u_xlatb88;
      if (x_3728) {
        let x_3733 : vec4<f32> = u_xlat10;
        let x_3736 : vec4<f32> = u_xlat10;
        let x_3739 : vec4<bool> = (abs(vec4<f32>(x_3733.z, x_3733.z, x_3733.y, x_3733.z)) >= abs(vec4<f32>(x_3736.x, x_3736.y, x_3736.x, x_3736.x)));
        let x_3741 : vec3<bool> = vec3<bool>(x_3739.x, x_3739.y, x_3739.z);
        let x_3742 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3741.x, x_3741.y, x_3741.z, x_3742.w);
        let x_3745 : bool = u_xlatb11.y;
        let x_3747 : bool = u_xlatb11.x;
        u_xlatb88 = (x_3745 & x_3747);
        let x_3749 : vec4<f32> = u_xlat10;
        let x_3752 : vec4<bool> = (-(vec4<f32>(x_3749.z, x_3749.y, x_3749.z, x_3749.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3753 : vec3<bool> = vec3<bool>(x_3752.x, x_3752.y, x_3752.w);
        let x_3754 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3753.x, x_3753.y, x_3754.z, x_3753.z);
        let x_3757 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3757);
        let x_3762 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3762);
        let x_3768 : bool = u_xlatb11.w;
        u_xlat89 = select(0.0f, 1.0f, x_3768);
        let x_3772 : bool = u_xlatb11.z;
        if (x_3772) {
          let x_3777 : f32 = u_xlat11.y;
          x_3773 = x_3777;
        } else {
          let x_3779 : f32 = u_xlat89;
          x_3773 = x_3779;
        }
        let x_3780 : f32 = x_3773;
        u_xlat37.x = x_3780;
        let x_3783 : bool = u_xlatb88;
        if (x_3783) {
          let x_3788 : f32 = u_xlat11.x;
          x_3784 = x_3788;
        } else {
          let x_3791 : f32 = u_xlat37.x;
          x_3784 = x_3791;
        }
        let x_3792 : f32 = x_3784;
        u_xlat88 = x_3792;
        let x_3793 : i32 = u_xlati81;
        let x_3795 : f32 = x_241.x_AdditionalShadowParams[x_3793].w;
        u_xlat11.x = trunc(x_3795);
        let x_3798 : f32 = u_xlat88;
        let x_3800 : f32 = u_xlat11.x;
        u_xlat88 = (x_3798 + x_3800);
        let x_3802 : f32 = u_xlat88;
        u_xlati86 = i32(x_3802);
      }
      let x_3804 : i32 = u_xlati86;
      u_xlati86 = (x_3804 << bitcast<u32>(2i));
      let x_3806 : vec3<f32> = vs_INTERP8;
      let x_3809 : i32 = u_xlati86;
      let x_3812 : i32 = u_xlati86;
      let x_3816 : vec4<f32> = x_241.x_AdditionalLightsWorldToShadow[((x_3809 + 1i) / 4i)][((x_3812 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3806.y, x_3806.y, x_3806.y, x_3806.y) * x_3816);
      let x_3818 : i32 = u_xlati86;
      let x_3820 : i32 = u_xlati86;
      let x_3823 : vec4<f32> = x_241.x_AdditionalLightsWorldToShadow[(x_3818 / 4i)][(x_3820 % 4i)];
      let x_3824 : vec3<f32> = vs_INTERP8;
      let x_3827 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3823 * vec4<f32>(x_3824.x, x_3824.x, x_3824.x, x_3824.x)) + x_3827);
      let x_3829 : i32 = u_xlati86;
      let x_3832 : i32 = u_xlati86;
      let x_3836 : vec4<f32> = x_241.x_AdditionalLightsWorldToShadow[((x_3829 + 2i) / 4i)][((x_3832 + 2i) % 4i)];
      let x_3837 : vec3<f32> = vs_INTERP8;
      let x_3840 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3836 * vec4<f32>(x_3837.z, x_3837.z, x_3837.z, x_3837.z)) + x_3840);
      let x_3842 : vec4<f32> = u_xlat11;
      let x_3843 : i32 = u_xlati86;
      let x_3846 : i32 = u_xlati86;
      let x_3850 : vec4<f32> = x_241.x_AdditionalLightsWorldToShadow[((x_3843 + 3i) / 4i)][((x_3846 + 3i) % 4i)];
      u_xlat11 = (x_3842 + x_3850);
      let x_3852 : vec4<f32> = u_xlat11;
      let x_3854 : vec4<f32> = u_xlat11;
      let x_3856 : vec3<f32> = (vec3<f32>(x_3852.x, x_3852.y, x_3852.z) / vec3<f32>(x_3854.w, x_3854.w, x_3854.w));
      let x_3857 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3856.x, x_3856.y, x_3856.z, x_3857.w);
      let x_3860 : i32 = u_xlati81;
      let x_3862 : f32 = x_241.x_AdditionalShadowParams[x_3860].y;
      u_xlatb86 = (0.0f < x_3862);
      let x_3864 : bool = u_xlatb86;
      if (x_3864) {
        let x_3867 : i32 = u_xlati81;
        let x_3869 : f32 = x_241.x_AdditionalShadowParams[x_3867].y;
        u_xlatb86 = (1.0f == x_3869);
        let x_3871 : bool = u_xlatb86;
        if (x_3871) {
          let x_3874 : vec4<f32> = u_xlat11;
          let x_3877 : vec4<f32> = x_241.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3874.x, x_3874.y, x_3874.x, x_3874.y) + x_3877);
          let x_3880 : vec4<f32> = u_xlat12;
          let x_3881 : vec2<f32> = vec2<f32>(x_3880.x, x_3880.y);
          let x_3883 : f32 = u_xlat11.z;
          txVec60 = vec3<f32>(x_3881.x, x_3881.y, x_3883);
          let x_3891 : vec3<f32> = txVec60;
          let x_3893 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3891.xy, x_3891.z);
          u_xlat13.x = x_3893;
          let x_3896 : vec4<f32> = u_xlat12;
          let x_3897 : vec2<f32> = vec2<f32>(x_3896.z, x_3896.w);
          let x_3899 : f32 = u_xlat11.z;
          txVec61 = vec3<f32>(x_3897.x, x_3897.y, x_3899);
          let x_3906 : vec3<f32> = txVec61;
          let x_3908 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3906.xy, x_3906.z);
          u_xlat13.y = x_3908;
          let x_3910 : vec4<f32> = u_xlat11;
          let x_3914 : vec4<f32> = x_241.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3910.x, x_3910.y, x_3910.x, x_3910.y) + x_3914);
          let x_3917 : vec4<f32> = u_xlat12;
          let x_3918 : vec2<f32> = vec2<f32>(x_3917.x, x_3917.y);
          let x_3920 : f32 = u_xlat11.z;
          txVec62 = vec3<f32>(x_3918.x, x_3918.y, x_3920);
          let x_3927 : vec3<f32> = txVec62;
          let x_3929 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3927.xy, x_3927.z);
          u_xlat13.z = x_3929;
          let x_3932 : vec4<f32> = u_xlat12;
          let x_3933 : vec2<f32> = vec2<f32>(x_3932.z, x_3932.w);
          let x_3935 : f32 = u_xlat11.z;
          txVec63 = vec3<f32>(x_3933.x, x_3933.y, x_3935);
          let x_3942 : vec3<f32> = txVec63;
          let x_3944 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3942.xy, x_3942.z);
          u_xlat13.w = x_3944;
          let x_3946 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_3946, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3949 : i32 = u_xlati81;
          let x_3951 : f32 = x_241.x_AdditionalShadowParams[x_3949].y;
          u_xlatb88 = (2.0f == x_3951);
          let x_3953 : bool = u_xlatb88;
          if (x_3953) {
            let x_3956 : vec4<f32> = u_xlat11;
            let x_3960 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_3963 : vec2<f32> = ((vec2<f32>(x_3956.x, x_3956.y) * vec2<f32>(x_3960.z, x_3960.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3964 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3963.x, x_3963.y, x_3964.z, x_3964.w);
            let x_3966 : vec4<f32> = u_xlat12;
            let x_3968 : vec2<f32> = floor(vec2<f32>(x_3966.x, x_3966.y));
            let x_3969 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3968.x, x_3968.y, x_3969.z, x_3969.w);
            let x_3972 : vec4<f32> = u_xlat11;
            let x_3975 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_3978 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3972.x, x_3972.y) * vec2<f32>(x_3975.z, x_3975.w)) + -(vec2<f32>(x_3978.x, x_3978.y)));
            let x_3982 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3982.x, x_3982.x, x_3982.y, x_3982.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3985 : vec4<f32> = u_xlat13;
            let x_3987 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3985.x, x_3985.x, x_3985.z, x_3985.z) * vec4<f32>(x_3987.x, x_3987.x, x_3987.z, x_3987.z));
            let x_3990 : vec4<f32> = u_xlat14;
            let x_3992 : vec2<f32> = (vec2<f32>(x_3990.y, x_3990.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3993 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3992.x, x_3993.y, x_3992.y, x_3993.w);
            let x_3995 : vec4<f32> = u_xlat14;
            let x_3998 : vec2<f32> = u_xlat64;
            let x_4000 : vec2<f32> = ((vec2<f32>(x_3995.x, x_3995.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3998));
            let x_4001 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4000.x, x_4000.y, x_4001.z, x_4001.w);
            let x_4003 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_4003) + vec2<f32>(1.0f, 1.0f));
            let x_4006 : vec2<f32> = u_xlat64;
            let x_4007 : vec2<f32> = min(x_4006, vec2<f32>(0.0f, 0.0f));
            let x_4008 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4007.x, x_4007.y, x_4008.z, x_4008.w);
            let x_4010 : vec4<f32> = u_xlat15;
            let x_4013 : vec4<f32> = u_xlat15;
            let x_4016 : vec2<f32> = u_xlat66;
            let x_4017 : vec2<f32> = ((-(vec2<f32>(x_4010.x, x_4010.y)) * vec2<f32>(x_4013.x, x_4013.y)) + x_4016);
            let x_4018 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4017.x, x_4017.y, x_4018.z, x_4018.w);
            let x_4020 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_4020, vec2<f32>(0.0f, 0.0f));
            let x_4022 : vec2<f32> = u_xlat64;
            let x_4024 : vec2<f32> = u_xlat64;
            let x_4026 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_4022) * x_4024) + vec2<f32>(x_4026.y, x_4026.w));
            let x_4029 : vec4<f32> = u_xlat15;
            let x_4031 : vec2<f32> = (vec2<f32>(x_4029.x, x_4029.y) + vec2<f32>(1.0f, 1.0f));
            let x_4032 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4031.x, x_4031.y, x_4032.z, x_4032.w);
            let x_4034 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_4034 + vec2<f32>(1.0f, 1.0f));
            let x_4036 : vec4<f32> = u_xlat14;
            let x_4038 : vec2<f32> = (vec2<f32>(x_4036.x, x_4036.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4039 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4038.x, x_4038.y, x_4039.z, x_4039.w);
            let x_4041 : vec2<f32> = u_xlat66;
            let x_4042 : vec2<f32> = (x_4041 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4043 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4042.x, x_4042.y, x_4043.z, x_4043.w);
            let x_4045 : vec4<f32> = u_xlat15;
            let x_4047 : vec2<f32> = (vec2<f32>(x_4045.x, x_4045.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4048 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4047.x, x_4047.y, x_4048.z, x_4048.w);
            let x_4050 : vec2<f32> = u_xlat64;
            let x_4051 : vec2<f32> = (x_4050 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4052 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4051.x, x_4051.y, x_4052.z, x_4052.w);
            let x_4054 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_4054.y, x_4054.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4058 : f32 = u_xlat15.x;
            u_xlat16.z = x_4058;
            let x_4061 : f32 = u_xlat64.x;
            u_xlat16.w = x_4061;
            let x_4064 : f32 = u_xlat17.x;
            u_xlat14.z = x_4064;
            let x_4067 : f32 = u_xlat13.x;
            u_xlat14.w = x_4067;
            let x_4069 : vec4<f32> = u_xlat14;
            let x_4071 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_4069.z, x_4069.w, x_4069.x, x_4069.z) + vec4<f32>(x_4071.z, x_4071.w, x_4071.x, x_4071.z));
            let x_4075 : f32 = u_xlat16.y;
            u_xlat15.z = x_4075;
            let x_4078 : f32 = u_xlat64.y;
            u_xlat15.w = x_4078;
            let x_4081 : f32 = u_xlat14.y;
            u_xlat17.z = x_4081;
            let x_4084 : f32 = u_xlat13.z;
            u_xlat17.w = x_4084;
            let x_4086 : vec4<f32> = u_xlat15;
            let x_4088 : vec4<f32> = u_xlat17;
            let x_4090 : vec3<f32> = (vec3<f32>(x_4086.z, x_4086.y, x_4086.w) + vec3<f32>(x_4088.z, x_4088.y, x_4088.w));
            let x_4091 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4090.x, x_4090.y, x_4090.z, x_4091.w);
            let x_4093 : vec4<f32> = u_xlat14;
            let x_4095 : vec4<f32> = u_xlat18;
            let x_4097 : vec3<f32> = (vec3<f32>(x_4093.x, x_4093.z, x_4093.w) / vec3<f32>(x_4095.z, x_4095.w, x_4095.y));
            let x_4098 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4097.x, x_4097.y, x_4097.z, x_4098.w);
            let x_4100 : vec4<f32> = u_xlat14;
            let x_4102 : vec3<f32> = (vec3<f32>(x_4100.x, x_4100.y, x_4100.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4103 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4102.x, x_4102.y, x_4102.z, x_4103.w);
            let x_4105 : vec4<f32> = u_xlat17;
            let x_4107 : vec4<f32> = u_xlat13;
            let x_4109 : vec3<f32> = (vec3<f32>(x_4105.z, x_4105.y, x_4105.w) / vec3<f32>(x_4107.x, x_4107.y, x_4107.z));
            let x_4110 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4109.x, x_4109.y, x_4109.z, x_4110.w);
            let x_4112 : vec4<f32> = u_xlat15;
            let x_4114 : vec3<f32> = (vec3<f32>(x_4112.x, x_4112.y, x_4112.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4115 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4114.x, x_4114.y, x_4114.z, x_4115.w);
            let x_4117 : vec4<f32> = u_xlat14;
            let x_4120 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4122 : vec3<f32> = (vec3<f32>(x_4117.y, x_4117.x, x_4117.z) * vec3<f32>(x_4120.x, x_4120.x, x_4120.x));
            let x_4123 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4122.x, x_4122.y, x_4122.z, x_4123.w);
            let x_4125 : vec4<f32> = u_xlat15;
            let x_4128 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4130 : vec3<f32> = (vec3<f32>(x_4125.x, x_4125.y, x_4125.z) * vec3<f32>(x_4128.y, x_4128.y, x_4128.y));
            let x_4131 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4130.x, x_4130.y, x_4130.z, x_4131.w);
            let x_4134 : f32 = u_xlat15.x;
            u_xlat14.w = x_4134;
            let x_4136 : vec4<f32> = u_xlat12;
            let x_4139 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4142 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4136.x, x_4136.y, x_4136.x, x_4136.y) * vec4<f32>(x_4139.x, x_4139.y, x_4139.x, x_4139.y)) + vec4<f32>(x_4142.y, x_4142.w, x_4142.x, x_4142.w));
            let x_4145 : vec4<f32> = u_xlat12;
            let x_4148 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4151 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4145.x, x_4145.y) * vec2<f32>(x_4148.x, x_4148.y)) + vec2<f32>(x_4151.z, x_4151.w));
            let x_4155 : f32 = u_xlat14.y;
            u_xlat15.w = x_4155;
            let x_4157 : vec4<f32> = u_xlat15;
            let x_4158 : vec2<f32> = vec2<f32>(x_4157.y, x_4157.z);
            let x_4159 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4159.x, x_4158.x, x_4159.z, x_4158.y);
            let x_4161 : vec4<f32> = u_xlat12;
            let x_4164 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4167 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_4161.x, x_4161.y, x_4161.x, x_4161.y) * vec4<f32>(x_4164.x, x_4164.y, x_4164.x, x_4164.y)) + vec4<f32>(x_4167.x, x_4167.y, x_4167.z, x_4167.y));
            let x_4170 : vec4<f32> = u_xlat12;
            let x_4173 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4176 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4170.x, x_4170.y, x_4170.x, x_4170.y) * vec4<f32>(x_4173.x, x_4173.y, x_4173.x, x_4173.y)) + vec4<f32>(x_4176.w, x_4176.y, x_4176.w, x_4176.z));
            let x_4179 : vec4<f32> = u_xlat12;
            let x_4182 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4185 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4179.x, x_4179.y, x_4179.x, x_4179.y) * vec4<f32>(x_4182.x, x_4182.y, x_4182.x, x_4182.y)) + vec4<f32>(x_4185.x, x_4185.w, x_4185.z, x_4185.w));
            let x_4188 : vec4<f32> = u_xlat13;
            let x_4190 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_4188.x, x_4188.x, x_4188.x, x_4188.y) * vec4<f32>(x_4190.z, x_4190.w, x_4190.y, x_4190.z));
            let x_4193 : vec4<f32> = u_xlat13;
            let x_4195 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_4193.y, x_4193.y, x_4193.z, x_4193.z) * x_4195);
            let x_4198 : f32 = u_xlat13.z;
            let x_4200 : f32 = u_xlat18.y;
            u_xlat88 = (x_4198 * x_4200);
            let x_4203 : vec4<f32> = u_xlat16;
            let x_4204 : vec2<f32> = vec2<f32>(x_4203.x, x_4203.y);
            let x_4206 : f32 = u_xlat11.z;
            txVec64 = vec3<f32>(x_4204.x, x_4204.y, x_4206);
            let x_4213 : vec3<f32> = txVec64;
            let x_4215 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4213.xy, x_4213.z);
            u_xlat89 = x_4215;
            let x_4217 : vec4<f32> = u_xlat16;
            let x_4218 : vec2<f32> = vec2<f32>(x_4217.z, x_4217.w);
            let x_4220 : f32 = u_xlat11.z;
            txVec65 = vec3<f32>(x_4218.x, x_4218.y, x_4220);
            let x_4227 : vec3<f32> = txVec65;
            let x_4229 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4227.xy, x_4227.z);
            u_xlat12.x = x_4229;
            let x_4232 : f32 = u_xlat12.x;
            let x_4234 : f32 = u_xlat19.y;
            u_xlat12.x = (x_4232 * x_4234);
            let x_4238 : f32 = u_xlat19.x;
            let x_4239 : f32 = u_xlat89;
            let x_4242 : f32 = u_xlat12.x;
            u_xlat89 = ((x_4238 * x_4239) + x_4242);
            let x_4245 : vec2<f32> = u_xlat64;
            let x_4247 : f32 = u_xlat11.z;
            txVec66 = vec3<f32>(x_4245.x, x_4245.y, x_4247);
            let x_4254 : vec3<f32> = txVec66;
            let x_4256 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4254.xy, x_4254.z);
            u_xlat12.x = x_4256;
            let x_4259 : f32 = u_xlat19.z;
            let x_4261 : f32 = u_xlat12.x;
            let x_4263 : f32 = u_xlat89;
            u_xlat89 = ((x_4259 * x_4261) + x_4263);
            let x_4266 : vec4<f32> = u_xlat15;
            let x_4267 : vec2<f32> = vec2<f32>(x_4266.x, x_4266.y);
            let x_4269 : f32 = u_xlat11.z;
            txVec67 = vec3<f32>(x_4267.x, x_4267.y, x_4269);
            let x_4276 : vec3<f32> = txVec67;
            let x_4278 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4276.xy, x_4276.z);
            u_xlat12.x = x_4278;
            let x_4281 : f32 = u_xlat19.w;
            let x_4283 : f32 = u_xlat12.x;
            let x_4285 : f32 = u_xlat89;
            u_xlat89 = ((x_4281 * x_4283) + x_4285);
            let x_4288 : vec4<f32> = u_xlat17;
            let x_4289 : vec2<f32> = vec2<f32>(x_4288.x, x_4288.y);
            let x_4291 : f32 = u_xlat11.z;
            txVec68 = vec3<f32>(x_4289.x, x_4289.y, x_4291);
            let x_4298 : vec3<f32> = txVec68;
            let x_4300 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4298.xy, x_4298.z);
            u_xlat12.x = x_4300;
            let x_4303 : f32 = u_xlat20.x;
            let x_4305 : f32 = u_xlat12.x;
            let x_4307 : f32 = u_xlat89;
            u_xlat89 = ((x_4303 * x_4305) + x_4307);
            let x_4310 : vec4<f32> = u_xlat17;
            let x_4311 : vec2<f32> = vec2<f32>(x_4310.z, x_4310.w);
            let x_4313 : f32 = u_xlat11.z;
            txVec69 = vec3<f32>(x_4311.x, x_4311.y, x_4313);
            let x_4320 : vec3<f32> = txVec69;
            let x_4322 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4320.xy, x_4320.z);
            u_xlat12.x = x_4322;
            let x_4325 : f32 = u_xlat20.y;
            let x_4327 : f32 = u_xlat12.x;
            let x_4329 : f32 = u_xlat89;
            u_xlat89 = ((x_4325 * x_4327) + x_4329);
            let x_4332 : vec4<f32> = u_xlat15;
            let x_4333 : vec2<f32> = vec2<f32>(x_4332.z, x_4332.w);
            let x_4335 : f32 = u_xlat11.z;
            txVec70 = vec3<f32>(x_4333.x, x_4333.y, x_4335);
            let x_4342 : vec3<f32> = txVec70;
            let x_4344 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4342.xy, x_4342.z);
            u_xlat12.x = x_4344;
            let x_4347 : f32 = u_xlat20.z;
            let x_4349 : f32 = u_xlat12.x;
            let x_4351 : f32 = u_xlat89;
            u_xlat89 = ((x_4347 * x_4349) + x_4351);
            let x_4354 : vec4<f32> = u_xlat14;
            let x_4355 : vec2<f32> = vec2<f32>(x_4354.x, x_4354.y);
            let x_4357 : f32 = u_xlat11.z;
            txVec71 = vec3<f32>(x_4355.x, x_4355.y, x_4357);
            let x_4364 : vec3<f32> = txVec71;
            let x_4366 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4364.xy, x_4364.z);
            u_xlat12.x = x_4366;
            let x_4369 : f32 = u_xlat20.w;
            let x_4371 : f32 = u_xlat12.x;
            let x_4373 : f32 = u_xlat89;
            u_xlat89 = ((x_4369 * x_4371) + x_4373);
            let x_4376 : vec4<f32> = u_xlat14;
            let x_4377 : vec2<f32> = vec2<f32>(x_4376.z, x_4376.w);
            let x_4379 : f32 = u_xlat11.z;
            txVec72 = vec3<f32>(x_4377.x, x_4377.y, x_4379);
            let x_4386 : vec3<f32> = txVec72;
            let x_4388 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4386.xy, x_4386.z);
            u_xlat12.x = x_4388;
            let x_4390 : f32 = u_xlat88;
            let x_4392 : f32 = u_xlat12.x;
            let x_4394 : f32 = u_xlat89;
            u_xlat86 = ((x_4390 * x_4392) + x_4394);
          } else {
            let x_4397 : vec4<f32> = u_xlat11;
            let x_4400 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4403 : vec2<f32> = ((vec2<f32>(x_4397.x, x_4397.y) * vec2<f32>(x_4400.z, x_4400.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4404 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4403.x, x_4403.y, x_4404.z, x_4404.w);
            let x_4406 : vec4<f32> = u_xlat12;
            let x_4408 : vec2<f32> = floor(vec2<f32>(x_4406.x, x_4406.y));
            let x_4409 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4408.x, x_4408.y, x_4409.z, x_4409.w);
            let x_4411 : vec4<f32> = u_xlat11;
            let x_4414 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4417 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4411.x, x_4411.y) * vec2<f32>(x_4414.z, x_4414.w)) + -(vec2<f32>(x_4417.x, x_4417.y)));
            let x_4421 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4421.x, x_4421.x, x_4421.y, x_4421.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4424 : vec4<f32> = u_xlat13;
            let x_4426 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4424.x, x_4424.x, x_4424.z, x_4424.z) * vec4<f32>(x_4426.x, x_4426.x, x_4426.z, x_4426.z));
            let x_4429 : vec4<f32> = u_xlat14;
            let x_4431 : vec2<f32> = (vec2<f32>(x_4429.y, x_4429.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4432 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4432.x, x_4431.x, x_4432.z, x_4431.y);
            let x_4434 : vec4<f32> = u_xlat14;
            let x_4437 : vec2<f32> = u_xlat64;
            let x_4439 : vec2<f32> = ((vec2<f32>(x_4434.x, x_4434.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4437));
            let x_4440 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4439.x, x_4440.y, x_4439.y, x_4440.w);
            let x_4442 : vec2<f32> = u_xlat64;
            let x_4444 : vec2<f32> = (-(x_4442) + vec2<f32>(1.0f, 1.0f));
            let x_4445 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4444.x, x_4444.y, x_4445.z, x_4445.w);
            let x_4447 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_4447, vec2<f32>(0.0f, 0.0f));
            let x_4449 : vec2<f32> = u_xlat66;
            let x_4451 : vec2<f32> = u_xlat66;
            let x_4453 : vec4<f32> = u_xlat14;
            let x_4455 : vec2<f32> = ((-(x_4449) * x_4451) + vec2<f32>(x_4453.x, x_4453.y));
            let x_4456 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4455.x, x_4455.y, x_4456.z, x_4456.w);
            let x_4458 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_4458, vec2<f32>(0.0f, 0.0f));
            let x_4461 : vec2<f32> = u_xlat66;
            let x_4463 : vec2<f32> = u_xlat66;
            let x_4465 : vec4<f32> = u_xlat13;
            let x_4467 : vec2<f32> = ((-(x_4461) * x_4463) + vec2<f32>(x_4465.y, x_4465.w));
            let x_4468 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_4467.x, x_4468.y, x_4467.y);
            let x_4470 : vec4<f32> = u_xlat14;
            let x_4472 : vec2<f32> = (vec2<f32>(x_4470.x, x_4470.y) + vec2<f32>(2.0f, 2.0f));
            let x_4473 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4472.x, x_4472.y, x_4473.z, x_4473.w);
            let x_4475 : vec3<f32> = u_xlat39;
            let x_4477 : vec2<f32> = (vec2<f32>(x_4475.x, x_4475.z) + vec2<f32>(2.0f, 2.0f));
            let x_4478 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4478.x, x_4477.x, x_4478.z, x_4477.y);
            let x_4481 : f32 = u_xlat13.y;
            u_xlat16.z = (x_4481 * 0.08163200318813323975f);
            let x_4484 : vec4<f32> = u_xlat13;
            let x_4486 : vec3<f32> = (vec3<f32>(x_4484.z, x_4484.x, x_4484.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4487 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4486.x, x_4486.y, x_4486.z, x_4487.w);
            let x_4489 : vec4<f32> = u_xlat14;
            let x_4491 : vec2<f32> = (vec2<f32>(x_4489.x, x_4489.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4492 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4491.x, x_4491.y, x_4492.z, x_4492.w);
            let x_4495 : f32 = u_xlat17.y;
            u_xlat16.x = x_4495;
            let x_4497 : vec2<f32> = u_xlat64;
            let x_4500 : vec2<f32> = ((vec2<f32>(x_4497.x, x_4497.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4501 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4501.x, x_4500.x, x_4501.z, x_4500.y);
            let x_4503 : vec2<f32> = u_xlat64;
            let x_4506 : vec2<f32> = ((vec2<f32>(x_4503.x, x_4503.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4507 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4506.x, x_4507.y, x_4506.y, x_4507.w);
            let x_4510 : f32 = u_xlat13.x;
            u_xlat14.y = x_4510;
            let x_4513 : f32 = u_xlat15.y;
            u_xlat14.w = x_4513;
            let x_4515 : vec4<f32> = u_xlat14;
            let x_4516 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4515 + x_4516);
            let x_4518 : vec2<f32> = u_xlat64;
            let x_4521 : vec2<f32> = ((vec2<f32>(x_4518.y, x_4518.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4522 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4522.x, x_4521.x, x_4522.z, x_4521.y);
            let x_4524 : vec2<f32> = u_xlat64;
            let x_4527 : vec2<f32> = ((vec2<f32>(x_4524.y, x_4524.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4528 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4527.x, x_4528.y, x_4527.y, x_4528.w);
            let x_4531 : f32 = u_xlat13.y;
            u_xlat15.y = x_4531;
            let x_4533 : vec4<f32> = u_xlat15;
            let x_4534 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4533 + x_4534);
            let x_4536 : vec4<f32> = u_xlat14;
            let x_4537 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_4536 / x_4537);
            let x_4539 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4539 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4541 : vec4<f32> = u_xlat15;
            let x_4542 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_4541 / x_4542);
            let x_4544 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4544 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4546 : vec4<f32> = u_xlat14;
            let x_4549 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4546.w, x_4546.x, x_4546.y, x_4546.z) * vec4<f32>(x_4549.x, x_4549.x, x_4549.x, x_4549.x));
            let x_4552 : vec4<f32> = u_xlat15;
            let x_4555 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_4552.x, x_4552.w, x_4552.y, x_4552.z) * vec4<f32>(x_4555.y, x_4555.y, x_4555.y, x_4555.y));
            let x_4558 : vec4<f32> = u_xlat14;
            let x_4559 : vec3<f32> = vec3<f32>(x_4558.y, x_4558.z, x_4558.w);
            let x_4560 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4559.x, x_4560.y, x_4559.y, x_4559.z);
            let x_4563 : f32 = u_xlat15.x;
            u_xlat17.y = x_4563;
            let x_4565 : vec4<f32> = u_xlat12;
            let x_4568 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4571 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4565.x, x_4565.y, x_4565.x, x_4565.y) * vec4<f32>(x_4568.x, x_4568.y, x_4568.x, x_4568.y)) + vec4<f32>(x_4571.x, x_4571.y, x_4571.z, x_4571.y));
            let x_4574 : vec4<f32> = u_xlat12;
            let x_4577 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4580 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_4574.x, x_4574.y) * vec2<f32>(x_4577.x, x_4577.y)) + vec2<f32>(x_4580.w, x_4580.y));
            let x_4584 : f32 = u_xlat17.y;
            u_xlat14.y = x_4584;
            let x_4587 : f32 = u_xlat15.z;
            u_xlat17.y = x_4587;
            let x_4589 : vec4<f32> = u_xlat12;
            let x_4592 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4595 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_4589.x, x_4589.y, x_4589.x, x_4589.y) * vec4<f32>(x_4592.x, x_4592.y, x_4592.x, x_4592.y)) + vec4<f32>(x_4595.x, x_4595.y, x_4595.z, x_4595.y));
            let x_4598 : vec4<f32> = u_xlat12;
            let x_4601 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4604 : vec4<f32> = u_xlat17;
            let x_4606 : vec2<f32> = ((vec2<f32>(x_4598.x, x_4598.y) * vec2<f32>(x_4601.x, x_4601.y)) + vec2<f32>(x_4604.w, x_4604.y));
            let x_4607 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_4606.x, x_4606.y, x_4607.z, x_4607.w);
            let x_4610 : f32 = u_xlat17.y;
            u_xlat14.z = x_4610;
            let x_4613 : vec4<f32> = u_xlat12;
            let x_4616 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4619 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4613.x, x_4613.y, x_4613.x, x_4613.y) * vec4<f32>(x_4616.x, x_4616.y, x_4616.x, x_4616.y)) + vec4<f32>(x_4619.x, x_4619.y, x_4619.x, x_4619.z));
            let x_4623 : f32 = u_xlat15.w;
            u_xlat17.y = x_4623;
            let x_4626 : vec4<f32> = u_xlat12;
            let x_4629 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4632 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4626.x, x_4626.y, x_4626.x, x_4626.y) * vec4<f32>(x_4629.x, x_4629.y, x_4629.x, x_4629.y)) + vec4<f32>(x_4632.x, x_4632.y, x_4632.z, x_4632.y));
            let x_4636 : vec4<f32> = u_xlat12;
            let x_4639 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4642 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_4636.x, x_4636.y) * vec2<f32>(x_4639.x, x_4639.y)) + vec2<f32>(x_4642.w, x_4642.y));
            let x_4646 : f32 = u_xlat17.y;
            u_xlat14.w = x_4646;
            let x_4649 : vec4<f32> = u_xlat12;
            let x_4652 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4655 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4649.x, x_4649.y) * vec2<f32>(x_4652.x, x_4652.y)) + vec2<f32>(x_4655.x, x_4655.w));
            let x_4658 : vec4<f32> = u_xlat17;
            let x_4659 : vec3<f32> = vec3<f32>(x_4658.x, x_4658.z, x_4658.w);
            let x_4660 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4659.x, x_4660.y, x_4659.y, x_4659.z);
            let x_4662 : vec4<f32> = u_xlat12;
            let x_4665 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4668 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4662.x, x_4662.y, x_4662.x, x_4662.y) * vec4<f32>(x_4665.x, x_4665.y, x_4665.x, x_4665.y)) + vec4<f32>(x_4668.x, x_4668.y, x_4668.z, x_4668.y));
            let x_4672 : vec4<f32> = u_xlat12;
            let x_4675 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4678 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4672.x, x_4672.y) * vec2<f32>(x_4675.x, x_4675.y)) + vec2<f32>(x_4678.w, x_4678.y));
            let x_4682 : f32 = u_xlat14.x;
            u_xlat15.x = x_4682;
            let x_4684 : vec4<f32> = u_xlat12;
            let x_4687 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4690 : vec4<f32> = u_xlat15;
            let x_4692 : vec2<f32> = ((vec2<f32>(x_4684.x, x_4684.y) * vec2<f32>(x_4687.x, x_4687.y)) + vec2<f32>(x_4690.x, x_4690.y));
            let x_4693 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4692.x, x_4692.y, x_4693.z, x_4693.w);
            let x_4696 : vec4<f32> = u_xlat13;
            let x_4698 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4696.x, x_4696.x, x_4696.x, x_4696.x) * x_4698);
            let x_4701 : vec4<f32> = u_xlat13;
            let x_4703 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4701.y, x_4701.y, x_4701.y, x_4701.y) * x_4703);
            let x_4706 : vec4<f32> = u_xlat13;
            let x_4708 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4706.z, x_4706.z, x_4706.z, x_4706.z) * x_4708);
            let x_4710 : vec4<f32> = u_xlat13;
            let x_4712 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4710.w, x_4710.w, x_4710.w, x_4710.w) * x_4712);
            let x_4715 : vec4<f32> = u_xlat18;
            let x_4716 : vec2<f32> = vec2<f32>(x_4715.x, x_4715.y);
            let x_4718 : f32 = u_xlat11.z;
            txVec73 = vec3<f32>(x_4716.x, x_4716.y, x_4718);
            let x_4725 : vec3<f32> = txVec73;
            let x_4727 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4725.xy, x_4725.z);
            u_xlat88 = x_4727;
            let x_4729 : vec4<f32> = u_xlat18;
            let x_4730 : vec2<f32> = vec2<f32>(x_4729.z, x_4729.w);
            let x_4732 : f32 = u_xlat11.z;
            txVec74 = vec3<f32>(x_4730.x, x_4730.y, x_4732);
            let x_4739 : vec3<f32> = txVec74;
            let x_4741 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4739.xy, x_4739.z);
            u_xlat89 = x_4741;
            let x_4742 : f32 = u_xlat89;
            let x_4744 : f32 = u_xlat23.y;
            u_xlat89 = (x_4742 * x_4744);
            let x_4747 : f32 = u_xlat23.x;
            let x_4748 : f32 = u_xlat88;
            let x_4750 : f32 = u_xlat89;
            u_xlat88 = ((x_4747 * x_4748) + x_4750);
            let x_4753 : vec2<f32> = u_xlat64;
            let x_4755 : f32 = u_xlat11.z;
            txVec75 = vec3<f32>(x_4753.x, x_4753.y, x_4755);
            let x_4762 : vec3<f32> = txVec75;
            let x_4764 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4762.xy, x_4762.z);
            u_xlat89 = x_4764;
            let x_4766 : f32 = u_xlat23.z;
            let x_4767 : f32 = u_xlat89;
            let x_4769 : f32 = u_xlat88;
            u_xlat88 = ((x_4766 * x_4767) + x_4769);
            let x_4772 : vec4<f32> = u_xlat21;
            let x_4773 : vec2<f32> = vec2<f32>(x_4772.x, x_4772.y);
            let x_4775 : f32 = u_xlat11.z;
            txVec76 = vec3<f32>(x_4773.x, x_4773.y, x_4775);
            let x_4782 : vec3<f32> = txVec76;
            let x_4784 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4782.xy, x_4782.z);
            u_xlat89 = x_4784;
            let x_4786 : f32 = u_xlat23.w;
            let x_4787 : f32 = u_xlat89;
            let x_4789 : f32 = u_xlat88;
            u_xlat88 = ((x_4786 * x_4787) + x_4789);
            let x_4792 : vec4<f32> = u_xlat19;
            let x_4793 : vec2<f32> = vec2<f32>(x_4792.x, x_4792.y);
            let x_4795 : f32 = u_xlat11.z;
            txVec77 = vec3<f32>(x_4793.x, x_4793.y, x_4795);
            let x_4802 : vec3<f32> = txVec77;
            let x_4804 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4802.xy, x_4802.z);
            u_xlat89 = x_4804;
            let x_4806 : f32 = u_xlat24.x;
            let x_4807 : f32 = u_xlat89;
            let x_4809 : f32 = u_xlat88;
            u_xlat88 = ((x_4806 * x_4807) + x_4809);
            let x_4812 : vec4<f32> = u_xlat19;
            let x_4813 : vec2<f32> = vec2<f32>(x_4812.z, x_4812.w);
            let x_4815 : f32 = u_xlat11.z;
            txVec78 = vec3<f32>(x_4813.x, x_4813.y, x_4815);
            let x_4822 : vec3<f32> = txVec78;
            let x_4824 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4822.xy, x_4822.z);
            u_xlat89 = x_4824;
            let x_4826 : f32 = u_xlat24.y;
            let x_4827 : f32 = u_xlat89;
            let x_4829 : f32 = u_xlat88;
            u_xlat88 = ((x_4826 * x_4827) + x_4829);
            let x_4832 : vec4<f32> = u_xlat20;
            let x_4833 : vec2<f32> = vec2<f32>(x_4832.x, x_4832.y);
            let x_4835 : f32 = u_xlat11.z;
            txVec79 = vec3<f32>(x_4833.x, x_4833.y, x_4835);
            let x_4842 : vec3<f32> = txVec79;
            let x_4844 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4842.xy, x_4842.z);
            u_xlat89 = x_4844;
            let x_4846 : f32 = u_xlat24.z;
            let x_4847 : f32 = u_xlat89;
            let x_4849 : f32 = u_xlat88;
            u_xlat88 = ((x_4846 * x_4847) + x_4849);
            let x_4852 : vec4<f32> = u_xlat21;
            let x_4853 : vec2<f32> = vec2<f32>(x_4852.z, x_4852.w);
            let x_4855 : f32 = u_xlat11.z;
            txVec80 = vec3<f32>(x_4853.x, x_4853.y, x_4855);
            let x_4862 : vec3<f32> = txVec80;
            let x_4864 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4862.xy, x_4862.z);
            u_xlat89 = x_4864;
            let x_4866 : f32 = u_xlat24.w;
            let x_4867 : f32 = u_xlat89;
            let x_4869 : f32 = u_xlat88;
            u_xlat88 = ((x_4866 * x_4867) + x_4869);
            let x_4872 : vec4<f32> = u_xlat22;
            let x_4873 : vec2<f32> = vec2<f32>(x_4872.x, x_4872.y);
            let x_4875 : f32 = u_xlat11.z;
            txVec81 = vec3<f32>(x_4873.x, x_4873.y, x_4875);
            let x_4882 : vec3<f32> = txVec81;
            let x_4884 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4882.xy, x_4882.z);
            u_xlat89 = x_4884;
            let x_4886 : f32 = u_xlat25.x;
            let x_4887 : f32 = u_xlat89;
            let x_4889 : f32 = u_xlat88;
            u_xlat88 = ((x_4886 * x_4887) + x_4889);
            let x_4892 : vec4<f32> = u_xlat22;
            let x_4893 : vec2<f32> = vec2<f32>(x_4892.z, x_4892.w);
            let x_4895 : f32 = u_xlat11.z;
            txVec82 = vec3<f32>(x_4893.x, x_4893.y, x_4895);
            let x_4902 : vec3<f32> = txVec82;
            let x_4904 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4902.xy, x_4902.z);
            u_xlat89 = x_4904;
            let x_4906 : f32 = u_xlat25.y;
            let x_4907 : f32 = u_xlat89;
            let x_4909 : f32 = u_xlat88;
            u_xlat88 = ((x_4906 * x_4907) + x_4909);
            let x_4912 : vec2<f32> = u_xlat40;
            let x_4914 : f32 = u_xlat11.z;
            txVec83 = vec3<f32>(x_4912.x, x_4912.y, x_4914);
            let x_4921 : vec3<f32> = txVec83;
            let x_4923 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4921.xy, x_4921.z);
            u_xlat89 = x_4923;
            let x_4925 : f32 = u_xlat25.z;
            let x_4926 : f32 = u_xlat89;
            let x_4928 : f32 = u_xlat88;
            u_xlat88 = ((x_4925 * x_4926) + x_4928);
            let x_4931 : vec2<f32> = u_xlat72;
            let x_4933 : f32 = u_xlat11.z;
            txVec84 = vec3<f32>(x_4931.x, x_4931.y, x_4933);
            let x_4940 : vec3<f32> = txVec84;
            let x_4942 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4940.xy, x_4940.z);
            u_xlat89 = x_4942;
            let x_4944 : f32 = u_xlat25.w;
            let x_4945 : f32 = u_xlat89;
            let x_4947 : f32 = u_xlat88;
            u_xlat88 = ((x_4944 * x_4945) + x_4947);
            let x_4950 : vec4<f32> = u_xlat17;
            let x_4951 : vec2<f32> = vec2<f32>(x_4950.x, x_4950.y);
            let x_4953 : f32 = u_xlat11.z;
            txVec85 = vec3<f32>(x_4951.x, x_4951.y, x_4953);
            let x_4960 : vec3<f32> = txVec85;
            let x_4962 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4960.xy, x_4960.z);
            u_xlat89 = x_4962;
            let x_4964 : f32 = u_xlat13.x;
            let x_4965 : f32 = u_xlat89;
            let x_4967 : f32 = u_xlat88;
            u_xlat88 = ((x_4964 * x_4965) + x_4967);
            let x_4970 : vec4<f32> = u_xlat17;
            let x_4971 : vec2<f32> = vec2<f32>(x_4970.z, x_4970.w);
            let x_4973 : f32 = u_xlat11.z;
            txVec86 = vec3<f32>(x_4971.x, x_4971.y, x_4973);
            let x_4980 : vec3<f32> = txVec86;
            let x_4982 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4980.xy, x_4980.z);
            u_xlat89 = x_4982;
            let x_4984 : f32 = u_xlat13.y;
            let x_4985 : f32 = u_xlat89;
            let x_4987 : f32 = u_xlat88;
            u_xlat88 = ((x_4984 * x_4985) + x_4987);
            let x_4990 : vec2<f32> = u_xlat67;
            let x_4992 : f32 = u_xlat11.z;
            txVec87 = vec3<f32>(x_4990.x, x_4990.y, x_4992);
            let x_4999 : vec3<f32> = txVec87;
            let x_5001 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4999.xy, x_4999.z);
            u_xlat89 = x_5001;
            let x_5003 : f32 = u_xlat13.z;
            let x_5004 : f32 = u_xlat89;
            let x_5006 : f32 = u_xlat88;
            u_xlat88 = ((x_5003 * x_5004) + x_5006);
            let x_5009 : vec4<f32> = u_xlat12;
            let x_5010 : vec2<f32> = vec2<f32>(x_5009.x, x_5009.y);
            let x_5012 : f32 = u_xlat11.z;
            txVec88 = vec3<f32>(x_5010.x, x_5010.y, x_5012);
            let x_5019 : vec3<f32> = txVec88;
            let x_5021 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5019.xy, x_5019.z);
            u_xlat89 = x_5021;
            let x_5023 : f32 = u_xlat13.w;
            let x_5024 : f32 = u_xlat89;
            let x_5026 : f32 = u_xlat88;
            u_xlat86 = ((x_5023 * x_5024) + x_5026);
          }
        }
      } else {
        let x_5030 : vec4<f32> = u_xlat11;
        let x_5031 : vec2<f32> = vec2<f32>(x_5030.x, x_5030.y);
        let x_5033 : f32 = u_xlat11.z;
        txVec89 = vec3<f32>(x_5031.x, x_5031.y, x_5033);
        let x_5040 : vec3<f32> = txVec89;
        let x_5042 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5040.xy, x_5040.z);
        u_xlat86 = x_5042;
      }
      let x_5043 : i32 = u_xlati81;
      let x_5045 : f32 = x_241.x_AdditionalShadowParams[x_5043].x;
      u_xlat88 = (1.0f + -(x_5045));
      let x_5048 : f32 = u_xlat86;
      let x_5049 : i32 = u_xlati81;
      let x_5051 : f32 = x_241.x_AdditionalShadowParams[x_5049].x;
      let x_5053 : f32 = u_xlat88;
      u_xlat86 = ((x_5048 * x_5051) + x_5053);
      let x_5056 : f32 = u_xlat11.z;
      u_xlatb88 = (0.0f >= x_5056);
      let x_5059 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_5059 >= 1.0f);
      let x_5062 : bool = u_xlatb88;
      let x_5064 : bool = u_xlatb11.x;
      u_xlatb88 = (x_5062 | x_5064);
      let x_5066 : bool = u_xlatb88;
      let x_5067 : f32 = u_xlat86;
      u_xlat86 = select(x_5067, 1.0f, x_5066);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_5070 : f32 = u_xlat86;
    u_xlat88 = (-(x_5070) + 1.0f);
    let x_5074 : f32 = u_xlat2.x;
    let x_5075 : f32 = u_xlat88;
    let x_5077 : f32 = u_xlat86;
    u_xlat86 = ((x_5074 * x_5075) + x_5077);
    let x_5080 : i32 = u_xlati81;
    u_xlati88 = (1i << bitcast<u32>((x_5080 & 31i)));
    let x_5084 : i32 = u_xlati88;
    let x_5087 : f32 = x_3167.x_AdditionalLightsCookieEnableBits;
    u_xlati88 = bitcast<i32>((bitcast<u32>(x_5084) & bitcast<u32>(x_5087)));
    let x_5091 : i32 = u_xlati88;
    if ((x_5091 != 0i)) {
      let x_5095 : i32 = u_xlati81;
      let x_5097 : f32 = x_3167.x_AdditionalLightsLightTypes[x_5095].el;
      u_xlati88 = i32(x_5097);
      let x_5100 : i32 = u_xlati88;
      u_xlati11 = select(1i, 0i, (x_5100 != 0i));
      let x_5104 : i32 = u_xlati81;
      u_xlati37 = (x_5104 << bitcast<u32>(2i));
      let x_5106 : i32 = u_xlati11;
      if ((x_5106 != 0i)) {
        let x_5110 : vec3<f32> = vs_INTERP8;
        let x_5112 : i32 = u_xlati37;
        let x_5115 : i32 = u_xlati37;
        let x_5119 : vec4<f32> = x_3167.x_AdditionalLightsWorldToLights[((x_5112 + 1i) / 4i)][((x_5115 + 1i) % 4i)];
        let x_5121 : vec3<f32> = (vec3<f32>(x_5110.y, x_5110.y, x_5110.y) * vec3<f32>(x_5119.x, x_5119.y, x_5119.w));
        let x_5122 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5121.x, x_5122.y, x_5121.y, x_5121.z);
        let x_5124 : i32 = u_xlati37;
        let x_5126 : i32 = u_xlati37;
        let x_5129 : vec4<f32> = x_3167.x_AdditionalLightsWorldToLights[(x_5124 / 4i)][(x_5126 % 4i)];
        let x_5131 : vec3<f32> = vs_INTERP8;
        let x_5134 : vec4<f32> = u_xlat11;
        let x_5136 : vec3<f32> = ((vec3<f32>(x_5129.x, x_5129.y, x_5129.w) * vec3<f32>(x_5131.x, x_5131.x, x_5131.x)) + vec3<f32>(x_5134.x, x_5134.z, x_5134.w));
        let x_5137 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5136.x, x_5137.y, x_5136.y, x_5136.z);
        let x_5139 : i32 = u_xlati37;
        let x_5142 : i32 = u_xlati37;
        let x_5146 : vec4<f32> = x_3167.x_AdditionalLightsWorldToLights[((x_5139 + 2i) / 4i)][((x_5142 + 2i) % 4i)];
        let x_5148 : vec3<f32> = vs_INTERP8;
        let x_5151 : vec4<f32> = u_xlat11;
        let x_5153 : vec3<f32> = ((vec3<f32>(x_5146.x, x_5146.y, x_5146.w) * vec3<f32>(x_5148.z, x_5148.z, x_5148.z)) + vec3<f32>(x_5151.x, x_5151.z, x_5151.w));
        let x_5154 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5153.x, x_5154.y, x_5153.y, x_5153.z);
        let x_5156 : vec4<f32> = u_xlat11;
        let x_5158 : i32 = u_xlati37;
        let x_5161 : i32 = u_xlati37;
        let x_5165 : vec4<f32> = x_3167.x_AdditionalLightsWorldToLights[((x_5158 + 3i) / 4i)][((x_5161 + 3i) % 4i)];
        let x_5167 : vec3<f32> = (vec3<f32>(x_5156.x, x_5156.z, x_5156.w) + vec3<f32>(x_5165.x, x_5165.y, x_5165.w));
        let x_5168 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5167.x, x_5168.y, x_5167.y, x_5167.z);
        let x_5170 : vec4<f32> = u_xlat11;
        let x_5172 : vec4<f32> = u_xlat11;
        let x_5174 : vec2<f32> = (vec2<f32>(x_5170.x, x_5170.z) / vec2<f32>(x_5172.w, x_5172.w));
        let x_5175 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5174.x, x_5175.y, x_5174.y, x_5175.w);
        let x_5177 : vec4<f32> = u_xlat11;
        let x_5180 : vec2<f32> = ((vec2<f32>(x_5177.x, x_5177.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_5181 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5180.x, x_5181.y, x_5180.y, x_5181.w);
        let x_5183 : vec4<f32> = u_xlat11;
        let x_5187 : vec2<f32> = clamp(vec2<f32>(x_5183.x, x_5183.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_5188 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5187.x, x_5188.y, x_5187.y, x_5188.w);
        let x_5190 : i32 = u_xlati81;
        let x_5192 : vec4<f32> = x_3167.x_AdditionalLightsCookieAtlasUVRects[x_5190];
        let x_5194 : vec4<f32> = u_xlat11;
        let x_5197 : i32 = u_xlati81;
        let x_5199 : vec4<f32> = x_3167.x_AdditionalLightsCookieAtlasUVRects[x_5197];
        let x_5201 : vec2<f32> = ((vec2<f32>(x_5192.x, x_5192.y) * vec2<f32>(x_5194.x, x_5194.z)) + vec2<f32>(x_5199.z, x_5199.w));
        let x_5202 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5201.x, x_5202.y, x_5201.y, x_5202.w);
      } else {
        let x_5205 : i32 = u_xlati88;
        u_xlatb88 = (x_5205 == 1i);
        let x_5207 : bool = u_xlatb88;
        u_xlati88 = select(0i, 1i, x_5207);
        let x_5209 : i32 = u_xlati88;
        if ((x_5209 != 0i)) {
          let x_5213 : vec3<f32> = vs_INTERP8;
          let x_5215 : i32 = u_xlati37;
          let x_5218 : i32 = u_xlati37;
          let x_5222 : vec4<f32> = x_3167.x_AdditionalLightsWorldToLights[((x_5215 + 1i) / 4i)][((x_5218 + 1i) % 4i)];
          let x_5224 : vec2<f32> = (vec2<f32>(x_5213.y, x_5213.y) * vec2<f32>(x_5222.x, x_5222.y));
          let x_5225 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5224.x, x_5224.y, x_5225.z, x_5225.w);
          let x_5227 : i32 = u_xlati37;
          let x_5229 : i32 = u_xlati37;
          let x_5232 : vec4<f32> = x_3167.x_AdditionalLightsWorldToLights[(x_5227 / 4i)][(x_5229 % 4i)];
          let x_5234 : vec3<f32> = vs_INTERP8;
          let x_5237 : vec4<f32> = u_xlat12;
          let x_5239 : vec2<f32> = ((vec2<f32>(x_5232.x, x_5232.y) * vec2<f32>(x_5234.x, x_5234.x)) + vec2<f32>(x_5237.x, x_5237.y));
          let x_5240 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5239.x, x_5239.y, x_5240.z, x_5240.w);
          let x_5242 : i32 = u_xlati37;
          let x_5245 : i32 = u_xlati37;
          let x_5249 : vec4<f32> = x_3167.x_AdditionalLightsWorldToLights[((x_5242 + 2i) / 4i)][((x_5245 + 2i) % 4i)];
          let x_5251 : vec3<f32> = vs_INTERP8;
          let x_5254 : vec4<f32> = u_xlat12;
          let x_5256 : vec2<f32> = ((vec2<f32>(x_5249.x, x_5249.y) * vec2<f32>(x_5251.z, x_5251.z)) + vec2<f32>(x_5254.x, x_5254.y));
          let x_5257 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5256.x, x_5256.y, x_5257.z, x_5257.w);
          let x_5259 : vec4<f32> = u_xlat12;
          let x_5261 : i32 = u_xlati37;
          let x_5264 : i32 = u_xlati37;
          let x_5268 : vec4<f32> = x_3167.x_AdditionalLightsWorldToLights[((x_5261 + 3i) / 4i)][((x_5264 + 3i) % 4i)];
          let x_5270 : vec2<f32> = (vec2<f32>(x_5259.x, x_5259.y) + vec2<f32>(x_5268.x, x_5268.y));
          let x_5271 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5270.x, x_5270.y, x_5271.z, x_5271.w);
          let x_5273 : vec4<f32> = u_xlat12;
          let x_5276 : vec2<f32> = ((vec2<f32>(x_5273.x, x_5273.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5277 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5276.x, x_5276.y, x_5277.z, x_5277.w);
          let x_5279 : vec4<f32> = u_xlat12;
          let x_5281 : vec2<f32> = fract(vec2<f32>(x_5279.x, x_5279.y));
          let x_5282 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5281.x, x_5281.y, x_5282.z, x_5282.w);
          let x_5284 : i32 = u_xlati81;
          let x_5286 : vec4<f32> = x_3167.x_AdditionalLightsCookieAtlasUVRects[x_5284];
          let x_5288 : vec4<f32> = u_xlat12;
          let x_5291 : i32 = u_xlati81;
          let x_5293 : vec4<f32> = x_3167.x_AdditionalLightsCookieAtlasUVRects[x_5291];
          let x_5295 : vec2<f32> = ((vec2<f32>(x_5286.x, x_5286.y) * vec2<f32>(x_5288.x, x_5288.y)) + vec2<f32>(x_5293.z, x_5293.w));
          let x_5296 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5295.x, x_5296.y, x_5295.y, x_5296.w);
        } else {
          let x_5299 : vec3<f32> = vs_INTERP8;
          let x_5301 : i32 = u_xlati37;
          let x_5304 : i32 = u_xlati37;
          let x_5308 : vec4<f32> = x_3167.x_AdditionalLightsWorldToLights[((x_5301 + 1i) / 4i)][((x_5304 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_5299.y, x_5299.y, x_5299.y, x_5299.y) * x_5308);
          let x_5310 : i32 = u_xlati37;
          let x_5312 : i32 = u_xlati37;
          let x_5315 : vec4<f32> = x_3167.x_AdditionalLightsWorldToLights[(x_5310 / 4i)][(x_5312 % 4i)];
          let x_5316 : vec3<f32> = vs_INTERP8;
          let x_5319 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5315 * vec4<f32>(x_5316.x, x_5316.x, x_5316.x, x_5316.x)) + x_5319);
          let x_5321 : i32 = u_xlati37;
          let x_5324 : i32 = u_xlati37;
          let x_5328 : vec4<f32> = x_3167.x_AdditionalLightsWorldToLights[((x_5321 + 2i) / 4i)][((x_5324 + 2i) % 4i)];
          let x_5329 : vec3<f32> = vs_INTERP8;
          let x_5332 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5328 * vec4<f32>(x_5329.z, x_5329.z, x_5329.z, x_5329.z)) + x_5332);
          let x_5334 : vec4<f32> = u_xlat12;
          let x_5335 : i32 = u_xlati37;
          let x_5338 : i32 = u_xlati37;
          let x_5342 : vec4<f32> = x_3167.x_AdditionalLightsWorldToLights[((x_5335 + 3i) / 4i)][((x_5338 + 3i) % 4i)];
          u_xlat12 = (x_5334 + x_5342);
          let x_5344 : vec4<f32> = u_xlat12;
          let x_5346 : vec4<f32> = u_xlat12;
          let x_5348 : vec3<f32> = (vec3<f32>(x_5344.x, x_5344.y, x_5344.z) / vec3<f32>(x_5346.w, x_5346.w, x_5346.w));
          let x_5349 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5348.x, x_5348.y, x_5348.z, x_5349.w);
          let x_5351 : vec4<f32> = u_xlat12;
          let x_5353 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(vec3<f32>(x_5351.x, x_5351.y, x_5351.z), vec3<f32>(x_5353.x, x_5353.y, x_5353.z));
          let x_5356 : f32 = u_xlat88;
          u_xlat88 = inverseSqrt(x_5356);
          let x_5358 : f32 = u_xlat88;
          let x_5360 : vec4<f32> = u_xlat12;
          let x_5362 : vec3<f32> = (vec3<f32>(x_5358, x_5358, x_5358) * vec3<f32>(x_5360.x, x_5360.y, x_5360.z));
          let x_5363 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5362.x, x_5362.y, x_5362.z, x_5363.w);
          let x_5365 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(abs(vec3<f32>(x_5365.x, x_5365.y, x_5365.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_5370 : f32 = u_xlat88;
          u_xlat88 = max(x_5370, 0.00000099999999747524f);
          let x_5373 : f32 = u_xlat88;
          u_xlat88 = (1.0f / x_5373);
          let x_5375 : f32 = u_xlat88;
          let x_5377 : vec4<f32> = u_xlat12;
          let x_5379 : vec3<f32> = (vec3<f32>(x_5375, x_5375, x_5375) * vec3<f32>(x_5377.z, x_5377.x, x_5377.y));
          let x_5380 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_5379.x, x_5379.y, x_5379.z, x_5380.w);
          let x_5383 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_5383);
          let x_5387 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_5387, 0.0f, 1.0f);
          let x_5392 : vec4<f32> = u_xlat13;
          let x_5394 : vec4<bool> = (vec4<f32>(x_5392.y, x_5392.y, x_5392.z, x_5392.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_5395 : vec2<bool> = vec2<bool>(x_5394.x, x_5394.z);
          let x_5396 : vec3<bool> = u_xlatb37;
          u_xlatb37 = vec3<bool>(x_5395.x, x_5396.y, x_5395.y);
          let x_5399 : bool = u_xlatb37.x;
          if (x_5399) {
            let x_5404 : f32 = u_xlat13.x;
            x_5400 = x_5404;
          } else {
            let x_5407 : f32 = u_xlat13.x;
            x_5400 = -(x_5407);
          }
          let x_5409 : f32 = x_5400;
          u_xlat37.x = x_5409;
          let x_5412 : bool = u_xlatb37.z;
          if (x_5412) {
            let x_5417 : f32 = u_xlat13.x;
            x_5413 = x_5417;
          } else {
            let x_5420 : f32 = u_xlat13.x;
            x_5413 = -(x_5420);
          }
          let x_5422 : f32 = x_5413;
          u_xlat37.z = x_5422;
          let x_5424 : vec4<f32> = u_xlat12;
          let x_5426 : f32 = u_xlat88;
          let x_5429 : vec3<f32> = u_xlat37;
          let x_5431 : vec2<f32> = ((vec2<f32>(x_5424.x, x_5424.y) * vec2<f32>(x_5426, x_5426)) + vec2<f32>(x_5429.x, x_5429.z));
          let x_5432 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5431.x, x_5432.y, x_5431.y);
          let x_5434 : vec3<f32> = u_xlat37;
          let x_5437 : vec2<f32> = ((vec2<f32>(x_5434.x, x_5434.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5438 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5437.x, x_5438.y, x_5437.y);
          let x_5440 : vec3<f32> = u_xlat37;
          let x_5444 : vec2<f32> = clamp(vec2<f32>(x_5440.x, x_5440.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_5445 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5444.x, x_5445.y, x_5444.y);
          let x_5447 : i32 = u_xlati81;
          let x_5449 : vec4<f32> = x_3167.x_AdditionalLightsCookieAtlasUVRects[x_5447];
          let x_5451 : vec3<f32> = u_xlat37;
          let x_5454 : i32 = u_xlati81;
          let x_5456 : vec4<f32> = x_3167.x_AdditionalLightsCookieAtlasUVRects[x_5454];
          let x_5458 : vec2<f32> = ((vec2<f32>(x_5449.x, x_5449.y) * vec2<f32>(x_5451.x, x_5451.z)) + vec2<f32>(x_5456.z, x_5456.w));
          let x_5459 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5458.x, x_5459.y, x_5458.y, x_5459.w);
        }
      }
      let x_5466 : vec4<f32> = u_xlat11;
      let x_5468 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_5466.x, x_5466.z), 0.0f);
      u_xlat11 = x_5468;
      let x_5470 : bool = u_xlatb58.y;
      if (x_5470) {
        let x_5475 : f32 = u_xlat11.w;
        x_5471 = x_5475;
      } else {
        let x_5478 : f32 = u_xlat11.x;
        x_5471 = x_5478;
      }
      let x_5479 : f32 = x_5471;
      u_xlat88 = x_5479;
      let x_5481 : bool = u_xlatb58.x;
      if (x_5481) {
        let x_5485 : vec4<f32> = u_xlat11;
        x_5482 = vec3<f32>(x_5485.x, x_5485.y, x_5485.z);
      } else {
        let x_5488 : f32 = u_xlat88;
        x_5482 = vec3<f32>(x_5488, x_5488, x_5488);
      }
      let x_5490 : vec3<f32> = x_5482;
      let x_5491 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_5490.x, x_5490.y, x_5490.z, x_5491.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_5497 : vec4<f32> = u_xlat11;
    let x_5499 : i32 = u_xlati81;
    let x_5501 : vec4<f32> = x_3639.x_AdditionalLightsColor[x_5499];
    let x_5503 : vec3<f32> = (vec3<f32>(x_5497.x, x_5497.y, x_5497.z) * vec3<f32>(x_5501.x, x_5501.y, x_5501.z));
    let x_5504 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5503.x, x_5503.y, x_5503.z, x_5504.w);
    let x_5506 : f32 = u_xlat83;
    let x_5507 : f32 = u_xlat86;
    u_xlat81 = (x_5506 * x_5507);
    let x_5509 : vec4<f32> = u_xlat3;
    let x_5511 : vec4<f32> = u_xlat10;
    u_xlat83 = dot(vec3<f32>(x_5509.x, x_5509.y, x_5509.z), vec3<f32>(x_5511.x, x_5511.y, x_5511.z));
    let x_5514 : f32 = u_xlat83;
    u_xlat83 = clamp(x_5514, 0.0f, 1.0f);
    let x_5516 : f32 = u_xlat81;
    let x_5517 : f32 = u_xlat83;
    u_xlat81 = (x_5516 * x_5517);
    let x_5519 : f32 = u_xlat81;
    let x_5521 : vec4<f32> = u_xlat11;
    let x_5523 : vec3<f32> = (vec3<f32>(x_5519, x_5519, x_5519) * vec3<f32>(x_5521.x, x_5521.y, x_5521.z));
    let x_5524 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5523.x, x_5523.y, x_5523.z, x_5524.w);
    let x_5526 : vec3<f32> = u_xlat35;
    let x_5527 : f32 = u_xlat85;
    let x_5530 : vec3<f32> = u_xlat26;
    u_xlat35 = ((x_5526 * vec3<f32>(x_5527, x_5527, x_5527)) + x_5530);
    let x_5532 : vec3<f32> = u_xlat35;
    let x_5533 : vec3<f32> = u_xlat35;
    u_xlat81 = dot(x_5532, x_5533);
    let x_5535 : f32 = u_xlat81;
    u_xlat81 = max(x_5535, 1.17549435e-38f);
    let x_5537 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_5537);
    let x_5539 : f32 = u_xlat81;
    let x_5541 : vec3<f32> = u_xlat35;
    u_xlat35 = (vec3<f32>(x_5539, x_5539, x_5539) * x_5541);
    let x_5543 : vec4<f32> = u_xlat3;
    let x_5545 : vec3<f32> = u_xlat35;
    u_xlat81 = dot(vec3<f32>(x_5543.x, x_5543.y, x_5543.z), x_5545);
    let x_5547 : f32 = u_xlat81;
    u_xlat81 = clamp(x_5547, 0.0f, 1.0f);
    let x_5549 : vec4<f32> = u_xlat10;
    let x_5551 : vec3<f32> = u_xlat35;
    u_xlat83 = dot(vec3<f32>(x_5549.x, x_5549.y, x_5549.z), x_5551);
    let x_5553 : f32 = u_xlat83;
    u_xlat83 = clamp(x_5553, 0.0f, 1.0f);
    let x_5555 : f32 = u_xlat81;
    let x_5556 : f32 = u_xlat81;
    u_xlat81 = (x_5555 * x_5556);
    let x_5558 : f32 = u_xlat81;
    let x_5560 : f32 = u_xlat9.x;
    u_xlat81 = ((x_5558 * x_5560) + 1.00001001358032226562f);
    let x_5563 : f32 = u_xlat83;
    let x_5564 : f32 = u_xlat83;
    u_xlat83 = (x_5563 * x_5564);
    let x_5566 : f32 = u_xlat81;
    let x_5567 : f32 = u_xlat81;
    u_xlat81 = (x_5566 * x_5567);
    let x_5569 : f32 = u_xlat83;
    u_xlat83 = max(x_5569, 0.10000000149011611938f);
    let x_5571 : f32 = u_xlat81;
    let x_5572 : f32 = u_xlat83;
    u_xlat81 = (x_5571 * x_5572);
    let x_5575 : f32 = u_xlat6.x;
    let x_5576 : f32 = u_xlat81;
    u_xlat81 = (x_5575 * x_5576);
    let x_5578 : f32 = u_xlat82;
    let x_5579 : f32 = u_xlat81;
    u_xlat81 = (x_5578 / x_5579);
    let x_5581 : f32 = u_xlat81;
    let x_5584 : vec3<f32> = u_xlat5;
    u_xlat35 = ((vec3<f32>(x_5581, x_5581, x_5581) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5584);
    let x_5586 : vec3<f32> = u_xlat35;
    let x_5587 : vec4<f32> = u_xlat11;
    let x_5590 : vec4<f32> = u_xlat8;
    let x_5592 : vec3<f32> = ((x_5586 * vec3<f32>(x_5587.x, x_5587.y, x_5587.z)) + vec3<f32>(x_5590.x, x_5590.y, x_5590.z));
    let x_5593 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5592.x, x_5592.y, x_5592.z, x_5593.w);

    continuing {
      let x_5595 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5595 + bitcast<u32>(1i));
    }
  }
  let x_5597 : vec4<f32> = u_xlat4;
  let x_5599 : vec3<f32> = u_xlat32;
  let x_5602 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_5597.x, x_5597.y, x_5597.z) * vec3<f32>(x_5599.x, x_5599.x, x_5599.x)) + vec3<f32>(x_5602.x, x_5602.y, x_5602.z));
  let x_5605 : vec4<f32> = u_xlat8;
  let x_5607 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_5605.x, x_5605.y, x_5605.z) + x_5607);
  let x_5609 : vec4<f32> = vs_INTERP6;
  let x_5611 : vec3<f32> = u_xlat1;
  let x_5613 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_5609.w, x_5609.w, x_5609.w) * x_5611) + x_5613);
  let x_5616 : f32 = u_xlat28;
  let x_5617 : f32 = u_xlat28;
  u_xlat78 = (x_5616 * -(x_5617));
  let x_5620 : f32 = u_xlat78;
  u_xlat78 = exp2(x_5620);
  let x_5622 : vec3<f32> = u_xlat0;
  let x_5624 : vec4<f32> = x_126.unity_FogColor;
  u_xlat0 = (x_5622 + -(vec3<f32>(x_5624.x, x_5624.y, x_5624.z)));
  let x_5630 : f32 = u_xlat78;
  let x_5632 : vec3<f32> = u_xlat0;
  let x_5635 : vec4<f32> = x_126.unity_FogColor;
  let x_5637 : vec3<f32> = ((vec3<f32>(x_5630, x_5630, x_5630) * x_5632) + vec3<f32>(x_5635.x, x_5635.y, x_5635.z));
  let x_5638 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5637.x, x_5637.y, x_5637.z, x_5638.w);
  let x_5640 : bool = u_xlatb54;
  let x_5641 : f32 = u_xlat79;
  SV_Target0.w = select(1.0f, x_5641, x_5640);
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


