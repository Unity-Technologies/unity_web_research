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

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat54 : f32;

var<private> u_xlat52 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlat31 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb57 : vec2<bool>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlatb2 : bool;

@group(1) @binding(4) var<uniform> x_3160 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu0 : u32;

var<private> u_xlatu82 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati82 : i32;

@group(1) @binding(1) var<uniform> x_3653 : AdditionalLights;

var<private> u_xlat84 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlati86 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb86 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearClamp : sampler;

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
  var x_3109 : f32;
  var x_3228 : f32;
  var x_3239 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3792 : f32;
  var x_3802 : f32;
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
  var x_5386 : f32;
  var x_5399 : f32;
  var x_5457 : f32;
  var x_5468 : vec3<f32>;
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
      u_xlatb57.x = (x_1957 == 2.0f);
      let x_1961 : bool = u_xlatb57.x;
      if (x_1961) {
        let x_1965 : vec4<f32> = vs_INTERP3;
        let x_1968 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        u_xlat57 = ((vec2<f32>(x_1965.x, x_1965.y) * vec2<f32>(x_1968.z, x_1968.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1972 : vec2<f32> = u_xlat57;
        u_xlat57 = floor(x_1972);
        let x_1974 : vec4<f32> = vs_INTERP3;
        let x_1977 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_1980 : vec2<f32> = u_xlat57;
        let x_1982 : vec2<f32> = ((vec2<f32>(x_1974.x, x_1974.y) * vec2<f32>(x_1977.z, x_1977.w)) + -(x_1980));
        let x_1983 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1982.x, x_1982.y, x_1983.z, x_1983.w);
        let x_1985 : vec4<f32> = u_xlat6;
        u_xlat8 = (vec4<f32>(x_1985.x, x_1985.x, x_1985.y, x_1985.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1988 : vec4<f32> = u_xlat8;
        let x_1990 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1988.x, x_1988.x, x_1988.z, x_1988.z) * vec4<f32>(x_1990.x, x_1990.x, x_1990.z, x_1990.z));
        let x_1994 : vec4<f32> = u_xlat9;
        u_xlat58 = (vec2<f32>(x_1994.y, x_1994.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1997 : vec4<f32> = u_xlat9;
        let x_2000 : vec4<f32> = u_xlat6;
        let x_2003 : vec2<f32> = ((vec2<f32>(x_1997.x, x_1997.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2000.x, x_2000.y)));
        let x_2004 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2003.x, x_2004.y, x_2003.y, x_2004.w);
        let x_2006 : vec4<f32> = u_xlat6;
        let x_2009 : vec2<f32> = (-(vec2<f32>(x_2006.x, x_2006.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2010 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2009.x, x_2009.y, x_2010.z, x_2010.w);
        let x_2012 : vec4<f32> = u_xlat6;
        u_xlat61 = min(vec2<f32>(x_2012.x, x_2012.y), vec2<f32>(0.0f, 0.0f));
        let x_2015 : vec2<f32> = u_xlat61;
        let x_2017 : vec2<f32> = u_xlat61;
        let x_2019 : vec4<f32> = u_xlat9;
        u_xlat61 = ((-(x_2015) * x_2017) + vec2<f32>(x_2019.x, x_2019.y));
        let x_2022 : vec4<f32> = u_xlat6;
        let x_2024 : vec2<f32> = max(vec2<f32>(x_2022.x, x_2022.y), vec2<f32>(0.0f, 0.0f));
        let x_2025 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_2024.x, x_2024.y, x_2025.z, x_2025.w);
        let x_2027 : vec4<f32> = u_xlat6;
        let x_2030 : vec4<f32> = u_xlat6;
        let x_2033 : vec4<f32> = u_xlat8;
        let x_2035 : vec2<f32> = ((-(vec2<f32>(x_2027.x, x_2027.y)) * vec2<f32>(x_2030.x, x_2030.y)) + vec2<f32>(x_2033.y, x_2033.w));
        let x_2036 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_2035.x, x_2035.y, x_2036.z, x_2036.w);
        let x_2038 : vec2<f32> = u_xlat61;
        u_xlat61 = (x_2038 + vec2<f32>(1.0f, 1.0f));
        let x_2040 : vec4<f32> = u_xlat6;
        let x_2042 : vec2<f32> = (vec2<f32>(x_2040.x, x_2040.y) + vec2<f32>(1.0f, 1.0f));
        let x_2043 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_2042.x, x_2042.y, x_2043.z, x_2043.w);
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
        let x_2059 : vec4<f32> = u_xlat6;
        let x_2061 : vec2<f32> = (vec2<f32>(x_2059.x, x_2059.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2062 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2061.x, x_2061.y, x_2062.z, x_2062.w);
        let x_2064 : vec4<f32> = u_xlat8;
        let x_2066 : vec2<f32> = (vec2<f32>(x_2064.y, x_2064.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2067 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_2066.x, x_2066.y, x_2067.z, x_2067.w);
        let x_2070 : f32 = u_xlat9.x;
        u_xlat10.z = x_2070;
        let x_2073 : f32 = u_xlat6.x;
        u_xlat10.w = x_2073;
        let x_2076 : f32 = u_xlat12.x;
        u_xlat11.z = x_2076;
        let x_2079 : f32 = u_xlat58.x;
        u_xlat11.w = x_2079;
        let x_2081 : vec4<f32> = u_xlat10;
        let x_2083 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_2081.z, x_2081.w, x_2081.x, x_2081.z) + vec4<f32>(x_2083.z, x_2083.w, x_2083.x, x_2083.z));
        let x_2087 : f32 = u_xlat10.y;
        u_xlat9.z = x_2087;
        let x_2090 : f32 = u_xlat6.y;
        u_xlat9.w = x_2090;
        let x_2093 : f32 = u_xlat11.y;
        u_xlat12.z = x_2093;
        let x_2096 : f32 = u_xlat58.y;
        u_xlat12.w = x_2096;
        let x_2098 : vec4<f32> = u_xlat9;
        let x_2100 : vec4<f32> = u_xlat12;
        let x_2102 : vec3<f32> = (vec3<f32>(x_2098.z, x_2098.y, x_2098.w) + vec3<f32>(x_2100.z, x_2100.y, x_2100.w));
        let x_2103 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_2102.x, x_2102.y, x_2102.z, x_2103.w);
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
        let x_2119 : vec4<f32> = u_xlat6;
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
        let x_2148 : vec2<f32> = u_xlat57;
        let x_2151 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2154 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2148.x, x_2148.y, x_2148.x, x_2148.y) * vec4<f32>(x_2151.x, x_2151.y, x_2151.x, x_2151.y)) + vec4<f32>(x_2154.y, x_2154.w, x_2154.x, x_2154.w));
        let x_2157 : vec2<f32> = u_xlat57;
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
        let x_2174 : vec2<f32> = u_xlat57;
        let x_2177 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2180 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_2174.x, x_2174.y, x_2174.x, x_2174.y) * vec4<f32>(x_2177.x, x_2177.y, x_2177.x, x_2177.y)) + vec4<f32>(x_2180.x, x_2180.y, x_2180.z, x_2180.y));
        let x_2183 : vec2<f32> = u_xlat57;
        let x_2186 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2189 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2183.x, x_2183.y, x_2183.x, x_2183.y) * vec4<f32>(x_2186.x, x_2186.y, x_2186.x, x_2186.y)) + vec4<f32>(x_2189.w, x_2189.y, x_2189.w, x_2189.z));
        let x_2192 : vec2<f32> = u_xlat57;
        let x_2195 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2198 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_2192.x, x_2192.y, x_2192.x, x_2192.y) * vec4<f32>(x_2195.x, x_2195.y, x_2195.x, x_2195.y)) + vec4<f32>(x_2198.x, x_2198.w, x_2198.z, x_2198.w));
        let x_2201 : vec4<f32> = u_xlat6;
        let x_2203 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_2201.x, x_2201.x, x_2201.x, x_2201.y) * vec4<f32>(x_2203.z, x_2203.w, x_2203.y, x_2203.z));
        let x_2206 : vec4<f32> = u_xlat6;
        let x_2208 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_2206.y, x_2206.y, x_2206.z, x_2206.z) * x_2208);
        let x_2211 : f32 = u_xlat6.z;
        let x_2213 : f32 = u_xlat8.y;
        u_xlat57.x = (x_2211 * x_2213);
        let x_2217 : vec4<f32> = u_xlat11;
        let x_2218 : vec2<f32> = vec2<f32>(x_2217.x, x_2217.y);
        let x_2220 : f32 = vs_INTERP3.z;
        txVec34 = vec3<f32>(x_2218.x, x_2218.y, x_2220);
        let x_2227 : vec3<f32> = txVec34;
        let x_2229 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2227.xy, x_2227.z);
        u_xlat83 = x_2229;
        let x_2231 : vec4<f32> = u_xlat11;
        let x_2232 : vec2<f32> = vec2<f32>(x_2231.z, x_2231.w);
        let x_2234 : f32 = vs_INTERP3.z;
        txVec35 = vec3<f32>(x_2232.x, x_2232.y, x_2234);
        let x_2241 : vec3<f32> = txVec35;
        let x_2243 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2241.xy, x_2241.z);
        u_xlat6.x = x_2243;
        let x_2246 : f32 = u_xlat6.x;
        let x_2248 : f32 = u_xlat14.y;
        u_xlat6.x = (x_2246 * x_2248);
        let x_2252 : f32 = u_xlat14.x;
        let x_2253 : f32 = u_xlat83;
        let x_2256 : f32 = u_xlat6.x;
        u_xlat83 = ((x_2252 * x_2253) + x_2256);
        let x_2259 : vec4<f32> = u_xlat12;
        let x_2260 : vec2<f32> = vec2<f32>(x_2259.x, x_2259.y);
        let x_2262 : f32 = vs_INTERP3.z;
        txVec36 = vec3<f32>(x_2260.x, x_2260.y, x_2262);
        let x_2269 : vec3<f32> = txVec36;
        let x_2271 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2269.xy, x_2269.z);
        u_xlat6.x = x_2271;
        let x_2274 : f32 = u_xlat14.z;
        let x_2276 : f32 = u_xlat6.x;
        let x_2278 : f32 = u_xlat83;
        u_xlat83 = ((x_2274 * x_2276) + x_2278);
        let x_2281 : vec4<f32> = u_xlat10;
        let x_2282 : vec2<f32> = vec2<f32>(x_2281.x, x_2281.y);
        let x_2284 : f32 = vs_INTERP3.z;
        txVec37 = vec3<f32>(x_2282.x, x_2282.y, x_2284);
        let x_2291 : vec3<f32> = txVec37;
        let x_2293 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2291.xy, x_2291.z);
        u_xlat6.x = x_2293;
        let x_2296 : f32 = u_xlat14.w;
        let x_2298 : f32 = u_xlat6.x;
        let x_2300 : f32 = u_xlat83;
        u_xlat83 = ((x_2296 * x_2298) + x_2300);
        let x_2303 : vec4<f32> = u_xlat13;
        let x_2304 : vec2<f32> = vec2<f32>(x_2303.x, x_2303.y);
        let x_2306 : f32 = vs_INTERP3.z;
        txVec38 = vec3<f32>(x_2304.x, x_2304.y, x_2306);
        let x_2313 : vec3<f32> = txVec38;
        let x_2315 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2313.xy, x_2313.z);
        u_xlat6.x = x_2315;
        let x_2318 : f32 = u_xlat15.x;
        let x_2320 : f32 = u_xlat6.x;
        let x_2322 : f32 = u_xlat83;
        u_xlat83 = ((x_2318 * x_2320) + x_2322);
        let x_2325 : vec4<f32> = u_xlat13;
        let x_2326 : vec2<f32> = vec2<f32>(x_2325.z, x_2325.w);
        let x_2328 : f32 = vs_INTERP3.z;
        txVec39 = vec3<f32>(x_2326.x, x_2326.y, x_2328);
        let x_2335 : vec3<f32> = txVec39;
        let x_2337 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2335.xy, x_2335.z);
        u_xlat6.x = x_2337;
        let x_2340 : f32 = u_xlat15.y;
        let x_2342 : f32 = u_xlat6.x;
        let x_2344 : f32 = u_xlat83;
        u_xlat83 = ((x_2340 * x_2342) + x_2344);
        let x_2347 : vec4<f32> = u_xlat10;
        let x_2348 : vec2<f32> = vec2<f32>(x_2347.z, x_2347.w);
        let x_2350 : f32 = vs_INTERP3.z;
        txVec40 = vec3<f32>(x_2348.x, x_2348.y, x_2350);
        let x_2357 : vec3<f32> = txVec40;
        let x_2359 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2357.xy, x_2357.z);
        u_xlat6.x = x_2359;
        let x_2362 : f32 = u_xlat15.z;
        let x_2364 : f32 = u_xlat6.x;
        let x_2366 : f32 = u_xlat83;
        u_xlat83 = ((x_2362 * x_2364) + x_2366);
        let x_2369 : vec4<f32> = u_xlat9;
        let x_2370 : vec2<f32> = vec2<f32>(x_2369.x, x_2369.y);
        let x_2372 : f32 = vs_INTERP3.z;
        txVec41 = vec3<f32>(x_2370.x, x_2370.y, x_2372);
        let x_2379 : vec3<f32> = txVec41;
        let x_2381 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2379.xy, x_2379.z);
        u_xlat6.x = x_2381;
        let x_2384 : f32 = u_xlat15.w;
        let x_2386 : f32 = u_xlat6.x;
        let x_2388 : f32 = u_xlat83;
        u_xlat83 = ((x_2384 * x_2386) + x_2388);
        let x_2391 : vec4<f32> = u_xlat9;
        let x_2392 : vec2<f32> = vec2<f32>(x_2391.z, x_2391.w);
        let x_2394 : f32 = vs_INTERP3.z;
        txVec42 = vec3<f32>(x_2392.x, x_2392.y, x_2394);
        let x_2401 : vec3<f32> = txVec42;
        let x_2403 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2401.xy, x_2401.z);
        u_xlat6.x = x_2403;
        let x_2406 : f32 = u_xlat57.x;
        let x_2408 : f32 = u_xlat6.x;
        let x_2410 : f32 = u_xlat83;
        u_xlat0.x = ((x_2406 * x_2408) + x_2410);
      } else {
        let x_2414 : vec4<f32> = vs_INTERP3;
        let x_2417 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        u_xlat57 = ((vec2<f32>(x_2414.x, x_2414.y) * vec2<f32>(x_2417.z, x_2417.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2421 : vec2<f32> = u_xlat57;
        u_xlat57 = floor(x_2421);
        let x_2423 : vec4<f32> = vs_INTERP3;
        let x_2426 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2429 : vec2<f32> = u_xlat57;
        let x_2431 : vec2<f32> = ((vec2<f32>(x_2423.x, x_2423.y) * vec2<f32>(x_2426.z, x_2426.w)) + -(x_2429));
        let x_2432 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_2431.x, x_2431.y, x_2432.z, x_2432.w);
        let x_2434 : vec4<f32> = u_xlat6;
        u_xlat8 = (vec4<f32>(x_2434.x, x_2434.x, x_2434.y, x_2434.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2437 : vec4<f32> = u_xlat8;
        let x_2439 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2437.x, x_2437.x, x_2437.z, x_2437.z) * vec4<f32>(x_2439.x, x_2439.x, x_2439.z, x_2439.z));
        let x_2442 : vec4<f32> = u_xlat9;
        let x_2444 : vec2<f32> = (vec2<f32>(x_2442.y, x_2442.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2445 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2445.x, x_2444.x, x_2445.z, x_2444.y);
        let x_2447 : vec4<f32> = u_xlat9;
        let x_2450 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_2447.x, x_2447.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2450.x, x_2450.y)));
        let x_2454 : vec4<f32> = u_xlat6;
        let x_2457 : vec2<f32> = (-(vec2<f32>(x_2454.x, x_2454.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2458 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2457.x, x_2458.y, x_2457.y, x_2458.w);
        let x_2460 : vec4<f32> = u_xlat6;
        let x_2462 : vec2<f32> = min(vec2<f32>(x_2460.x, x_2460.y), vec2<f32>(0.0f, 0.0f));
        let x_2463 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2462.x, x_2462.y, x_2463.z, x_2463.w);
        let x_2465 : vec4<f32> = u_xlat9;
        let x_2468 : vec4<f32> = u_xlat9;
        let x_2471 : vec4<f32> = u_xlat8;
        let x_2473 : vec2<f32> = ((-(vec2<f32>(x_2465.x, x_2465.y)) * vec2<f32>(x_2468.x, x_2468.y)) + vec2<f32>(x_2471.x, x_2471.z));
        let x_2474 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2473.x, x_2474.y, x_2473.y, x_2474.w);
        let x_2476 : vec4<f32> = u_xlat6;
        let x_2478 : vec2<f32> = max(vec2<f32>(x_2476.x, x_2476.y), vec2<f32>(0.0f, 0.0f));
        let x_2479 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2478.x, x_2478.y, x_2479.z, x_2479.w);
        let x_2481 : vec4<f32> = u_xlat9;
        let x_2484 : vec4<f32> = u_xlat9;
        let x_2487 : vec4<f32> = u_xlat8;
        let x_2489 : vec2<f32> = ((-(vec2<f32>(x_2481.x, x_2481.y)) * vec2<f32>(x_2484.x, x_2484.y)) + vec2<f32>(x_2487.y, x_2487.w));
        let x_2490 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2490.x, x_2489.x, x_2490.z, x_2489.y);
        let x_2492 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2492 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2495 : f32 = u_xlat8.y;
        u_xlat9.z = (x_2495 * 0.08163200318813323975f);
        let x_2498 : vec2<f32> = u_xlat58;
        let x_2500 : vec2<f32> = (vec2<f32>(x_2498.y, x_2498.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2501 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2500.x, x_2500.y, x_2501.z, x_2501.w);
        let x_2503 : vec4<f32> = u_xlat8;
        u_xlat58 = (vec2<f32>(x_2503.x, x_2503.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2507 : f32 = u_xlat8.w;
        u_xlat11.z = (x_2507 * 0.08163200318813323975f);
        let x_2511 : f32 = u_xlat11.y;
        u_xlat9.x = x_2511;
        let x_2513 : vec4<f32> = u_xlat6;
        let x_2516 : vec2<f32> = ((vec2<f32>(x_2513.x, x_2513.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2517 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2517.x, x_2516.x, x_2517.z, x_2516.y);
        let x_2519 : vec4<f32> = u_xlat6;
        let x_2522 : vec2<f32> = ((vec2<f32>(x_2519.x, x_2519.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2523 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2522.x, x_2523.y, x_2522.y, x_2523.w);
        let x_2526 : f32 = u_xlat58.x;
        u_xlat8.y = x_2526;
        let x_2529 : f32 = u_xlat10.y;
        u_xlat8.w = x_2529;
        let x_2531 : vec4<f32> = u_xlat8;
        let x_2532 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2531 + x_2532);
        let x_2534 : vec4<f32> = u_xlat6;
        let x_2537 : vec2<f32> = ((vec2<f32>(x_2534.y, x_2534.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2538 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2538.x, x_2537.x, x_2538.z, x_2537.y);
        let x_2540 : vec4<f32> = u_xlat6;
        let x_2543 : vec2<f32> = ((vec2<f32>(x_2540.y, x_2540.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2544 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2543.x, x_2544.y, x_2543.y, x_2544.w);
        let x_2547 : f32 = u_xlat58.y;
        u_xlat10.y = x_2547;
        let x_2549 : vec4<f32> = u_xlat10;
        let x_2550 : vec4<f32> = u_xlat11;
        u_xlat6 = (x_2549 + x_2550);
        let x_2552 : vec4<f32> = u_xlat8;
        let x_2553 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_2552 / x_2553);
        let x_2555 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2555 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2557 : vec4<f32> = u_xlat10;
        let x_2558 : vec4<f32> = u_xlat6;
        u_xlat10 = (x_2557 / x_2558);
        let x_2560 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2560 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2562 : vec4<f32> = u_xlat8;
        let x_2565 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_2562.w, x_2562.x, x_2562.y, x_2562.z) * vec4<f32>(x_2565.x, x_2565.x, x_2565.x, x_2565.x));
        let x_2568 : vec4<f32> = u_xlat10;
        let x_2571 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_2568.x, x_2568.w, x_2568.y, x_2568.z) * vec4<f32>(x_2571.y, x_2571.y, x_2571.y, x_2571.y));
        let x_2574 : vec4<f32> = u_xlat8;
        let x_2575 : vec3<f32> = vec3<f32>(x_2574.y, x_2574.z, x_2574.w);
        let x_2576 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2575.x, x_2576.y, x_2575.y, x_2575.z);
        let x_2579 : f32 = u_xlat10.x;
        u_xlat11.y = x_2579;
        let x_2581 : vec2<f32> = u_xlat57;
        let x_2584 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2587 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2581.x, x_2581.y, x_2581.x, x_2581.y) * vec4<f32>(x_2584.x, x_2584.y, x_2584.x, x_2584.y)) + vec4<f32>(x_2587.x, x_2587.y, x_2587.z, x_2587.y));
        let x_2590 : vec2<f32> = u_xlat57;
        let x_2592 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2595 : vec4<f32> = u_xlat11;
        let x_2597 : vec2<f32> = ((x_2590 * vec2<f32>(x_2592.x, x_2592.y)) + vec2<f32>(x_2595.w, x_2595.y));
        let x_2598 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2597.x, x_2597.y, x_2598.z, x_2598.w);
        let x_2601 : f32 = u_xlat11.y;
        u_xlat8.y = x_2601;
        let x_2604 : f32 = u_xlat10.z;
        u_xlat11.y = x_2604;
        let x_2606 : vec2<f32> = u_xlat57;
        let x_2609 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2612 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_2606.x, x_2606.y, x_2606.x, x_2606.y) * vec4<f32>(x_2609.x, x_2609.y, x_2609.x, x_2609.y)) + vec4<f32>(x_2612.x, x_2612.y, x_2612.z, x_2612.y));
        let x_2616 : vec2<f32> = u_xlat57;
        let x_2618 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2621 : vec4<f32> = u_xlat11;
        u_xlat65 = ((x_2616 * vec2<f32>(x_2618.x, x_2618.y)) + vec2<f32>(x_2621.w, x_2621.y));
        let x_2625 : f32 = u_xlat11.y;
        u_xlat8.z = x_2625;
        let x_2627 : vec2<f32> = u_xlat57;
        let x_2630 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2633 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_2627.x, x_2627.y, x_2627.x, x_2627.y) * vec4<f32>(x_2630.x, x_2630.y, x_2630.x, x_2630.y)) + vec4<f32>(x_2633.x, x_2633.y, x_2633.x, x_2633.z));
        let x_2637 : f32 = u_xlat10.w;
        u_xlat11.y = x_2637;
        let x_2639 : vec2<f32> = u_xlat57;
        let x_2642 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2645 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_2639.x, x_2639.y, x_2639.x, x_2639.y) * vec4<f32>(x_2642.x, x_2642.y, x_2642.x, x_2642.y)) + vec4<f32>(x_2645.x, x_2645.y, x_2645.z, x_2645.y));
        let x_2648 : vec2<f32> = u_xlat57;
        let x_2650 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2653 : vec4<f32> = u_xlat11;
        u_xlat34 = ((x_2648 * vec2<f32>(x_2650.x, x_2650.y)) + vec2<f32>(x_2653.w, x_2653.y));
        let x_2657 : f32 = u_xlat11.y;
        u_xlat8.w = x_2657;
        let x_2659 : vec2<f32> = u_xlat57;
        let x_2661 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2664 : vec4<f32> = u_xlat8;
        let x_2666 : vec2<f32> = ((x_2659 * vec2<f32>(x_2661.x, x_2661.y)) + vec2<f32>(x_2664.x, x_2664.w));
        let x_2667 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_2666.x, x_2666.y, x_2667.z, x_2667.w);
        let x_2669 : vec4<f32> = u_xlat11;
        let x_2670 : vec3<f32> = vec3<f32>(x_2669.x, x_2669.z, x_2669.w);
        let x_2671 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2670.x, x_2671.y, x_2670.y, x_2670.z);
        let x_2673 : vec2<f32> = u_xlat57;
        let x_2676 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2679 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_2673.x, x_2673.y, x_2673.x, x_2673.y) * vec4<f32>(x_2676.x, x_2676.y, x_2676.x, x_2676.y)) + vec4<f32>(x_2679.x, x_2679.y, x_2679.z, x_2679.y));
        let x_2683 : vec2<f32> = u_xlat57;
        let x_2685 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2688 : vec4<f32> = u_xlat10;
        u_xlat62 = ((x_2683 * vec2<f32>(x_2685.x, x_2685.y)) + vec2<f32>(x_2688.w, x_2688.y));
        let x_2692 : f32 = u_xlat8.x;
        u_xlat10.x = x_2692;
        let x_2694 : vec2<f32> = u_xlat57;
        let x_2696 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2699 : vec4<f32> = u_xlat10;
        u_xlat57 = ((x_2694 * vec2<f32>(x_2696.x, x_2696.y)) + vec2<f32>(x_2699.x, x_2699.y));
        let x_2702 : vec4<f32> = u_xlat6;
        let x_2704 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_2702.x, x_2702.x, x_2702.x, x_2702.x) * x_2704);
        let x_2706 : vec4<f32> = u_xlat6;
        let x_2708 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_2706.y, x_2706.y, x_2706.y, x_2706.y) * x_2708);
        let x_2711 : vec4<f32> = u_xlat6;
        let x_2713 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_2711.z, x_2711.z, x_2711.z, x_2711.z) * x_2713);
        let x_2715 : vec4<f32> = u_xlat6;
        let x_2717 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_2715.w, x_2715.w, x_2715.w, x_2715.w) * x_2717);
        let x_2720 : vec4<f32> = u_xlat12;
        let x_2721 : vec2<f32> = vec2<f32>(x_2720.x, x_2720.y);
        let x_2723 : f32 = vs_INTERP3.z;
        txVec43 = vec3<f32>(x_2721.x, x_2721.y, x_2723);
        let x_2731 : vec3<f32> = txVec43;
        let x_2733 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2731.xy, x_2731.z);
        u_xlat85 = x_2733;
        let x_2735 : vec4<f32> = u_xlat12;
        let x_2736 : vec2<f32> = vec2<f32>(x_2735.z, x_2735.w);
        let x_2738 : f32 = vs_INTERP3.z;
        txVec44 = vec3<f32>(x_2736.x, x_2736.y, x_2738);
        let x_2745 : vec3<f32> = txVec44;
        let x_2747 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2745.xy, x_2745.z);
        u_xlat8.x = x_2747;
        let x_2750 : f32 = u_xlat8.x;
        let x_2752 : f32 = u_xlat18.y;
        u_xlat8.x = (x_2750 * x_2752);
        let x_2756 : f32 = u_xlat18.x;
        let x_2757 : f32 = u_xlat85;
        let x_2760 : f32 = u_xlat8.x;
        u_xlat85 = ((x_2756 * x_2757) + x_2760);
        let x_2763 : vec4<f32> = u_xlat13;
        let x_2764 : vec2<f32> = vec2<f32>(x_2763.x, x_2763.y);
        let x_2766 : f32 = vs_INTERP3.z;
        txVec45 = vec3<f32>(x_2764.x, x_2764.y, x_2766);
        let x_2773 : vec3<f32> = txVec45;
        let x_2775 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2773.xy, x_2773.z);
        u_xlat8.x = x_2775;
        let x_2778 : f32 = u_xlat18.z;
        let x_2780 : f32 = u_xlat8.x;
        let x_2782 : f32 = u_xlat85;
        u_xlat85 = ((x_2778 * x_2780) + x_2782);
        let x_2785 : vec4<f32> = u_xlat15;
        let x_2786 : vec2<f32> = vec2<f32>(x_2785.x, x_2785.y);
        let x_2788 : f32 = vs_INTERP3.z;
        txVec46 = vec3<f32>(x_2786.x, x_2786.y, x_2788);
        let x_2795 : vec3<f32> = txVec46;
        let x_2797 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2795.xy, x_2795.z);
        u_xlat8.x = x_2797;
        let x_2800 : f32 = u_xlat18.w;
        let x_2802 : f32 = u_xlat8.x;
        let x_2804 : f32 = u_xlat85;
        u_xlat85 = ((x_2800 * x_2802) + x_2804);
        let x_2807 : vec4<f32> = u_xlat14;
        let x_2808 : vec2<f32> = vec2<f32>(x_2807.x, x_2807.y);
        let x_2810 : f32 = vs_INTERP3.z;
        txVec47 = vec3<f32>(x_2808.x, x_2808.y, x_2810);
        let x_2817 : vec3<f32> = txVec47;
        let x_2819 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2817.xy, x_2817.z);
        u_xlat8.x = x_2819;
        let x_2822 : f32 = u_xlat19.x;
        let x_2824 : f32 = u_xlat8.x;
        let x_2826 : f32 = u_xlat85;
        u_xlat85 = ((x_2822 * x_2824) + x_2826);
        let x_2829 : vec4<f32> = u_xlat14;
        let x_2830 : vec2<f32> = vec2<f32>(x_2829.z, x_2829.w);
        let x_2832 : f32 = vs_INTERP3.z;
        txVec48 = vec3<f32>(x_2830.x, x_2830.y, x_2832);
        let x_2839 : vec3<f32> = txVec48;
        let x_2841 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2839.xy, x_2839.z);
        u_xlat8.x = x_2841;
        let x_2844 : f32 = u_xlat19.y;
        let x_2846 : f32 = u_xlat8.x;
        let x_2848 : f32 = u_xlat85;
        u_xlat85 = ((x_2844 * x_2846) + x_2848);
        let x_2851 : vec2<f32> = u_xlat65;
        let x_2853 : f32 = vs_INTERP3.z;
        txVec49 = vec3<f32>(x_2851.x, x_2851.y, x_2853);
        let x_2860 : vec3<f32> = txVec49;
        let x_2862 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2860.xy, x_2860.z);
        u_xlat8.x = x_2862;
        let x_2865 : f32 = u_xlat19.z;
        let x_2867 : f32 = u_xlat8.x;
        let x_2869 : f32 = u_xlat85;
        u_xlat85 = ((x_2865 * x_2867) + x_2869);
        let x_2872 : vec4<f32> = u_xlat15;
        let x_2873 : vec2<f32> = vec2<f32>(x_2872.z, x_2872.w);
        let x_2875 : f32 = vs_INTERP3.z;
        txVec50 = vec3<f32>(x_2873.x, x_2873.y, x_2875);
        let x_2882 : vec3<f32> = txVec50;
        let x_2884 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2882.xy, x_2882.z);
        u_xlat8.x = x_2884;
        let x_2887 : f32 = u_xlat19.w;
        let x_2889 : f32 = u_xlat8.x;
        let x_2891 : f32 = u_xlat85;
        u_xlat85 = ((x_2887 * x_2889) + x_2891);
        let x_2894 : vec4<f32> = u_xlat16;
        let x_2895 : vec2<f32> = vec2<f32>(x_2894.x, x_2894.y);
        let x_2897 : f32 = vs_INTERP3.z;
        txVec51 = vec3<f32>(x_2895.x, x_2895.y, x_2897);
        let x_2904 : vec3<f32> = txVec51;
        let x_2906 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2904.xy, x_2904.z);
        u_xlat8.x = x_2906;
        let x_2909 : f32 = u_xlat20.x;
        let x_2911 : f32 = u_xlat8.x;
        let x_2913 : f32 = u_xlat85;
        u_xlat85 = ((x_2909 * x_2911) + x_2913);
        let x_2916 : vec4<f32> = u_xlat16;
        let x_2917 : vec2<f32> = vec2<f32>(x_2916.z, x_2916.w);
        let x_2919 : f32 = vs_INTERP3.z;
        txVec52 = vec3<f32>(x_2917.x, x_2917.y, x_2919);
        let x_2926 : vec3<f32> = txVec52;
        let x_2928 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2926.xy, x_2926.z);
        u_xlat8.x = x_2928;
        let x_2931 : f32 = u_xlat20.y;
        let x_2933 : f32 = u_xlat8.x;
        let x_2935 : f32 = u_xlat85;
        u_xlat85 = ((x_2931 * x_2933) + x_2935);
        let x_2938 : vec2<f32> = u_xlat34;
        let x_2940 : f32 = vs_INTERP3.z;
        txVec53 = vec3<f32>(x_2938.x, x_2938.y, x_2940);
        let x_2947 : vec3<f32> = txVec53;
        let x_2949 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2947.xy, x_2947.z);
        u_xlat8.x = x_2949;
        let x_2952 : f32 = u_xlat20.z;
        let x_2954 : f32 = u_xlat8.x;
        let x_2956 : f32 = u_xlat85;
        u_xlat85 = ((x_2952 * x_2954) + x_2956);
        let x_2959 : vec4<f32> = u_xlat17;
        let x_2960 : vec2<f32> = vec2<f32>(x_2959.x, x_2959.y);
        let x_2962 : f32 = vs_INTERP3.z;
        txVec54 = vec3<f32>(x_2960.x, x_2960.y, x_2962);
        let x_2969 : vec3<f32> = txVec54;
        let x_2971 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2969.xy, x_2969.z);
        u_xlat8.x = x_2971;
        let x_2974 : f32 = u_xlat20.w;
        let x_2976 : f32 = u_xlat8.x;
        let x_2978 : f32 = u_xlat85;
        u_xlat85 = ((x_2974 * x_2976) + x_2978);
        let x_2981 : vec4<f32> = u_xlat11;
        let x_2982 : vec2<f32> = vec2<f32>(x_2981.x, x_2981.y);
        let x_2984 : f32 = vs_INTERP3.z;
        txVec55 = vec3<f32>(x_2982.x, x_2982.y, x_2984);
        let x_2991 : vec3<f32> = txVec55;
        let x_2993 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2991.xy, x_2991.z);
        u_xlat8.x = x_2993;
        let x_2996 : f32 = u_xlat6.x;
        let x_2998 : f32 = u_xlat8.x;
        let x_3000 : f32 = u_xlat85;
        u_xlat6.x = ((x_2996 * x_2998) + x_3000);
        let x_3004 : vec4<f32> = u_xlat11;
        let x_3005 : vec2<f32> = vec2<f32>(x_3004.z, x_3004.w);
        let x_3007 : f32 = vs_INTERP3.z;
        txVec56 = vec3<f32>(x_3005.x, x_3005.y, x_3007);
        let x_3014 : vec3<f32> = txVec56;
        let x_3016 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3014.xy, x_3014.z);
        u_xlat85 = x_3016;
        let x_3018 : f32 = u_xlat6.y;
        let x_3019 : f32 = u_xlat85;
        let x_3022 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_3018 * x_3019) + x_3022);
        let x_3026 : vec2<f32> = u_xlat62;
        let x_3028 : f32 = vs_INTERP3.z;
        txVec57 = vec3<f32>(x_3026.x, x_3026.y, x_3028);
        let x_3035 : vec3<f32> = txVec57;
        let x_3037 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3035.xy, x_3035.z);
        u_xlat32.x = x_3037;
        let x_3040 : f32 = u_xlat6.z;
        let x_3042 : f32 = u_xlat32.x;
        let x_3045 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_3040 * x_3042) + x_3045);
        let x_3049 : vec2<f32> = u_xlat57;
        let x_3051 : f32 = vs_INTERP3.z;
        txVec58 = vec3<f32>(x_3049.x, x_3049.y, x_3051);
        let x_3058 : vec3<f32> = txVec58;
        let x_3060 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3058.xy, x_3058.z);
        u_xlat57.x = x_3060;
        let x_3063 : f32 = u_xlat6.w;
        let x_3065 : f32 = u_xlat57.x;
        let x_3068 : f32 = u_xlat6.x;
        u_xlat0.x = ((x_3063 * x_3065) + x_3068);
      }
    }
  } else {
    let x_3073 : vec4<f32> = vs_INTERP3;
    let x_3074 : vec2<f32> = vec2<f32>(x_3073.x, x_3073.y);
    let x_3076 : f32 = vs_INTERP3.z;
    txVec59 = vec3<f32>(x_3074.x, x_3074.y, x_3076);
    let x_3083 : vec3<f32> = txVec59;
    let x_3085 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3083.xy, x_3083.z);
    u_xlat0.x = x_3085;
  }
  let x_3088 : f32 = u_xlat0.x;
  let x_3090 : f32 = x_241.x_MainLightShadowParams.x;
  let x_3093 : f32 = u_xlat2.x;
  u_xlat0.x = ((x_3088 * x_3090) + x_3093);
  let x_3098 : f32 = vs_INTERP3.z;
  u_xlatb2 = (0.0f >= x_3098);
  let x_3101 : f32 = vs_INTERP3.z;
  u_xlatb57.x = (x_3101 >= 1.0f);
  let x_3104 : bool = u_xlatb2;
  let x_3106 : bool = u_xlatb57.x;
  u_xlatb2 = (x_3104 | x_3106);
  let x_3108 : bool = u_xlatb2;
  if (x_3108) {
    x_3109 = 1.0f;
  } else {
    let x_3114 : f32 = u_xlat0.x;
    x_3109 = x_3114;
  }
  let x_3115 : f32 = x_3109;
  u_xlat0.x = x_3115;
  let x_3117 : vec3<f32> = vs_INTERP8;
  let x_3119 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_3121 : vec3<f32> = (x_3117 + -(x_3119));
  let x_3122 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3121.x, x_3121.y, x_3121.z, x_3122.w);
  let x_3124 : vec4<f32> = u_xlat6;
  let x_3126 : vec4<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_3124.x, x_3124.y, x_3124.z), vec3<f32>(x_3126.x, x_3126.y, x_3126.z));
  let x_3131 : f32 = u_xlat2.x;
  let x_3133 : f32 = x_241.x_MainLightShadowParams.z;
  let x_3136 : f32 = x_241.x_MainLightShadowParams.w;
  u_xlat57.x = ((x_3131 * x_3133) + x_3136);
  let x_3140 : f32 = u_xlat57.x;
  u_xlat57.x = clamp(x_3140, 0.0f, 1.0f);
  let x_3144 : f32 = u_xlat0.x;
  u_xlat83 = (-(x_3144) + 1.0f);
  let x_3148 : f32 = u_xlat57.x;
  let x_3149 : f32 = u_xlat83;
  let x_3152 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_3148 * x_3149) + x_3152);
  let x_3162 : f32 = x_3160.x_MainLightCookieTextureFormat;
  u_xlatb57.x = !((x_3162 == -1.0f));
  let x_3166 : bool = u_xlatb57.x;
  if (x_3166) {
    let x_3169 : vec3<f32> = vs_INTERP8;
    let x_3172 : vec4<f32> = x_3160.x_MainLightWorldToLight[1i];
    u_xlat57 = (vec2<f32>(x_3169.y, x_3169.y) * vec2<f32>(x_3172.x, x_3172.y));
    let x_3176 : vec4<f32> = x_3160.x_MainLightWorldToLight[0i];
    let x_3178 : vec3<f32> = vs_INTERP8;
    let x_3181 : vec2<f32> = u_xlat57;
    u_xlat57 = ((vec2<f32>(x_3176.x, x_3176.y) * vec2<f32>(x_3178.x, x_3178.x)) + x_3181);
    let x_3184 : vec4<f32> = x_3160.x_MainLightWorldToLight[2i];
    let x_3186 : vec3<f32> = vs_INTERP8;
    let x_3189 : vec2<f32> = u_xlat57;
    u_xlat57 = ((vec2<f32>(x_3184.x, x_3184.y) * vec2<f32>(x_3186.z, x_3186.z)) + x_3189);
    let x_3191 : vec2<f32> = u_xlat57;
    let x_3193 : vec4<f32> = x_3160.x_MainLightWorldToLight[3i];
    u_xlat57 = (x_3191 + vec2<f32>(x_3193.x, x_3193.y));
    let x_3196 : vec2<f32> = u_xlat57;
    u_xlat57 = ((x_3196 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_3204 : vec2<f32> = u_xlat57;
    let x_3206 : f32 = x_126.x_GlobalMipBias.x;
    let x_3207 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_3204, x_3206);
    u_xlat6 = x_3207;
    let x_3209 : f32 = x_3160.x_MainLightCookieTextureFormat;
    let x_3211 : f32 = x_3160.x_MainLightCookieTextureFormat;
    let x_3213 : f32 = x_3160.x_MainLightCookieTextureFormat;
    let x_3215 : f32 = x_3160.x_MainLightCookieTextureFormat;
    let x_3216 : vec4<f32> = vec4<f32>(x_3209, x_3211, x_3213, x_3215);
    let x_3224 : vec4<bool> = (vec4<f32>(x_3216.x, x_3216.y, x_3216.z, x_3216.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb57 = vec2<bool>(x_3224.x, x_3224.y);
    let x_3227 : bool = u_xlatb57.y;
    if (x_3227) {
      let x_3232 : f32 = u_xlat6.w;
      x_3228 = x_3232;
    } else {
      let x_3235 : f32 = u_xlat6.x;
      x_3228 = x_3235;
    }
    let x_3236 : f32 = x_3228;
    u_xlat83 = x_3236;
    let x_3238 : bool = u_xlatb57.x;
    if (x_3238) {
      let x_3242 : vec4<f32> = u_xlat6;
      x_3239 = vec3<f32>(x_3242.x, x_3242.y, x_3242.z);
    } else {
      let x_3245 : f32 = u_xlat83;
      x_3239 = vec3<f32>(x_3245, x_3245, x_3245);
    }
    let x_3247 : vec3<f32> = x_3239;
    let x_3248 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3247.x, x_3247.y, x_3247.z, x_3248.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_3254 : vec4<f32> = u_xlat6;
  let x_3257 : vec4<f32> = x_126.x_MainLightColor;
  let x_3259 : vec3<f32> = (vec3<f32>(x_3254.x, x_3254.y, x_3254.z) * vec3<f32>(x_3257.x, x_3257.y, x_3257.z));
  let x_3260 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3259.x, x_3259.y, x_3259.z, x_3260.w);
  let x_3262 : vec4<f32> = u_xlat7;
  let x_3265 : vec4<f32> = u_xlat3;
  u_xlat57.x = dot(-(vec3<f32>(x_3262.x, x_3262.y, x_3262.z)), vec3<f32>(x_3265.x, x_3265.y, x_3265.z));
  let x_3270 : f32 = u_xlat57.x;
  let x_3272 : f32 = u_xlat57.x;
  u_xlat57.x = (x_3270 + x_3272);
  let x_3275 : vec4<f32> = u_xlat3;
  let x_3277 : vec2<f32> = u_xlat57;
  let x_3281 : vec4<f32> = u_xlat7;
  let x_3284 : vec3<f32> = ((vec3<f32>(x_3275.x, x_3275.y, x_3275.z) * -(vec3<f32>(x_3277.x, x_3277.x, x_3277.x))) + -(vec3<f32>(x_3281.x, x_3281.y, x_3281.z)));
  let x_3285 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3284.x, x_3284.y, x_3284.z, x_3285.w);
  let x_3287 : vec4<f32> = u_xlat3;
  let x_3289 : vec4<f32> = u_xlat7;
  u_xlat57.x = dot(vec3<f32>(x_3287.x, x_3287.y, x_3287.z), vec3<f32>(x_3289.x, x_3289.y, x_3289.z));
  let x_3294 : f32 = u_xlat57.x;
  u_xlat57.x = clamp(x_3294, 0.0f, 1.0f);
  let x_3298 : f32 = u_xlat57.x;
  u_xlat57.x = (-(x_3298) + 1.0f);
  let x_3303 : f32 = u_xlat57.x;
  let x_3305 : f32 = u_xlat57.x;
  u_xlat57.x = (x_3303 * x_3305);
  let x_3309 : f32 = u_xlat57.x;
  let x_3311 : f32 = u_xlat57.x;
  u_xlat57.x = (x_3309 * x_3311);
  let x_3315 : f32 = u_xlat28.x;
  u_xlat83 = ((-(x_3315) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3322 : f32 = u_xlat28.x;
  let x_3323 : f32 = u_xlat83;
  u_xlat28.x = (x_3322 * x_3323);
  let x_3327 : f32 = u_xlat28.x;
  u_xlat28.x = (x_3327 * 6.0f);
  let x_3339 : vec4<f32> = u_xlat8;
  let x_3342 : f32 = u_xlat28.x;
  let x_3343 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_3339.x, x_3339.y, x_3339.z), x_3342);
  u_xlat8 = x_3343;
  let x_3345 : f32 = u_xlat8.w;
  u_xlat28.x = (x_3345 + -1.0f);
  let x_3349 : f32 = x_48.unity_SpecCube0_HDR.w;
  let x_3351 : f32 = u_xlat28.x;
  u_xlat28.x = ((x_3349 * x_3351) + 1.0f);
  let x_3356 : f32 = u_xlat28.x;
  u_xlat28.x = max(x_3356, 0.0f);
  let x_3360 : f32 = u_xlat28.x;
  u_xlat28.x = log2(x_3360);
  let x_3364 : f32 = u_xlat28.x;
  let x_3366 : f32 = x_48.unity_SpecCube0_HDR.y;
  u_xlat28.x = (x_3364 * x_3366);
  let x_3370 : f32 = u_xlat28.x;
  u_xlat28.x = exp2(x_3370);
  let x_3374 : f32 = u_xlat28.x;
  let x_3376 : f32 = x_48.unity_SpecCube0_HDR.x;
  u_xlat28.x = (x_3374 * x_3376);
  let x_3379 : vec4<f32> = u_xlat8;
  let x_3381 : vec3<f32> = u_xlat28;
  let x_3383 : vec3<f32> = (vec3<f32>(x_3379.x, x_3379.y, x_3379.z) * vec3<f32>(x_3381.x, x_3381.x, x_3381.x));
  let x_3384 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3383.x, x_3383.y, x_3383.z, x_3384.w);
  let x_3386 : f32 = u_xlat80;
  let x_3388 : f32 = u_xlat80;
  let x_3392 : vec2<f32> = ((vec2<f32>(x_3386, x_3386) * vec2<f32>(x_3388, x_3388)) + vec2<f32>(-1.0f, 1.0f));
  let x_3393 : vec3<f32> = u_xlat28;
  u_xlat28 = vec3<f32>(x_3392.x, x_3393.y, x_3392.y);
  let x_3396 : f32 = u_xlat28.z;
  u_xlat80 = (1.0f / x_3396);
  let x_3398 : f32 = u_xlat82;
  u_xlat82 = (x_3398 + -0.03999999910593032837f);
  let x_3402 : f32 = u_xlat57.x;
  let x_3403 : f32 = u_xlat82;
  u_xlat82 = ((x_3402 * x_3403) + 0.03999999910593032837f);
  let x_3407 : f32 = u_xlat80;
  let x_3408 : f32 = u_xlat82;
  u_xlat80 = (x_3407 * x_3408);
  let x_3410 : f32 = u_xlat80;
  let x_3412 : vec4<f32> = u_xlat8;
  let x_3414 : vec3<f32> = (vec3<f32>(x_3410, x_3410, x_3410) * vec3<f32>(x_3412.x, x_3412.y, x_3412.z));
  let x_3415 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3414.x, x_3414.y, x_3414.z, x_3415.w);
  let x_3417 : vec3<f32> = u_xlat26;
  let x_3418 : vec4<f32> = u_xlat4;
  let x_3421 : vec4<f32> = u_xlat8;
  u_xlat26 = ((x_3417 * vec3<f32>(x_3418.x, x_3418.y, x_3418.z)) + vec3<f32>(x_3421.x, x_3421.y, x_3421.z));
  let x_3425 : f32 = u_xlat0.x;
  let x_3427 : f32 = x_48.unity_LightData.z;
  u_xlat0.x = (x_3425 * x_3427);
  let x_3430 : vec4<f32> = u_xlat3;
  let x_3433 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat80 = dot(vec3<f32>(x_3430.x, x_3430.y, x_3430.z), vec3<f32>(x_3433.x, x_3433.y, x_3433.z));
  let x_3436 : f32 = u_xlat80;
  u_xlat80 = clamp(x_3436, 0.0f, 1.0f);
  let x_3439 : f32 = u_xlat0.x;
  let x_3440 : f32 = u_xlat80;
  u_xlat0.x = (x_3439 * x_3440);
  let x_3443 : vec3<f32> = u_xlat0;
  let x_3445 : vec4<f32> = u_xlat6;
  let x_3447 : vec3<f32> = (vec3<f32>(x_3443.x, x_3443.x, x_3443.x) * vec3<f32>(x_3445.x, x_3445.y, x_3445.z));
  let x_3448 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3447.x, x_3447.y, x_3447.z, x_3448.w);
  let x_3450 : vec4<f32> = u_xlat7;
  let x_3453 : vec4<f32> = x_126.x_MainLightPosition;
  let x_3455 : vec3<f32> = (vec3<f32>(x_3450.x, x_3450.y, x_3450.z) + vec3<f32>(x_3453.x, x_3453.y, x_3453.z));
  let x_3456 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3455.x, x_3455.y, x_3455.z, x_3456.w);
  let x_3458 : vec4<f32> = u_xlat8;
  let x_3460 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_3458.x, x_3458.y, x_3458.z), vec3<f32>(x_3460.x, x_3460.y, x_3460.z));
  let x_3465 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_3465, 1.17549435e-38f);
  let x_3469 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_3469);
  let x_3472 : vec3<f32> = u_xlat0;
  let x_3474 : vec4<f32> = u_xlat8;
  let x_3476 : vec3<f32> = (vec3<f32>(x_3472.x, x_3472.x, x_3472.x) * vec3<f32>(x_3474.x, x_3474.y, x_3474.z));
  let x_3477 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3476.x, x_3476.y, x_3476.z, x_3477.w);
  let x_3479 : vec4<f32> = u_xlat3;
  let x_3481 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_3479.x, x_3479.y, x_3479.z), vec3<f32>(x_3481.x, x_3481.y, x_3481.z));
  let x_3486 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_3486, 0.0f, 1.0f);
  let x_3490 : vec4<f32> = x_126.x_MainLightPosition;
  let x_3492 : vec4<f32> = u_xlat8;
  u_xlat80 = dot(vec3<f32>(x_3490.x, x_3490.y, x_3490.z), vec3<f32>(x_3492.x, x_3492.y, x_3492.z));
  let x_3495 : f32 = u_xlat80;
  u_xlat80 = clamp(x_3495, 0.0f, 1.0f);
  let x_3498 : f32 = u_xlat0.x;
  let x_3500 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3498 * x_3500);
  let x_3504 : f32 = u_xlat0.x;
  let x_3506 : f32 = u_xlat28.x;
  u_xlat0.x = ((x_3504 * x_3506) + 1.00001001358032226562f);
  let x_3511 : f32 = u_xlat80;
  let x_3512 : f32 = u_xlat80;
  u_xlat80 = (x_3511 * x_3512);
  let x_3515 : f32 = u_xlat0.x;
  let x_3517 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3515 * x_3517);
  let x_3520 : f32 = u_xlat80;
  u_xlat80 = max(x_3520, 0.10000000149011611938f);
  let x_3524 : f32 = u_xlat0.x;
  let x_3525 : f32 = u_xlat80;
  u_xlat0.x = (x_3524 * x_3525);
  let x_3529 : f32 = u_xlat5.x;
  let x_3531 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3529 * x_3531);
  let x_3534 : f32 = u_xlat81;
  let x_3536 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3534 / x_3536);
  let x_3539 : vec3<f32> = u_xlat0;
  let x_3543 : vec4<f32> = u_xlat4;
  let x_3545 : vec3<f32> = ((vec3<f32>(x_3539.x, x_3539.x, x_3539.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_3543.x, x_3543.y, x_3543.z));
  let x_3546 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3545.x, x_3545.y, x_3545.z, x_3546.w);
  let x_3548 : vec4<f32> = u_xlat6;
  let x_3550 : vec4<f32> = u_xlat8;
  let x_3552 : vec3<f32> = (vec3<f32>(x_3548.x, x_3548.y, x_3548.z) * vec3<f32>(x_3550.x, x_3550.y, x_3550.z));
  let x_3553 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3552.x, x_3552.y, x_3552.z, x_3553.w);
  let x_3557 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_3559 : f32 = x_48.unity_LightData.y;
  u_xlat0.x = min(x_3557, x_3559);
  let x_3565 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_3565));
  let x_3569 : f32 = u_xlat2.x;
  let x_3572 : f32 = x_241.x_AdditionalShadowFadeParams.x;
  let x_3575 : f32 = x_241.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_3569 * x_3572) + x_3575);
  let x_3579 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_3579, 0.0f, 1.0f);
  let x_3583 : f32 = x_3160.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3585 : f32 = x_3160.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3587 : f32 = x_3160.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3589 : f32 = x_3160.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3590 : vec4<f32> = vec4<f32>(x_3583, x_3585, x_3587, x_3589);
  let x_3596 : vec4<bool> = (vec4<f32>(x_3590.x, x_3590.y, x_3590.z, x_3590.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  u_xlatb57 = vec2<bool>(x_3596.x, x_3596.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3608 : u32 = u_xlatu_loop_1;
    let x_3609 : u32 = u_xlatu0;
    if ((x_3608 < x_3609)) {
    } else {
      break;
    }
    let x_3612 : u32 = u_xlatu_loop_1;
    u_xlatu82 = (x_3612 >> 2u);
    let x_3616 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_3616 & 3u));
    let x_3619 : u32 = u_xlatu82;
    let x_3622 : vec4<f32> = x_48.unity_LightIndices[bitcast<i32>(x_3619)];
    let x_3632 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3637 : vec4<u32> = indexable[x_3632];
    u_xlat82 = dot(x_3622, bitcast<vec4<f32>>(x_3637));
    let x_3641 : f32 = u_xlat82;
    u_xlati82 = i32(x_3641);
    let x_3643 : vec3<f32> = vs_INTERP8;
    let x_3654 : i32 = u_xlati82;
    let x_3656 : vec4<f32> = x_3653.x_AdditionalLightsPosition[x_3654];
    let x_3659 : i32 = u_xlati82;
    let x_3661 : vec4<f32> = x_3653.x_AdditionalLightsPosition[x_3659];
    let x_3663 : vec3<f32> = ((-(x_3643) * vec3<f32>(x_3656.w, x_3656.w, x_3656.w)) + vec3<f32>(x_3661.x, x_3661.y, x_3661.z));
    let x_3664 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3663.x, x_3663.y, x_3663.z, x_3664.w);
    let x_3667 : vec4<f32> = u_xlat9;
    let x_3669 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_3667.x, x_3667.y, x_3667.z), vec3<f32>(x_3669.x, x_3669.y, x_3669.z));
    let x_3672 : f32 = u_xlat84;
    u_xlat84 = max(x_3672, 0.00006103515625f);
    let x_3675 : f32 = u_xlat84;
    u_xlat85 = inverseSqrt(x_3675);
    let x_3677 : f32 = u_xlat85;
    let x_3679 : vec4<f32> = u_xlat9;
    let x_3681 : vec3<f32> = (vec3<f32>(x_3677, x_3677, x_3677) * vec3<f32>(x_3679.x, x_3679.y, x_3679.z));
    let x_3682 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3681.x, x_3681.y, x_3681.z, x_3682.w);
    let x_3685 : f32 = u_xlat84;
    u_xlat86 = (1.0f / x_3685);
    let x_3687 : f32 = u_xlat84;
    let x_3688 : i32 = u_xlati82;
    let x_3690 : f32 = x_3653.x_AdditionalLightsAttenuation[x_3688].x;
    u_xlat84 = (x_3687 * x_3690);
    let x_3692 : f32 = u_xlat84;
    let x_3694 : f32 = u_xlat84;
    u_xlat84 = ((-(x_3692) * x_3694) + 1.0f);
    let x_3697 : f32 = u_xlat84;
    u_xlat84 = max(x_3697, 0.0f);
    let x_3699 : f32 = u_xlat84;
    let x_3700 : f32 = u_xlat84;
    u_xlat84 = (x_3699 * x_3700);
    let x_3702 : f32 = u_xlat84;
    let x_3703 : f32 = u_xlat86;
    u_xlat84 = (x_3702 * x_3703);
    let x_3705 : i32 = u_xlati82;
    let x_3707 : vec4<f32> = x_3653.x_AdditionalLightsSpotDir[x_3705];
    let x_3709 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_3707.x, x_3707.y, x_3707.z), vec3<f32>(x_3709.x, x_3709.y, x_3709.z));
    let x_3712 : f32 = u_xlat86;
    let x_3713 : i32 = u_xlati82;
    let x_3715 : f32 = x_3653.x_AdditionalLightsAttenuation[x_3713].z;
    let x_3717 : i32 = u_xlati82;
    let x_3719 : f32 = x_3653.x_AdditionalLightsAttenuation[x_3717].w;
    u_xlat86 = ((x_3712 * x_3715) + x_3719);
    let x_3721 : f32 = u_xlat86;
    u_xlat86 = clamp(x_3721, 0.0f, 1.0f);
    let x_3723 : f32 = u_xlat86;
    let x_3724 : f32 = u_xlat86;
    u_xlat86 = (x_3723 * x_3724);
    let x_3726 : f32 = u_xlat84;
    let x_3727 : f32 = u_xlat86;
    u_xlat84 = (x_3726 * x_3727);
    let x_3731 : i32 = u_xlati82;
    let x_3733 : f32 = x_241.x_AdditionalShadowParams[x_3731].w;
    u_xlati86 = i32(x_3733);
    let x_3736 : i32 = u_xlati86;
    u_xlatb87 = (x_3736 >= 0i);
    let x_3738 : bool = u_xlatb87;
    if (x_3738) {
      let x_3742 : i32 = u_xlati82;
      let x_3744 : f32 = x_241.x_AdditionalShadowParams[x_3742].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3744, x_3744, x_3744, x_3744))));
      let x_3748 : bool = u_xlatb87;
      if (x_3748) {
        let x_3753 : vec4<f32> = u_xlat10;
        let x_3756 : vec4<f32> = u_xlat10;
        let x_3759 : vec4<bool> = (abs(vec4<f32>(x_3753.z, x_3753.z, x_3753.y, x_3753.z)) >= abs(vec4<f32>(x_3756.x, x_3756.y, x_3756.x, x_3756.x)));
        let x_3761 : vec3<bool> = vec3<bool>(x_3759.x, x_3759.y, x_3759.z);
        let x_3762 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3761.x, x_3761.y, x_3761.z, x_3762.w);
        let x_3765 : bool = u_xlatb11.y;
        let x_3767 : bool = u_xlatb11.x;
        u_xlatb87 = (x_3765 & x_3767);
        let x_3769 : vec4<f32> = u_xlat10;
        let x_3772 : vec4<bool> = (-(vec4<f32>(x_3769.z, x_3769.y, x_3769.z, x_3769.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3773 : vec3<bool> = vec3<bool>(x_3772.x, x_3772.y, x_3772.w);
        let x_3774 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3773.x, x_3773.y, x_3774.z, x_3773.z);
        let x_3777 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3777);
        let x_3782 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3782);
        let x_3788 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_3788);
        let x_3791 : bool = u_xlatb11.z;
        if (x_3791) {
          let x_3796 : f32 = u_xlat11.y;
          x_3792 = x_3796;
        } else {
          let x_3798 : f32 = u_xlat88;
          x_3792 = x_3798;
        }
        let x_3799 : f32 = x_3792;
        u_xlat88 = x_3799;
        let x_3801 : bool = u_xlatb87;
        if (x_3801) {
          let x_3806 : f32 = u_xlat11.x;
          x_3802 = x_3806;
        } else {
          let x_3808 : f32 = u_xlat88;
          x_3802 = x_3808;
        }
        let x_3809 : f32 = x_3802;
        u_xlat87 = x_3809;
        let x_3810 : i32 = u_xlati82;
        let x_3812 : f32 = x_241.x_AdditionalShadowParams[x_3810].w;
        u_xlat88 = trunc(x_3812);
        let x_3814 : f32 = u_xlat87;
        let x_3815 : f32 = u_xlat88;
        u_xlat87 = (x_3814 + x_3815);
        let x_3817 : f32 = u_xlat87;
        u_xlati86 = i32(x_3817);
      }
      let x_3819 : i32 = u_xlati86;
      u_xlati86 = (x_3819 << bitcast<u32>(2i));
      let x_3821 : vec3<f32> = vs_INTERP8;
      let x_3824 : i32 = u_xlati86;
      let x_3827 : i32 = u_xlati86;
      let x_3831 : vec4<f32> = x_241.x_AdditionalLightsWorldToShadow[((x_3824 + 1i) / 4i)][((x_3827 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3821.y, x_3821.y, x_3821.y, x_3821.y) * x_3831);
      let x_3833 : i32 = u_xlati86;
      let x_3835 : i32 = u_xlati86;
      let x_3838 : vec4<f32> = x_241.x_AdditionalLightsWorldToShadow[(x_3833 / 4i)][(x_3835 % 4i)];
      let x_3839 : vec3<f32> = vs_INTERP8;
      let x_3842 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3838 * vec4<f32>(x_3839.x, x_3839.x, x_3839.x, x_3839.x)) + x_3842);
      let x_3844 : i32 = u_xlati86;
      let x_3847 : i32 = u_xlati86;
      let x_3851 : vec4<f32> = x_241.x_AdditionalLightsWorldToShadow[((x_3844 + 2i) / 4i)][((x_3847 + 2i) % 4i)];
      let x_3852 : vec3<f32> = vs_INTERP8;
      let x_3855 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3851 * vec4<f32>(x_3852.z, x_3852.z, x_3852.z, x_3852.z)) + x_3855);
      let x_3857 : vec4<f32> = u_xlat11;
      let x_3858 : i32 = u_xlati86;
      let x_3861 : i32 = u_xlati86;
      let x_3865 : vec4<f32> = x_241.x_AdditionalLightsWorldToShadow[((x_3858 + 3i) / 4i)][((x_3861 + 3i) % 4i)];
      u_xlat11 = (x_3857 + x_3865);
      let x_3867 : vec4<f32> = u_xlat11;
      let x_3869 : vec4<f32> = u_xlat11;
      let x_3871 : vec3<f32> = (vec3<f32>(x_3867.x, x_3867.y, x_3867.z) / vec3<f32>(x_3869.w, x_3869.w, x_3869.w));
      let x_3872 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3871.x, x_3871.y, x_3871.z, x_3872.w);
      let x_3875 : i32 = u_xlati82;
      let x_3877 : f32 = x_241.x_AdditionalShadowParams[x_3875].y;
      u_xlatb86 = (0.0f < x_3877);
      let x_3879 : bool = u_xlatb86;
      if (x_3879) {
        let x_3882 : i32 = u_xlati82;
        let x_3884 : f32 = x_241.x_AdditionalShadowParams[x_3882].y;
        u_xlatb86 = (1.0f == x_3884);
        let x_3886 : bool = u_xlatb86;
        if (x_3886) {
          let x_3889 : vec4<f32> = u_xlat11;
          let x_3893 : vec4<f32> = x_241.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3889.x, x_3889.y, x_3889.x, x_3889.y) + x_3893);
          let x_3896 : vec4<f32> = u_xlat12;
          let x_3897 : vec2<f32> = vec2<f32>(x_3896.x, x_3896.y);
          let x_3899 : f32 = u_xlat11.z;
          txVec60 = vec3<f32>(x_3897.x, x_3897.y, x_3899);
          let x_3907 : vec3<f32> = txVec60;
          let x_3909 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3907.xy, x_3907.z);
          u_xlat13.x = x_3909;
          let x_3912 : vec4<f32> = u_xlat12;
          let x_3913 : vec2<f32> = vec2<f32>(x_3912.z, x_3912.w);
          let x_3915 : f32 = u_xlat11.z;
          txVec61 = vec3<f32>(x_3913.x, x_3913.y, x_3915);
          let x_3922 : vec3<f32> = txVec61;
          let x_3924 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3922.xy, x_3922.z);
          u_xlat13.y = x_3924;
          let x_3926 : vec4<f32> = u_xlat11;
          let x_3930 : vec4<f32> = x_241.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3926.x, x_3926.y, x_3926.x, x_3926.y) + x_3930);
          let x_3933 : vec4<f32> = u_xlat12;
          let x_3934 : vec2<f32> = vec2<f32>(x_3933.x, x_3933.y);
          let x_3936 : f32 = u_xlat11.z;
          txVec62 = vec3<f32>(x_3934.x, x_3934.y, x_3936);
          let x_3943 : vec3<f32> = txVec62;
          let x_3945 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3943.xy, x_3943.z);
          u_xlat13.z = x_3945;
          let x_3948 : vec4<f32> = u_xlat12;
          let x_3949 : vec2<f32> = vec2<f32>(x_3948.z, x_3948.w);
          let x_3951 : f32 = u_xlat11.z;
          txVec63 = vec3<f32>(x_3949.x, x_3949.y, x_3951);
          let x_3958 : vec3<f32> = txVec63;
          let x_3960 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3958.xy, x_3958.z);
          u_xlat13.w = x_3960;
          let x_3962 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_3962, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3965 : i32 = u_xlati82;
          let x_3967 : f32 = x_241.x_AdditionalShadowParams[x_3965].y;
          u_xlatb87 = (2.0f == x_3967);
          let x_3969 : bool = u_xlatb87;
          if (x_3969) {
            let x_3972 : vec4<f32> = u_xlat11;
            let x_3976 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_3979 : vec2<f32> = ((vec2<f32>(x_3972.x, x_3972.y) * vec2<f32>(x_3976.z, x_3976.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3980 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3979.x, x_3979.y, x_3980.z, x_3980.w);
            let x_3982 : vec4<f32> = u_xlat12;
            let x_3984 : vec2<f32> = floor(vec2<f32>(x_3982.x, x_3982.y));
            let x_3985 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3984.x, x_3984.y, x_3985.z, x_3985.w);
            let x_3988 : vec4<f32> = u_xlat11;
            let x_3991 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_3994 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3988.x, x_3988.y) * vec2<f32>(x_3991.z, x_3991.w)) + -(vec2<f32>(x_3994.x, x_3994.y)));
            let x_3998 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3998.x, x_3998.x, x_3998.y, x_3998.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4001 : vec4<f32> = u_xlat13;
            let x_4003 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4001.x, x_4001.x, x_4001.z, x_4001.z) * vec4<f32>(x_4003.x, x_4003.x, x_4003.z, x_4003.z));
            let x_4006 : vec4<f32> = u_xlat14;
            let x_4008 : vec2<f32> = (vec2<f32>(x_4006.y, x_4006.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_4009 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4008.x, x_4009.y, x_4008.y, x_4009.w);
            let x_4011 : vec4<f32> = u_xlat14;
            let x_4014 : vec2<f32> = u_xlat64;
            let x_4016 : vec2<f32> = ((vec2<f32>(x_4011.x, x_4011.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4014));
            let x_4017 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4016.x, x_4016.y, x_4017.z, x_4017.w);
            let x_4019 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_4019) + vec2<f32>(1.0f, 1.0f));
            let x_4022 : vec2<f32> = u_xlat64;
            let x_4023 : vec2<f32> = min(x_4022, vec2<f32>(0.0f, 0.0f));
            let x_4024 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4023.x, x_4023.y, x_4024.z, x_4024.w);
            let x_4026 : vec4<f32> = u_xlat15;
            let x_4029 : vec4<f32> = u_xlat15;
            let x_4032 : vec2<f32> = u_xlat66;
            let x_4033 : vec2<f32> = ((-(vec2<f32>(x_4026.x, x_4026.y)) * vec2<f32>(x_4029.x, x_4029.y)) + x_4032);
            let x_4034 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4033.x, x_4033.y, x_4034.z, x_4034.w);
            let x_4036 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_4036, vec2<f32>(0.0f, 0.0f));
            let x_4038 : vec2<f32> = u_xlat64;
            let x_4040 : vec2<f32> = u_xlat64;
            let x_4042 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_4038) * x_4040) + vec2<f32>(x_4042.y, x_4042.w));
            let x_4045 : vec4<f32> = u_xlat15;
            let x_4047 : vec2<f32> = (vec2<f32>(x_4045.x, x_4045.y) + vec2<f32>(1.0f, 1.0f));
            let x_4048 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4047.x, x_4047.y, x_4048.z, x_4048.w);
            let x_4050 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_4050 + vec2<f32>(1.0f, 1.0f));
            let x_4052 : vec4<f32> = u_xlat14;
            let x_4054 : vec2<f32> = (vec2<f32>(x_4052.x, x_4052.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4055 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4054.x, x_4054.y, x_4055.z, x_4055.w);
            let x_4057 : vec2<f32> = u_xlat66;
            let x_4058 : vec2<f32> = (x_4057 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4059 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4058.x, x_4058.y, x_4059.z, x_4059.w);
            let x_4061 : vec4<f32> = u_xlat15;
            let x_4063 : vec2<f32> = (vec2<f32>(x_4061.x, x_4061.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4064 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4063.x, x_4063.y, x_4064.z, x_4064.w);
            let x_4066 : vec2<f32> = u_xlat64;
            let x_4067 : vec2<f32> = (x_4066 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4068 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4067.x, x_4067.y, x_4068.z, x_4068.w);
            let x_4070 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_4070.y, x_4070.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4074 : f32 = u_xlat15.x;
            u_xlat16.z = x_4074;
            let x_4077 : f32 = u_xlat64.x;
            u_xlat16.w = x_4077;
            let x_4080 : f32 = u_xlat17.x;
            u_xlat14.z = x_4080;
            let x_4083 : f32 = u_xlat13.x;
            u_xlat14.w = x_4083;
            let x_4085 : vec4<f32> = u_xlat14;
            let x_4087 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_4085.z, x_4085.w, x_4085.x, x_4085.z) + vec4<f32>(x_4087.z, x_4087.w, x_4087.x, x_4087.z));
            let x_4091 : f32 = u_xlat16.y;
            u_xlat15.z = x_4091;
            let x_4094 : f32 = u_xlat64.y;
            u_xlat15.w = x_4094;
            let x_4097 : f32 = u_xlat14.y;
            u_xlat17.z = x_4097;
            let x_4100 : f32 = u_xlat13.z;
            u_xlat17.w = x_4100;
            let x_4102 : vec4<f32> = u_xlat15;
            let x_4104 : vec4<f32> = u_xlat17;
            let x_4106 : vec3<f32> = (vec3<f32>(x_4102.z, x_4102.y, x_4102.w) + vec3<f32>(x_4104.z, x_4104.y, x_4104.w));
            let x_4107 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4106.x, x_4106.y, x_4106.z, x_4107.w);
            let x_4109 : vec4<f32> = u_xlat14;
            let x_4111 : vec4<f32> = u_xlat18;
            let x_4113 : vec3<f32> = (vec3<f32>(x_4109.x, x_4109.z, x_4109.w) / vec3<f32>(x_4111.z, x_4111.w, x_4111.y));
            let x_4114 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4113.x, x_4113.y, x_4113.z, x_4114.w);
            let x_4116 : vec4<f32> = u_xlat14;
            let x_4118 : vec3<f32> = (vec3<f32>(x_4116.x, x_4116.y, x_4116.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4119 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4118.x, x_4118.y, x_4118.z, x_4119.w);
            let x_4121 : vec4<f32> = u_xlat17;
            let x_4123 : vec4<f32> = u_xlat13;
            let x_4125 : vec3<f32> = (vec3<f32>(x_4121.z, x_4121.y, x_4121.w) / vec3<f32>(x_4123.x, x_4123.y, x_4123.z));
            let x_4126 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4125.x, x_4125.y, x_4125.z, x_4126.w);
            let x_4128 : vec4<f32> = u_xlat15;
            let x_4130 : vec3<f32> = (vec3<f32>(x_4128.x, x_4128.y, x_4128.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4131 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4130.x, x_4130.y, x_4130.z, x_4131.w);
            let x_4133 : vec4<f32> = u_xlat14;
            let x_4136 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4138 : vec3<f32> = (vec3<f32>(x_4133.y, x_4133.x, x_4133.z) * vec3<f32>(x_4136.x, x_4136.x, x_4136.x));
            let x_4139 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4138.x, x_4138.y, x_4138.z, x_4139.w);
            let x_4141 : vec4<f32> = u_xlat15;
            let x_4144 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4146 : vec3<f32> = (vec3<f32>(x_4141.x, x_4141.y, x_4141.z) * vec3<f32>(x_4144.y, x_4144.y, x_4144.y));
            let x_4147 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4146.x, x_4146.y, x_4146.z, x_4147.w);
            let x_4150 : f32 = u_xlat15.x;
            u_xlat14.w = x_4150;
            let x_4152 : vec4<f32> = u_xlat12;
            let x_4155 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4158 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4152.x, x_4152.y, x_4152.x, x_4152.y) * vec4<f32>(x_4155.x, x_4155.y, x_4155.x, x_4155.y)) + vec4<f32>(x_4158.y, x_4158.w, x_4158.x, x_4158.w));
            let x_4161 : vec4<f32> = u_xlat12;
            let x_4164 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4167 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4161.x, x_4161.y) * vec2<f32>(x_4164.x, x_4164.y)) + vec2<f32>(x_4167.z, x_4167.w));
            let x_4171 : f32 = u_xlat14.y;
            u_xlat15.w = x_4171;
            let x_4173 : vec4<f32> = u_xlat15;
            let x_4174 : vec2<f32> = vec2<f32>(x_4173.y, x_4173.z);
            let x_4175 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4175.x, x_4174.x, x_4175.z, x_4174.y);
            let x_4177 : vec4<f32> = u_xlat12;
            let x_4180 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4183 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_4177.x, x_4177.y, x_4177.x, x_4177.y) * vec4<f32>(x_4180.x, x_4180.y, x_4180.x, x_4180.y)) + vec4<f32>(x_4183.x, x_4183.y, x_4183.z, x_4183.y));
            let x_4186 : vec4<f32> = u_xlat12;
            let x_4189 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4192 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4186.x, x_4186.y, x_4186.x, x_4186.y) * vec4<f32>(x_4189.x, x_4189.y, x_4189.x, x_4189.y)) + vec4<f32>(x_4192.w, x_4192.y, x_4192.w, x_4192.z));
            let x_4195 : vec4<f32> = u_xlat12;
            let x_4198 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4201 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4195.x, x_4195.y, x_4195.x, x_4195.y) * vec4<f32>(x_4198.x, x_4198.y, x_4198.x, x_4198.y)) + vec4<f32>(x_4201.x, x_4201.w, x_4201.z, x_4201.w));
            let x_4204 : vec4<f32> = u_xlat13;
            let x_4206 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_4204.x, x_4204.x, x_4204.x, x_4204.y) * vec4<f32>(x_4206.z, x_4206.w, x_4206.y, x_4206.z));
            let x_4209 : vec4<f32> = u_xlat13;
            let x_4211 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_4209.y, x_4209.y, x_4209.z, x_4209.z) * x_4211);
            let x_4214 : f32 = u_xlat13.z;
            let x_4216 : f32 = u_xlat18.y;
            u_xlat87 = (x_4214 * x_4216);
            let x_4219 : vec4<f32> = u_xlat16;
            let x_4220 : vec2<f32> = vec2<f32>(x_4219.x, x_4219.y);
            let x_4222 : f32 = u_xlat11.z;
            txVec64 = vec3<f32>(x_4220.x, x_4220.y, x_4222);
            let x_4229 : vec3<f32> = txVec64;
            let x_4231 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4229.xy, x_4229.z);
            u_xlat88 = x_4231;
            let x_4233 : vec4<f32> = u_xlat16;
            let x_4234 : vec2<f32> = vec2<f32>(x_4233.z, x_4233.w);
            let x_4236 : f32 = u_xlat11.z;
            txVec65 = vec3<f32>(x_4234.x, x_4234.y, x_4236);
            let x_4244 : vec3<f32> = txVec65;
            let x_4246 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4244.xy, x_4244.z);
            u_xlat89 = x_4246;
            let x_4247 : f32 = u_xlat89;
            let x_4249 : f32 = u_xlat19.y;
            u_xlat89 = (x_4247 * x_4249);
            let x_4252 : f32 = u_xlat19.x;
            let x_4253 : f32 = u_xlat88;
            let x_4255 : f32 = u_xlat89;
            u_xlat88 = ((x_4252 * x_4253) + x_4255);
            let x_4258 : vec2<f32> = u_xlat64;
            let x_4260 : f32 = u_xlat11.z;
            txVec66 = vec3<f32>(x_4258.x, x_4258.y, x_4260);
            let x_4267 : vec3<f32> = txVec66;
            let x_4269 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4267.xy, x_4267.z);
            u_xlat89 = x_4269;
            let x_4271 : f32 = u_xlat19.z;
            let x_4272 : f32 = u_xlat89;
            let x_4274 : f32 = u_xlat88;
            u_xlat88 = ((x_4271 * x_4272) + x_4274);
            let x_4277 : vec4<f32> = u_xlat15;
            let x_4278 : vec2<f32> = vec2<f32>(x_4277.x, x_4277.y);
            let x_4280 : f32 = u_xlat11.z;
            txVec67 = vec3<f32>(x_4278.x, x_4278.y, x_4280);
            let x_4287 : vec3<f32> = txVec67;
            let x_4289 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4287.xy, x_4287.z);
            u_xlat89 = x_4289;
            let x_4291 : f32 = u_xlat19.w;
            let x_4292 : f32 = u_xlat89;
            let x_4294 : f32 = u_xlat88;
            u_xlat88 = ((x_4291 * x_4292) + x_4294);
            let x_4297 : vec4<f32> = u_xlat17;
            let x_4298 : vec2<f32> = vec2<f32>(x_4297.x, x_4297.y);
            let x_4300 : f32 = u_xlat11.z;
            txVec68 = vec3<f32>(x_4298.x, x_4298.y, x_4300);
            let x_4307 : vec3<f32> = txVec68;
            let x_4309 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4307.xy, x_4307.z);
            u_xlat89 = x_4309;
            let x_4311 : f32 = u_xlat20.x;
            let x_4312 : f32 = u_xlat89;
            let x_4314 : f32 = u_xlat88;
            u_xlat88 = ((x_4311 * x_4312) + x_4314);
            let x_4317 : vec4<f32> = u_xlat17;
            let x_4318 : vec2<f32> = vec2<f32>(x_4317.z, x_4317.w);
            let x_4320 : f32 = u_xlat11.z;
            txVec69 = vec3<f32>(x_4318.x, x_4318.y, x_4320);
            let x_4327 : vec3<f32> = txVec69;
            let x_4329 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4327.xy, x_4327.z);
            u_xlat89 = x_4329;
            let x_4331 : f32 = u_xlat20.y;
            let x_4332 : f32 = u_xlat89;
            let x_4334 : f32 = u_xlat88;
            u_xlat88 = ((x_4331 * x_4332) + x_4334);
            let x_4337 : vec4<f32> = u_xlat15;
            let x_4338 : vec2<f32> = vec2<f32>(x_4337.z, x_4337.w);
            let x_4340 : f32 = u_xlat11.z;
            txVec70 = vec3<f32>(x_4338.x, x_4338.y, x_4340);
            let x_4347 : vec3<f32> = txVec70;
            let x_4349 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4347.xy, x_4347.z);
            u_xlat89 = x_4349;
            let x_4351 : f32 = u_xlat20.z;
            let x_4352 : f32 = u_xlat89;
            let x_4354 : f32 = u_xlat88;
            u_xlat88 = ((x_4351 * x_4352) + x_4354);
            let x_4357 : vec4<f32> = u_xlat14;
            let x_4358 : vec2<f32> = vec2<f32>(x_4357.x, x_4357.y);
            let x_4360 : f32 = u_xlat11.z;
            txVec71 = vec3<f32>(x_4358.x, x_4358.y, x_4360);
            let x_4367 : vec3<f32> = txVec71;
            let x_4369 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4367.xy, x_4367.z);
            u_xlat89 = x_4369;
            let x_4371 : f32 = u_xlat20.w;
            let x_4372 : f32 = u_xlat89;
            let x_4374 : f32 = u_xlat88;
            u_xlat88 = ((x_4371 * x_4372) + x_4374);
            let x_4377 : vec4<f32> = u_xlat14;
            let x_4378 : vec2<f32> = vec2<f32>(x_4377.z, x_4377.w);
            let x_4380 : f32 = u_xlat11.z;
            txVec72 = vec3<f32>(x_4378.x, x_4378.y, x_4380);
            let x_4387 : vec3<f32> = txVec72;
            let x_4389 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4387.xy, x_4387.z);
            u_xlat89 = x_4389;
            let x_4390 : f32 = u_xlat87;
            let x_4391 : f32 = u_xlat89;
            let x_4393 : f32 = u_xlat88;
            u_xlat86 = ((x_4390 * x_4391) + x_4393);
          } else {
            let x_4396 : vec4<f32> = u_xlat11;
            let x_4399 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4402 : vec2<f32> = ((vec2<f32>(x_4396.x, x_4396.y) * vec2<f32>(x_4399.z, x_4399.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4403 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4402.x, x_4402.y, x_4403.z, x_4403.w);
            let x_4405 : vec4<f32> = u_xlat12;
            let x_4407 : vec2<f32> = floor(vec2<f32>(x_4405.x, x_4405.y));
            let x_4408 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4407.x, x_4407.y, x_4408.z, x_4408.w);
            let x_4410 : vec4<f32> = u_xlat11;
            let x_4413 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4416 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4410.x, x_4410.y) * vec2<f32>(x_4413.z, x_4413.w)) + -(vec2<f32>(x_4416.x, x_4416.y)));
            let x_4420 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4420.x, x_4420.x, x_4420.y, x_4420.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4423 : vec4<f32> = u_xlat13;
            let x_4425 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4423.x, x_4423.x, x_4423.z, x_4423.z) * vec4<f32>(x_4425.x, x_4425.x, x_4425.z, x_4425.z));
            let x_4428 : vec4<f32> = u_xlat14;
            let x_4430 : vec2<f32> = (vec2<f32>(x_4428.y, x_4428.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4431 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4431.x, x_4430.x, x_4431.z, x_4430.y);
            let x_4433 : vec4<f32> = u_xlat14;
            let x_4436 : vec2<f32> = u_xlat64;
            let x_4438 : vec2<f32> = ((vec2<f32>(x_4433.x, x_4433.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4436));
            let x_4439 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4438.x, x_4439.y, x_4438.y, x_4439.w);
            let x_4441 : vec2<f32> = u_xlat64;
            let x_4443 : vec2<f32> = (-(x_4441) + vec2<f32>(1.0f, 1.0f));
            let x_4444 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4443.x, x_4443.y, x_4444.z, x_4444.w);
            let x_4446 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_4446, vec2<f32>(0.0f, 0.0f));
            let x_4448 : vec2<f32> = u_xlat66;
            let x_4450 : vec2<f32> = u_xlat66;
            let x_4452 : vec4<f32> = u_xlat14;
            let x_4454 : vec2<f32> = ((-(x_4448) * x_4450) + vec2<f32>(x_4452.x, x_4452.y));
            let x_4455 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4454.x, x_4454.y, x_4455.z, x_4455.w);
            let x_4457 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_4457, vec2<f32>(0.0f, 0.0f));
            let x_4460 : vec2<f32> = u_xlat66;
            let x_4462 : vec2<f32> = u_xlat66;
            let x_4464 : vec4<f32> = u_xlat13;
            let x_4466 : vec2<f32> = ((-(x_4460) * x_4462) + vec2<f32>(x_4464.y, x_4464.w));
            let x_4467 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_4466.x, x_4467.y, x_4466.y);
            let x_4469 : vec4<f32> = u_xlat14;
            let x_4471 : vec2<f32> = (vec2<f32>(x_4469.x, x_4469.y) + vec2<f32>(2.0f, 2.0f));
            let x_4472 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4471.x, x_4471.y, x_4472.z, x_4472.w);
            let x_4474 : vec3<f32> = u_xlat39;
            let x_4476 : vec2<f32> = (vec2<f32>(x_4474.x, x_4474.z) + vec2<f32>(2.0f, 2.0f));
            let x_4477 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4477.x, x_4476.x, x_4477.z, x_4476.y);
            let x_4480 : f32 = u_xlat13.y;
            u_xlat16.z = (x_4480 * 0.08163200318813323975f);
            let x_4483 : vec4<f32> = u_xlat13;
            let x_4485 : vec3<f32> = (vec3<f32>(x_4483.z, x_4483.x, x_4483.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4486 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4485.x, x_4485.y, x_4485.z, x_4486.w);
            let x_4488 : vec4<f32> = u_xlat14;
            let x_4490 : vec2<f32> = (vec2<f32>(x_4488.x, x_4488.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4491 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4490.x, x_4490.y, x_4491.z, x_4491.w);
            let x_4494 : f32 = u_xlat17.y;
            u_xlat16.x = x_4494;
            let x_4496 : vec2<f32> = u_xlat64;
            let x_4499 : vec2<f32> = ((vec2<f32>(x_4496.x, x_4496.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4500 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4500.x, x_4499.x, x_4500.z, x_4499.y);
            let x_4502 : vec2<f32> = u_xlat64;
            let x_4505 : vec2<f32> = ((vec2<f32>(x_4502.x, x_4502.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4506 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4505.x, x_4506.y, x_4505.y, x_4506.w);
            let x_4509 : f32 = u_xlat13.x;
            u_xlat14.y = x_4509;
            let x_4512 : f32 = u_xlat15.y;
            u_xlat14.w = x_4512;
            let x_4514 : vec4<f32> = u_xlat14;
            let x_4515 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4514 + x_4515);
            let x_4517 : vec2<f32> = u_xlat64;
            let x_4520 : vec2<f32> = ((vec2<f32>(x_4517.y, x_4517.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4521 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4521.x, x_4520.x, x_4521.z, x_4520.y);
            let x_4523 : vec2<f32> = u_xlat64;
            let x_4526 : vec2<f32> = ((vec2<f32>(x_4523.y, x_4523.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4527 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4526.x, x_4527.y, x_4526.y, x_4527.w);
            let x_4530 : f32 = u_xlat13.y;
            u_xlat15.y = x_4530;
            let x_4532 : vec4<f32> = u_xlat15;
            let x_4533 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4532 + x_4533);
            let x_4535 : vec4<f32> = u_xlat14;
            let x_4536 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_4535 / x_4536);
            let x_4538 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4538 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4540 : vec4<f32> = u_xlat15;
            let x_4541 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_4540 / x_4541);
            let x_4543 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4543 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4545 : vec4<f32> = u_xlat14;
            let x_4548 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4545.w, x_4545.x, x_4545.y, x_4545.z) * vec4<f32>(x_4548.x, x_4548.x, x_4548.x, x_4548.x));
            let x_4551 : vec4<f32> = u_xlat15;
            let x_4554 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_4551.x, x_4551.w, x_4551.y, x_4551.z) * vec4<f32>(x_4554.y, x_4554.y, x_4554.y, x_4554.y));
            let x_4557 : vec4<f32> = u_xlat14;
            let x_4558 : vec3<f32> = vec3<f32>(x_4557.y, x_4557.z, x_4557.w);
            let x_4559 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4558.x, x_4559.y, x_4558.y, x_4558.z);
            let x_4562 : f32 = u_xlat15.x;
            u_xlat17.y = x_4562;
            let x_4564 : vec4<f32> = u_xlat12;
            let x_4567 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4570 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4564.x, x_4564.y, x_4564.x, x_4564.y) * vec4<f32>(x_4567.x, x_4567.y, x_4567.x, x_4567.y)) + vec4<f32>(x_4570.x, x_4570.y, x_4570.z, x_4570.y));
            let x_4573 : vec4<f32> = u_xlat12;
            let x_4576 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4579 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_4573.x, x_4573.y) * vec2<f32>(x_4576.x, x_4576.y)) + vec2<f32>(x_4579.w, x_4579.y));
            let x_4583 : f32 = u_xlat17.y;
            u_xlat14.y = x_4583;
            let x_4586 : f32 = u_xlat15.z;
            u_xlat17.y = x_4586;
            let x_4588 : vec4<f32> = u_xlat12;
            let x_4591 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4594 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_4588.x, x_4588.y, x_4588.x, x_4588.y) * vec4<f32>(x_4591.x, x_4591.y, x_4591.x, x_4591.y)) + vec4<f32>(x_4594.x, x_4594.y, x_4594.z, x_4594.y));
            let x_4597 : vec4<f32> = u_xlat12;
            let x_4600 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4603 : vec4<f32> = u_xlat17;
            let x_4605 : vec2<f32> = ((vec2<f32>(x_4597.x, x_4597.y) * vec2<f32>(x_4600.x, x_4600.y)) + vec2<f32>(x_4603.w, x_4603.y));
            let x_4606 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_4605.x, x_4605.y, x_4606.z, x_4606.w);
            let x_4609 : f32 = u_xlat17.y;
            u_xlat14.z = x_4609;
            let x_4612 : vec4<f32> = u_xlat12;
            let x_4615 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4618 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4612.x, x_4612.y, x_4612.x, x_4612.y) * vec4<f32>(x_4615.x, x_4615.y, x_4615.x, x_4615.y)) + vec4<f32>(x_4618.x, x_4618.y, x_4618.x, x_4618.z));
            let x_4622 : f32 = u_xlat15.w;
            u_xlat17.y = x_4622;
            let x_4625 : vec4<f32> = u_xlat12;
            let x_4628 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4631 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4625.x, x_4625.y, x_4625.x, x_4625.y) * vec4<f32>(x_4628.x, x_4628.y, x_4628.x, x_4628.y)) + vec4<f32>(x_4631.x, x_4631.y, x_4631.z, x_4631.y));
            let x_4635 : vec4<f32> = u_xlat12;
            let x_4638 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4641 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_4635.x, x_4635.y) * vec2<f32>(x_4638.x, x_4638.y)) + vec2<f32>(x_4641.w, x_4641.y));
            let x_4645 : f32 = u_xlat17.y;
            u_xlat14.w = x_4645;
            let x_4648 : vec4<f32> = u_xlat12;
            let x_4651 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4654 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4648.x, x_4648.y) * vec2<f32>(x_4651.x, x_4651.y)) + vec2<f32>(x_4654.x, x_4654.w));
            let x_4657 : vec4<f32> = u_xlat17;
            let x_4658 : vec3<f32> = vec3<f32>(x_4657.x, x_4657.z, x_4657.w);
            let x_4659 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4658.x, x_4659.y, x_4658.y, x_4658.z);
            let x_4661 : vec4<f32> = u_xlat12;
            let x_4664 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4667 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4661.x, x_4661.y, x_4661.x, x_4661.y) * vec4<f32>(x_4664.x, x_4664.y, x_4664.x, x_4664.y)) + vec4<f32>(x_4667.x, x_4667.y, x_4667.z, x_4667.y));
            let x_4671 : vec4<f32> = u_xlat12;
            let x_4674 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4677 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4671.x, x_4671.y) * vec2<f32>(x_4674.x, x_4674.y)) + vec2<f32>(x_4677.w, x_4677.y));
            let x_4681 : f32 = u_xlat14.x;
            u_xlat15.x = x_4681;
            let x_4683 : vec4<f32> = u_xlat12;
            let x_4686 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4689 : vec4<f32> = u_xlat15;
            let x_4691 : vec2<f32> = ((vec2<f32>(x_4683.x, x_4683.y) * vec2<f32>(x_4686.x, x_4686.y)) + vec2<f32>(x_4689.x, x_4689.y));
            let x_4692 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4691.x, x_4691.y, x_4692.z, x_4692.w);
            let x_4695 : vec4<f32> = u_xlat13;
            let x_4697 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4695.x, x_4695.x, x_4695.x, x_4695.x) * x_4697);
            let x_4700 : vec4<f32> = u_xlat13;
            let x_4702 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4700.y, x_4700.y, x_4700.y, x_4700.y) * x_4702);
            let x_4705 : vec4<f32> = u_xlat13;
            let x_4707 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4705.z, x_4705.z, x_4705.z, x_4705.z) * x_4707);
            let x_4709 : vec4<f32> = u_xlat13;
            let x_4711 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4709.w, x_4709.w, x_4709.w, x_4709.w) * x_4711);
            let x_4714 : vec4<f32> = u_xlat18;
            let x_4715 : vec2<f32> = vec2<f32>(x_4714.x, x_4714.y);
            let x_4717 : f32 = u_xlat11.z;
            txVec73 = vec3<f32>(x_4715.x, x_4715.y, x_4717);
            let x_4724 : vec3<f32> = txVec73;
            let x_4726 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4724.xy, x_4724.z);
            u_xlat87 = x_4726;
            let x_4728 : vec4<f32> = u_xlat18;
            let x_4729 : vec2<f32> = vec2<f32>(x_4728.z, x_4728.w);
            let x_4731 : f32 = u_xlat11.z;
            txVec74 = vec3<f32>(x_4729.x, x_4729.y, x_4731);
            let x_4738 : vec3<f32> = txVec74;
            let x_4740 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4738.xy, x_4738.z);
            u_xlat88 = x_4740;
            let x_4741 : f32 = u_xlat88;
            let x_4743 : f32 = u_xlat23.y;
            u_xlat88 = (x_4741 * x_4743);
            let x_4746 : f32 = u_xlat23.x;
            let x_4747 : f32 = u_xlat87;
            let x_4749 : f32 = u_xlat88;
            u_xlat87 = ((x_4746 * x_4747) + x_4749);
            let x_4752 : vec2<f32> = u_xlat64;
            let x_4754 : f32 = u_xlat11.z;
            txVec75 = vec3<f32>(x_4752.x, x_4752.y, x_4754);
            let x_4761 : vec3<f32> = txVec75;
            let x_4763 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4761.xy, x_4761.z);
            u_xlat88 = x_4763;
            let x_4765 : f32 = u_xlat23.z;
            let x_4766 : f32 = u_xlat88;
            let x_4768 : f32 = u_xlat87;
            u_xlat87 = ((x_4765 * x_4766) + x_4768);
            let x_4771 : vec4<f32> = u_xlat21;
            let x_4772 : vec2<f32> = vec2<f32>(x_4771.x, x_4771.y);
            let x_4774 : f32 = u_xlat11.z;
            txVec76 = vec3<f32>(x_4772.x, x_4772.y, x_4774);
            let x_4781 : vec3<f32> = txVec76;
            let x_4783 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4781.xy, x_4781.z);
            u_xlat88 = x_4783;
            let x_4785 : f32 = u_xlat23.w;
            let x_4786 : f32 = u_xlat88;
            let x_4788 : f32 = u_xlat87;
            u_xlat87 = ((x_4785 * x_4786) + x_4788);
            let x_4791 : vec4<f32> = u_xlat19;
            let x_4792 : vec2<f32> = vec2<f32>(x_4791.x, x_4791.y);
            let x_4794 : f32 = u_xlat11.z;
            txVec77 = vec3<f32>(x_4792.x, x_4792.y, x_4794);
            let x_4801 : vec3<f32> = txVec77;
            let x_4803 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4801.xy, x_4801.z);
            u_xlat88 = x_4803;
            let x_4805 : f32 = u_xlat24.x;
            let x_4806 : f32 = u_xlat88;
            let x_4808 : f32 = u_xlat87;
            u_xlat87 = ((x_4805 * x_4806) + x_4808);
            let x_4811 : vec4<f32> = u_xlat19;
            let x_4812 : vec2<f32> = vec2<f32>(x_4811.z, x_4811.w);
            let x_4814 : f32 = u_xlat11.z;
            txVec78 = vec3<f32>(x_4812.x, x_4812.y, x_4814);
            let x_4821 : vec3<f32> = txVec78;
            let x_4823 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4821.xy, x_4821.z);
            u_xlat88 = x_4823;
            let x_4825 : f32 = u_xlat24.y;
            let x_4826 : f32 = u_xlat88;
            let x_4828 : f32 = u_xlat87;
            u_xlat87 = ((x_4825 * x_4826) + x_4828);
            let x_4831 : vec4<f32> = u_xlat20;
            let x_4832 : vec2<f32> = vec2<f32>(x_4831.x, x_4831.y);
            let x_4834 : f32 = u_xlat11.z;
            txVec79 = vec3<f32>(x_4832.x, x_4832.y, x_4834);
            let x_4841 : vec3<f32> = txVec79;
            let x_4843 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4841.xy, x_4841.z);
            u_xlat88 = x_4843;
            let x_4845 : f32 = u_xlat24.z;
            let x_4846 : f32 = u_xlat88;
            let x_4848 : f32 = u_xlat87;
            u_xlat87 = ((x_4845 * x_4846) + x_4848);
            let x_4851 : vec4<f32> = u_xlat21;
            let x_4852 : vec2<f32> = vec2<f32>(x_4851.z, x_4851.w);
            let x_4854 : f32 = u_xlat11.z;
            txVec80 = vec3<f32>(x_4852.x, x_4852.y, x_4854);
            let x_4861 : vec3<f32> = txVec80;
            let x_4863 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4861.xy, x_4861.z);
            u_xlat88 = x_4863;
            let x_4865 : f32 = u_xlat24.w;
            let x_4866 : f32 = u_xlat88;
            let x_4868 : f32 = u_xlat87;
            u_xlat87 = ((x_4865 * x_4866) + x_4868);
            let x_4871 : vec4<f32> = u_xlat22;
            let x_4872 : vec2<f32> = vec2<f32>(x_4871.x, x_4871.y);
            let x_4874 : f32 = u_xlat11.z;
            txVec81 = vec3<f32>(x_4872.x, x_4872.y, x_4874);
            let x_4881 : vec3<f32> = txVec81;
            let x_4883 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4881.xy, x_4881.z);
            u_xlat88 = x_4883;
            let x_4885 : f32 = u_xlat25.x;
            let x_4886 : f32 = u_xlat88;
            let x_4888 : f32 = u_xlat87;
            u_xlat87 = ((x_4885 * x_4886) + x_4888);
            let x_4891 : vec4<f32> = u_xlat22;
            let x_4892 : vec2<f32> = vec2<f32>(x_4891.z, x_4891.w);
            let x_4894 : f32 = u_xlat11.z;
            txVec82 = vec3<f32>(x_4892.x, x_4892.y, x_4894);
            let x_4901 : vec3<f32> = txVec82;
            let x_4903 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4901.xy, x_4901.z);
            u_xlat88 = x_4903;
            let x_4905 : f32 = u_xlat25.y;
            let x_4906 : f32 = u_xlat88;
            let x_4908 : f32 = u_xlat87;
            u_xlat87 = ((x_4905 * x_4906) + x_4908);
            let x_4911 : vec2<f32> = u_xlat40;
            let x_4913 : f32 = u_xlat11.z;
            txVec83 = vec3<f32>(x_4911.x, x_4911.y, x_4913);
            let x_4920 : vec3<f32> = txVec83;
            let x_4922 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4920.xy, x_4920.z);
            u_xlat88 = x_4922;
            let x_4924 : f32 = u_xlat25.z;
            let x_4925 : f32 = u_xlat88;
            let x_4927 : f32 = u_xlat87;
            u_xlat87 = ((x_4924 * x_4925) + x_4927);
            let x_4930 : vec2<f32> = u_xlat72;
            let x_4932 : f32 = u_xlat11.z;
            txVec84 = vec3<f32>(x_4930.x, x_4930.y, x_4932);
            let x_4939 : vec3<f32> = txVec84;
            let x_4941 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4939.xy, x_4939.z);
            u_xlat88 = x_4941;
            let x_4943 : f32 = u_xlat25.w;
            let x_4944 : f32 = u_xlat88;
            let x_4946 : f32 = u_xlat87;
            u_xlat87 = ((x_4943 * x_4944) + x_4946);
            let x_4949 : vec4<f32> = u_xlat17;
            let x_4950 : vec2<f32> = vec2<f32>(x_4949.x, x_4949.y);
            let x_4952 : f32 = u_xlat11.z;
            txVec85 = vec3<f32>(x_4950.x, x_4950.y, x_4952);
            let x_4959 : vec3<f32> = txVec85;
            let x_4961 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4959.xy, x_4959.z);
            u_xlat88 = x_4961;
            let x_4963 : f32 = u_xlat13.x;
            let x_4964 : f32 = u_xlat88;
            let x_4966 : f32 = u_xlat87;
            u_xlat87 = ((x_4963 * x_4964) + x_4966);
            let x_4969 : vec4<f32> = u_xlat17;
            let x_4970 : vec2<f32> = vec2<f32>(x_4969.z, x_4969.w);
            let x_4972 : f32 = u_xlat11.z;
            txVec86 = vec3<f32>(x_4970.x, x_4970.y, x_4972);
            let x_4979 : vec3<f32> = txVec86;
            let x_4981 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4979.xy, x_4979.z);
            u_xlat88 = x_4981;
            let x_4983 : f32 = u_xlat13.y;
            let x_4984 : f32 = u_xlat88;
            let x_4986 : f32 = u_xlat87;
            u_xlat87 = ((x_4983 * x_4984) + x_4986);
            let x_4989 : vec2<f32> = u_xlat67;
            let x_4991 : f32 = u_xlat11.z;
            txVec87 = vec3<f32>(x_4989.x, x_4989.y, x_4991);
            let x_4998 : vec3<f32> = txVec87;
            let x_5000 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4998.xy, x_4998.z);
            u_xlat88 = x_5000;
            let x_5002 : f32 = u_xlat13.z;
            let x_5003 : f32 = u_xlat88;
            let x_5005 : f32 = u_xlat87;
            u_xlat87 = ((x_5002 * x_5003) + x_5005);
            let x_5008 : vec4<f32> = u_xlat12;
            let x_5009 : vec2<f32> = vec2<f32>(x_5008.x, x_5008.y);
            let x_5011 : f32 = u_xlat11.z;
            txVec88 = vec3<f32>(x_5009.x, x_5009.y, x_5011);
            let x_5018 : vec3<f32> = txVec88;
            let x_5020 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5018.xy, x_5018.z);
            u_xlat88 = x_5020;
            let x_5022 : f32 = u_xlat13.w;
            let x_5023 : f32 = u_xlat88;
            let x_5025 : f32 = u_xlat87;
            u_xlat86 = ((x_5022 * x_5023) + x_5025);
          }
        }
      } else {
        let x_5029 : vec4<f32> = u_xlat11;
        let x_5030 : vec2<f32> = vec2<f32>(x_5029.x, x_5029.y);
        let x_5032 : f32 = u_xlat11.z;
        txVec89 = vec3<f32>(x_5030.x, x_5030.y, x_5032);
        let x_5039 : vec3<f32> = txVec89;
        let x_5041 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5039.xy, x_5039.z);
        u_xlat86 = x_5041;
      }
      let x_5042 : i32 = u_xlati82;
      let x_5044 : f32 = x_241.x_AdditionalShadowParams[x_5042].x;
      u_xlat87 = (1.0f + -(x_5044));
      let x_5047 : f32 = u_xlat86;
      let x_5048 : i32 = u_xlati82;
      let x_5050 : f32 = x_241.x_AdditionalShadowParams[x_5048].x;
      let x_5052 : f32 = u_xlat87;
      u_xlat86 = ((x_5047 * x_5050) + x_5052);
      let x_5055 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_5055);
      let x_5059 : f32 = u_xlat11.z;
      u_xlatb88 = (x_5059 >= 1.0f);
      let x_5061 : bool = u_xlatb87;
      let x_5062 : bool = u_xlatb88;
      u_xlatb87 = (x_5061 | x_5062);
      let x_5064 : bool = u_xlatb87;
      let x_5065 : f32 = u_xlat86;
      u_xlat86 = select(x_5065, 1.0f, x_5064);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_5068 : f32 = u_xlat86;
    u_xlat87 = (-(x_5068) + 1.0f);
    let x_5072 : f32 = u_xlat2.x;
    let x_5073 : f32 = u_xlat87;
    let x_5075 : f32 = u_xlat86;
    u_xlat86 = ((x_5072 * x_5073) + x_5075);
    let x_5078 : i32 = u_xlati82;
    u_xlati87 = (1i << bitcast<u32>((x_5078 & 31i)));
    let x_5082 : i32 = u_xlati87;
    let x_5085 : f32 = x_3160.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_5082) & bitcast<u32>(x_5085)));
    let x_5089 : i32 = u_xlati87;
    if ((x_5089 != 0i)) {
      let x_5093 : i32 = u_xlati82;
      let x_5095 : f32 = x_3160.x_AdditionalLightsLightTypes[x_5093].el;
      u_xlati87 = i32(x_5095);
      let x_5098 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_5098 != 0i));
      let x_5102 : i32 = u_xlati82;
      u_xlati11 = (x_5102 << bitcast<u32>(2i));
      let x_5104 : i32 = u_xlati88;
      if ((x_5104 != 0i)) {
        let x_5109 : vec3<f32> = vs_INTERP8;
        let x_5111 : i32 = u_xlati11;
        let x_5114 : i32 = u_xlati11;
        let x_5118 : vec4<f32> = x_3160.x_AdditionalLightsWorldToLights[((x_5111 + 1i) / 4i)][((x_5114 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_5109.y, x_5109.y, x_5109.y) * vec3<f32>(x_5118.x, x_5118.y, x_5118.w));
        let x_5121 : i32 = u_xlati11;
        let x_5123 : i32 = u_xlati11;
        let x_5126 : vec4<f32> = x_3160.x_AdditionalLightsWorldToLights[(x_5121 / 4i)][(x_5123 % 4i)];
        let x_5128 : vec3<f32> = vs_INTERP8;
        let x_5131 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_5126.x, x_5126.y, x_5126.w) * vec3<f32>(x_5128.x, x_5128.x, x_5128.x)) + x_5131);
        let x_5133 : i32 = u_xlati11;
        let x_5136 : i32 = u_xlati11;
        let x_5140 : vec4<f32> = x_3160.x_AdditionalLightsWorldToLights[((x_5133 + 2i) / 4i)][((x_5136 + 2i) % 4i)];
        let x_5142 : vec3<f32> = vs_INTERP8;
        let x_5145 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_5140.x, x_5140.y, x_5140.w) * vec3<f32>(x_5142.z, x_5142.z, x_5142.z)) + x_5145);
        let x_5147 : vec3<f32> = u_xlat37;
        let x_5148 : i32 = u_xlati11;
        let x_5151 : i32 = u_xlati11;
        let x_5155 : vec4<f32> = x_3160.x_AdditionalLightsWorldToLights[((x_5148 + 3i) / 4i)][((x_5151 + 3i) % 4i)];
        u_xlat37 = (x_5147 + vec3<f32>(x_5155.x, x_5155.y, x_5155.w));
        let x_5158 : vec3<f32> = u_xlat37;
        let x_5160 : vec3<f32> = u_xlat37;
        let x_5162 : vec2<f32> = (vec2<f32>(x_5158.x, x_5158.y) / vec2<f32>(x_5160.z, x_5160.z));
        let x_5163 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5162.x, x_5162.y, x_5163.z);
        let x_5165 : vec3<f32> = u_xlat37;
        let x_5168 : vec2<f32> = ((vec2<f32>(x_5165.x, x_5165.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_5169 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5168.x, x_5168.y, x_5169.z);
        let x_5171 : vec3<f32> = u_xlat37;
        let x_5175 : vec2<f32> = clamp(vec2<f32>(x_5171.x, x_5171.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_5176 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5175.x, x_5175.y, x_5176.z);
        let x_5178 : i32 = u_xlati82;
        let x_5180 : vec4<f32> = x_3160.x_AdditionalLightsCookieAtlasUVRects[x_5178];
        let x_5182 : vec3<f32> = u_xlat37;
        let x_5185 : i32 = u_xlati82;
        let x_5187 : vec4<f32> = x_3160.x_AdditionalLightsCookieAtlasUVRects[x_5185];
        let x_5189 : vec2<f32> = ((vec2<f32>(x_5180.x, x_5180.y) * vec2<f32>(x_5182.x, x_5182.y)) + vec2<f32>(x_5187.z, x_5187.w));
        let x_5190 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5189.x, x_5189.y, x_5190.z);
      } else {
        let x_5193 : i32 = u_xlati87;
        u_xlatb87 = (x_5193 == 1i);
        let x_5195 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_5195);
        let x_5197 : i32 = u_xlati87;
        if ((x_5197 != 0i)) {
          let x_5201 : vec3<f32> = vs_INTERP8;
          let x_5203 : i32 = u_xlati11;
          let x_5206 : i32 = u_xlati11;
          let x_5210 : vec4<f32> = x_3160.x_AdditionalLightsWorldToLights[((x_5203 + 1i) / 4i)][((x_5206 + 1i) % 4i)];
          let x_5212 : vec2<f32> = (vec2<f32>(x_5201.y, x_5201.y) * vec2<f32>(x_5210.x, x_5210.y));
          let x_5213 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5212.x, x_5212.y, x_5213.z, x_5213.w);
          let x_5215 : i32 = u_xlati11;
          let x_5217 : i32 = u_xlati11;
          let x_5220 : vec4<f32> = x_3160.x_AdditionalLightsWorldToLights[(x_5215 / 4i)][(x_5217 % 4i)];
          let x_5222 : vec3<f32> = vs_INTERP8;
          let x_5225 : vec4<f32> = u_xlat12;
          let x_5227 : vec2<f32> = ((vec2<f32>(x_5220.x, x_5220.y) * vec2<f32>(x_5222.x, x_5222.x)) + vec2<f32>(x_5225.x, x_5225.y));
          let x_5228 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5227.x, x_5227.y, x_5228.z, x_5228.w);
          let x_5230 : i32 = u_xlati11;
          let x_5233 : i32 = u_xlati11;
          let x_5237 : vec4<f32> = x_3160.x_AdditionalLightsWorldToLights[((x_5230 + 2i) / 4i)][((x_5233 + 2i) % 4i)];
          let x_5239 : vec3<f32> = vs_INTERP8;
          let x_5242 : vec4<f32> = u_xlat12;
          let x_5244 : vec2<f32> = ((vec2<f32>(x_5237.x, x_5237.y) * vec2<f32>(x_5239.z, x_5239.z)) + vec2<f32>(x_5242.x, x_5242.y));
          let x_5245 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5244.x, x_5244.y, x_5245.z, x_5245.w);
          let x_5247 : vec4<f32> = u_xlat12;
          let x_5249 : i32 = u_xlati11;
          let x_5252 : i32 = u_xlati11;
          let x_5256 : vec4<f32> = x_3160.x_AdditionalLightsWorldToLights[((x_5249 + 3i) / 4i)][((x_5252 + 3i) % 4i)];
          let x_5258 : vec2<f32> = (vec2<f32>(x_5247.x, x_5247.y) + vec2<f32>(x_5256.x, x_5256.y));
          let x_5259 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5258.x, x_5258.y, x_5259.z, x_5259.w);
          let x_5261 : vec4<f32> = u_xlat12;
          let x_5264 : vec2<f32> = ((vec2<f32>(x_5261.x, x_5261.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5265 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5264.x, x_5264.y, x_5265.z, x_5265.w);
          let x_5267 : vec4<f32> = u_xlat12;
          let x_5269 : vec2<f32> = fract(vec2<f32>(x_5267.x, x_5267.y));
          let x_5270 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5269.x, x_5269.y, x_5270.z, x_5270.w);
          let x_5272 : i32 = u_xlati82;
          let x_5274 : vec4<f32> = x_3160.x_AdditionalLightsCookieAtlasUVRects[x_5272];
          let x_5276 : vec4<f32> = u_xlat12;
          let x_5279 : i32 = u_xlati82;
          let x_5281 : vec4<f32> = x_3160.x_AdditionalLightsCookieAtlasUVRects[x_5279];
          let x_5283 : vec2<f32> = ((vec2<f32>(x_5274.x, x_5274.y) * vec2<f32>(x_5276.x, x_5276.y)) + vec2<f32>(x_5281.z, x_5281.w));
          let x_5284 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5283.x, x_5283.y, x_5284.z);
        } else {
          let x_5287 : vec3<f32> = vs_INTERP8;
          let x_5289 : i32 = u_xlati11;
          let x_5292 : i32 = u_xlati11;
          let x_5296 : vec4<f32> = x_3160.x_AdditionalLightsWorldToLights[((x_5289 + 1i) / 4i)][((x_5292 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_5287.y, x_5287.y, x_5287.y, x_5287.y) * x_5296);
          let x_5298 : i32 = u_xlati11;
          let x_5300 : i32 = u_xlati11;
          let x_5303 : vec4<f32> = x_3160.x_AdditionalLightsWorldToLights[(x_5298 / 4i)][(x_5300 % 4i)];
          let x_5304 : vec3<f32> = vs_INTERP8;
          let x_5307 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5303 * vec4<f32>(x_5304.x, x_5304.x, x_5304.x, x_5304.x)) + x_5307);
          let x_5309 : i32 = u_xlati11;
          let x_5312 : i32 = u_xlati11;
          let x_5316 : vec4<f32> = x_3160.x_AdditionalLightsWorldToLights[((x_5309 + 2i) / 4i)][((x_5312 + 2i) % 4i)];
          let x_5317 : vec3<f32> = vs_INTERP8;
          let x_5320 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5316 * vec4<f32>(x_5317.z, x_5317.z, x_5317.z, x_5317.z)) + x_5320);
          let x_5322 : vec4<f32> = u_xlat12;
          let x_5323 : i32 = u_xlati11;
          let x_5326 : i32 = u_xlati11;
          let x_5330 : vec4<f32> = x_3160.x_AdditionalLightsWorldToLights[((x_5323 + 3i) / 4i)][((x_5326 + 3i) % 4i)];
          u_xlat12 = (x_5322 + x_5330);
          let x_5332 : vec4<f32> = u_xlat12;
          let x_5334 : vec4<f32> = u_xlat12;
          let x_5336 : vec3<f32> = (vec3<f32>(x_5332.x, x_5332.y, x_5332.z) / vec3<f32>(x_5334.w, x_5334.w, x_5334.w));
          let x_5337 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5336.x, x_5336.y, x_5336.z, x_5337.w);
          let x_5339 : vec4<f32> = u_xlat12;
          let x_5341 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_5339.x, x_5339.y, x_5339.z), vec3<f32>(x_5341.x, x_5341.y, x_5341.z));
          let x_5344 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_5344);
          let x_5346 : f32 = u_xlat87;
          let x_5348 : vec4<f32> = u_xlat12;
          let x_5350 : vec3<f32> = (vec3<f32>(x_5346, x_5346, x_5346) * vec3<f32>(x_5348.x, x_5348.y, x_5348.z));
          let x_5351 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5350.x, x_5350.y, x_5350.z, x_5351.w);
          let x_5353 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_5353.x, x_5353.y, x_5353.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_5358 : f32 = u_xlat87;
          u_xlat87 = max(x_5358, 0.00000099999999747524f);
          let x_5361 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_5361);
          let x_5363 : f32 = u_xlat87;
          let x_5365 : vec4<f32> = u_xlat12;
          let x_5367 : vec3<f32> = (vec3<f32>(x_5363, x_5363, x_5363) * vec3<f32>(x_5365.z, x_5365.x, x_5365.y));
          let x_5368 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_5367.x, x_5367.y, x_5367.z, x_5368.w);
          let x_5371 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_5371);
          let x_5375 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_5375, 0.0f, 1.0f);
          let x_5378 : vec4<f32> = u_xlat13;
          let x_5380 : vec4<bool> = (vec4<f32>(x_5378.y, x_5378.y, x_5378.y, x_5378.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_5381 : vec2<bool> = vec2<bool>(x_5380.x, x_5380.w);
          let x_5382 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_5381.x, x_5382.y, x_5382.z, x_5381.y);
          let x_5385 : bool = u_xlatb11.x;
          if (x_5385) {
            let x_5390 : f32 = u_xlat13.x;
            x_5386 = x_5390;
          } else {
            let x_5393 : f32 = u_xlat13.x;
            x_5386 = -(x_5393);
          }
          let x_5395 : f32 = x_5386;
          u_xlat11.x = x_5395;
          let x_5398 : bool = u_xlatb11.w;
          if (x_5398) {
            let x_5403 : f32 = u_xlat13.x;
            x_5399 = x_5403;
          } else {
            let x_5406 : f32 = u_xlat13.x;
            x_5399 = -(x_5406);
          }
          let x_5408 : f32 = x_5399;
          u_xlat11.w = x_5408;
          let x_5410 : vec4<f32> = u_xlat12;
          let x_5412 : f32 = u_xlat87;
          let x_5415 : vec4<f32> = u_xlat11;
          let x_5417 : vec2<f32> = ((vec2<f32>(x_5410.x, x_5410.y) * vec2<f32>(x_5412, x_5412)) + vec2<f32>(x_5415.x, x_5415.w));
          let x_5418 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5417.x, x_5418.y, x_5418.z, x_5417.y);
          let x_5420 : vec4<f32> = u_xlat11;
          let x_5423 : vec2<f32> = ((vec2<f32>(x_5420.x, x_5420.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5424 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5423.x, x_5424.y, x_5424.z, x_5423.y);
          let x_5426 : vec4<f32> = u_xlat11;
          let x_5430 : vec2<f32> = clamp(vec2<f32>(x_5426.x, x_5426.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_5431 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5430.x, x_5431.y, x_5431.z, x_5430.y);
          let x_5433 : i32 = u_xlati82;
          let x_5435 : vec4<f32> = x_3160.x_AdditionalLightsCookieAtlasUVRects[x_5433];
          let x_5437 : vec4<f32> = u_xlat11;
          let x_5440 : i32 = u_xlati82;
          let x_5442 : vec4<f32> = x_3160.x_AdditionalLightsCookieAtlasUVRects[x_5440];
          let x_5444 : vec2<f32> = ((vec2<f32>(x_5435.x, x_5435.y) * vec2<f32>(x_5437.x, x_5437.w)) + vec2<f32>(x_5442.z, x_5442.w));
          let x_5445 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5444.x, x_5444.y, x_5445.z);
        }
      }
      let x_5452 : vec3<f32> = u_xlat37;
      let x_5454 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_5452.x, x_5452.y), 0.0f);
      u_xlat11 = x_5454;
      let x_5456 : bool = u_xlatb57.y;
      if (x_5456) {
        let x_5461 : f32 = u_xlat11.w;
        x_5457 = x_5461;
      } else {
        let x_5464 : f32 = u_xlat11.x;
        x_5457 = x_5464;
      }
      let x_5465 : f32 = x_5457;
      u_xlat87 = x_5465;
      let x_5467 : bool = u_xlatb57.x;
      if (x_5467) {
        let x_5471 : vec4<f32> = u_xlat11;
        x_5468 = vec3<f32>(x_5471.x, x_5471.y, x_5471.z);
      } else {
        let x_5474 : f32 = u_xlat87;
        x_5468 = vec3<f32>(x_5474, x_5474, x_5474);
      }
      let x_5476 : vec3<f32> = x_5468;
      let x_5477 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_5476.x, x_5476.y, x_5476.z, x_5477.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_5483 : vec4<f32> = u_xlat11;
    let x_5485 : i32 = u_xlati82;
    let x_5487 : vec4<f32> = x_3653.x_AdditionalLightsColor[x_5485];
    let x_5489 : vec3<f32> = (vec3<f32>(x_5483.x, x_5483.y, x_5483.z) * vec3<f32>(x_5487.x, x_5487.y, x_5487.z));
    let x_5490 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5489.x, x_5489.y, x_5489.z, x_5490.w);
    let x_5492 : f32 = u_xlat84;
    let x_5493 : f32 = u_xlat86;
    u_xlat82 = (x_5492 * x_5493);
    let x_5495 : vec4<f32> = u_xlat3;
    let x_5497 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_5495.x, x_5495.y, x_5495.z), vec3<f32>(x_5497.x, x_5497.y, x_5497.z));
    let x_5500 : f32 = u_xlat84;
    u_xlat84 = clamp(x_5500, 0.0f, 1.0f);
    let x_5502 : f32 = u_xlat82;
    let x_5503 : f32 = u_xlat84;
    u_xlat82 = (x_5502 * x_5503);
    let x_5505 : f32 = u_xlat82;
    let x_5507 : vec4<f32> = u_xlat11;
    let x_5509 : vec3<f32> = (vec3<f32>(x_5505, x_5505, x_5505) * vec3<f32>(x_5507.x, x_5507.y, x_5507.z));
    let x_5510 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5509.x, x_5509.y, x_5509.z, x_5510.w);
    let x_5512 : vec4<f32> = u_xlat9;
    let x_5514 : f32 = u_xlat85;
    let x_5517 : vec4<f32> = u_xlat7;
    let x_5519 : vec3<f32> = ((vec3<f32>(x_5512.x, x_5512.y, x_5512.z) * vec3<f32>(x_5514, x_5514, x_5514)) + vec3<f32>(x_5517.x, x_5517.y, x_5517.z));
    let x_5520 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5519.x, x_5519.y, x_5519.z, x_5520.w);
    let x_5522 : vec4<f32> = u_xlat9;
    let x_5524 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_5522.x, x_5522.y, x_5522.z), vec3<f32>(x_5524.x, x_5524.y, x_5524.z));
    let x_5527 : f32 = u_xlat82;
    u_xlat82 = max(x_5527, 1.17549435e-38f);
    let x_5529 : f32 = u_xlat82;
    u_xlat82 = inverseSqrt(x_5529);
    let x_5531 : f32 = u_xlat82;
    let x_5533 : vec4<f32> = u_xlat9;
    let x_5535 : vec3<f32> = (vec3<f32>(x_5531, x_5531, x_5531) * vec3<f32>(x_5533.x, x_5533.y, x_5533.z));
    let x_5536 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5535.x, x_5535.y, x_5535.z, x_5536.w);
    let x_5538 : vec4<f32> = u_xlat3;
    let x_5540 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_5538.x, x_5538.y, x_5538.z), vec3<f32>(x_5540.x, x_5540.y, x_5540.z));
    let x_5543 : f32 = u_xlat82;
    u_xlat82 = clamp(x_5543, 0.0f, 1.0f);
    let x_5545 : vec4<f32> = u_xlat10;
    let x_5547 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_5545.x, x_5545.y, x_5545.z), vec3<f32>(x_5547.x, x_5547.y, x_5547.z));
    let x_5550 : f32 = u_xlat84;
    u_xlat84 = clamp(x_5550, 0.0f, 1.0f);
    let x_5552 : f32 = u_xlat82;
    let x_5553 : f32 = u_xlat82;
    u_xlat82 = (x_5552 * x_5553);
    let x_5555 : f32 = u_xlat82;
    let x_5557 : f32 = u_xlat28.x;
    u_xlat82 = ((x_5555 * x_5557) + 1.00001001358032226562f);
    let x_5560 : f32 = u_xlat84;
    let x_5561 : f32 = u_xlat84;
    u_xlat84 = (x_5560 * x_5561);
    let x_5563 : f32 = u_xlat82;
    let x_5564 : f32 = u_xlat82;
    u_xlat82 = (x_5563 * x_5564);
    let x_5566 : f32 = u_xlat84;
    u_xlat84 = max(x_5566, 0.10000000149011611938f);
    let x_5568 : f32 = u_xlat82;
    let x_5569 : f32 = u_xlat84;
    u_xlat82 = (x_5568 * x_5569);
    let x_5572 : f32 = u_xlat5.x;
    let x_5573 : f32 = u_xlat82;
    u_xlat82 = (x_5572 * x_5573);
    let x_5575 : f32 = u_xlat81;
    let x_5576 : f32 = u_xlat82;
    u_xlat82 = (x_5575 / x_5576);
    let x_5578 : f32 = u_xlat82;
    let x_5581 : vec4<f32> = u_xlat4;
    let x_5583 : vec3<f32> = ((vec3<f32>(x_5578, x_5578, x_5578) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_5581.x, x_5581.y, x_5581.z));
    let x_5584 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5583.x, x_5583.y, x_5583.z, x_5584.w);
    let x_5586 : vec4<f32> = u_xlat9;
    let x_5588 : vec4<f32> = u_xlat11;
    let x_5591 : vec4<f32> = u_xlat8;
    let x_5593 : vec3<f32> = ((vec3<f32>(x_5586.x, x_5586.y, x_5586.z) * vec3<f32>(x_5588.x, x_5588.y, x_5588.z)) + vec3<f32>(x_5591.x, x_5591.y, x_5591.z));
    let x_5594 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5593.x, x_5593.y, x_5593.z, x_5594.w);

    continuing {
      let x_5596 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5596 + bitcast<u32>(1i));
    }
  }
  let x_5598 : vec3<f32> = u_xlat26;
  let x_5599 : f32 = u_xlat31;
  let x_5602 : vec4<f32> = u_xlat6;
  u_xlat0 = ((x_5598 * vec3<f32>(x_5599, x_5599, x_5599)) + vec3<f32>(x_5602.x, x_5602.y, x_5602.z));
  let x_5605 : vec4<f32> = u_xlat8;
  let x_5607 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_5605.x, x_5605.y, x_5605.z) + x_5607);
  let x_5611 : vec4<f32> = vs_INTERP6;
  let x_5613 : vec3<f32> = u_xlat1;
  let x_5615 : vec3<f32> = u_xlat0;
  let x_5616 : vec3<f32> = ((vec3<f32>(x_5611.w, x_5611.w, x_5611.w) * x_5613) + x_5615);
  let x_5617 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5616.x, x_5616.y, x_5616.z, x_5617.w);
  let x_5619 : bool = u_xlatb54;
  let x_5620 : f32 = u_xlat79;
  SV_Target0.w = select(1.0f, x_5620, x_5619);
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


