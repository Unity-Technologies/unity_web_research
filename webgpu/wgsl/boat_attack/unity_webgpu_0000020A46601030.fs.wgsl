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

var<private> u_xlat28 : f32;

var<private> u_xlat54 : f32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

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

@group(1) @binding(4) var<uniform> x_3135 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu0 : u32;

var<private> u_xlatu81 : u32;

var<private> u_xlati83 : i32;

var<private> u_xlati81 : i32;

var<private> u_xlat35 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_3606 : AdditionalLights;

var<private> u_xlat85 : f32;

var<private> u_xlati86 : i32;

var<private> u_xlatb88 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat89 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlatb86 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_LinearClamp : sampler;

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
  var x_1702 : vec3<f32>;
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
  var x_3084 : f32;
  var x_3203 : f32;
  var x_3214 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3740 : f32;
  var x_3751 : f32;
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
  var x_5367 : f32;
  var x_5380 : f32;
  var x_5438 : f32;
  var x_5449 : vec3<f32>;
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
  u_xlat26 = (x_1661 * vec3<f32>(x_1662, x_1662, x_1662));
  let x_1666 : f32 = x_126.unity_OrthoParams.w;
  u_xlatb28 = (x_1666 == 0.0f);
  let x_1668 : vec3<f32> = vs_INTERP8;
  let x_1673 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_1674 : vec3<f32> = (-(x_1668) + x_1673);
  let x_1675 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1674.x, x_1674.y, x_1674.z, x_1675.w);
  let x_1677 : vec4<f32> = u_xlat3;
  let x_1679 : vec4<f32> = u_xlat3;
  u_xlat80 = dot(vec3<f32>(x_1677.x, x_1677.y, x_1677.z), vec3<f32>(x_1679.x, x_1679.y, x_1679.z));
  let x_1682 : f32 = u_xlat80;
  u_xlat80 = inverseSqrt(x_1682);
  let x_1684 : f32 = u_xlat80;
  let x_1686 : vec4<f32> = u_xlat3;
  let x_1688 : vec3<f32> = (vec3<f32>(x_1684, x_1684, x_1684) * vec3<f32>(x_1686.x, x_1686.y, x_1686.z));
  let x_1689 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1688.x, x_1688.y, x_1688.z, x_1689.w);
  let x_1693 : f32 = x_126.unity_MatrixV[0i].z;
  u_xlat4.x = x_1693;
  let x_1696 : f32 = x_126.unity_MatrixV[1i].z;
  u_xlat4.y = x_1696;
  let x_1699 : f32 = x_126.unity_MatrixV[2i].z;
  u_xlat4.z = x_1699;
  let x_1701 : bool = u_xlatb28;
  if (x_1701) {
    let x_1705 : vec4<f32> = u_xlat3;
    x_1702 = vec3<f32>(x_1705.x, x_1705.y, x_1705.z);
  } else {
    let x_1708 : vec4<f32> = u_xlat4;
    x_1702 = vec3<f32>(x_1708.x, x_1708.y, x_1708.z);
  }
  let x_1710 : vec3<f32> = x_1702;
  let x_1711 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1710.x, x_1710.y, x_1710.z, x_1711.w);
  let x_1714 : f32 = vs_INTERP8.y;
  let x_1716 : f32 = x_126.unity_MatrixV[1i].z;
  u_xlat28 = (x_1714 * x_1716);
  let x_1719 : f32 = x_126.unity_MatrixV[0i].z;
  let x_1721 : f32 = vs_INTERP8.x;
  let x_1723 : f32 = u_xlat28;
  u_xlat28 = ((x_1719 * x_1721) + x_1723);
  let x_1726 : f32 = x_126.unity_MatrixV[2i].z;
  let x_1728 : f32 = vs_INTERP8.z;
  let x_1730 : f32 = u_xlat28;
  u_xlat28 = ((x_1726 * x_1728) + x_1730);
  let x_1732 : f32 = u_xlat28;
  let x_1734 : f32 = x_126.unity_MatrixV[3i].z;
  u_xlat28 = (x_1732 + x_1734);
  let x_1736 : f32 = u_xlat28;
  let x_1739 : f32 = x_126.x_ProjectionParams.y;
  u_xlat28 = (-(x_1736) + -(x_1739));
  let x_1742 : f32 = u_xlat28;
  u_xlat28 = max(x_1742, 0.0f);
  let x_1744 : f32 = u_xlat28;
  let x_1746 : f32 = x_126.unity_FogParams.x;
  u_xlat28 = (x_1744 * x_1746);
  let x_1755 : vec2<f32> = vs_INTERP0;
  let x_1757 : f32 = x_126.x_GlobalMipBias.x;
  let x_1758 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_1755, x_1757);
  u_xlat4 = x_1758;
  let x_1763 : vec2<f32> = vs_INTERP0;
  let x_1765 : f32 = x_126.x_GlobalMipBias.x;
  let x_1766 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_1763, x_1765);
  u_xlat32 = vec3<f32>(x_1766.x, x_1766.y, x_1766.z);
  let x_1768 : vec4<f32> = u_xlat4;
  let x_1771 : vec3<f32> = (vec3<f32>(x_1768.x, x_1768.y, x_1768.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1772 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1771.x, x_1771.y, x_1771.z, x_1772.w);
  let x_1774 : vec3<f32> = u_xlat26;
  let x_1775 : vec4<f32> = u_xlat4;
  u_xlat80 = dot(x_1774, vec3<f32>(x_1775.x, x_1775.y, x_1775.z));
  let x_1778 : f32 = u_xlat80;
  u_xlat80 = (x_1778 + 0.5f);
  let x_1780 : f32 = u_xlat80;
  let x_1782 : vec3<f32> = u_xlat32;
  let x_1783 : vec3<f32> = (vec3<f32>(x_1780, x_1780, x_1780) * x_1782);
  let x_1784 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1783.x, x_1783.y, x_1783.z, x_1784.w);
  let x_1787 : f32 = u_xlat4.w;
  u_xlat80 = max(x_1787, 0.00009999999747378752f);
  let x_1789 : vec4<f32> = u_xlat4;
  let x_1791 : f32 = u_xlat80;
  let x_1793 : vec3<f32> = (vec3<f32>(x_1789.x, x_1789.y, x_1789.z) / vec3<f32>(x_1791, x_1791, x_1791));
  let x_1794 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1793.x, x_1793.y, x_1793.z, x_1794.w);
  let x_1797 : f32 = u_xlat6.x;
  u_xlat6.x = x_1797;
  let x_1800 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1800, 0.0f, 1.0f);
  let x_1803 : f32 = u_xlat79;
  u_xlat79 = min(x_1803, 1.0f);
  let x_1805 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_1805 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_1810 : f32 = u_xlat6.x;
  u_xlat80 = (-(x_1810) + 1.0f);
  let x_1814 : f32 = u_xlat80;
  let x_1815 : f32 = u_xlat80;
  u_xlat81 = (x_1814 * x_1815);
  let x_1817 : f32 = u_xlat81;
  u_xlat81 = max(x_1817, 0.0078125f);
  let x_1821 : f32 = u_xlat81;
  let x_1822 : f32 = u_xlat81;
  u_xlat82 = (x_1821 * x_1822);
  let x_1825 : f32 = u_xlat6.x;
  u_xlat83 = (x_1825 + 0.04000002145767211914f);
  let x_1828 : f32 = u_xlat83;
  u_xlat83 = min(x_1828, 1.0f);
  let x_1830 : f32 = u_xlat81;
  u_xlat6.x = ((x_1830 * 4.0f) + 2.0f);
  let x_1836 : f32 = vs_INTERP6.w;
  u_xlat32.x = min(x_1836, 1.0f);
  let x_1839 : bool = u_xlatb0;
  if (x_1839) {
    let x_1843 : f32 = x_241.x_MainLightShadowParams.y;
    u_xlatb0 = (x_1843 == 1.0f);
    let x_1845 : bool = u_xlatb0;
    if (x_1845) {
      let x_1849 : vec4<f32> = vs_INTERP3;
      let x_1852 : vec4<f32> = x_241.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_1849.x, x_1849.y, x_1849.x, x_1849.y) + x_1852);
      let x_1855 : vec4<f32> = u_xlat7;
      let x_1856 : vec2<f32> = vec2<f32>(x_1855.x, x_1855.y);
      let x_1858 : f32 = vs_INTERP3.z;
      txVec30 = vec3<f32>(x_1856.x, x_1856.y, x_1858);
      let x_1865 : vec3<f32> = txVec30;
      let x_1867 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1865.xy, x_1865.z);
      u_xlat8.x = x_1867;
      let x_1870 : vec4<f32> = u_xlat7;
      let x_1871 : vec2<f32> = vec2<f32>(x_1870.z, x_1870.w);
      let x_1873 : f32 = vs_INTERP3.z;
      txVec31 = vec3<f32>(x_1871.x, x_1871.y, x_1873);
      let x_1880 : vec3<f32> = txVec31;
      let x_1882 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1880.xy, x_1880.z);
      u_xlat8.y = x_1882;
      let x_1884 : vec4<f32> = vs_INTERP3;
      let x_1887 : vec4<f32> = x_241.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_1884.x, x_1884.y, x_1884.x, x_1884.y) + x_1887);
      let x_1890 : vec4<f32> = u_xlat7;
      let x_1891 : vec2<f32> = vec2<f32>(x_1890.x, x_1890.y);
      let x_1893 : f32 = vs_INTERP3.z;
      txVec32 = vec3<f32>(x_1891.x, x_1891.y, x_1893);
      let x_1900 : vec3<f32> = txVec32;
      let x_1902 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1900.xy, x_1900.z);
      u_xlat8.z = x_1902;
      let x_1905 : vec4<f32> = u_xlat7;
      let x_1906 : vec2<f32> = vec2<f32>(x_1905.z, x_1905.w);
      let x_1908 : f32 = vs_INTERP3.z;
      txVec33 = vec3<f32>(x_1906.x, x_1906.y, x_1908);
      let x_1915 : vec3<f32> = txVec33;
      let x_1917 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1915.xy, x_1915.z);
      u_xlat8.w = x_1917;
      let x_1919 : vec4<f32> = u_xlat8;
      u_xlat0.x = dot(x_1919, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1925 : f32 = x_241.x_MainLightShadowParams.y;
      u_xlatb58.x = (x_1925 == 2.0f);
      let x_1929 : bool = u_xlatb58.x;
      if (x_1929) {
        let x_1933 : vec4<f32> = vs_INTERP3;
        let x_1936 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_1933.x, x_1933.y) * vec2<f32>(x_1936.z, x_1936.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1940 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_1940);
        let x_1942 : vec4<f32> = vs_INTERP3;
        let x_1945 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_1948 : vec2<f32> = u_xlat58;
        let x_1950 : vec2<f32> = ((vec2<f32>(x_1942.x, x_1942.y) * vec2<f32>(x_1945.z, x_1945.w)) + -(x_1948));
        let x_1951 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1950.x, x_1950.y, x_1951.z, x_1951.w);
        let x_1953 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1953.x, x_1953.x, x_1953.y, x_1953.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1956 : vec4<f32> = u_xlat8;
        let x_1958 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1956.x, x_1956.x, x_1956.z, x_1956.z) * vec4<f32>(x_1958.x, x_1958.x, x_1958.z, x_1958.z));
        let x_1962 : vec4<f32> = u_xlat9;
        u_xlat59 = (vec2<f32>(x_1962.y, x_1962.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1965 : vec4<f32> = u_xlat9;
        let x_1968 : vec4<f32> = u_xlat7;
        let x_1971 : vec2<f32> = ((vec2<f32>(x_1965.x, x_1965.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1968.x, x_1968.y)));
        let x_1972 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1971.x, x_1972.y, x_1971.y, x_1972.w);
        let x_1974 : vec4<f32> = u_xlat7;
        let x_1977 : vec2<f32> = (-(vec2<f32>(x_1974.x, x_1974.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1978 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1977.x, x_1977.y, x_1978.z, x_1978.w);
        let x_1980 : vec4<f32> = u_xlat7;
        u_xlat61 = min(vec2<f32>(x_1980.x, x_1980.y), vec2<f32>(0.0f, 0.0f));
        let x_1983 : vec2<f32> = u_xlat61;
        let x_1985 : vec2<f32> = u_xlat61;
        let x_1987 : vec4<f32> = u_xlat9;
        u_xlat61 = ((-(x_1983) * x_1985) + vec2<f32>(x_1987.x, x_1987.y));
        let x_1990 : vec4<f32> = u_xlat7;
        let x_1992 : vec2<f32> = max(vec2<f32>(x_1990.x, x_1990.y), vec2<f32>(0.0f, 0.0f));
        let x_1993 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1992.x, x_1992.y, x_1993.z, x_1993.w);
        let x_1995 : vec4<f32> = u_xlat7;
        let x_1998 : vec4<f32> = u_xlat7;
        let x_2001 : vec4<f32> = u_xlat8;
        let x_2003 : vec2<f32> = ((-(vec2<f32>(x_1995.x, x_1995.y)) * vec2<f32>(x_1998.x, x_1998.y)) + vec2<f32>(x_2001.y, x_2001.w));
        let x_2004 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2003.x, x_2003.y, x_2004.z, x_2004.w);
        let x_2006 : vec2<f32> = u_xlat61;
        u_xlat61 = (x_2006 + vec2<f32>(1.0f, 1.0f));
        let x_2008 : vec4<f32> = u_xlat7;
        let x_2010 : vec2<f32> = (vec2<f32>(x_2008.x, x_2008.y) + vec2<f32>(1.0f, 1.0f));
        let x_2011 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2010.x, x_2010.y, x_2011.z, x_2011.w);
        let x_2013 : vec4<f32> = u_xlat8;
        let x_2015 : vec2<f32> = (vec2<f32>(x_2013.x, x_2013.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2016 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2015.x, x_2015.y, x_2016.z, x_2016.w);
        let x_2018 : vec4<f32> = u_xlat9;
        let x_2020 : vec2<f32> = (vec2<f32>(x_2018.x, x_2018.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2021 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2020.x, x_2020.y, x_2021.z, x_2021.w);
        let x_2023 : vec2<f32> = u_xlat61;
        let x_2024 : vec2<f32> = (x_2023 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2025 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2024.x, x_2024.y, x_2025.z, x_2025.w);
        let x_2027 : vec4<f32> = u_xlat7;
        let x_2029 : vec2<f32> = (vec2<f32>(x_2027.x, x_2027.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2030 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2029.x, x_2029.y, x_2030.z, x_2030.w);
        let x_2032 : vec4<f32> = u_xlat8;
        let x_2034 : vec2<f32> = (vec2<f32>(x_2032.y, x_2032.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2035 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2034.x, x_2034.y, x_2035.z, x_2035.w);
        let x_2038 : f32 = u_xlat9.x;
        u_xlat10.z = x_2038;
        let x_2041 : f32 = u_xlat7.x;
        u_xlat10.w = x_2041;
        let x_2044 : f32 = u_xlat12.x;
        u_xlat11.z = x_2044;
        let x_2047 : f32 = u_xlat59.x;
        u_xlat11.w = x_2047;
        let x_2049 : vec4<f32> = u_xlat10;
        let x_2051 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_2049.z, x_2049.w, x_2049.x, x_2049.z) + vec4<f32>(x_2051.z, x_2051.w, x_2051.x, x_2051.z));
        let x_2055 : f32 = u_xlat10.y;
        u_xlat9.z = x_2055;
        let x_2058 : f32 = u_xlat7.y;
        u_xlat9.w = x_2058;
        let x_2061 : f32 = u_xlat11.y;
        u_xlat12.z = x_2061;
        let x_2064 : f32 = u_xlat59.y;
        u_xlat12.w = x_2064;
        let x_2066 : vec4<f32> = u_xlat9;
        let x_2068 : vec4<f32> = u_xlat12;
        let x_2070 : vec3<f32> = (vec3<f32>(x_2066.z, x_2066.y, x_2066.w) + vec3<f32>(x_2068.z, x_2068.y, x_2068.w));
        let x_2071 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2070.x, x_2070.y, x_2070.z, x_2071.w);
        let x_2073 : vec4<f32> = u_xlat11;
        let x_2075 : vec4<f32> = u_xlat8;
        let x_2077 : vec3<f32> = (vec3<f32>(x_2073.x, x_2073.z, x_2073.w) / vec3<f32>(x_2075.z, x_2075.w, x_2075.y));
        let x_2078 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2077.x, x_2077.y, x_2077.z, x_2078.w);
        let x_2080 : vec4<f32> = u_xlat9;
        let x_2082 : vec3<f32> = (vec3<f32>(x_2080.x, x_2080.y, x_2080.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2083 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2082.x, x_2082.y, x_2082.z, x_2083.w);
        let x_2085 : vec4<f32> = u_xlat12;
        let x_2087 : vec4<f32> = u_xlat7;
        let x_2089 : vec3<f32> = (vec3<f32>(x_2085.z, x_2085.y, x_2085.w) / vec3<f32>(x_2087.x, x_2087.y, x_2087.z));
        let x_2090 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2089.x, x_2089.y, x_2089.z, x_2090.w);
        let x_2092 : vec4<f32> = u_xlat10;
        let x_2094 : vec3<f32> = (vec3<f32>(x_2092.x, x_2092.y, x_2092.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2095 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2094.x, x_2094.y, x_2094.z, x_2095.w);
        let x_2097 : vec4<f32> = u_xlat9;
        let x_2100 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2102 : vec3<f32> = (vec3<f32>(x_2097.y, x_2097.x, x_2097.z) * vec3<f32>(x_2100.x, x_2100.x, x_2100.x));
        let x_2103 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2102.x, x_2102.y, x_2102.z, x_2103.w);
        let x_2105 : vec4<f32> = u_xlat10;
        let x_2108 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2110 : vec3<f32> = (vec3<f32>(x_2105.x, x_2105.y, x_2105.z) * vec3<f32>(x_2108.y, x_2108.y, x_2108.y));
        let x_2111 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2110.x, x_2110.y, x_2110.z, x_2111.w);
        let x_2114 : f32 = u_xlat10.x;
        u_xlat9.w = x_2114;
        let x_2116 : vec2<f32> = u_xlat58;
        let x_2119 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2122 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2116.x, x_2116.y, x_2116.x, x_2116.y) * vec4<f32>(x_2119.x, x_2119.y, x_2119.x, x_2119.y)) + vec4<f32>(x_2122.y, x_2122.w, x_2122.x, x_2122.w));
        let x_2125 : vec2<f32> = u_xlat58;
        let x_2127 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2130 : vec4<f32> = u_xlat9;
        let x_2132 : vec2<f32> = ((x_2125 * vec2<f32>(x_2127.x, x_2127.y)) + vec2<f32>(x_2130.z, x_2130.w));
        let x_2133 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2132.x, x_2132.y, x_2133.z, x_2133.w);
        let x_2136 : f32 = u_xlat9.y;
        u_xlat10.w = x_2136;
        let x_2138 : vec4<f32> = u_xlat10;
        let x_2139 : vec2<f32> = vec2<f32>(x_2138.y, x_2138.z);
        let x_2140 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2140.x, x_2139.x, x_2140.z, x_2139.y);
        let x_2142 : vec2<f32> = u_xlat58;
        let x_2145 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2148 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_2142.x, x_2142.y, x_2142.x, x_2142.y) * vec4<f32>(x_2145.x, x_2145.y, x_2145.x, x_2145.y)) + vec4<f32>(x_2148.x, x_2148.y, x_2148.z, x_2148.y));
        let x_2151 : vec2<f32> = u_xlat58;
        let x_2154 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2157 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2151.x, x_2151.y, x_2151.x, x_2151.y) * vec4<f32>(x_2154.x, x_2154.y, x_2154.x, x_2154.y)) + vec4<f32>(x_2157.w, x_2157.y, x_2157.w, x_2157.z));
        let x_2160 : vec2<f32> = u_xlat58;
        let x_2163 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2166 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_2160.x, x_2160.y, x_2160.x, x_2160.y) * vec4<f32>(x_2163.x, x_2163.y, x_2163.x, x_2163.y)) + vec4<f32>(x_2166.x, x_2166.w, x_2166.z, x_2166.w));
        let x_2169 : vec4<f32> = u_xlat7;
        let x_2171 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_2169.x, x_2169.x, x_2169.x, x_2169.y) * vec4<f32>(x_2171.z, x_2171.w, x_2171.y, x_2171.z));
        let x_2174 : vec4<f32> = u_xlat7;
        let x_2176 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_2174.y, x_2174.y, x_2174.z, x_2174.z) * x_2176);
        let x_2179 : f32 = u_xlat7.z;
        let x_2181 : f32 = u_xlat8.y;
        u_xlat58.x = (x_2179 * x_2181);
        let x_2185 : vec4<f32> = u_xlat11;
        let x_2186 : vec2<f32> = vec2<f32>(x_2185.x, x_2185.y);
        let x_2188 : f32 = vs_INTERP3.z;
        txVec34 = vec3<f32>(x_2186.x, x_2186.y, x_2188);
        let x_2196 : vec3<f32> = txVec34;
        let x_2198 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2196.xy, x_2196.z);
        u_xlat84 = x_2198;
        let x_2200 : vec4<f32> = u_xlat11;
        let x_2201 : vec2<f32> = vec2<f32>(x_2200.z, x_2200.w);
        let x_2203 : f32 = vs_INTERP3.z;
        txVec35 = vec3<f32>(x_2201.x, x_2201.y, x_2203);
        let x_2210 : vec3<f32> = txVec35;
        let x_2212 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2210.xy, x_2210.z);
        u_xlat7.x = x_2212;
        let x_2215 : f32 = u_xlat7.x;
        let x_2217 : f32 = u_xlat14.y;
        u_xlat7.x = (x_2215 * x_2217);
        let x_2221 : f32 = u_xlat14.x;
        let x_2222 : f32 = u_xlat84;
        let x_2225 : f32 = u_xlat7.x;
        u_xlat84 = ((x_2221 * x_2222) + x_2225);
        let x_2228 : vec4<f32> = u_xlat12;
        let x_2229 : vec2<f32> = vec2<f32>(x_2228.x, x_2228.y);
        let x_2231 : f32 = vs_INTERP3.z;
        txVec36 = vec3<f32>(x_2229.x, x_2229.y, x_2231);
        let x_2238 : vec3<f32> = txVec36;
        let x_2240 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2238.xy, x_2238.z);
        u_xlat7.x = x_2240;
        let x_2243 : f32 = u_xlat14.z;
        let x_2245 : f32 = u_xlat7.x;
        let x_2247 : f32 = u_xlat84;
        u_xlat84 = ((x_2243 * x_2245) + x_2247);
        let x_2250 : vec4<f32> = u_xlat10;
        let x_2251 : vec2<f32> = vec2<f32>(x_2250.x, x_2250.y);
        let x_2253 : f32 = vs_INTERP3.z;
        txVec37 = vec3<f32>(x_2251.x, x_2251.y, x_2253);
        let x_2260 : vec3<f32> = txVec37;
        let x_2262 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2260.xy, x_2260.z);
        u_xlat7.x = x_2262;
        let x_2265 : f32 = u_xlat14.w;
        let x_2267 : f32 = u_xlat7.x;
        let x_2269 : f32 = u_xlat84;
        u_xlat84 = ((x_2265 * x_2267) + x_2269);
        let x_2272 : vec4<f32> = u_xlat13;
        let x_2273 : vec2<f32> = vec2<f32>(x_2272.x, x_2272.y);
        let x_2275 : f32 = vs_INTERP3.z;
        txVec38 = vec3<f32>(x_2273.x, x_2273.y, x_2275);
        let x_2282 : vec3<f32> = txVec38;
        let x_2284 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2282.xy, x_2282.z);
        u_xlat7.x = x_2284;
        let x_2287 : f32 = u_xlat15.x;
        let x_2289 : f32 = u_xlat7.x;
        let x_2291 : f32 = u_xlat84;
        u_xlat84 = ((x_2287 * x_2289) + x_2291);
        let x_2294 : vec4<f32> = u_xlat13;
        let x_2295 : vec2<f32> = vec2<f32>(x_2294.z, x_2294.w);
        let x_2297 : f32 = vs_INTERP3.z;
        txVec39 = vec3<f32>(x_2295.x, x_2295.y, x_2297);
        let x_2304 : vec3<f32> = txVec39;
        let x_2306 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2304.xy, x_2304.z);
        u_xlat7.x = x_2306;
        let x_2309 : f32 = u_xlat15.y;
        let x_2311 : f32 = u_xlat7.x;
        let x_2313 : f32 = u_xlat84;
        u_xlat84 = ((x_2309 * x_2311) + x_2313);
        let x_2316 : vec4<f32> = u_xlat10;
        let x_2317 : vec2<f32> = vec2<f32>(x_2316.z, x_2316.w);
        let x_2319 : f32 = vs_INTERP3.z;
        txVec40 = vec3<f32>(x_2317.x, x_2317.y, x_2319);
        let x_2326 : vec3<f32> = txVec40;
        let x_2328 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2326.xy, x_2326.z);
        u_xlat7.x = x_2328;
        let x_2331 : f32 = u_xlat15.z;
        let x_2333 : f32 = u_xlat7.x;
        let x_2335 : f32 = u_xlat84;
        u_xlat84 = ((x_2331 * x_2333) + x_2335);
        let x_2338 : vec4<f32> = u_xlat9;
        let x_2339 : vec2<f32> = vec2<f32>(x_2338.x, x_2338.y);
        let x_2341 : f32 = vs_INTERP3.z;
        txVec41 = vec3<f32>(x_2339.x, x_2339.y, x_2341);
        let x_2348 : vec3<f32> = txVec41;
        let x_2350 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2348.xy, x_2348.z);
        u_xlat7.x = x_2350;
        let x_2353 : f32 = u_xlat15.w;
        let x_2355 : f32 = u_xlat7.x;
        let x_2357 : f32 = u_xlat84;
        u_xlat84 = ((x_2353 * x_2355) + x_2357);
        let x_2360 : vec4<f32> = u_xlat9;
        let x_2361 : vec2<f32> = vec2<f32>(x_2360.z, x_2360.w);
        let x_2363 : f32 = vs_INTERP3.z;
        txVec42 = vec3<f32>(x_2361.x, x_2361.y, x_2363);
        let x_2370 : vec3<f32> = txVec42;
        let x_2372 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2370.xy, x_2370.z);
        u_xlat7.x = x_2372;
        let x_2375 : f32 = u_xlat58.x;
        let x_2377 : f32 = u_xlat7.x;
        let x_2379 : f32 = u_xlat84;
        u_xlat0.x = ((x_2375 * x_2377) + x_2379);
      } else {
        let x_2383 : vec4<f32> = vs_INTERP3;
        let x_2386 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_2383.x, x_2383.y) * vec2<f32>(x_2386.z, x_2386.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2390 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_2390);
        let x_2392 : vec4<f32> = vs_INTERP3;
        let x_2395 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2398 : vec2<f32> = u_xlat58;
        let x_2400 : vec2<f32> = ((vec2<f32>(x_2392.x, x_2392.y) * vec2<f32>(x_2395.z, x_2395.w)) + -(x_2398));
        let x_2401 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2400.x, x_2400.y, x_2401.z, x_2401.w);
        let x_2403 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2403.x, x_2403.x, x_2403.y, x_2403.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2406 : vec4<f32> = u_xlat8;
        let x_2408 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2406.x, x_2406.x, x_2406.z, x_2406.z) * vec4<f32>(x_2408.x, x_2408.x, x_2408.z, x_2408.z));
        let x_2411 : vec4<f32> = u_xlat9;
        let x_2413 : vec2<f32> = (vec2<f32>(x_2411.y, x_2411.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2414 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2414.x, x_2413.x, x_2414.z, x_2413.y);
        let x_2416 : vec4<f32> = u_xlat9;
        let x_2419 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_2416.x, x_2416.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2419.x, x_2419.y)));
        let x_2423 : vec4<f32> = u_xlat7;
        let x_2426 : vec2<f32> = (-(vec2<f32>(x_2423.x, x_2423.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2427 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2426.x, x_2427.y, x_2426.y, x_2427.w);
        let x_2429 : vec4<f32> = u_xlat7;
        let x_2431 : vec2<f32> = min(vec2<f32>(x_2429.x, x_2429.y), vec2<f32>(0.0f, 0.0f));
        let x_2432 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2431.x, x_2431.y, x_2432.z, x_2432.w);
        let x_2434 : vec4<f32> = u_xlat9;
        let x_2437 : vec4<f32> = u_xlat9;
        let x_2440 : vec4<f32> = u_xlat8;
        let x_2442 : vec2<f32> = ((-(vec2<f32>(x_2434.x, x_2434.y)) * vec2<f32>(x_2437.x, x_2437.y)) + vec2<f32>(x_2440.x, x_2440.z));
        let x_2443 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2442.x, x_2443.y, x_2442.y, x_2443.w);
        let x_2445 : vec4<f32> = u_xlat7;
        let x_2447 : vec2<f32> = max(vec2<f32>(x_2445.x, x_2445.y), vec2<f32>(0.0f, 0.0f));
        let x_2448 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2447.x, x_2447.y, x_2448.z, x_2448.w);
        let x_2450 : vec4<f32> = u_xlat9;
        let x_2453 : vec4<f32> = u_xlat9;
        let x_2456 : vec4<f32> = u_xlat8;
        let x_2458 : vec2<f32> = ((-(vec2<f32>(x_2450.x, x_2450.y)) * vec2<f32>(x_2453.x, x_2453.y)) + vec2<f32>(x_2456.y, x_2456.w));
        let x_2459 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2459.x, x_2458.x, x_2459.z, x_2458.y);
        let x_2461 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2461 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2464 : f32 = u_xlat8.y;
        u_xlat9.z = (x_2464 * 0.08163200318813323975f);
        let x_2467 : vec2<f32> = u_xlat59;
        let x_2469 : vec2<f32> = (vec2<f32>(x_2467.y, x_2467.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2470 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2469.x, x_2469.y, x_2470.z, x_2470.w);
        let x_2472 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_2472.x, x_2472.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2476 : f32 = u_xlat8.w;
        u_xlat11.z = (x_2476 * 0.08163200318813323975f);
        let x_2480 : f32 = u_xlat11.y;
        u_xlat9.x = x_2480;
        let x_2482 : vec4<f32> = u_xlat7;
        let x_2485 : vec2<f32> = ((vec2<f32>(x_2482.x, x_2482.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2486 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2486.x, x_2485.x, x_2486.z, x_2485.y);
        let x_2488 : vec4<f32> = u_xlat7;
        let x_2491 : vec2<f32> = ((vec2<f32>(x_2488.x, x_2488.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2492 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2491.x, x_2492.y, x_2491.y, x_2492.w);
        let x_2495 : f32 = u_xlat59.x;
        u_xlat8.y = x_2495;
        let x_2498 : f32 = u_xlat10.y;
        u_xlat8.w = x_2498;
        let x_2500 : vec4<f32> = u_xlat8;
        let x_2501 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2500 + x_2501);
        let x_2503 : vec4<f32> = u_xlat7;
        let x_2506 : vec2<f32> = ((vec2<f32>(x_2503.y, x_2503.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2507 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2507.x, x_2506.x, x_2507.z, x_2506.y);
        let x_2509 : vec4<f32> = u_xlat7;
        let x_2512 : vec2<f32> = ((vec2<f32>(x_2509.y, x_2509.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2513 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2512.x, x_2513.y, x_2512.y, x_2513.w);
        let x_2516 : f32 = u_xlat59.y;
        u_xlat10.y = x_2516;
        let x_2518 : vec4<f32> = u_xlat10;
        let x_2519 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_2518 + x_2519);
        let x_2521 : vec4<f32> = u_xlat8;
        let x_2522 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_2521 / x_2522);
        let x_2524 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2524 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2526 : vec4<f32> = u_xlat10;
        let x_2527 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_2526 / x_2527);
        let x_2529 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2529 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2531 : vec4<f32> = u_xlat8;
        let x_2534 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_2531.w, x_2531.x, x_2531.y, x_2531.z) * vec4<f32>(x_2534.x, x_2534.x, x_2534.x, x_2534.x));
        let x_2537 : vec4<f32> = u_xlat10;
        let x_2540 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_2537.x, x_2537.w, x_2537.y, x_2537.z) * vec4<f32>(x_2540.y, x_2540.y, x_2540.y, x_2540.y));
        let x_2543 : vec4<f32> = u_xlat8;
        let x_2544 : vec3<f32> = vec3<f32>(x_2543.y, x_2543.z, x_2543.w);
        let x_2545 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2544.x, x_2545.y, x_2544.y, x_2544.z);
        let x_2548 : f32 = u_xlat10.x;
        u_xlat11.y = x_2548;
        let x_2550 : vec2<f32> = u_xlat58;
        let x_2553 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2556 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2550.x, x_2550.y, x_2550.x, x_2550.y) * vec4<f32>(x_2553.x, x_2553.y, x_2553.x, x_2553.y)) + vec4<f32>(x_2556.x, x_2556.y, x_2556.z, x_2556.y));
        let x_2559 : vec2<f32> = u_xlat58;
        let x_2561 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2564 : vec4<f32> = u_xlat11;
        let x_2566 : vec2<f32> = ((x_2559 * vec2<f32>(x_2561.x, x_2561.y)) + vec2<f32>(x_2564.w, x_2564.y));
        let x_2567 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2566.x, x_2566.y, x_2567.z, x_2567.w);
        let x_2570 : f32 = u_xlat11.y;
        u_xlat8.y = x_2570;
        let x_2573 : f32 = u_xlat10.z;
        u_xlat11.y = x_2573;
        let x_2575 : vec2<f32> = u_xlat58;
        let x_2578 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2581 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_2575.x, x_2575.y, x_2575.x, x_2575.y) * vec4<f32>(x_2578.x, x_2578.y, x_2578.x, x_2578.y)) + vec4<f32>(x_2581.x, x_2581.y, x_2581.z, x_2581.y));
        let x_2585 : vec2<f32> = u_xlat58;
        let x_2587 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2590 : vec4<f32> = u_xlat11;
        u_xlat65 = ((x_2585 * vec2<f32>(x_2587.x, x_2587.y)) + vec2<f32>(x_2590.w, x_2590.y));
        let x_2594 : f32 = u_xlat11.y;
        u_xlat8.z = x_2594;
        let x_2596 : vec2<f32> = u_xlat58;
        let x_2599 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2602 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_2596.x, x_2596.y, x_2596.x, x_2596.y) * vec4<f32>(x_2599.x, x_2599.y, x_2599.x, x_2599.y)) + vec4<f32>(x_2602.x, x_2602.y, x_2602.x, x_2602.z));
        let x_2606 : f32 = u_xlat10.w;
        u_xlat11.y = x_2606;
        let x_2608 : vec2<f32> = u_xlat58;
        let x_2611 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2614 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_2608.x, x_2608.y, x_2608.x, x_2608.y) * vec4<f32>(x_2611.x, x_2611.y, x_2611.x, x_2611.y)) + vec4<f32>(x_2614.x, x_2614.y, x_2614.z, x_2614.y));
        let x_2617 : vec2<f32> = u_xlat58;
        let x_2619 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2622 : vec4<f32> = u_xlat11;
        u_xlat34 = ((x_2617 * vec2<f32>(x_2619.x, x_2619.y)) + vec2<f32>(x_2622.w, x_2622.y));
        let x_2626 : f32 = u_xlat11.y;
        u_xlat8.w = x_2626;
        let x_2628 : vec2<f32> = u_xlat58;
        let x_2630 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2633 : vec4<f32> = u_xlat8;
        let x_2635 : vec2<f32> = ((x_2628 * vec2<f32>(x_2630.x, x_2630.y)) + vec2<f32>(x_2633.x, x_2633.w));
        let x_2636 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_2635.x, x_2635.y, x_2636.z, x_2636.w);
        let x_2638 : vec4<f32> = u_xlat11;
        let x_2639 : vec3<f32> = vec3<f32>(x_2638.x, x_2638.z, x_2638.w);
        let x_2640 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2639.x, x_2640.y, x_2639.y, x_2639.z);
        let x_2642 : vec2<f32> = u_xlat58;
        let x_2645 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2648 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_2642.x, x_2642.y, x_2642.x, x_2642.y) * vec4<f32>(x_2645.x, x_2645.y, x_2645.x, x_2645.y)) + vec4<f32>(x_2648.x, x_2648.y, x_2648.z, x_2648.y));
        let x_2652 : vec2<f32> = u_xlat58;
        let x_2654 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2657 : vec4<f32> = u_xlat10;
        u_xlat62 = ((x_2652 * vec2<f32>(x_2654.x, x_2654.y)) + vec2<f32>(x_2657.w, x_2657.y));
        let x_2661 : f32 = u_xlat8.x;
        u_xlat10.x = x_2661;
        let x_2663 : vec2<f32> = u_xlat58;
        let x_2665 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_2668 : vec4<f32> = u_xlat10;
        u_xlat58 = ((x_2663 * vec2<f32>(x_2665.x, x_2665.y)) + vec2<f32>(x_2668.x, x_2668.y));
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
        u_xlat8.x = x_2701;
        let x_2704 : vec4<f32> = u_xlat12;
        let x_2705 : vec2<f32> = vec2<f32>(x_2704.z, x_2704.w);
        let x_2707 : f32 = vs_INTERP3.z;
        txVec44 = vec3<f32>(x_2705.x, x_2705.y, x_2707);
        let x_2715 : vec3<f32> = txVec44;
        let x_2717 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2715.xy, x_2715.z);
        u_xlat86 = x_2717;
        let x_2718 : f32 = u_xlat86;
        let x_2720 : f32 = u_xlat18.y;
        u_xlat86 = (x_2718 * x_2720);
        let x_2723 : f32 = u_xlat18.x;
        let x_2725 : f32 = u_xlat8.x;
        let x_2727 : f32 = u_xlat86;
        u_xlat8.x = ((x_2723 * x_2725) + x_2727);
        let x_2731 : vec4<f32> = u_xlat13;
        let x_2732 : vec2<f32> = vec2<f32>(x_2731.x, x_2731.y);
        let x_2734 : f32 = vs_INTERP3.z;
        txVec45 = vec3<f32>(x_2732.x, x_2732.y, x_2734);
        let x_2741 : vec3<f32> = txVec45;
        let x_2743 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2741.xy, x_2741.z);
        u_xlat86 = x_2743;
        let x_2745 : f32 = u_xlat18.z;
        let x_2746 : f32 = u_xlat86;
        let x_2749 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2745 * x_2746) + x_2749);
        let x_2753 : vec4<f32> = u_xlat15;
        let x_2754 : vec2<f32> = vec2<f32>(x_2753.x, x_2753.y);
        let x_2756 : f32 = vs_INTERP3.z;
        txVec46 = vec3<f32>(x_2754.x, x_2754.y, x_2756);
        let x_2763 : vec3<f32> = txVec46;
        let x_2765 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2763.xy, x_2763.z);
        u_xlat86 = x_2765;
        let x_2767 : f32 = u_xlat18.w;
        let x_2768 : f32 = u_xlat86;
        let x_2771 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2767 * x_2768) + x_2771);
        let x_2775 : vec4<f32> = u_xlat14;
        let x_2776 : vec2<f32> = vec2<f32>(x_2775.x, x_2775.y);
        let x_2778 : f32 = vs_INTERP3.z;
        txVec47 = vec3<f32>(x_2776.x, x_2776.y, x_2778);
        let x_2785 : vec3<f32> = txVec47;
        let x_2787 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2785.xy, x_2785.z);
        u_xlat86 = x_2787;
        let x_2789 : f32 = u_xlat19.x;
        let x_2790 : f32 = u_xlat86;
        let x_2793 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2789 * x_2790) + x_2793);
        let x_2797 : vec4<f32> = u_xlat14;
        let x_2798 : vec2<f32> = vec2<f32>(x_2797.z, x_2797.w);
        let x_2800 : f32 = vs_INTERP3.z;
        txVec48 = vec3<f32>(x_2798.x, x_2798.y, x_2800);
        let x_2807 : vec3<f32> = txVec48;
        let x_2809 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2807.xy, x_2807.z);
        u_xlat86 = x_2809;
        let x_2811 : f32 = u_xlat19.y;
        let x_2812 : f32 = u_xlat86;
        let x_2815 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2811 * x_2812) + x_2815);
        let x_2819 : vec2<f32> = u_xlat65;
        let x_2821 : f32 = vs_INTERP3.z;
        txVec49 = vec3<f32>(x_2819.x, x_2819.y, x_2821);
        let x_2828 : vec3<f32> = txVec49;
        let x_2830 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2828.xy, x_2828.z);
        u_xlat86 = x_2830;
        let x_2832 : f32 = u_xlat19.z;
        let x_2833 : f32 = u_xlat86;
        let x_2836 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2832 * x_2833) + x_2836);
        let x_2840 : vec4<f32> = u_xlat15;
        let x_2841 : vec2<f32> = vec2<f32>(x_2840.z, x_2840.w);
        let x_2843 : f32 = vs_INTERP3.z;
        txVec50 = vec3<f32>(x_2841.x, x_2841.y, x_2843);
        let x_2850 : vec3<f32> = txVec50;
        let x_2852 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2850.xy, x_2850.z);
        u_xlat86 = x_2852;
        let x_2854 : f32 = u_xlat19.w;
        let x_2855 : f32 = u_xlat86;
        let x_2858 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2854 * x_2855) + x_2858);
        let x_2862 : vec4<f32> = u_xlat16;
        let x_2863 : vec2<f32> = vec2<f32>(x_2862.x, x_2862.y);
        let x_2865 : f32 = vs_INTERP3.z;
        txVec51 = vec3<f32>(x_2863.x, x_2863.y, x_2865);
        let x_2872 : vec3<f32> = txVec51;
        let x_2874 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2872.xy, x_2872.z);
        u_xlat86 = x_2874;
        let x_2876 : f32 = u_xlat20.x;
        let x_2877 : f32 = u_xlat86;
        let x_2880 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2876 * x_2877) + x_2880);
        let x_2884 : vec4<f32> = u_xlat16;
        let x_2885 : vec2<f32> = vec2<f32>(x_2884.z, x_2884.w);
        let x_2887 : f32 = vs_INTERP3.z;
        txVec52 = vec3<f32>(x_2885.x, x_2885.y, x_2887);
        let x_2894 : vec3<f32> = txVec52;
        let x_2896 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2894.xy, x_2894.z);
        u_xlat86 = x_2896;
        let x_2898 : f32 = u_xlat20.y;
        let x_2899 : f32 = u_xlat86;
        let x_2902 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2898 * x_2899) + x_2902);
        let x_2906 : vec2<f32> = u_xlat34;
        let x_2908 : f32 = vs_INTERP3.z;
        txVec53 = vec3<f32>(x_2906.x, x_2906.y, x_2908);
        let x_2915 : vec3<f32> = txVec53;
        let x_2917 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2915.xy, x_2915.z);
        u_xlat34.x = x_2917;
        let x_2920 : f32 = u_xlat20.z;
        let x_2922 : f32 = u_xlat34.x;
        let x_2925 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2920 * x_2922) + x_2925);
        let x_2929 : vec4<f32> = u_xlat17;
        let x_2930 : vec2<f32> = vec2<f32>(x_2929.x, x_2929.y);
        let x_2932 : f32 = vs_INTERP3.z;
        txVec54 = vec3<f32>(x_2930.x, x_2930.y, x_2932);
        let x_2939 : vec3<f32> = txVec54;
        let x_2941 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2939.xy, x_2939.z);
        u_xlat34.x = x_2941;
        let x_2944 : f32 = u_xlat20.w;
        let x_2946 : f32 = u_xlat34.x;
        let x_2949 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2944 * x_2946) + x_2949);
        let x_2953 : vec4<f32> = u_xlat11;
        let x_2954 : vec2<f32> = vec2<f32>(x_2953.x, x_2953.y);
        let x_2956 : f32 = vs_INTERP3.z;
        txVec55 = vec3<f32>(x_2954.x, x_2954.y, x_2956);
        let x_2963 : vec3<f32> = txVec55;
        let x_2965 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2963.xy, x_2963.z);
        u_xlat34.x = x_2965;
        let x_2968 : f32 = u_xlat7.x;
        let x_2970 : f32 = u_xlat34.x;
        let x_2973 : f32 = u_xlat8.x;
        u_xlat7.x = ((x_2968 * x_2970) + x_2973);
        let x_2977 : vec4<f32> = u_xlat11;
        let x_2978 : vec2<f32> = vec2<f32>(x_2977.z, x_2977.w);
        let x_2980 : f32 = vs_INTERP3.z;
        txVec56 = vec3<f32>(x_2978.x, x_2978.y, x_2980);
        let x_2987 : vec3<f32> = txVec56;
        let x_2989 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2987.xy, x_2987.z);
        u_xlat8.x = x_2989;
        let x_2992 : f32 = u_xlat7.y;
        let x_2994 : f32 = u_xlat8.x;
        let x_2997 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_2992 * x_2994) + x_2997);
        let x_3001 : vec2<f32> = u_xlat62;
        let x_3003 : f32 = vs_INTERP3.z;
        txVec57 = vec3<f32>(x_3001.x, x_3001.y, x_3003);
        let x_3010 : vec3<f32> = txVec57;
        let x_3012 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3010.xy, x_3010.z);
        u_xlat33.x = x_3012;
        let x_3015 : f32 = u_xlat7.z;
        let x_3017 : f32 = u_xlat33.x;
        let x_3020 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_3015 * x_3017) + x_3020);
        let x_3024 : vec2<f32> = u_xlat58;
        let x_3026 : f32 = vs_INTERP3.z;
        txVec58 = vec3<f32>(x_3024.x, x_3024.y, x_3026);
        let x_3033 : vec3<f32> = txVec58;
        let x_3035 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3033.xy, x_3033.z);
        u_xlat58.x = x_3035;
        let x_3038 : f32 = u_xlat7.w;
        let x_3040 : f32 = u_xlat58.x;
        let x_3043 : f32 = u_xlat7.x;
        u_xlat0.x = ((x_3038 * x_3040) + x_3043);
      }
    }
  } else {
    let x_3048 : vec4<f32> = vs_INTERP3;
    let x_3049 : vec2<f32> = vec2<f32>(x_3048.x, x_3048.y);
    let x_3051 : f32 = vs_INTERP3.z;
    txVec59 = vec3<f32>(x_3049.x, x_3049.y, x_3051);
    let x_3058 : vec3<f32> = txVec59;
    let x_3060 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3058.xy, x_3058.z);
    u_xlat0.x = x_3060;
  }
  let x_3063 : f32 = u_xlat0.x;
  let x_3065 : f32 = x_241.x_MainLightShadowParams.x;
  let x_3068 : f32 = u_xlat2.x;
  u_xlat0.x = ((x_3063 * x_3065) + x_3068);
  let x_3073 : f32 = vs_INTERP3.z;
  u_xlatb2 = (0.0f >= x_3073);
  let x_3076 : f32 = vs_INTERP3.z;
  u_xlatb58.x = (x_3076 >= 1.0f);
  let x_3079 : bool = u_xlatb2;
  let x_3081 : bool = u_xlatb58.x;
  u_xlatb2 = (x_3079 | x_3081);
  let x_3083 : bool = u_xlatb2;
  if (x_3083) {
    x_3084 = 1.0f;
  } else {
    let x_3089 : f32 = u_xlat0.x;
    x_3084 = x_3089;
  }
  let x_3090 : f32 = x_3084;
  u_xlat0.x = x_3090;
  let x_3092 : vec3<f32> = vs_INTERP8;
  let x_3094 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_3096 : vec3<f32> = (x_3092 + -(x_3094));
  let x_3097 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3096.x, x_3096.y, x_3096.z, x_3097.w);
  let x_3099 : vec4<f32> = u_xlat7;
  let x_3101 : vec4<f32> = u_xlat7;
  u_xlat2.x = dot(vec3<f32>(x_3099.x, x_3099.y, x_3099.z), vec3<f32>(x_3101.x, x_3101.y, x_3101.z));
  let x_3106 : f32 = u_xlat2.x;
  let x_3108 : f32 = x_241.x_MainLightShadowParams.z;
  let x_3111 : f32 = x_241.x_MainLightShadowParams.w;
  u_xlat58.x = ((x_3106 * x_3108) + x_3111);
  let x_3115 : f32 = u_xlat58.x;
  u_xlat58.x = clamp(x_3115, 0.0f, 1.0f);
  let x_3119 : f32 = u_xlat0.x;
  u_xlat84 = (-(x_3119) + 1.0f);
  let x_3123 : f32 = u_xlat58.x;
  let x_3124 : f32 = u_xlat84;
  let x_3127 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_3123 * x_3124) + x_3127);
  let x_3137 : f32 = x_3135.x_MainLightCookieTextureFormat;
  u_xlatb58.x = !((x_3137 == -1.0f));
  let x_3141 : bool = u_xlatb58.x;
  if (x_3141) {
    let x_3144 : vec3<f32> = vs_INTERP8;
    let x_3147 : vec4<f32> = x_3135.x_MainLightWorldToLight[1i];
    u_xlat58 = (vec2<f32>(x_3144.y, x_3144.y) * vec2<f32>(x_3147.x, x_3147.y));
    let x_3151 : vec4<f32> = x_3135.x_MainLightWorldToLight[0i];
    let x_3153 : vec3<f32> = vs_INTERP8;
    let x_3156 : vec2<f32> = u_xlat58;
    u_xlat58 = ((vec2<f32>(x_3151.x, x_3151.y) * vec2<f32>(x_3153.x, x_3153.x)) + x_3156);
    let x_3159 : vec4<f32> = x_3135.x_MainLightWorldToLight[2i];
    let x_3161 : vec3<f32> = vs_INTERP8;
    let x_3164 : vec2<f32> = u_xlat58;
    u_xlat58 = ((vec2<f32>(x_3159.x, x_3159.y) * vec2<f32>(x_3161.z, x_3161.z)) + x_3164);
    let x_3166 : vec2<f32> = u_xlat58;
    let x_3168 : vec4<f32> = x_3135.x_MainLightWorldToLight[3i];
    u_xlat58 = (x_3166 + vec2<f32>(x_3168.x, x_3168.y));
    let x_3171 : vec2<f32> = u_xlat58;
    u_xlat58 = ((x_3171 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_3179 : vec2<f32> = u_xlat58;
    let x_3181 : f32 = x_126.x_GlobalMipBias.x;
    let x_3182 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_3179, x_3181);
    u_xlat7 = x_3182;
    let x_3184 : f32 = x_3135.x_MainLightCookieTextureFormat;
    let x_3186 : f32 = x_3135.x_MainLightCookieTextureFormat;
    let x_3188 : f32 = x_3135.x_MainLightCookieTextureFormat;
    let x_3190 : f32 = x_3135.x_MainLightCookieTextureFormat;
    let x_3191 : vec4<f32> = vec4<f32>(x_3184, x_3186, x_3188, x_3190);
    let x_3199 : vec4<bool> = (vec4<f32>(x_3191.x, x_3191.y, x_3191.z, x_3191.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb58 = vec2<bool>(x_3199.x, x_3199.y);
    let x_3202 : bool = u_xlatb58.y;
    if (x_3202) {
      let x_3207 : f32 = u_xlat7.w;
      x_3203 = x_3207;
    } else {
      let x_3210 : f32 = u_xlat7.x;
      x_3203 = x_3210;
    }
    let x_3211 : f32 = x_3203;
    u_xlat84 = x_3211;
    let x_3213 : bool = u_xlatb58.x;
    if (x_3213) {
      let x_3217 : vec4<f32> = u_xlat7;
      x_3214 = vec3<f32>(x_3217.x, x_3217.y, x_3217.z);
    } else {
      let x_3220 : f32 = u_xlat84;
      x_3214 = vec3<f32>(x_3220, x_3220, x_3220);
    }
    let x_3222 : vec3<f32> = x_3214;
    let x_3223 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3222.x, x_3222.y, x_3222.z, x_3223.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_3229 : vec4<f32> = u_xlat7;
  let x_3232 : vec4<f32> = x_126.x_MainLightColor;
  let x_3234 : vec3<f32> = (vec3<f32>(x_3229.x, x_3229.y, x_3229.z) * vec3<f32>(x_3232.x, x_3232.y, x_3232.z));
  let x_3235 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3234.x, x_3234.y, x_3234.z, x_3235.w);
  let x_3237 : vec4<f32> = u_xlat3;
  let x_3240 : vec3<f32> = u_xlat26;
  u_xlat58.x = dot(-(vec3<f32>(x_3237.x, x_3237.y, x_3237.z)), x_3240);
  let x_3244 : f32 = u_xlat58.x;
  let x_3246 : f32 = u_xlat58.x;
  u_xlat58.x = (x_3244 + x_3246);
  let x_3249 : vec3<f32> = u_xlat26;
  let x_3250 : vec2<f32> = u_xlat58;
  let x_3254 : vec4<f32> = u_xlat3;
  let x_3257 : vec3<f32> = ((x_3249 * -(vec3<f32>(x_3250.x, x_3250.x, x_3250.x))) + -(vec3<f32>(x_3254.x, x_3254.y, x_3254.z)));
  let x_3258 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3257.x, x_3257.y, x_3257.z, x_3258.w);
  let x_3260 : vec3<f32> = u_xlat26;
  let x_3261 : vec4<f32> = u_xlat3;
  u_xlat58.x = dot(x_3260, vec3<f32>(x_3261.x, x_3261.y, x_3261.z));
  let x_3266 : f32 = u_xlat58.x;
  u_xlat58.x = clamp(x_3266, 0.0f, 1.0f);
  let x_3270 : f32 = u_xlat58.x;
  u_xlat58.x = (-(x_3270) + 1.0f);
  let x_3275 : f32 = u_xlat58.x;
  let x_3277 : f32 = u_xlat58.x;
  u_xlat58.x = (x_3275 * x_3277);
  let x_3281 : f32 = u_xlat58.x;
  let x_3283 : f32 = u_xlat58.x;
  u_xlat58.x = (x_3281 * x_3283);
  let x_3286 : f32 = u_xlat80;
  u_xlat84 = ((-(x_3286) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3292 : f32 = u_xlat80;
  let x_3293 : f32 = u_xlat84;
  u_xlat80 = (x_3292 * x_3293);
  let x_3295 : f32 = u_xlat80;
  u_xlat80 = (x_3295 * 6.0f);
  let x_3306 : vec4<f32> = u_xlat8;
  let x_3308 : f32 = u_xlat80;
  let x_3309 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_3306.x, x_3306.y, x_3306.z), x_3308);
  u_xlat8 = x_3309;
  let x_3311 : f32 = u_xlat8.w;
  u_xlat80 = (x_3311 + -1.0f);
  let x_3314 : f32 = x_48.unity_SpecCube0_HDR.w;
  let x_3315 : f32 = u_xlat80;
  u_xlat80 = ((x_3314 * x_3315) + 1.0f);
  let x_3318 : f32 = u_xlat80;
  u_xlat80 = max(x_3318, 0.0f);
  let x_3320 : f32 = u_xlat80;
  u_xlat80 = log2(x_3320);
  let x_3322 : f32 = u_xlat80;
  let x_3324 : f32 = x_48.unity_SpecCube0_HDR.y;
  u_xlat80 = (x_3322 * x_3324);
  let x_3326 : f32 = u_xlat80;
  u_xlat80 = exp2(x_3326);
  let x_3328 : f32 = u_xlat80;
  let x_3330 : f32 = x_48.unity_SpecCube0_HDR.x;
  u_xlat80 = (x_3328 * x_3330);
  let x_3332 : vec4<f32> = u_xlat8;
  let x_3334 : f32 = u_xlat80;
  let x_3336 : vec3<f32> = (vec3<f32>(x_3332.x, x_3332.y, x_3332.z) * vec3<f32>(x_3334, x_3334, x_3334));
  let x_3337 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3336.x, x_3336.y, x_3336.z, x_3337.w);
  let x_3339 : f32 = u_xlat81;
  let x_3341 : f32 = u_xlat81;
  let x_3345 : vec2<f32> = ((vec2<f32>(x_3339, x_3339) * vec2<f32>(x_3341, x_3341)) + vec2<f32>(-1.0f, 1.0f));
  let x_3346 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_3345.x, x_3345.y, x_3346.z, x_3346.w);
  let x_3349 : f32 = u_xlat9.y;
  u_xlat80 = (1.0f / x_3349);
  let x_3351 : f32 = u_xlat83;
  u_xlat81 = (x_3351 + -0.03999999910593032837f);
  let x_3355 : f32 = u_xlat58.x;
  let x_3356 : f32 = u_xlat81;
  u_xlat81 = ((x_3355 * x_3356) + 0.03999999910593032837f);
  let x_3360 : f32 = u_xlat80;
  let x_3361 : f32 = u_xlat81;
  u_xlat80 = (x_3360 * x_3361);
  let x_3363 : f32 = u_xlat80;
  let x_3365 : vec4<f32> = u_xlat8;
  let x_3367 : vec3<f32> = (vec3<f32>(x_3363, x_3363, x_3363) * vec3<f32>(x_3365.x, x_3365.y, x_3365.z));
  let x_3368 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3367.x, x_3367.y, x_3367.z, x_3368.w);
  let x_3370 : vec4<f32> = u_xlat4;
  let x_3372 : vec3<f32> = u_xlat5;
  let x_3374 : vec4<f32> = u_xlat8;
  let x_3376 : vec3<f32> = ((vec3<f32>(x_3370.x, x_3370.y, x_3370.z) * x_3372) + vec3<f32>(x_3374.x, x_3374.y, x_3374.z));
  let x_3377 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_3376.x, x_3376.y, x_3376.z, x_3377.w);
  let x_3380 : f32 = u_xlat0.x;
  let x_3382 : f32 = x_48.unity_LightData.z;
  u_xlat0.x = (x_3380 * x_3382);
  let x_3385 : vec3<f32> = u_xlat26;
  let x_3387 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat80 = dot(x_3385, vec3<f32>(x_3387.x, x_3387.y, x_3387.z));
  let x_3390 : f32 = u_xlat80;
  u_xlat80 = clamp(x_3390, 0.0f, 1.0f);
  let x_3393 : f32 = u_xlat0.x;
  let x_3394 : f32 = u_xlat80;
  u_xlat0.x = (x_3393 * x_3394);
  let x_3397 : vec3<f32> = u_xlat0;
  let x_3399 : vec4<f32> = u_xlat7;
  let x_3401 : vec3<f32> = (vec3<f32>(x_3397.x, x_3397.x, x_3397.x) * vec3<f32>(x_3399.x, x_3399.y, x_3399.z));
  let x_3402 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3401.x, x_3401.y, x_3401.z, x_3402.w);
  let x_3404 : vec4<f32> = u_xlat3;
  let x_3407 : vec4<f32> = x_126.x_MainLightPosition;
  let x_3409 : vec3<f32> = (vec3<f32>(x_3404.x, x_3404.y, x_3404.z) + vec3<f32>(x_3407.x, x_3407.y, x_3407.z));
  let x_3410 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3409.x, x_3409.y, x_3409.z, x_3410.w);
  let x_3412 : vec4<f32> = u_xlat8;
  let x_3414 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_3412.x, x_3412.y, x_3412.z), vec3<f32>(x_3414.x, x_3414.y, x_3414.z));
  let x_3419 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_3419, 1.17549435e-38f);
  let x_3423 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_3423);
  let x_3426 : vec3<f32> = u_xlat0;
  let x_3428 : vec4<f32> = u_xlat8;
  let x_3430 : vec3<f32> = (vec3<f32>(x_3426.x, x_3426.x, x_3426.x) * vec3<f32>(x_3428.x, x_3428.y, x_3428.z));
  let x_3431 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3430.x, x_3430.y, x_3430.z, x_3431.w);
  let x_3433 : vec3<f32> = u_xlat26;
  let x_3434 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_3433, vec3<f32>(x_3434.x, x_3434.y, x_3434.z));
  let x_3439 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_3439, 0.0f, 1.0f);
  let x_3443 : vec4<f32> = x_126.x_MainLightPosition;
  let x_3445 : vec4<f32> = u_xlat8;
  u_xlat80 = dot(vec3<f32>(x_3443.x, x_3443.y, x_3443.z), vec3<f32>(x_3445.x, x_3445.y, x_3445.z));
  let x_3448 : f32 = u_xlat80;
  u_xlat80 = clamp(x_3448, 0.0f, 1.0f);
  let x_3451 : f32 = u_xlat0.x;
  let x_3453 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3451 * x_3453);
  let x_3457 : f32 = u_xlat0.x;
  let x_3459 : f32 = u_xlat9.x;
  u_xlat0.x = ((x_3457 * x_3459) + 1.00001001358032226562f);
  let x_3464 : f32 = u_xlat80;
  let x_3465 : f32 = u_xlat80;
  u_xlat80 = (x_3464 * x_3465);
  let x_3468 : f32 = u_xlat0.x;
  let x_3470 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3468 * x_3470);
  let x_3473 : f32 = u_xlat80;
  u_xlat80 = max(x_3473, 0.10000000149011611938f);
  let x_3477 : f32 = u_xlat0.x;
  let x_3478 : f32 = u_xlat80;
  u_xlat0.x = (x_3477 * x_3478);
  let x_3482 : f32 = u_xlat6.x;
  let x_3484 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3482 * x_3484);
  let x_3487 : f32 = u_xlat82;
  let x_3489 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3487 / x_3489);
  let x_3492 : vec3<f32> = u_xlat0;
  let x_3496 : vec3<f32> = u_xlat5;
  let x_3497 : vec3<f32> = ((vec3<f32>(x_3492.x, x_3492.x, x_3492.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3496);
  let x_3498 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3497.x, x_3497.y, x_3497.z, x_3498.w);
  let x_3500 : vec4<f32> = u_xlat7;
  let x_3502 : vec4<f32> = u_xlat8;
  let x_3504 : vec3<f32> = (vec3<f32>(x_3500.x, x_3500.y, x_3500.z) * vec3<f32>(x_3502.x, x_3502.y, x_3502.z));
  let x_3505 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3504.x, x_3504.y, x_3504.z, x_3505.w);
  let x_3509 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_3511 : f32 = x_48.unity_LightData.y;
  u_xlat0.x = min(x_3509, x_3511);
  let x_3517 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_3517));
  let x_3521 : f32 = u_xlat2.x;
  let x_3524 : f32 = x_241.x_AdditionalShadowFadeParams.x;
  let x_3527 : f32 = x_241.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_3521 * x_3524) + x_3527);
  let x_3531 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_3531, 0.0f, 1.0f);
  let x_3535 : f32 = x_3135.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3537 : f32 = x_3135.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3539 : f32 = x_3135.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3541 : f32 = x_3135.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3542 : vec4<f32> = vec4<f32>(x_3535, x_3537, x_3539, x_3541);
  let x_3548 : vec4<bool> = (vec4<f32>(x_3542.x, x_3542.y, x_3542.z, x_3542.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  u_xlatb58 = vec2<bool>(x_3548.x, x_3548.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3560 : u32 = u_xlatu_loop_1;
    let x_3561 : u32 = u_xlatu0;
    if ((x_3560 < x_3561)) {
    } else {
      break;
    }
    let x_3564 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_3564 >> 2u);
    let x_3568 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_3568 & 3u));
    let x_3571 : u32 = u_xlatu81;
    let x_3574 : vec4<f32> = x_48.unity_LightIndices[bitcast<i32>(x_3571)];
    let x_3584 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3589 : vec4<u32> = indexable[x_3584];
    u_xlat81 = dot(x_3574, bitcast<vec4<f32>>(x_3589));
    let x_3593 : f32 = u_xlat81;
    u_xlati81 = i32(x_3593);
    let x_3596 : vec3<f32> = vs_INTERP8;
    let x_3607 : i32 = u_xlati81;
    let x_3609 : vec4<f32> = x_3606.x_AdditionalLightsPosition[x_3607];
    let x_3612 : i32 = u_xlati81;
    let x_3614 : vec4<f32> = x_3606.x_AdditionalLightsPosition[x_3612];
    u_xlat35 = ((-(x_3596) * vec3<f32>(x_3609.w, x_3609.w, x_3609.w)) + vec3<f32>(x_3614.x, x_3614.y, x_3614.z));
    let x_3617 : vec3<f32> = u_xlat35;
    let x_3618 : vec3<f32> = u_xlat35;
    u_xlat83 = dot(x_3617, x_3618);
    let x_3620 : f32 = u_xlat83;
    u_xlat83 = max(x_3620, 0.00006103515625f);
    let x_3624 : f32 = u_xlat83;
    u_xlat85 = inverseSqrt(x_3624);
    let x_3626 : f32 = u_xlat85;
    let x_3628 : vec3<f32> = u_xlat35;
    let x_3629 : vec3<f32> = (vec3<f32>(x_3626, x_3626, x_3626) * x_3628);
    let x_3630 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3629.x, x_3629.y, x_3629.z, x_3630.w);
    let x_3632 : f32 = u_xlat83;
    u_xlat86 = (1.0f / x_3632);
    let x_3634 : f32 = u_xlat83;
    let x_3635 : i32 = u_xlati81;
    let x_3637 : f32 = x_3606.x_AdditionalLightsAttenuation[x_3635].x;
    u_xlat83 = (x_3634 * x_3637);
    let x_3639 : f32 = u_xlat83;
    let x_3641 : f32 = u_xlat83;
    u_xlat83 = ((-(x_3639) * x_3641) + 1.0f);
    let x_3644 : f32 = u_xlat83;
    u_xlat83 = max(x_3644, 0.0f);
    let x_3646 : f32 = u_xlat83;
    let x_3647 : f32 = u_xlat83;
    u_xlat83 = (x_3646 * x_3647);
    let x_3649 : f32 = u_xlat83;
    let x_3650 : f32 = u_xlat86;
    u_xlat83 = (x_3649 * x_3650);
    let x_3652 : i32 = u_xlati81;
    let x_3654 : vec4<f32> = x_3606.x_AdditionalLightsSpotDir[x_3652];
    let x_3656 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_3654.x, x_3654.y, x_3654.z), vec3<f32>(x_3656.x, x_3656.y, x_3656.z));
    let x_3659 : f32 = u_xlat86;
    let x_3660 : i32 = u_xlati81;
    let x_3662 : f32 = x_3606.x_AdditionalLightsAttenuation[x_3660].z;
    let x_3664 : i32 = u_xlati81;
    let x_3666 : f32 = x_3606.x_AdditionalLightsAttenuation[x_3664].w;
    u_xlat86 = ((x_3659 * x_3662) + x_3666);
    let x_3668 : f32 = u_xlat86;
    u_xlat86 = clamp(x_3668, 0.0f, 1.0f);
    let x_3670 : f32 = u_xlat86;
    let x_3671 : f32 = u_xlat86;
    u_xlat86 = (x_3670 * x_3671);
    let x_3673 : f32 = u_xlat83;
    let x_3674 : f32 = u_xlat86;
    u_xlat83 = (x_3673 * x_3674);
    let x_3678 : i32 = u_xlati81;
    let x_3680 : f32 = x_241.x_AdditionalShadowParams[x_3678].w;
    u_xlati86 = i32(x_3680);
    let x_3683 : i32 = u_xlati86;
    u_xlatb88 = (x_3683 >= 0i);
    let x_3685 : bool = u_xlatb88;
    if (x_3685) {
      let x_3689 : i32 = u_xlati81;
      let x_3691 : f32 = x_241.x_AdditionalShadowParams[x_3689].z;
      u_xlatb88 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3691, x_3691, x_3691, x_3691))));
      let x_3695 : bool = u_xlatb88;
      if (x_3695) {
        let x_3700 : vec4<f32> = u_xlat10;
        let x_3703 : vec4<f32> = u_xlat10;
        let x_3706 : vec4<bool> = (abs(vec4<f32>(x_3700.z, x_3700.z, x_3700.y, x_3700.z)) >= abs(vec4<f32>(x_3703.x, x_3703.y, x_3703.x, x_3703.x)));
        let x_3708 : vec3<bool> = vec3<bool>(x_3706.x, x_3706.y, x_3706.z);
        let x_3709 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3708.x, x_3708.y, x_3708.z, x_3709.w);
        let x_3712 : bool = u_xlatb11.y;
        let x_3714 : bool = u_xlatb11.x;
        u_xlatb88 = (x_3712 & x_3714);
        let x_3716 : vec4<f32> = u_xlat10;
        let x_3719 : vec4<bool> = (-(vec4<f32>(x_3716.z, x_3716.y, x_3716.z, x_3716.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3720 : vec3<bool> = vec3<bool>(x_3719.x, x_3719.y, x_3719.w);
        let x_3721 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3720.x, x_3720.y, x_3721.z, x_3720.z);
        let x_3724 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3724);
        let x_3729 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3729);
        let x_3735 : bool = u_xlatb11.w;
        u_xlat89 = select(0.0f, 1.0f, x_3735);
        let x_3739 : bool = u_xlatb11.z;
        if (x_3739) {
          let x_3744 : f32 = u_xlat11.y;
          x_3740 = x_3744;
        } else {
          let x_3746 : f32 = u_xlat89;
          x_3740 = x_3746;
        }
        let x_3747 : f32 = x_3740;
        u_xlat37.x = x_3747;
        let x_3750 : bool = u_xlatb88;
        if (x_3750) {
          let x_3755 : f32 = u_xlat11.x;
          x_3751 = x_3755;
        } else {
          let x_3758 : f32 = u_xlat37.x;
          x_3751 = x_3758;
        }
        let x_3759 : f32 = x_3751;
        u_xlat88 = x_3759;
        let x_3760 : i32 = u_xlati81;
        let x_3762 : f32 = x_241.x_AdditionalShadowParams[x_3760].w;
        u_xlat11.x = trunc(x_3762);
        let x_3765 : f32 = u_xlat88;
        let x_3767 : f32 = u_xlat11.x;
        u_xlat88 = (x_3765 + x_3767);
        let x_3769 : f32 = u_xlat88;
        u_xlati86 = i32(x_3769);
      }
      let x_3771 : i32 = u_xlati86;
      u_xlati86 = (x_3771 << bitcast<u32>(2i));
      let x_3773 : vec3<f32> = vs_INTERP8;
      let x_3776 : i32 = u_xlati86;
      let x_3779 : i32 = u_xlati86;
      let x_3783 : vec4<f32> = x_241.x_AdditionalLightsWorldToShadow[((x_3776 + 1i) / 4i)][((x_3779 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3773.y, x_3773.y, x_3773.y, x_3773.y) * x_3783);
      let x_3785 : i32 = u_xlati86;
      let x_3787 : i32 = u_xlati86;
      let x_3790 : vec4<f32> = x_241.x_AdditionalLightsWorldToShadow[(x_3785 / 4i)][(x_3787 % 4i)];
      let x_3791 : vec3<f32> = vs_INTERP8;
      let x_3794 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3790 * vec4<f32>(x_3791.x, x_3791.x, x_3791.x, x_3791.x)) + x_3794);
      let x_3796 : i32 = u_xlati86;
      let x_3799 : i32 = u_xlati86;
      let x_3803 : vec4<f32> = x_241.x_AdditionalLightsWorldToShadow[((x_3796 + 2i) / 4i)][((x_3799 + 2i) % 4i)];
      let x_3804 : vec3<f32> = vs_INTERP8;
      let x_3807 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3803 * vec4<f32>(x_3804.z, x_3804.z, x_3804.z, x_3804.z)) + x_3807);
      let x_3809 : vec4<f32> = u_xlat11;
      let x_3810 : i32 = u_xlati86;
      let x_3813 : i32 = u_xlati86;
      let x_3817 : vec4<f32> = x_241.x_AdditionalLightsWorldToShadow[((x_3810 + 3i) / 4i)][((x_3813 + 3i) % 4i)];
      u_xlat11 = (x_3809 + x_3817);
      let x_3819 : vec4<f32> = u_xlat11;
      let x_3821 : vec4<f32> = u_xlat11;
      let x_3823 : vec3<f32> = (vec3<f32>(x_3819.x, x_3819.y, x_3819.z) / vec3<f32>(x_3821.w, x_3821.w, x_3821.w));
      let x_3824 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3823.x, x_3823.y, x_3823.z, x_3824.w);
      let x_3827 : i32 = u_xlati81;
      let x_3829 : f32 = x_241.x_AdditionalShadowParams[x_3827].y;
      u_xlatb86 = (0.0f < x_3829);
      let x_3831 : bool = u_xlatb86;
      if (x_3831) {
        let x_3834 : i32 = u_xlati81;
        let x_3836 : f32 = x_241.x_AdditionalShadowParams[x_3834].y;
        u_xlatb86 = (1.0f == x_3836);
        let x_3838 : bool = u_xlatb86;
        if (x_3838) {
          let x_3841 : vec4<f32> = u_xlat11;
          let x_3844 : vec4<f32> = x_241.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3841.x, x_3841.y, x_3841.x, x_3841.y) + x_3844);
          let x_3847 : vec4<f32> = u_xlat12;
          let x_3848 : vec2<f32> = vec2<f32>(x_3847.x, x_3847.y);
          let x_3850 : f32 = u_xlat11.z;
          txVec60 = vec3<f32>(x_3848.x, x_3848.y, x_3850);
          let x_3858 : vec3<f32> = txVec60;
          let x_3860 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3858.xy, x_3858.z);
          u_xlat13.x = x_3860;
          let x_3863 : vec4<f32> = u_xlat12;
          let x_3864 : vec2<f32> = vec2<f32>(x_3863.z, x_3863.w);
          let x_3866 : f32 = u_xlat11.z;
          txVec61 = vec3<f32>(x_3864.x, x_3864.y, x_3866);
          let x_3873 : vec3<f32> = txVec61;
          let x_3875 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3873.xy, x_3873.z);
          u_xlat13.y = x_3875;
          let x_3877 : vec4<f32> = u_xlat11;
          let x_3881 : vec4<f32> = x_241.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3877.x, x_3877.y, x_3877.x, x_3877.y) + x_3881);
          let x_3884 : vec4<f32> = u_xlat12;
          let x_3885 : vec2<f32> = vec2<f32>(x_3884.x, x_3884.y);
          let x_3887 : f32 = u_xlat11.z;
          txVec62 = vec3<f32>(x_3885.x, x_3885.y, x_3887);
          let x_3894 : vec3<f32> = txVec62;
          let x_3896 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3894.xy, x_3894.z);
          u_xlat13.z = x_3896;
          let x_3899 : vec4<f32> = u_xlat12;
          let x_3900 : vec2<f32> = vec2<f32>(x_3899.z, x_3899.w);
          let x_3902 : f32 = u_xlat11.z;
          txVec63 = vec3<f32>(x_3900.x, x_3900.y, x_3902);
          let x_3909 : vec3<f32> = txVec63;
          let x_3911 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3909.xy, x_3909.z);
          u_xlat13.w = x_3911;
          let x_3913 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_3913, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3916 : i32 = u_xlati81;
          let x_3918 : f32 = x_241.x_AdditionalShadowParams[x_3916].y;
          u_xlatb88 = (2.0f == x_3918);
          let x_3920 : bool = u_xlatb88;
          if (x_3920) {
            let x_3923 : vec4<f32> = u_xlat11;
            let x_3927 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_3930 : vec2<f32> = ((vec2<f32>(x_3923.x, x_3923.y) * vec2<f32>(x_3927.z, x_3927.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3931 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3930.x, x_3930.y, x_3931.z, x_3931.w);
            let x_3933 : vec4<f32> = u_xlat12;
            let x_3935 : vec2<f32> = floor(vec2<f32>(x_3933.x, x_3933.y));
            let x_3936 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3935.x, x_3935.y, x_3936.z, x_3936.w);
            let x_3939 : vec4<f32> = u_xlat11;
            let x_3942 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_3945 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3939.x, x_3939.y) * vec2<f32>(x_3942.z, x_3942.w)) + -(vec2<f32>(x_3945.x, x_3945.y)));
            let x_3949 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3949.x, x_3949.x, x_3949.y, x_3949.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3952 : vec4<f32> = u_xlat13;
            let x_3954 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3952.x, x_3952.x, x_3952.z, x_3952.z) * vec4<f32>(x_3954.x, x_3954.x, x_3954.z, x_3954.z));
            let x_3957 : vec4<f32> = u_xlat14;
            let x_3959 : vec2<f32> = (vec2<f32>(x_3957.y, x_3957.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3960 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3959.x, x_3960.y, x_3959.y, x_3960.w);
            let x_3962 : vec4<f32> = u_xlat14;
            let x_3965 : vec2<f32> = u_xlat64;
            let x_3967 : vec2<f32> = ((vec2<f32>(x_3962.x, x_3962.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3965));
            let x_3968 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3967.x, x_3967.y, x_3968.z, x_3968.w);
            let x_3970 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3970) + vec2<f32>(1.0f, 1.0f));
            let x_3973 : vec2<f32> = u_xlat64;
            let x_3974 : vec2<f32> = min(x_3973, vec2<f32>(0.0f, 0.0f));
            let x_3975 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3974.x, x_3974.y, x_3975.z, x_3975.w);
            let x_3977 : vec4<f32> = u_xlat15;
            let x_3980 : vec4<f32> = u_xlat15;
            let x_3983 : vec2<f32> = u_xlat66;
            let x_3984 : vec2<f32> = ((-(vec2<f32>(x_3977.x, x_3977.y)) * vec2<f32>(x_3980.x, x_3980.y)) + x_3983);
            let x_3985 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3984.x, x_3984.y, x_3985.z, x_3985.w);
            let x_3987 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3987, vec2<f32>(0.0f, 0.0f));
            let x_3989 : vec2<f32> = u_xlat64;
            let x_3991 : vec2<f32> = u_xlat64;
            let x_3993 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3989) * x_3991) + vec2<f32>(x_3993.y, x_3993.w));
            let x_3996 : vec4<f32> = u_xlat15;
            let x_3998 : vec2<f32> = (vec2<f32>(x_3996.x, x_3996.y) + vec2<f32>(1.0f, 1.0f));
            let x_3999 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3998.x, x_3998.y, x_3999.z, x_3999.w);
            let x_4001 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_4001 + vec2<f32>(1.0f, 1.0f));
            let x_4003 : vec4<f32> = u_xlat14;
            let x_4005 : vec2<f32> = (vec2<f32>(x_4003.x, x_4003.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4006 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4005.x, x_4005.y, x_4006.z, x_4006.w);
            let x_4008 : vec2<f32> = u_xlat66;
            let x_4009 : vec2<f32> = (x_4008 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4010 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4009.x, x_4009.y, x_4010.z, x_4010.w);
            let x_4012 : vec4<f32> = u_xlat15;
            let x_4014 : vec2<f32> = (vec2<f32>(x_4012.x, x_4012.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4015 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4014.x, x_4014.y, x_4015.z, x_4015.w);
            let x_4017 : vec2<f32> = u_xlat64;
            let x_4018 : vec2<f32> = (x_4017 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4019 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4018.x, x_4018.y, x_4019.z, x_4019.w);
            let x_4021 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_4021.y, x_4021.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4025 : f32 = u_xlat15.x;
            u_xlat16.z = x_4025;
            let x_4028 : f32 = u_xlat64.x;
            u_xlat16.w = x_4028;
            let x_4031 : f32 = u_xlat17.x;
            u_xlat14.z = x_4031;
            let x_4034 : f32 = u_xlat13.x;
            u_xlat14.w = x_4034;
            let x_4036 : vec4<f32> = u_xlat14;
            let x_4038 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_4036.z, x_4036.w, x_4036.x, x_4036.z) + vec4<f32>(x_4038.z, x_4038.w, x_4038.x, x_4038.z));
            let x_4042 : f32 = u_xlat16.y;
            u_xlat15.z = x_4042;
            let x_4045 : f32 = u_xlat64.y;
            u_xlat15.w = x_4045;
            let x_4048 : f32 = u_xlat14.y;
            u_xlat17.z = x_4048;
            let x_4051 : f32 = u_xlat13.z;
            u_xlat17.w = x_4051;
            let x_4053 : vec4<f32> = u_xlat15;
            let x_4055 : vec4<f32> = u_xlat17;
            let x_4057 : vec3<f32> = (vec3<f32>(x_4053.z, x_4053.y, x_4053.w) + vec3<f32>(x_4055.z, x_4055.y, x_4055.w));
            let x_4058 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4057.x, x_4057.y, x_4057.z, x_4058.w);
            let x_4060 : vec4<f32> = u_xlat14;
            let x_4062 : vec4<f32> = u_xlat18;
            let x_4064 : vec3<f32> = (vec3<f32>(x_4060.x, x_4060.z, x_4060.w) / vec3<f32>(x_4062.z, x_4062.w, x_4062.y));
            let x_4065 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4064.x, x_4064.y, x_4064.z, x_4065.w);
            let x_4067 : vec4<f32> = u_xlat14;
            let x_4069 : vec3<f32> = (vec3<f32>(x_4067.x, x_4067.y, x_4067.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4070 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4069.x, x_4069.y, x_4069.z, x_4070.w);
            let x_4072 : vec4<f32> = u_xlat17;
            let x_4074 : vec4<f32> = u_xlat13;
            let x_4076 : vec3<f32> = (vec3<f32>(x_4072.z, x_4072.y, x_4072.w) / vec3<f32>(x_4074.x, x_4074.y, x_4074.z));
            let x_4077 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4076.x, x_4076.y, x_4076.z, x_4077.w);
            let x_4079 : vec4<f32> = u_xlat15;
            let x_4081 : vec3<f32> = (vec3<f32>(x_4079.x, x_4079.y, x_4079.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4082 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4081.x, x_4081.y, x_4081.z, x_4082.w);
            let x_4084 : vec4<f32> = u_xlat14;
            let x_4087 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4089 : vec3<f32> = (vec3<f32>(x_4084.y, x_4084.x, x_4084.z) * vec3<f32>(x_4087.x, x_4087.x, x_4087.x));
            let x_4090 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4089.x, x_4089.y, x_4089.z, x_4090.w);
            let x_4092 : vec4<f32> = u_xlat15;
            let x_4095 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4097 : vec3<f32> = (vec3<f32>(x_4092.x, x_4092.y, x_4092.z) * vec3<f32>(x_4095.y, x_4095.y, x_4095.y));
            let x_4098 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4097.x, x_4097.y, x_4097.z, x_4098.w);
            let x_4101 : f32 = u_xlat15.x;
            u_xlat14.w = x_4101;
            let x_4103 : vec4<f32> = u_xlat12;
            let x_4106 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4109 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4103.x, x_4103.y, x_4103.x, x_4103.y) * vec4<f32>(x_4106.x, x_4106.y, x_4106.x, x_4106.y)) + vec4<f32>(x_4109.y, x_4109.w, x_4109.x, x_4109.w));
            let x_4112 : vec4<f32> = u_xlat12;
            let x_4115 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4118 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4112.x, x_4112.y) * vec2<f32>(x_4115.x, x_4115.y)) + vec2<f32>(x_4118.z, x_4118.w));
            let x_4122 : f32 = u_xlat14.y;
            u_xlat15.w = x_4122;
            let x_4124 : vec4<f32> = u_xlat15;
            let x_4125 : vec2<f32> = vec2<f32>(x_4124.y, x_4124.z);
            let x_4126 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4126.x, x_4125.x, x_4126.z, x_4125.y);
            let x_4128 : vec4<f32> = u_xlat12;
            let x_4131 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4134 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_4128.x, x_4128.y, x_4128.x, x_4128.y) * vec4<f32>(x_4131.x, x_4131.y, x_4131.x, x_4131.y)) + vec4<f32>(x_4134.x, x_4134.y, x_4134.z, x_4134.y));
            let x_4137 : vec4<f32> = u_xlat12;
            let x_4140 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4143 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4137.x, x_4137.y, x_4137.x, x_4137.y) * vec4<f32>(x_4140.x, x_4140.y, x_4140.x, x_4140.y)) + vec4<f32>(x_4143.w, x_4143.y, x_4143.w, x_4143.z));
            let x_4146 : vec4<f32> = u_xlat12;
            let x_4149 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4152 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4146.x, x_4146.y, x_4146.x, x_4146.y) * vec4<f32>(x_4149.x, x_4149.y, x_4149.x, x_4149.y)) + vec4<f32>(x_4152.x, x_4152.w, x_4152.z, x_4152.w));
            let x_4155 : vec4<f32> = u_xlat13;
            let x_4157 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_4155.x, x_4155.x, x_4155.x, x_4155.y) * vec4<f32>(x_4157.z, x_4157.w, x_4157.y, x_4157.z));
            let x_4160 : vec4<f32> = u_xlat13;
            let x_4162 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_4160.y, x_4160.y, x_4160.z, x_4160.z) * x_4162);
            let x_4165 : f32 = u_xlat13.z;
            let x_4167 : f32 = u_xlat18.y;
            u_xlat88 = (x_4165 * x_4167);
            let x_4170 : vec4<f32> = u_xlat16;
            let x_4171 : vec2<f32> = vec2<f32>(x_4170.x, x_4170.y);
            let x_4173 : f32 = u_xlat11.z;
            txVec64 = vec3<f32>(x_4171.x, x_4171.y, x_4173);
            let x_4180 : vec3<f32> = txVec64;
            let x_4182 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4180.xy, x_4180.z);
            u_xlat89 = x_4182;
            let x_4184 : vec4<f32> = u_xlat16;
            let x_4185 : vec2<f32> = vec2<f32>(x_4184.z, x_4184.w);
            let x_4187 : f32 = u_xlat11.z;
            txVec65 = vec3<f32>(x_4185.x, x_4185.y, x_4187);
            let x_4194 : vec3<f32> = txVec65;
            let x_4196 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4194.xy, x_4194.z);
            u_xlat12.x = x_4196;
            let x_4199 : f32 = u_xlat12.x;
            let x_4201 : f32 = u_xlat19.y;
            u_xlat12.x = (x_4199 * x_4201);
            let x_4205 : f32 = u_xlat19.x;
            let x_4206 : f32 = u_xlat89;
            let x_4209 : f32 = u_xlat12.x;
            u_xlat89 = ((x_4205 * x_4206) + x_4209);
            let x_4212 : vec2<f32> = u_xlat64;
            let x_4214 : f32 = u_xlat11.z;
            txVec66 = vec3<f32>(x_4212.x, x_4212.y, x_4214);
            let x_4221 : vec3<f32> = txVec66;
            let x_4223 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4221.xy, x_4221.z);
            u_xlat12.x = x_4223;
            let x_4226 : f32 = u_xlat19.z;
            let x_4228 : f32 = u_xlat12.x;
            let x_4230 : f32 = u_xlat89;
            u_xlat89 = ((x_4226 * x_4228) + x_4230);
            let x_4233 : vec4<f32> = u_xlat15;
            let x_4234 : vec2<f32> = vec2<f32>(x_4233.x, x_4233.y);
            let x_4236 : f32 = u_xlat11.z;
            txVec67 = vec3<f32>(x_4234.x, x_4234.y, x_4236);
            let x_4243 : vec3<f32> = txVec67;
            let x_4245 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4243.xy, x_4243.z);
            u_xlat12.x = x_4245;
            let x_4248 : f32 = u_xlat19.w;
            let x_4250 : f32 = u_xlat12.x;
            let x_4252 : f32 = u_xlat89;
            u_xlat89 = ((x_4248 * x_4250) + x_4252);
            let x_4255 : vec4<f32> = u_xlat17;
            let x_4256 : vec2<f32> = vec2<f32>(x_4255.x, x_4255.y);
            let x_4258 : f32 = u_xlat11.z;
            txVec68 = vec3<f32>(x_4256.x, x_4256.y, x_4258);
            let x_4265 : vec3<f32> = txVec68;
            let x_4267 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4265.xy, x_4265.z);
            u_xlat12.x = x_4267;
            let x_4270 : f32 = u_xlat20.x;
            let x_4272 : f32 = u_xlat12.x;
            let x_4274 : f32 = u_xlat89;
            u_xlat89 = ((x_4270 * x_4272) + x_4274);
            let x_4277 : vec4<f32> = u_xlat17;
            let x_4278 : vec2<f32> = vec2<f32>(x_4277.z, x_4277.w);
            let x_4280 : f32 = u_xlat11.z;
            txVec69 = vec3<f32>(x_4278.x, x_4278.y, x_4280);
            let x_4287 : vec3<f32> = txVec69;
            let x_4289 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4287.xy, x_4287.z);
            u_xlat12.x = x_4289;
            let x_4292 : f32 = u_xlat20.y;
            let x_4294 : f32 = u_xlat12.x;
            let x_4296 : f32 = u_xlat89;
            u_xlat89 = ((x_4292 * x_4294) + x_4296);
            let x_4299 : vec4<f32> = u_xlat15;
            let x_4300 : vec2<f32> = vec2<f32>(x_4299.z, x_4299.w);
            let x_4302 : f32 = u_xlat11.z;
            txVec70 = vec3<f32>(x_4300.x, x_4300.y, x_4302);
            let x_4309 : vec3<f32> = txVec70;
            let x_4311 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4309.xy, x_4309.z);
            u_xlat12.x = x_4311;
            let x_4314 : f32 = u_xlat20.z;
            let x_4316 : f32 = u_xlat12.x;
            let x_4318 : f32 = u_xlat89;
            u_xlat89 = ((x_4314 * x_4316) + x_4318);
            let x_4321 : vec4<f32> = u_xlat14;
            let x_4322 : vec2<f32> = vec2<f32>(x_4321.x, x_4321.y);
            let x_4324 : f32 = u_xlat11.z;
            txVec71 = vec3<f32>(x_4322.x, x_4322.y, x_4324);
            let x_4331 : vec3<f32> = txVec71;
            let x_4333 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4331.xy, x_4331.z);
            u_xlat12.x = x_4333;
            let x_4336 : f32 = u_xlat20.w;
            let x_4338 : f32 = u_xlat12.x;
            let x_4340 : f32 = u_xlat89;
            u_xlat89 = ((x_4336 * x_4338) + x_4340);
            let x_4343 : vec4<f32> = u_xlat14;
            let x_4344 : vec2<f32> = vec2<f32>(x_4343.z, x_4343.w);
            let x_4346 : f32 = u_xlat11.z;
            txVec72 = vec3<f32>(x_4344.x, x_4344.y, x_4346);
            let x_4353 : vec3<f32> = txVec72;
            let x_4355 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4353.xy, x_4353.z);
            u_xlat12.x = x_4355;
            let x_4357 : f32 = u_xlat88;
            let x_4359 : f32 = u_xlat12.x;
            let x_4361 : f32 = u_xlat89;
            u_xlat86 = ((x_4357 * x_4359) + x_4361);
          } else {
            let x_4364 : vec4<f32> = u_xlat11;
            let x_4367 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4370 : vec2<f32> = ((vec2<f32>(x_4364.x, x_4364.y) * vec2<f32>(x_4367.z, x_4367.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4371 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4370.x, x_4370.y, x_4371.z, x_4371.w);
            let x_4373 : vec4<f32> = u_xlat12;
            let x_4375 : vec2<f32> = floor(vec2<f32>(x_4373.x, x_4373.y));
            let x_4376 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4375.x, x_4375.y, x_4376.z, x_4376.w);
            let x_4378 : vec4<f32> = u_xlat11;
            let x_4381 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4384 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4378.x, x_4378.y) * vec2<f32>(x_4381.z, x_4381.w)) + -(vec2<f32>(x_4384.x, x_4384.y)));
            let x_4388 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4388.x, x_4388.x, x_4388.y, x_4388.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4391 : vec4<f32> = u_xlat13;
            let x_4393 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4391.x, x_4391.x, x_4391.z, x_4391.z) * vec4<f32>(x_4393.x, x_4393.x, x_4393.z, x_4393.z));
            let x_4396 : vec4<f32> = u_xlat14;
            let x_4398 : vec2<f32> = (vec2<f32>(x_4396.y, x_4396.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4399 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4399.x, x_4398.x, x_4399.z, x_4398.y);
            let x_4401 : vec4<f32> = u_xlat14;
            let x_4404 : vec2<f32> = u_xlat64;
            let x_4406 : vec2<f32> = ((vec2<f32>(x_4401.x, x_4401.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4404));
            let x_4407 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4406.x, x_4407.y, x_4406.y, x_4407.w);
            let x_4409 : vec2<f32> = u_xlat64;
            let x_4411 : vec2<f32> = (-(x_4409) + vec2<f32>(1.0f, 1.0f));
            let x_4412 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4411.x, x_4411.y, x_4412.z, x_4412.w);
            let x_4414 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_4414, vec2<f32>(0.0f, 0.0f));
            let x_4416 : vec2<f32> = u_xlat66;
            let x_4418 : vec2<f32> = u_xlat66;
            let x_4420 : vec4<f32> = u_xlat14;
            let x_4422 : vec2<f32> = ((-(x_4416) * x_4418) + vec2<f32>(x_4420.x, x_4420.y));
            let x_4423 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4422.x, x_4422.y, x_4423.z, x_4423.w);
            let x_4425 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_4425, vec2<f32>(0.0f, 0.0f));
            let x_4428 : vec2<f32> = u_xlat66;
            let x_4430 : vec2<f32> = u_xlat66;
            let x_4432 : vec4<f32> = u_xlat13;
            let x_4434 : vec2<f32> = ((-(x_4428) * x_4430) + vec2<f32>(x_4432.y, x_4432.w));
            let x_4435 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_4434.x, x_4435.y, x_4434.y);
            let x_4437 : vec4<f32> = u_xlat14;
            let x_4439 : vec2<f32> = (vec2<f32>(x_4437.x, x_4437.y) + vec2<f32>(2.0f, 2.0f));
            let x_4440 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4439.x, x_4439.y, x_4440.z, x_4440.w);
            let x_4442 : vec3<f32> = u_xlat39;
            let x_4444 : vec2<f32> = (vec2<f32>(x_4442.x, x_4442.z) + vec2<f32>(2.0f, 2.0f));
            let x_4445 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4445.x, x_4444.x, x_4445.z, x_4444.y);
            let x_4448 : f32 = u_xlat13.y;
            u_xlat16.z = (x_4448 * 0.08163200318813323975f);
            let x_4451 : vec4<f32> = u_xlat13;
            let x_4453 : vec3<f32> = (vec3<f32>(x_4451.z, x_4451.x, x_4451.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4454 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4453.x, x_4453.y, x_4453.z, x_4454.w);
            let x_4456 : vec4<f32> = u_xlat14;
            let x_4458 : vec2<f32> = (vec2<f32>(x_4456.x, x_4456.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4459 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4458.x, x_4458.y, x_4459.z, x_4459.w);
            let x_4462 : f32 = u_xlat17.y;
            u_xlat16.x = x_4462;
            let x_4464 : vec2<f32> = u_xlat64;
            let x_4467 : vec2<f32> = ((vec2<f32>(x_4464.x, x_4464.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4468 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4468.x, x_4467.x, x_4468.z, x_4467.y);
            let x_4470 : vec2<f32> = u_xlat64;
            let x_4473 : vec2<f32> = ((vec2<f32>(x_4470.x, x_4470.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4474 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4473.x, x_4474.y, x_4473.y, x_4474.w);
            let x_4477 : f32 = u_xlat13.x;
            u_xlat14.y = x_4477;
            let x_4480 : f32 = u_xlat15.y;
            u_xlat14.w = x_4480;
            let x_4482 : vec4<f32> = u_xlat14;
            let x_4483 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4482 + x_4483);
            let x_4485 : vec2<f32> = u_xlat64;
            let x_4488 : vec2<f32> = ((vec2<f32>(x_4485.y, x_4485.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4489 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4489.x, x_4488.x, x_4489.z, x_4488.y);
            let x_4491 : vec2<f32> = u_xlat64;
            let x_4494 : vec2<f32> = ((vec2<f32>(x_4491.y, x_4491.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4495 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4494.x, x_4495.y, x_4494.y, x_4495.w);
            let x_4498 : f32 = u_xlat13.y;
            u_xlat15.y = x_4498;
            let x_4500 : vec4<f32> = u_xlat15;
            let x_4501 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4500 + x_4501);
            let x_4503 : vec4<f32> = u_xlat14;
            let x_4504 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_4503 / x_4504);
            let x_4506 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4506 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4508 : vec4<f32> = u_xlat15;
            let x_4509 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_4508 / x_4509);
            let x_4511 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4511 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4513 : vec4<f32> = u_xlat14;
            let x_4516 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4513.w, x_4513.x, x_4513.y, x_4513.z) * vec4<f32>(x_4516.x, x_4516.x, x_4516.x, x_4516.x));
            let x_4519 : vec4<f32> = u_xlat15;
            let x_4522 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_4519.x, x_4519.w, x_4519.y, x_4519.z) * vec4<f32>(x_4522.y, x_4522.y, x_4522.y, x_4522.y));
            let x_4525 : vec4<f32> = u_xlat14;
            let x_4526 : vec3<f32> = vec3<f32>(x_4525.y, x_4525.z, x_4525.w);
            let x_4527 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4526.x, x_4527.y, x_4526.y, x_4526.z);
            let x_4530 : f32 = u_xlat15.x;
            u_xlat17.y = x_4530;
            let x_4532 : vec4<f32> = u_xlat12;
            let x_4535 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4538 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4532.x, x_4532.y, x_4532.x, x_4532.y) * vec4<f32>(x_4535.x, x_4535.y, x_4535.x, x_4535.y)) + vec4<f32>(x_4538.x, x_4538.y, x_4538.z, x_4538.y));
            let x_4541 : vec4<f32> = u_xlat12;
            let x_4544 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4547 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_4541.x, x_4541.y) * vec2<f32>(x_4544.x, x_4544.y)) + vec2<f32>(x_4547.w, x_4547.y));
            let x_4551 : f32 = u_xlat17.y;
            u_xlat14.y = x_4551;
            let x_4554 : f32 = u_xlat15.z;
            u_xlat17.y = x_4554;
            let x_4556 : vec4<f32> = u_xlat12;
            let x_4559 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4562 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_4556.x, x_4556.y, x_4556.x, x_4556.y) * vec4<f32>(x_4559.x, x_4559.y, x_4559.x, x_4559.y)) + vec4<f32>(x_4562.x, x_4562.y, x_4562.z, x_4562.y));
            let x_4565 : vec4<f32> = u_xlat12;
            let x_4568 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4571 : vec4<f32> = u_xlat17;
            let x_4573 : vec2<f32> = ((vec2<f32>(x_4565.x, x_4565.y) * vec2<f32>(x_4568.x, x_4568.y)) + vec2<f32>(x_4571.w, x_4571.y));
            let x_4574 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_4573.x, x_4573.y, x_4574.z, x_4574.w);
            let x_4577 : f32 = u_xlat17.y;
            u_xlat14.z = x_4577;
            let x_4580 : vec4<f32> = u_xlat12;
            let x_4583 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4586 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4580.x, x_4580.y, x_4580.x, x_4580.y) * vec4<f32>(x_4583.x, x_4583.y, x_4583.x, x_4583.y)) + vec4<f32>(x_4586.x, x_4586.y, x_4586.x, x_4586.z));
            let x_4590 : f32 = u_xlat15.w;
            u_xlat17.y = x_4590;
            let x_4593 : vec4<f32> = u_xlat12;
            let x_4596 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4599 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4593.x, x_4593.y, x_4593.x, x_4593.y) * vec4<f32>(x_4596.x, x_4596.y, x_4596.x, x_4596.y)) + vec4<f32>(x_4599.x, x_4599.y, x_4599.z, x_4599.y));
            let x_4603 : vec4<f32> = u_xlat12;
            let x_4606 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4609 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_4603.x, x_4603.y) * vec2<f32>(x_4606.x, x_4606.y)) + vec2<f32>(x_4609.w, x_4609.y));
            let x_4613 : f32 = u_xlat17.y;
            u_xlat14.w = x_4613;
            let x_4616 : vec4<f32> = u_xlat12;
            let x_4619 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4622 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4616.x, x_4616.y) * vec2<f32>(x_4619.x, x_4619.y)) + vec2<f32>(x_4622.x, x_4622.w));
            let x_4625 : vec4<f32> = u_xlat17;
            let x_4626 : vec3<f32> = vec3<f32>(x_4625.x, x_4625.z, x_4625.w);
            let x_4627 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4626.x, x_4627.y, x_4626.y, x_4626.z);
            let x_4629 : vec4<f32> = u_xlat12;
            let x_4632 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4635 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4629.x, x_4629.y, x_4629.x, x_4629.y) * vec4<f32>(x_4632.x, x_4632.y, x_4632.x, x_4632.y)) + vec4<f32>(x_4635.x, x_4635.y, x_4635.z, x_4635.y));
            let x_4639 : vec4<f32> = u_xlat12;
            let x_4642 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4645 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4639.x, x_4639.y) * vec2<f32>(x_4642.x, x_4642.y)) + vec2<f32>(x_4645.w, x_4645.y));
            let x_4649 : f32 = u_xlat14.x;
            u_xlat15.x = x_4649;
            let x_4651 : vec4<f32> = u_xlat12;
            let x_4654 : vec4<f32> = x_241.x_AdditionalShadowmapSize;
            let x_4657 : vec4<f32> = u_xlat15;
            let x_4659 : vec2<f32> = ((vec2<f32>(x_4651.x, x_4651.y) * vec2<f32>(x_4654.x, x_4654.y)) + vec2<f32>(x_4657.x, x_4657.y));
            let x_4660 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4659.x, x_4659.y, x_4660.z, x_4660.w);
            let x_4663 : vec4<f32> = u_xlat13;
            let x_4665 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4663.x, x_4663.x, x_4663.x, x_4663.x) * x_4665);
            let x_4668 : vec4<f32> = u_xlat13;
            let x_4670 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4668.y, x_4668.y, x_4668.y, x_4668.y) * x_4670);
            let x_4673 : vec4<f32> = u_xlat13;
            let x_4675 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4673.z, x_4673.z, x_4673.z, x_4673.z) * x_4675);
            let x_4677 : vec4<f32> = u_xlat13;
            let x_4679 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4677.w, x_4677.w, x_4677.w, x_4677.w) * x_4679);
            let x_4682 : vec4<f32> = u_xlat18;
            let x_4683 : vec2<f32> = vec2<f32>(x_4682.x, x_4682.y);
            let x_4685 : f32 = u_xlat11.z;
            txVec73 = vec3<f32>(x_4683.x, x_4683.y, x_4685);
            let x_4692 : vec3<f32> = txVec73;
            let x_4694 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4692.xy, x_4692.z);
            u_xlat88 = x_4694;
            let x_4696 : vec4<f32> = u_xlat18;
            let x_4697 : vec2<f32> = vec2<f32>(x_4696.z, x_4696.w);
            let x_4699 : f32 = u_xlat11.z;
            txVec74 = vec3<f32>(x_4697.x, x_4697.y, x_4699);
            let x_4706 : vec3<f32> = txVec74;
            let x_4708 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4706.xy, x_4706.z);
            u_xlat89 = x_4708;
            let x_4709 : f32 = u_xlat89;
            let x_4711 : f32 = u_xlat23.y;
            u_xlat89 = (x_4709 * x_4711);
            let x_4714 : f32 = u_xlat23.x;
            let x_4715 : f32 = u_xlat88;
            let x_4717 : f32 = u_xlat89;
            u_xlat88 = ((x_4714 * x_4715) + x_4717);
            let x_4720 : vec2<f32> = u_xlat64;
            let x_4722 : f32 = u_xlat11.z;
            txVec75 = vec3<f32>(x_4720.x, x_4720.y, x_4722);
            let x_4729 : vec3<f32> = txVec75;
            let x_4731 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4729.xy, x_4729.z);
            u_xlat89 = x_4731;
            let x_4733 : f32 = u_xlat23.z;
            let x_4734 : f32 = u_xlat89;
            let x_4736 : f32 = u_xlat88;
            u_xlat88 = ((x_4733 * x_4734) + x_4736);
            let x_4739 : vec4<f32> = u_xlat21;
            let x_4740 : vec2<f32> = vec2<f32>(x_4739.x, x_4739.y);
            let x_4742 : f32 = u_xlat11.z;
            txVec76 = vec3<f32>(x_4740.x, x_4740.y, x_4742);
            let x_4749 : vec3<f32> = txVec76;
            let x_4751 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4749.xy, x_4749.z);
            u_xlat89 = x_4751;
            let x_4753 : f32 = u_xlat23.w;
            let x_4754 : f32 = u_xlat89;
            let x_4756 : f32 = u_xlat88;
            u_xlat88 = ((x_4753 * x_4754) + x_4756);
            let x_4759 : vec4<f32> = u_xlat19;
            let x_4760 : vec2<f32> = vec2<f32>(x_4759.x, x_4759.y);
            let x_4762 : f32 = u_xlat11.z;
            txVec77 = vec3<f32>(x_4760.x, x_4760.y, x_4762);
            let x_4769 : vec3<f32> = txVec77;
            let x_4771 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4769.xy, x_4769.z);
            u_xlat89 = x_4771;
            let x_4773 : f32 = u_xlat24.x;
            let x_4774 : f32 = u_xlat89;
            let x_4776 : f32 = u_xlat88;
            u_xlat88 = ((x_4773 * x_4774) + x_4776);
            let x_4779 : vec4<f32> = u_xlat19;
            let x_4780 : vec2<f32> = vec2<f32>(x_4779.z, x_4779.w);
            let x_4782 : f32 = u_xlat11.z;
            txVec78 = vec3<f32>(x_4780.x, x_4780.y, x_4782);
            let x_4789 : vec3<f32> = txVec78;
            let x_4791 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4789.xy, x_4789.z);
            u_xlat89 = x_4791;
            let x_4793 : f32 = u_xlat24.y;
            let x_4794 : f32 = u_xlat89;
            let x_4796 : f32 = u_xlat88;
            u_xlat88 = ((x_4793 * x_4794) + x_4796);
            let x_4799 : vec4<f32> = u_xlat20;
            let x_4800 : vec2<f32> = vec2<f32>(x_4799.x, x_4799.y);
            let x_4802 : f32 = u_xlat11.z;
            txVec79 = vec3<f32>(x_4800.x, x_4800.y, x_4802);
            let x_4809 : vec3<f32> = txVec79;
            let x_4811 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4809.xy, x_4809.z);
            u_xlat89 = x_4811;
            let x_4813 : f32 = u_xlat24.z;
            let x_4814 : f32 = u_xlat89;
            let x_4816 : f32 = u_xlat88;
            u_xlat88 = ((x_4813 * x_4814) + x_4816);
            let x_4819 : vec4<f32> = u_xlat21;
            let x_4820 : vec2<f32> = vec2<f32>(x_4819.z, x_4819.w);
            let x_4822 : f32 = u_xlat11.z;
            txVec80 = vec3<f32>(x_4820.x, x_4820.y, x_4822);
            let x_4829 : vec3<f32> = txVec80;
            let x_4831 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4829.xy, x_4829.z);
            u_xlat89 = x_4831;
            let x_4833 : f32 = u_xlat24.w;
            let x_4834 : f32 = u_xlat89;
            let x_4836 : f32 = u_xlat88;
            u_xlat88 = ((x_4833 * x_4834) + x_4836);
            let x_4839 : vec4<f32> = u_xlat22;
            let x_4840 : vec2<f32> = vec2<f32>(x_4839.x, x_4839.y);
            let x_4842 : f32 = u_xlat11.z;
            txVec81 = vec3<f32>(x_4840.x, x_4840.y, x_4842);
            let x_4849 : vec3<f32> = txVec81;
            let x_4851 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4849.xy, x_4849.z);
            u_xlat89 = x_4851;
            let x_4853 : f32 = u_xlat25.x;
            let x_4854 : f32 = u_xlat89;
            let x_4856 : f32 = u_xlat88;
            u_xlat88 = ((x_4853 * x_4854) + x_4856);
            let x_4859 : vec4<f32> = u_xlat22;
            let x_4860 : vec2<f32> = vec2<f32>(x_4859.z, x_4859.w);
            let x_4862 : f32 = u_xlat11.z;
            txVec82 = vec3<f32>(x_4860.x, x_4860.y, x_4862);
            let x_4869 : vec3<f32> = txVec82;
            let x_4871 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4869.xy, x_4869.z);
            u_xlat89 = x_4871;
            let x_4873 : f32 = u_xlat25.y;
            let x_4874 : f32 = u_xlat89;
            let x_4876 : f32 = u_xlat88;
            u_xlat88 = ((x_4873 * x_4874) + x_4876);
            let x_4879 : vec2<f32> = u_xlat40;
            let x_4881 : f32 = u_xlat11.z;
            txVec83 = vec3<f32>(x_4879.x, x_4879.y, x_4881);
            let x_4888 : vec3<f32> = txVec83;
            let x_4890 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4888.xy, x_4888.z);
            u_xlat89 = x_4890;
            let x_4892 : f32 = u_xlat25.z;
            let x_4893 : f32 = u_xlat89;
            let x_4895 : f32 = u_xlat88;
            u_xlat88 = ((x_4892 * x_4893) + x_4895);
            let x_4898 : vec2<f32> = u_xlat72;
            let x_4900 : f32 = u_xlat11.z;
            txVec84 = vec3<f32>(x_4898.x, x_4898.y, x_4900);
            let x_4907 : vec3<f32> = txVec84;
            let x_4909 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4907.xy, x_4907.z);
            u_xlat89 = x_4909;
            let x_4911 : f32 = u_xlat25.w;
            let x_4912 : f32 = u_xlat89;
            let x_4914 : f32 = u_xlat88;
            u_xlat88 = ((x_4911 * x_4912) + x_4914);
            let x_4917 : vec4<f32> = u_xlat17;
            let x_4918 : vec2<f32> = vec2<f32>(x_4917.x, x_4917.y);
            let x_4920 : f32 = u_xlat11.z;
            txVec85 = vec3<f32>(x_4918.x, x_4918.y, x_4920);
            let x_4927 : vec3<f32> = txVec85;
            let x_4929 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4927.xy, x_4927.z);
            u_xlat89 = x_4929;
            let x_4931 : f32 = u_xlat13.x;
            let x_4932 : f32 = u_xlat89;
            let x_4934 : f32 = u_xlat88;
            u_xlat88 = ((x_4931 * x_4932) + x_4934);
            let x_4937 : vec4<f32> = u_xlat17;
            let x_4938 : vec2<f32> = vec2<f32>(x_4937.z, x_4937.w);
            let x_4940 : f32 = u_xlat11.z;
            txVec86 = vec3<f32>(x_4938.x, x_4938.y, x_4940);
            let x_4947 : vec3<f32> = txVec86;
            let x_4949 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4947.xy, x_4947.z);
            u_xlat89 = x_4949;
            let x_4951 : f32 = u_xlat13.y;
            let x_4952 : f32 = u_xlat89;
            let x_4954 : f32 = u_xlat88;
            u_xlat88 = ((x_4951 * x_4952) + x_4954);
            let x_4957 : vec2<f32> = u_xlat67;
            let x_4959 : f32 = u_xlat11.z;
            txVec87 = vec3<f32>(x_4957.x, x_4957.y, x_4959);
            let x_4966 : vec3<f32> = txVec87;
            let x_4968 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4966.xy, x_4966.z);
            u_xlat89 = x_4968;
            let x_4970 : f32 = u_xlat13.z;
            let x_4971 : f32 = u_xlat89;
            let x_4973 : f32 = u_xlat88;
            u_xlat88 = ((x_4970 * x_4971) + x_4973);
            let x_4976 : vec4<f32> = u_xlat12;
            let x_4977 : vec2<f32> = vec2<f32>(x_4976.x, x_4976.y);
            let x_4979 : f32 = u_xlat11.z;
            txVec88 = vec3<f32>(x_4977.x, x_4977.y, x_4979);
            let x_4986 : vec3<f32> = txVec88;
            let x_4988 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4986.xy, x_4986.z);
            u_xlat89 = x_4988;
            let x_4990 : f32 = u_xlat13.w;
            let x_4991 : f32 = u_xlat89;
            let x_4993 : f32 = u_xlat88;
            u_xlat86 = ((x_4990 * x_4991) + x_4993);
          }
        }
      } else {
        let x_4997 : vec4<f32> = u_xlat11;
        let x_4998 : vec2<f32> = vec2<f32>(x_4997.x, x_4997.y);
        let x_5000 : f32 = u_xlat11.z;
        txVec89 = vec3<f32>(x_4998.x, x_4998.y, x_5000);
        let x_5007 : vec3<f32> = txVec89;
        let x_5009 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5007.xy, x_5007.z);
        u_xlat86 = x_5009;
      }
      let x_5010 : i32 = u_xlati81;
      let x_5012 : f32 = x_241.x_AdditionalShadowParams[x_5010].x;
      u_xlat88 = (1.0f + -(x_5012));
      let x_5015 : f32 = u_xlat86;
      let x_5016 : i32 = u_xlati81;
      let x_5018 : f32 = x_241.x_AdditionalShadowParams[x_5016].x;
      let x_5020 : f32 = u_xlat88;
      u_xlat86 = ((x_5015 * x_5018) + x_5020);
      let x_5023 : f32 = u_xlat11.z;
      u_xlatb88 = (0.0f >= x_5023);
      let x_5026 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_5026 >= 1.0f);
      let x_5029 : bool = u_xlatb88;
      let x_5031 : bool = u_xlatb11.x;
      u_xlatb88 = (x_5029 | x_5031);
      let x_5033 : bool = u_xlatb88;
      let x_5034 : f32 = u_xlat86;
      u_xlat86 = select(x_5034, 1.0f, x_5033);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_5037 : f32 = u_xlat86;
    u_xlat88 = (-(x_5037) + 1.0f);
    let x_5041 : f32 = u_xlat2.x;
    let x_5042 : f32 = u_xlat88;
    let x_5044 : f32 = u_xlat86;
    u_xlat86 = ((x_5041 * x_5042) + x_5044);
    let x_5047 : i32 = u_xlati81;
    u_xlati88 = (1i << bitcast<u32>((x_5047 & 31i)));
    let x_5051 : i32 = u_xlati88;
    let x_5054 : f32 = x_3135.x_AdditionalLightsCookieEnableBits;
    u_xlati88 = bitcast<i32>((bitcast<u32>(x_5051) & bitcast<u32>(x_5054)));
    let x_5058 : i32 = u_xlati88;
    if ((x_5058 != 0i)) {
      let x_5062 : i32 = u_xlati81;
      let x_5064 : f32 = x_3135.x_AdditionalLightsLightTypes[x_5062].el;
      u_xlati88 = i32(x_5064);
      let x_5067 : i32 = u_xlati88;
      u_xlati11 = select(1i, 0i, (x_5067 != 0i));
      let x_5071 : i32 = u_xlati81;
      u_xlati37 = (x_5071 << bitcast<u32>(2i));
      let x_5073 : i32 = u_xlati11;
      if ((x_5073 != 0i)) {
        let x_5077 : vec3<f32> = vs_INTERP8;
        let x_5079 : i32 = u_xlati37;
        let x_5082 : i32 = u_xlati37;
        let x_5086 : vec4<f32> = x_3135.x_AdditionalLightsWorldToLights[((x_5079 + 1i) / 4i)][((x_5082 + 1i) % 4i)];
        let x_5088 : vec3<f32> = (vec3<f32>(x_5077.y, x_5077.y, x_5077.y) * vec3<f32>(x_5086.x, x_5086.y, x_5086.w));
        let x_5089 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5088.x, x_5089.y, x_5088.y, x_5088.z);
        let x_5091 : i32 = u_xlati37;
        let x_5093 : i32 = u_xlati37;
        let x_5096 : vec4<f32> = x_3135.x_AdditionalLightsWorldToLights[(x_5091 / 4i)][(x_5093 % 4i)];
        let x_5098 : vec3<f32> = vs_INTERP8;
        let x_5101 : vec4<f32> = u_xlat11;
        let x_5103 : vec3<f32> = ((vec3<f32>(x_5096.x, x_5096.y, x_5096.w) * vec3<f32>(x_5098.x, x_5098.x, x_5098.x)) + vec3<f32>(x_5101.x, x_5101.z, x_5101.w));
        let x_5104 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5103.x, x_5104.y, x_5103.y, x_5103.z);
        let x_5106 : i32 = u_xlati37;
        let x_5109 : i32 = u_xlati37;
        let x_5113 : vec4<f32> = x_3135.x_AdditionalLightsWorldToLights[((x_5106 + 2i) / 4i)][((x_5109 + 2i) % 4i)];
        let x_5115 : vec3<f32> = vs_INTERP8;
        let x_5118 : vec4<f32> = u_xlat11;
        let x_5120 : vec3<f32> = ((vec3<f32>(x_5113.x, x_5113.y, x_5113.w) * vec3<f32>(x_5115.z, x_5115.z, x_5115.z)) + vec3<f32>(x_5118.x, x_5118.z, x_5118.w));
        let x_5121 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5120.x, x_5121.y, x_5120.y, x_5120.z);
        let x_5123 : vec4<f32> = u_xlat11;
        let x_5125 : i32 = u_xlati37;
        let x_5128 : i32 = u_xlati37;
        let x_5132 : vec4<f32> = x_3135.x_AdditionalLightsWorldToLights[((x_5125 + 3i) / 4i)][((x_5128 + 3i) % 4i)];
        let x_5134 : vec3<f32> = (vec3<f32>(x_5123.x, x_5123.z, x_5123.w) + vec3<f32>(x_5132.x, x_5132.y, x_5132.w));
        let x_5135 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5134.x, x_5135.y, x_5134.y, x_5134.z);
        let x_5137 : vec4<f32> = u_xlat11;
        let x_5139 : vec4<f32> = u_xlat11;
        let x_5141 : vec2<f32> = (vec2<f32>(x_5137.x, x_5137.z) / vec2<f32>(x_5139.w, x_5139.w));
        let x_5142 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5141.x, x_5142.y, x_5141.y, x_5142.w);
        let x_5144 : vec4<f32> = u_xlat11;
        let x_5147 : vec2<f32> = ((vec2<f32>(x_5144.x, x_5144.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_5148 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5147.x, x_5148.y, x_5147.y, x_5148.w);
        let x_5150 : vec4<f32> = u_xlat11;
        let x_5154 : vec2<f32> = clamp(vec2<f32>(x_5150.x, x_5150.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_5155 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5154.x, x_5155.y, x_5154.y, x_5155.w);
        let x_5157 : i32 = u_xlati81;
        let x_5159 : vec4<f32> = x_3135.x_AdditionalLightsCookieAtlasUVRects[x_5157];
        let x_5161 : vec4<f32> = u_xlat11;
        let x_5164 : i32 = u_xlati81;
        let x_5166 : vec4<f32> = x_3135.x_AdditionalLightsCookieAtlasUVRects[x_5164];
        let x_5168 : vec2<f32> = ((vec2<f32>(x_5159.x, x_5159.y) * vec2<f32>(x_5161.x, x_5161.z)) + vec2<f32>(x_5166.z, x_5166.w));
        let x_5169 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5168.x, x_5169.y, x_5168.y, x_5169.w);
      } else {
        let x_5172 : i32 = u_xlati88;
        u_xlatb88 = (x_5172 == 1i);
        let x_5174 : bool = u_xlatb88;
        u_xlati88 = select(0i, 1i, x_5174);
        let x_5176 : i32 = u_xlati88;
        if ((x_5176 != 0i)) {
          let x_5180 : vec3<f32> = vs_INTERP8;
          let x_5182 : i32 = u_xlati37;
          let x_5185 : i32 = u_xlati37;
          let x_5189 : vec4<f32> = x_3135.x_AdditionalLightsWorldToLights[((x_5182 + 1i) / 4i)][((x_5185 + 1i) % 4i)];
          let x_5191 : vec2<f32> = (vec2<f32>(x_5180.y, x_5180.y) * vec2<f32>(x_5189.x, x_5189.y));
          let x_5192 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5191.x, x_5191.y, x_5192.z, x_5192.w);
          let x_5194 : i32 = u_xlati37;
          let x_5196 : i32 = u_xlati37;
          let x_5199 : vec4<f32> = x_3135.x_AdditionalLightsWorldToLights[(x_5194 / 4i)][(x_5196 % 4i)];
          let x_5201 : vec3<f32> = vs_INTERP8;
          let x_5204 : vec4<f32> = u_xlat12;
          let x_5206 : vec2<f32> = ((vec2<f32>(x_5199.x, x_5199.y) * vec2<f32>(x_5201.x, x_5201.x)) + vec2<f32>(x_5204.x, x_5204.y));
          let x_5207 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5206.x, x_5206.y, x_5207.z, x_5207.w);
          let x_5209 : i32 = u_xlati37;
          let x_5212 : i32 = u_xlati37;
          let x_5216 : vec4<f32> = x_3135.x_AdditionalLightsWorldToLights[((x_5209 + 2i) / 4i)][((x_5212 + 2i) % 4i)];
          let x_5218 : vec3<f32> = vs_INTERP8;
          let x_5221 : vec4<f32> = u_xlat12;
          let x_5223 : vec2<f32> = ((vec2<f32>(x_5216.x, x_5216.y) * vec2<f32>(x_5218.z, x_5218.z)) + vec2<f32>(x_5221.x, x_5221.y));
          let x_5224 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5223.x, x_5223.y, x_5224.z, x_5224.w);
          let x_5226 : vec4<f32> = u_xlat12;
          let x_5228 : i32 = u_xlati37;
          let x_5231 : i32 = u_xlati37;
          let x_5235 : vec4<f32> = x_3135.x_AdditionalLightsWorldToLights[((x_5228 + 3i) / 4i)][((x_5231 + 3i) % 4i)];
          let x_5237 : vec2<f32> = (vec2<f32>(x_5226.x, x_5226.y) + vec2<f32>(x_5235.x, x_5235.y));
          let x_5238 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5237.x, x_5237.y, x_5238.z, x_5238.w);
          let x_5240 : vec4<f32> = u_xlat12;
          let x_5243 : vec2<f32> = ((vec2<f32>(x_5240.x, x_5240.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5244 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5243.x, x_5243.y, x_5244.z, x_5244.w);
          let x_5246 : vec4<f32> = u_xlat12;
          let x_5248 : vec2<f32> = fract(vec2<f32>(x_5246.x, x_5246.y));
          let x_5249 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5248.x, x_5248.y, x_5249.z, x_5249.w);
          let x_5251 : i32 = u_xlati81;
          let x_5253 : vec4<f32> = x_3135.x_AdditionalLightsCookieAtlasUVRects[x_5251];
          let x_5255 : vec4<f32> = u_xlat12;
          let x_5258 : i32 = u_xlati81;
          let x_5260 : vec4<f32> = x_3135.x_AdditionalLightsCookieAtlasUVRects[x_5258];
          let x_5262 : vec2<f32> = ((vec2<f32>(x_5253.x, x_5253.y) * vec2<f32>(x_5255.x, x_5255.y)) + vec2<f32>(x_5260.z, x_5260.w));
          let x_5263 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5262.x, x_5263.y, x_5262.y, x_5263.w);
        } else {
          let x_5266 : vec3<f32> = vs_INTERP8;
          let x_5268 : i32 = u_xlati37;
          let x_5271 : i32 = u_xlati37;
          let x_5275 : vec4<f32> = x_3135.x_AdditionalLightsWorldToLights[((x_5268 + 1i) / 4i)][((x_5271 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_5266.y, x_5266.y, x_5266.y, x_5266.y) * x_5275);
          let x_5277 : i32 = u_xlati37;
          let x_5279 : i32 = u_xlati37;
          let x_5282 : vec4<f32> = x_3135.x_AdditionalLightsWorldToLights[(x_5277 / 4i)][(x_5279 % 4i)];
          let x_5283 : vec3<f32> = vs_INTERP8;
          let x_5286 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5282 * vec4<f32>(x_5283.x, x_5283.x, x_5283.x, x_5283.x)) + x_5286);
          let x_5288 : i32 = u_xlati37;
          let x_5291 : i32 = u_xlati37;
          let x_5295 : vec4<f32> = x_3135.x_AdditionalLightsWorldToLights[((x_5288 + 2i) / 4i)][((x_5291 + 2i) % 4i)];
          let x_5296 : vec3<f32> = vs_INTERP8;
          let x_5299 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5295 * vec4<f32>(x_5296.z, x_5296.z, x_5296.z, x_5296.z)) + x_5299);
          let x_5301 : vec4<f32> = u_xlat12;
          let x_5302 : i32 = u_xlati37;
          let x_5305 : i32 = u_xlati37;
          let x_5309 : vec4<f32> = x_3135.x_AdditionalLightsWorldToLights[((x_5302 + 3i) / 4i)][((x_5305 + 3i) % 4i)];
          u_xlat12 = (x_5301 + x_5309);
          let x_5311 : vec4<f32> = u_xlat12;
          let x_5313 : vec4<f32> = u_xlat12;
          let x_5315 : vec3<f32> = (vec3<f32>(x_5311.x, x_5311.y, x_5311.z) / vec3<f32>(x_5313.w, x_5313.w, x_5313.w));
          let x_5316 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5315.x, x_5315.y, x_5315.z, x_5316.w);
          let x_5318 : vec4<f32> = u_xlat12;
          let x_5320 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(vec3<f32>(x_5318.x, x_5318.y, x_5318.z), vec3<f32>(x_5320.x, x_5320.y, x_5320.z));
          let x_5323 : f32 = u_xlat88;
          u_xlat88 = inverseSqrt(x_5323);
          let x_5325 : f32 = u_xlat88;
          let x_5327 : vec4<f32> = u_xlat12;
          let x_5329 : vec3<f32> = (vec3<f32>(x_5325, x_5325, x_5325) * vec3<f32>(x_5327.x, x_5327.y, x_5327.z));
          let x_5330 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5329.x, x_5329.y, x_5329.z, x_5330.w);
          let x_5332 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(abs(vec3<f32>(x_5332.x, x_5332.y, x_5332.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_5337 : f32 = u_xlat88;
          u_xlat88 = max(x_5337, 0.00000099999999747524f);
          let x_5340 : f32 = u_xlat88;
          u_xlat88 = (1.0f / x_5340);
          let x_5342 : f32 = u_xlat88;
          let x_5344 : vec4<f32> = u_xlat12;
          let x_5346 : vec3<f32> = (vec3<f32>(x_5342, x_5342, x_5342) * vec3<f32>(x_5344.z, x_5344.x, x_5344.y));
          let x_5347 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_5346.x, x_5346.y, x_5346.z, x_5347.w);
          let x_5350 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_5350);
          let x_5354 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_5354, 0.0f, 1.0f);
          let x_5359 : vec4<f32> = u_xlat13;
          let x_5361 : vec4<bool> = (vec4<f32>(x_5359.y, x_5359.y, x_5359.z, x_5359.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_5362 : vec2<bool> = vec2<bool>(x_5361.x, x_5361.z);
          let x_5363 : vec3<bool> = u_xlatb37;
          u_xlatb37 = vec3<bool>(x_5362.x, x_5363.y, x_5362.y);
          let x_5366 : bool = u_xlatb37.x;
          if (x_5366) {
            let x_5371 : f32 = u_xlat13.x;
            x_5367 = x_5371;
          } else {
            let x_5374 : f32 = u_xlat13.x;
            x_5367 = -(x_5374);
          }
          let x_5376 : f32 = x_5367;
          u_xlat37.x = x_5376;
          let x_5379 : bool = u_xlatb37.z;
          if (x_5379) {
            let x_5384 : f32 = u_xlat13.x;
            x_5380 = x_5384;
          } else {
            let x_5387 : f32 = u_xlat13.x;
            x_5380 = -(x_5387);
          }
          let x_5389 : f32 = x_5380;
          u_xlat37.z = x_5389;
          let x_5391 : vec4<f32> = u_xlat12;
          let x_5393 : f32 = u_xlat88;
          let x_5396 : vec3<f32> = u_xlat37;
          let x_5398 : vec2<f32> = ((vec2<f32>(x_5391.x, x_5391.y) * vec2<f32>(x_5393, x_5393)) + vec2<f32>(x_5396.x, x_5396.z));
          let x_5399 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5398.x, x_5399.y, x_5398.y);
          let x_5401 : vec3<f32> = u_xlat37;
          let x_5404 : vec2<f32> = ((vec2<f32>(x_5401.x, x_5401.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5405 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5404.x, x_5405.y, x_5404.y);
          let x_5407 : vec3<f32> = u_xlat37;
          let x_5411 : vec2<f32> = clamp(vec2<f32>(x_5407.x, x_5407.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_5412 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5411.x, x_5412.y, x_5411.y);
          let x_5414 : i32 = u_xlati81;
          let x_5416 : vec4<f32> = x_3135.x_AdditionalLightsCookieAtlasUVRects[x_5414];
          let x_5418 : vec3<f32> = u_xlat37;
          let x_5421 : i32 = u_xlati81;
          let x_5423 : vec4<f32> = x_3135.x_AdditionalLightsCookieAtlasUVRects[x_5421];
          let x_5425 : vec2<f32> = ((vec2<f32>(x_5416.x, x_5416.y) * vec2<f32>(x_5418.x, x_5418.z)) + vec2<f32>(x_5423.z, x_5423.w));
          let x_5426 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5425.x, x_5426.y, x_5425.y, x_5426.w);
        }
      }
      let x_5433 : vec4<f32> = u_xlat11;
      let x_5435 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_5433.x, x_5433.z), 0.0f);
      u_xlat11 = x_5435;
      let x_5437 : bool = u_xlatb58.y;
      if (x_5437) {
        let x_5442 : f32 = u_xlat11.w;
        x_5438 = x_5442;
      } else {
        let x_5445 : f32 = u_xlat11.x;
        x_5438 = x_5445;
      }
      let x_5446 : f32 = x_5438;
      u_xlat88 = x_5446;
      let x_5448 : bool = u_xlatb58.x;
      if (x_5448) {
        let x_5452 : vec4<f32> = u_xlat11;
        x_5449 = vec3<f32>(x_5452.x, x_5452.y, x_5452.z);
      } else {
        let x_5455 : f32 = u_xlat88;
        x_5449 = vec3<f32>(x_5455, x_5455, x_5455);
      }
      let x_5457 : vec3<f32> = x_5449;
      let x_5458 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_5457.x, x_5457.y, x_5457.z, x_5458.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_5464 : vec4<f32> = u_xlat11;
    let x_5466 : i32 = u_xlati81;
    let x_5468 : vec4<f32> = x_3606.x_AdditionalLightsColor[x_5466];
    let x_5470 : vec3<f32> = (vec3<f32>(x_5464.x, x_5464.y, x_5464.z) * vec3<f32>(x_5468.x, x_5468.y, x_5468.z));
    let x_5471 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5470.x, x_5470.y, x_5470.z, x_5471.w);
    let x_5473 : f32 = u_xlat83;
    let x_5474 : f32 = u_xlat86;
    u_xlat81 = (x_5473 * x_5474);
    let x_5476 : vec3<f32> = u_xlat26;
    let x_5477 : vec4<f32> = u_xlat10;
    u_xlat83 = dot(x_5476, vec3<f32>(x_5477.x, x_5477.y, x_5477.z));
    let x_5480 : f32 = u_xlat83;
    u_xlat83 = clamp(x_5480, 0.0f, 1.0f);
    let x_5482 : f32 = u_xlat81;
    let x_5483 : f32 = u_xlat83;
    u_xlat81 = (x_5482 * x_5483);
    let x_5485 : f32 = u_xlat81;
    let x_5487 : vec4<f32> = u_xlat11;
    let x_5489 : vec3<f32> = (vec3<f32>(x_5485, x_5485, x_5485) * vec3<f32>(x_5487.x, x_5487.y, x_5487.z));
    let x_5490 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5489.x, x_5489.y, x_5489.z, x_5490.w);
    let x_5492 : vec3<f32> = u_xlat35;
    let x_5493 : f32 = u_xlat85;
    let x_5496 : vec4<f32> = u_xlat3;
    u_xlat35 = ((x_5492 * vec3<f32>(x_5493, x_5493, x_5493)) + vec3<f32>(x_5496.x, x_5496.y, x_5496.z));
    let x_5499 : vec3<f32> = u_xlat35;
    let x_5500 : vec3<f32> = u_xlat35;
    u_xlat81 = dot(x_5499, x_5500);
    let x_5502 : f32 = u_xlat81;
    u_xlat81 = max(x_5502, 1.17549435e-38f);
    let x_5504 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_5504);
    let x_5506 : f32 = u_xlat81;
    let x_5508 : vec3<f32> = u_xlat35;
    u_xlat35 = (vec3<f32>(x_5506, x_5506, x_5506) * x_5508);
    let x_5510 : vec3<f32> = u_xlat26;
    let x_5511 : vec3<f32> = u_xlat35;
    u_xlat81 = dot(x_5510, x_5511);
    let x_5513 : f32 = u_xlat81;
    u_xlat81 = clamp(x_5513, 0.0f, 1.0f);
    let x_5515 : vec4<f32> = u_xlat10;
    let x_5517 : vec3<f32> = u_xlat35;
    u_xlat83 = dot(vec3<f32>(x_5515.x, x_5515.y, x_5515.z), x_5517);
    let x_5519 : f32 = u_xlat83;
    u_xlat83 = clamp(x_5519, 0.0f, 1.0f);
    let x_5521 : f32 = u_xlat81;
    let x_5522 : f32 = u_xlat81;
    u_xlat81 = (x_5521 * x_5522);
    let x_5524 : f32 = u_xlat81;
    let x_5526 : f32 = u_xlat9.x;
    u_xlat81 = ((x_5524 * x_5526) + 1.00001001358032226562f);
    let x_5529 : f32 = u_xlat83;
    let x_5530 : f32 = u_xlat83;
    u_xlat83 = (x_5529 * x_5530);
    let x_5532 : f32 = u_xlat81;
    let x_5533 : f32 = u_xlat81;
    u_xlat81 = (x_5532 * x_5533);
    let x_5535 : f32 = u_xlat83;
    u_xlat83 = max(x_5535, 0.10000000149011611938f);
    let x_5537 : f32 = u_xlat81;
    let x_5538 : f32 = u_xlat83;
    u_xlat81 = (x_5537 * x_5538);
    let x_5541 : f32 = u_xlat6.x;
    let x_5542 : f32 = u_xlat81;
    u_xlat81 = (x_5541 * x_5542);
    let x_5544 : f32 = u_xlat82;
    let x_5545 : f32 = u_xlat81;
    u_xlat81 = (x_5544 / x_5545);
    let x_5547 : f32 = u_xlat81;
    let x_5550 : vec3<f32> = u_xlat5;
    u_xlat35 = ((vec3<f32>(x_5547, x_5547, x_5547) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5550);
    let x_5552 : vec3<f32> = u_xlat35;
    let x_5553 : vec4<f32> = u_xlat11;
    let x_5556 : vec4<f32> = u_xlat8;
    let x_5558 : vec3<f32> = ((x_5552 * vec3<f32>(x_5553.x, x_5553.y, x_5553.z)) + vec3<f32>(x_5556.x, x_5556.y, x_5556.z));
    let x_5559 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5558.x, x_5558.y, x_5558.z, x_5559.w);

    continuing {
      let x_5561 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5561 + bitcast<u32>(1i));
    }
  }
  let x_5563 : vec4<f32> = u_xlat4;
  let x_5565 : vec3<f32> = u_xlat32;
  let x_5568 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_5563.x, x_5563.y, x_5563.z) * vec3<f32>(x_5565.x, x_5565.x, x_5565.x)) + vec3<f32>(x_5568.x, x_5568.y, x_5568.z));
  let x_5571 : vec4<f32> = u_xlat8;
  let x_5573 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_5571.x, x_5571.y, x_5571.z) + x_5573);
  let x_5575 : vec4<f32> = vs_INTERP6;
  let x_5577 : vec3<f32> = u_xlat1;
  let x_5579 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_5575.w, x_5575.w, x_5575.w) * x_5577) + x_5579);
  let x_5582 : f32 = u_xlat28;
  let x_5583 : f32 = u_xlat28;
  u_xlat78 = (x_5582 * -(x_5583));
  let x_5586 : f32 = u_xlat78;
  u_xlat78 = exp2(x_5586);
  let x_5588 : vec3<f32> = u_xlat0;
  let x_5590 : vec4<f32> = x_126.unity_FogColor;
  u_xlat0 = (x_5588 + -(vec3<f32>(x_5590.x, x_5590.y, x_5590.z)));
  let x_5596 : f32 = u_xlat78;
  let x_5598 : vec3<f32> = u_xlat0;
  let x_5601 : vec4<f32> = x_126.unity_FogColor;
  let x_5603 : vec3<f32> = ((vec3<f32>(x_5596, x_5596, x_5596) * x_5598) + vec3<f32>(x_5601.x, x_5601.y, x_5601.z));
  let x_5604 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5603.x, x_5603.y, x_5603.z, x_5604.w);
  let x_5606 : bool = u_xlatb54;
  let x_5607 : f32 = u_xlat79;
  SV_Target0.w = select(1.0f, x_5607, x_5606);
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


