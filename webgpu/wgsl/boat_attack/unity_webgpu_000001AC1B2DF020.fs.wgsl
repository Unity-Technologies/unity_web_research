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

alias Arr_4 = array<mat4x4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_4,
}

alias Arr_5 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_5,
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
  x_AdditionalLightsWorldToLights : Arr_4,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_3,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_INTERP9 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(7) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_53 : PGlobals;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_65 : UnityPerMaterial;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(8) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_D9BFD5F1 : sampler;

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

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlat33 : vec3<f32>;

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

@group(1) @binding(2) var<uniform> x_1749 : UnityPerDraw;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat84 : f32;

var<private> u_xlatb33 : vec2<bool>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat35 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat30 : vec3<f32>;

var<private> u_xlat56 : f32;

var<private> u_xlatb30 : vec2<bool>;

@group(1) @binding(4) var<uniform> x_3247 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu4 : u32;

var<private> u_xlati83 : i32;

var<private> u_xlati4 : i32;

@group(1) @binding(1) var<uniform> x_3691 : AdditionalLights;

var<private> u_xlat83 : f32;

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
  var x_3329 : f32;
  var x_3340 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3827 : f32;
  var x_3837 : f32;
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
  var x_5419 : f32;
  var x_5432 : f32;
  var x_5490 : f32;
  var x_5501 : vec3<f32>;
  var x_5674 : f32;
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
        let x_1172 : vec2<f32> = ((vec2<f32>(x_1164.x, x_1164.y) * vec2<f32>(x_1167.x, x_1167.y)) + vec2<f32>(x_1170.w, x_1170.y));
        let x_1173 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1172.x, x_1172.y, x_1173.z);
        let x_1176 : f32 = u_xlat10.y;
        u_xlat7.w = x_1176;
        let x_1179 : vec4<f32> = u_xlat5;
        let x_1182 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_1185 : vec4<f32> = u_xlat7;
        u_xlat65 = ((vec2<f32>(x_1179.x, x_1179.y) * vec2<f32>(x_1182.x, x_1182.y)) + vec2<f32>(x_1185.x, x_1185.w));
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
        u_xlat60 = ((vec2<f32>(x_1202.x, x_1202.y) * vec2<f32>(x_1205.x, x_1205.y)) + vec2<f32>(x_1208.w, x_1208.y));
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
        u_xlat82 = x_1257;
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
        let x_1281 : f32 = u_xlat82;
        let x_1284 : f32 = u_xlat7.x;
        u_xlat82 = ((x_1280 * x_1281) + x_1284);
        let x_1287 : vec2<f32> = u_xlat57;
        let x_1289 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1287.x, x_1287.y, x_1289);
        let x_1296 : vec3<f32> = txVec15;
        let x_1298 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1296.xy, x_1296.z);
        u_xlat57.x = x_1298;
        let x_1301 : f32 = u_xlat16.z;
        let x_1303 : f32 = u_xlat57.x;
        let x_1305 : f32 = u_xlat82;
        u_xlat82 = ((x_1301 * x_1303) + x_1305);
        let x_1308 : vec4<f32> = u_xlat14;
        let x_1309 : vec2<f32> = vec2<f32>(x_1308.x, x_1308.y);
        let x_1311 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1309.x, x_1309.y, x_1311);
        let x_1318 : vec3<f32> = txVec16;
        let x_1320 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1318.xy, x_1318.z);
        u_xlat57.x = x_1320;
        let x_1323 : f32 = u_xlat16.w;
        let x_1325 : f32 = u_xlat57.x;
        let x_1327 : f32 = u_xlat82;
        u_xlat82 = ((x_1323 * x_1325) + x_1327);
        let x_1330 : vec4<f32> = u_xlat12;
        let x_1331 : vec2<f32> = vec2<f32>(x_1330.x, x_1330.y);
        let x_1333 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1331.x, x_1331.y, x_1333);
        let x_1340 : vec3<f32> = txVec17;
        let x_1342 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1340.xy, x_1340.z);
        u_xlat57.x = x_1342;
        let x_1345 : f32 = u_xlat17.x;
        let x_1347 : f32 = u_xlat57.x;
        let x_1349 : f32 = u_xlat82;
        u_xlat82 = ((x_1345 * x_1347) + x_1349);
        let x_1352 : vec4<f32> = u_xlat12;
        let x_1353 : vec2<f32> = vec2<f32>(x_1352.z, x_1352.w);
        let x_1355 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1353.x, x_1353.y, x_1355);
        let x_1362 : vec3<f32> = txVec18;
        let x_1364 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1362.xy, x_1362.z);
        u_xlat57.x = x_1364;
        let x_1367 : f32 = u_xlat17.y;
        let x_1369 : f32 = u_xlat57.x;
        let x_1371 : f32 = u_xlat82;
        u_xlat82 = ((x_1367 * x_1369) + x_1371);
        let x_1374 : vec4<f32> = u_xlat13;
        let x_1375 : vec2<f32> = vec2<f32>(x_1374.x, x_1374.y);
        let x_1377 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1375.x, x_1375.y, x_1377);
        let x_1384 : vec3<f32> = txVec19;
        let x_1386 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1384.xy, x_1384.z);
        u_xlat57.x = x_1386;
        let x_1389 : f32 = u_xlat17.z;
        let x_1391 : f32 = u_xlat57.x;
        let x_1393 : f32 = u_xlat82;
        u_xlat82 = ((x_1389 * x_1391) + x_1393);
        let x_1396 : vec4<f32> = u_xlat14;
        let x_1397 : vec2<f32> = vec2<f32>(x_1396.z, x_1396.w);
        let x_1399 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1397.x, x_1397.y, x_1399);
        let x_1406 : vec3<f32> = txVec20;
        let x_1408 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1406.xy, x_1406.z);
        u_xlat57.x = x_1408;
        let x_1411 : f32 = u_xlat17.w;
        let x_1413 : f32 = u_xlat57.x;
        let x_1415 : f32 = u_xlat82;
        u_xlat82 = ((x_1411 * x_1413) + x_1415);
        let x_1418 : vec4<f32> = u_xlat15;
        let x_1419 : vec2<f32> = vec2<f32>(x_1418.x, x_1418.y);
        let x_1421 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1419.x, x_1419.y, x_1421);
        let x_1428 : vec3<f32> = txVec21;
        let x_1430 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1428.xy, x_1428.z);
        u_xlat57.x = x_1430;
        let x_1433 : f32 = u_xlat18.x;
        let x_1435 : f32 = u_xlat57.x;
        let x_1437 : f32 = u_xlat82;
        u_xlat82 = ((x_1433 * x_1435) + x_1437);
        let x_1440 : vec4<f32> = u_xlat15;
        let x_1441 : vec2<f32> = vec2<f32>(x_1440.z, x_1440.w);
        let x_1443 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1441.x, x_1441.y, x_1443);
        let x_1450 : vec3<f32> = txVec22;
        let x_1452 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1450.xy, x_1450.z);
        u_xlat57.x = x_1452;
        let x_1455 : f32 = u_xlat18.y;
        let x_1457 : f32 = u_xlat57.x;
        let x_1459 : f32 = u_xlat82;
        u_xlat82 = ((x_1455 * x_1457) + x_1459);
        let x_1462 : vec3<f32> = u_xlat33;
        let x_1463 : vec2<f32> = vec2<f32>(x_1462.x, x_1462.y);
        let x_1465 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1463.x, x_1463.y, x_1465);
        let x_1472 : vec3<f32> = txVec23;
        let x_1474 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1472.xy, x_1472.z);
        u_xlat57.x = x_1474;
        let x_1477 : f32 = u_xlat18.z;
        let x_1479 : f32 = u_xlat57.x;
        let x_1481 : f32 = u_xlat82;
        u_xlat82 = ((x_1477 * x_1479) + x_1481);
        let x_1484 : vec2<f32> = u_xlat65;
        let x_1486 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1484.x, x_1484.y, x_1486);
        let x_1493 : vec3<f32> = txVec24;
        let x_1495 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1493.xy, x_1493.z);
        u_xlat57.x = x_1495;
        let x_1498 : f32 = u_xlat18.w;
        let x_1500 : f32 = u_xlat57.x;
        let x_1502 : f32 = u_xlat82;
        u_xlat82 = ((x_1498 * x_1500) + x_1502);
        let x_1505 : vec4<f32> = u_xlat10;
        let x_1506 : vec2<f32> = vec2<f32>(x_1505.x, x_1505.y);
        let x_1508 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1506.x, x_1506.y, x_1508);
        let x_1515 : vec3<f32> = txVec25;
        let x_1517 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1515.xy, x_1515.z);
        u_xlat57.x = x_1517;
        let x_1520 : f32 = u_xlat6.x;
        let x_1522 : f32 = u_xlat57.x;
        let x_1524 : f32 = u_xlat82;
        u_xlat82 = ((x_1520 * x_1522) + x_1524);
        let x_1527 : vec4<f32> = u_xlat10;
        let x_1528 : vec2<f32> = vec2<f32>(x_1527.z, x_1527.w);
        let x_1530 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1528.x, x_1528.y, x_1530);
        let x_1537 : vec3<f32> = txVec26;
        let x_1539 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1537.xy, x_1537.z);
        u_xlat57.x = x_1539;
        let x_1542 : f32 = u_xlat6.y;
        let x_1544 : f32 = u_xlat57.x;
        let x_1546 : f32 = u_xlat82;
        u_xlat82 = ((x_1542 * x_1544) + x_1546);
        let x_1549 : vec2<f32> = u_xlat60;
        let x_1551 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1549.x, x_1549.y, x_1551);
        let x_1558 : vec3<f32> = txVec27;
        let x_1560 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1558.xy, x_1558.z);
        u_xlat57.x = x_1560;
        let x_1563 : f32 = u_xlat6.z;
        let x_1565 : f32 = u_xlat57.x;
        let x_1567 : f32 = u_xlat82;
        u_xlat82 = ((x_1563 * x_1565) + x_1567);
        let x_1570 : vec4<f32> = u_xlat5;
        let x_1571 : vec2<f32> = vec2<f32>(x_1570.x, x_1570.y);
        let x_1573 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1571.x, x_1571.y, x_1573);
        let x_1580 : vec3<f32> = txVec28;
        let x_1582 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1580.xy, x_1580.z);
        u_xlat5.x = x_1582;
        let x_1585 : f32 = u_xlat6.w;
        let x_1587 : f32 = u_xlat5.x;
        let x_1589 : f32 = u_xlat82;
        u_xlat80 = ((x_1585 * x_1587) + x_1589);
      }
    }
  } else {
    let x_1593 : vec4<f32> = u_xlat4;
    let x_1594 : vec2<f32> = vec2<f32>(x_1593.x, x_1593.y);
    let x_1596 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1594.x, x_1594.y, x_1596);
    let x_1603 : vec3<f32> = txVec29;
    let x_1605 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1603.xy, x_1603.z);
    u_xlat80 = x_1605;
  }
  let x_1607 : f32 = x_130.x_MainLightShadowParams.x;
  u_xlat82 = (-(x_1607) + 1.0f);
  let x_1610 : f32 = u_xlat80;
  let x_1612 : f32 = x_130.x_MainLightShadowParams.x;
  let x_1614 : f32 = u_xlat82;
  u_xlat80 = ((x_1610 * x_1612) + x_1614);
  let x_1618 : f32 = u_xlat4.z;
  u_xlatb5 = (0.0f >= x_1618);
  let x_1622 : f32 = u_xlat4.z;
  u_xlatb31 = (x_1622 >= 1.0f);
  let x_1624 : bool = u_xlatb31;
  let x_1625 : bool = u_xlatb5;
  u_xlatb5 = (x_1624 | x_1625);
  let x_1627 : bool = u_xlatb5;
  let x_1628 : f32 = u_xlat80;
  u_xlat80 = select(x_1628, 1.0f, x_1627);
  let x_1630 : vec3<f32> = u_xlat0;
  let x_1632 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat0.x = dot(x_1630, -(vec3<f32>(x_1632.x, x_1632.y, x_1632.z)));
  let x_1638 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1638, 0.0f, 1.0f);
  let x_1641 : f32 = u_xlat80;
  let x_1644 : vec4<f32> = x_53.x_MainLightColor;
  u_xlat31 = (vec3<f32>(x_1641, x_1641, x_1641) * vec3<f32>(x_1644.x, x_1644.y, x_1644.z));
  let x_1647 : vec3<f32> = u_xlat0;
  let x_1649 : vec3<f32> = u_xlat31;
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
  u_xlat27.x = (x_1672 + -0.40000000596046447754f);
  let x_1678 : f32 = u_xlat1.w;
  u_xlat53 = dpdxCoarse(x_1678);
  let x_1682 : f32 = u_xlat1.w;
  u_xlat79 = dpdyCoarse(x_1682);
  let x_1684 : f32 = u_xlat79;
  let x_1686 : f32 = u_xlat53;
  u_xlat53 = (abs(x_1684) + abs(x_1686));
  let x_1689 : f32 = u_xlat53;
  u_xlat53 = max(x_1689, 0.00009999999747378752f);
  let x_1693 : f32 = u_xlat27.x;
  let x_1694 : f32 = u_xlat53;
  u_xlat27.x = (x_1693 / x_1694);
  let x_1698 : f32 = u_xlat27.x;
  u_xlat27.x = (x_1698 + 0.5f);
  let x_1702 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_1702, 0.0f, 1.0f);
  let x_1707 : f32 = x_53.x_AlphaToMaskAvailable;
  u_xlatb53 = !((x_1707 == 0.0f));
  let x_1709 : bool = u_xlatb53;
  if (x_1709) {
    let x_1714 : f32 = u_xlat27.x;
    x_1710 = x_1714;
  } else {
    let x_1717 : f32 = u_xlat1.x;
    x_1710 = x_1717;
  }
  let x_1718 : f32 = x_1710;
  u_xlat1.x = x_1718;
  let x_1721 : f32 = u_xlat1.x;
  u_xlat27.x = (x_1721 + -0.00009999999747378752f);
  let x_1729 : f32 = u_xlat27.x;
  u_xlatb27.x = (x_1729 < 0.0f);
  let x_1733 : bool = u_xlatb27.x;
  if (((select(0i, 1i, x_1733) * -1i) != 0i)) {
    discard;
  }
  let x_1743 : f32 = vs_INTERP4.w;
  u_xlatb27.x = (0.0f < x_1743);
  let x_1751 : f32 = x_1749.unity_WorldTransformParams.w;
  u_xlatb27.z = (x_1751 >= 0.0f);
  let x_1755 : bool = u_xlatb27.x;
  u_xlat27.x = select(-1.0f, 1.0f, x_1755);
  let x_1759 : bool = u_xlatb27.z;
  u_xlat27.z = select(-1.0f, 1.0f, x_1759);
  let x_1763 : f32 = u_xlat27.z;
  let x_1765 : f32 = u_xlat27.x;
  u_xlat27.x = (x_1763 * x_1765);
  let x_1768 : vec4<f32> = vs_INTERP4;
  let x_1770 : vec3<f32> = vs_INTERP9;
  u_xlat31 = (vec3<f32>(x_1768.y, x_1768.z, x_1768.x) * vec3<f32>(x_1770.z, x_1770.x, x_1770.y));
  let x_1773 : vec3<f32> = vs_INTERP9;
  let x_1775 : vec4<f32> = vs_INTERP4;
  let x_1778 : vec3<f32> = u_xlat31;
  u_xlat31 = ((vec3<f32>(x_1773.y, x_1773.z, x_1773.x) * vec3<f32>(x_1775.z, x_1775.x, x_1775.y)) + -(x_1778));
  let x_1781 : vec3<f32> = u_xlat27;
  let x_1783 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_1781.x, x_1781.x, x_1781.x) * x_1783);
  let x_1785 : vec3<f32> = u_xlat29;
  let x_1787 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_1785.y, x_1785.y, x_1785.y) * x_1787);
  let x_1789 : vec3<f32> = u_xlat29;
  let x_1791 : vec4<f32> = vs_INTERP4;
  let x_1794 : vec3<f32> = u_xlat31;
  u_xlat31 = ((vec3<f32>(x_1789.x, x_1789.x, x_1789.x) * vec3<f32>(x_1791.x, x_1791.y, x_1791.z)) + x_1794);
  let x_1796 : vec3<f32> = u_xlat29;
  let x_1798 : vec3<f32> = vs_INTERP9;
  let x_1800 : vec3<f32> = u_xlat31;
  u_xlat29 = ((vec3<f32>(x_1796.z, x_1796.z, x_1796.z) * x_1798) + x_1800);
  let x_1802 : vec3<f32> = u_xlat29;
  let x_1803 : vec3<f32> = u_xlat29;
  u_xlat27.x = dot(x_1802, x_1803);
  let x_1807 : f32 = u_xlat27.x;
  u_xlat27.x = inverseSqrt(x_1807);
  let x_1810 : vec3<f32> = u_xlat27;
  let x_1812 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_1810.x, x_1810.x, x_1810.x) * x_1812);
  let x_1815 : f32 = x_53.unity_OrthoParams.w;
  u_xlatb27.x = (x_1815 == 0.0f);
  let x_1818 : vec3<f32> = vs_INTERP8;
  let x_1822 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  u_xlat31 = (-(x_1818) + x_1822);
  let x_1824 : vec3<f32> = u_xlat31;
  let x_1825 : vec3<f32> = u_xlat31;
  u_xlat79 = dot(x_1824, x_1825);
  let x_1827 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_1827);
  let x_1829 : f32 = u_xlat79;
  let x_1831 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_1829, x_1829, x_1829) * x_1831);
  let x_1834 : bool = u_xlatb27.x;
  if (x_1834) {
    let x_1839 : f32 = u_xlat31.x;
    x_1835 = x_1839;
  } else {
    let x_1842 : f32 = x_53.unity_MatrixV[0i].z;
    x_1835 = x_1842;
  }
  let x_1843 : f32 = x_1835;
  u_xlat6.x = x_1843;
  let x_1846 : bool = u_xlatb27.x;
  if (x_1846) {
    let x_1851 : f32 = u_xlat31.y;
    x_1847 = x_1851;
  } else {
    let x_1854 : f32 = x_53.unity_MatrixV[1i].z;
    x_1847 = x_1854;
  }
  let x_1855 : f32 = x_1847;
  u_xlat6.y = x_1855;
  let x_1858 : bool = u_xlatb27.x;
  if (x_1858) {
    let x_1863 : f32 = u_xlat31.z;
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
  u_xlat31 = vec3<f32>(x_1887.x, x_1887.y, x_1887.z);
  let x_1889 : vec4<f32> = u_xlat7;
  let x_1892 : vec3<f32> = (vec3<f32>(x_1889.x, x_1889.y, x_1889.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1893 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1892.x, x_1892.y, x_1892.z, x_1893.w);
  let x_1895 : vec3<f32> = u_xlat29;
  let x_1896 : vec4<f32> = u_xlat7;
  u_xlat27.x = dot(x_1895, vec3<f32>(x_1896.x, x_1896.y, x_1896.z));
  let x_1901 : f32 = u_xlat27.x;
  u_xlat27.x = (x_1901 + 0.5f);
  let x_1904 : vec3<f32> = u_xlat27;
  let x_1906 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_1904.x, x_1904.x, x_1904.x) * x_1906);
  let x_1909 : f32 = u_xlat7.w;
  u_xlat27.x = max(x_1909, 0.00009999999747378752f);
  let x_1912 : vec3<f32> = u_xlat31;
  let x_1913 : vec3<f32> = u_xlat27;
  u_xlat31 = (x_1912 / vec3<f32>(x_1913.x, x_1913.x, x_1913.x));
  let x_1917 : f32 = u_xlat3.x;
  u_xlat3.x = x_1917;
  let x_1920 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1920, 0.0f, 1.0f);
  let x_1924 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_1924, 1.0f);
  let x_1927 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1927 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_1932 : f32 = u_xlat3.x;
  u_xlat27.x = (-(x_1932) + 1.0f);
  let x_1937 : f32 = u_xlat27.x;
  let x_1939 : f32 = u_xlat27.x;
  u_xlat79 = (x_1937 * x_1939);
  let x_1941 : f32 = u_xlat79;
  u_xlat79 = max(x_1941, 0.0078125f);
  let x_1944 : f32 = u_xlat79;
  let x_1945 : f32 = u_xlat79;
  u_xlat80 = (x_1944 * x_1945);
  let x_1948 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1948 + 0.04000002145767211914f);
  let x_1953 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_1953, 1.0f);
  let x_1957 : f32 = u_xlat79;
  u_xlat84 = ((x_1957 * 4.0f) + 2.0f);
  let x_1961 : f32 = vs_INTERP6.w;
  u_xlat7.x = min(x_1961, 1.0f);
  let x_1964 : bool = u_xlatb78;
  if (x_1964) {
    let x_1968 : f32 = x_130.x_MainLightShadowParams.y;
    u_xlatb78 = (x_1968 == 1.0f);
    let x_1970 : bool = u_xlatb78;
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
      u_xlat78 = dot(x_2043, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_2050 : f32 = x_130.x_MainLightShadowParams.y;
      u_xlatb33.x = (x_2050 == 2.0f);
      let x_2054 : bool = u_xlatb33.x;
      if (x_2054) {
        let x_2057 : vec4<f32> = u_xlat4;
        let x_2060 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2063 : vec2<f32> = ((vec2<f32>(x_2057.x, x_2057.y) * vec2<f32>(x_2060.z, x_2060.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2064 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2063.x, x_2063.y, x_2064.z);
        let x_2066 : vec3<f32> = u_xlat33;
        let x_2068 : vec2<f32> = floor(vec2<f32>(x_2066.x, x_2066.y));
        let x_2069 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2068.x, x_2068.y, x_2069.z);
        let x_2071 : vec4<f32> = u_xlat4;
        let x_2074 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2077 : vec3<f32> = u_xlat33;
        let x_2080 : vec2<f32> = ((vec2<f32>(x_2071.x, x_2071.y) * vec2<f32>(x_2074.z, x_2074.w)) + -(vec2<f32>(x_2077.x, x_2077.y)));
        let x_2081 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2080.x, x_2080.y, x_2081.z, x_2081.w);
        let x_2083 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2083.x, x_2083.x, x_2083.y, x_2083.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2086 : vec4<f32> = u_xlat9;
        let x_2088 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2086.x, x_2086.x, x_2086.z, x_2086.z) * vec4<f32>(x_2088.x, x_2088.x, x_2088.z, x_2088.z));
        let x_2091 : vec4<f32> = u_xlat10;
        u_xlat60 = (vec2<f32>(x_2091.y, x_2091.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_2094 : vec4<f32> = u_xlat10;
        let x_2097 : vec4<f32> = u_xlat8;
        let x_2100 : vec2<f32> = ((vec2<f32>(x_2094.x, x_2094.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2097.x, x_2097.y)));
        let x_2101 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2100.x, x_2101.y, x_2100.y, x_2101.w);
        let x_2103 : vec4<f32> = u_xlat8;
        let x_2106 : vec2<f32> = (-(vec2<f32>(x_2103.x, x_2103.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2107 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2106.x, x_2106.y, x_2107.z, x_2107.w);
        let x_2110 : vec4<f32> = u_xlat8;
        u_xlat62 = min(vec2<f32>(x_2110.x, x_2110.y), vec2<f32>(0.0f, 0.0f));
        let x_2113 : vec2<f32> = u_xlat62;
        let x_2115 : vec2<f32> = u_xlat62;
        let x_2117 : vec4<f32> = u_xlat10;
        u_xlat62 = ((-(x_2113) * x_2115) + vec2<f32>(x_2117.x, x_2117.y));
        let x_2120 : vec4<f32> = u_xlat8;
        let x_2122 : vec2<f32> = max(vec2<f32>(x_2120.x, x_2120.y), vec2<f32>(0.0f, 0.0f));
        let x_2123 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2122.x, x_2122.y, x_2123.z, x_2123.w);
        let x_2125 : vec4<f32> = u_xlat8;
        let x_2128 : vec4<f32> = u_xlat8;
        let x_2131 : vec4<f32> = u_xlat9;
        let x_2133 : vec2<f32> = ((-(vec2<f32>(x_2125.x, x_2125.y)) * vec2<f32>(x_2128.x, x_2128.y)) + vec2<f32>(x_2131.y, x_2131.w));
        let x_2134 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2133.x, x_2133.y, x_2134.z, x_2134.w);
        let x_2136 : vec2<f32> = u_xlat62;
        u_xlat62 = (x_2136 + vec2<f32>(1.0f, 1.0f));
        let x_2138 : vec4<f32> = u_xlat8;
        let x_2140 : vec2<f32> = (vec2<f32>(x_2138.x, x_2138.y) + vec2<f32>(1.0f, 1.0f));
        let x_2141 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2140.x, x_2140.y, x_2141.z, x_2141.w);
        let x_2143 : vec4<f32> = u_xlat9;
        let x_2145 : vec2<f32> = (vec2<f32>(x_2143.x, x_2143.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2146 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2145.x, x_2145.y, x_2146.z, x_2146.w);
        let x_2148 : vec4<f32> = u_xlat10;
        let x_2150 : vec2<f32> = (vec2<f32>(x_2148.x, x_2148.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2151 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2150.x, x_2150.y, x_2151.z, x_2151.w);
        let x_2153 : vec2<f32> = u_xlat62;
        let x_2154 : vec2<f32> = (x_2153 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2155 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2154.x, x_2154.y, x_2155.z, x_2155.w);
        let x_2157 : vec4<f32> = u_xlat8;
        let x_2159 : vec2<f32> = (vec2<f32>(x_2157.x, x_2157.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2160 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2159.x, x_2159.y, x_2160.z, x_2160.w);
        let x_2162 : vec4<f32> = u_xlat9;
        let x_2164 : vec2<f32> = (vec2<f32>(x_2162.y, x_2162.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2165 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2164.x, x_2164.y, x_2165.z, x_2165.w);
        let x_2168 : f32 = u_xlat10.x;
        u_xlat11.z = x_2168;
        let x_2171 : f32 = u_xlat8.x;
        u_xlat11.w = x_2171;
        let x_2174 : f32 = u_xlat13.x;
        u_xlat12.z = x_2174;
        let x_2177 : f32 = u_xlat60.x;
        u_xlat12.w = x_2177;
        let x_2179 : vec4<f32> = u_xlat11;
        let x_2181 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_2179.z, x_2179.w, x_2179.x, x_2179.z) + vec4<f32>(x_2181.z, x_2181.w, x_2181.x, x_2181.z));
        let x_2185 : f32 = u_xlat11.y;
        u_xlat10.z = x_2185;
        let x_2188 : f32 = u_xlat8.y;
        u_xlat10.w = x_2188;
        let x_2191 : f32 = u_xlat12.y;
        u_xlat13.z = x_2191;
        let x_2194 : f32 = u_xlat60.y;
        u_xlat13.w = x_2194;
        let x_2196 : vec4<f32> = u_xlat10;
        let x_2198 : vec4<f32> = u_xlat13;
        let x_2200 : vec3<f32> = (vec3<f32>(x_2196.z, x_2196.y, x_2196.w) + vec3<f32>(x_2198.z, x_2198.y, x_2198.w));
        let x_2201 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2200.x, x_2200.y, x_2200.z, x_2201.w);
        let x_2203 : vec4<f32> = u_xlat12;
        let x_2205 : vec4<f32> = u_xlat9;
        let x_2207 : vec3<f32> = (vec3<f32>(x_2203.x, x_2203.z, x_2203.w) / vec3<f32>(x_2205.z, x_2205.w, x_2205.y));
        let x_2208 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2207.x, x_2207.y, x_2207.z, x_2208.w);
        let x_2210 : vec4<f32> = u_xlat10;
        let x_2212 : vec3<f32> = (vec3<f32>(x_2210.x, x_2210.y, x_2210.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2213 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2212.x, x_2212.y, x_2212.z, x_2213.w);
        let x_2215 : vec4<f32> = u_xlat13;
        let x_2217 : vec4<f32> = u_xlat8;
        let x_2219 : vec3<f32> = (vec3<f32>(x_2215.z, x_2215.y, x_2215.w) / vec3<f32>(x_2217.x, x_2217.y, x_2217.z));
        let x_2220 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2219.x, x_2219.y, x_2219.z, x_2220.w);
        let x_2222 : vec4<f32> = u_xlat11;
        let x_2224 : vec3<f32> = (vec3<f32>(x_2222.x, x_2222.y, x_2222.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2225 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2224.x, x_2224.y, x_2224.z, x_2225.w);
        let x_2227 : vec4<f32> = u_xlat10;
        let x_2230 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2232 : vec3<f32> = (vec3<f32>(x_2227.y, x_2227.x, x_2227.z) * vec3<f32>(x_2230.x, x_2230.x, x_2230.x));
        let x_2233 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2232.x, x_2232.y, x_2232.z, x_2233.w);
        let x_2235 : vec4<f32> = u_xlat11;
        let x_2238 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2240 : vec3<f32> = (vec3<f32>(x_2235.x, x_2235.y, x_2235.z) * vec3<f32>(x_2238.y, x_2238.y, x_2238.y));
        let x_2241 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2240.x, x_2240.y, x_2240.z, x_2241.w);
        let x_2244 : f32 = u_xlat11.x;
        u_xlat10.w = x_2244;
        let x_2246 : vec3<f32> = u_xlat33;
        let x_2249 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2252 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_2246.x, x_2246.y, x_2246.x, x_2246.y) * vec4<f32>(x_2249.x, x_2249.y, x_2249.x, x_2249.y)) + vec4<f32>(x_2252.y, x_2252.w, x_2252.x, x_2252.w));
        let x_2255 : vec3<f32> = u_xlat33;
        let x_2258 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2261 : vec4<f32> = u_xlat10;
        let x_2263 : vec2<f32> = ((vec2<f32>(x_2255.x, x_2255.y) * vec2<f32>(x_2258.x, x_2258.y)) + vec2<f32>(x_2261.z, x_2261.w));
        let x_2264 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2263.x, x_2263.y, x_2264.z, x_2264.w);
        let x_2267 : f32 = u_xlat10.y;
        u_xlat11.w = x_2267;
        let x_2269 : vec4<f32> = u_xlat11;
        let x_2270 : vec2<f32> = vec2<f32>(x_2269.y, x_2269.z);
        let x_2271 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2271.x, x_2270.x, x_2271.z, x_2270.y);
        let x_2273 : vec3<f32> = u_xlat33;
        let x_2276 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2279 : vec4<f32> = u_xlat10;
        u_xlat14 = ((vec4<f32>(x_2273.x, x_2273.y, x_2273.x, x_2273.y) * vec4<f32>(x_2276.x, x_2276.y, x_2276.x, x_2276.y)) + vec4<f32>(x_2279.x, x_2279.y, x_2279.z, x_2279.y));
        let x_2282 : vec3<f32> = u_xlat33;
        let x_2285 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2288 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_2282.x, x_2282.y, x_2282.x, x_2282.y) * vec4<f32>(x_2285.x, x_2285.y, x_2285.x, x_2285.y)) + vec4<f32>(x_2288.w, x_2288.y, x_2288.w, x_2288.z));
        let x_2291 : vec3<f32> = u_xlat33;
        let x_2294 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2297 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2291.x, x_2291.y, x_2291.x, x_2291.y) * vec4<f32>(x_2294.x, x_2294.y, x_2294.x, x_2294.y)) + vec4<f32>(x_2297.x, x_2297.w, x_2297.z, x_2297.w));
        let x_2300 : vec4<f32> = u_xlat8;
        let x_2302 : vec4<f32> = u_xlat9;
        u_xlat15 = (vec4<f32>(x_2300.x, x_2300.x, x_2300.x, x_2300.y) * vec4<f32>(x_2302.z, x_2302.w, x_2302.y, x_2302.z));
        let x_2305 : vec4<f32> = u_xlat8;
        let x_2307 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_2305.y, x_2305.y, x_2305.z, x_2305.z) * x_2307);
        let x_2310 : f32 = u_xlat8.z;
        let x_2312 : f32 = u_xlat9.y;
        u_xlat33.x = (x_2310 * x_2312);
        let x_2316 : vec4<f32> = u_xlat12;
        let x_2317 : vec2<f32> = vec2<f32>(x_2316.x, x_2316.y);
        let x_2319 : f32 = u_xlat4.z;
        txVec34 = vec3<f32>(x_2317.x, x_2317.y, x_2319);
        let x_2326 : vec3<f32> = txVec34;
        let x_2328 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2326.xy, x_2326.z);
        u_xlat59.x = x_2328;
        let x_2331 : vec4<f32> = u_xlat12;
        let x_2332 : vec2<f32> = vec2<f32>(x_2331.z, x_2331.w);
        let x_2334 : f32 = u_xlat4.z;
        txVec35 = vec3<f32>(x_2332.x, x_2332.y, x_2334);
        let x_2342 : vec3<f32> = txVec35;
        let x_2344 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2342.xy, x_2342.z);
        u_xlat85 = x_2344;
        let x_2345 : f32 = u_xlat85;
        let x_2347 : f32 = u_xlat15.y;
        u_xlat85 = (x_2345 * x_2347);
        let x_2350 : f32 = u_xlat15.x;
        let x_2352 : f32 = u_xlat59.x;
        let x_2354 : f32 = u_xlat85;
        u_xlat59.x = ((x_2350 * x_2352) + x_2354);
        let x_2358 : vec4<f32> = u_xlat13;
        let x_2359 : vec2<f32> = vec2<f32>(x_2358.x, x_2358.y);
        let x_2361 : f32 = u_xlat4.z;
        txVec36 = vec3<f32>(x_2359.x, x_2359.y, x_2361);
        let x_2368 : vec3<f32> = txVec36;
        let x_2370 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2368.xy, x_2368.z);
        u_xlat85 = x_2370;
        let x_2372 : f32 = u_xlat15.z;
        let x_2373 : f32 = u_xlat85;
        let x_2376 : f32 = u_xlat59.x;
        u_xlat59.x = ((x_2372 * x_2373) + x_2376);
        let x_2380 : vec4<f32> = u_xlat11;
        let x_2381 : vec2<f32> = vec2<f32>(x_2380.x, x_2380.y);
        let x_2383 : f32 = u_xlat4.z;
        txVec37 = vec3<f32>(x_2381.x, x_2381.y, x_2383);
        let x_2390 : vec3<f32> = txVec37;
        let x_2392 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2390.xy, x_2390.z);
        u_xlat85 = x_2392;
        let x_2394 : f32 = u_xlat15.w;
        let x_2395 : f32 = u_xlat85;
        let x_2398 : f32 = u_xlat59.x;
        u_xlat59.x = ((x_2394 * x_2395) + x_2398);
        let x_2402 : vec4<f32> = u_xlat14;
        let x_2403 : vec2<f32> = vec2<f32>(x_2402.x, x_2402.y);
        let x_2405 : f32 = u_xlat4.z;
        txVec38 = vec3<f32>(x_2403.x, x_2403.y, x_2405);
        let x_2412 : vec3<f32> = txVec38;
        let x_2414 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2412.xy, x_2412.z);
        u_xlat85 = x_2414;
        let x_2416 : f32 = u_xlat16.x;
        let x_2417 : f32 = u_xlat85;
        let x_2420 : f32 = u_xlat59.x;
        u_xlat59.x = ((x_2416 * x_2417) + x_2420);
        let x_2424 : vec4<f32> = u_xlat14;
        let x_2425 : vec2<f32> = vec2<f32>(x_2424.z, x_2424.w);
        let x_2427 : f32 = u_xlat4.z;
        txVec39 = vec3<f32>(x_2425.x, x_2425.y, x_2427);
        let x_2434 : vec3<f32> = txVec39;
        let x_2436 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2434.xy, x_2434.z);
        u_xlat85 = x_2436;
        let x_2438 : f32 = u_xlat16.y;
        let x_2439 : f32 = u_xlat85;
        let x_2442 : f32 = u_xlat59.x;
        u_xlat59.x = ((x_2438 * x_2439) + x_2442);
        let x_2446 : vec4<f32> = u_xlat11;
        let x_2447 : vec2<f32> = vec2<f32>(x_2446.z, x_2446.w);
        let x_2449 : f32 = u_xlat4.z;
        txVec40 = vec3<f32>(x_2447.x, x_2447.y, x_2449);
        let x_2456 : vec3<f32> = txVec40;
        let x_2458 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2456.xy, x_2456.z);
        u_xlat85 = x_2458;
        let x_2460 : f32 = u_xlat16.z;
        let x_2461 : f32 = u_xlat85;
        let x_2464 : f32 = u_xlat59.x;
        u_xlat59.x = ((x_2460 * x_2461) + x_2464);
        let x_2468 : vec4<f32> = u_xlat10;
        let x_2469 : vec2<f32> = vec2<f32>(x_2468.x, x_2468.y);
        let x_2471 : f32 = u_xlat4.z;
        txVec41 = vec3<f32>(x_2469.x, x_2469.y, x_2471);
        let x_2478 : vec3<f32> = txVec41;
        let x_2480 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2478.xy, x_2478.z);
        u_xlat85 = x_2480;
        let x_2482 : f32 = u_xlat16.w;
        let x_2483 : f32 = u_xlat85;
        let x_2486 : f32 = u_xlat59.x;
        u_xlat59.x = ((x_2482 * x_2483) + x_2486);
        let x_2490 : vec4<f32> = u_xlat10;
        let x_2491 : vec2<f32> = vec2<f32>(x_2490.z, x_2490.w);
        let x_2493 : f32 = u_xlat4.z;
        txVec42 = vec3<f32>(x_2491.x, x_2491.y, x_2493);
        let x_2500 : vec3<f32> = txVec42;
        let x_2502 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2500.xy, x_2500.z);
        u_xlat85 = x_2502;
        let x_2504 : f32 = u_xlat33.x;
        let x_2505 : f32 = u_xlat85;
        let x_2508 : f32 = u_xlat59.x;
        u_xlat78 = ((x_2504 * x_2505) + x_2508);
      } else {
        let x_2511 : vec4<f32> = u_xlat4;
        let x_2514 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2517 : vec2<f32> = ((vec2<f32>(x_2511.x, x_2511.y) * vec2<f32>(x_2514.z, x_2514.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2518 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2517.x, x_2517.y, x_2518.z);
        let x_2520 : vec3<f32> = u_xlat33;
        let x_2522 : vec2<f32> = floor(vec2<f32>(x_2520.x, x_2520.y));
        let x_2523 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2522.x, x_2522.y, x_2523.z);
        let x_2525 : vec4<f32> = u_xlat4;
        let x_2528 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2531 : vec3<f32> = u_xlat33;
        let x_2534 : vec2<f32> = ((vec2<f32>(x_2525.x, x_2525.y) * vec2<f32>(x_2528.z, x_2528.w)) + -(vec2<f32>(x_2531.x, x_2531.y)));
        let x_2535 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2534.x, x_2534.y, x_2535.z, x_2535.w);
        let x_2537 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2537.x, x_2537.x, x_2537.y, x_2537.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2540 : vec4<f32> = u_xlat9;
        let x_2542 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2540.x, x_2540.x, x_2540.z, x_2540.z) * vec4<f32>(x_2542.x, x_2542.x, x_2542.z, x_2542.z));
        let x_2545 : vec4<f32> = u_xlat10;
        let x_2547 : vec2<f32> = (vec2<f32>(x_2545.y, x_2545.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2548 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2548.x, x_2547.x, x_2548.z, x_2547.y);
        let x_2550 : vec4<f32> = u_xlat10;
        let x_2553 : vec4<f32> = u_xlat8;
        u_xlat60 = ((vec2<f32>(x_2550.x, x_2550.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2553.x, x_2553.y)));
        let x_2557 : vec4<f32> = u_xlat8;
        let x_2560 : vec2<f32> = (-(vec2<f32>(x_2557.x, x_2557.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2561 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2560.x, x_2561.y, x_2560.y, x_2561.w);
        let x_2563 : vec4<f32> = u_xlat8;
        let x_2565 : vec2<f32> = min(vec2<f32>(x_2563.x, x_2563.y), vec2<f32>(0.0f, 0.0f));
        let x_2566 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2565.x, x_2565.y, x_2566.z, x_2566.w);
        let x_2568 : vec4<f32> = u_xlat10;
        let x_2571 : vec4<f32> = u_xlat10;
        let x_2574 : vec4<f32> = u_xlat9;
        let x_2576 : vec2<f32> = ((-(vec2<f32>(x_2568.x, x_2568.y)) * vec2<f32>(x_2571.x, x_2571.y)) + vec2<f32>(x_2574.x, x_2574.z));
        let x_2577 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2576.x, x_2577.y, x_2576.y, x_2577.w);
        let x_2579 : vec4<f32> = u_xlat8;
        let x_2581 : vec2<f32> = max(vec2<f32>(x_2579.x, x_2579.y), vec2<f32>(0.0f, 0.0f));
        let x_2582 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2581.x, x_2581.y, x_2582.z, x_2582.w);
        let x_2584 : vec4<f32> = u_xlat10;
        let x_2587 : vec4<f32> = u_xlat10;
        let x_2590 : vec4<f32> = u_xlat9;
        let x_2592 : vec2<f32> = ((-(vec2<f32>(x_2584.x, x_2584.y)) * vec2<f32>(x_2587.x, x_2587.y)) + vec2<f32>(x_2590.y, x_2590.w));
        let x_2593 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2593.x, x_2592.x, x_2593.z, x_2592.y);
        let x_2595 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2595 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2598 : f32 = u_xlat9.y;
        u_xlat10.z = (x_2598 * 0.08163200318813323975f);
        let x_2601 : vec2<f32> = u_xlat60;
        let x_2603 : vec2<f32> = (vec2<f32>(x_2601.y, x_2601.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2604 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2603.x, x_2603.y, x_2604.z, x_2604.w);
        let x_2606 : vec4<f32> = u_xlat9;
        u_xlat60 = (vec2<f32>(x_2606.x, x_2606.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2610 : f32 = u_xlat9.w;
        u_xlat12.z = (x_2610 * 0.08163200318813323975f);
        let x_2614 : f32 = u_xlat12.y;
        u_xlat10.x = x_2614;
        let x_2616 : vec4<f32> = u_xlat8;
        let x_2619 : vec2<f32> = ((vec2<f32>(x_2616.x, x_2616.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2620 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2620.x, x_2619.x, x_2620.z, x_2619.y);
        let x_2622 : vec4<f32> = u_xlat8;
        let x_2625 : vec2<f32> = ((vec2<f32>(x_2622.x, x_2622.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2626 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2625.x, x_2626.y, x_2625.y, x_2626.w);
        let x_2629 : f32 = u_xlat60.x;
        u_xlat9.y = x_2629;
        let x_2632 : f32 = u_xlat11.y;
        u_xlat9.w = x_2632;
        let x_2634 : vec4<f32> = u_xlat9;
        let x_2635 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2634 + x_2635);
        let x_2637 : vec4<f32> = u_xlat8;
        let x_2640 : vec2<f32> = ((vec2<f32>(x_2637.y, x_2637.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2641 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2641.x, x_2640.x, x_2641.z, x_2640.y);
        let x_2643 : vec4<f32> = u_xlat8;
        let x_2646 : vec2<f32> = ((vec2<f32>(x_2643.y, x_2643.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2647 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2646.x, x_2647.y, x_2646.y, x_2647.w);
        let x_2650 : f32 = u_xlat60.y;
        u_xlat11.y = x_2650;
        let x_2652 : vec4<f32> = u_xlat11;
        let x_2653 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_2652 + x_2653);
        let x_2655 : vec4<f32> = u_xlat9;
        let x_2656 : vec4<f32> = u_xlat10;
        u_xlat9 = (x_2655 / x_2656);
        let x_2658 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2658 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2660 : vec4<f32> = u_xlat11;
        let x_2661 : vec4<f32> = u_xlat8;
        u_xlat11 = (x_2660 / x_2661);
        let x_2663 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_2663 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2665 : vec4<f32> = u_xlat9;
        let x_2668 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_2665.w, x_2665.x, x_2665.y, x_2665.z) * vec4<f32>(x_2668.x, x_2668.x, x_2668.x, x_2668.x));
        let x_2671 : vec4<f32> = u_xlat11;
        let x_2674 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_2671.x, x_2671.w, x_2671.y, x_2671.z) * vec4<f32>(x_2674.y, x_2674.y, x_2674.y, x_2674.y));
        let x_2677 : vec4<f32> = u_xlat9;
        let x_2678 : vec3<f32> = vec3<f32>(x_2677.y, x_2677.z, x_2677.w);
        let x_2679 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2678.x, x_2679.y, x_2678.y, x_2678.z);
        let x_2682 : f32 = u_xlat11.x;
        u_xlat12.y = x_2682;
        let x_2684 : vec3<f32> = u_xlat33;
        let x_2687 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2690 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_2684.x, x_2684.y, x_2684.x, x_2684.y) * vec4<f32>(x_2687.x, x_2687.y, x_2687.x, x_2687.y)) + vec4<f32>(x_2690.x, x_2690.y, x_2690.z, x_2690.y));
        let x_2693 : vec3<f32> = u_xlat33;
        let x_2696 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2699 : vec4<f32> = u_xlat12;
        let x_2701 : vec2<f32> = ((vec2<f32>(x_2693.x, x_2693.y) * vec2<f32>(x_2696.x, x_2696.y)) + vec2<f32>(x_2699.w, x_2699.y));
        let x_2702 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_2701.x, x_2701.y, x_2702.z, x_2702.w);
        let x_2705 : f32 = u_xlat12.y;
        u_xlat9.y = x_2705;
        let x_2708 : f32 = u_xlat11.z;
        u_xlat12.y = x_2708;
        let x_2710 : vec3<f32> = u_xlat33;
        let x_2713 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2716 : vec4<f32> = u_xlat12;
        u_xlat15 = ((vec4<f32>(x_2710.x, x_2710.y, x_2710.x, x_2710.y) * vec4<f32>(x_2713.x, x_2713.y, x_2713.x, x_2713.y)) + vec4<f32>(x_2716.x, x_2716.y, x_2716.z, x_2716.y));
        let x_2720 : vec3<f32> = u_xlat33;
        let x_2723 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2726 : vec4<f32> = u_xlat12;
        u_xlat66 = ((vec2<f32>(x_2720.x, x_2720.y) * vec2<f32>(x_2723.x, x_2723.y)) + vec2<f32>(x_2726.w, x_2726.y));
        let x_2730 : f32 = u_xlat12.y;
        u_xlat9.z = x_2730;
        let x_2732 : vec3<f32> = u_xlat33;
        let x_2735 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2738 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_2732.x, x_2732.y, x_2732.x, x_2732.y) * vec4<f32>(x_2735.x, x_2735.y, x_2735.x, x_2735.y)) + vec4<f32>(x_2738.x, x_2738.y, x_2738.x, x_2738.z));
        let x_2742 : f32 = u_xlat11.w;
        u_xlat12.y = x_2742;
        let x_2744 : vec3<f32> = u_xlat33;
        let x_2747 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2750 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_2744.x, x_2744.y, x_2744.x, x_2744.y) * vec4<f32>(x_2747.x, x_2747.y, x_2747.x, x_2747.y)) + vec4<f32>(x_2750.x, x_2750.y, x_2750.z, x_2750.y));
        let x_2754 : vec3<f32> = u_xlat33;
        let x_2757 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2760 : vec4<f32> = u_xlat12;
        u_xlat35 = ((vec2<f32>(x_2754.x, x_2754.y) * vec2<f32>(x_2757.x, x_2757.y)) + vec2<f32>(x_2760.w, x_2760.y));
        let x_2764 : f32 = u_xlat12.y;
        u_xlat9.w = x_2764;
        let x_2766 : vec3<f32> = u_xlat33;
        let x_2769 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2772 : vec4<f32> = u_xlat9;
        let x_2774 : vec2<f32> = ((vec2<f32>(x_2766.x, x_2766.y) * vec2<f32>(x_2769.x, x_2769.y)) + vec2<f32>(x_2772.x, x_2772.w));
        let x_2775 : vec4<f32> = u_xlat18;
        u_xlat18 = vec4<f32>(x_2774.x, x_2774.y, x_2775.z, x_2775.w);
        let x_2777 : vec4<f32> = u_xlat12;
        let x_2778 : vec3<f32> = vec3<f32>(x_2777.x, x_2777.z, x_2777.w);
        let x_2779 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2778.x, x_2779.y, x_2778.y, x_2778.z);
        let x_2781 : vec3<f32> = u_xlat33;
        let x_2784 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2787 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2781.x, x_2781.y, x_2781.x, x_2781.y) * vec4<f32>(x_2784.x, x_2784.y, x_2784.x, x_2784.y)) + vec4<f32>(x_2787.x, x_2787.y, x_2787.z, x_2787.y));
        let x_2791 : vec3<f32> = u_xlat33;
        let x_2794 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2797 : vec4<f32> = u_xlat11;
        u_xlat63 = ((vec2<f32>(x_2791.x, x_2791.y) * vec2<f32>(x_2794.x, x_2794.y)) + vec2<f32>(x_2797.w, x_2797.y));
        let x_2801 : f32 = u_xlat9.x;
        u_xlat11.x = x_2801;
        let x_2803 : vec3<f32> = u_xlat33;
        let x_2806 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2809 : vec4<f32> = u_xlat11;
        let x_2811 : vec2<f32> = ((vec2<f32>(x_2803.x, x_2803.y) * vec2<f32>(x_2806.x, x_2806.y)) + vec2<f32>(x_2809.x, x_2809.y));
        let x_2812 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2811.x, x_2811.y, x_2812.z);
        let x_2815 : vec4<f32> = u_xlat8;
        let x_2817 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_2815.x, x_2815.x, x_2815.x, x_2815.x) * x_2817);
        let x_2820 : vec4<f32> = u_xlat8;
        let x_2822 : vec4<f32> = u_xlat10;
        u_xlat20 = (vec4<f32>(x_2820.y, x_2820.y, x_2820.y, x_2820.y) * x_2822);
        let x_2825 : vec4<f32> = u_xlat8;
        let x_2827 : vec4<f32> = u_xlat10;
        u_xlat21 = (vec4<f32>(x_2825.z, x_2825.z, x_2825.z, x_2825.z) * x_2827);
        let x_2829 : vec4<f32> = u_xlat8;
        let x_2831 : vec4<f32> = u_xlat10;
        u_xlat8 = (vec4<f32>(x_2829.w, x_2829.w, x_2829.w, x_2829.w) * x_2831);
        let x_2834 : vec4<f32> = u_xlat13;
        let x_2835 : vec2<f32> = vec2<f32>(x_2834.x, x_2834.y);
        let x_2837 : f32 = u_xlat4.z;
        txVec43 = vec3<f32>(x_2835.x, x_2835.y, x_2837);
        let x_2844 : vec3<f32> = txVec43;
        let x_2846 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2844.xy, x_2844.z);
        u_xlat85 = x_2846;
        let x_2848 : vec4<f32> = u_xlat13;
        let x_2849 : vec2<f32> = vec2<f32>(x_2848.z, x_2848.w);
        let x_2851 : f32 = u_xlat4.z;
        txVec44 = vec3<f32>(x_2849.x, x_2849.y, x_2851);
        let x_2858 : vec3<f32> = txVec44;
        let x_2860 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2858.xy, x_2858.z);
        u_xlat9.x = x_2860;
        let x_2863 : f32 = u_xlat9.x;
        let x_2865 : f32 = u_xlat19.y;
        u_xlat9.x = (x_2863 * x_2865);
        let x_2869 : f32 = u_xlat19.x;
        let x_2870 : f32 = u_xlat85;
        let x_2873 : f32 = u_xlat9.x;
        u_xlat85 = ((x_2869 * x_2870) + x_2873);
        let x_2876 : vec4<f32> = u_xlat14;
        let x_2877 : vec2<f32> = vec2<f32>(x_2876.x, x_2876.y);
        let x_2879 : f32 = u_xlat4.z;
        txVec45 = vec3<f32>(x_2877.x, x_2877.y, x_2879);
        let x_2886 : vec3<f32> = txVec45;
        let x_2888 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2886.xy, x_2886.z);
        u_xlat9.x = x_2888;
        let x_2891 : f32 = u_xlat19.z;
        let x_2893 : f32 = u_xlat9.x;
        let x_2895 : f32 = u_xlat85;
        u_xlat85 = ((x_2891 * x_2893) + x_2895);
        let x_2898 : vec4<f32> = u_xlat16;
        let x_2899 : vec2<f32> = vec2<f32>(x_2898.x, x_2898.y);
        let x_2901 : f32 = u_xlat4.z;
        txVec46 = vec3<f32>(x_2899.x, x_2899.y, x_2901);
        let x_2908 : vec3<f32> = txVec46;
        let x_2910 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2908.xy, x_2908.z);
        u_xlat9.x = x_2910;
        let x_2913 : f32 = u_xlat19.w;
        let x_2915 : f32 = u_xlat9.x;
        let x_2917 : f32 = u_xlat85;
        u_xlat85 = ((x_2913 * x_2915) + x_2917);
        let x_2920 : vec4<f32> = u_xlat15;
        let x_2921 : vec2<f32> = vec2<f32>(x_2920.x, x_2920.y);
        let x_2923 : f32 = u_xlat4.z;
        txVec47 = vec3<f32>(x_2921.x, x_2921.y, x_2923);
        let x_2930 : vec3<f32> = txVec47;
        let x_2932 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2930.xy, x_2930.z);
        u_xlat9.x = x_2932;
        let x_2935 : f32 = u_xlat20.x;
        let x_2937 : f32 = u_xlat9.x;
        let x_2939 : f32 = u_xlat85;
        u_xlat85 = ((x_2935 * x_2937) + x_2939);
        let x_2942 : vec4<f32> = u_xlat15;
        let x_2943 : vec2<f32> = vec2<f32>(x_2942.z, x_2942.w);
        let x_2945 : f32 = u_xlat4.z;
        txVec48 = vec3<f32>(x_2943.x, x_2943.y, x_2945);
        let x_2952 : vec3<f32> = txVec48;
        let x_2954 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2952.xy, x_2952.z);
        u_xlat9.x = x_2954;
        let x_2957 : f32 = u_xlat20.y;
        let x_2959 : f32 = u_xlat9.x;
        let x_2961 : f32 = u_xlat85;
        u_xlat85 = ((x_2957 * x_2959) + x_2961);
        let x_2964 : vec2<f32> = u_xlat66;
        let x_2966 : f32 = u_xlat4.z;
        txVec49 = vec3<f32>(x_2964.x, x_2964.y, x_2966);
        let x_2973 : vec3<f32> = txVec49;
        let x_2975 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2973.xy, x_2973.z);
        u_xlat9.x = x_2975;
        let x_2978 : f32 = u_xlat20.z;
        let x_2980 : f32 = u_xlat9.x;
        let x_2982 : f32 = u_xlat85;
        u_xlat85 = ((x_2978 * x_2980) + x_2982);
        let x_2985 : vec4<f32> = u_xlat16;
        let x_2986 : vec2<f32> = vec2<f32>(x_2985.z, x_2985.w);
        let x_2988 : f32 = u_xlat4.z;
        txVec50 = vec3<f32>(x_2986.x, x_2986.y, x_2988);
        let x_2995 : vec3<f32> = txVec50;
        let x_2997 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2995.xy, x_2995.z);
        u_xlat9.x = x_2997;
        let x_3000 : f32 = u_xlat20.w;
        let x_3002 : f32 = u_xlat9.x;
        let x_3004 : f32 = u_xlat85;
        u_xlat85 = ((x_3000 * x_3002) + x_3004);
        let x_3007 : vec4<f32> = u_xlat17;
        let x_3008 : vec2<f32> = vec2<f32>(x_3007.x, x_3007.y);
        let x_3010 : f32 = u_xlat4.z;
        txVec51 = vec3<f32>(x_3008.x, x_3008.y, x_3010);
        let x_3017 : vec3<f32> = txVec51;
        let x_3019 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3017.xy, x_3017.z);
        u_xlat9.x = x_3019;
        let x_3022 : f32 = u_xlat21.x;
        let x_3024 : f32 = u_xlat9.x;
        let x_3026 : f32 = u_xlat85;
        u_xlat85 = ((x_3022 * x_3024) + x_3026);
        let x_3029 : vec4<f32> = u_xlat17;
        let x_3030 : vec2<f32> = vec2<f32>(x_3029.z, x_3029.w);
        let x_3032 : f32 = u_xlat4.z;
        txVec52 = vec3<f32>(x_3030.x, x_3030.y, x_3032);
        let x_3039 : vec3<f32> = txVec52;
        let x_3041 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3039.xy, x_3039.z);
        u_xlat9.x = x_3041;
        let x_3044 : f32 = u_xlat21.y;
        let x_3046 : f32 = u_xlat9.x;
        let x_3048 : f32 = u_xlat85;
        u_xlat85 = ((x_3044 * x_3046) + x_3048);
        let x_3051 : vec2<f32> = u_xlat35;
        let x_3053 : f32 = u_xlat4.z;
        txVec53 = vec3<f32>(x_3051.x, x_3051.y, x_3053);
        let x_3060 : vec3<f32> = txVec53;
        let x_3062 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3060.xy, x_3060.z);
        u_xlat9.x = x_3062;
        let x_3065 : f32 = u_xlat21.z;
        let x_3067 : f32 = u_xlat9.x;
        let x_3069 : f32 = u_xlat85;
        u_xlat85 = ((x_3065 * x_3067) + x_3069);
        let x_3072 : vec4<f32> = u_xlat18;
        let x_3073 : vec2<f32> = vec2<f32>(x_3072.x, x_3072.y);
        let x_3075 : f32 = u_xlat4.z;
        txVec54 = vec3<f32>(x_3073.x, x_3073.y, x_3075);
        let x_3082 : vec3<f32> = txVec54;
        let x_3084 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3082.xy, x_3082.z);
        u_xlat9.x = x_3084;
        let x_3087 : f32 = u_xlat21.w;
        let x_3089 : f32 = u_xlat9.x;
        let x_3091 : f32 = u_xlat85;
        u_xlat85 = ((x_3087 * x_3089) + x_3091);
        let x_3094 : vec4<f32> = u_xlat12;
        let x_3095 : vec2<f32> = vec2<f32>(x_3094.x, x_3094.y);
        let x_3097 : f32 = u_xlat4.z;
        txVec55 = vec3<f32>(x_3095.x, x_3095.y, x_3097);
        let x_3104 : vec3<f32> = txVec55;
        let x_3106 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3104.xy, x_3104.z);
        u_xlat9.x = x_3106;
        let x_3109 : f32 = u_xlat8.x;
        let x_3111 : f32 = u_xlat9.x;
        let x_3113 : f32 = u_xlat85;
        u_xlat85 = ((x_3109 * x_3111) + x_3113);
        let x_3116 : vec4<f32> = u_xlat12;
        let x_3117 : vec2<f32> = vec2<f32>(x_3116.z, x_3116.w);
        let x_3119 : f32 = u_xlat4.z;
        txVec56 = vec3<f32>(x_3117.x, x_3117.y, x_3119);
        let x_3126 : vec3<f32> = txVec56;
        let x_3128 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3126.xy, x_3126.z);
        u_xlat8.x = x_3128;
        let x_3131 : f32 = u_xlat8.y;
        let x_3133 : f32 = u_xlat8.x;
        let x_3135 : f32 = u_xlat85;
        u_xlat85 = ((x_3131 * x_3133) + x_3135);
        let x_3138 : vec2<f32> = u_xlat63;
        let x_3140 : f32 = u_xlat4.z;
        txVec57 = vec3<f32>(x_3138.x, x_3138.y, x_3140);
        let x_3147 : vec3<f32> = txVec57;
        let x_3149 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3147.xy, x_3147.z);
        u_xlat8.x = x_3149;
        let x_3152 : f32 = u_xlat8.z;
        let x_3154 : f32 = u_xlat8.x;
        let x_3156 : f32 = u_xlat85;
        u_xlat85 = ((x_3152 * x_3154) + x_3156);
        let x_3159 : vec3<f32> = u_xlat33;
        let x_3160 : vec2<f32> = vec2<f32>(x_3159.x, x_3159.y);
        let x_3162 : f32 = u_xlat4.z;
        txVec58 = vec3<f32>(x_3160.x, x_3160.y, x_3162);
        let x_3169 : vec3<f32> = txVec58;
        let x_3171 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3169.xy, x_3169.z);
        u_xlat33.x = x_3171;
        let x_3174 : f32 = u_xlat8.w;
        let x_3176 : f32 = u_xlat33.x;
        let x_3178 : f32 = u_xlat85;
        u_xlat78 = ((x_3174 * x_3176) + x_3178);
      }
    }
  } else {
    let x_3182 : vec4<f32> = u_xlat4;
    let x_3183 : vec2<f32> = vec2<f32>(x_3182.x, x_3182.y);
    let x_3185 : f32 = u_xlat4.z;
    txVec59 = vec3<f32>(x_3183.x, x_3183.y, x_3185);
    let x_3192 : vec3<f32> = txVec59;
    let x_3194 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3192.xy, x_3192.z);
    u_xlat78 = x_3194;
  }
  let x_3195 : f32 = u_xlat78;
  let x_3197 : f32 = x_130.x_MainLightShadowParams.x;
  let x_3199 : f32 = u_xlat82;
  u_xlat78 = ((x_3195 * x_3197) + x_3199);
  let x_3201 : bool = u_xlatb5;
  let x_3202 : f32 = u_xlat78;
  u_xlat78 = select(x_3202, 1.0f, x_3201);
  let x_3204 : vec3<f32> = vs_INTERP8;
  let x_3206 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  let x_3208 : vec3<f32> = (x_3204 + -(x_3206));
  let x_3209 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_3208.x, x_3208.y, x_3208.z, x_3209.w);
  let x_3211 : vec4<f32> = u_xlat4;
  let x_3213 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_3211.x, x_3211.y, x_3211.z), vec3<f32>(x_3213.x, x_3213.y, x_3213.z));
  let x_3219 : f32 = u_xlat4.x;
  let x_3221 : f32 = x_130.x_MainLightShadowParams.z;
  let x_3224 : f32 = x_130.x_MainLightShadowParams.w;
  u_xlat30.x = ((x_3219 * x_3221) + x_3224);
  let x_3228 : f32 = u_xlat30.x;
  u_xlat30.x = clamp(x_3228, 0.0f, 1.0f);
  let x_3232 : f32 = u_xlat78;
  u_xlat56 = (-(x_3232) + 1.0f);
  let x_3236 : f32 = u_xlat30.x;
  let x_3237 : f32 = u_xlat56;
  let x_3239 : f32 = u_xlat78;
  u_xlat78 = ((x_3236 * x_3237) + x_3239);
  let x_3249 : f32 = x_3247.x_MainLightCookieTextureFormat;
  u_xlatb30.x = !((x_3249 == -1.0f));
  let x_3253 : bool = u_xlatb30.x;
  if (x_3253) {
    let x_3256 : vec3<f32> = vs_INTERP8;
    let x_3259 : vec4<f32> = x_3247.x_MainLightWorldToLight[1i];
    let x_3261 : vec2<f32> = (vec2<f32>(x_3256.y, x_3256.y) * vec2<f32>(x_3259.x, x_3259.y));
    let x_3262 : vec3<f32> = u_xlat30;
    u_xlat30 = vec3<f32>(x_3261.x, x_3261.y, x_3262.z);
    let x_3265 : vec4<f32> = x_3247.x_MainLightWorldToLight[0i];
    let x_3267 : vec3<f32> = vs_INTERP8;
    let x_3270 : vec3<f32> = u_xlat30;
    let x_3272 : vec2<f32> = ((vec2<f32>(x_3265.x, x_3265.y) * vec2<f32>(x_3267.x, x_3267.x)) + vec2<f32>(x_3270.x, x_3270.y));
    let x_3273 : vec3<f32> = u_xlat30;
    u_xlat30 = vec3<f32>(x_3272.x, x_3272.y, x_3273.z);
    let x_3276 : vec4<f32> = x_3247.x_MainLightWorldToLight[2i];
    let x_3278 : vec3<f32> = vs_INTERP8;
    let x_3281 : vec3<f32> = u_xlat30;
    let x_3283 : vec2<f32> = ((vec2<f32>(x_3276.x, x_3276.y) * vec2<f32>(x_3278.z, x_3278.z)) + vec2<f32>(x_3281.x, x_3281.y));
    let x_3284 : vec3<f32> = u_xlat30;
    u_xlat30 = vec3<f32>(x_3283.x, x_3283.y, x_3284.z);
    let x_3286 : vec3<f32> = u_xlat30;
    let x_3289 : vec4<f32> = x_3247.x_MainLightWorldToLight[3i];
    let x_3291 : vec2<f32> = (vec2<f32>(x_3286.x, x_3286.y) + vec2<f32>(x_3289.x, x_3289.y));
    let x_3292 : vec3<f32> = u_xlat30;
    u_xlat30 = vec3<f32>(x_3291.x, x_3291.y, x_3292.z);
    let x_3294 : vec3<f32> = u_xlat30;
    let x_3297 : vec2<f32> = ((vec2<f32>(x_3294.x, x_3294.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_3298 : vec3<f32> = u_xlat30;
    u_xlat30 = vec3<f32>(x_3297.x, x_3297.y, x_3298.z);
    let x_3305 : vec3<f32> = u_xlat30;
    let x_3308 : f32 = x_53.x_GlobalMipBias.x;
    let x_3309 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_3305.x, x_3305.y), x_3308);
    u_xlat8 = x_3309;
    let x_3311 : f32 = x_3247.x_MainLightCookieTextureFormat;
    let x_3313 : f32 = x_3247.x_MainLightCookieTextureFormat;
    let x_3315 : f32 = x_3247.x_MainLightCookieTextureFormat;
    let x_3317 : f32 = x_3247.x_MainLightCookieTextureFormat;
    let x_3318 : vec4<f32> = vec4<f32>(x_3311, x_3313, x_3315, x_3317);
    let x_3325 : vec4<bool> = (vec4<f32>(x_3318.x, x_3318.y, x_3318.z, x_3318.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb30 = vec2<bool>(x_3325.x, x_3325.y);
    let x_3328 : bool = u_xlatb30.y;
    if (x_3328) {
      let x_3333 : f32 = u_xlat8.w;
      x_3329 = x_3333;
    } else {
      let x_3336 : f32 = u_xlat8.x;
      x_3329 = x_3336;
    }
    let x_3337 : f32 = x_3329;
    u_xlat56 = x_3337;
    let x_3339 : bool = u_xlatb30.x;
    if (x_3339) {
      let x_3343 : vec4<f32> = u_xlat8;
      x_3340 = vec3<f32>(x_3343.x, x_3343.y, x_3343.z);
    } else {
      let x_3346 : f32 = u_xlat56;
      x_3340 = vec3<f32>(x_3346, x_3346, x_3346);
    }
    let x_3348 : vec3<f32> = x_3340;
    u_xlat30 = x_3348;
  } else {
    u_xlat30.x = 1.0f;
    u_xlat30.y = 1.0f;
    u_xlat30.z = 1.0f;
  }
  let x_3353 : vec3<f32> = u_xlat30;
  let x_3355 : vec4<f32> = x_53.x_MainLightColor;
  u_xlat30 = (x_3353 * vec3<f32>(x_3355.x, x_3355.y, x_3355.z));
  let x_3358 : vec4<f32> = u_xlat6;
  let x_3361 : vec3<f32> = u_xlat29;
  u_xlat5.x = dot(-(vec3<f32>(x_3358.x, x_3358.y, x_3358.z)), x_3361);
  let x_3365 : f32 = u_xlat5.x;
  let x_3367 : f32 = u_xlat5.x;
  u_xlat5.x = (x_3365 + x_3367);
  let x_3370 : vec3<f32> = u_xlat29;
  let x_3371 : vec4<f32> = u_xlat5;
  let x_3375 : vec4<f32> = u_xlat6;
  u_xlat33 = ((x_3370 * -(vec3<f32>(x_3371.x, x_3371.x, x_3371.x))) + -(vec3<f32>(x_3375.x, x_3375.y, x_3375.z)));
  let x_3379 : vec3<f32> = u_xlat29;
  let x_3380 : vec4<f32> = u_xlat6;
  u_xlat5.x = dot(x_3379, vec3<f32>(x_3380.x, x_3380.y, x_3380.z));
  let x_3385 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_3385, 0.0f, 1.0f);
  let x_3389 : f32 = u_xlat5.x;
  u_xlat5.x = (-(x_3389) + 1.0f);
  let x_3394 : f32 = u_xlat5.x;
  let x_3396 : f32 = u_xlat5.x;
  u_xlat5.x = (x_3394 * x_3396);
  let x_3400 : f32 = u_xlat5.x;
  let x_3402 : f32 = u_xlat5.x;
  u_xlat5.x = (x_3400 * x_3402);
  let x_3406 : f32 = u_xlat27.x;
  u_xlat8.x = ((-(x_3406) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3414 : f32 = u_xlat27.x;
  let x_3416 : f32 = u_xlat8.x;
  u_xlat27.x = (x_3414 * x_3416);
  let x_3420 : f32 = u_xlat27.x;
  u_xlat27.x = (x_3420 * 6.0f);
  let x_3432 : vec3<f32> = u_xlat33;
  let x_3434 : f32 = u_xlat27.x;
  let x_3435 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_3432, x_3434);
  u_xlat8 = x_3435;
  let x_3437 : f32 = u_xlat8.w;
  u_xlat27.x = (x_3437 + -1.0f);
  let x_3441 : f32 = x_1749.unity_SpecCube0_HDR.w;
  let x_3443 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_3441 * x_3443) + 1.0f);
  let x_3448 : f32 = u_xlat27.x;
  u_xlat27.x = max(x_3448, 0.0f);
  let x_3452 : f32 = u_xlat27.x;
  u_xlat27.x = log2(x_3452);
  let x_3456 : f32 = u_xlat27.x;
  let x_3458 : f32 = x_1749.unity_SpecCube0_HDR.y;
  u_xlat27.x = (x_3456 * x_3458);
  let x_3462 : f32 = u_xlat27.x;
  u_xlat27.x = exp2(x_3462);
  let x_3466 : f32 = u_xlat27.x;
  let x_3468 : f32 = x_1749.unity_SpecCube0_HDR.x;
  u_xlat27.x = (x_3466 * x_3468);
  let x_3471 : vec4<f32> = u_xlat8;
  let x_3473 : vec3<f32> = u_xlat27;
  u_xlat33 = (vec3<f32>(x_3471.x, x_3471.y, x_3471.z) * vec3<f32>(x_3473.x, x_3473.x, x_3473.x));
  let x_3476 : f32 = u_xlat79;
  let x_3478 : f32 = u_xlat79;
  let x_3482 : vec2<f32> = ((vec2<f32>(x_3476, x_3476) * vec2<f32>(x_3478, x_3478)) + vec2<f32>(-1.0f, 1.0f));
  let x_3483 : vec3<f32> = u_xlat27;
  u_xlat27 = vec3<f32>(x_3482.x, x_3483.y, x_3482.y);
  let x_3486 : f32 = u_xlat27.z;
  u_xlat79 = (1.0f / x_3486);
  let x_3489 : f32 = u_xlat3.x;
  u_xlat3.x = (x_3489 + -0.03999999910593032837f);
  let x_3494 : f32 = u_xlat5.x;
  let x_3496 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_3494 * x_3496) + 0.03999999910593032837f);
  let x_3501 : f32 = u_xlat79;
  let x_3503 : f32 = u_xlat3.x;
  u_xlat79 = (x_3501 * x_3503);
  let x_3505 : f32 = u_xlat79;
  let x_3507 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_3505, x_3505, x_3505) * x_3507);
  let x_3509 : vec3<f32> = u_xlat31;
  let x_3510 : vec3<f32> = u_xlat2;
  let x_3512 : vec3<f32> = u_xlat33;
  let x_3513 : vec3<f32> = ((x_3509 * x_3510) + x_3512);
  let x_3514 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_3513.x, x_3513.y, x_3513.z, x_3514.w);
  let x_3516 : f32 = u_xlat78;
  let x_3518 : f32 = x_1749.unity_LightData.z;
  u_xlat78 = (x_3516 * x_3518);
  let x_3520 : vec3<f32> = u_xlat29;
  let x_3522 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat79 = dot(x_3520, vec3<f32>(x_3522.x, x_3522.y, x_3522.z));
  let x_3525 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3525, 0.0f, 1.0f);
  let x_3527 : f32 = u_xlat78;
  let x_3528 : f32 = u_xlat79;
  u_xlat78 = (x_3527 * x_3528);
  let x_3530 : f32 = u_xlat78;
  let x_3532 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_3530, x_3530, x_3530) * x_3532);
  let x_3534 : vec4<f32> = u_xlat6;
  let x_3537 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat33 = (vec3<f32>(x_3534.x, x_3534.y, x_3534.z) + vec3<f32>(x_3537.x, x_3537.y, x_3537.z));
  let x_3540 : vec3<f32> = u_xlat33;
  let x_3541 : vec3<f32> = u_xlat33;
  u_xlat78 = dot(x_3540, x_3541);
  let x_3543 : f32 = u_xlat78;
  u_xlat78 = max(x_3543, 1.17549435e-38f);
  let x_3546 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_3546);
  let x_3548 : f32 = u_xlat78;
  let x_3550 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_3548, x_3548, x_3548) * x_3550);
  let x_3552 : vec3<f32> = u_xlat29;
  let x_3553 : vec3<f32> = u_xlat33;
  u_xlat78 = dot(x_3552, x_3553);
  let x_3555 : f32 = u_xlat78;
  u_xlat78 = clamp(x_3555, 0.0f, 1.0f);
  let x_3558 : vec4<f32> = x_53.x_MainLightPosition;
  let x_3560 : vec3<f32> = u_xlat33;
  u_xlat79 = dot(vec3<f32>(x_3558.x, x_3558.y, x_3558.z), x_3560);
  let x_3562 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3562, 0.0f, 1.0f);
  let x_3564 : f32 = u_xlat78;
  let x_3565 : f32 = u_xlat78;
  u_xlat78 = (x_3564 * x_3565);
  let x_3567 : f32 = u_xlat78;
  let x_3569 : f32 = u_xlat27.x;
  u_xlat78 = ((x_3567 * x_3569) + 1.00001001358032226562f);
  let x_3573 : f32 = u_xlat79;
  let x_3574 : f32 = u_xlat79;
  u_xlat79 = (x_3573 * x_3574);
  let x_3576 : f32 = u_xlat78;
  let x_3577 : f32 = u_xlat78;
  u_xlat78 = (x_3576 * x_3577);
  let x_3579 : f32 = u_xlat79;
  u_xlat79 = max(x_3579, 0.10000000149011611938f);
  let x_3582 : f32 = u_xlat78;
  let x_3583 : f32 = u_xlat79;
  u_xlat78 = (x_3582 * x_3583);
  let x_3585 : f32 = u_xlat84;
  let x_3586 : f32 = u_xlat78;
  u_xlat78 = (x_3585 * x_3586);
  let x_3588 : f32 = u_xlat80;
  let x_3589 : f32 = u_xlat78;
  u_xlat78 = (x_3588 / x_3589);
  let x_3591 : f32 = u_xlat78;
  let x_3595 : vec3<f32> = u_xlat2;
  u_xlat33 = ((vec3<f32>(x_3591, x_3591, x_3591) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3595);
  let x_3597 : vec3<f32> = u_xlat30;
  let x_3598 : vec3<f32> = u_xlat33;
  u_xlat30 = (x_3597 * x_3598);
  let x_3601 : f32 = x_53.x_AdditionalLightsCount.x;
  let x_3603 : f32 = x_1749.unity_LightData.y;
  u_xlat78 = min(x_3601, x_3603);
  let x_3605 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_3605));
  let x_3609 : f32 = u_xlat4.x;
  let x_3612 : f32 = x_130.x_AdditionalShadowFadeParams.x;
  let x_3615 : f32 = x_130.x_AdditionalShadowFadeParams.y;
  u_xlat79 = ((x_3609 * x_3612) + x_3615);
  let x_3617 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3617, 0.0f, 1.0f);
  let x_3620 : f32 = x_3247.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3622 : f32 = x_3247.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3624 : f32 = x_3247.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3626 : f32 = x_3247.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3627 : vec4<f32> = vec4<f32>(x_3620, x_3622, x_3624, x_3626);
  let x_3633 : vec4<bool> = (vec4<f32>(x_3627.x, x_3627.y, x_3627.z, x_3627.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb33 = vec2<bool>(x_3633.x, x_3633.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3645 : u32 = u_xlatu_loop_1;
    let x_3646 : u32 = u_xlatu78;
    if ((x_3645 < x_3646)) {
    } else {
      break;
    }
    let x_3649 : u32 = u_xlatu_loop_1;
    u_xlatu4 = (x_3649 >> 2u);
    let x_3652 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_3652 & 3u));
    let x_3655 : u32 = u_xlatu4;
    let x_3658 : vec4<f32> = x_1749.unity_LightIndices[bitcast<i32>(x_3655)];
    let x_3668 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3673 : vec4<u32> = indexable[x_3668];
    u_xlat4.x = dot(x_3658, bitcast<vec4<f32>>(x_3673));
    let x_3679 : f32 = u_xlat4.x;
    u_xlati4 = i32(x_3679);
    let x_3681 : vec3<f32> = vs_INTERP8;
    let x_3692 : i32 = u_xlati4;
    let x_3694 : vec4<f32> = x_3691.x_AdditionalLightsPosition[x_3692];
    let x_3697 : i32 = u_xlati4;
    let x_3699 : vec4<f32> = x_3691.x_AdditionalLightsPosition[x_3697];
    let x_3701 : vec3<f32> = ((-(x_3681) * vec3<f32>(x_3694.w, x_3694.w, x_3694.w)) + vec3<f32>(x_3699.x, x_3699.y, x_3699.z));
    let x_3702 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3701.x, x_3701.y, x_3701.z, x_3702.w);
    let x_3705 : vec4<f32> = u_xlat9;
    let x_3707 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_3705.x, x_3705.y, x_3705.z), vec3<f32>(x_3707.x, x_3707.y, x_3707.z));
    let x_3710 : f32 = u_xlat83;
    u_xlat83 = max(x_3710, 0.00006103515625f);
    let x_3713 : f32 = u_xlat83;
    u_xlat85 = inverseSqrt(x_3713);
    let x_3715 : f32 = u_xlat85;
    let x_3717 : vec4<f32> = u_xlat9;
    let x_3719 : vec3<f32> = (vec3<f32>(x_3715, x_3715, x_3715) * vec3<f32>(x_3717.x, x_3717.y, x_3717.z));
    let x_3720 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3719.x, x_3719.y, x_3719.z, x_3720.w);
    let x_3723 : f32 = u_xlat83;
    u_xlat86 = (1.0f / x_3723);
    let x_3725 : f32 = u_xlat83;
    let x_3726 : i32 = u_xlati4;
    let x_3728 : f32 = x_3691.x_AdditionalLightsAttenuation[x_3726].x;
    u_xlat83 = (x_3725 * x_3728);
    let x_3730 : f32 = u_xlat83;
    let x_3732 : f32 = u_xlat83;
    u_xlat83 = ((-(x_3730) * x_3732) + 1.0f);
    let x_3735 : f32 = u_xlat83;
    u_xlat83 = max(x_3735, 0.0f);
    let x_3737 : f32 = u_xlat83;
    let x_3738 : f32 = u_xlat83;
    u_xlat83 = (x_3737 * x_3738);
    let x_3740 : f32 = u_xlat83;
    let x_3741 : f32 = u_xlat86;
    u_xlat83 = (x_3740 * x_3741);
    let x_3743 : i32 = u_xlati4;
    let x_3745 : vec4<f32> = x_3691.x_AdditionalLightsSpotDir[x_3743];
    let x_3747 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_3745.x, x_3745.y, x_3745.z), vec3<f32>(x_3747.x, x_3747.y, x_3747.z));
    let x_3750 : f32 = u_xlat86;
    let x_3751 : i32 = u_xlati4;
    let x_3753 : f32 = x_3691.x_AdditionalLightsAttenuation[x_3751].z;
    let x_3755 : i32 = u_xlati4;
    let x_3757 : f32 = x_3691.x_AdditionalLightsAttenuation[x_3755].w;
    u_xlat86 = ((x_3750 * x_3753) + x_3757);
    let x_3759 : f32 = u_xlat86;
    u_xlat86 = clamp(x_3759, 0.0f, 1.0f);
    let x_3761 : f32 = u_xlat86;
    let x_3762 : f32 = u_xlat86;
    u_xlat86 = (x_3761 * x_3762);
    let x_3764 : f32 = u_xlat83;
    let x_3765 : f32 = u_xlat86;
    u_xlat83 = (x_3764 * x_3765);
    let x_3769 : i32 = u_xlati4;
    let x_3771 : f32 = x_130.x_AdditionalShadowParams[x_3769].w;
    u_xlati86 = i32(x_3771);
    let x_3774 : i32 = u_xlati86;
    u_xlatb87 = (x_3774 >= 0i);
    let x_3776 : bool = u_xlatb87;
    if (x_3776) {
      let x_3780 : i32 = u_xlati4;
      let x_3782 : f32 = x_130.x_AdditionalShadowParams[x_3780].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3782, x_3782, x_3782, x_3782))));
      let x_3786 : bool = u_xlatb87;
      if (x_3786) {
        let x_3790 : vec4<f32> = u_xlat10;
        let x_3793 : vec4<f32> = u_xlat10;
        let x_3796 : vec4<bool> = (abs(vec4<f32>(x_3790.z, x_3790.z, x_3790.y, x_3790.z)) >= abs(vec4<f32>(x_3793.x, x_3793.y, x_3793.x, x_3793.x)));
        let x_3797 : vec3<bool> = vec3<bool>(x_3796.x, x_3796.y, x_3796.z);
        let x_3798 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3797.x, x_3797.y, x_3797.z, x_3798.w);
        let x_3801 : bool = u_xlatb11.y;
        let x_3803 : bool = u_xlatb11.x;
        u_xlatb87 = (x_3801 & x_3803);
        let x_3805 : vec4<f32> = u_xlat10;
        let x_3808 : vec4<bool> = (-(vec4<f32>(x_3805.z, x_3805.y, x_3805.z, x_3805.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3809 : vec3<bool> = vec3<bool>(x_3808.x, x_3808.y, x_3808.w);
        let x_3810 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3809.x, x_3809.y, x_3810.z, x_3809.z);
        let x_3813 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3813);
        let x_3818 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3818);
        let x_3823 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_3823);
        let x_3826 : bool = u_xlatb11.z;
        if (x_3826) {
          let x_3831 : f32 = u_xlat11.y;
          x_3827 = x_3831;
        } else {
          let x_3833 : f32 = u_xlat88;
          x_3827 = x_3833;
        }
        let x_3834 : f32 = x_3827;
        u_xlat88 = x_3834;
        let x_3836 : bool = u_xlatb87;
        if (x_3836) {
          let x_3841 : f32 = u_xlat11.x;
          x_3837 = x_3841;
        } else {
          let x_3843 : f32 = u_xlat88;
          x_3837 = x_3843;
        }
        let x_3844 : f32 = x_3837;
        u_xlat87 = x_3844;
        let x_3845 : i32 = u_xlati4;
        let x_3847 : f32 = x_130.x_AdditionalShadowParams[x_3845].w;
        u_xlat88 = trunc(x_3847);
        let x_3849 : f32 = u_xlat87;
        let x_3850 : f32 = u_xlat88;
        u_xlat87 = (x_3849 + x_3850);
        let x_3852 : f32 = u_xlat87;
        u_xlati86 = i32(x_3852);
      }
      let x_3854 : i32 = u_xlati86;
      u_xlati86 = (x_3854 << bitcast<u32>(2i));
      let x_3856 : vec3<f32> = vs_INTERP8;
      let x_3859 : i32 = u_xlati86;
      let x_3862 : i32 = u_xlati86;
      let x_3866 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_3859 + 1i) / 4i)][((x_3862 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3856.y, x_3856.y, x_3856.y, x_3856.y) * x_3866);
      let x_3868 : i32 = u_xlati86;
      let x_3870 : i32 = u_xlati86;
      let x_3873 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[(x_3868 / 4i)][(x_3870 % 4i)];
      let x_3874 : vec3<f32> = vs_INTERP8;
      let x_3877 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3873 * vec4<f32>(x_3874.x, x_3874.x, x_3874.x, x_3874.x)) + x_3877);
      let x_3879 : i32 = u_xlati86;
      let x_3882 : i32 = u_xlati86;
      let x_3886 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_3879 + 2i) / 4i)][((x_3882 + 2i) % 4i)];
      let x_3887 : vec3<f32> = vs_INTERP8;
      let x_3890 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3886 * vec4<f32>(x_3887.z, x_3887.z, x_3887.z, x_3887.z)) + x_3890);
      let x_3892 : vec4<f32> = u_xlat11;
      let x_3893 : i32 = u_xlati86;
      let x_3896 : i32 = u_xlati86;
      let x_3900 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_3893 + 3i) / 4i)][((x_3896 + 3i) % 4i)];
      u_xlat11 = (x_3892 + x_3900);
      let x_3902 : vec4<f32> = u_xlat11;
      let x_3904 : vec4<f32> = u_xlat11;
      let x_3906 : vec3<f32> = (vec3<f32>(x_3902.x, x_3902.y, x_3902.z) / vec3<f32>(x_3904.w, x_3904.w, x_3904.w));
      let x_3907 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3906.x, x_3906.y, x_3906.z, x_3907.w);
      let x_3910 : i32 = u_xlati4;
      let x_3912 : f32 = x_130.x_AdditionalShadowParams[x_3910].y;
      u_xlatb86 = (0.0f < x_3912);
      let x_3914 : bool = u_xlatb86;
      if (x_3914) {
        let x_3917 : i32 = u_xlati4;
        let x_3919 : f32 = x_130.x_AdditionalShadowParams[x_3917].y;
        u_xlatb86 = (1.0f == x_3919);
        let x_3921 : bool = u_xlatb86;
        if (x_3921) {
          let x_3924 : vec4<f32> = u_xlat11;
          let x_3928 : vec4<f32> = x_130.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3924.x, x_3924.y, x_3924.x, x_3924.y) + x_3928);
          let x_3931 : vec4<f32> = u_xlat12;
          let x_3932 : vec2<f32> = vec2<f32>(x_3931.x, x_3931.y);
          let x_3934 : f32 = u_xlat11.z;
          txVec60 = vec3<f32>(x_3932.x, x_3932.y, x_3934);
          let x_3942 : vec3<f32> = txVec60;
          let x_3944 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3942.xy, x_3942.z);
          u_xlat13.x = x_3944;
          let x_3947 : vec4<f32> = u_xlat12;
          let x_3948 : vec2<f32> = vec2<f32>(x_3947.z, x_3947.w);
          let x_3950 : f32 = u_xlat11.z;
          txVec61 = vec3<f32>(x_3948.x, x_3948.y, x_3950);
          let x_3957 : vec3<f32> = txVec61;
          let x_3959 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3957.xy, x_3957.z);
          u_xlat13.y = x_3959;
          let x_3961 : vec4<f32> = u_xlat11;
          let x_3965 : vec4<f32> = x_130.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3961.x, x_3961.y, x_3961.x, x_3961.y) + x_3965);
          let x_3968 : vec4<f32> = u_xlat12;
          let x_3969 : vec2<f32> = vec2<f32>(x_3968.x, x_3968.y);
          let x_3971 : f32 = u_xlat11.z;
          txVec62 = vec3<f32>(x_3969.x, x_3969.y, x_3971);
          let x_3978 : vec3<f32> = txVec62;
          let x_3980 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3978.xy, x_3978.z);
          u_xlat13.z = x_3980;
          let x_3983 : vec4<f32> = u_xlat12;
          let x_3984 : vec2<f32> = vec2<f32>(x_3983.z, x_3983.w);
          let x_3986 : f32 = u_xlat11.z;
          txVec63 = vec3<f32>(x_3984.x, x_3984.y, x_3986);
          let x_3993 : vec3<f32> = txVec63;
          let x_3995 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3993.xy, x_3993.z);
          u_xlat13.w = x_3995;
          let x_3997 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_3997, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_4000 : i32 = u_xlati4;
          let x_4002 : f32 = x_130.x_AdditionalShadowParams[x_4000].y;
          u_xlatb87 = (2.0f == x_4002);
          let x_4004 : bool = u_xlatb87;
          if (x_4004) {
            let x_4007 : vec4<f32> = u_xlat11;
            let x_4011 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4014 : vec2<f32> = ((vec2<f32>(x_4007.x, x_4007.y) * vec2<f32>(x_4011.z, x_4011.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4015 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4014.x, x_4014.y, x_4015.z, x_4015.w);
            let x_4017 : vec4<f32> = u_xlat12;
            let x_4019 : vec2<f32> = floor(vec2<f32>(x_4017.x, x_4017.y));
            let x_4020 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4019.x, x_4019.y, x_4020.z, x_4020.w);
            let x_4023 : vec4<f32> = u_xlat11;
            let x_4026 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4029 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4023.x, x_4023.y) * vec2<f32>(x_4026.z, x_4026.w)) + -(vec2<f32>(x_4029.x, x_4029.y)));
            let x_4033 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4033.x, x_4033.x, x_4033.y, x_4033.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4036 : vec4<f32> = u_xlat13;
            let x_4038 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4036.x, x_4036.x, x_4036.z, x_4036.z) * vec4<f32>(x_4038.x, x_4038.x, x_4038.z, x_4038.z));
            let x_4041 : vec4<f32> = u_xlat14;
            let x_4043 : vec2<f32> = (vec2<f32>(x_4041.y, x_4041.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_4044 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4043.x, x_4044.y, x_4043.y, x_4044.w);
            let x_4046 : vec4<f32> = u_xlat14;
            let x_4049 : vec2<f32> = u_xlat64;
            let x_4051 : vec2<f32> = ((vec2<f32>(x_4046.x, x_4046.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4049));
            let x_4052 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4051.x, x_4051.y, x_4052.z, x_4052.w);
            let x_4054 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_4054) + vec2<f32>(1.0f, 1.0f));
            let x_4057 : vec2<f32> = u_xlat64;
            let x_4058 : vec2<f32> = min(x_4057, vec2<f32>(0.0f, 0.0f));
            let x_4059 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4058.x, x_4058.y, x_4059.z, x_4059.w);
            let x_4061 : vec4<f32> = u_xlat15;
            let x_4064 : vec4<f32> = u_xlat15;
            let x_4067 : vec2<f32> = u_xlat66;
            let x_4068 : vec2<f32> = ((-(vec2<f32>(x_4061.x, x_4061.y)) * vec2<f32>(x_4064.x, x_4064.y)) + x_4067);
            let x_4069 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4068.x, x_4068.y, x_4069.z, x_4069.w);
            let x_4071 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_4071, vec2<f32>(0.0f, 0.0f));
            let x_4073 : vec2<f32> = u_xlat64;
            let x_4075 : vec2<f32> = u_xlat64;
            let x_4077 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_4073) * x_4075) + vec2<f32>(x_4077.y, x_4077.w));
            let x_4080 : vec4<f32> = u_xlat15;
            let x_4082 : vec2<f32> = (vec2<f32>(x_4080.x, x_4080.y) + vec2<f32>(1.0f, 1.0f));
            let x_4083 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4082.x, x_4082.y, x_4083.z, x_4083.w);
            let x_4085 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_4085 + vec2<f32>(1.0f, 1.0f));
            let x_4087 : vec4<f32> = u_xlat14;
            let x_4089 : vec2<f32> = (vec2<f32>(x_4087.x, x_4087.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4090 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4089.x, x_4089.y, x_4090.z, x_4090.w);
            let x_4092 : vec2<f32> = u_xlat66;
            let x_4093 : vec2<f32> = (x_4092 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4094 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4093.x, x_4093.y, x_4094.z, x_4094.w);
            let x_4096 : vec4<f32> = u_xlat15;
            let x_4098 : vec2<f32> = (vec2<f32>(x_4096.x, x_4096.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4099 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4098.x, x_4098.y, x_4099.z, x_4099.w);
            let x_4101 : vec2<f32> = u_xlat64;
            let x_4102 : vec2<f32> = (x_4101 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4103 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4102.x, x_4102.y, x_4103.z, x_4103.w);
            let x_4105 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_4105.y, x_4105.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4109 : f32 = u_xlat15.x;
            u_xlat16.z = x_4109;
            let x_4112 : f32 = u_xlat64.x;
            u_xlat16.w = x_4112;
            let x_4115 : f32 = u_xlat17.x;
            u_xlat14.z = x_4115;
            let x_4118 : f32 = u_xlat13.x;
            u_xlat14.w = x_4118;
            let x_4120 : vec4<f32> = u_xlat14;
            let x_4122 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_4120.z, x_4120.w, x_4120.x, x_4120.z) + vec4<f32>(x_4122.z, x_4122.w, x_4122.x, x_4122.z));
            let x_4126 : f32 = u_xlat16.y;
            u_xlat15.z = x_4126;
            let x_4129 : f32 = u_xlat64.y;
            u_xlat15.w = x_4129;
            let x_4132 : f32 = u_xlat14.y;
            u_xlat17.z = x_4132;
            let x_4135 : f32 = u_xlat13.z;
            u_xlat17.w = x_4135;
            let x_4137 : vec4<f32> = u_xlat15;
            let x_4139 : vec4<f32> = u_xlat17;
            let x_4141 : vec3<f32> = (vec3<f32>(x_4137.z, x_4137.y, x_4137.w) + vec3<f32>(x_4139.z, x_4139.y, x_4139.w));
            let x_4142 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4141.x, x_4141.y, x_4141.z, x_4142.w);
            let x_4144 : vec4<f32> = u_xlat14;
            let x_4146 : vec4<f32> = u_xlat18;
            let x_4148 : vec3<f32> = (vec3<f32>(x_4144.x, x_4144.z, x_4144.w) / vec3<f32>(x_4146.z, x_4146.w, x_4146.y));
            let x_4149 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4148.x, x_4148.y, x_4148.z, x_4149.w);
            let x_4151 : vec4<f32> = u_xlat14;
            let x_4153 : vec3<f32> = (vec3<f32>(x_4151.x, x_4151.y, x_4151.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4154 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4153.x, x_4153.y, x_4153.z, x_4154.w);
            let x_4156 : vec4<f32> = u_xlat17;
            let x_4158 : vec4<f32> = u_xlat13;
            let x_4160 : vec3<f32> = (vec3<f32>(x_4156.z, x_4156.y, x_4156.w) / vec3<f32>(x_4158.x, x_4158.y, x_4158.z));
            let x_4161 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4160.x, x_4160.y, x_4160.z, x_4161.w);
            let x_4163 : vec4<f32> = u_xlat15;
            let x_4165 : vec3<f32> = (vec3<f32>(x_4163.x, x_4163.y, x_4163.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4166 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4165.x, x_4165.y, x_4165.z, x_4166.w);
            let x_4168 : vec4<f32> = u_xlat14;
            let x_4171 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4173 : vec3<f32> = (vec3<f32>(x_4168.y, x_4168.x, x_4168.z) * vec3<f32>(x_4171.x, x_4171.x, x_4171.x));
            let x_4174 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4173.x, x_4173.y, x_4173.z, x_4174.w);
            let x_4176 : vec4<f32> = u_xlat15;
            let x_4179 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4181 : vec3<f32> = (vec3<f32>(x_4176.x, x_4176.y, x_4176.z) * vec3<f32>(x_4179.y, x_4179.y, x_4179.y));
            let x_4182 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4181.x, x_4181.y, x_4181.z, x_4182.w);
            let x_4185 : f32 = u_xlat15.x;
            u_xlat14.w = x_4185;
            let x_4187 : vec4<f32> = u_xlat12;
            let x_4190 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4193 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4187.x, x_4187.y, x_4187.x, x_4187.y) * vec4<f32>(x_4190.x, x_4190.y, x_4190.x, x_4190.y)) + vec4<f32>(x_4193.y, x_4193.w, x_4193.x, x_4193.w));
            let x_4196 : vec4<f32> = u_xlat12;
            let x_4199 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4202 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4196.x, x_4196.y) * vec2<f32>(x_4199.x, x_4199.y)) + vec2<f32>(x_4202.z, x_4202.w));
            let x_4206 : f32 = u_xlat14.y;
            u_xlat15.w = x_4206;
            let x_4208 : vec4<f32> = u_xlat15;
            let x_4209 : vec2<f32> = vec2<f32>(x_4208.y, x_4208.z);
            let x_4210 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4210.x, x_4209.x, x_4210.z, x_4209.y);
            let x_4212 : vec4<f32> = u_xlat12;
            let x_4215 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4218 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_4212.x, x_4212.y, x_4212.x, x_4212.y) * vec4<f32>(x_4215.x, x_4215.y, x_4215.x, x_4215.y)) + vec4<f32>(x_4218.x, x_4218.y, x_4218.z, x_4218.y));
            let x_4221 : vec4<f32> = u_xlat12;
            let x_4224 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4227 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4221.x, x_4221.y, x_4221.x, x_4221.y) * vec4<f32>(x_4224.x, x_4224.y, x_4224.x, x_4224.y)) + vec4<f32>(x_4227.w, x_4227.y, x_4227.w, x_4227.z));
            let x_4230 : vec4<f32> = u_xlat12;
            let x_4233 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4236 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4230.x, x_4230.y, x_4230.x, x_4230.y) * vec4<f32>(x_4233.x, x_4233.y, x_4233.x, x_4233.y)) + vec4<f32>(x_4236.x, x_4236.w, x_4236.z, x_4236.w));
            let x_4239 : vec4<f32> = u_xlat13;
            let x_4241 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_4239.x, x_4239.x, x_4239.x, x_4239.y) * vec4<f32>(x_4241.z, x_4241.w, x_4241.y, x_4241.z));
            let x_4244 : vec4<f32> = u_xlat13;
            let x_4246 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_4244.y, x_4244.y, x_4244.z, x_4244.z) * x_4246);
            let x_4249 : f32 = u_xlat13.z;
            let x_4251 : f32 = u_xlat18.y;
            u_xlat87 = (x_4249 * x_4251);
            let x_4254 : vec4<f32> = u_xlat16;
            let x_4255 : vec2<f32> = vec2<f32>(x_4254.x, x_4254.y);
            let x_4257 : f32 = u_xlat11.z;
            txVec64 = vec3<f32>(x_4255.x, x_4255.y, x_4257);
            let x_4264 : vec3<f32> = txVec64;
            let x_4266 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4264.xy, x_4264.z);
            u_xlat88 = x_4266;
            let x_4268 : vec4<f32> = u_xlat16;
            let x_4269 : vec2<f32> = vec2<f32>(x_4268.z, x_4268.w);
            let x_4271 : f32 = u_xlat11.z;
            txVec65 = vec3<f32>(x_4269.x, x_4269.y, x_4271);
            let x_4279 : vec3<f32> = txVec65;
            let x_4281 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4279.xy, x_4279.z);
            u_xlat89 = x_4281;
            let x_4282 : f32 = u_xlat89;
            let x_4284 : f32 = u_xlat19.y;
            u_xlat89 = (x_4282 * x_4284);
            let x_4287 : f32 = u_xlat19.x;
            let x_4288 : f32 = u_xlat88;
            let x_4290 : f32 = u_xlat89;
            u_xlat88 = ((x_4287 * x_4288) + x_4290);
            let x_4293 : vec2<f32> = u_xlat64;
            let x_4295 : f32 = u_xlat11.z;
            txVec66 = vec3<f32>(x_4293.x, x_4293.y, x_4295);
            let x_4302 : vec3<f32> = txVec66;
            let x_4304 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4302.xy, x_4302.z);
            u_xlat89 = x_4304;
            let x_4306 : f32 = u_xlat19.z;
            let x_4307 : f32 = u_xlat89;
            let x_4309 : f32 = u_xlat88;
            u_xlat88 = ((x_4306 * x_4307) + x_4309);
            let x_4312 : vec4<f32> = u_xlat15;
            let x_4313 : vec2<f32> = vec2<f32>(x_4312.x, x_4312.y);
            let x_4315 : f32 = u_xlat11.z;
            txVec67 = vec3<f32>(x_4313.x, x_4313.y, x_4315);
            let x_4322 : vec3<f32> = txVec67;
            let x_4324 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4322.xy, x_4322.z);
            u_xlat89 = x_4324;
            let x_4326 : f32 = u_xlat19.w;
            let x_4327 : f32 = u_xlat89;
            let x_4329 : f32 = u_xlat88;
            u_xlat88 = ((x_4326 * x_4327) + x_4329);
            let x_4332 : vec4<f32> = u_xlat17;
            let x_4333 : vec2<f32> = vec2<f32>(x_4332.x, x_4332.y);
            let x_4335 : f32 = u_xlat11.z;
            txVec68 = vec3<f32>(x_4333.x, x_4333.y, x_4335);
            let x_4342 : vec3<f32> = txVec68;
            let x_4344 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4342.xy, x_4342.z);
            u_xlat89 = x_4344;
            let x_4346 : f32 = u_xlat20.x;
            let x_4347 : f32 = u_xlat89;
            let x_4349 : f32 = u_xlat88;
            u_xlat88 = ((x_4346 * x_4347) + x_4349);
            let x_4352 : vec4<f32> = u_xlat17;
            let x_4353 : vec2<f32> = vec2<f32>(x_4352.z, x_4352.w);
            let x_4355 : f32 = u_xlat11.z;
            txVec69 = vec3<f32>(x_4353.x, x_4353.y, x_4355);
            let x_4362 : vec3<f32> = txVec69;
            let x_4364 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4362.xy, x_4362.z);
            u_xlat89 = x_4364;
            let x_4366 : f32 = u_xlat20.y;
            let x_4367 : f32 = u_xlat89;
            let x_4369 : f32 = u_xlat88;
            u_xlat88 = ((x_4366 * x_4367) + x_4369);
            let x_4372 : vec4<f32> = u_xlat15;
            let x_4373 : vec2<f32> = vec2<f32>(x_4372.z, x_4372.w);
            let x_4375 : f32 = u_xlat11.z;
            txVec70 = vec3<f32>(x_4373.x, x_4373.y, x_4375);
            let x_4382 : vec3<f32> = txVec70;
            let x_4384 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4382.xy, x_4382.z);
            u_xlat89 = x_4384;
            let x_4386 : f32 = u_xlat20.z;
            let x_4387 : f32 = u_xlat89;
            let x_4389 : f32 = u_xlat88;
            u_xlat88 = ((x_4386 * x_4387) + x_4389);
            let x_4392 : vec4<f32> = u_xlat14;
            let x_4393 : vec2<f32> = vec2<f32>(x_4392.x, x_4392.y);
            let x_4395 : f32 = u_xlat11.z;
            txVec71 = vec3<f32>(x_4393.x, x_4393.y, x_4395);
            let x_4402 : vec3<f32> = txVec71;
            let x_4404 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4402.xy, x_4402.z);
            u_xlat89 = x_4404;
            let x_4406 : f32 = u_xlat20.w;
            let x_4407 : f32 = u_xlat89;
            let x_4409 : f32 = u_xlat88;
            u_xlat88 = ((x_4406 * x_4407) + x_4409);
            let x_4412 : vec4<f32> = u_xlat14;
            let x_4413 : vec2<f32> = vec2<f32>(x_4412.z, x_4412.w);
            let x_4415 : f32 = u_xlat11.z;
            txVec72 = vec3<f32>(x_4413.x, x_4413.y, x_4415);
            let x_4422 : vec3<f32> = txVec72;
            let x_4424 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4422.xy, x_4422.z);
            u_xlat89 = x_4424;
            let x_4425 : f32 = u_xlat87;
            let x_4426 : f32 = u_xlat89;
            let x_4428 : f32 = u_xlat88;
            u_xlat86 = ((x_4425 * x_4426) + x_4428);
          } else {
            let x_4431 : vec4<f32> = u_xlat11;
            let x_4434 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4437 : vec2<f32> = ((vec2<f32>(x_4431.x, x_4431.y) * vec2<f32>(x_4434.z, x_4434.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4438 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4437.x, x_4437.y, x_4438.z, x_4438.w);
            let x_4440 : vec4<f32> = u_xlat12;
            let x_4442 : vec2<f32> = floor(vec2<f32>(x_4440.x, x_4440.y));
            let x_4443 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4442.x, x_4442.y, x_4443.z, x_4443.w);
            let x_4445 : vec4<f32> = u_xlat11;
            let x_4448 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4451 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4445.x, x_4445.y) * vec2<f32>(x_4448.z, x_4448.w)) + -(vec2<f32>(x_4451.x, x_4451.y)));
            let x_4455 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4455.x, x_4455.x, x_4455.y, x_4455.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4458 : vec4<f32> = u_xlat13;
            let x_4460 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4458.x, x_4458.x, x_4458.z, x_4458.z) * vec4<f32>(x_4460.x, x_4460.x, x_4460.z, x_4460.z));
            let x_4463 : vec4<f32> = u_xlat14;
            let x_4465 : vec2<f32> = (vec2<f32>(x_4463.y, x_4463.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4466 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4466.x, x_4465.x, x_4466.z, x_4465.y);
            let x_4468 : vec4<f32> = u_xlat14;
            let x_4471 : vec2<f32> = u_xlat64;
            let x_4473 : vec2<f32> = ((vec2<f32>(x_4468.x, x_4468.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4471));
            let x_4474 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4473.x, x_4474.y, x_4473.y, x_4474.w);
            let x_4476 : vec2<f32> = u_xlat64;
            let x_4478 : vec2<f32> = (-(x_4476) + vec2<f32>(1.0f, 1.0f));
            let x_4479 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4478.x, x_4478.y, x_4479.z, x_4479.w);
            let x_4481 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_4481, vec2<f32>(0.0f, 0.0f));
            let x_4483 : vec2<f32> = u_xlat66;
            let x_4485 : vec2<f32> = u_xlat66;
            let x_4487 : vec4<f32> = u_xlat14;
            let x_4489 : vec2<f32> = ((-(x_4483) * x_4485) + vec2<f32>(x_4487.x, x_4487.y));
            let x_4490 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4489.x, x_4489.y, x_4490.z, x_4490.w);
            let x_4492 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_4492, vec2<f32>(0.0f, 0.0f));
            let x_4495 : vec2<f32> = u_xlat66;
            let x_4497 : vec2<f32> = u_xlat66;
            let x_4499 : vec4<f32> = u_xlat13;
            let x_4501 : vec2<f32> = ((-(x_4495) * x_4497) + vec2<f32>(x_4499.y, x_4499.w));
            let x_4502 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_4501.x, x_4502.y, x_4501.y);
            let x_4504 : vec4<f32> = u_xlat14;
            let x_4506 : vec2<f32> = (vec2<f32>(x_4504.x, x_4504.y) + vec2<f32>(2.0f, 2.0f));
            let x_4507 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4506.x, x_4506.y, x_4507.z, x_4507.w);
            let x_4509 : vec3<f32> = u_xlat39;
            let x_4511 : vec2<f32> = (vec2<f32>(x_4509.x, x_4509.z) + vec2<f32>(2.0f, 2.0f));
            let x_4512 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4512.x, x_4511.x, x_4512.z, x_4511.y);
            let x_4515 : f32 = u_xlat13.y;
            u_xlat16.z = (x_4515 * 0.08163200318813323975f);
            let x_4518 : vec4<f32> = u_xlat13;
            let x_4520 : vec3<f32> = (vec3<f32>(x_4518.z, x_4518.x, x_4518.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4521 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4520.x, x_4520.y, x_4520.z, x_4521.w);
            let x_4523 : vec4<f32> = u_xlat14;
            let x_4525 : vec2<f32> = (vec2<f32>(x_4523.x, x_4523.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4526 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4525.x, x_4525.y, x_4526.z, x_4526.w);
            let x_4529 : f32 = u_xlat17.y;
            u_xlat16.x = x_4529;
            let x_4531 : vec2<f32> = u_xlat64;
            let x_4534 : vec2<f32> = ((vec2<f32>(x_4531.x, x_4531.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4535 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4535.x, x_4534.x, x_4535.z, x_4534.y);
            let x_4537 : vec2<f32> = u_xlat64;
            let x_4540 : vec2<f32> = ((vec2<f32>(x_4537.x, x_4537.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4541 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4540.x, x_4541.y, x_4540.y, x_4541.w);
            let x_4544 : f32 = u_xlat13.x;
            u_xlat14.y = x_4544;
            let x_4547 : f32 = u_xlat15.y;
            u_xlat14.w = x_4547;
            let x_4549 : vec4<f32> = u_xlat14;
            let x_4550 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4549 + x_4550);
            let x_4552 : vec2<f32> = u_xlat64;
            let x_4555 : vec2<f32> = ((vec2<f32>(x_4552.y, x_4552.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4556 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4556.x, x_4555.x, x_4556.z, x_4555.y);
            let x_4558 : vec2<f32> = u_xlat64;
            let x_4561 : vec2<f32> = ((vec2<f32>(x_4558.y, x_4558.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4562 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4561.x, x_4562.y, x_4561.y, x_4562.w);
            let x_4565 : f32 = u_xlat13.y;
            u_xlat15.y = x_4565;
            let x_4567 : vec4<f32> = u_xlat15;
            let x_4568 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4567 + x_4568);
            let x_4570 : vec4<f32> = u_xlat14;
            let x_4571 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_4570 / x_4571);
            let x_4573 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4573 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4575 : vec4<f32> = u_xlat15;
            let x_4576 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_4575 / x_4576);
            let x_4578 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4578 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4580 : vec4<f32> = u_xlat14;
            let x_4583 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4580.w, x_4580.x, x_4580.y, x_4580.z) * vec4<f32>(x_4583.x, x_4583.x, x_4583.x, x_4583.x));
            let x_4586 : vec4<f32> = u_xlat15;
            let x_4589 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_4586.x, x_4586.w, x_4586.y, x_4586.z) * vec4<f32>(x_4589.y, x_4589.y, x_4589.y, x_4589.y));
            let x_4592 : vec4<f32> = u_xlat14;
            let x_4593 : vec3<f32> = vec3<f32>(x_4592.y, x_4592.z, x_4592.w);
            let x_4594 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4593.x, x_4594.y, x_4593.y, x_4593.z);
            let x_4597 : f32 = u_xlat15.x;
            u_xlat17.y = x_4597;
            let x_4599 : vec4<f32> = u_xlat12;
            let x_4602 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4605 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4599.x, x_4599.y, x_4599.x, x_4599.y) * vec4<f32>(x_4602.x, x_4602.y, x_4602.x, x_4602.y)) + vec4<f32>(x_4605.x, x_4605.y, x_4605.z, x_4605.y));
            let x_4608 : vec4<f32> = u_xlat12;
            let x_4611 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4614 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_4608.x, x_4608.y) * vec2<f32>(x_4611.x, x_4611.y)) + vec2<f32>(x_4614.w, x_4614.y));
            let x_4618 : f32 = u_xlat17.y;
            u_xlat14.y = x_4618;
            let x_4621 : f32 = u_xlat15.z;
            u_xlat17.y = x_4621;
            let x_4623 : vec4<f32> = u_xlat12;
            let x_4626 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4629 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_4623.x, x_4623.y, x_4623.x, x_4623.y) * vec4<f32>(x_4626.x, x_4626.y, x_4626.x, x_4626.y)) + vec4<f32>(x_4629.x, x_4629.y, x_4629.z, x_4629.y));
            let x_4632 : vec4<f32> = u_xlat12;
            let x_4635 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4638 : vec4<f32> = u_xlat17;
            let x_4640 : vec2<f32> = ((vec2<f32>(x_4632.x, x_4632.y) * vec2<f32>(x_4635.x, x_4635.y)) + vec2<f32>(x_4638.w, x_4638.y));
            let x_4641 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_4640.x, x_4640.y, x_4641.z, x_4641.w);
            let x_4644 : f32 = u_xlat17.y;
            u_xlat14.z = x_4644;
            let x_4646 : vec4<f32> = u_xlat12;
            let x_4649 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4652 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4646.x, x_4646.y, x_4646.x, x_4646.y) * vec4<f32>(x_4649.x, x_4649.y, x_4649.x, x_4649.y)) + vec4<f32>(x_4652.x, x_4652.y, x_4652.x, x_4652.z));
            let x_4656 : f32 = u_xlat15.w;
            u_xlat17.y = x_4656;
            let x_4659 : vec4<f32> = u_xlat12;
            let x_4662 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4665 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4659.x, x_4659.y, x_4659.x, x_4659.y) * vec4<f32>(x_4662.x, x_4662.y, x_4662.x, x_4662.y)) + vec4<f32>(x_4665.x, x_4665.y, x_4665.z, x_4665.y));
            let x_4669 : vec4<f32> = u_xlat12;
            let x_4672 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4675 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_4669.x, x_4669.y) * vec2<f32>(x_4672.x, x_4672.y)) + vec2<f32>(x_4675.w, x_4675.y));
            let x_4679 : f32 = u_xlat17.y;
            u_xlat14.w = x_4679;
            let x_4682 : vec4<f32> = u_xlat12;
            let x_4685 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4688 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4682.x, x_4682.y) * vec2<f32>(x_4685.x, x_4685.y)) + vec2<f32>(x_4688.x, x_4688.w));
            let x_4691 : vec4<f32> = u_xlat17;
            let x_4692 : vec3<f32> = vec3<f32>(x_4691.x, x_4691.z, x_4691.w);
            let x_4693 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4692.x, x_4693.y, x_4692.y, x_4692.z);
            let x_4695 : vec4<f32> = u_xlat12;
            let x_4698 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4701 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4695.x, x_4695.y, x_4695.x, x_4695.y) * vec4<f32>(x_4698.x, x_4698.y, x_4698.x, x_4698.y)) + vec4<f32>(x_4701.x, x_4701.y, x_4701.z, x_4701.y));
            let x_4705 : vec4<f32> = u_xlat12;
            let x_4708 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4711 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4705.x, x_4705.y) * vec2<f32>(x_4708.x, x_4708.y)) + vec2<f32>(x_4711.w, x_4711.y));
            let x_4715 : f32 = u_xlat14.x;
            u_xlat15.x = x_4715;
            let x_4717 : vec4<f32> = u_xlat12;
            let x_4720 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4723 : vec4<f32> = u_xlat15;
            let x_4725 : vec2<f32> = ((vec2<f32>(x_4717.x, x_4717.y) * vec2<f32>(x_4720.x, x_4720.y)) + vec2<f32>(x_4723.x, x_4723.y));
            let x_4726 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4725.x, x_4725.y, x_4726.z, x_4726.w);
            let x_4729 : vec4<f32> = u_xlat13;
            let x_4731 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4729.x, x_4729.x, x_4729.x, x_4729.x) * x_4731);
            let x_4734 : vec4<f32> = u_xlat13;
            let x_4736 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4734.y, x_4734.y, x_4734.y, x_4734.y) * x_4736);
            let x_4739 : vec4<f32> = u_xlat13;
            let x_4741 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4739.z, x_4739.z, x_4739.z, x_4739.z) * x_4741);
            let x_4743 : vec4<f32> = u_xlat13;
            let x_4745 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4743.w, x_4743.w, x_4743.w, x_4743.w) * x_4745);
            let x_4748 : vec4<f32> = u_xlat18;
            let x_4749 : vec2<f32> = vec2<f32>(x_4748.x, x_4748.y);
            let x_4751 : f32 = u_xlat11.z;
            txVec73 = vec3<f32>(x_4749.x, x_4749.y, x_4751);
            let x_4758 : vec3<f32> = txVec73;
            let x_4760 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4758.xy, x_4758.z);
            u_xlat87 = x_4760;
            let x_4762 : vec4<f32> = u_xlat18;
            let x_4763 : vec2<f32> = vec2<f32>(x_4762.z, x_4762.w);
            let x_4765 : f32 = u_xlat11.z;
            txVec74 = vec3<f32>(x_4763.x, x_4763.y, x_4765);
            let x_4772 : vec3<f32> = txVec74;
            let x_4774 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4772.xy, x_4772.z);
            u_xlat88 = x_4774;
            let x_4775 : f32 = u_xlat88;
            let x_4777 : f32 = u_xlat23.y;
            u_xlat88 = (x_4775 * x_4777);
            let x_4780 : f32 = u_xlat23.x;
            let x_4781 : f32 = u_xlat87;
            let x_4783 : f32 = u_xlat88;
            u_xlat87 = ((x_4780 * x_4781) + x_4783);
            let x_4786 : vec2<f32> = u_xlat64;
            let x_4788 : f32 = u_xlat11.z;
            txVec75 = vec3<f32>(x_4786.x, x_4786.y, x_4788);
            let x_4795 : vec3<f32> = txVec75;
            let x_4797 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4795.xy, x_4795.z);
            u_xlat88 = x_4797;
            let x_4799 : f32 = u_xlat23.z;
            let x_4800 : f32 = u_xlat88;
            let x_4802 : f32 = u_xlat87;
            u_xlat87 = ((x_4799 * x_4800) + x_4802);
            let x_4805 : vec4<f32> = u_xlat21;
            let x_4806 : vec2<f32> = vec2<f32>(x_4805.x, x_4805.y);
            let x_4808 : f32 = u_xlat11.z;
            txVec76 = vec3<f32>(x_4806.x, x_4806.y, x_4808);
            let x_4815 : vec3<f32> = txVec76;
            let x_4817 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4815.xy, x_4815.z);
            u_xlat88 = x_4817;
            let x_4819 : f32 = u_xlat23.w;
            let x_4820 : f32 = u_xlat88;
            let x_4822 : f32 = u_xlat87;
            u_xlat87 = ((x_4819 * x_4820) + x_4822);
            let x_4825 : vec4<f32> = u_xlat19;
            let x_4826 : vec2<f32> = vec2<f32>(x_4825.x, x_4825.y);
            let x_4828 : f32 = u_xlat11.z;
            txVec77 = vec3<f32>(x_4826.x, x_4826.y, x_4828);
            let x_4835 : vec3<f32> = txVec77;
            let x_4837 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4835.xy, x_4835.z);
            u_xlat88 = x_4837;
            let x_4839 : f32 = u_xlat24.x;
            let x_4840 : f32 = u_xlat88;
            let x_4842 : f32 = u_xlat87;
            u_xlat87 = ((x_4839 * x_4840) + x_4842);
            let x_4845 : vec4<f32> = u_xlat19;
            let x_4846 : vec2<f32> = vec2<f32>(x_4845.z, x_4845.w);
            let x_4848 : f32 = u_xlat11.z;
            txVec78 = vec3<f32>(x_4846.x, x_4846.y, x_4848);
            let x_4855 : vec3<f32> = txVec78;
            let x_4857 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4855.xy, x_4855.z);
            u_xlat88 = x_4857;
            let x_4859 : f32 = u_xlat24.y;
            let x_4860 : f32 = u_xlat88;
            let x_4862 : f32 = u_xlat87;
            u_xlat87 = ((x_4859 * x_4860) + x_4862);
            let x_4865 : vec4<f32> = u_xlat20;
            let x_4866 : vec2<f32> = vec2<f32>(x_4865.x, x_4865.y);
            let x_4868 : f32 = u_xlat11.z;
            txVec79 = vec3<f32>(x_4866.x, x_4866.y, x_4868);
            let x_4875 : vec3<f32> = txVec79;
            let x_4877 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4875.xy, x_4875.z);
            u_xlat88 = x_4877;
            let x_4879 : f32 = u_xlat24.z;
            let x_4880 : f32 = u_xlat88;
            let x_4882 : f32 = u_xlat87;
            u_xlat87 = ((x_4879 * x_4880) + x_4882);
            let x_4885 : vec4<f32> = u_xlat21;
            let x_4886 : vec2<f32> = vec2<f32>(x_4885.z, x_4885.w);
            let x_4888 : f32 = u_xlat11.z;
            txVec80 = vec3<f32>(x_4886.x, x_4886.y, x_4888);
            let x_4895 : vec3<f32> = txVec80;
            let x_4897 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4895.xy, x_4895.z);
            u_xlat88 = x_4897;
            let x_4899 : f32 = u_xlat24.w;
            let x_4900 : f32 = u_xlat88;
            let x_4902 : f32 = u_xlat87;
            u_xlat87 = ((x_4899 * x_4900) + x_4902);
            let x_4905 : vec4<f32> = u_xlat22;
            let x_4906 : vec2<f32> = vec2<f32>(x_4905.x, x_4905.y);
            let x_4908 : f32 = u_xlat11.z;
            txVec81 = vec3<f32>(x_4906.x, x_4906.y, x_4908);
            let x_4915 : vec3<f32> = txVec81;
            let x_4917 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4915.xy, x_4915.z);
            u_xlat88 = x_4917;
            let x_4919 : f32 = u_xlat25.x;
            let x_4920 : f32 = u_xlat88;
            let x_4922 : f32 = u_xlat87;
            u_xlat87 = ((x_4919 * x_4920) + x_4922);
            let x_4925 : vec4<f32> = u_xlat22;
            let x_4926 : vec2<f32> = vec2<f32>(x_4925.z, x_4925.w);
            let x_4928 : f32 = u_xlat11.z;
            txVec82 = vec3<f32>(x_4926.x, x_4926.y, x_4928);
            let x_4935 : vec3<f32> = txVec82;
            let x_4937 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4935.xy, x_4935.z);
            u_xlat88 = x_4937;
            let x_4939 : f32 = u_xlat25.y;
            let x_4940 : f32 = u_xlat88;
            let x_4942 : f32 = u_xlat87;
            u_xlat87 = ((x_4939 * x_4940) + x_4942);
            let x_4945 : vec2<f32> = u_xlat40;
            let x_4947 : f32 = u_xlat11.z;
            txVec83 = vec3<f32>(x_4945.x, x_4945.y, x_4947);
            let x_4954 : vec3<f32> = txVec83;
            let x_4956 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4954.xy, x_4954.z);
            u_xlat88 = x_4956;
            let x_4958 : f32 = u_xlat25.z;
            let x_4959 : f32 = u_xlat88;
            let x_4961 : f32 = u_xlat87;
            u_xlat87 = ((x_4958 * x_4959) + x_4961);
            let x_4964 : vec2<f32> = u_xlat72;
            let x_4966 : f32 = u_xlat11.z;
            txVec84 = vec3<f32>(x_4964.x, x_4964.y, x_4966);
            let x_4973 : vec3<f32> = txVec84;
            let x_4975 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4973.xy, x_4973.z);
            u_xlat88 = x_4975;
            let x_4977 : f32 = u_xlat25.w;
            let x_4978 : f32 = u_xlat88;
            let x_4980 : f32 = u_xlat87;
            u_xlat87 = ((x_4977 * x_4978) + x_4980);
            let x_4983 : vec4<f32> = u_xlat17;
            let x_4984 : vec2<f32> = vec2<f32>(x_4983.x, x_4983.y);
            let x_4986 : f32 = u_xlat11.z;
            txVec85 = vec3<f32>(x_4984.x, x_4984.y, x_4986);
            let x_4993 : vec3<f32> = txVec85;
            let x_4995 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4993.xy, x_4993.z);
            u_xlat88 = x_4995;
            let x_4997 : f32 = u_xlat13.x;
            let x_4998 : f32 = u_xlat88;
            let x_5000 : f32 = u_xlat87;
            u_xlat87 = ((x_4997 * x_4998) + x_5000);
            let x_5003 : vec4<f32> = u_xlat17;
            let x_5004 : vec2<f32> = vec2<f32>(x_5003.z, x_5003.w);
            let x_5006 : f32 = u_xlat11.z;
            txVec86 = vec3<f32>(x_5004.x, x_5004.y, x_5006);
            let x_5013 : vec3<f32> = txVec86;
            let x_5015 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5013.xy, x_5013.z);
            u_xlat88 = x_5015;
            let x_5017 : f32 = u_xlat13.y;
            let x_5018 : f32 = u_xlat88;
            let x_5020 : f32 = u_xlat87;
            u_xlat87 = ((x_5017 * x_5018) + x_5020);
            let x_5023 : vec2<f32> = u_xlat67;
            let x_5025 : f32 = u_xlat11.z;
            txVec87 = vec3<f32>(x_5023.x, x_5023.y, x_5025);
            let x_5032 : vec3<f32> = txVec87;
            let x_5034 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5032.xy, x_5032.z);
            u_xlat88 = x_5034;
            let x_5036 : f32 = u_xlat13.z;
            let x_5037 : f32 = u_xlat88;
            let x_5039 : f32 = u_xlat87;
            u_xlat87 = ((x_5036 * x_5037) + x_5039);
            let x_5042 : vec4<f32> = u_xlat12;
            let x_5043 : vec2<f32> = vec2<f32>(x_5042.x, x_5042.y);
            let x_5045 : f32 = u_xlat11.z;
            txVec88 = vec3<f32>(x_5043.x, x_5043.y, x_5045);
            let x_5052 : vec3<f32> = txVec88;
            let x_5054 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5052.xy, x_5052.z);
            u_xlat88 = x_5054;
            let x_5056 : f32 = u_xlat13.w;
            let x_5057 : f32 = u_xlat88;
            let x_5059 : f32 = u_xlat87;
            u_xlat86 = ((x_5056 * x_5057) + x_5059);
          }
        }
      } else {
        let x_5063 : vec4<f32> = u_xlat11;
        let x_5064 : vec2<f32> = vec2<f32>(x_5063.x, x_5063.y);
        let x_5066 : f32 = u_xlat11.z;
        txVec89 = vec3<f32>(x_5064.x, x_5064.y, x_5066);
        let x_5073 : vec3<f32> = txVec89;
        let x_5075 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5073.xy, x_5073.z);
        u_xlat86 = x_5075;
      }
      let x_5076 : i32 = u_xlati4;
      let x_5078 : f32 = x_130.x_AdditionalShadowParams[x_5076].x;
      u_xlat87 = (1.0f + -(x_5078));
      let x_5081 : f32 = u_xlat86;
      let x_5082 : i32 = u_xlati4;
      let x_5084 : f32 = x_130.x_AdditionalShadowParams[x_5082].x;
      let x_5086 : f32 = u_xlat87;
      u_xlat86 = ((x_5081 * x_5084) + x_5086);
      let x_5089 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_5089);
      let x_5093 : f32 = u_xlat11.z;
      u_xlatb88 = (x_5093 >= 1.0f);
      let x_5095 : bool = u_xlatb87;
      let x_5096 : bool = u_xlatb88;
      u_xlatb87 = (x_5095 | x_5096);
      let x_5098 : bool = u_xlatb87;
      let x_5099 : f32 = u_xlat86;
      u_xlat86 = select(x_5099, 1.0f, x_5098);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_5102 : f32 = u_xlat86;
    u_xlat87 = (-(x_5102) + 1.0f);
    let x_5105 : f32 = u_xlat79;
    let x_5106 : f32 = u_xlat87;
    let x_5108 : f32 = u_xlat86;
    u_xlat86 = ((x_5105 * x_5106) + x_5108);
    let x_5111 : i32 = u_xlati4;
    u_xlati87 = (1i << bitcast<u32>((x_5111 & 31i)));
    let x_5115 : i32 = u_xlati87;
    let x_5118 : f32 = x_3247.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_5115) & bitcast<u32>(x_5118)));
    let x_5122 : i32 = u_xlati87;
    if ((x_5122 != 0i)) {
      let x_5126 : i32 = u_xlati4;
      let x_5128 : f32 = x_3247.x_AdditionalLightsLightTypes[x_5126].el;
      u_xlati87 = i32(x_5128);
      let x_5131 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_5131 != 0i));
      let x_5135 : i32 = u_xlati4;
      u_xlati11 = (x_5135 << bitcast<u32>(2i));
      let x_5137 : i32 = u_xlati88;
      if ((x_5137 != 0i)) {
        let x_5142 : vec3<f32> = vs_INTERP8;
        let x_5144 : i32 = u_xlati11;
        let x_5147 : i32 = u_xlati11;
        let x_5151 : vec4<f32> = x_3247.x_AdditionalLightsWorldToLights[((x_5144 + 1i) / 4i)][((x_5147 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_5142.y, x_5142.y, x_5142.y) * vec3<f32>(x_5151.x, x_5151.y, x_5151.w));
        let x_5154 : i32 = u_xlati11;
        let x_5156 : i32 = u_xlati11;
        let x_5159 : vec4<f32> = x_3247.x_AdditionalLightsWorldToLights[(x_5154 / 4i)][(x_5156 % 4i)];
        let x_5161 : vec3<f32> = vs_INTERP8;
        let x_5164 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_5159.x, x_5159.y, x_5159.w) * vec3<f32>(x_5161.x, x_5161.x, x_5161.x)) + x_5164);
        let x_5166 : i32 = u_xlati11;
        let x_5169 : i32 = u_xlati11;
        let x_5173 : vec4<f32> = x_3247.x_AdditionalLightsWorldToLights[((x_5166 + 2i) / 4i)][((x_5169 + 2i) % 4i)];
        let x_5175 : vec3<f32> = vs_INTERP8;
        let x_5178 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_5173.x, x_5173.y, x_5173.w) * vec3<f32>(x_5175.z, x_5175.z, x_5175.z)) + x_5178);
        let x_5180 : vec3<f32> = u_xlat37;
        let x_5181 : i32 = u_xlati11;
        let x_5184 : i32 = u_xlati11;
        let x_5188 : vec4<f32> = x_3247.x_AdditionalLightsWorldToLights[((x_5181 + 3i) / 4i)][((x_5184 + 3i) % 4i)];
        u_xlat37 = (x_5180 + vec3<f32>(x_5188.x, x_5188.y, x_5188.w));
        let x_5191 : vec3<f32> = u_xlat37;
        let x_5193 : vec3<f32> = u_xlat37;
        let x_5195 : vec2<f32> = (vec2<f32>(x_5191.x, x_5191.y) / vec2<f32>(x_5193.z, x_5193.z));
        let x_5196 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5195.x, x_5195.y, x_5196.z);
        let x_5198 : vec3<f32> = u_xlat37;
        let x_5201 : vec2<f32> = ((vec2<f32>(x_5198.x, x_5198.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_5202 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5201.x, x_5201.y, x_5202.z);
        let x_5204 : vec3<f32> = u_xlat37;
        let x_5208 : vec2<f32> = clamp(vec2<f32>(x_5204.x, x_5204.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_5209 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5208.x, x_5208.y, x_5209.z);
        let x_5211 : i32 = u_xlati4;
        let x_5213 : vec4<f32> = x_3247.x_AdditionalLightsCookieAtlasUVRects[x_5211];
        let x_5215 : vec3<f32> = u_xlat37;
        let x_5218 : i32 = u_xlati4;
        let x_5220 : vec4<f32> = x_3247.x_AdditionalLightsCookieAtlasUVRects[x_5218];
        let x_5222 : vec2<f32> = ((vec2<f32>(x_5213.x, x_5213.y) * vec2<f32>(x_5215.x, x_5215.y)) + vec2<f32>(x_5220.z, x_5220.w));
        let x_5223 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5222.x, x_5222.y, x_5223.z);
      } else {
        let x_5226 : i32 = u_xlati87;
        u_xlatb87 = (x_5226 == 1i);
        let x_5228 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_5228);
        let x_5230 : i32 = u_xlati87;
        if ((x_5230 != 0i)) {
          let x_5234 : vec3<f32> = vs_INTERP8;
          let x_5236 : i32 = u_xlati11;
          let x_5239 : i32 = u_xlati11;
          let x_5243 : vec4<f32> = x_3247.x_AdditionalLightsWorldToLights[((x_5236 + 1i) / 4i)][((x_5239 + 1i) % 4i)];
          let x_5245 : vec2<f32> = (vec2<f32>(x_5234.y, x_5234.y) * vec2<f32>(x_5243.x, x_5243.y));
          let x_5246 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5245.x, x_5245.y, x_5246.z, x_5246.w);
          let x_5248 : i32 = u_xlati11;
          let x_5250 : i32 = u_xlati11;
          let x_5253 : vec4<f32> = x_3247.x_AdditionalLightsWorldToLights[(x_5248 / 4i)][(x_5250 % 4i)];
          let x_5255 : vec3<f32> = vs_INTERP8;
          let x_5258 : vec4<f32> = u_xlat12;
          let x_5260 : vec2<f32> = ((vec2<f32>(x_5253.x, x_5253.y) * vec2<f32>(x_5255.x, x_5255.x)) + vec2<f32>(x_5258.x, x_5258.y));
          let x_5261 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5260.x, x_5260.y, x_5261.z, x_5261.w);
          let x_5263 : i32 = u_xlati11;
          let x_5266 : i32 = u_xlati11;
          let x_5270 : vec4<f32> = x_3247.x_AdditionalLightsWorldToLights[((x_5263 + 2i) / 4i)][((x_5266 + 2i) % 4i)];
          let x_5272 : vec3<f32> = vs_INTERP8;
          let x_5275 : vec4<f32> = u_xlat12;
          let x_5277 : vec2<f32> = ((vec2<f32>(x_5270.x, x_5270.y) * vec2<f32>(x_5272.z, x_5272.z)) + vec2<f32>(x_5275.x, x_5275.y));
          let x_5278 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5277.x, x_5277.y, x_5278.z, x_5278.w);
          let x_5280 : vec4<f32> = u_xlat12;
          let x_5282 : i32 = u_xlati11;
          let x_5285 : i32 = u_xlati11;
          let x_5289 : vec4<f32> = x_3247.x_AdditionalLightsWorldToLights[((x_5282 + 3i) / 4i)][((x_5285 + 3i) % 4i)];
          let x_5291 : vec2<f32> = (vec2<f32>(x_5280.x, x_5280.y) + vec2<f32>(x_5289.x, x_5289.y));
          let x_5292 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5291.x, x_5291.y, x_5292.z, x_5292.w);
          let x_5294 : vec4<f32> = u_xlat12;
          let x_5297 : vec2<f32> = ((vec2<f32>(x_5294.x, x_5294.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5298 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5297.x, x_5297.y, x_5298.z, x_5298.w);
          let x_5300 : vec4<f32> = u_xlat12;
          let x_5302 : vec2<f32> = fract(vec2<f32>(x_5300.x, x_5300.y));
          let x_5303 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5302.x, x_5302.y, x_5303.z, x_5303.w);
          let x_5305 : i32 = u_xlati4;
          let x_5307 : vec4<f32> = x_3247.x_AdditionalLightsCookieAtlasUVRects[x_5305];
          let x_5309 : vec4<f32> = u_xlat12;
          let x_5312 : i32 = u_xlati4;
          let x_5314 : vec4<f32> = x_3247.x_AdditionalLightsCookieAtlasUVRects[x_5312];
          let x_5316 : vec2<f32> = ((vec2<f32>(x_5307.x, x_5307.y) * vec2<f32>(x_5309.x, x_5309.y)) + vec2<f32>(x_5314.z, x_5314.w));
          let x_5317 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5316.x, x_5316.y, x_5317.z);
        } else {
          let x_5320 : vec3<f32> = vs_INTERP8;
          let x_5322 : i32 = u_xlati11;
          let x_5325 : i32 = u_xlati11;
          let x_5329 : vec4<f32> = x_3247.x_AdditionalLightsWorldToLights[((x_5322 + 1i) / 4i)][((x_5325 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_5320.y, x_5320.y, x_5320.y, x_5320.y) * x_5329);
          let x_5331 : i32 = u_xlati11;
          let x_5333 : i32 = u_xlati11;
          let x_5336 : vec4<f32> = x_3247.x_AdditionalLightsWorldToLights[(x_5331 / 4i)][(x_5333 % 4i)];
          let x_5337 : vec3<f32> = vs_INTERP8;
          let x_5340 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5336 * vec4<f32>(x_5337.x, x_5337.x, x_5337.x, x_5337.x)) + x_5340);
          let x_5342 : i32 = u_xlati11;
          let x_5345 : i32 = u_xlati11;
          let x_5349 : vec4<f32> = x_3247.x_AdditionalLightsWorldToLights[((x_5342 + 2i) / 4i)][((x_5345 + 2i) % 4i)];
          let x_5350 : vec3<f32> = vs_INTERP8;
          let x_5353 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5349 * vec4<f32>(x_5350.z, x_5350.z, x_5350.z, x_5350.z)) + x_5353);
          let x_5355 : vec4<f32> = u_xlat12;
          let x_5356 : i32 = u_xlati11;
          let x_5359 : i32 = u_xlati11;
          let x_5363 : vec4<f32> = x_3247.x_AdditionalLightsWorldToLights[((x_5356 + 3i) / 4i)][((x_5359 + 3i) % 4i)];
          u_xlat12 = (x_5355 + x_5363);
          let x_5365 : vec4<f32> = u_xlat12;
          let x_5367 : vec4<f32> = u_xlat12;
          let x_5369 : vec3<f32> = (vec3<f32>(x_5365.x, x_5365.y, x_5365.z) / vec3<f32>(x_5367.w, x_5367.w, x_5367.w));
          let x_5370 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5369.x, x_5369.y, x_5369.z, x_5370.w);
          let x_5372 : vec4<f32> = u_xlat12;
          let x_5374 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_5372.x, x_5372.y, x_5372.z), vec3<f32>(x_5374.x, x_5374.y, x_5374.z));
          let x_5377 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_5377);
          let x_5379 : f32 = u_xlat87;
          let x_5381 : vec4<f32> = u_xlat12;
          let x_5383 : vec3<f32> = (vec3<f32>(x_5379, x_5379, x_5379) * vec3<f32>(x_5381.x, x_5381.y, x_5381.z));
          let x_5384 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5383.x, x_5383.y, x_5383.z, x_5384.w);
          let x_5386 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_5386.x, x_5386.y, x_5386.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_5391 : f32 = u_xlat87;
          u_xlat87 = max(x_5391, 0.00000099999999747524f);
          let x_5394 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_5394);
          let x_5396 : f32 = u_xlat87;
          let x_5398 : vec4<f32> = u_xlat12;
          let x_5400 : vec3<f32> = (vec3<f32>(x_5396, x_5396, x_5396) * vec3<f32>(x_5398.z, x_5398.x, x_5398.y));
          let x_5401 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_5400.x, x_5400.y, x_5400.z, x_5401.w);
          let x_5404 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_5404);
          let x_5408 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_5408, 0.0f, 1.0f);
          let x_5411 : vec4<f32> = u_xlat13;
          let x_5413 : vec4<bool> = (vec4<f32>(x_5411.y, x_5411.y, x_5411.y, x_5411.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_5414 : vec2<bool> = vec2<bool>(x_5413.x, x_5413.w);
          let x_5415 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_5414.x, x_5415.y, x_5415.z, x_5414.y);
          let x_5418 : bool = u_xlatb11.x;
          if (x_5418) {
            let x_5423 : f32 = u_xlat13.x;
            x_5419 = x_5423;
          } else {
            let x_5426 : f32 = u_xlat13.x;
            x_5419 = -(x_5426);
          }
          let x_5428 : f32 = x_5419;
          u_xlat11.x = x_5428;
          let x_5431 : bool = u_xlatb11.w;
          if (x_5431) {
            let x_5436 : f32 = u_xlat13.x;
            x_5432 = x_5436;
          } else {
            let x_5439 : f32 = u_xlat13.x;
            x_5432 = -(x_5439);
          }
          let x_5441 : f32 = x_5432;
          u_xlat11.w = x_5441;
          let x_5443 : vec4<f32> = u_xlat12;
          let x_5445 : f32 = u_xlat87;
          let x_5448 : vec4<f32> = u_xlat11;
          let x_5450 : vec2<f32> = ((vec2<f32>(x_5443.x, x_5443.y) * vec2<f32>(x_5445, x_5445)) + vec2<f32>(x_5448.x, x_5448.w));
          let x_5451 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5450.x, x_5451.y, x_5451.z, x_5450.y);
          let x_5453 : vec4<f32> = u_xlat11;
          let x_5456 : vec2<f32> = ((vec2<f32>(x_5453.x, x_5453.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5457 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5456.x, x_5457.y, x_5457.z, x_5456.y);
          let x_5459 : vec4<f32> = u_xlat11;
          let x_5463 : vec2<f32> = clamp(vec2<f32>(x_5459.x, x_5459.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_5464 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5463.x, x_5464.y, x_5464.z, x_5463.y);
          let x_5466 : i32 = u_xlati4;
          let x_5468 : vec4<f32> = x_3247.x_AdditionalLightsCookieAtlasUVRects[x_5466];
          let x_5470 : vec4<f32> = u_xlat11;
          let x_5473 : i32 = u_xlati4;
          let x_5475 : vec4<f32> = x_3247.x_AdditionalLightsCookieAtlasUVRects[x_5473];
          let x_5477 : vec2<f32> = ((vec2<f32>(x_5468.x, x_5468.y) * vec2<f32>(x_5470.x, x_5470.w)) + vec2<f32>(x_5475.z, x_5475.w));
          let x_5478 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5477.x, x_5477.y, x_5478.z);
        }
      }
      let x_5485 : vec3<f32> = u_xlat37;
      let x_5487 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_5485.x, x_5485.y), 0.0f);
      u_xlat11 = x_5487;
      let x_5489 : bool = u_xlatb33.y;
      if (x_5489) {
        let x_5494 : f32 = u_xlat11.w;
        x_5490 = x_5494;
      } else {
        let x_5497 : f32 = u_xlat11.x;
        x_5490 = x_5497;
      }
      let x_5498 : f32 = x_5490;
      u_xlat87 = x_5498;
      let x_5500 : bool = u_xlatb33.x;
      if (x_5500) {
        let x_5504 : vec4<f32> = u_xlat11;
        x_5501 = vec3<f32>(x_5504.x, x_5504.y, x_5504.z);
      } else {
        let x_5507 : f32 = u_xlat87;
        x_5501 = vec3<f32>(x_5507, x_5507, x_5507);
      }
      let x_5509 : vec3<f32> = x_5501;
      let x_5510 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_5509.x, x_5509.y, x_5509.z, x_5510.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_5516 : vec4<f32> = u_xlat11;
    let x_5518 : i32 = u_xlati4;
    let x_5520 : vec4<f32> = x_3691.x_AdditionalLightsColor[x_5518];
    let x_5522 : vec3<f32> = (vec3<f32>(x_5516.x, x_5516.y, x_5516.z) * vec3<f32>(x_5520.x, x_5520.y, x_5520.z));
    let x_5523 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5522.x, x_5522.y, x_5522.z, x_5523.w);
    let x_5525 : f32 = u_xlat83;
    let x_5526 : f32 = u_xlat86;
    u_xlat4.x = (x_5525 * x_5526);
    let x_5529 : vec3<f32> = u_xlat29;
    let x_5530 : vec4<f32> = u_xlat10;
    u_xlat83 = dot(x_5529, vec3<f32>(x_5530.x, x_5530.y, x_5530.z));
    let x_5533 : f32 = u_xlat83;
    u_xlat83 = clamp(x_5533, 0.0f, 1.0f);
    let x_5536 : f32 = u_xlat4.x;
    let x_5537 : f32 = u_xlat83;
    u_xlat4.x = (x_5536 * x_5537);
    let x_5540 : vec4<f32> = u_xlat4;
    let x_5542 : vec4<f32> = u_xlat11;
    let x_5544 : vec3<f32> = (vec3<f32>(x_5540.x, x_5540.x, x_5540.x) * vec3<f32>(x_5542.x, x_5542.y, x_5542.z));
    let x_5545 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5544.x, x_5544.y, x_5544.z, x_5545.w);
    let x_5547 : vec4<f32> = u_xlat9;
    let x_5549 : f32 = u_xlat85;
    let x_5552 : vec4<f32> = u_xlat6;
    let x_5554 : vec3<f32> = ((vec3<f32>(x_5547.x, x_5547.y, x_5547.z) * vec3<f32>(x_5549, x_5549, x_5549)) + vec3<f32>(x_5552.x, x_5552.y, x_5552.z));
    let x_5555 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5554.x, x_5554.y, x_5554.z, x_5555.w);
    let x_5557 : vec4<f32> = u_xlat9;
    let x_5559 : vec4<f32> = u_xlat9;
    u_xlat4.x = dot(vec3<f32>(x_5557.x, x_5557.y, x_5557.z), vec3<f32>(x_5559.x, x_5559.y, x_5559.z));
    let x_5564 : f32 = u_xlat4.x;
    u_xlat4.x = max(x_5564, 1.17549435e-38f);
    let x_5568 : f32 = u_xlat4.x;
    u_xlat4.x = inverseSqrt(x_5568);
    let x_5571 : vec4<f32> = u_xlat4;
    let x_5573 : vec4<f32> = u_xlat9;
    let x_5575 : vec3<f32> = (vec3<f32>(x_5571.x, x_5571.x, x_5571.x) * vec3<f32>(x_5573.x, x_5573.y, x_5573.z));
    let x_5576 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5575.x, x_5575.y, x_5575.z, x_5576.w);
    let x_5578 : vec3<f32> = u_xlat29;
    let x_5579 : vec4<f32> = u_xlat9;
    u_xlat4.x = dot(x_5578, vec3<f32>(x_5579.x, x_5579.y, x_5579.z));
    let x_5584 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_5584, 0.0f, 1.0f);
    let x_5587 : vec4<f32> = u_xlat10;
    let x_5589 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_5587.x, x_5587.y, x_5587.z), vec3<f32>(x_5589.x, x_5589.y, x_5589.z));
    let x_5592 : f32 = u_xlat83;
    u_xlat83 = clamp(x_5592, 0.0f, 1.0f);
    let x_5595 : f32 = u_xlat4.x;
    let x_5597 : f32 = u_xlat4.x;
    u_xlat4.x = (x_5595 * x_5597);
    let x_5601 : f32 = u_xlat4.x;
    let x_5603 : f32 = u_xlat27.x;
    u_xlat4.x = ((x_5601 * x_5603) + 1.00001001358032226562f);
    let x_5607 : f32 = u_xlat83;
    let x_5608 : f32 = u_xlat83;
    u_xlat83 = (x_5607 * x_5608);
    let x_5611 : f32 = u_xlat4.x;
    let x_5613 : f32 = u_xlat4.x;
    u_xlat4.x = (x_5611 * x_5613);
    let x_5616 : f32 = u_xlat83;
    u_xlat83 = max(x_5616, 0.10000000149011611938f);
    let x_5619 : f32 = u_xlat4.x;
    let x_5620 : f32 = u_xlat83;
    u_xlat4.x = (x_5619 * x_5620);
    let x_5623 : f32 = u_xlat84;
    let x_5625 : f32 = u_xlat4.x;
    u_xlat4.x = (x_5623 * x_5625);
    let x_5628 : f32 = u_xlat80;
    let x_5630 : f32 = u_xlat4.x;
    u_xlat4.x = (x_5628 / x_5630);
    let x_5633 : vec4<f32> = u_xlat4;
    let x_5636 : vec3<f32> = u_xlat2;
    let x_5637 : vec3<f32> = ((vec3<f32>(x_5633.x, x_5633.x, x_5633.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5636);
    let x_5638 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5637.x, x_5637.y, x_5637.z, x_5638.w);
    let x_5640 : vec4<f32> = u_xlat9;
    let x_5642 : vec4<f32> = u_xlat11;
    let x_5645 : vec4<f32> = u_xlat8;
    let x_5647 : vec3<f32> = ((vec3<f32>(x_5640.x, x_5640.y, x_5640.z) * vec3<f32>(x_5642.x, x_5642.y, x_5642.z)) + vec3<f32>(x_5645.x, x_5645.y, x_5645.z));
    let x_5648 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5647.x, x_5647.y, x_5647.z, x_5648.w);

    continuing {
      let x_5650 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5650 + bitcast<u32>(1i));
    }
  }
  let x_5652 : vec4<f32> = u_xlat5;
  let x_5654 : vec4<f32> = u_xlat7;
  let x_5657 : vec3<f32> = u_xlat30;
  u_xlat2 = ((vec3<f32>(x_5652.x, x_5652.y, x_5652.z) * vec3<f32>(x_5654.x, x_5654.x, x_5654.x)) + x_5657);
  let x_5659 : vec4<f32> = u_xlat8;
  let x_5661 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_5659.x, x_5659.y, x_5659.z) + x_5661);
  let x_5665 : vec4<f32> = vs_INTERP6;
  let x_5667 : vec3<f32> = u_xlat0;
  let x_5669 : vec3<f32> = u_xlat2;
  let x_5670 : vec3<f32> = ((vec3<f32>(x_5665.w, x_5665.w, x_5665.w) * x_5667) + x_5669);
  let x_5671 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5670.x, x_5670.y, x_5670.z, x_5671.w);
  let x_5673 : bool = u_xlatb53;
  if (x_5673) {
    let x_5678 : f32 = u_xlat1.x;
    x_5674 = x_5678;
  } else {
    x_5674 = 1.0f;
  }
  let x_5680 : f32 = x_5674;
  SV_Target0.w = x_5680;
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


