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

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_53 : PGlobals;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_65 : UnityPerMaterial;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_D9BFD5F1 : sampler;

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

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlatb5 : vec4<bool>;

var<private> u_xlatb31 : bool;

var<private> u_xlatb1 : bool;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlatb53 : bool;

var<private> u_xlatb27 : vec3<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_1750 : UnityPerDraw;

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

var<private> u_xlatb30 : vec2<bool>;

@group(1) @binding(4) var<uniform> x_3207 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu4 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati4 : i32;

@group(1) @binding(1) var<uniform> x_3679 : AdditionalLights;

var<private> u_xlat86 : f32;

var<private> u_xlati86 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb86 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

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

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearClamp : sampler;

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
  var x_1663 : f32;
  var x_1711 : f32;
  var x_1838 : f32;
  var x_1850 : f32;
  var x_1862 : f32;
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
  var x_3289 : f32;
  var x_3300 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3814 : f32;
  var x_3824 : f32;
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
  var x_5407 : f32;
  var x_5420 : f32;
  var x_5478 : f32;
  var x_5489 : vec3<f32>;
  var x_5665 : f32;
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
  u_xlatb5.x = (0.0f >= x_1615);
  let x_1620 : f32 = u_xlat4.z;
  u_xlatb31 = (x_1620 >= 1.0f);
  let x_1622 : bool = u_xlatb31;
  let x_1624 : bool = u_xlatb5.x;
  u_xlatb5.x = (x_1622 | x_1624);
  let x_1628 : bool = u_xlatb5.x;
  let x_1629 : f32 = u_xlat80;
  u_xlat80 = select(x_1629, 1.0f, x_1628);
  let x_1631 : vec3<f32> = u_xlat0;
  let x_1633 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat0.x = dot(x_1631, -(vec3<f32>(x_1633.x, x_1633.y, x_1633.z)));
  let x_1639 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1639, 0.0f, 1.0f);
  let x_1642 : f32 = u_xlat80;
  let x_1645 : vec4<f32> = x_53.x_MainLightColor;
  u_xlat31 = (vec3<f32>(x_1642, x_1642, x_1642) * vec3<f32>(x_1645.x, x_1645.y, x_1645.z));
  let x_1648 : vec3<f32> = u_xlat0;
  let x_1650 : vec3<f32> = u_xlat31;
  u_xlat0 = (vec3<f32>(x_1648.x, x_1648.x, x_1648.x) * x_1650);
  let x_1652 : vec3<f32> = u_xlat0;
  let x_1653 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_1652 * vec3<f32>(x_1653.x, x_1653.y, x_1653.z));
  let x_1658 : f32 = u_xlat1.w;
  u_xlatb1 = (x_1658 >= 0.40000000596046447754f);
  let x_1661 : bool = u_xlatb1;
  if (x_1661) {
    let x_1667 : f32 = u_xlat1.w;
    x_1663 = x_1667;
  } else {
    x_1663 = 0.0f;
  }
  let x_1669 : f32 = x_1663;
  u_xlat1.x = x_1669;
  let x_1673 : f32 = u_xlat1.w;
  u_xlat27.x = (x_1673 + -0.40000000596046447754f);
  let x_1679 : f32 = u_xlat1.w;
  u_xlat53 = dpdxCoarse(x_1679);
  let x_1683 : f32 = u_xlat1.w;
  u_xlat79 = dpdyCoarse(x_1683);
  let x_1685 : f32 = u_xlat79;
  let x_1687 : f32 = u_xlat53;
  u_xlat53 = (abs(x_1685) + abs(x_1687));
  let x_1690 : f32 = u_xlat53;
  u_xlat53 = max(x_1690, 0.00009999999747378752f);
  let x_1694 : f32 = u_xlat27.x;
  let x_1695 : f32 = u_xlat53;
  u_xlat27.x = (x_1694 / x_1695);
  let x_1699 : f32 = u_xlat27.x;
  u_xlat27.x = (x_1699 + 0.5f);
  let x_1703 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_1703, 0.0f, 1.0f);
  let x_1708 : f32 = x_53.x_AlphaToMaskAvailable;
  u_xlatb53 = !((x_1708 == 0.0f));
  let x_1710 : bool = u_xlatb53;
  if (x_1710) {
    let x_1715 : f32 = u_xlat27.x;
    x_1711 = x_1715;
  } else {
    let x_1718 : f32 = u_xlat1.x;
    x_1711 = x_1718;
  }
  let x_1719 : f32 = x_1711;
  u_xlat1.x = x_1719;
  let x_1722 : f32 = u_xlat1.x;
  u_xlat27.x = (x_1722 + -0.00009999999747378752f);
  let x_1730 : f32 = u_xlat27.x;
  u_xlatb27.x = (x_1730 < 0.0f);
  let x_1734 : bool = u_xlatb27.x;
  if (((select(0i, 1i, x_1734) * -1i) != 0i)) {
    discard;
  }
  let x_1744 : f32 = vs_INTERP4.w;
  u_xlatb27.x = (0.0f < x_1744);
  let x_1752 : f32 = x_1750.unity_WorldTransformParams.w;
  u_xlatb27.z = (x_1752 >= 0.0f);
  let x_1756 : bool = u_xlatb27.x;
  u_xlat27.x = select(-1.0f, 1.0f, x_1756);
  let x_1760 : bool = u_xlatb27.z;
  u_xlat27.z = select(-1.0f, 1.0f, x_1760);
  let x_1764 : f32 = u_xlat27.z;
  let x_1766 : f32 = u_xlat27.x;
  u_xlat27.x = (x_1764 * x_1766);
  let x_1769 : vec4<f32> = vs_INTERP4;
  let x_1771 : vec3<f32> = vs_INTERP9;
  u_xlat31 = (vec3<f32>(x_1769.y, x_1769.z, x_1769.x) * vec3<f32>(x_1771.z, x_1771.x, x_1771.y));
  let x_1774 : vec3<f32> = vs_INTERP9;
  let x_1776 : vec4<f32> = vs_INTERP4;
  let x_1779 : vec3<f32> = u_xlat31;
  u_xlat31 = ((vec3<f32>(x_1774.y, x_1774.z, x_1774.x) * vec3<f32>(x_1776.z, x_1776.x, x_1776.y)) + -(x_1779));
  let x_1782 : vec3<f32> = u_xlat27;
  let x_1784 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_1782.x, x_1782.x, x_1782.x) * x_1784);
  let x_1786 : vec3<f32> = u_xlat29;
  let x_1788 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_1786.y, x_1786.y, x_1786.y) * x_1788);
  let x_1790 : vec3<f32> = u_xlat29;
  let x_1792 : vec4<f32> = vs_INTERP4;
  let x_1795 : vec3<f32> = u_xlat31;
  u_xlat31 = ((vec3<f32>(x_1790.x, x_1790.x, x_1790.x) * vec3<f32>(x_1792.x, x_1792.y, x_1792.z)) + x_1795);
  let x_1797 : vec3<f32> = u_xlat29;
  let x_1799 : vec3<f32> = vs_INTERP9;
  let x_1801 : vec3<f32> = u_xlat31;
  u_xlat29 = ((vec3<f32>(x_1797.z, x_1797.z, x_1797.z) * x_1799) + x_1801);
  let x_1803 : vec3<f32> = u_xlat29;
  let x_1804 : vec3<f32> = u_xlat29;
  u_xlat27.x = dot(x_1803, x_1804);
  let x_1808 : f32 = u_xlat27.x;
  u_xlat27.x = inverseSqrt(x_1808);
  let x_1811 : vec3<f32> = u_xlat27;
  let x_1813 : vec3<f32> = u_xlat29;
  let x_1814 : vec3<f32> = (vec3<f32>(x_1811.x, x_1811.x, x_1811.x) * x_1813);
  let x_1815 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1814.x, x_1814.y, x_1814.z, x_1815.w);
  let x_1818 : f32 = x_53.unity_OrthoParams.w;
  u_xlatb27.x = (x_1818 == 0.0f);
  let x_1821 : vec3<f32> = vs_INTERP8;
  let x_1825 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  u_xlat29 = (-(x_1821) + x_1825);
  let x_1827 : vec3<f32> = u_xlat29;
  let x_1828 : vec3<f32> = u_xlat29;
  u_xlat79 = dot(x_1827, x_1828);
  let x_1830 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_1830);
  let x_1832 : f32 = u_xlat79;
  let x_1834 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_1832, x_1832, x_1832) * x_1834);
  let x_1837 : bool = u_xlatb27.x;
  if (x_1837) {
    let x_1842 : f32 = u_xlat29.x;
    x_1838 = x_1842;
  } else {
    let x_1845 : f32 = x_53.unity_MatrixV[0i].z;
    x_1838 = x_1845;
  }
  let x_1846 : f32 = x_1838;
  u_xlat7.x = x_1846;
  let x_1849 : bool = u_xlatb27.x;
  if (x_1849) {
    let x_1854 : f32 = u_xlat29.y;
    x_1850 = x_1854;
  } else {
    let x_1857 : f32 = x_53.unity_MatrixV[1i].z;
    x_1850 = x_1857;
  }
  let x_1858 : f32 = x_1850;
  u_xlat7.y = x_1858;
  let x_1861 : bool = u_xlatb27.x;
  if (x_1861) {
    let x_1866 : f32 = u_xlat29.z;
    x_1862 = x_1866;
  } else {
    let x_1869 : f32 = x_53.unity_MatrixV[2i].z;
    x_1862 = x_1869;
  }
  let x_1870 : f32 = x_1862;
  u_xlat7.z = x_1870;
  u_xlat6.w = 1.0f;
  let x_1875 : vec4<f32> = x_1750.unity_SHAr;
  let x_1876 : vec4<f32> = u_xlat6;
  u_xlat8.x = dot(x_1875, x_1876);
  let x_1881 : vec4<f32> = x_1750.unity_SHAg;
  let x_1882 : vec4<f32> = u_xlat6;
  u_xlat8.y = dot(x_1881, x_1882);
  let x_1887 : vec4<f32> = x_1750.unity_SHAb;
  let x_1888 : vec4<f32> = u_xlat6;
  u_xlat8.z = dot(x_1887, x_1888);
  let x_1891 : vec4<f32> = u_xlat6;
  let x_1893 : vec4<f32> = u_xlat6;
  u_xlat9 = (vec4<f32>(x_1891.y, x_1891.z, x_1891.z, x_1891.x) * vec4<f32>(x_1893.x, x_1893.y, x_1893.z, x_1893.z));
  let x_1898 : vec4<f32> = x_1750.unity_SHBr;
  let x_1899 : vec4<f32> = u_xlat9;
  u_xlat10.x = dot(x_1898, x_1899);
  let x_1904 : vec4<f32> = x_1750.unity_SHBg;
  let x_1905 : vec4<f32> = u_xlat9;
  u_xlat10.y = dot(x_1904, x_1905);
  let x_1910 : vec4<f32> = x_1750.unity_SHBb;
  let x_1911 : vec4<f32> = u_xlat9;
  u_xlat10.z = dot(x_1910, x_1911);
  let x_1915 : f32 = u_xlat6.y;
  let x_1917 : f32 = u_xlat6.y;
  u_xlat27.x = (x_1915 * x_1917);
  let x_1921 : f32 = u_xlat6.x;
  let x_1923 : f32 = u_xlat6.x;
  let x_1926 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_1921 * x_1923) + -(x_1926));
  let x_1932 : vec4<f32> = x_1750.unity_SHC;
  let x_1934 : vec3<f32> = u_xlat27;
  let x_1937 : vec4<f32> = u_xlat10;
  u_xlat29 = ((vec3<f32>(x_1932.x, x_1932.y, x_1932.z) * vec3<f32>(x_1934.x, x_1934.x, x_1934.x)) + vec3<f32>(x_1937.x, x_1937.y, x_1937.z));
  let x_1940 : vec3<f32> = u_xlat29;
  let x_1941 : vec4<f32> = u_xlat8;
  u_xlat29 = (x_1940 + vec3<f32>(x_1941.x, x_1941.y, x_1941.z));
  let x_1944 : vec3<f32> = u_xlat29;
  u_xlat29 = max(x_1944, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1947 : f32 = u_xlat3.x;
  u_xlat3.x = x_1947;
  let x_1950 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1950, 0.0f, 1.0f);
  let x_1954 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_1954, 1.0f);
  let x_1957 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1957 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_1962 : f32 = u_xlat3.x;
  u_xlat27.x = (-(x_1962) + 1.0f);
  let x_1967 : f32 = u_xlat27.x;
  let x_1969 : f32 = u_xlat27.x;
  u_xlat79 = (x_1967 * x_1969);
  let x_1971 : f32 = u_xlat79;
  u_xlat79 = max(x_1971, 0.0078125f);
  let x_1974 : f32 = u_xlat79;
  let x_1975 : f32 = u_xlat79;
  u_xlat80 = (x_1974 * x_1975);
  let x_1978 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1978 + 0.04000002145767211914f);
  let x_1983 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_1983, 1.0f);
  let x_1986 : f32 = u_xlat79;
  u_xlat31.x = ((x_1986 * 4.0f) + 2.0f);
  let x_1991 : f32 = vs_INTERP6.w;
  u_xlat57.x = min(x_1991, 1.0f);
  let x_1994 : bool = u_xlatb78;
  if (x_1994) {
    let x_1998 : f32 = x_130.x_MainLightShadowParams.y;
    u_xlatb78 = (x_1998 == 1.0f);
    let x_2000 : bool = u_xlatb78;
    if (x_2000) {
      let x_2003 : vec4<f32> = u_xlat4;
      let x_2006 : vec4<f32> = x_130.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_2003.x, x_2003.y, x_2003.x, x_2003.y) + x_2006);
      let x_2009 : vec4<f32> = u_xlat8;
      let x_2010 : vec2<f32> = vec2<f32>(x_2009.x, x_2009.y);
      let x_2012 : f32 = u_xlat4.z;
      txVec30 = vec3<f32>(x_2010.x, x_2010.y, x_2012);
      let x_2019 : vec3<f32> = txVec30;
      let x_2021 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2019.xy, x_2019.z);
      u_xlat9.x = x_2021;
      let x_2024 : vec4<f32> = u_xlat8;
      let x_2025 : vec2<f32> = vec2<f32>(x_2024.z, x_2024.w);
      let x_2027 : f32 = u_xlat4.z;
      txVec31 = vec3<f32>(x_2025.x, x_2025.y, x_2027);
      let x_2034 : vec3<f32> = txVec31;
      let x_2036 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2034.xy, x_2034.z);
      u_xlat9.y = x_2036;
      let x_2038 : vec4<f32> = u_xlat4;
      let x_2041 : vec4<f32> = x_130.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_2038.x, x_2038.y, x_2038.x, x_2038.y) + x_2041);
      let x_2044 : vec4<f32> = u_xlat8;
      let x_2045 : vec2<f32> = vec2<f32>(x_2044.x, x_2044.y);
      let x_2047 : f32 = u_xlat4.z;
      txVec32 = vec3<f32>(x_2045.x, x_2045.y, x_2047);
      let x_2054 : vec3<f32> = txVec32;
      let x_2056 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2054.xy, x_2054.z);
      u_xlat9.z = x_2056;
      let x_2059 : vec4<f32> = u_xlat8;
      let x_2060 : vec2<f32> = vec2<f32>(x_2059.z, x_2059.w);
      let x_2062 : f32 = u_xlat4.z;
      txVec33 = vec3<f32>(x_2060.x, x_2060.y, x_2062);
      let x_2069 : vec3<f32> = txVec33;
      let x_2071 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2069.xy, x_2069.z);
      u_xlat9.w = x_2071;
      let x_2073 : vec4<f32> = u_xlat9;
      u_xlat78 = dot(x_2073, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_2078 : f32 = x_130.x_MainLightShadowParams.y;
      u_xlatb83 = (x_2078 == 2.0f);
      let x_2080 : bool = u_xlatb83;
      if (x_2080) {
        let x_2083 : vec4<f32> = u_xlat4;
        let x_2086 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2089 : vec2<f32> = ((vec2<f32>(x_2083.x, x_2083.y) * vec2<f32>(x_2086.z, x_2086.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2090 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2089.x, x_2089.y, x_2090.z, x_2090.w);
        let x_2092 : vec4<f32> = u_xlat8;
        let x_2094 : vec2<f32> = floor(vec2<f32>(x_2092.x, x_2092.y));
        let x_2095 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2094.x, x_2094.y, x_2095.z, x_2095.w);
        let x_2097 : vec4<f32> = u_xlat4;
        let x_2100 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2103 : vec4<f32> = u_xlat8;
        u_xlat60 = ((vec2<f32>(x_2097.x, x_2097.y) * vec2<f32>(x_2100.z, x_2100.w)) + -(vec2<f32>(x_2103.x, x_2103.y)));
        let x_2107 : vec2<f32> = u_xlat60;
        u_xlat9 = (vec4<f32>(x_2107.x, x_2107.x, x_2107.y, x_2107.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2110 : vec4<f32> = u_xlat9;
        let x_2112 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2110.x, x_2110.x, x_2110.z, x_2110.z) * vec4<f32>(x_2112.x, x_2112.x, x_2112.z, x_2112.z));
        let x_2115 : vec4<f32> = u_xlat10;
        let x_2117 : vec2<f32> = (vec2<f32>(x_2115.y, x_2115.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_2118 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2117.x, x_2118.y, x_2117.y, x_2118.w);
        let x_2120 : vec4<f32> = u_xlat10;
        let x_2123 : vec2<f32> = u_xlat60;
        let x_2125 : vec2<f32> = ((vec2<f32>(x_2120.x, x_2120.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2123));
        let x_2126 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2125.x, x_2125.y, x_2126.z, x_2126.w);
        let x_2129 : vec2<f32> = u_xlat60;
        u_xlat62 = (-(x_2129) + vec2<f32>(1.0f, 1.0f));
        let x_2132 : vec2<f32> = u_xlat60;
        let x_2133 : vec2<f32> = min(x_2132, vec2<f32>(0.0f, 0.0f));
        let x_2134 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2133.x, x_2133.y, x_2134.z, x_2134.w);
        let x_2136 : vec4<f32> = u_xlat11;
        let x_2139 : vec4<f32> = u_xlat11;
        let x_2142 : vec2<f32> = u_xlat62;
        let x_2143 : vec2<f32> = ((-(vec2<f32>(x_2136.x, x_2136.y)) * vec2<f32>(x_2139.x, x_2139.y)) + x_2142);
        let x_2144 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2143.x, x_2143.y, x_2144.z, x_2144.w);
        let x_2146 : vec2<f32> = u_xlat60;
        u_xlat60 = max(x_2146, vec2<f32>(0.0f, 0.0f));
        let x_2148 : vec2<f32> = u_xlat60;
        let x_2150 : vec2<f32> = u_xlat60;
        let x_2152 : vec4<f32> = u_xlat9;
        u_xlat60 = ((-(x_2148) * x_2150) + vec2<f32>(x_2152.y, x_2152.w));
        let x_2155 : vec4<f32> = u_xlat11;
        let x_2157 : vec2<f32> = (vec2<f32>(x_2155.x, x_2155.y) + vec2<f32>(1.0f, 1.0f));
        let x_2158 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2157.x, x_2157.y, x_2158.z, x_2158.w);
        let x_2160 : vec2<f32> = u_xlat60;
        u_xlat60 = (x_2160 + vec2<f32>(1.0f, 1.0f));
        let x_2162 : vec4<f32> = u_xlat10;
        let x_2164 : vec2<f32> = (vec2<f32>(x_2162.x, x_2162.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2165 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2164.x, x_2164.y, x_2165.z, x_2165.w);
        let x_2167 : vec2<f32> = u_xlat62;
        let x_2168 : vec2<f32> = (x_2167 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2169 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2168.x, x_2168.y, x_2169.z, x_2169.w);
        let x_2171 : vec4<f32> = u_xlat11;
        let x_2173 : vec2<f32> = (vec2<f32>(x_2171.x, x_2171.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2174 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2173.x, x_2173.y, x_2174.z, x_2174.w);
        let x_2176 : vec2<f32> = u_xlat60;
        let x_2177 : vec2<f32> = (x_2176 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2178 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2177.x, x_2177.y, x_2178.z, x_2178.w);
        let x_2180 : vec4<f32> = u_xlat9;
        u_xlat60 = (vec2<f32>(x_2180.y, x_2180.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2184 : f32 = u_xlat11.x;
        u_xlat12.z = x_2184;
        let x_2187 : f32 = u_xlat60.x;
        u_xlat12.w = x_2187;
        let x_2190 : f32 = u_xlat13.x;
        u_xlat10.z = x_2190;
        let x_2193 : f32 = u_xlat9.x;
        u_xlat10.w = x_2193;
        let x_2195 : vec4<f32> = u_xlat10;
        let x_2197 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_2195.z, x_2195.w, x_2195.x, x_2195.z) + vec4<f32>(x_2197.z, x_2197.w, x_2197.x, x_2197.z));
        let x_2201 : f32 = u_xlat12.y;
        u_xlat11.z = x_2201;
        let x_2204 : f32 = u_xlat60.y;
        u_xlat11.w = x_2204;
        let x_2207 : f32 = u_xlat10.y;
        u_xlat13.z = x_2207;
        let x_2210 : f32 = u_xlat9.z;
        u_xlat13.w = x_2210;
        let x_2212 : vec4<f32> = u_xlat11;
        let x_2214 : vec4<f32> = u_xlat13;
        let x_2216 : vec3<f32> = (vec3<f32>(x_2212.z, x_2212.y, x_2212.w) + vec3<f32>(x_2214.z, x_2214.y, x_2214.w));
        let x_2217 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2216.x, x_2216.y, x_2216.z, x_2217.w);
        let x_2219 : vec4<f32> = u_xlat10;
        let x_2221 : vec4<f32> = u_xlat14;
        let x_2223 : vec3<f32> = (vec3<f32>(x_2219.x, x_2219.z, x_2219.w) / vec3<f32>(x_2221.z, x_2221.w, x_2221.y));
        let x_2224 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2223.x, x_2223.y, x_2223.z, x_2224.w);
        let x_2226 : vec4<f32> = u_xlat10;
        let x_2228 : vec3<f32> = (vec3<f32>(x_2226.x, x_2226.y, x_2226.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2229 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2228.x, x_2228.y, x_2228.z, x_2229.w);
        let x_2231 : vec4<f32> = u_xlat13;
        let x_2233 : vec4<f32> = u_xlat9;
        let x_2235 : vec3<f32> = (vec3<f32>(x_2231.z, x_2231.y, x_2231.w) / vec3<f32>(x_2233.x, x_2233.y, x_2233.z));
        let x_2236 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2235.x, x_2235.y, x_2235.z, x_2236.w);
        let x_2238 : vec4<f32> = u_xlat11;
        let x_2240 : vec3<f32> = (vec3<f32>(x_2238.x, x_2238.y, x_2238.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2241 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2240.x, x_2240.y, x_2240.z, x_2241.w);
        let x_2243 : vec4<f32> = u_xlat10;
        let x_2246 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2248 : vec3<f32> = (vec3<f32>(x_2243.y, x_2243.x, x_2243.z) * vec3<f32>(x_2246.x, x_2246.x, x_2246.x));
        let x_2249 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2248.x, x_2248.y, x_2248.z, x_2249.w);
        let x_2251 : vec4<f32> = u_xlat11;
        let x_2254 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2256 : vec3<f32> = (vec3<f32>(x_2251.x, x_2251.y, x_2251.z) * vec3<f32>(x_2254.y, x_2254.y, x_2254.y));
        let x_2257 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2256.x, x_2256.y, x_2256.z, x_2257.w);
        let x_2260 : f32 = u_xlat11.x;
        u_xlat10.w = x_2260;
        let x_2262 : vec4<f32> = u_xlat8;
        let x_2265 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2268 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_2262.x, x_2262.y, x_2262.x, x_2262.y) * vec4<f32>(x_2265.x, x_2265.y, x_2265.x, x_2265.y)) + vec4<f32>(x_2268.y, x_2268.w, x_2268.x, x_2268.w));
        let x_2271 : vec4<f32> = u_xlat8;
        let x_2274 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2277 : vec4<f32> = u_xlat10;
        u_xlat60 = ((vec2<f32>(x_2271.x, x_2271.y) * vec2<f32>(x_2274.x, x_2274.y)) + vec2<f32>(x_2277.z, x_2277.w));
        let x_2281 : f32 = u_xlat10.y;
        u_xlat11.w = x_2281;
        let x_2283 : vec4<f32> = u_xlat11;
        let x_2284 : vec2<f32> = vec2<f32>(x_2283.y, x_2283.z);
        let x_2285 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2285.x, x_2284.x, x_2285.z, x_2284.y);
        let x_2287 : vec4<f32> = u_xlat8;
        let x_2290 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2293 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_2287.x, x_2287.y, x_2287.x, x_2287.y) * vec4<f32>(x_2290.x, x_2290.y, x_2290.x, x_2290.y)) + vec4<f32>(x_2293.x, x_2293.y, x_2293.z, x_2293.y));
        let x_2296 : vec4<f32> = u_xlat8;
        let x_2299 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2302 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_2296.x, x_2296.y, x_2296.x, x_2296.y) * vec4<f32>(x_2299.x, x_2299.y, x_2299.x, x_2299.y)) + vec4<f32>(x_2302.w, x_2302.y, x_2302.w, x_2302.z));
        let x_2305 : vec4<f32> = u_xlat8;
        let x_2308 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2311 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2305.x, x_2305.y, x_2305.x, x_2305.y) * vec4<f32>(x_2308.x, x_2308.y, x_2308.x, x_2308.y)) + vec4<f32>(x_2311.x, x_2311.w, x_2311.z, x_2311.w));
        let x_2314 : vec4<f32> = u_xlat9;
        let x_2316 : vec4<f32> = u_xlat14;
        u_xlat15 = (vec4<f32>(x_2314.x, x_2314.x, x_2314.x, x_2314.y) * vec4<f32>(x_2316.z, x_2316.w, x_2316.y, x_2316.z));
        let x_2319 : vec4<f32> = u_xlat9;
        let x_2321 : vec4<f32> = u_xlat14;
        u_xlat16 = (vec4<f32>(x_2319.y, x_2319.y, x_2319.z, x_2319.z) * x_2321);
        let x_2325 : f32 = u_xlat9.z;
        let x_2327 : f32 = u_xlat14.y;
        u_xlat83 = (x_2325 * x_2327);
        let x_2330 : vec4<f32> = u_xlat12;
        let x_2331 : vec2<f32> = vec2<f32>(x_2330.x, x_2330.y);
        let x_2333 : f32 = u_xlat4.z;
        txVec34 = vec3<f32>(x_2331.x, x_2331.y, x_2333);
        let x_2341 : vec3<f32> = txVec34;
        let x_2343 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2341.xy, x_2341.z);
        u_xlat84 = x_2343;
        let x_2345 : vec4<f32> = u_xlat12;
        let x_2346 : vec2<f32> = vec2<f32>(x_2345.z, x_2345.w);
        let x_2348 : f32 = u_xlat4.z;
        txVec35 = vec3<f32>(x_2346.x, x_2346.y, x_2348);
        let x_2356 : vec3<f32> = txVec35;
        let x_2358 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2356.xy, x_2356.z);
        u_xlat85 = x_2358;
        let x_2359 : f32 = u_xlat85;
        let x_2361 : f32 = u_xlat15.y;
        u_xlat85 = (x_2359 * x_2361);
        let x_2364 : f32 = u_xlat15.x;
        let x_2365 : f32 = u_xlat84;
        let x_2367 : f32 = u_xlat85;
        u_xlat84 = ((x_2364 * x_2365) + x_2367);
        let x_2370 : vec2<f32> = u_xlat60;
        let x_2372 : f32 = u_xlat4.z;
        txVec36 = vec3<f32>(x_2370.x, x_2370.y, x_2372);
        let x_2379 : vec3<f32> = txVec36;
        let x_2381 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2379.xy, x_2379.z);
        u_xlat85 = x_2381;
        let x_2383 : f32 = u_xlat15.z;
        let x_2384 : f32 = u_xlat85;
        let x_2386 : f32 = u_xlat84;
        u_xlat84 = ((x_2383 * x_2384) + x_2386);
        let x_2389 : vec4<f32> = u_xlat11;
        let x_2390 : vec2<f32> = vec2<f32>(x_2389.x, x_2389.y);
        let x_2392 : f32 = u_xlat4.z;
        txVec37 = vec3<f32>(x_2390.x, x_2390.y, x_2392);
        let x_2399 : vec3<f32> = txVec37;
        let x_2401 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2399.xy, x_2399.z);
        u_xlat85 = x_2401;
        let x_2403 : f32 = u_xlat15.w;
        let x_2404 : f32 = u_xlat85;
        let x_2406 : f32 = u_xlat84;
        u_xlat84 = ((x_2403 * x_2404) + x_2406);
        let x_2409 : vec4<f32> = u_xlat13;
        let x_2410 : vec2<f32> = vec2<f32>(x_2409.x, x_2409.y);
        let x_2412 : f32 = u_xlat4.z;
        txVec38 = vec3<f32>(x_2410.x, x_2410.y, x_2412);
        let x_2419 : vec3<f32> = txVec38;
        let x_2421 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2419.xy, x_2419.z);
        u_xlat85 = x_2421;
        let x_2423 : f32 = u_xlat16.x;
        let x_2424 : f32 = u_xlat85;
        let x_2426 : f32 = u_xlat84;
        u_xlat84 = ((x_2423 * x_2424) + x_2426);
        let x_2429 : vec4<f32> = u_xlat13;
        let x_2430 : vec2<f32> = vec2<f32>(x_2429.z, x_2429.w);
        let x_2432 : f32 = u_xlat4.z;
        txVec39 = vec3<f32>(x_2430.x, x_2430.y, x_2432);
        let x_2439 : vec3<f32> = txVec39;
        let x_2441 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2439.xy, x_2439.z);
        u_xlat85 = x_2441;
        let x_2443 : f32 = u_xlat16.y;
        let x_2444 : f32 = u_xlat85;
        let x_2446 : f32 = u_xlat84;
        u_xlat84 = ((x_2443 * x_2444) + x_2446);
        let x_2449 : vec4<f32> = u_xlat11;
        let x_2450 : vec2<f32> = vec2<f32>(x_2449.z, x_2449.w);
        let x_2452 : f32 = u_xlat4.z;
        txVec40 = vec3<f32>(x_2450.x, x_2450.y, x_2452);
        let x_2459 : vec3<f32> = txVec40;
        let x_2461 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2459.xy, x_2459.z);
        u_xlat85 = x_2461;
        let x_2463 : f32 = u_xlat16.z;
        let x_2464 : f32 = u_xlat85;
        let x_2466 : f32 = u_xlat84;
        u_xlat84 = ((x_2463 * x_2464) + x_2466);
        let x_2469 : vec4<f32> = u_xlat10;
        let x_2470 : vec2<f32> = vec2<f32>(x_2469.x, x_2469.y);
        let x_2472 : f32 = u_xlat4.z;
        txVec41 = vec3<f32>(x_2470.x, x_2470.y, x_2472);
        let x_2479 : vec3<f32> = txVec41;
        let x_2481 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2479.xy, x_2479.z);
        u_xlat85 = x_2481;
        let x_2483 : f32 = u_xlat16.w;
        let x_2484 : f32 = u_xlat85;
        let x_2486 : f32 = u_xlat84;
        u_xlat84 = ((x_2483 * x_2484) + x_2486);
        let x_2489 : vec4<f32> = u_xlat10;
        let x_2490 : vec2<f32> = vec2<f32>(x_2489.z, x_2489.w);
        let x_2492 : f32 = u_xlat4.z;
        txVec42 = vec3<f32>(x_2490.x, x_2490.y, x_2492);
        let x_2499 : vec3<f32> = txVec42;
        let x_2501 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2499.xy, x_2499.z);
        u_xlat85 = x_2501;
        let x_2502 : f32 = u_xlat83;
        let x_2503 : f32 = u_xlat85;
        let x_2505 : f32 = u_xlat84;
        u_xlat78 = ((x_2502 * x_2503) + x_2505);
      } else {
        let x_2508 : vec4<f32> = u_xlat4;
        let x_2511 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2514 : vec2<f32> = ((vec2<f32>(x_2508.x, x_2508.y) * vec2<f32>(x_2511.z, x_2511.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2515 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2514.x, x_2514.y, x_2515.z, x_2515.w);
        let x_2517 : vec4<f32> = u_xlat8;
        let x_2519 : vec2<f32> = floor(vec2<f32>(x_2517.x, x_2517.y));
        let x_2520 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2519.x, x_2519.y, x_2520.z, x_2520.w);
        let x_2522 : vec4<f32> = u_xlat4;
        let x_2525 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2528 : vec4<f32> = u_xlat8;
        u_xlat60 = ((vec2<f32>(x_2522.x, x_2522.y) * vec2<f32>(x_2525.z, x_2525.w)) + -(vec2<f32>(x_2528.x, x_2528.y)));
        let x_2532 : vec2<f32> = u_xlat60;
        u_xlat9 = (vec4<f32>(x_2532.x, x_2532.x, x_2532.y, x_2532.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2535 : vec4<f32> = u_xlat9;
        let x_2537 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2535.x, x_2535.x, x_2535.z, x_2535.z) * vec4<f32>(x_2537.x, x_2537.x, x_2537.z, x_2537.z));
        let x_2540 : vec4<f32> = u_xlat10;
        let x_2542 : vec2<f32> = (vec2<f32>(x_2540.y, x_2540.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2543 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2543.x, x_2542.x, x_2543.z, x_2542.y);
        let x_2545 : vec4<f32> = u_xlat10;
        let x_2548 : vec2<f32> = u_xlat60;
        let x_2550 : vec2<f32> = ((vec2<f32>(x_2545.x, x_2545.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2548));
        let x_2551 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2550.x, x_2551.y, x_2550.y, x_2551.w);
        let x_2553 : vec2<f32> = u_xlat60;
        let x_2555 : vec2<f32> = (-(x_2553) + vec2<f32>(1.0f, 1.0f));
        let x_2556 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2555.x, x_2555.y, x_2556.z, x_2556.w);
        let x_2558 : vec2<f32> = u_xlat60;
        u_xlat62 = min(x_2558, vec2<f32>(0.0f, 0.0f));
        let x_2560 : vec2<f32> = u_xlat62;
        let x_2562 : vec2<f32> = u_xlat62;
        let x_2564 : vec4<f32> = u_xlat10;
        let x_2566 : vec2<f32> = ((-(x_2560) * x_2562) + vec2<f32>(x_2564.x, x_2564.y));
        let x_2567 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2566.x, x_2566.y, x_2567.z, x_2567.w);
        let x_2569 : vec2<f32> = u_xlat60;
        u_xlat62 = max(x_2569, vec2<f32>(0.0f, 0.0f));
        let x_2572 : vec2<f32> = u_xlat62;
        let x_2574 : vec2<f32> = u_xlat62;
        let x_2576 : vec4<f32> = u_xlat9;
        let x_2578 : vec2<f32> = ((-(x_2572) * x_2574) + vec2<f32>(x_2576.y, x_2576.w));
        let x_2579 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_2578.x, x_2579.y, x_2578.y);
        let x_2581 : vec4<f32> = u_xlat10;
        let x_2583 : vec2<f32> = (vec2<f32>(x_2581.x, x_2581.y) + vec2<f32>(2.0f, 2.0f));
        let x_2584 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2583.x, x_2583.y, x_2584.z, x_2584.w);
        let x_2586 : vec3<f32> = u_xlat35;
        let x_2588 : vec2<f32> = (vec2<f32>(x_2586.x, x_2586.z) + vec2<f32>(2.0f, 2.0f));
        let x_2589 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2589.x, x_2588.x, x_2589.z, x_2588.y);
        let x_2592 : f32 = u_xlat9.y;
        u_xlat12.z = (x_2592 * 0.08163200318813323975f);
        let x_2595 : vec4<f32> = u_xlat9;
        let x_2597 : vec3<f32> = (vec3<f32>(x_2595.z, x_2595.x, x_2595.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_2598 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2597.x, x_2597.y, x_2597.z, x_2598.w);
        let x_2600 : vec4<f32> = u_xlat10;
        let x_2602 : vec2<f32> = (vec2<f32>(x_2600.x, x_2600.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2603 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2602.x, x_2602.y, x_2603.z, x_2603.w);
        let x_2606 : f32 = u_xlat13.y;
        u_xlat12.x = x_2606;
        let x_2608 : vec2<f32> = u_xlat60;
        let x_2611 : vec2<f32> = ((vec2<f32>(x_2608.x, x_2608.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2612 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2612.x, x_2611.x, x_2612.z, x_2611.y);
        let x_2614 : vec2<f32> = u_xlat60;
        let x_2617 : vec2<f32> = ((vec2<f32>(x_2614.x, x_2614.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2618 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2617.x, x_2618.y, x_2617.y, x_2618.w);
        let x_2621 : f32 = u_xlat9.x;
        u_xlat10.y = x_2621;
        let x_2624 : f32 = u_xlat11.y;
        u_xlat10.w = x_2624;
        let x_2626 : vec4<f32> = u_xlat10;
        let x_2627 : vec4<f32> = u_xlat12;
        u_xlat12 = (x_2626 + x_2627);
        let x_2629 : vec2<f32> = u_xlat60;
        let x_2632 : vec2<f32> = ((vec2<f32>(x_2629.y, x_2629.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2633 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2633.x, x_2632.x, x_2633.z, x_2632.y);
        let x_2635 : vec2<f32> = u_xlat60;
        let x_2638 : vec2<f32> = ((vec2<f32>(x_2635.y, x_2635.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2639 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2638.x, x_2639.y, x_2638.y, x_2639.w);
        let x_2642 : f32 = u_xlat9.y;
        u_xlat11.y = x_2642;
        let x_2644 : vec4<f32> = u_xlat11;
        let x_2645 : vec4<f32> = u_xlat13;
        u_xlat9 = (x_2644 + x_2645);
        let x_2647 : vec4<f32> = u_xlat10;
        let x_2648 : vec4<f32> = u_xlat12;
        u_xlat10 = (x_2647 / x_2648);
        let x_2650 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2650 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2652 : vec4<f32> = u_xlat11;
        let x_2653 : vec4<f32> = u_xlat9;
        u_xlat11 = (x_2652 / x_2653);
        let x_2655 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_2655 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2657 : vec4<f32> = u_xlat10;
        let x_2660 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_2657.w, x_2657.x, x_2657.y, x_2657.z) * vec4<f32>(x_2660.x, x_2660.x, x_2660.x, x_2660.x));
        let x_2663 : vec4<f32> = u_xlat11;
        let x_2666 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_2663.x, x_2663.w, x_2663.y, x_2663.z) * vec4<f32>(x_2666.y, x_2666.y, x_2666.y, x_2666.y));
        let x_2669 : vec4<f32> = u_xlat10;
        let x_2670 : vec3<f32> = vec3<f32>(x_2669.y, x_2669.z, x_2669.w);
        let x_2671 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2670.x, x_2671.y, x_2670.y, x_2670.z);
        let x_2674 : f32 = u_xlat11.x;
        u_xlat13.y = x_2674;
        let x_2676 : vec4<f32> = u_xlat8;
        let x_2679 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2682 : vec4<f32> = u_xlat13;
        u_xlat14 = ((vec4<f32>(x_2676.x, x_2676.y, x_2676.x, x_2676.y) * vec4<f32>(x_2679.x, x_2679.y, x_2679.x, x_2679.y)) + vec4<f32>(x_2682.x, x_2682.y, x_2682.z, x_2682.y));
        let x_2685 : vec4<f32> = u_xlat8;
        let x_2688 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2691 : vec4<f32> = u_xlat13;
        u_xlat60 = ((vec2<f32>(x_2685.x, x_2685.y) * vec2<f32>(x_2688.x, x_2688.y)) + vec2<f32>(x_2691.w, x_2691.y));
        let x_2695 : f32 = u_xlat13.y;
        u_xlat10.y = x_2695;
        let x_2698 : f32 = u_xlat11.z;
        u_xlat13.y = x_2698;
        let x_2700 : vec4<f32> = u_xlat8;
        let x_2703 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2706 : vec4<f32> = u_xlat13;
        u_xlat15 = ((vec4<f32>(x_2700.x, x_2700.y, x_2700.x, x_2700.y) * vec4<f32>(x_2703.x, x_2703.y, x_2703.x, x_2703.y)) + vec4<f32>(x_2706.x, x_2706.y, x_2706.z, x_2706.y));
        let x_2709 : vec4<f32> = u_xlat8;
        let x_2712 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2715 : vec4<f32> = u_xlat13;
        let x_2717 : vec2<f32> = ((vec2<f32>(x_2709.x, x_2709.y) * vec2<f32>(x_2712.x, x_2712.y)) + vec2<f32>(x_2715.w, x_2715.y));
        let x_2718 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_2717.x, x_2717.y, x_2718.z, x_2718.w);
        let x_2721 : f32 = u_xlat13.y;
        u_xlat10.z = x_2721;
        let x_2723 : vec4<f32> = u_xlat8;
        let x_2726 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2729 : vec4<f32> = u_xlat10;
        u_xlat17 = ((vec4<f32>(x_2723.x, x_2723.y, x_2723.x, x_2723.y) * vec4<f32>(x_2726.x, x_2726.y, x_2726.x, x_2726.y)) + vec4<f32>(x_2729.x, x_2729.y, x_2729.x, x_2729.z));
        let x_2733 : f32 = u_xlat11.w;
        u_xlat13.y = x_2733;
        let x_2735 : vec4<f32> = u_xlat8;
        let x_2738 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2741 : vec4<f32> = u_xlat13;
        u_xlat18 = ((vec4<f32>(x_2735.x, x_2735.y, x_2735.x, x_2735.y) * vec4<f32>(x_2738.x, x_2738.y, x_2738.x, x_2738.y)) + vec4<f32>(x_2741.x, x_2741.y, x_2741.z, x_2741.y));
        let x_2745 : vec4<f32> = u_xlat8;
        let x_2748 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2751 : vec4<f32> = u_xlat13;
        u_xlat36 = ((vec2<f32>(x_2745.x, x_2745.y) * vec2<f32>(x_2748.x, x_2748.y)) + vec2<f32>(x_2751.w, x_2751.y));
        let x_2755 : f32 = u_xlat13.y;
        u_xlat10.w = x_2755;
        let x_2758 : vec4<f32> = u_xlat8;
        let x_2761 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2764 : vec4<f32> = u_xlat10;
        u_xlat68 = ((vec2<f32>(x_2758.x, x_2758.y) * vec2<f32>(x_2761.x, x_2761.y)) + vec2<f32>(x_2764.x, x_2764.w));
        let x_2767 : vec4<f32> = u_xlat13;
        let x_2768 : vec3<f32> = vec3<f32>(x_2767.x, x_2767.z, x_2767.w);
        let x_2769 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2768.x, x_2769.y, x_2768.y, x_2768.z);
        let x_2771 : vec4<f32> = u_xlat8;
        let x_2774 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2777 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_2771.x, x_2771.y, x_2771.x, x_2771.y) * vec4<f32>(x_2774.x, x_2774.y, x_2774.x, x_2774.y)) + vec4<f32>(x_2777.x, x_2777.y, x_2777.z, x_2777.y));
        let x_2781 : vec4<f32> = u_xlat8;
        let x_2784 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2787 : vec4<f32> = u_xlat11;
        u_xlat63 = ((vec2<f32>(x_2781.x, x_2781.y) * vec2<f32>(x_2784.x, x_2784.y)) + vec2<f32>(x_2787.w, x_2787.y));
        let x_2791 : f32 = u_xlat10.x;
        u_xlat11.x = x_2791;
        let x_2793 : vec4<f32> = u_xlat8;
        let x_2796 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2799 : vec4<f32> = u_xlat11;
        let x_2801 : vec2<f32> = ((vec2<f32>(x_2793.x, x_2793.y) * vec2<f32>(x_2796.x, x_2796.y)) + vec2<f32>(x_2799.x, x_2799.y));
        let x_2802 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2801.x, x_2801.y, x_2802.z, x_2802.w);
        let x_2805 : vec4<f32> = u_xlat9;
        let x_2807 : vec4<f32> = u_xlat12;
        u_xlat19 = (vec4<f32>(x_2805.x, x_2805.x, x_2805.x, x_2805.x) * x_2807);
        let x_2810 : vec4<f32> = u_xlat9;
        let x_2812 : vec4<f32> = u_xlat12;
        u_xlat20 = (vec4<f32>(x_2810.y, x_2810.y, x_2810.y, x_2810.y) * x_2812);
        let x_2815 : vec4<f32> = u_xlat9;
        let x_2817 : vec4<f32> = u_xlat12;
        u_xlat21 = (vec4<f32>(x_2815.z, x_2815.z, x_2815.z, x_2815.z) * x_2817);
        let x_2819 : vec4<f32> = u_xlat9;
        let x_2821 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_2819.w, x_2819.w, x_2819.w, x_2819.w) * x_2821);
        let x_2824 : vec4<f32> = u_xlat14;
        let x_2825 : vec2<f32> = vec2<f32>(x_2824.x, x_2824.y);
        let x_2827 : f32 = u_xlat4.z;
        txVec43 = vec3<f32>(x_2825.x, x_2825.y, x_2827);
        let x_2834 : vec3<f32> = txVec43;
        let x_2836 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2834.xy, x_2834.z);
        u_xlat83 = x_2836;
        let x_2838 : vec4<f32> = u_xlat14;
        let x_2839 : vec2<f32> = vec2<f32>(x_2838.z, x_2838.w);
        let x_2841 : f32 = u_xlat4.z;
        txVec44 = vec3<f32>(x_2839.x, x_2839.y, x_2841);
        let x_2848 : vec3<f32> = txVec44;
        let x_2850 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2848.xy, x_2848.z);
        u_xlat84 = x_2850;
        let x_2851 : f32 = u_xlat84;
        let x_2853 : f32 = u_xlat19.y;
        u_xlat84 = (x_2851 * x_2853);
        let x_2856 : f32 = u_xlat19.x;
        let x_2857 : f32 = u_xlat83;
        let x_2859 : f32 = u_xlat84;
        u_xlat83 = ((x_2856 * x_2857) + x_2859);
        let x_2862 : vec2<f32> = u_xlat60;
        let x_2864 : f32 = u_xlat4.z;
        txVec45 = vec3<f32>(x_2862.x, x_2862.y, x_2864);
        let x_2871 : vec3<f32> = txVec45;
        let x_2873 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2871.xy, x_2871.z);
        u_xlat84 = x_2873;
        let x_2875 : f32 = u_xlat19.z;
        let x_2876 : f32 = u_xlat84;
        let x_2878 : f32 = u_xlat83;
        u_xlat83 = ((x_2875 * x_2876) + x_2878);
        let x_2881 : vec4<f32> = u_xlat17;
        let x_2882 : vec2<f32> = vec2<f32>(x_2881.x, x_2881.y);
        let x_2884 : f32 = u_xlat4.z;
        txVec46 = vec3<f32>(x_2882.x, x_2882.y, x_2884);
        let x_2891 : vec3<f32> = txVec46;
        let x_2893 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2891.xy, x_2891.z);
        u_xlat84 = x_2893;
        let x_2895 : f32 = u_xlat19.w;
        let x_2896 : f32 = u_xlat84;
        let x_2898 : f32 = u_xlat83;
        u_xlat83 = ((x_2895 * x_2896) + x_2898);
        let x_2901 : vec4<f32> = u_xlat15;
        let x_2902 : vec2<f32> = vec2<f32>(x_2901.x, x_2901.y);
        let x_2904 : f32 = u_xlat4.z;
        txVec47 = vec3<f32>(x_2902.x, x_2902.y, x_2904);
        let x_2911 : vec3<f32> = txVec47;
        let x_2913 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2911.xy, x_2911.z);
        u_xlat84 = x_2913;
        let x_2915 : f32 = u_xlat20.x;
        let x_2916 : f32 = u_xlat84;
        let x_2918 : f32 = u_xlat83;
        u_xlat83 = ((x_2915 * x_2916) + x_2918);
        let x_2921 : vec4<f32> = u_xlat15;
        let x_2922 : vec2<f32> = vec2<f32>(x_2921.z, x_2921.w);
        let x_2924 : f32 = u_xlat4.z;
        txVec48 = vec3<f32>(x_2922.x, x_2922.y, x_2924);
        let x_2931 : vec3<f32> = txVec48;
        let x_2933 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2931.xy, x_2931.z);
        u_xlat84 = x_2933;
        let x_2935 : f32 = u_xlat20.y;
        let x_2936 : f32 = u_xlat84;
        let x_2938 : f32 = u_xlat83;
        u_xlat83 = ((x_2935 * x_2936) + x_2938);
        let x_2941 : vec4<f32> = u_xlat16;
        let x_2942 : vec2<f32> = vec2<f32>(x_2941.x, x_2941.y);
        let x_2944 : f32 = u_xlat4.z;
        txVec49 = vec3<f32>(x_2942.x, x_2942.y, x_2944);
        let x_2951 : vec3<f32> = txVec49;
        let x_2953 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2951.xy, x_2951.z);
        u_xlat84 = x_2953;
        let x_2955 : f32 = u_xlat20.z;
        let x_2956 : f32 = u_xlat84;
        let x_2958 : f32 = u_xlat83;
        u_xlat83 = ((x_2955 * x_2956) + x_2958);
        let x_2961 : vec4<f32> = u_xlat17;
        let x_2962 : vec2<f32> = vec2<f32>(x_2961.z, x_2961.w);
        let x_2964 : f32 = u_xlat4.z;
        txVec50 = vec3<f32>(x_2962.x, x_2962.y, x_2964);
        let x_2971 : vec3<f32> = txVec50;
        let x_2973 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2971.xy, x_2971.z);
        u_xlat84 = x_2973;
        let x_2975 : f32 = u_xlat20.w;
        let x_2976 : f32 = u_xlat84;
        let x_2978 : f32 = u_xlat83;
        u_xlat83 = ((x_2975 * x_2976) + x_2978);
        let x_2981 : vec4<f32> = u_xlat18;
        let x_2982 : vec2<f32> = vec2<f32>(x_2981.x, x_2981.y);
        let x_2984 : f32 = u_xlat4.z;
        txVec51 = vec3<f32>(x_2982.x, x_2982.y, x_2984);
        let x_2991 : vec3<f32> = txVec51;
        let x_2993 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2991.xy, x_2991.z);
        u_xlat84 = x_2993;
        let x_2995 : f32 = u_xlat21.x;
        let x_2996 : f32 = u_xlat84;
        let x_2998 : f32 = u_xlat83;
        u_xlat83 = ((x_2995 * x_2996) + x_2998);
        let x_3001 : vec4<f32> = u_xlat18;
        let x_3002 : vec2<f32> = vec2<f32>(x_3001.z, x_3001.w);
        let x_3004 : f32 = u_xlat4.z;
        txVec52 = vec3<f32>(x_3002.x, x_3002.y, x_3004);
        let x_3011 : vec3<f32> = txVec52;
        let x_3013 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3011.xy, x_3011.z);
        u_xlat84 = x_3013;
        let x_3015 : f32 = u_xlat21.y;
        let x_3016 : f32 = u_xlat84;
        let x_3018 : f32 = u_xlat83;
        u_xlat83 = ((x_3015 * x_3016) + x_3018);
        let x_3021 : vec2<f32> = u_xlat36;
        let x_3023 : f32 = u_xlat4.z;
        txVec53 = vec3<f32>(x_3021.x, x_3021.y, x_3023);
        let x_3030 : vec3<f32> = txVec53;
        let x_3032 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3030.xy, x_3030.z);
        u_xlat84 = x_3032;
        let x_3034 : f32 = u_xlat21.z;
        let x_3035 : f32 = u_xlat84;
        let x_3037 : f32 = u_xlat83;
        u_xlat83 = ((x_3034 * x_3035) + x_3037);
        let x_3040 : vec2<f32> = u_xlat68;
        let x_3042 : f32 = u_xlat4.z;
        txVec54 = vec3<f32>(x_3040.x, x_3040.y, x_3042);
        let x_3049 : vec3<f32> = txVec54;
        let x_3051 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3049.xy, x_3049.z);
        u_xlat84 = x_3051;
        let x_3053 : f32 = u_xlat21.w;
        let x_3054 : f32 = u_xlat84;
        let x_3056 : f32 = u_xlat83;
        u_xlat83 = ((x_3053 * x_3054) + x_3056);
        let x_3059 : vec4<f32> = u_xlat13;
        let x_3060 : vec2<f32> = vec2<f32>(x_3059.x, x_3059.y);
        let x_3062 : f32 = u_xlat4.z;
        txVec55 = vec3<f32>(x_3060.x, x_3060.y, x_3062);
        let x_3069 : vec3<f32> = txVec55;
        let x_3071 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3069.xy, x_3069.z);
        u_xlat84 = x_3071;
        let x_3073 : f32 = u_xlat9.x;
        let x_3074 : f32 = u_xlat84;
        let x_3076 : f32 = u_xlat83;
        u_xlat83 = ((x_3073 * x_3074) + x_3076);
        let x_3079 : vec4<f32> = u_xlat13;
        let x_3080 : vec2<f32> = vec2<f32>(x_3079.z, x_3079.w);
        let x_3082 : f32 = u_xlat4.z;
        txVec56 = vec3<f32>(x_3080.x, x_3080.y, x_3082);
        let x_3089 : vec3<f32> = txVec56;
        let x_3091 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3089.xy, x_3089.z);
        u_xlat84 = x_3091;
        let x_3093 : f32 = u_xlat9.y;
        let x_3094 : f32 = u_xlat84;
        let x_3096 : f32 = u_xlat83;
        u_xlat83 = ((x_3093 * x_3094) + x_3096);
        let x_3099 : vec2<f32> = u_xlat63;
        let x_3101 : f32 = u_xlat4.z;
        txVec57 = vec3<f32>(x_3099.x, x_3099.y, x_3101);
        let x_3108 : vec3<f32> = txVec57;
        let x_3110 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3108.xy, x_3108.z);
        u_xlat84 = x_3110;
        let x_3112 : f32 = u_xlat9.z;
        let x_3113 : f32 = u_xlat84;
        let x_3115 : f32 = u_xlat83;
        u_xlat83 = ((x_3112 * x_3113) + x_3115);
        let x_3118 : vec4<f32> = u_xlat8;
        let x_3119 : vec2<f32> = vec2<f32>(x_3118.x, x_3118.y);
        let x_3121 : f32 = u_xlat4.z;
        txVec58 = vec3<f32>(x_3119.x, x_3119.y, x_3121);
        let x_3128 : vec3<f32> = txVec58;
        let x_3130 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3128.xy, x_3128.z);
        u_xlat84 = x_3130;
        let x_3132 : f32 = u_xlat9.w;
        let x_3133 : f32 = u_xlat84;
        let x_3135 : f32 = u_xlat83;
        u_xlat78 = ((x_3132 * x_3133) + x_3135);
      }
    }
  } else {
    let x_3139 : vec4<f32> = u_xlat4;
    let x_3140 : vec2<f32> = vec2<f32>(x_3139.x, x_3139.y);
    let x_3142 : f32 = u_xlat4.z;
    txVec59 = vec3<f32>(x_3140.x, x_3140.y, x_3142);
    let x_3149 : vec3<f32> = txVec59;
    let x_3151 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3149.xy, x_3149.z);
    u_xlat78 = x_3151;
  }
  let x_3152 : f32 = u_xlat78;
  let x_3154 : f32 = x_130.x_MainLightShadowParams.x;
  let x_3156 : f32 = u_xlat82;
  u_xlat78 = ((x_3152 * x_3154) + x_3156);
  let x_3159 : bool = u_xlatb5.x;
  let x_3160 : f32 = u_xlat78;
  u_xlat78 = select(x_3160, 1.0f, x_3159);
  let x_3162 : vec3<f32> = vs_INTERP8;
  let x_3164 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  let x_3166 : vec3<f32> = (x_3162 + -(x_3164));
  let x_3167 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_3166.x, x_3166.y, x_3166.z, x_3167.w);
  let x_3169 : vec4<f32> = u_xlat4;
  let x_3171 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_3169.x, x_3169.y, x_3169.z), vec3<f32>(x_3171.x, x_3171.y, x_3171.z));
  let x_3177 : f32 = u_xlat4.x;
  let x_3179 : f32 = x_130.x_MainLightShadowParams.z;
  let x_3182 : f32 = x_130.x_MainLightShadowParams.w;
  u_xlat30.x = ((x_3177 * x_3179) + x_3182);
  let x_3186 : f32 = u_xlat30.x;
  u_xlat30.x = clamp(x_3186, 0.0f, 1.0f);
  let x_3190 : f32 = u_xlat78;
  u_xlat56 = (-(x_3190) + 1.0f);
  let x_3194 : f32 = u_xlat30.x;
  let x_3195 : f32 = u_xlat56;
  let x_3197 : f32 = u_xlat78;
  u_xlat78 = ((x_3194 * x_3195) + x_3197);
  let x_3209 : f32 = x_3207.x_MainLightCookieTextureFormat;
  u_xlatb30.x = !((x_3209 == -1.0f));
  let x_3213 : bool = u_xlatb30.x;
  if (x_3213) {
    let x_3216 : vec3<f32> = vs_INTERP8;
    let x_3219 : vec4<f32> = x_3207.x_MainLightWorldToLight[1i];
    let x_3221 : vec2<f32> = (vec2<f32>(x_3216.y, x_3216.y) * vec2<f32>(x_3219.x, x_3219.y));
    let x_3222 : vec3<f32> = u_xlat30;
    u_xlat30 = vec3<f32>(x_3221.x, x_3221.y, x_3222.z);
    let x_3225 : vec4<f32> = x_3207.x_MainLightWorldToLight[0i];
    let x_3227 : vec3<f32> = vs_INTERP8;
    let x_3230 : vec3<f32> = u_xlat30;
    let x_3232 : vec2<f32> = ((vec2<f32>(x_3225.x, x_3225.y) * vec2<f32>(x_3227.x, x_3227.x)) + vec2<f32>(x_3230.x, x_3230.y));
    let x_3233 : vec3<f32> = u_xlat30;
    u_xlat30 = vec3<f32>(x_3232.x, x_3232.y, x_3233.z);
    let x_3236 : vec4<f32> = x_3207.x_MainLightWorldToLight[2i];
    let x_3238 : vec3<f32> = vs_INTERP8;
    let x_3241 : vec3<f32> = u_xlat30;
    let x_3243 : vec2<f32> = ((vec2<f32>(x_3236.x, x_3236.y) * vec2<f32>(x_3238.z, x_3238.z)) + vec2<f32>(x_3241.x, x_3241.y));
    let x_3244 : vec3<f32> = u_xlat30;
    u_xlat30 = vec3<f32>(x_3243.x, x_3243.y, x_3244.z);
    let x_3246 : vec3<f32> = u_xlat30;
    let x_3249 : vec4<f32> = x_3207.x_MainLightWorldToLight[3i];
    let x_3251 : vec2<f32> = (vec2<f32>(x_3246.x, x_3246.y) + vec2<f32>(x_3249.x, x_3249.y));
    let x_3252 : vec3<f32> = u_xlat30;
    u_xlat30 = vec3<f32>(x_3251.x, x_3251.y, x_3252.z);
    let x_3254 : vec3<f32> = u_xlat30;
    let x_3257 : vec2<f32> = ((vec2<f32>(x_3254.x, x_3254.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_3258 : vec3<f32> = u_xlat30;
    u_xlat30 = vec3<f32>(x_3257.x, x_3257.y, x_3258.z);
    let x_3265 : vec3<f32> = u_xlat30;
    let x_3268 : f32 = x_53.x_GlobalMipBias.x;
    let x_3269 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_3265.x, x_3265.y), x_3268);
    u_xlat8 = x_3269;
    let x_3271 : f32 = x_3207.x_MainLightCookieTextureFormat;
    let x_3273 : f32 = x_3207.x_MainLightCookieTextureFormat;
    let x_3275 : f32 = x_3207.x_MainLightCookieTextureFormat;
    let x_3277 : f32 = x_3207.x_MainLightCookieTextureFormat;
    let x_3278 : vec4<f32> = vec4<f32>(x_3271, x_3273, x_3275, x_3277);
    let x_3285 : vec4<bool> = (vec4<f32>(x_3278.x, x_3278.y, x_3278.z, x_3278.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb30 = vec2<bool>(x_3285.x, x_3285.y);
    let x_3288 : bool = u_xlatb30.y;
    if (x_3288) {
      let x_3293 : f32 = u_xlat8.w;
      x_3289 = x_3293;
    } else {
      let x_3296 : f32 = u_xlat8.x;
      x_3289 = x_3296;
    }
    let x_3297 : f32 = x_3289;
    u_xlat56 = x_3297;
    let x_3299 : bool = u_xlatb30.x;
    if (x_3299) {
      let x_3303 : vec4<f32> = u_xlat8;
      x_3300 = vec3<f32>(x_3303.x, x_3303.y, x_3303.z);
    } else {
      let x_3306 : f32 = u_xlat56;
      x_3300 = vec3<f32>(x_3306, x_3306, x_3306);
    }
    let x_3308 : vec3<f32> = x_3300;
    u_xlat30 = x_3308;
  } else {
    u_xlat30.x = 1.0f;
    u_xlat30.y = 1.0f;
    u_xlat30.z = 1.0f;
  }
  let x_3313 : vec3<f32> = u_xlat30;
  let x_3315 : vec4<f32> = x_53.x_MainLightColor;
  u_xlat30 = (x_3313 * vec3<f32>(x_3315.x, x_3315.y, x_3315.z));
  let x_3318 : vec4<f32> = u_xlat7;
  let x_3321 : vec4<f32> = u_xlat6;
  u_xlat5.x = dot(-(vec3<f32>(x_3318.x, x_3318.y, x_3318.z)), vec3<f32>(x_3321.x, x_3321.y, x_3321.z));
  let x_3326 : f32 = u_xlat5.x;
  let x_3328 : f32 = u_xlat5.x;
  u_xlat5.x = (x_3326 + x_3328);
  let x_3331 : vec4<f32> = u_xlat6;
  let x_3333 : vec4<f32> = u_xlat5;
  let x_3337 : vec4<f32> = u_xlat7;
  let x_3340 : vec3<f32> = ((vec3<f32>(x_3331.x, x_3331.y, x_3331.z) * -(vec3<f32>(x_3333.x, x_3333.x, x_3333.x))) + -(vec3<f32>(x_3337.x, x_3337.y, x_3337.z)));
  let x_3341 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3340.x, x_3340.y, x_3340.z, x_3341.w);
  let x_3343 : vec4<f32> = u_xlat6;
  let x_3345 : vec4<f32> = u_xlat7;
  u_xlat5.x = dot(vec3<f32>(x_3343.x, x_3343.y, x_3343.z), vec3<f32>(x_3345.x, x_3345.y, x_3345.z));
  let x_3350 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_3350, 0.0f, 1.0f);
  let x_3354 : f32 = u_xlat5.x;
  u_xlat5.x = (-(x_3354) + 1.0f);
  let x_3359 : f32 = u_xlat5.x;
  let x_3361 : f32 = u_xlat5.x;
  u_xlat5.x = (x_3359 * x_3361);
  let x_3365 : f32 = u_xlat5.x;
  let x_3367 : f32 = u_xlat5.x;
  u_xlat5.x = (x_3365 * x_3367);
  let x_3371 : f32 = u_xlat27.x;
  u_xlat83 = ((-(x_3371) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3378 : f32 = u_xlat27.x;
  let x_3379 : f32 = u_xlat83;
  u_xlat27.x = (x_3378 * x_3379);
  let x_3383 : f32 = u_xlat27.x;
  u_xlat27.x = (x_3383 * 6.0f);
  let x_3395 : vec4<f32> = u_xlat8;
  let x_3398 : f32 = u_xlat27.x;
  let x_3399 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_3395.x, x_3395.y, x_3395.z), x_3398);
  u_xlat8 = x_3399;
  let x_3401 : f32 = u_xlat8.w;
  u_xlat27.x = (x_3401 + -1.0f);
  let x_3405 : f32 = x_1750.unity_SpecCube0_HDR.w;
  let x_3407 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_3405 * x_3407) + 1.0f);
  let x_3412 : f32 = u_xlat27.x;
  u_xlat27.x = max(x_3412, 0.0f);
  let x_3416 : f32 = u_xlat27.x;
  u_xlat27.x = log2(x_3416);
  let x_3420 : f32 = u_xlat27.x;
  let x_3422 : f32 = x_1750.unity_SpecCube0_HDR.y;
  u_xlat27.x = (x_3420 * x_3422);
  let x_3426 : f32 = u_xlat27.x;
  u_xlat27.x = exp2(x_3426);
  let x_3430 : f32 = u_xlat27.x;
  let x_3432 : f32 = x_1750.unity_SpecCube0_HDR.x;
  u_xlat27.x = (x_3430 * x_3432);
  let x_3435 : vec4<f32> = u_xlat8;
  let x_3437 : vec3<f32> = u_xlat27;
  let x_3439 : vec3<f32> = (vec3<f32>(x_3435.x, x_3435.y, x_3435.z) * vec3<f32>(x_3437.x, x_3437.x, x_3437.x));
  let x_3440 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3439.x, x_3439.y, x_3439.z, x_3440.w);
  let x_3442 : f32 = u_xlat79;
  let x_3444 : f32 = u_xlat79;
  let x_3448 : vec2<f32> = ((vec2<f32>(x_3442, x_3442) * vec2<f32>(x_3444, x_3444)) + vec2<f32>(-1.0f, 1.0f));
  let x_3449 : vec3<f32> = u_xlat27;
  u_xlat27 = vec3<f32>(x_3448.x, x_3449.y, x_3448.y);
  let x_3452 : f32 = u_xlat27.z;
  u_xlat79 = (1.0f / x_3452);
  let x_3455 : f32 = u_xlat3.x;
  u_xlat3.x = (x_3455 + -0.03999999910593032837f);
  let x_3460 : f32 = u_xlat5.x;
  let x_3462 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_3460 * x_3462) + 0.03999999910593032837f);
  let x_3467 : f32 = u_xlat79;
  let x_3469 : f32 = u_xlat3.x;
  u_xlat79 = (x_3467 * x_3469);
  let x_3471 : f32 = u_xlat79;
  let x_3473 : vec4<f32> = u_xlat8;
  let x_3475 : vec3<f32> = (vec3<f32>(x_3471, x_3471, x_3471) * vec3<f32>(x_3473.x, x_3473.y, x_3473.z));
  let x_3476 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3475.x, x_3475.y, x_3475.z, x_3476.w);
  let x_3478 : vec3<f32> = u_xlat29;
  let x_3479 : vec3<f32> = u_xlat2;
  let x_3481 : vec4<f32> = u_xlat8;
  let x_3483 : vec3<f32> = ((x_3478 * x_3479) + vec3<f32>(x_3481.x, x_3481.y, x_3481.z));
  let x_3484 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_3483.x, x_3483.y, x_3483.z, x_3484.w);
  let x_3486 : f32 = u_xlat78;
  let x_3488 : f32 = x_1750.unity_LightData.z;
  u_xlat78 = (x_3486 * x_3488);
  let x_3490 : vec4<f32> = u_xlat6;
  let x_3493 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat79 = dot(vec3<f32>(x_3490.x, x_3490.y, x_3490.z), vec3<f32>(x_3493.x, x_3493.y, x_3493.z));
  let x_3496 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3496, 0.0f, 1.0f);
  let x_3498 : f32 = u_xlat78;
  let x_3499 : f32 = u_xlat79;
  u_xlat78 = (x_3498 * x_3499);
  let x_3501 : f32 = u_xlat78;
  let x_3503 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_3501, x_3501, x_3501) * x_3503);
  let x_3505 : vec4<f32> = u_xlat7;
  let x_3508 : vec4<f32> = x_53.x_MainLightPosition;
  let x_3510 : vec3<f32> = (vec3<f32>(x_3505.x, x_3505.y, x_3505.z) + vec3<f32>(x_3508.x, x_3508.y, x_3508.z));
  let x_3511 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3510.x, x_3510.y, x_3510.z, x_3511.w);
  let x_3513 : vec4<f32> = u_xlat8;
  let x_3515 : vec4<f32> = u_xlat8;
  u_xlat78 = dot(vec3<f32>(x_3513.x, x_3513.y, x_3513.z), vec3<f32>(x_3515.x, x_3515.y, x_3515.z));
  let x_3518 : f32 = u_xlat78;
  u_xlat78 = max(x_3518, 1.17549435e-38f);
  let x_3521 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_3521);
  let x_3523 : f32 = u_xlat78;
  let x_3525 : vec4<f32> = u_xlat8;
  let x_3527 : vec3<f32> = (vec3<f32>(x_3523, x_3523, x_3523) * vec3<f32>(x_3525.x, x_3525.y, x_3525.z));
  let x_3528 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3527.x, x_3527.y, x_3527.z, x_3528.w);
  let x_3530 : vec4<f32> = u_xlat6;
  let x_3532 : vec4<f32> = u_xlat8;
  u_xlat78 = dot(vec3<f32>(x_3530.x, x_3530.y, x_3530.z), vec3<f32>(x_3532.x, x_3532.y, x_3532.z));
  let x_3535 : f32 = u_xlat78;
  u_xlat78 = clamp(x_3535, 0.0f, 1.0f);
  let x_3538 : vec4<f32> = x_53.x_MainLightPosition;
  let x_3540 : vec4<f32> = u_xlat8;
  u_xlat79 = dot(vec3<f32>(x_3538.x, x_3538.y, x_3538.z), vec3<f32>(x_3540.x, x_3540.y, x_3540.z));
  let x_3543 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3543, 0.0f, 1.0f);
  let x_3545 : f32 = u_xlat78;
  let x_3546 : f32 = u_xlat78;
  u_xlat78 = (x_3545 * x_3546);
  let x_3548 : f32 = u_xlat78;
  let x_3550 : f32 = u_xlat27.x;
  u_xlat78 = ((x_3548 * x_3550) + 1.00001001358032226562f);
  let x_3554 : f32 = u_xlat79;
  let x_3555 : f32 = u_xlat79;
  u_xlat79 = (x_3554 * x_3555);
  let x_3557 : f32 = u_xlat78;
  let x_3558 : f32 = u_xlat78;
  u_xlat78 = (x_3557 * x_3558);
  let x_3560 : f32 = u_xlat79;
  u_xlat79 = max(x_3560, 0.10000000149011611938f);
  let x_3563 : f32 = u_xlat78;
  let x_3564 : f32 = u_xlat79;
  u_xlat78 = (x_3563 * x_3564);
  let x_3567 : f32 = u_xlat31.x;
  let x_3568 : f32 = u_xlat78;
  u_xlat78 = (x_3567 * x_3568);
  let x_3570 : f32 = u_xlat80;
  let x_3571 : f32 = u_xlat78;
  u_xlat78 = (x_3570 / x_3571);
  let x_3573 : f32 = u_xlat78;
  let x_3577 : vec3<f32> = u_xlat2;
  let x_3578 : vec3<f32> = ((vec3<f32>(x_3573, x_3573, x_3573) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3577);
  let x_3579 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3578.x, x_3578.y, x_3578.z, x_3579.w);
  let x_3581 : vec3<f32> = u_xlat30;
  let x_3582 : vec4<f32> = u_xlat8;
  u_xlat30 = (x_3581 * vec3<f32>(x_3582.x, x_3582.y, x_3582.z));
  let x_3586 : f32 = x_53.x_AdditionalLightsCount.x;
  let x_3588 : f32 = x_1750.unity_LightData.y;
  u_xlat78 = min(x_3586, x_3588);
  let x_3590 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_3590));
  let x_3594 : f32 = u_xlat4.x;
  let x_3597 : f32 = x_130.x_AdditionalShadowFadeParams.x;
  let x_3600 : f32 = x_130.x_AdditionalShadowFadeParams.y;
  u_xlat79 = ((x_3594 * x_3597) + x_3600);
  let x_3602 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3602, 0.0f, 1.0f);
  let x_3605 : f32 = x_3207.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3607 : f32 = x_3207.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3609 : f32 = x_3207.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3611 : f32 = x_3207.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3612 : vec4<f32> = vec4<f32>(x_3605, x_3607, x_3609, x_3611);
  let x_3619 : vec4<bool> = (vec4<f32>(x_3612.x, x_3612.y, x_3612.z, x_3612.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_3620 : vec2<bool> = vec2<bool>(x_3619.x, x_3619.w);
  let x_3621 : vec4<bool> = u_xlatb5;
  u_xlatb5 = vec4<bool>(x_3620.x, x_3621.y, x_3621.z, x_3620.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3633 : u32 = u_xlatu_loop_1;
    let x_3634 : u32 = u_xlatu78;
    if ((x_3633 < x_3634)) {
    } else {
      break;
    }
    let x_3637 : u32 = u_xlatu_loop_1;
    u_xlatu4 = (x_3637 >> 2u);
    let x_3640 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_3640 & 3u));
    let x_3643 : u32 = u_xlatu4;
    let x_3646 : vec4<f32> = x_1750.unity_LightIndices[bitcast<i32>(x_3643)];
    let x_3656 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3661 : vec4<u32> = indexable[x_3656];
    u_xlat4.x = dot(x_3646, bitcast<vec4<f32>>(x_3661));
    let x_3667 : f32 = u_xlat4.x;
    u_xlati4 = i32(x_3667);
    let x_3669 : vec3<f32> = vs_INTERP8;
    let x_3680 : i32 = u_xlati4;
    let x_3682 : vec4<f32> = x_3679.x_AdditionalLightsPosition[x_3680];
    let x_3685 : i32 = u_xlati4;
    let x_3687 : vec4<f32> = x_3679.x_AdditionalLightsPosition[x_3685];
    let x_3689 : vec3<f32> = ((-(x_3669) * vec3<f32>(x_3682.w, x_3682.w, x_3682.w)) + vec3<f32>(x_3687.x, x_3687.y, x_3687.z));
    let x_3690 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3689.x, x_3689.y, x_3689.z, x_3690.w);
    let x_3692 : vec4<f32> = u_xlat9;
    let x_3694 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_3692.x, x_3692.y, x_3692.z), vec3<f32>(x_3694.x, x_3694.y, x_3694.z));
    let x_3697 : f32 = u_xlat84;
    u_xlat84 = max(x_3697, 0.00006103515625f);
    let x_3700 : f32 = u_xlat84;
    u_xlat85 = inverseSqrt(x_3700);
    let x_3702 : f32 = u_xlat85;
    let x_3704 : vec4<f32> = u_xlat9;
    let x_3706 : vec3<f32> = (vec3<f32>(x_3702, x_3702, x_3702) * vec3<f32>(x_3704.x, x_3704.y, x_3704.z));
    let x_3707 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3706.x, x_3706.y, x_3706.z, x_3707.w);
    let x_3710 : f32 = u_xlat84;
    u_xlat86 = (1.0f / x_3710);
    let x_3712 : f32 = u_xlat84;
    let x_3713 : i32 = u_xlati4;
    let x_3715 : f32 = x_3679.x_AdditionalLightsAttenuation[x_3713].x;
    u_xlat84 = (x_3712 * x_3715);
    let x_3717 : f32 = u_xlat84;
    let x_3719 : f32 = u_xlat84;
    u_xlat84 = ((-(x_3717) * x_3719) + 1.0f);
    let x_3722 : f32 = u_xlat84;
    u_xlat84 = max(x_3722, 0.0f);
    let x_3724 : f32 = u_xlat84;
    let x_3725 : f32 = u_xlat84;
    u_xlat84 = (x_3724 * x_3725);
    let x_3727 : f32 = u_xlat84;
    let x_3728 : f32 = u_xlat86;
    u_xlat84 = (x_3727 * x_3728);
    let x_3730 : i32 = u_xlati4;
    let x_3732 : vec4<f32> = x_3679.x_AdditionalLightsSpotDir[x_3730];
    let x_3734 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_3732.x, x_3732.y, x_3732.z), vec3<f32>(x_3734.x, x_3734.y, x_3734.z));
    let x_3737 : f32 = u_xlat86;
    let x_3738 : i32 = u_xlati4;
    let x_3740 : f32 = x_3679.x_AdditionalLightsAttenuation[x_3738].z;
    let x_3742 : i32 = u_xlati4;
    let x_3744 : f32 = x_3679.x_AdditionalLightsAttenuation[x_3742].w;
    u_xlat86 = ((x_3737 * x_3740) + x_3744);
    let x_3746 : f32 = u_xlat86;
    u_xlat86 = clamp(x_3746, 0.0f, 1.0f);
    let x_3748 : f32 = u_xlat86;
    let x_3749 : f32 = u_xlat86;
    u_xlat86 = (x_3748 * x_3749);
    let x_3751 : f32 = u_xlat84;
    let x_3752 : f32 = u_xlat86;
    u_xlat84 = (x_3751 * x_3752);
    let x_3756 : i32 = u_xlati4;
    let x_3758 : f32 = x_130.x_AdditionalShadowParams[x_3756].w;
    u_xlati86 = i32(x_3758);
    let x_3761 : i32 = u_xlati86;
    u_xlatb87 = (x_3761 >= 0i);
    let x_3763 : bool = u_xlatb87;
    if (x_3763) {
      let x_3767 : i32 = u_xlati4;
      let x_3769 : f32 = x_130.x_AdditionalShadowParams[x_3767].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3769, x_3769, x_3769, x_3769))));
      let x_3773 : bool = u_xlatb87;
      if (x_3773) {
        let x_3777 : vec4<f32> = u_xlat10;
        let x_3780 : vec4<f32> = u_xlat10;
        let x_3783 : vec4<bool> = (abs(vec4<f32>(x_3777.z, x_3777.z, x_3777.y, x_3777.z)) >= abs(vec4<f32>(x_3780.x, x_3780.y, x_3780.x, x_3780.x)));
        let x_3784 : vec3<bool> = vec3<bool>(x_3783.x, x_3783.y, x_3783.z);
        let x_3785 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3784.x, x_3784.y, x_3784.z, x_3785.w);
        let x_3788 : bool = u_xlatb11.y;
        let x_3790 : bool = u_xlatb11.x;
        u_xlatb87 = (x_3788 & x_3790);
        let x_3792 : vec4<f32> = u_xlat10;
        let x_3795 : vec4<bool> = (-(vec4<f32>(x_3792.z, x_3792.y, x_3792.z, x_3792.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3796 : vec3<bool> = vec3<bool>(x_3795.x, x_3795.y, x_3795.w);
        let x_3797 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3796.x, x_3796.y, x_3797.z, x_3796.z);
        let x_3800 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3800);
        let x_3805 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3805);
        let x_3810 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_3810);
        let x_3813 : bool = u_xlatb11.z;
        if (x_3813) {
          let x_3818 : f32 = u_xlat11.y;
          x_3814 = x_3818;
        } else {
          let x_3820 : f32 = u_xlat88;
          x_3814 = x_3820;
        }
        let x_3821 : f32 = x_3814;
        u_xlat88 = x_3821;
        let x_3823 : bool = u_xlatb87;
        if (x_3823) {
          let x_3828 : f32 = u_xlat11.x;
          x_3824 = x_3828;
        } else {
          let x_3830 : f32 = u_xlat88;
          x_3824 = x_3830;
        }
        let x_3831 : f32 = x_3824;
        u_xlat87 = x_3831;
        let x_3832 : i32 = u_xlati4;
        let x_3834 : f32 = x_130.x_AdditionalShadowParams[x_3832].w;
        u_xlat88 = trunc(x_3834);
        let x_3836 : f32 = u_xlat87;
        let x_3837 : f32 = u_xlat88;
        u_xlat87 = (x_3836 + x_3837);
        let x_3839 : f32 = u_xlat87;
        u_xlati86 = i32(x_3839);
      }
      let x_3841 : i32 = u_xlati86;
      u_xlati86 = (x_3841 << bitcast<u32>(2i));
      let x_3843 : vec3<f32> = vs_INTERP8;
      let x_3846 : i32 = u_xlati86;
      let x_3849 : i32 = u_xlati86;
      let x_3853 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_3846 + 1i) / 4i)][((x_3849 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3843.y, x_3843.y, x_3843.y, x_3843.y) * x_3853);
      let x_3855 : i32 = u_xlati86;
      let x_3857 : i32 = u_xlati86;
      let x_3860 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[(x_3855 / 4i)][(x_3857 % 4i)];
      let x_3861 : vec3<f32> = vs_INTERP8;
      let x_3864 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3860 * vec4<f32>(x_3861.x, x_3861.x, x_3861.x, x_3861.x)) + x_3864);
      let x_3866 : i32 = u_xlati86;
      let x_3869 : i32 = u_xlati86;
      let x_3873 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_3866 + 2i) / 4i)][((x_3869 + 2i) % 4i)];
      let x_3874 : vec3<f32> = vs_INTERP8;
      let x_3877 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3873 * vec4<f32>(x_3874.z, x_3874.z, x_3874.z, x_3874.z)) + x_3877);
      let x_3879 : vec4<f32> = u_xlat11;
      let x_3880 : i32 = u_xlati86;
      let x_3883 : i32 = u_xlati86;
      let x_3887 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_3880 + 3i) / 4i)][((x_3883 + 3i) % 4i)];
      u_xlat11 = (x_3879 + x_3887);
      let x_3889 : vec4<f32> = u_xlat11;
      let x_3891 : vec4<f32> = u_xlat11;
      let x_3893 : vec3<f32> = (vec3<f32>(x_3889.x, x_3889.y, x_3889.z) / vec3<f32>(x_3891.w, x_3891.w, x_3891.w));
      let x_3894 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3893.x, x_3893.y, x_3893.z, x_3894.w);
      let x_3897 : i32 = u_xlati4;
      let x_3899 : f32 = x_130.x_AdditionalShadowParams[x_3897].y;
      u_xlatb86 = (0.0f < x_3899);
      let x_3901 : bool = u_xlatb86;
      if (x_3901) {
        let x_3904 : i32 = u_xlati4;
        let x_3906 : f32 = x_130.x_AdditionalShadowParams[x_3904].y;
        u_xlatb86 = (1.0f == x_3906);
        let x_3908 : bool = u_xlatb86;
        if (x_3908) {
          let x_3911 : vec4<f32> = u_xlat11;
          let x_3915 : vec4<f32> = x_130.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3911.x, x_3911.y, x_3911.x, x_3911.y) + x_3915);
          let x_3918 : vec4<f32> = u_xlat12;
          let x_3919 : vec2<f32> = vec2<f32>(x_3918.x, x_3918.y);
          let x_3921 : f32 = u_xlat11.z;
          txVec60 = vec3<f32>(x_3919.x, x_3919.y, x_3921);
          let x_3929 : vec3<f32> = txVec60;
          let x_3931 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3929.xy, x_3929.z);
          u_xlat13.x = x_3931;
          let x_3934 : vec4<f32> = u_xlat12;
          let x_3935 : vec2<f32> = vec2<f32>(x_3934.z, x_3934.w);
          let x_3937 : f32 = u_xlat11.z;
          txVec61 = vec3<f32>(x_3935.x, x_3935.y, x_3937);
          let x_3944 : vec3<f32> = txVec61;
          let x_3946 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3944.xy, x_3944.z);
          u_xlat13.y = x_3946;
          let x_3948 : vec4<f32> = u_xlat11;
          let x_3952 : vec4<f32> = x_130.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3948.x, x_3948.y, x_3948.x, x_3948.y) + x_3952);
          let x_3955 : vec4<f32> = u_xlat12;
          let x_3956 : vec2<f32> = vec2<f32>(x_3955.x, x_3955.y);
          let x_3958 : f32 = u_xlat11.z;
          txVec62 = vec3<f32>(x_3956.x, x_3956.y, x_3958);
          let x_3965 : vec3<f32> = txVec62;
          let x_3967 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3965.xy, x_3965.z);
          u_xlat13.z = x_3967;
          let x_3970 : vec4<f32> = u_xlat12;
          let x_3971 : vec2<f32> = vec2<f32>(x_3970.z, x_3970.w);
          let x_3973 : f32 = u_xlat11.z;
          txVec63 = vec3<f32>(x_3971.x, x_3971.y, x_3973);
          let x_3980 : vec3<f32> = txVec63;
          let x_3982 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3980.xy, x_3980.z);
          u_xlat13.w = x_3982;
          let x_3984 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_3984, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3987 : i32 = u_xlati4;
          let x_3989 : f32 = x_130.x_AdditionalShadowParams[x_3987].y;
          u_xlatb87 = (2.0f == x_3989);
          let x_3991 : bool = u_xlatb87;
          if (x_3991) {
            let x_3994 : vec4<f32> = u_xlat11;
            let x_3998 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4001 : vec2<f32> = ((vec2<f32>(x_3994.x, x_3994.y) * vec2<f32>(x_3998.z, x_3998.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4002 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4001.x, x_4001.y, x_4002.z, x_4002.w);
            let x_4004 : vec4<f32> = u_xlat12;
            let x_4006 : vec2<f32> = floor(vec2<f32>(x_4004.x, x_4004.y));
            let x_4007 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4006.x, x_4006.y, x_4007.z, x_4007.w);
            let x_4010 : vec4<f32> = u_xlat11;
            let x_4013 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4016 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4010.x, x_4010.y) * vec2<f32>(x_4013.z, x_4013.w)) + -(vec2<f32>(x_4016.x, x_4016.y)));
            let x_4020 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4020.x, x_4020.x, x_4020.y, x_4020.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4023 : vec4<f32> = u_xlat13;
            let x_4025 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4023.x, x_4023.x, x_4023.z, x_4023.z) * vec4<f32>(x_4025.x, x_4025.x, x_4025.z, x_4025.z));
            let x_4028 : vec4<f32> = u_xlat14;
            let x_4030 : vec2<f32> = (vec2<f32>(x_4028.y, x_4028.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_4031 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4030.x, x_4031.y, x_4030.y, x_4031.w);
            let x_4033 : vec4<f32> = u_xlat14;
            let x_4036 : vec2<f32> = u_xlat64;
            let x_4038 : vec2<f32> = ((vec2<f32>(x_4033.x, x_4033.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4036));
            let x_4039 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4038.x, x_4038.y, x_4039.z, x_4039.w);
            let x_4042 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_4042) + vec2<f32>(1.0f, 1.0f));
            let x_4045 : vec2<f32> = u_xlat64;
            let x_4046 : vec2<f32> = min(x_4045, vec2<f32>(0.0f, 0.0f));
            let x_4047 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4046.x, x_4046.y, x_4047.z, x_4047.w);
            let x_4049 : vec4<f32> = u_xlat15;
            let x_4052 : vec4<f32> = u_xlat15;
            let x_4055 : vec2<f32> = u_xlat66;
            let x_4056 : vec2<f32> = ((-(vec2<f32>(x_4049.x, x_4049.y)) * vec2<f32>(x_4052.x, x_4052.y)) + x_4055);
            let x_4057 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4056.x, x_4056.y, x_4057.z, x_4057.w);
            let x_4059 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_4059, vec2<f32>(0.0f, 0.0f));
            let x_4061 : vec2<f32> = u_xlat64;
            let x_4063 : vec2<f32> = u_xlat64;
            let x_4065 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_4061) * x_4063) + vec2<f32>(x_4065.y, x_4065.w));
            let x_4068 : vec4<f32> = u_xlat15;
            let x_4070 : vec2<f32> = (vec2<f32>(x_4068.x, x_4068.y) + vec2<f32>(1.0f, 1.0f));
            let x_4071 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4070.x, x_4070.y, x_4071.z, x_4071.w);
            let x_4073 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_4073 + vec2<f32>(1.0f, 1.0f));
            let x_4075 : vec4<f32> = u_xlat14;
            let x_4077 : vec2<f32> = (vec2<f32>(x_4075.x, x_4075.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4078 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4077.x, x_4077.y, x_4078.z, x_4078.w);
            let x_4080 : vec2<f32> = u_xlat66;
            let x_4081 : vec2<f32> = (x_4080 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4082 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4081.x, x_4081.y, x_4082.z, x_4082.w);
            let x_4084 : vec4<f32> = u_xlat15;
            let x_4086 : vec2<f32> = (vec2<f32>(x_4084.x, x_4084.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4087 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4086.x, x_4086.y, x_4087.z, x_4087.w);
            let x_4089 : vec2<f32> = u_xlat64;
            let x_4090 : vec2<f32> = (x_4089 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4091 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4090.x, x_4090.y, x_4091.z, x_4091.w);
            let x_4093 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_4093.y, x_4093.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4097 : f32 = u_xlat15.x;
            u_xlat16.z = x_4097;
            let x_4100 : f32 = u_xlat64.x;
            u_xlat16.w = x_4100;
            let x_4103 : f32 = u_xlat17.x;
            u_xlat14.z = x_4103;
            let x_4106 : f32 = u_xlat13.x;
            u_xlat14.w = x_4106;
            let x_4108 : vec4<f32> = u_xlat14;
            let x_4110 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_4108.z, x_4108.w, x_4108.x, x_4108.z) + vec4<f32>(x_4110.z, x_4110.w, x_4110.x, x_4110.z));
            let x_4114 : f32 = u_xlat16.y;
            u_xlat15.z = x_4114;
            let x_4117 : f32 = u_xlat64.y;
            u_xlat15.w = x_4117;
            let x_4120 : f32 = u_xlat14.y;
            u_xlat17.z = x_4120;
            let x_4123 : f32 = u_xlat13.z;
            u_xlat17.w = x_4123;
            let x_4125 : vec4<f32> = u_xlat15;
            let x_4127 : vec4<f32> = u_xlat17;
            let x_4129 : vec3<f32> = (vec3<f32>(x_4125.z, x_4125.y, x_4125.w) + vec3<f32>(x_4127.z, x_4127.y, x_4127.w));
            let x_4130 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4129.x, x_4129.y, x_4129.z, x_4130.w);
            let x_4132 : vec4<f32> = u_xlat14;
            let x_4134 : vec4<f32> = u_xlat18;
            let x_4136 : vec3<f32> = (vec3<f32>(x_4132.x, x_4132.z, x_4132.w) / vec3<f32>(x_4134.z, x_4134.w, x_4134.y));
            let x_4137 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4136.x, x_4136.y, x_4136.z, x_4137.w);
            let x_4139 : vec4<f32> = u_xlat14;
            let x_4141 : vec3<f32> = (vec3<f32>(x_4139.x, x_4139.y, x_4139.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4142 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4141.x, x_4141.y, x_4141.z, x_4142.w);
            let x_4144 : vec4<f32> = u_xlat17;
            let x_4146 : vec4<f32> = u_xlat13;
            let x_4148 : vec3<f32> = (vec3<f32>(x_4144.z, x_4144.y, x_4144.w) / vec3<f32>(x_4146.x, x_4146.y, x_4146.z));
            let x_4149 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4148.x, x_4148.y, x_4148.z, x_4149.w);
            let x_4151 : vec4<f32> = u_xlat15;
            let x_4153 : vec3<f32> = (vec3<f32>(x_4151.x, x_4151.y, x_4151.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4154 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4153.x, x_4153.y, x_4153.z, x_4154.w);
            let x_4156 : vec4<f32> = u_xlat14;
            let x_4159 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4161 : vec3<f32> = (vec3<f32>(x_4156.y, x_4156.x, x_4156.z) * vec3<f32>(x_4159.x, x_4159.x, x_4159.x));
            let x_4162 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4161.x, x_4161.y, x_4161.z, x_4162.w);
            let x_4164 : vec4<f32> = u_xlat15;
            let x_4167 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4169 : vec3<f32> = (vec3<f32>(x_4164.x, x_4164.y, x_4164.z) * vec3<f32>(x_4167.y, x_4167.y, x_4167.y));
            let x_4170 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4169.x, x_4169.y, x_4169.z, x_4170.w);
            let x_4173 : f32 = u_xlat15.x;
            u_xlat14.w = x_4173;
            let x_4175 : vec4<f32> = u_xlat12;
            let x_4178 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4181 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4175.x, x_4175.y, x_4175.x, x_4175.y) * vec4<f32>(x_4178.x, x_4178.y, x_4178.x, x_4178.y)) + vec4<f32>(x_4181.y, x_4181.w, x_4181.x, x_4181.w));
            let x_4184 : vec4<f32> = u_xlat12;
            let x_4187 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4190 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4184.x, x_4184.y) * vec2<f32>(x_4187.x, x_4187.y)) + vec2<f32>(x_4190.z, x_4190.w));
            let x_4194 : f32 = u_xlat14.y;
            u_xlat15.w = x_4194;
            let x_4196 : vec4<f32> = u_xlat15;
            let x_4197 : vec2<f32> = vec2<f32>(x_4196.y, x_4196.z);
            let x_4198 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4198.x, x_4197.x, x_4198.z, x_4197.y);
            let x_4200 : vec4<f32> = u_xlat12;
            let x_4203 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4206 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_4200.x, x_4200.y, x_4200.x, x_4200.y) * vec4<f32>(x_4203.x, x_4203.y, x_4203.x, x_4203.y)) + vec4<f32>(x_4206.x, x_4206.y, x_4206.z, x_4206.y));
            let x_4209 : vec4<f32> = u_xlat12;
            let x_4212 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4215 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4209.x, x_4209.y, x_4209.x, x_4209.y) * vec4<f32>(x_4212.x, x_4212.y, x_4212.x, x_4212.y)) + vec4<f32>(x_4215.w, x_4215.y, x_4215.w, x_4215.z));
            let x_4218 : vec4<f32> = u_xlat12;
            let x_4221 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4224 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4218.x, x_4218.y, x_4218.x, x_4218.y) * vec4<f32>(x_4221.x, x_4221.y, x_4221.x, x_4221.y)) + vec4<f32>(x_4224.x, x_4224.w, x_4224.z, x_4224.w));
            let x_4227 : vec4<f32> = u_xlat13;
            let x_4229 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_4227.x, x_4227.x, x_4227.x, x_4227.y) * vec4<f32>(x_4229.z, x_4229.w, x_4229.y, x_4229.z));
            let x_4232 : vec4<f32> = u_xlat13;
            let x_4234 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_4232.y, x_4232.y, x_4232.z, x_4232.z) * x_4234);
            let x_4237 : f32 = u_xlat13.z;
            let x_4239 : f32 = u_xlat18.y;
            u_xlat87 = (x_4237 * x_4239);
            let x_4242 : vec4<f32> = u_xlat16;
            let x_4243 : vec2<f32> = vec2<f32>(x_4242.x, x_4242.y);
            let x_4245 : f32 = u_xlat11.z;
            txVec64 = vec3<f32>(x_4243.x, x_4243.y, x_4245);
            let x_4252 : vec3<f32> = txVec64;
            let x_4254 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4252.xy, x_4252.z);
            u_xlat88 = x_4254;
            let x_4256 : vec4<f32> = u_xlat16;
            let x_4257 : vec2<f32> = vec2<f32>(x_4256.z, x_4256.w);
            let x_4259 : f32 = u_xlat11.z;
            txVec65 = vec3<f32>(x_4257.x, x_4257.y, x_4259);
            let x_4267 : vec3<f32> = txVec65;
            let x_4269 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4267.xy, x_4267.z);
            u_xlat89 = x_4269;
            let x_4270 : f32 = u_xlat89;
            let x_4272 : f32 = u_xlat19.y;
            u_xlat89 = (x_4270 * x_4272);
            let x_4275 : f32 = u_xlat19.x;
            let x_4276 : f32 = u_xlat88;
            let x_4278 : f32 = u_xlat89;
            u_xlat88 = ((x_4275 * x_4276) + x_4278);
            let x_4281 : vec2<f32> = u_xlat64;
            let x_4283 : f32 = u_xlat11.z;
            txVec66 = vec3<f32>(x_4281.x, x_4281.y, x_4283);
            let x_4290 : vec3<f32> = txVec66;
            let x_4292 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4290.xy, x_4290.z);
            u_xlat89 = x_4292;
            let x_4294 : f32 = u_xlat19.z;
            let x_4295 : f32 = u_xlat89;
            let x_4297 : f32 = u_xlat88;
            u_xlat88 = ((x_4294 * x_4295) + x_4297);
            let x_4300 : vec4<f32> = u_xlat15;
            let x_4301 : vec2<f32> = vec2<f32>(x_4300.x, x_4300.y);
            let x_4303 : f32 = u_xlat11.z;
            txVec67 = vec3<f32>(x_4301.x, x_4301.y, x_4303);
            let x_4310 : vec3<f32> = txVec67;
            let x_4312 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4310.xy, x_4310.z);
            u_xlat89 = x_4312;
            let x_4314 : f32 = u_xlat19.w;
            let x_4315 : f32 = u_xlat89;
            let x_4317 : f32 = u_xlat88;
            u_xlat88 = ((x_4314 * x_4315) + x_4317);
            let x_4320 : vec4<f32> = u_xlat17;
            let x_4321 : vec2<f32> = vec2<f32>(x_4320.x, x_4320.y);
            let x_4323 : f32 = u_xlat11.z;
            txVec68 = vec3<f32>(x_4321.x, x_4321.y, x_4323);
            let x_4330 : vec3<f32> = txVec68;
            let x_4332 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4330.xy, x_4330.z);
            u_xlat89 = x_4332;
            let x_4334 : f32 = u_xlat20.x;
            let x_4335 : f32 = u_xlat89;
            let x_4337 : f32 = u_xlat88;
            u_xlat88 = ((x_4334 * x_4335) + x_4337);
            let x_4340 : vec4<f32> = u_xlat17;
            let x_4341 : vec2<f32> = vec2<f32>(x_4340.z, x_4340.w);
            let x_4343 : f32 = u_xlat11.z;
            txVec69 = vec3<f32>(x_4341.x, x_4341.y, x_4343);
            let x_4350 : vec3<f32> = txVec69;
            let x_4352 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4350.xy, x_4350.z);
            u_xlat89 = x_4352;
            let x_4354 : f32 = u_xlat20.y;
            let x_4355 : f32 = u_xlat89;
            let x_4357 : f32 = u_xlat88;
            u_xlat88 = ((x_4354 * x_4355) + x_4357);
            let x_4360 : vec4<f32> = u_xlat15;
            let x_4361 : vec2<f32> = vec2<f32>(x_4360.z, x_4360.w);
            let x_4363 : f32 = u_xlat11.z;
            txVec70 = vec3<f32>(x_4361.x, x_4361.y, x_4363);
            let x_4370 : vec3<f32> = txVec70;
            let x_4372 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4370.xy, x_4370.z);
            u_xlat89 = x_4372;
            let x_4374 : f32 = u_xlat20.z;
            let x_4375 : f32 = u_xlat89;
            let x_4377 : f32 = u_xlat88;
            u_xlat88 = ((x_4374 * x_4375) + x_4377);
            let x_4380 : vec4<f32> = u_xlat14;
            let x_4381 : vec2<f32> = vec2<f32>(x_4380.x, x_4380.y);
            let x_4383 : f32 = u_xlat11.z;
            txVec71 = vec3<f32>(x_4381.x, x_4381.y, x_4383);
            let x_4390 : vec3<f32> = txVec71;
            let x_4392 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4390.xy, x_4390.z);
            u_xlat89 = x_4392;
            let x_4394 : f32 = u_xlat20.w;
            let x_4395 : f32 = u_xlat89;
            let x_4397 : f32 = u_xlat88;
            u_xlat88 = ((x_4394 * x_4395) + x_4397);
            let x_4400 : vec4<f32> = u_xlat14;
            let x_4401 : vec2<f32> = vec2<f32>(x_4400.z, x_4400.w);
            let x_4403 : f32 = u_xlat11.z;
            txVec72 = vec3<f32>(x_4401.x, x_4401.y, x_4403);
            let x_4410 : vec3<f32> = txVec72;
            let x_4412 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4410.xy, x_4410.z);
            u_xlat89 = x_4412;
            let x_4413 : f32 = u_xlat87;
            let x_4414 : f32 = u_xlat89;
            let x_4416 : f32 = u_xlat88;
            u_xlat86 = ((x_4413 * x_4414) + x_4416);
          } else {
            let x_4419 : vec4<f32> = u_xlat11;
            let x_4422 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4425 : vec2<f32> = ((vec2<f32>(x_4419.x, x_4419.y) * vec2<f32>(x_4422.z, x_4422.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4426 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4425.x, x_4425.y, x_4426.z, x_4426.w);
            let x_4428 : vec4<f32> = u_xlat12;
            let x_4430 : vec2<f32> = floor(vec2<f32>(x_4428.x, x_4428.y));
            let x_4431 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4430.x, x_4430.y, x_4431.z, x_4431.w);
            let x_4433 : vec4<f32> = u_xlat11;
            let x_4436 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4439 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4433.x, x_4433.y) * vec2<f32>(x_4436.z, x_4436.w)) + -(vec2<f32>(x_4439.x, x_4439.y)));
            let x_4443 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4443.x, x_4443.x, x_4443.y, x_4443.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4446 : vec4<f32> = u_xlat13;
            let x_4448 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4446.x, x_4446.x, x_4446.z, x_4446.z) * vec4<f32>(x_4448.x, x_4448.x, x_4448.z, x_4448.z));
            let x_4451 : vec4<f32> = u_xlat14;
            let x_4453 : vec2<f32> = (vec2<f32>(x_4451.y, x_4451.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4454 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4454.x, x_4453.x, x_4454.z, x_4453.y);
            let x_4456 : vec4<f32> = u_xlat14;
            let x_4459 : vec2<f32> = u_xlat64;
            let x_4461 : vec2<f32> = ((vec2<f32>(x_4456.x, x_4456.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4459));
            let x_4462 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4461.x, x_4462.y, x_4461.y, x_4462.w);
            let x_4464 : vec2<f32> = u_xlat64;
            let x_4466 : vec2<f32> = (-(x_4464) + vec2<f32>(1.0f, 1.0f));
            let x_4467 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4466.x, x_4466.y, x_4467.z, x_4467.w);
            let x_4469 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_4469, vec2<f32>(0.0f, 0.0f));
            let x_4471 : vec2<f32> = u_xlat66;
            let x_4473 : vec2<f32> = u_xlat66;
            let x_4475 : vec4<f32> = u_xlat14;
            let x_4477 : vec2<f32> = ((-(x_4471) * x_4473) + vec2<f32>(x_4475.x, x_4475.y));
            let x_4478 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4477.x, x_4477.y, x_4478.z, x_4478.w);
            let x_4480 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_4480, vec2<f32>(0.0f, 0.0f));
            let x_4483 : vec2<f32> = u_xlat66;
            let x_4485 : vec2<f32> = u_xlat66;
            let x_4487 : vec4<f32> = u_xlat13;
            let x_4489 : vec2<f32> = ((-(x_4483) * x_4485) + vec2<f32>(x_4487.y, x_4487.w));
            let x_4490 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_4489.x, x_4490.y, x_4489.y);
            let x_4492 : vec4<f32> = u_xlat14;
            let x_4494 : vec2<f32> = (vec2<f32>(x_4492.x, x_4492.y) + vec2<f32>(2.0f, 2.0f));
            let x_4495 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4494.x, x_4494.y, x_4495.z, x_4495.w);
            let x_4497 : vec3<f32> = u_xlat39;
            let x_4499 : vec2<f32> = (vec2<f32>(x_4497.x, x_4497.z) + vec2<f32>(2.0f, 2.0f));
            let x_4500 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4500.x, x_4499.x, x_4500.z, x_4499.y);
            let x_4503 : f32 = u_xlat13.y;
            u_xlat16.z = (x_4503 * 0.08163200318813323975f);
            let x_4506 : vec4<f32> = u_xlat13;
            let x_4508 : vec3<f32> = (vec3<f32>(x_4506.z, x_4506.x, x_4506.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4509 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4508.x, x_4508.y, x_4508.z, x_4509.w);
            let x_4511 : vec4<f32> = u_xlat14;
            let x_4513 : vec2<f32> = (vec2<f32>(x_4511.x, x_4511.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4514 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4513.x, x_4513.y, x_4514.z, x_4514.w);
            let x_4517 : f32 = u_xlat17.y;
            u_xlat16.x = x_4517;
            let x_4519 : vec2<f32> = u_xlat64;
            let x_4522 : vec2<f32> = ((vec2<f32>(x_4519.x, x_4519.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4523 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4523.x, x_4522.x, x_4523.z, x_4522.y);
            let x_4525 : vec2<f32> = u_xlat64;
            let x_4528 : vec2<f32> = ((vec2<f32>(x_4525.x, x_4525.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4529 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4528.x, x_4529.y, x_4528.y, x_4529.w);
            let x_4532 : f32 = u_xlat13.x;
            u_xlat14.y = x_4532;
            let x_4535 : f32 = u_xlat15.y;
            u_xlat14.w = x_4535;
            let x_4537 : vec4<f32> = u_xlat14;
            let x_4538 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4537 + x_4538);
            let x_4540 : vec2<f32> = u_xlat64;
            let x_4543 : vec2<f32> = ((vec2<f32>(x_4540.y, x_4540.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4544 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4544.x, x_4543.x, x_4544.z, x_4543.y);
            let x_4546 : vec2<f32> = u_xlat64;
            let x_4549 : vec2<f32> = ((vec2<f32>(x_4546.y, x_4546.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4550 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4549.x, x_4550.y, x_4549.y, x_4550.w);
            let x_4553 : f32 = u_xlat13.y;
            u_xlat15.y = x_4553;
            let x_4555 : vec4<f32> = u_xlat15;
            let x_4556 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4555 + x_4556);
            let x_4558 : vec4<f32> = u_xlat14;
            let x_4559 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_4558 / x_4559);
            let x_4561 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4561 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4563 : vec4<f32> = u_xlat15;
            let x_4564 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_4563 / x_4564);
            let x_4566 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4566 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4568 : vec4<f32> = u_xlat14;
            let x_4571 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4568.w, x_4568.x, x_4568.y, x_4568.z) * vec4<f32>(x_4571.x, x_4571.x, x_4571.x, x_4571.x));
            let x_4574 : vec4<f32> = u_xlat15;
            let x_4577 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_4574.x, x_4574.w, x_4574.y, x_4574.z) * vec4<f32>(x_4577.y, x_4577.y, x_4577.y, x_4577.y));
            let x_4580 : vec4<f32> = u_xlat14;
            let x_4581 : vec3<f32> = vec3<f32>(x_4580.y, x_4580.z, x_4580.w);
            let x_4582 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4581.x, x_4582.y, x_4581.y, x_4581.z);
            let x_4585 : f32 = u_xlat15.x;
            u_xlat17.y = x_4585;
            let x_4587 : vec4<f32> = u_xlat12;
            let x_4590 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4593 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4587.x, x_4587.y, x_4587.x, x_4587.y) * vec4<f32>(x_4590.x, x_4590.y, x_4590.x, x_4590.y)) + vec4<f32>(x_4593.x, x_4593.y, x_4593.z, x_4593.y));
            let x_4596 : vec4<f32> = u_xlat12;
            let x_4599 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4602 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_4596.x, x_4596.y) * vec2<f32>(x_4599.x, x_4599.y)) + vec2<f32>(x_4602.w, x_4602.y));
            let x_4606 : f32 = u_xlat17.y;
            u_xlat14.y = x_4606;
            let x_4609 : f32 = u_xlat15.z;
            u_xlat17.y = x_4609;
            let x_4611 : vec4<f32> = u_xlat12;
            let x_4614 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4617 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_4611.x, x_4611.y, x_4611.x, x_4611.y) * vec4<f32>(x_4614.x, x_4614.y, x_4614.x, x_4614.y)) + vec4<f32>(x_4617.x, x_4617.y, x_4617.z, x_4617.y));
            let x_4620 : vec4<f32> = u_xlat12;
            let x_4623 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4626 : vec4<f32> = u_xlat17;
            let x_4628 : vec2<f32> = ((vec2<f32>(x_4620.x, x_4620.y) * vec2<f32>(x_4623.x, x_4623.y)) + vec2<f32>(x_4626.w, x_4626.y));
            let x_4629 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_4628.x, x_4628.y, x_4629.z, x_4629.w);
            let x_4632 : f32 = u_xlat17.y;
            u_xlat14.z = x_4632;
            let x_4634 : vec4<f32> = u_xlat12;
            let x_4637 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4640 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4634.x, x_4634.y, x_4634.x, x_4634.y) * vec4<f32>(x_4637.x, x_4637.y, x_4637.x, x_4637.y)) + vec4<f32>(x_4640.x, x_4640.y, x_4640.x, x_4640.z));
            let x_4644 : f32 = u_xlat15.w;
            u_xlat17.y = x_4644;
            let x_4647 : vec4<f32> = u_xlat12;
            let x_4650 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4653 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4647.x, x_4647.y, x_4647.x, x_4647.y) * vec4<f32>(x_4650.x, x_4650.y, x_4650.x, x_4650.y)) + vec4<f32>(x_4653.x, x_4653.y, x_4653.z, x_4653.y));
            let x_4657 : vec4<f32> = u_xlat12;
            let x_4660 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4663 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_4657.x, x_4657.y) * vec2<f32>(x_4660.x, x_4660.y)) + vec2<f32>(x_4663.w, x_4663.y));
            let x_4667 : f32 = u_xlat17.y;
            u_xlat14.w = x_4667;
            let x_4670 : vec4<f32> = u_xlat12;
            let x_4673 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4676 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4670.x, x_4670.y) * vec2<f32>(x_4673.x, x_4673.y)) + vec2<f32>(x_4676.x, x_4676.w));
            let x_4679 : vec4<f32> = u_xlat17;
            let x_4680 : vec3<f32> = vec3<f32>(x_4679.x, x_4679.z, x_4679.w);
            let x_4681 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4680.x, x_4681.y, x_4680.y, x_4680.z);
            let x_4683 : vec4<f32> = u_xlat12;
            let x_4686 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4689 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4683.x, x_4683.y, x_4683.x, x_4683.y) * vec4<f32>(x_4686.x, x_4686.y, x_4686.x, x_4686.y)) + vec4<f32>(x_4689.x, x_4689.y, x_4689.z, x_4689.y));
            let x_4693 : vec4<f32> = u_xlat12;
            let x_4696 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4699 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4693.x, x_4693.y) * vec2<f32>(x_4696.x, x_4696.y)) + vec2<f32>(x_4699.w, x_4699.y));
            let x_4703 : f32 = u_xlat14.x;
            u_xlat15.x = x_4703;
            let x_4705 : vec4<f32> = u_xlat12;
            let x_4708 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4711 : vec4<f32> = u_xlat15;
            let x_4713 : vec2<f32> = ((vec2<f32>(x_4705.x, x_4705.y) * vec2<f32>(x_4708.x, x_4708.y)) + vec2<f32>(x_4711.x, x_4711.y));
            let x_4714 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4713.x, x_4713.y, x_4714.z, x_4714.w);
            let x_4717 : vec4<f32> = u_xlat13;
            let x_4719 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4717.x, x_4717.x, x_4717.x, x_4717.x) * x_4719);
            let x_4722 : vec4<f32> = u_xlat13;
            let x_4724 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4722.y, x_4722.y, x_4722.y, x_4722.y) * x_4724);
            let x_4727 : vec4<f32> = u_xlat13;
            let x_4729 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4727.z, x_4727.z, x_4727.z, x_4727.z) * x_4729);
            let x_4731 : vec4<f32> = u_xlat13;
            let x_4733 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4731.w, x_4731.w, x_4731.w, x_4731.w) * x_4733);
            let x_4736 : vec4<f32> = u_xlat18;
            let x_4737 : vec2<f32> = vec2<f32>(x_4736.x, x_4736.y);
            let x_4739 : f32 = u_xlat11.z;
            txVec73 = vec3<f32>(x_4737.x, x_4737.y, x_4739);
            let x_4746 : vec3<f32> = txVec73;
            let x_4748 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4746.xy, x_4746.z);
            u_xlat87 = x_4748;
            let x_4750 : vec4<f32> = u_xlat18;
            let x_4751 : vec2<f32> = vec2<f32>(x_4750.z, x_4750.w);
            let x_4753 : f32 = u_xlat11.z;
            txVec74 = vec3<f32>(x_4751.x, x_4751.y, x_4753);
            let x_4760 : vec3<f32> = txVec74;
            let x_4762 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4760.xy, x_4760.z);
            u_xlat88 = x_4762;
            let x_4763 : f32 = u_xlat88;
            let x_4765 : f32 = u_xlat23.y;
            u_xlat88 = (x_4763 * x_4765);
            let x_4768 : f32 = u_xlat23.x;
            let x_4769 : f32 = u_xlat87;
            let x_4771 : f32 = u_xlat88;
            u_xlat87 = ((x_4768 * x_4769) + x_4771);
            let x_4774 : vec2<f32> = u_xlat64;
            let x_4776 : f32 = u_xlat11.z;
            txVec75 = vec3<f32>(x_4774.x, x_4774.y, x_4776);
            let x_4783 : vec3<f32> = txVec75;
            let x_4785 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4783.xy, x_4783.z);
            u_xlat88 = x_4785;
            let x_4787 : f32 = u_xlat23.z;
            let x_4788 : f32 = u_xlat88;
            let x_4790 : f32 = u_xlat87;
            u_xlat87 = ((x_4787 * x_4788) + x_4790);
            let x_4793 : vec4<f32> = u_xlat21;
            let x_4794 : vec2<f32> = vec2<f32>(x_4793.x, x_4793.y);
            let x_4796 : f32 = u_xlat11.z;
            txVec76 = vec3<f32>(x_4794.x, x_4794.y, x_4796);
            let x_4803 : vec3<f32> = txVec76;
            let x_4805 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4803.xy, x_4803.z);
            u_xlat88 = x_4805;
            let x_4807 : f32 = u_xlat23.w;
            let x_4808 : f32 = u_xlat88;
            let x_4810 : f32 = u_xlat87;
            u_xlat87 = ((x_4807 * x_4808) + x_4810);
            let x_4813 : vec4<f32> = u_xlat19;
            let x_4814 : vec2<f32> = vec2<f32>(x_4813.x, x_4813.y);
            let x_4816 : f32 = u_xlat11.z;
            txVec77 = vec3<f32>(x_4814.x, x_4814.y, x_4816);
            let x_4823 : vec3<f32> = txVec77;
            let x_4825 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4823.xy, x_4823.z);
            u_xlat88 = x_4825;
            let x_4827 : f32 = u_xlat24.x;
            let x_4828 : f32 = u_xlat88;
            let x_4830 : f32 = u_xlat87;
            u_xlat87 = ((x_4827 * x_4828) + x_4830);
            let x_4833 : vec4<f32> = u_xlat19;
            let x_4834 : vec2<f32> = vec2<f32>(x_4833.z, x_4833.w);
            let x_4836 : f32 = u_xlat11.z;
            txVec78 = vec3<f32>(x_4834.x, x_4834.y, x_4836);
            let x_4843 : vec3<f32> = txVec78;
            let x_4845 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4843.xy, x_4843.z);
            u_xlat88 = x_4845;
            let x_4847 : f32 = u_xlat24.y;
            let x_4848 : f32 = u_xlat88;
            let x_4850 : f32 = u_xlat87;
            u_xlat87 = ((x_4847 * x_4848) + x_4850);
            let x_4853 : vec4<f32> = u_xlat20;
            let x_4854 : vec2<f32> = vec2<f32>(x_4853.x, x_4853.y);
            let x_4856 : f32 = u_xlat11.z;
            txVec79 = vec3<f32>(x_4854.x, x_4854.y, x_4856);
            let x_4863 : vec3<f32> = txVec79;
            let x_4865 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4863.xy, x_4863.z);
            u_xlat88 = x_4865;
            let x_4867 : f32 = u_xlat24.z;
            let x_4868 : f32 = u_xlat88;
            let x_4870 : f32 = u_xlat87;
            u_xlat87 = ((x_4867 * x_4868) + x_4870);
            let x_4873 : vec4<f32> = u_xlat21;
            let x_4874 : vec2<f32> = vec2<f32>(x_4873.z, x_4873.w);
            let x_4876 : f32 = u_xlat11.z;
            txVec80 = vec3<f32>(x_4874.x, x_4874.y, x_4876);
            let x_4883 : vec3<f32> = txVec80;
            let x_4885 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4883.xy, x_4883.z);
            u_xlat88 = x_4885;
            let x_4887 : f32 = u_xlat24.w;
            let x_4888 : f32 = u_xlat88;
            let x_4890 : f32 = u_xlat87;
            u_xlat87 = ((x_4887 * x_4888) + x_4890);
            let x_4893 : vec4<f32> = u_xlat22;
            let x_4894 : vec2<f32> = vec2<f32>(x_4893.x, x_4893.y);
            let x_4896 : f32 = u_xlat11.z;
            txVec81 = vec3<f32>(x_4894.x, x_4894.y, x_4896);
            let x_4903 : vec3<f32> = txVec81;
            let x_4905 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4903.xy, x_4903.z);
            u_xlat88 = x_4905;
            let x_4907 : f32 = u_xlat25.x;
            let x_4908 : f32 = u_xlat88;
            let x_4910 : f32 = u_xlat87;
            u_xlat87 = ((x_4907 * x_4908) + x_4910);
            let x_4913 : vec4<f32> = u_xlat22;
            let x_4914 : vec2<f32> = vec2<f32>(x_4913.z, x_4913.w);
            let x_4916 : f32 = u_xlat11.z;
            txVec82 = vec3<f32>(x_4914.x, x_4914.y, x_4916);
            let x_4923 : vec3<f32> = txVec82;
            let x_4925 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4923.xy, x_4923.z);
            u_xlat88 = x_4925;
            let x_4927 : f32 = u_xlat25.y;
            let x_4928 : f32 = u_xlat88;
            let x_4930 : f32 = u_xlat87;
            u_xlat87 = ((x_4927 * x_4928) + x_4930);
            let x_4933 : vec2<f32> = u_xlat40;
            let x_4935 : f32 = u_xlat11.z;
            txVec83 = vec3<f32>(x_4933.x, x_4933.y, x_4935);
            let x_4942 : vec3<f32> = txVec83;
            let x_4944 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4942.xy, x_4942.z);
            u_xlat88 = x_4944;
            let x_4946 : f32 = u_xlat25.z;
            let x_4947 : f32 = u_xlat88;
            let x_4949 : f32 = u_xlat87;
            u_xlat87 = ((x_4946 * x_4947) + x_4949);
            let x_4952 : vec2<f32> = u_xlat72;
            let x_4954 : f32 = u_xlat11.z;
            txVec84 = vec3<f32>(x_4952.x, x_4952.y, x_4954);
            let x_4961 : vec3<f32> = txVec84;
            let x_4963 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4961.xy, x_4961.z);
            u_xlat88 = x_4963;
            let x_4965 : f32 = u_xlat25.w;
            let x_4966 : f32 = u_xlat88;
            let x_4968 : f32 = u_xlat87;
            u_xlat87 = ((x_4965 * x_4966) + x_4968);
            let x_4971 : vec4<f32> = u_xlat17;
            let x_4972 : vec2<f32> = vec2<f32>(x_4971.x, x_4971.y);
            let x_4974 : f32 = u_xlat11.z;
            txVec85 = vec3<f32>(x_4972.x, x_4972.y, x_4974);
            let x_4981 : vec3<f32> = txVec85;
            let x_4983 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4981.xy, x_4981.z);
            u_xlat88 = x_4983;
            let x_4985 : f32 = u_xlat13.x;
            let x_4986 : f32 = u_xlat88;
            let x_4988 : f32 = u_xlat87;
            u_xlat87 = ((x_4985 * x_4986) + x_4988);
            let x_4991 : vec4<f32> = u_xlat17;
            let x_4992 : vec2<f32> = vec2<f32>(x_4991.z, x_4991.w);
            let x_4994 : f32 = u_xlat11.z;
            txVec86 = vec3<f32>(x_4992.x, x_4992.y, x_4994);
            let x_5001 : vec3<f32> = txVec86;
            let x_5003 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5001.xy, x_5001.z);
            u_xlat88 = x_5003;
            let x_5005 : f32 = u_xlat13.y;
            let x_5006 : f32 = u_xlat88;
            let x_5008 : f32 = u_xlat87;
            u_xlat87 = ((x_5005 * x_5006) + x_5008);
            let x_5011 : vec2<f32> = u_xlat67;
            let x_5013 : f32 = u_xlat11.z;
            txVec87 = vec3<f32>(x_5011.x, x_5011.y, x_5013);
            let x_5020 : vec3<f32> = txVec87;
            let x_5022 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5020.xy, x_5020.z);
            u_xlat88 = x_5022;
            let x_5024 : f32 = u_xlat13.z;
            let x_5025 : f32 = u_xlat88;
            let x_5027 : f32 = u_xlat87;
            u_xlat87 = ((x_5024 * x_5025) + x_5027);
            let x_5030 : vec4<f32> = u_xlat12;
            let x_5031 : vec2<f32> = vec2<f32>(x_5030.x, x_5030.y);
            let x_5033 : f32 = u_xlat11.z;
            txVec88 = vec3<f32>(x_5031.x, x_5031.y, x_5033);
            let x_5040 : vec3<f32> = txVec88;
            let x_5042 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5040.xy, x_5040.z);
            u_xlat88 = x_5042;
            let x_5044 : f32 = u_xlat13.w;
            let x_5045 : f32 = u_xlat88;
            let x_5047 : f32 = u_xlat87;
            u_xlat86 = ((x_5044 * x_5045) + x_5047);
          }
        }
      } else {
        let x_5051 : vec4<f32> = u_xlat11;
        let x_5052 : vec2<f32> = vec2<f32>(x_5051.x, x_5051.y);
        let x_5054 : f32 = u_xlat11.z;
        txVec89 = vec3<f32>(x_5052.x, x_5052.y, x_5054);
        let x_5061 : vec3<f32> = txVec89;
        let x_5063 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5061.xy, x_5061.z);
        u_xlat86 = x_5063;
      }
      let x_5064 : i32 = u_xlati4;
      let x_5066 : f32 = x_130.x_AdditionalShadowParams[x_5064].x;
      u_xlat87 = (1.0f + -(x_5066));
      let x_5069 : f32 = u_xlat86;
      let x_5070 : i32 = u_xlati4;
      let x_5072 : f32 = x_130.x_AdditionalShadowParams[x_5070].x;
      let x_5074 : f32 = u_xlat87;
      u_xlat86 = ((x_5069 * x_5072) + x_5074);
      let x_5077 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_5077);
      let x_5081 : f32 = u_xlat11.z;
      u_xlatb88 = (x_5081 >= 1.0f);
      let x_5083 : bool = u_xlatb87;
      let x_5084 : bool = u_xlatb88;
      u_xlatb87 = (x_5083 | x_5084);
      let x_5086 : bool = u_xlatb87;
      let x_5087 : f32 = u_xlat86;
      u_xlat86 = select(x_5087, 1.0f, x_5086);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_5090 : f32 = u_xlat86;
    u_xlat87 = (-(x_5090) + 1.0f);
    let x_5093 : f32 = u_xlat79;
    let x_5094 : f32 = u_xlat87;
    let x_5096 : f32 = u_xlat86;
    u_xlat86 = ((x_5093 * x_5094) + x_5096);
    let x_5099 : i32 = u_xlati4;
    u_xlati87 = (1i << bitcast<u32>((x_5099 & 31i)));
    let x_5103 : i32 = u_xlati87;
    let x_5106 : f32 = x_3207.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_5103) & bitcast<u32>(x_5106)));
    let x_5110 : i32 = u_xlati87;
    if ((x_5110 != 0i)) {
      let x_5114 : i32 = u_xlati4;
      let x_5116 : f32 = x_3207.x_AdditionalLightsLightTypes[x_5114].el;
      u_xlati87 = i32(x_5116);
      let x_5119 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_5119 != 0i));
      let x_5123 : i32 = u_xlati4;
      u_xlati11 = (x_5123 << bitcast<u32>(2i));
      let x_5125 : i32 = u_xlati88;
      if ((x_5125 != 0i)) {
        let x_5130 : vec3<f32> = vs_INTERP8;
        let x_5132 : i32 = u_xlati11;
        let x_5135 : i32 = u_xlati11;
        let x_5139 : vec4<f32> = x_3207.x_AdditionalLightsWorldToLights[((x_5132 + 1i) / 4i)][((x_5135 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_5130.y, x_5130.y, x_5130.y) * vec3<f32>(x_5139.x, x_5139.y, x_5139.w));
        let x_5142 : i32 = u_xlati11;
        let x_5144 : i32 = u_xlati11;
        let x_5147 : vec4<f32> = x_3207.x_AdditionalLightsWorldToLights[(x_5142 / 4i)][(x_5144 % 4i)];
        let x_5149 : vec3<f32> = vs_INTERP8;
        let x_5152 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_5147.x, x_5147.y, x_5147.w) * vec3<f32>(x_5149.x, x_5149.x, x_5149.x)) + x_5152);
        let x_5154 : i32 = u_xlati11;
        let x_5157 : i32 = u_xlati11;
        let x_5161 : vec4<f32> = x_3207.x_AdditionalLightsWorldToLights[((x_5154 + 2i) / 4i)][((x_5157 + 2i) % 4i)];
        let x_5163 : vec3<f32> = vs_INTERP8;
        let x_5166 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_5161.x, x_5161.y, x_5161.w) * vec3<f32>(x_5163.z, x_5163.z, x_5163.z)) + x_5166);
        let x_5168 : vec3<f32> = u_xlat37;
        let x_5169 : i32 = u_xlati11;
        let x_5172 : i32 = u_xlati11;
        let x_5176 : vec4<f32> = x_3207.x_AdditionalLightsWorldToLights[((x_5169 + 3i) / 4i)][((x_5172 + 3i) % 4i)];
        u_xlat37 = (x_5168 + vec3<f32>(x_5176.x, x_5176.y, x_5176.w));
        let x_5179 : vec3<f32> = u_xlat37;
        let x_5181 : vec3<f32> = u_xlat37;
        let x_5183 : vec2<f32> = (vec2<f32>(x_5179.x, x_5179.y) / vec2<f32>(x_5181.z, x_5181.z));
        let x_5184 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5183.x, x_5183.y, x_5184.z);
        let x_5186 : vec3<f32> = u_xlat37;
        let x_5189 : vec2<f32> = ((vec2<f32>(x_5186.x, x_5186.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_5190 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5189.x, x_5189.y, x_5190.z);
        let x_5192 : vec3<f32> = u_xlat37;
        let x_5196 : vec2<f32> = clamp(vec2<f32>(x_5192.x, x_5192.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_5197 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5196.x, x_5196.y, x_5197.z);
        let x_5199 : i32 = u_xlati4;
        let x_5201 : vec4<f32> = x_3207.x_AdditionalLightsCookieAtlasUVRects[x_5199];
        let x_5203 : vec3<f32> = u_xlat37;
        let x_5206 : i32 = u_xlati4;
        let x_5208 : vec4<f32> = x_3207.x_AdditionalLightsCookieAtlasUVRects[x_5206];
        let x_5210 : vec2<f32> = ((vec2<f32>(x_5201.x, x_5201.y) * vec2<f32>(x_5203.x, x_5203.y)) + vec2<f32>(x_5208.z, x_5208.w));
        let x_5211 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5210.x, x_5210.y, x_5211.z);
      } else {
        let x_5214 : i32 = u_xlati87;
        u_xlatb87 = (x_5214 == 1i);
        let x_5216 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_5216);
        let x_5218 : i32 = u_xlati87;
        if ((x_5218 != 0i)) {
          let x_5222 : vec3<f32> = vs_INTERP8;
          let x_5224 : i32 = u_xlati11;
          let x_5227 : i32 = u_xlati11;
          let x_5231 : vec4<f32> = x_3207.x_AdditionalLightsWorldToLights[((x_5224 + 1i) / 4i)][((x_5227 + 1i) % 4i)];
          let x_5233 : vec2<f32> = (vec2<f32>(x_5222.y, x_5222.y) * vec2<f32>(x_5231.x, x_5231.y));
          let x_5234 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5233.x, x_5233.y, x_5234.z, x_5234.w);
          let x_5236 : i32 = u_xlati11;
          let x_5238 : i32 = u_xlati11;
          let x_5241 : vec4<f32> = x_3207.x_AdditionalLightsWorldToLights[(x_5236 / 4i)][(x_5238 % 4i)];
          let x_5243 : vec3<f32> = vs_INTERP8;
          let x_5246 : vec4<f32> = u_xlat12;
          let x_5248 : vec2<f32> = ((vec2<f32>(x_5241.x, x_5241.y) * vec2<f32>(x_5243.x, x_5243.x)) + vec2<f32>(x_5246.x, x_5246.y));
          let x_5249 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5248.x, x_5248.y, x_5249.z, x_5249.w);
          let x_5251 : i32 = u_xlati11;
          let x_5254 : i32 = u_xlati11;
          let x_5258 : vec4<f32> = x_3207.x_AdditionalLightsWorldToLights[((x_5251 + 2i) / 4i)][((x_5254 + 2i) % 4i)];
          let x_5260 : vec3<f32> = vs_INTERP8;
          let x_5263 : vec4<f32> = u_xlat12;
          let x_5265 : vec2<f32> = ((vec2<f32>(x_5258.x, x_5258.y) * vec2<f32>(x_5260.z, x_5260.z)) + vec2<f32>(x_5263.x, x_5263.y));
          let x_5266 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5265.x, x_5265.y, x_5266.z, x_5266.w);
          let x_5268 : vec4<f32> = u_xlat12;
          let x_5270 : i32 = u_xlati11;
          let x_5273 : i32 = u_xlati11;
          let x_5277 : vec4<f32> = x_3207.x_AdditionalLightsWorldToLights[((x_5270 + 3i) / 4i)][((x_5273 + 3i) % 4i)];
          let x_5279 : vec2<f32> = (vec2<f32>(x_5268.x, x_5268.y) + vec2<f32>(x_5277.x, x_5277.y));
          let x_5280 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5279.x, x_5279.y, x_5280.z, x_5280.w);
          let x_5282 : vec4<f32> = u_xlat12;
          let x_5285 : vec2<f32> = ((vec2<f32>(x_5282.x, x_5282.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5286 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5285.x, x_5285.y, x_5286.z, x_5286.w);
          let x_5288 : vec4<f32> = u_xlat12;
          let x_5290 : vec2<f32> = fract(vec2<f32>(x_5288.x, x_5288.y));
          let x_5291 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5290.x, x_5290.y, x_5291.z, x_5291.w);
          let x_5293 : i32 = u_xlati4;
          let x_5295 : vec4<f32> = x_3207.x_AdditionalLightsCookieAtlasUVRects[x_5293];
          let x_5297 : vec4<f32> = u_xlat12;
          let x_5300 : i32 = u_xlati4;
          let x_5302 : vec4<f32> = x_3207.x_AdditionalLightsCookieAtlasUVRects[x_5300];
          let x_5304 : vec2<f32> = ((vec2<f32>(x_5295.x, x_5295.y) * vec2<f32>(x_5297.x, x_5297.y)) + vec2<f32>(x_5302.z, x_5302.w));
          let x_5305 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5304.x, x_5304.y, x_5305.z);
        } else {
          let x_5308 : vec3<f32> = vs_INTERP8;
          let x_5310 : i32 = u_xlati11;
          let x_5313 : i32 = u_xlati11;
          let x_5317 : vec4<f32> = x_3207.x_AdditionalLightsWorldToLights[((x_5310 + 1i) / 4i)][((x_5313 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_5308.y, x_5308.y, x_5308.y, x_5308.y) * x_5317);
          let x_5319 : i32 = u_xlati11;
          let x_5321 : i32 = u_xlati11;
          let x_5324 : vec4<f32> = x_3207.x_AdditionalLightsWorldToLights[(x_5319 / 4i)][(x_5321 % 4i)];
          let x_5325 : vec3<f32> = vs_INTERP8;
          let x_5328 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5324 * vec4<f32>(x_5325.x, x_5325.x, x_5325.x, x_5325.x)) + x_5328);
          let x_5330 : i32 = u_xlati11;
          let x_5333 : i32 = u_xlati11;
          let x_5337 : vec4<f32> = x_3207.x_AdditionalLightsWorldToLights[((x_5330 + 2i) / 4i)][((x_5333 + 2i) % 4i)];
          let x_5338 : vec3<f32> = vs_INTERP8;
          let x_5341 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5337 * vec4<f32>(x_5338.z, x_5338.z, x_5338.z, x_5338.z)) + x_5341);
          let x_5343 : vec4<f32> = u_xlat12;
          let x_5344 : i32 = u_xlati11;
          let x_5347 : i32 = u_xlati11;
          let x_5351 : vec4<f32> = x_3207.x_AdditionalLightsWorldToLights[((x_5344 + 3i) / 4i)][((x_5347 + 3i) % 4i)];
          u_xlat12 = (x_5343 + x_5351);
          let x_5353 : vec4<f32> = u_xlat12;
          let x_5355 : vec4<f32> = u_xlat12;
          let x_5357 : vec3<f32> = (vec3<f32>(x_5353.x, x_5353.y, x_5353.z) / vec3<f32>(x_5355.w, x_5355.w, x_5355.w));
          let x_5358 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5357.x, x_5357.y, x_5357.z, x_5358.w);
          let x_5360 : vec4<f32> = u_xlat12;
          let x_5362 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_5360.x, x_5360.y, x_5360.z), vec3<f32>(x_5362.x, x_5362.y, x_5362.z));
          let x_5365 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_5365);
          let x_5367 : f32 = u_xlat87;
          let x_5369 : vec4<f32> = u_xlat12;
          let x_5371 : vec3<f32> = (vec3<f32>(x_5367, x_5367, x_5367) * vec3<f32>(x_5369.x, x_5369.y, x_5369.z));
          let x_5372 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5371.x, x_5371.y, x_5371.z, x_5372.w);
          let x_5374 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_5374.x, x_5374.y, x_5374.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_5379 : f32 = u_xlat87;
          u_xlat87 = max(x_5379, 0.00000099999999747524f);
          let x_5382 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_5382);
          let x_5384 : f32 = u_xlat87;
          let x_5386 : vec4<f32> = u_xlat12;
          let x_5388 : vec3<f32> = (vec3<f32>(x_5384, x_5384, x_5384) * vec3<f32>(x_5386.z, x_5386.x, x_5386.y));
          let x_5389 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_5388.x, x_5388.y, x_5388.z, x_5389.w);
          let x_5392 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_5392);
          let x_5396 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_5396, 0.0f, 1.0f);
          let x_5399 : vec4<f32> = u_xlat13;
          let x_5401 : vec4<bool> = (vec4<f32>(x_5399.y, x_5399.y, x_5399.y, x_5399.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_5402 : vec2<bool> = vec2<bool>(x_5401.x, x_5401.w);
          let x_5403 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_5402.x, x_5403.y, x_5403.z, x_5402.y);
          let x_5406 : bool = u_xlatb11.x;
          if (x_5406) {
            let x_5411 : f32 = u_xlat13.x;
            x_5407 = x_5411;
          } else {
            let x_5414 : f32 = u_xlat13.x;
            x_5407 = -(x_5414);
          }
          let x_5416 : f32 = x_5407;
          u_xlat11.x = x_5416;
          let x_5419 : bool = u_xlatb11.w;
          if (x_5419) {
            let x_5424 : f32 = u_xlat13.x;
            x_5420 = x_5424;
          } else {
            let x_5427 : f32 = u_xlat13.x;
            x_5420 = -(x_5427);
          }
          let x_5429 : f32 = x_5420;
          u_xlat11.w = x_5429;
          let x_5431 : vec4<f32> = u_xlat12;
          let x_5433 : f32 = u_xlat87;
          let x_5436 : vec4<f32> = u_xlat11;
          let x_5438 : vec2<f32> = ((vec2<f32>(x_5431.x, x_5431.y) * vec2<f32>(x_5433, x_5433)) + vec2<f32>(x_5436.x, x_5436.w));
          let x_5439 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5438.x, x_5439.y, x_5439.z, x_5438.y);
          let x_5441 : vec4<f32> = u_xlat11;
          let x_5444 : vec2<f32> = ((vec2<f32>(x_5441.x, x_5441.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5445 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5444.x, x_5445.y, x_5445.z, x_5444.y);
          let x_5447 : vec4<f32> = u_xlat11;
          let x_5451 : vec2<f32> = clamp(vec2<f32>(x_5447.x, x_5447.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_5452 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5451.x, x_5452.y, x_5452.z, x_5451.y);
          let x_5454 : i32 = u_xlati4;
          let x_5456 : vec4<f32> = x_3207.x_AdditionalLightsCookieAtlasUVRects[x_5454];
          let x_5458 : vec4<f32> = u_xlat11;
          let x_5461 : i32 = u_xlati4;
          let x_5463 : vec4<f32> = x_3207.x_AdditionalLightsCookieAtlasUVRects[x_5461];
          let x_5465 : vec2<f32> = ((vec2<f32>(x_5456.x, x_5456.y) * vec2<f32>(x_5458.x, x_5458.w)) + vec2<f32>(x_5463.z, x_5463.w));
          let x_5466 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5465.x, x_5465.y, x_5466.z);
        }
      }
      let x_5473 : vec3<f32> = u_xlat37;
      let x_5475 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_5473.x, x_5473.y), 0.0f);
      u_xlat11 = x_5475;
      let x_5477 : bool = u_xlatb5.w;
      if (x_5477) {
        let x_5482 : f32 = u_xlat11.w;
        x_5478 = x_5482;
      } else {
        let x_5485 : f32 = u_xlat11.x;
        x_5478 = x_5485;
      }
      let x_5486 : f32 = x_5478;
      u_xlat87 = x_5486;
      let x_5488 : bool = u_xlatb5.x;
      if (x_5488) {
        let x_5492 : vec4<f32> = u_xlat11;
        x_5489 = vec3<f32>(x_5492.x, x_5492.y, x_5492.z);
      } else {
        let x_5495 : f32 = u_xlat87;
        x_5489 = vec3<f32>(x_5495, x_5495, x_5495);
      }
      let x_5497 : vec3<f32> = x_5489;
      let x_5498 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_5497.x, x_5497.y, x_5497.z, x_5498.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_5504 : vec4<f32> = u_xlat11;
    let x_5506 : i32 = u_xlati4;
    let x_5508 : vec4<f32> = x_3679.x_AdditionalLightsColor[x_5506];
    let x_5510 : vec3<f32> = (vec3<f32>(x_5504.x, x_5504.y, x_5504.z) * vec3<f32>(x_5508.x, x_5508.y, x_5508.z));
    let x_5511 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5510.x, x_5510.y, x_5510.z, x_5511.w);
    let x_5513 : f32 = u_xlat84;
    let x_5514 : f32 = u_xlat86;
    u_xlat4.x = (x_5513 * x_5514);
    let x_5517 : vec4<f32> = u_xlat6;
    let x_5519 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_5517.x, x_5517.y, x_5517.z), vec3<f32>(x_5519.x, x_5519.y, x_5519.z));
    let x_5522 : f32 = u_xlat84;
    u_xlat84 = clamp(x_5522, 0.0f, 1.0f);
    let x_5525 : f32 = u_xlat4.x;
    let x_5526 : f32 = u_xlat84;
    u_xlat4.x = (x_5525 * x_5526);
    let x_5529 : vec4<f32> = u_xlat4;
    let x_5531 : vec4<f32> = u_xlat11;
    let x_5533 : vec3<f32> = (vec3<f32>(x_5529.x, x_5529.x, x_5529.x) * vec3<f32>(x_5531.x, x_5531.y, x_5531.z));
    let x_5534 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5533.x, x_5533.y, x_5533.z, x_5534.w);
    let x_5536 : vec4<f32> = u_xlat9;
    let x_5538 : f32 = u_xlat85;
    let x_5541 : vec4<f32> = u_xlat7;
    let x_5543 : vec3<f32> = ((vec3<f32>(x_5536.x, x_5536.y, x_5536.z) * vec3<f32>(x_5538, x_5538, x_5538)) + vec3<f32>(x_5541.x, x_5541.y, x_5541.z));
    let x_5544 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5543.x, x_5543.y, x_5543.z, x_5544.w);
    let x_5546 : vec4<f32> = u_xlat9;
    let x_5548 : vec4<f32> = u_xlat9;
    u_xlat4.x = dot(vec3<f32>(x_5546.x, x_5546.y, x_5546.z), vec3<f32>(x_5548.x, x_5548.y, x_5548.z));
    let x_5553 : f32 = u_xlat4.x;
    u_xlat4.x = max(x_5553, 1.17549435e-38f);
    let x_5557 : f32 = u_xlat4.x;
    u_xlat4.x = inverseSqrt(x_5557);
    let x_5560 : vec4<f32> = u_xlat4;
    let x_5562 : vec4<f32> = u_xlat9;
    let x_5564 : vec3<f32> = (vec3<f32>(x_5560.x, x_5560.x, x_5560.x) * vec3<f32>(x_5562.x, x_5562.y, x_5562.z));
    let x_5565 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5564.x, x_5564.y, x_5564.z, x_5565.w);
    let x_5567 : vec4<f32> = u_xlat6;
    let x_5569 : vec4<f32> = u_xlat9;
    u_xlat4.x = dot(vec3<f32>(x_5567.x, x_5567.y, x_5567.z), vec3<f32>(x_5569.x, x_5569.y, x_5569.z));
    let x_5574 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_5574, 0.0f, 1.0f);
    let x_5577 : vec4<f32> = u_xlat10;
    let x_5579 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_5577.x, x_5577.y, x_5577.z), vec3<f32>(x_5579.x, x_5579.y, x_5579.z));
    let x_5582 : f32 = u_xlat84;
    u_xlat84 = clamp(x_5582, 0.0f, 1.0f);
    let x_5585 : f32 = u_xlat4.x;
    let x_5587 : f32 = u_xlat4.x;
    u_xlat4.x = (x_5585 * x_5587);
    let x_5591 : f32 = u_xlat4.x;
    let x_5593 : f32 = u_xlat27.x;
    u_xlat4.x = ((x_5591 * x_5593) + 1.00001001358032226562f);
    let x_5597 : f32 = u_xlat84;
    let x_5598 : f32 = u_xlat84;
    u_xlat84 = (x_5597 * x_5598);
    let x_5601 : f32 = u_xlat4.x;
    let x_5603 : f32 = u_xlat4.x;
    u_xlat4.x = (x_5601 * x_5603);
    let x_5606 : f32 = u_xlat84;
    u_xlat84 = max(x_5606, 0.10000000149011611938f);
    let x_5609 : f32 = u_xlat4.x;
    let x_5610 : f32 = u_xlat84;
    u_xlat4.x = (x_5609 * x_5610);
    let x_5614 : f32 = u_xlat31.x;
    let x_5616 : f32 = u_xlat4.x;
    u_xlat4.x = (x_5614 * x_5616);
    let x_5619 : f32 = u_xlat80;
    let x_5621 : f32 = u_xlat4.x;
    u_xlat4.x = (x_5619 / x_5621);
    let x_5624 : vec4<f32> = u_xlat4;
    let x_5627 : vec3<f32> = u_xlat2;
    let x_5628 : vec3<f32> = ((vec3<f32>(x_5624.x, x_5624.x, x_5624.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5627);
    let x_5629 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5628.x, x_5628.y, x_5628.z, x_5629.w);
    let x_5631 : vec4<f32> = u_xlat9;
    let x_5633 : vec4<f32> = u_xlat11;
    let x_5636 : vec4<f32> = u_xlat8;
    let x_5638 : vec3<f32> = ((vec3<f32>(x_5631.x, x_5631.y, x_5631.z) * vec3<f32>(x_5633.x, x_5633.y, x_5633.z)) + vec3<f32>(x_5636.x, x_5636.y, x_5636.z));
    let x_5639 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5638.x, x_5638.y, x_5638.z, x_5639.w);

    continuing {
      let x_5641 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5641 + bitcast<u32>(1i));
    }
  }
  let x_5643 : vec4<f32> = u_xlat3;
  let x_5645 : vec2<f32> = u_xlat57;
  let x_5648 : vec3<f32> = u_xlat30;
  u_xlat2 = ((vec3<f32>(x_5643.x, x_5643.y, x_5643.z) * vec3<f32>(x_5645.x, x_5645.x, x_5645.x)) + x_5648);
  let x_5650 : vec4<f32> = u_xlat8;
  let x_5652 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_5650.x, x_5650.y, x_5650.z) + x_5652);
  let x_5656 : vec4<f32> = vs_INTERP6;
  let x_5658 : vec3<f32> = u_xlat0;
  let x_5660 : vec3<f32> = u_xlat2;
  let x_5661 : vec3<f32> = ((vec3<f32>(x_5656.w, x_5656.w, x_5656.w) * x_5658) + x_5660);
  let x_5662 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5661.x, x_5661.y, x_5661.z, x_5662.w);
  let x_5664 : bool = u_xlatb53;
  if (x_5664) {
    let x_5669 : f32 = u_xlat1.x;
    x_5665 = x_5669;
  } else {
    x_5665 = 1.0f;
  }
  let x_5671 : f32 = x_5665;
  SV_Target0.w = x_5671;
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


