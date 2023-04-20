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

var<private> u_xlat81 : f32;

var<private> u_xlat30 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_130 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu81 : u32;

var<private> u_xlati81 : i32;

var<private> u_xlatb81 : bool;

var<private> u_xlatb83 : bool;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat83 : f32;

var<private> u_xlatb85 : bool;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb5 : bool;

var<private> u_xlatb32 : bool;

var<private> u_xlatb1 : bool;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat55 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlatb55 : bool;

var<private> u_xlatb28 : vec3<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_1746 : UnityPerDraw;

var<private> u_xlat87 : f32;

var<private> u_xlatb61 : bool;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlat68 : vec2<f32>;

var<private> u_xlat36 : vec2<f32>;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat90 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat58 : f32;

var<private> u_xlatb31 : vec2<bool>;

@group(1) @binding(4) var<uniform> x_3288 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb8 : vec2<bool>;

var<private> u_xlatu3 : u32;

var<private> u_xlati4 : i32;

var<private> u_xlati3 : i32;

@group(1) @binding(1) var<uniform> x_3731 : AdditionalLights;

var<private> u_xlat86 : f32;

var<private> u_xlati88 : i32;

var<private> u_xlatb62 : bool;

var<private> u_xlatb12 : vec4<bool>;

var<private> u_xlat89 : f32;

var<private> u_xlatb88 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat73 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat41 : vec2<f32>;

var<private> u_xlat23 : vec2<f32>;

var<private> u_xlat70 : vec2<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlat26 : vec4<f32>;

var<private> u_xlat91 : f32;

var<private> u_xlatb89 : bool;

var<private> u_xlati62 : i32;

var<private> u_xlati89 : i32;

var<private> u_xlati90 : i32;

var<private> u_xlatb66 : vec2<bool>;

var<private> u_xlat66 : vec2<f32>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb3 : bool;

var<private> u_xlatu83 : u32;

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
  var x_1659 : f32;
  var x_1707 : f32;
  var x_1844 : vec3<f32>;
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
  var x_3370 : f32;
  var x_3381 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3885 : f32;
  var x_3894 : f32;
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
  var x_5484 : f32;
  var x_5497 : f32;
  var x_5545 : f32;
  var x_5557 : vec3<f32>;
  var x_5768 : f32;
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
  u_xlat81 = dot(x_94, x_95);
  let x_97 : f32 = u_xlat81;
  u_xlat81 = inverseSqrt(x_97);
  let x_100 : f32 = u_xlat81;
  let x_102 : vec4<f32> = u_xlat4;
  u_xlat30 = (vec3<f32>(x_100, x_100, x_100) * vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_109 : f32 = vs_INTERP6.y;
  u_xlat81 = (x_109 * 200.0f);
  let x_112 : f32 = u_xlat81;
  u_xlat81 = min(x_112, 1.0f);
  let x_114 : f32 = u_xlat81;
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
  u_xlat81 = dot(x_247, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_252 : f32 = u_xlat81;
  u_xlat81 = (-(x_252) + 4.0f);
  let x_257 : f32 = u_xlat81;
  u_xlatu81 = u32(x_257);
  let x_261 : u32 = u_xlatu81;
  u_xlati81 = (bitcast<i32>(x_261) << bitcast<u32>(2i));
  let x_264 : vec3<f32> = vs_INTERP8;
  let x_266 : i32 = u_xlati81;
  let x_269 : i32 = u_xlati81;
  let x_273 : vec4<f32> = x_130.x_MainLightWorldToShadow[((x_266 + 1i) / 4i)][((x_269 + 1i) % 4i)];
  let x_275 : vec3<f32> = (vec3<f32>(x_264.y, x_264.y, x_264.y) * vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : i32 = u_xlati81;
  let x_280 : i32 = u_xlati81;
  let x_283 : vec4<f32> = x_130.x_MainLightWorldToShadow[(x_278 / 4i)][(x_280 % 4i)];
  let x_285 : vec3<f32> = vs_INTERP8;
  let x_288 : vec4<f32> = u_xlat4;
  let x_290 : vec3<f32> = ((vec3<f32>(x_283.x, x_283.y, x_283.z) * vec3<f32>(x_285.x, x_285.x, x_285.x)) + vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_291 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_293 : i32 = u_xlati81;
  let x_296 : i32 = u_xlati81;
  let x_300 : vec4<f32> = x_130.x_MainLightWorldToShadow[((x_293 + 2i) / 4i)][((x_296 + 2i) % 4i)];
  let x_302 : vec3<f32> = vs_INTERP8;
  let x_305 : vec4<f32> = u_xlat4;
  let x_307 : vec3<f32> = ((vec3<f32>(x_300.x, x_300.y, x_300.z) * vec3<f32>(x_302.z, x_302.z, x_302.z)) + vec3<f32>(x_305.x, x_305.y, x_305.z));
  let x_308 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_310 : vec4<f32> = u_xlat4;
  let x_312 : i32 = u_xlati81;
  let x_315 : i32 = u_xlati81;
  let x_319 : vec4<f32> = x_130.x_MainLightWorldToShadow[((x_312 + 3i) / 4i)][((x_315 + 3i) % 4i)];
  let x_321 : vec3<f32> = (vec3<f32>(x_310.x, x_310.y, x_310.z) + vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_327 : f32 = x_130.x_MainLightShadowParams.y;
  u_xlatb81 = (0.0f < x_327);
  let x_329 : bool = u_xlatb81;
  if (x_329) {
    let x_334 : f32 = x_130.x_MainLightShadowParams.y;
    u_xlatb83 = (x_334 == 1.0f);
    let x_336 : bool = u_xlatb83;
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
      u_xlat83 = dot(x_418, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_425 : f32 = x_130.x_MainLightShadowParams.y;
      u_xlatb85 = (x_425 == 2.0f);
      let x_427 : bool = u_xlatb85;
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
        u_xlat59 = ((vec2<f32>(x_449.x, x_449.y) * vec2<f32>(x_452.z, x_452.w)) + -(vec2<f32>(x_455.x, x_455.y)));
        let x_459 : vec2<f32> = u_xlat59;
        u_xlat6 = (vec4<f32>(x_459.x, x_459.x, x_459.y, x_459.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_463 : vec4<f32> = u_xlat6;
        let x_465 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_463.x, x_463.x, x_463.z, x_463.z) * vec4<f32>(x_465.x, x_465.x, x_465.z, x_465.z));
        let x_468 : vec4<f32> = u_xlat7;
        let x_472 : vec2<f32> = (vec2<f32>(x_468.y, x_468.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_473 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_472.x, x_473.y, x_472.y, x_473.w);
        let x_475 : vec4<f32> = u_xlat7;
        let x_478 : vec2<f32> = u_xlat59;
        let x_480 : vec2<f32> = ((vec2<f32>(x_475.x, x_475.z) * vec2<f32>(0.5f, 0.5f)) + -(x_478));
        let x_481 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_480.x, x_480.y, x_481.z, x_481.w);
        let x_484 : vec2<f32> = u_xlat59;
        u_xlat61 = (-(x_484) + vec2<f32>(1.0f, 1.0f));
        let x_489 : vec2<f32> = u_xlat59;
        let x_491 : vec2<f32> = min(x_489, vec2<f32>(0.0f, 0.0f));
        let x_492 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_491.x, x_491.y, x_492.z, x_492.w);
        let x_494 : vec4<f32> = u_xlat8;
        let x_497 : vec4<f32> = u_xlat8;
        let x_500 : vec2<f32> = u_xlat61;
        let x_501 : vec2<f32> = ((-(vec2<f32>(x_494.x, x_494.y)) * vec2<f32>(x_497.x, x_497.y)) + x_500);
        let x_502 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_501.x, x_501.y, x_502.z, x_502.w);
        let x_504 : vec2<f32> = u_xlat59;
        u_xlat59 = max(x_504, vec2<f32>(0.0f, 0.0f));
        let x_506 : vec2<f32> = u_xlat59;
        let x_508 : vec2<f32> = u_xlat59;
        let x_510 : vec4<f32> = u_xlat6;
        u_xlat59 = ((-(x_506) * x_508) + vec2<f32>(x_510.y, x_510.w));
        let x_513 : vec4<f32> = u_xlat8;
        let x_515 : vec2<f32> = (vec2<f32>(x_513.x, x_513.y) + vec2<f32>(1.0f, 1.0f));
        let x_516 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_515.x, x_515.y, x_516.z, x_516.w);
        let x_518 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_518 + vec2<f32>(1.0f, 1.0f));
        let x_521 : vec4<f32> = u_xlat7;
        let x_525 : vec2<f32> = (vec2<f32>(x_521.x, x_521.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_526 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_525.x, x_525.y, x_526.z, x_526.w);
        let x_528 : vec2<f32> = u_xlat61;
        let x_529 : vec2<f32> = (x_528 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_530 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_529.x, x_529.y, x_530.z, x_530.w);
        let x_532 : vec4<f32> = u_xlat8;
        let x_534 : vec2<f32> = (vec2<f32>(x_532.x, x_532.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_535 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_534.x, x_534.y, x_535.z, x_535.w);
        let x_538 : vec2<f32> = u_xlat59;
        let x_539 : vec2<f32> = (x_538 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_540 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_539.x, x_539.y, x_540.z, x_540.w);
        let x_542 : vec4<f32> = u_xlat6;
        u_xlat59 = (vec2<f32>(x_542.y, x_542.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_546 : f32 = u_xlat8.x;
        u_xlat9.z = x_546;
        let x_549 : f32 = u_xlat59.x;
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
        let x_567 : f32 = u_xlat59.y;
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
        u_xlat59 = ((vec2<f32>(x_638.x, x_638.y) * vec2<f32>(x_641.x, x_641.y)) + vec2<f32>(x_644.z, x_644.w));
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
        u_xlat85 = (x_694 * x_696);
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
        u_xlat32.x = x_727;
        let x_730 : f32 = u_xlat32.x;
        let x_732 : f32 = u_xlat12.y;
        u_xlat32.x = (x_730 * x_732);
        let x_736 : f32 = u_xlat12.x;
        let x_738 : f32 = u_xlat5.x;
        let x_741 : f32 = u_xlat32.x;
        u_xlat5.x = ((x_736 * x_738) + x_741);
        let x_745 : vec2<f32> = u_xlat59;
        let x_747 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_745.x, x_745.y, x_747);
        let x_754 : vec3<f32> = txVec6;
        let x_756 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_754.xy, x_754.z);
        u_xlat32.x = x_756;
        let x_759 : f32 = u_xlat12.z;
        let x_761 : f32 = u_xlat32.x;
        let x_764 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_759 * x_761) + x_764);
        let x_768 : vec4<f32> = u_xlat8;
        let x_769 : vec2<f32> = vec2<f32>(x_768.x, x_768.y);
        let x_771 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_769.x, x_769.y, x_771);
        let x_778 : vec3<f32> = txVec7;
        let x_780 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_778.xy, x_778.z);
        u_xlat32.x = x_780;
        let x_783 : f32 = u_xlat12.w;
        let x_785 : f32 = u_xlat32.x;
        let x_788 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_783 * x_785) + x_788);
        let x_792 : vec4<f32> = u_xlat10;
        let x_793 : vec2<f32> = vec2<f32>(x_792.x, x_792.y);
        let x_795 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_793.x, x_793.y, x_795);
        let x_802 : vec3<f32> = txVec8;
        let x_804 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_802.xy, x_802.z);
        u_xlat32.x = x_804;
        let x_807 : f32 = u_xlat13.x;
        let x_809 : f32 = u_xlat32.x;
        let x_812 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_807 * x_809) + x_812);
        let x_816 : vec4<f32> = u_xlat10;
        let x_817 : vec2<f32> = vec2<f32>(x_816.z, x_816.w);
        let x_819 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_817.x, x_817.y, x_819);
        let x_826 : vec3<f32> = txVec9;
        let x_828 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_826.xy, x_826.z);
        u_xlat32.x = x_828;
        let x_831 : f32 = u_xlat13.y;
        let x_833 : f32 = u_xlat32.x;
        let x_836 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_831 * x_833) + x_836);
        let x_840 : vec4<f32> = u_xlat8;
        let x_841 : vec2<f32> = vec2<f32>(x_840.z, x_840.w);
        let x_843 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_841.x, x_841.y, x_843);
        let x_850 : vec3<f32> = txVec10;
        let x_852 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_850.xy, x_850.z);
        u_xlat32.x = x_852;
        let x_855 : f32 = u_xlat13.z;
        let x_857 : f32 = u_xlat32.x;
        let x_860 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_855 * x_857) + x_860);
        let x_864 : vec4<f32> = u_xlat7;
        let x_865 : vec2<f32> = vec2<f32>(x_864.x, x_864.y);
        let x_867 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_865.x, x_865.y, x_867);
        let x_874 : vec3<f32> = txVec11;
        let x_876 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_874.xy, x_874.z);
        u_xlat32.x = x_876;
        let x_879 : f32 = u_xlat13.w;
        let x_881 : f32 = u_xlat32.x;
        let x_884 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_879 * x_881) + x_884);
        let x_888 : vec4<f32> = u_xlat7;
        let x_889 : vec2<f32> = vec2<f32>(x_888.z, x_888.w);
        let x_891 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_889.x, x_889.y, x_891);
        let x_898 : vec3<f32> = txVec12;
        let x_900 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_898.xy, x_898.z);
        u_xlat32.x = x_900;
        let x_902 : f32 = u_xlat85;
        let x_904 : f32 = u_xlat32.x;
        let x_907 : f32 = u_xlat5.x;
        u_xlat83 = ((x_902 * x_904) + x_907);
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
        u_xlat59 = ((vec2<f32>(x_924.x, x_924.y) * vec2<f32>(x_927.z, x_927.w)) + -(vec2<f32>(x_930.x, x_930.y)));
        let x_934 : vec2<f32> = u_xlat59;
        u_xlat6 = (vec4<f32>(x_934.x, x_934.x, x_934.y, x_934.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_937 : vec4<f32> = u_xlat6;
        let x_939 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_937.x, x_937.x, x_937.z, x_937.z) * vec4<f32>(x_939.x, x_939.x, x_939.z, x_939.z));
        let x_942 : vec4<f32> = u_xlat7;
        let x_946 : vec2<f32> = (vec2<f32>(x_942.y, x_942.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_947 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_947.x, x_946.x, x_947.z, x_946.y);
        let x_949 : vec4<f32> = u_xlat7;
        let x_952 : vec2<f32> = u_xlat59;
        let x_954 : vec2<f32> = ((vec2<f32>(x_949.x, x_949.z) * vec2<f32>(0.5f, 0.5f)) + -(x_952));
        let x_955 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_954.x, x_955.y, x_954.y, x_955.w);
        let x_957 : vec2<f32> = u_xlat59;
        let x_959 : vec2<f32> = (-(x_957) + vec2<f32>(1.0f, 1.0f));
        let x_960 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_959.x, x_959.y, x_960.z, x_960.w);
        let x_962 : vec2<f32> = u_xlat59;
        u_xlat61 = min(x_962, vec2<f32>(0.0f, 0.0f));
        let x_964 : vec2<f32> = u_xlat61;
        let x_966 : vec2<f32> = u_xlat61;
        let x_968 : vec4<f32> = u_xlat7;
        let x_970 : vec2<f32> = ((-(x_964) * x_966) + vec2<f32>(x_968.x, x_968.y));
        let x_971 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_970.x, x_970.y, x_971.z, x_971.w);
        let x_973 : vec2<f32> = u_xlat59;
        u_xlat61 = max(x_973, vec2<f32>(0.0f, 0.0f));
        let x_976 : vec2<f32> = u_xlat61;
        let x_978 : vec2<f32> = u_xlat61;
        let x_980 : vec4<f32> = u_xlat6;
        let x_982 : vec2<f32> = ((-(x_976) * x_978) + vec2<f32>(x_980.y, x_980.w));
        let x_983 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_982.x, x_983.y, x_982.y);
        let x_985 : vec4<f32> = u_xlat7;
        let x_988 : vec2<f32> = (vec2<f32>(x_985.x, x_985.y) + vec2<f32>(2.0f, 2.0f));
        let x_989 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_988.x, x_988.y, x_989.z, x_989.w);
        let x_991 : vec3<f32> = u_xlat33;
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
        let x_1016 : vec2<f32> = u_xlat59;
        let x_1023 : vec2<f32> = ((vec2<f32>(x_1016.x, x_1016.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1024 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1024.x, x_1023.x, x_1024.z, x_1023.y);
        let x_1026 : vec2<f32> = u_xlat59;
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
        let x_1042 : vec2<f32> = u_xlat59;
        let x_1045 : vec2<f32> = ((vec2<f32>(x_1042.y, x_1042.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1046 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1046.x, x_1045.x, x_1046.z, x_1045.y);
        let x_1048 : vec2<f32> = u_xlat59;
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
        u_xlat59 = ((vec2<f32>(x_1102.x, x_1102.y) * vec2<f32>(x_1105.x, x_1105.y)) + vec2<f32>(x_1108.w, x_1108.y));
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
        u_xlat34 = ((vec2<f32>(x_1164.x, x_1164.y) * vec2<f32>(x_1167.x, x_1167.y)) + vec2<f32>(x_1170.w, x_1170.y));
        let x_1174 : f32 = u_xlat10.y;
        u_xlat7.w = x_1174;
        let x_1177 : vec4<f32> = u_xlat5;
        let x_1180 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_1183 : vec4<f32> = u_xlat7;
        u_xlat67 = ((vec2<f32>(x_1177.x, x_1177.y) * vec2<f32>(x_1180.x, x_1180.y)) + vec2<f32>(x_1183.x, x_1183.w));
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
        u_xlat62 = ((vec2<f32>(x_1200.x, x_1200.y) * vec2<f32>(x_1203.x, x_1203.y)) + vec2<f32>(x_1206.w, x_1206.y));
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
        u_xlat85 = x_1255;
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
        let x_1279 : f32 = u_xlat85;
        let x_1282 : f32 = u_xlat7.x;
        u_xlat85 = ((x_1278 * x_1279) + x_1282);
        let x_1285 : vec2<f32> = u_xlat59;
        let x_1287 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1285.x, x_1285.y, x_1287);
        let x_1294 : vec3<f32> = txVec15;
        let x_1296 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1294.xy, x_1294.z);
        u_xlat59.x = x_1296;
        let x_1299 : f32 = u_xlat16.z;
        let x_1301 : f32 = u_xlat59.x;
        let x_1303 : f32 = u_xlat85;
        u_xlat85 = ((x_1299 * x_1301) + x_1303);
        let x_1306 : vec4<f32> = u_xlat14;
        let x_1307 : vec2<f32> = vec2<f32>(x_1306.x, x_1306.y);
        let x_1309 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1307.x, x_1307.y, x_1309);
        let x_1316 : vec3<f32> = txVec16;
        let x_1318 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1316.xy, x_1316.z);
        u_xlat59.x = x_1318;
        let x_1321 : f32 = u_xlat16.w;
        let x_1323 : f32 = u_xlat59.x;
        let x_1325 : f32 = u_xlat85;
        u_xlat85 = ((x_1321 * x_1323) + x_1325);
        let x_1328 : vec4<f32> = u_xlat12;
        let x_1329 : vec2<f32> = vec2<f32>(x_1328.x, x_1328.y);
        let x_1331 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1329.x, x_1329.y, x_1331);
        let x_1338 : vec3<f32> = txVec17;
        let x_1340 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1338.xy, x_1338.z);
        u_xlat59.x = x_1340;
        let x_1343 : f32 = u_xlat17.x;
        let x_1345 : f32 = u_xlat59.x;
        let x_1347 : f32 = u_xlat85;
        u_xlat85 = ((x_1343 * x_1345) + x_1347);
        let x_1350 : vec4<f32> = u_xlat12;
        let x_1351 : vec2<f32> = vec2<f32>(x_1350.z, x_1350.w);
        let x_1353 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1351.x, x_1351.y, x_1353);
        let x_1360 : vec3<f32> = txVec18;
        let x_1362 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1360.xy, x_1360.z);
        u_xlat59.x = x_1362;
        let x_1365 : f32 = u_xlat17.y;
        let x_1367 : f32 = u_xlat59.x;
        let x_1369 : f32 = u_xlat85;
        u_xlat85 = ((x_1365 * x_1367) + x_1369);
        let x_1372 : vec4<f32> = u_xlat13;
        let x_1373 : vec2<f32> = vec2<f32>(x_1372.x, x_1372.y);
        let x_1375 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1373.x, x_1373.y, x_1375);
        let x_1382 : vec3<f32> = txVec19;
        let x_1384 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1382.xy, x_1382.z);
        u_xlat59.x = x_1384;
        let x_1387 : f32 = u_xlat17.z;
        let x_1389 : f32 = u_xlat59.x;
        let x_1391 : f32 = u_xlat85;
        u_xlat85 = ((x_1387 * x_1389) + x_1391);
        let x_1394 : vec4<f32> = u_xlat14;
        let x_1395 : vec2<f32> = vec2<f32>(x_1394.z, x_1394.w);
        let x_1397 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1395.x, x_1395.y, x_1397);
        let x_1404 : vec3<f32> = txVec20;
        let x_1406 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1404.xy, x_1404.z);
        u_xlat59.x = x_1406;
        let x_1409 : f32 = u_xlat17.w;
        let x_1411 : f32 = u_xlat59.x;
        let x_1413 : f32 = u_xlat85;
        u_xlat85 = ((x_1409 * x_1411) + x_1413);
        let x_1416 : vec4<f32> = u_xlat15;
        let x_1417 : vec2<f32> = vec2<f32>(x_1416.x, x_1416.y);
        let x_1419 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1417.x, x_1417.y, x_1419);
        let x_1426 : vec3<f32> = txVec21;
        let x_1428 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1426.xy, x_1426.z);
        u_xlat59.x = x_1428;
        let x_1431 : f32 = u_xlat18.x;
        let x_1433 : f32 = u_xlat59.x;
        let x_1435 : f32 = u_xlat85;
        u_xlat85 = ((x_1431 * x_1433) + x_1435);
        let x_1438 : vec4<f32> = u_xlat15;
        let x_1439 : vec2<f32> = vec2<f32>(x_1438.z, x_1438.w);
        let x_1441 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1439.x, x_1439.y, x_1441);
        let x_1448 : vec3<f32> = txVec22;
        let x_1450 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1448.xy, x_1448.z);
        u_xlat59.x = x_1450;
        let x_1453 : f32 = u_xlat18.y;
        let x_1455 : f32 = u_xlat59.x;
        let x_1457 : f32 = u_xlat85;
        u_xlat85 = ((x_1453 * x_1455) + x_1457);
        let x_1460 : vec2<f32> = u_xlat34;
        let x_1462 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1460.x, x_1460.y, x_1462);
        let x_1469 : vec3<f32> = txVec23;
        let x_1471 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1469.xy, x_1469.z);
        u_xlat59.x = x_1471;
        let x_1474 : f32 = u_xlat18.z;
        let x_1476 : f32 = u_xlat59.x;
        let x_1478 : f32 = u_xlat85;
        u_xlat85 = ((x_1474 * x_1476) + x_1478);
        let x_1481 : vec2<f32> = u_xlat67;
        let x_1483 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1481.x, x_1481.y, x_1483);
        let x_1490 : vec3<f32> = txVec24;
        let x_1492 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1490.xy, x_1490.z);
        u_xlat59.x = x_1492;
        let x_1495 : f32 = u_xlat18.w;
        let x_1497 : f32 = u_xlat59.x;
        let x_1499 : f32 = u_xlat85;
        u_xlat85 = ((x_1495 * x_1497) + x_1499);
        let x_1502 : vec4<f32> = u_xlat10;
        let x_1503 : vec2<f32> = vec2<f32>(x_1502.x, x_1502.y);
        let x_1505 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1503.x, x_1503.y, x_1505);
        let x_1512 : vec3<f32> = txVec25;
        let x_1514 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1512.xy, x_1512.z);
        u_xlat59.x = x_1514;
        let x_1517 : f32 = u_xlat6.x;
        let x_1519 : f32 = u_xlat59.x;
        let x_1521 : f32 = u_xlat85;
        u_xlat85 = ((x_1517 * x_1519) + x_1521);
        let x_1524 : vec4<f32> = u_xlat10;
        let x_1525 : vec2<f32> = vec2<f32>(x_1524.z, x_1524.w);
        let x_1527 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1525.x, x_1525.y, x_1527);
        let x_1534 : vec3<f32> = txVec26;
        let x_1536 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1534.xy, x_1534.z);
        u_xlat59.x = x_1536;
        let x_1539 : f32 = u_xlat6.y;
        let x_1541 : f32 = u_xlat59.x;
        let x_1543 : f32 = u_xlat85;
        u_xlat85 = ((x_1539 * x_1541) + x_1543);
        let x_1546 : vec2<f32> = u_xlat62;
        let x_1548 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1546.x, x_1546.y, x_1548);
        let x_1555 : vec3<f32> = txVec27;
        let x_1557 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1555.xy, x_1555.z);
        u_xlat59.x = x_1557;
        let x_1560 : f32 = u_xlat6.z;
        let x_1562 : f32 = u_xlat59.x;
        let x_1564 : f32 = u_xlat85;
        u_xlat85 = ((x_1560 * x_1562) + x_1564);
        let x_1567 : vec4<f32> = u_xlat5;
        let x_1568 : vec2<f32> = vec2<f32>(x_1567.x, x_1567.y);
        let x_1570 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1568.x, x_1568.y, x_1570);
        let x_1577 : vec3<f32> = txVec28;
        let x_1579 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1577.xy, x_1577.z);
        u_xlat5.x = x_1579;
        let x_1582 : f32 = u_xlat6.w;
        let x_1584 : f32 = u_xlat5.x;
        let x_1586 : f32 = u_xlat85;
        u_xlat83 = ((x_1582 * x_1584) + x_1586);
      }
    }
  } else {
    let x_1590 : vec4<f32> = u_xlat4;
    let x_1591 : vec2<f32> = vec2<f32>(x_1590.x, x_1590.y);
    let x_1593 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1591.x, x_1591.y, x_1593);
    let x_1600 : vec3<f32> = txVec29;
    let x_1602 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1600.xy, x_1600.z);
    u_xlat83 = x_1602;
  }
  let x_1604 : f32 = x_130.x_MainLightShadowParams.x;
  u_xlat85 = (-(x_1604) + 1.0f);
  let x_1607 : f32 = u_xlat83;
  let x_1609 : f32 = x_130.x_MainLightShadowParams.x;
  let x_1611 : f32 = u_xlat85;
  u_xlat83 = ((x_1607 * x_1609) + x_1611);
  let x_1615 : f32 = u_xlat4.z;
  u_xlatb5 = (0.0f >= x_1615);
  let x_1619 : f32 = u_xlat4.z;
  u_xlatb32 = (x_1619 >= 1.0f);
  let x_1621 : bool = u_xlatb32;
  let x_1622 : bool = u_xlatb5;
  u_xlatb5 = (x_1621 | x_1622);
  let x_1624 : bool = u_xlatb5;
  let x_1625 : f32 = u_xlat83;
  u_xlat83 = select(x_1625, 1.0f, x_1624);
  let x_1627 : vec3<f32> = u_xlat0;
  let x_1629 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat0.x = dot(x_1627, -(vec3<f32>(x_1629.x, x_1629.y, x_1629.z)));
  let x_1635 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1635, 0.0f, 1.0f);
  let x_1638 : f32 = u_xlat83;
  let x_1641 : vec4<f32> = x_53.x_MainLightColor;
  u_xlat32 = (vec3<f32>(x_1638, x_1638, x_1638) * vec3<f32>(x_1641.x, x_1641.y, x_1641.z));
  let x_1644 : vec3<f32> = u_xlat0;
  let x_1646 : vec3<f32> = u_xlat32;
  u_xlat0 = (vec3<f32>(x_1644.x, x_1644.x, x_1644.x) * x_1646);
  let x_1648 : vec3<f32> = u_xlat0;
  let x_1649 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_1648 * vec3<f32>(x_1649.x, x_1649.y, x_1649.z));
  let x_1654 : f32 = u_xlat1.w;
  u_xlatb1 = (x_1654 >= 0.40000000596046447754f);
  let x_1657 : bool = u_xlatb1;
  if (x_1657) {
    let x_1663 : f32 = u_xlat1.w;
    x_1659 = x_1663;
  } else {
    x_1659 = 0.0f;
  }
  let x_1665 : f32 = x_1659;
  u_xlat1.x = x_1665;
  let x_1669 : f32 = u_xlat1.w;
  u_xlat28.x = (x_1669 + -0.40000000596046447754f);
  let x_1675 : f32 = u_xlat1.w;
  u_xlat55 = dpdxCoarse(x_1675);
  let x_1679 : f32 = u_xlat1.w;
  u_xlat82 = dpdyCoarse(x_1679);
  let x_1681 : f32 = u_xlat82;
  let x_1683 : f32 = u_xlat55;
  u_xlat55 = (abs(x_1681) + abs(x_1683));
  let x_1686 : f32 = u_xlat55;
  u_xlat55 = max(x_1686, 0.00009999999747378752f);
  let x_1690 : f32 = u_xlat28.x;
  let x_1691 : f32 = u_xlat55;
  u_xlat28.x = (x_1690 / x_1691);
  let x_1695 : f32 = u_xlat28.x;
  u_xlat28.x = (x_1695 + 0.5f);
  let x_1699 : f32 = u_xlat28.x;
  u_xlat28.x = clamp(x_1699, 0.0f, 1.0f);
  let x_1704 : f32 = x_53.x_AlphaToMaskAvailable;
  u_xlatb55 = !((x_1704 == 0.0f));
  let x_1706 : bool = u_xlatb55;
  if (x_1706) {
    let x_1711 : f32 = u_xlat28.x;
    x_1707 = x_1711;
  } else {
    let x_1714 : f32 = u_xlat1.x;
    x_1707 = x_1714;
  }
  let x_1715 : f32 = x_1707;
  u_xlat1.x = x_1715;
  let x_1718 : f32 = u_xlat1.x;
  u_xlat28.x = (x_1718 + -0.00009999999747378752f);
  let x_1726 : f32 = u_xlat28.x;
  u_xlatb28.x = (x_1726 < 0.0f);
  let x_1730 : bool = u_xlatb28.x;
  if (((select(0i, 1i, x_1730) * -1i) != 0i)) {
    discard;
  }
  let x_1740 : f32 = vs_INTERP4.w;
  u_xlatb28.x = (0.0f < x_1740);
  let x_1748 : f32 = x_1746.unity_WorldTransformParams.w;
  u_xlatb28.z = (x_1748 >= 0.0f);
  let x_1752 : bool = u_xlatb28.x;
  u_xlat28.x = select(-1.0f, 1.0f, x_1752);
  let x_1756 : bool = u_xlatb28.z;
  u_xlat28.z = select(-1.0f, 1.0f, x_1756);
  let x_1760 : f32 = u_xlat28.z;
  let x_1762 : f32 = u_xlat28.x;
  u_xlat28.x = (x_1760 * x_1762);
  let x_1765 : vec4<f32> = vs_INTERP4;
  let x_1767 : vec3<f32> = vs_INTERP9;
  u_xlat32 = (vec3<f32>(x_1765.y, x_1765.z, x_1765.x) * vec3<f32>(x_1767.z, x_1767.x, x_1767.y));
  let x_1770 : vec3<f32> = vs_INTERP9;
  let x_1772 : vec4<f32> = vs_INTERP4;
  let x_1775 : vec3<f32> = u_xlat32;
  u_xlat32 = ((vec3<f32>(x_1770.y, x_1770.z, x_1770.x) * vec3<f32>(x_1772.z, x_1772.x, x_1772.y)) + -(x_1775));
  let x_1778 : vec3<f32> = u_xlat28;
  let x_1780 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1778.x, x_1778.x, x_1778.x) * x_1780);
  let x_1782 : vec3<f32> = u_xlat30;
  let x_1784 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1782.y, x_1782.y, x_1782.y) * x_1784);
  let x_1786 : vec3<f32> = u_xlat30;
  let x_1788 : vec4<f32> = vs_INTERP4;
  let x_1791 : vec3<f32> = u_xlat32;
  u_xlat32 = ((vec3<f32>(x_1786.x, x_1786.x, x_1786.x) * vec3<f32>(x_1788.x, x_1788.y, x_1788.z)) + x_1791);
  let x_1793 : vec3<f32> = u_xlat30;
  let x_1795 : vec3<f32> = vs_INTERP9;
  let x_1797 : vec3<f32> = u_xlat32;
  u_xlat30 = ((vec3<f32>(x_1793.z, x_1793.z, x_1793.z) * x_1795) + x_1797);
  let x_1799 : vec3<f32> = u_xlat30;
  let x_1800 : vec3<f32> = u_xlat30;
  u_xlat28.x = dot(x_1799, x_1800);
  let x_1804 : f32 = u_xlat28.x;
  u_xlat28.x = inverseSqrt(x_1804);
  let x_1807 : vec3<f32> = u_xlat28;
  let x_1809 : vec3<f32> = u_xlat30;
  let x_1810 : vec3<f32> = (vec3<f32>(x_1807.x, x_1807.x, x_1807.x) * x_1809);
  let x_1811 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1810.x, x_1810.y, x_1810.z, x_1811.w);
  let x_1814 : f32 = x_53.unity_OrthoParams.w;
  u_xlatb28.x = (x_1814 == 0.0f);
  let x_1817 : vec3<f32> = vs_INTERP8;
  let x_1821 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  u_xlat30 = (-(x_1817) + x_1821);
  let x_1823 : vec3<f32> = u_xlat30;
  let x_1824 : vec3<f32> = u_xlat30;
  u_xlat82 = dot(x_1823, x_1824);
  let x_1826 : f32 = u_xlat82;
  u_xlat82 = inverseSqrt(x_1826);
  let x_1828 : f32 = u_xlat82;
  let x_1830 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_1828, x_1828, x_1828) * x_1830);
  let x_1834 : f32 = x_53.unity_MatrixV[0i].z;
  u_xlat7.x = x_1834;
  let x_1837 : f32 = x_53.unity_MatrixV[1i].z;
  u_xlat7.y = x_1837;
  let x_1840 : f32 = x_53.unity_MatrixV[2i].z;
  u_xlat7.z = x_1840;
  let x_1843 : bool = u_xlatb28.x;
  if (x_1843) {
    let x_1847 : vec3<f32> = u_xlat30;
    x_1844 = x_1847;
  } else {
    let x_1849 : vec4<f32> = u_xlat7;
    x_1844 = vec3<f32>(x_1849.x, x_1849.y, x_1849.z);
  }
  let x_1851 : vec3<f32> = x_1844;
  u_xlat30 = x_1851;
  let x_1853 : f32 = vs_INTERP8.y;
  let x_1855 : f32 = x_53.unity_MatrixV[1i].z;
  u_xlat28.x = (x_1853 * x_1855);
  let x_1859 : f32 = x_53.unity_MatrixV[0i].z;
  let x_1861 : f32 = vs_INTERP8.x;
  let x_1864 : f32 = u_xlat28.x;
  u_xlat28.x = ((x_1859 * x_1861) + x_1864);
  let x_1868 : f32 = x_53.unity_MatrixV[2i].z;
  let x_1870 : f32 = vs_INTERP8.z;
  let x_1873 : f32 = u_xlat28.x;
  u_xlat28.x = ((x_1868 * x_1870) + x_1873);
  let x_1877 : f32 = u_xlat28.x;
  let x_1879 : f32 = x_53.unity_MatrixV[3i].z;
  u_xlat28.x = (x_1877 + x_1879);
  let x_1883 : f32 = u_xlat28.x;
  let x_1886 : f32 = x_53.x_ProjectionParams.y;
  u_xlat28.x = (-(x_1883) + -(x_1886));
  let x_1891 : f32 = u_xlat28.x;
  u_xlat28.x = max(x_1891, 0.0f);
  let x_1895 : f32 = u_xlat28.x;
  let x_1897 : f32 = x_53.unity_FogParams.x;
  u_xlat28.x = (x_1895 * x_1897);
  u_xlat6.w = 1.0f;
  let x_1903 : vec4<f32> = x_1746.unity_SHAr;
  let x_1904 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_1903, x_1904);
  let x_1909 : vec4<f32> = x_1746.unity_SHAg;
  let x_1910 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_1909, x_1910);
  let x_1915 : vec4<f32> = x_1746.unity_SHAb;
  let x_1916 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_1915, x_1916);
  let x_1919 : vec4<f32> = u_xlat6;
  let x_1921 : vec4<f32> = u_xlat6;
  u_xlat8 = (vec4<f32>(x_1919.y, x_1919.z, x_1919.z, x_1919.x) * vec4<f32>(x_1921.x, x_1921.y, x_1921.z, x_1921.z));
  let x_1926 : vec4<f32> = x_1746.unity_SHBr;
  let x_1927 : vec4<f32> = u_xlat8;
  u_xlat9.x = dot(x_1926, x_1927);
  let x_1932 : vec4<f32> = x_1746.unity_SHBg;
  let x_1933 : vec4<f32> = u_xlat8;
  u_xlat9.y = dot(x_1932, x_1933);
  let x_1938 : vec4<f32> = x_1746.unity_SHBb;
  let x_1939 : vec4<f32> = u_xlat8;
  u_xlat9.z = dot(x_1938, x_1939);
  let x_1943 : f32 = u_xlat6.y;
  let x_1945 : f32 = u_xlat6.y;
  u_xlat82 = (x_1943 * x_1945);
  let x_1948 : f32 = u_xlat6.x;
  let x_1950 : f32 = u_xlat6.x;
  let x_1952 : f32 = u_xlat82;
  u_xlat82 = ((x_1948 * x_1950) + -(x_1952));
  let x_1957 : vec4<f32> = x_1746.unity_SHC;
  let x_1959 : f32 = u_xlat82;
  let x_1962 : vec4<f32> = u_xlat9;
  u_xlat32 = ((vec3<f32>(x_1957.x, x_1957.y, x_1957.z) * vec3<f32>(x_1959, x_1959, x_1959)) + vec3<f32>(x_1962.x, x_1962.y, x_1962.z));
  let x_1965 : vec3<f32> = u_xlat32;
  let x_1966 : vec4<f32> = u_xlat7;
  u_xlat32 = (x_1965 + vec3<f32>(x_1966.x, x_1966.y, x_1966.z));
  let x_1969 : vec3<f32> = u_xlat32;
  u_xlat32 = max(x_1969, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1972 : f32 = u_xlat3.x;
  u_xlat3.x = x_1972;
  let x_1975 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1975, 0.0f, 1.0f);
  let x_1979 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_1979, 1.0f);
  let x_1982 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1982 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_1987 : f32 = u_xlat3.x;
  u_xlat82 = (-(x_1987) + 1.0f);
  let x_1990 : f32 = u_xlat82;
  let x_1991 : f32 = u_xlat82;
  u_xlat83 = (x_1990 * x_1991);
  let x_1993 : f32 = u_xlat83;
  u_xlat83 = max(x_1993, 0.0078125f);
  let x_1997 : f32 = u_xlat83;
  let x_1998 : f32 = u_xlat83;
  u_xlat87 = (x_1997 * x_1998);
  let x_2001 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2001 + 0.04000002145767211914f);
  let x_2006 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_2006, 1.0f);
  let x_2009 : f32 = u_xlat83;
  u_xlat7.x = ((x_2009 * 4.0f) + 2.0f);
  let x_2014 : f32 = vs_INTERP6.w;
  u_xlat34.x = min(x_2014, 1.0f);
  let x_2017 : bool = u_xlatb81;
  if (x_2017) {
    let x_2021 : f32 = x_130.x_MainLightShadowParams.y;
    u_xlatb81 = (x_2021 == 1.0f);
    let x_2023 : bool = u_xlatb81;
    if (x_2023) {
      let x_2026 : vec4<f32> = u_xlat4;
      let x_2029 : vec4<f32> = x_130.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_2026.x, x_2026.y, x_2026.x, x_2026.y) + x_2029);
      let x_2032 : vec4<f32> = u_xlat8;
      let x_2033 : vec2<f32> = vec2<f32>(x_2032.x, x_2032.y);
      let x_2035 : f32 = u_xlat4.z;
      txVec30 = vec3<f32>(x_2033.x, x_2033.y, x_2035);
      let x_2042 : vec3<f32> = txVec30;
      let x_2044 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2042.xy, x_2042.z);
      u_xlat9.x = x_2044;
      let x_2047 : vec4<f32> = u_xlat8;
      let x_2048 : vec2<f32> = vec2<f32>(x_2047.z, x_2047.w);
      let x_2050 : f32 = u_xlat4.z;
      txVec31 = vec3<f32>(x_2048.x, x_2048.y, x_2050);
      let x_2057 : vec3<f32> = txVec31;
      let x_2059 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2057.xy, x_2057.z);
      u_xlat9.y = x_2059;
      let x_2061 : vec4<f32> = u_xlat4;
      let x_2064 : vec4<f32> = x_130.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_2061.x, x_2061.y, x_2061.x, x_2061.y) + x_2064);
      let x_2067 : vec4<f32> = u_xlat8;
      let x_2068 : vec2<f32> = vec2<f32>(x_2067.x, x_2067.y);
      let x_2070 : f32 = u_xlat4.z;
      txVec32 = vec3<f32>(x_2068.x, x_2068.y, x_2070);
      let x_2077 : vec3<f32> = txVec32;
      let x_2079 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2077.xy, x_2077.z);
      u_xlat9.z = x_2079;
      let x_2082 : vec4<f32> = u_xlat8;
      let x_2083 : vec2<f32> = vec2<f32>(x_2082.z, x_2082.w);
      let x_2085 : f32 = u_xlat4.z;
      txVec33 = vec3<f32>(x_2083.x, x_2083.y, x_2085);
      let x_2092 : vec3<f32> = txVec33;
      let x_2094 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2092.xy, x_2092.z);
      u_xlat9.w = x_2094;
      let x_2096 : vec4<f32> = u_xlat9;
      u_xlat81 = dot(x_2096, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_2101 : f32 = x_130.x_MainLightShadowParams.y;
      u_xlatb61 = (x_2101 == 2.0f);
      let x_2103 : bool = u_xlatb61;
      if (x_2103) {
        let x_2106 : vec4<f32> = u_xlat4;
        let x_2109 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        u_xlat61 = ((vec2<f32>(x_2106.x, x_2106.y) * vec2<f32>(x_2109.z, x_2109.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2113 : vec2<f32> = u_xlat61;
        u_xlat61 = floor(x_2113);
        let x_2115 : vec4<f32> = u_xlat4;
        let x_2118 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2121 : vec2<f32> = u_xlat61;
        let x_2123 : vec2<f32> = ((vec2<f32>(x_2115.x, x_2115.y) * vec2<f32>(x_2118.z, x_2118.w)) + -(x_2121));
        let x_2124 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2123.x, x_2123.y, x_2124.z, x_2124.w);
        let x_2126 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2126.x, x_2126.x, x_2126.y, x_2126.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2129 : vec4<f32> = u_xlat9;
        let x_2131 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2129.x, x_2129.x, x_2129.z, x_2129.z) * vec4<f32>(x_2131.x, x_2131.x, x_2131.z, x_2131.z));
        let x_2134 : vec4<f32> = u_xlat10;
        u_xlat62 = (vec2<f32>(x_2134.y, x_2134.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_2137 : vec4<f32> = u_xlat10;
        let x_2140 : vec4<f32> = u_xlat8;
        let x_2143 : vec2<f32> = ((vec2<f32>(x_2137.x, x_2137.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2140.x, x_2140.y)));
        let x_2144 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2143.x, x_2144.y, x_2143.y, x_2144.w);
        let x_2146 : vec4<f32> = u_xlat8;
        let x_2149 : vec2<f32> = (-(vec2<f32>(x_2146.x, x_2146.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2150 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2149.x, x_2149.y, x_2150.z, x_2150.w);
        let x_2153 : vec4<f32> = u_xlat8;
        u_xlat64 = min(vec2<f32>(x_2153.x, x_2153.y), vec2<f32>(0.0f, 0.0f));
        let x_2156 : vec2<f32> = u_xlat64;
        let x_2158 : vec2<f32> = u_xlat64;
        let x_2160 : vec4<f32> = u_xlat10;
        u_xlat64 = ((-(x_2156) * x_2158) + vec2<f32>(x_2160.x, x_2160.y));
        let x_2163 : vec4<f32> = u_xlat8;
        let x_2165 : vec2<f32> = max(vec2<f32>(x_2163.x, x_2163.y), vec2<f32>(0.0f, 0.0f));
        let x_2166 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2165.x, x_2165.y, x_2166.z, x_2166.w);
        let x_2168 : vec4<f32> = u_xlat8;
        let x_2171 : vec4<f32> = u_xlat8;
        let x_2174 : vec4<f32> = u_xlat9;
        let x_2176 : vec2<f32> = ((-(vec2<f32>(x_2168.x, x_2168.y)) * vec2<f32>(x_2171.x, x_2171.y)) + vec2<f32>(x_2174.y, x_2174.w));
        let x_2177 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2176.x, x_2176.y, x_2177.z, x_2177.w);
        let x_2179 : vec2<f32> = u_xlat64;
        u_xlat64 = (x_2179 + vec2<f32>(1.0f, 1.0f));
        let x_2181 : vec4<f32> = u_xlat8;
        let x_2183 : vec2<f32> = (vec2<f32>(x_2181.x, x_2181.y) + vec2<f32>(1.0f, 1.0f));
        let x_2184 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2183.x, x_2183.y, x_2184.z, x_2184.w);
        let x_2186 : vec4<f32> = u_xlat9;
        let x_2188 : vec2<f32> = (vec2<f32>(x_2186.x, x_2186.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2189 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2188.x, x_2188.y, x_2189.z, x_2189.w);
        let x_2191 : vec4<f32> = u_xlat10;
        let x_2193 : vec2<f32> = (vec2<f32>(x_2191.x, x_2191.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2194 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2193.x, x_2193.y, x_2194.z, x_2194.w);
        let x_2196 : vec2<f32> = u_xlat64;
        let x_2197 : vec2<f32> = (x_2196 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2198 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2197.x, x_2197.y, x_2198.z, x_2198.w);
        let x_2200 : vec4<f32> = u_xlat8;
        let x_2202 : vec2<f32> = (vec2<f32>(x_2200.x, x_2200.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2203 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2202.x, x_2202.y, x_2203.z, x_2203.w);
        let x_2205 : vec4<f32> = u_xlat9;
        let x_2207 : vec2<f32> = (vec2<f32>(x_2205.y, x_2205.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2208 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2207.x, x_2207.y, x_2208.z, x_2208.w);
        let x_2211 : f32 = u_xlat10.x;
        u_xlat11.z = x_2211;
        let x_2214 : f32 = u_xlat8.x;
        u_xlat11.w = x_2214;
        let x_2217 : f32 = u_xlat13.x;
        u_xlat12.z = x_2217;
        let x_2220 : f32 = u_xlat62.x;
        u_xlat12.w = x_2220;
        let x_2222 : vec4<f32> = u_xlat11;
        let x_2224 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_2222.z, x_2222.w, x_2222.x, x_2222.z) + vec4<f32>(x_2224.z, x_2224.w, x_2224.x, x_2224.z));
        let x_2228 : f32 = u_xlat11.y;
        u_xlat10.z = x_2228;
        let x_2231 : f32 = u_xlat8.y;
        u_xlat10.w = x_2231;
        let x_2234 : f32 = u_xlat12.y;
        u_xlat13.z = x_2234;
        let x_2237 : f32 = u_xlat62.y;
        u_xlat13.w = x_2237;
        let x_2239 : vec4<f32> = u_xlat10;
        let x_2241 : vec4<f32> = u_xlat13;
        let x_2243 : vec3<f32> = (vec3<f32>(x_2239.z, x_2239.y, x_2239.w) + vec3<f32>(x_2241.z, x_2241.y, x_2241.w));
        let x_2244 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2243.x, x_2243.y, x_2243.z, x_2244.w);
        let x_2246 : vec4<f32> = u_xlat12;
        let x_2248 : vec4<f32> = u_xlat9;
        let x_2250 : vec3<f32> = (vec3<f32>(x_2246.x, x_2246.z, x_2246.w) / vec3<f32>(x_2248.z, x_2248.w, x_2248.y));
        let x_2251 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2250.x, x_2250.y, x_2250.z, x_2251.w);
        let x_2253 : vec4<f32> = u_xlat10;
        let x_2255 : vec3<f32> = (vec3<f32>(x_2253.x, x_2253.y, x_2253.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2256 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2255.x, x_2255.y, x_2255.z, x_2256.w);
        let x_2258 : vec4<f32> = u_xlat13;
        let x_2260 : vec4<f32> = u_xlat8;
        let x_2262 : vec3<f32> = (vec3<f32>(x_2258.z, x_2258.y, x_2258.w) / vec3<f32>(x_2260.x, x_2260.y, x_2260.z));
        let x_2263 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2262.x, x_2262.y, x_2262.z, x_2263.w);
        let x_2265 : vec4<f32> = u_xlat11;
        let x_2267 : vec3<f32> = (vec3<f32>(x_2265.x, x_2265.y, x_2265.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2268 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2267.x, x_2267.y, x_2267.z, x_2268.w);
        let x_2270 : vec4<f32> = u_xlat10;
        let x_2273 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2275 : vec3<f32> = (vec3<f32>(x_2270.y, x_2270.x, x_2270.z) * vec3<f32>(x_2273.x, x_2273.x, x_2273.x));
        let x_2276 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2275.x, x_2275.y, x_2275.z, x_2276.w);
        let x_2278 : vec4<f32> = u_xlat11;
        let x_2281 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2283 : vec3<f32> = (vec3<f32>(x_2278.x, x_2278.y, x_2278.z) * vec3<f32>(x_2281.y, x_2281.y, x_2281.y));
        let x_2284 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2283.x, x_2283.y, x_2283.z, x_2284.w);
        let x_2287 : f32 = u_xlat11.x;
        u_xlat10.w = x_2287;
        let x_2289 : vec2<f32> = u_xlat61;
        let x_2292 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2295 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_2289.x, x_2289.y, x_2289.x, x_2289.y) * vec4<f32>(x_2292.x, x_2292.y, x_2292.x, x_2292.y)) + vec4<f32>(x_2295.y, x_2295.w, x_2295.x, x_2295.w));
        let x_2298 : vec2<f32> = u_xlat61;
        let x_2300 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2303 : vec4<f32> = u_xlat10;
        let x_2305 : vec2<f32> = ((x_2298 * vec2<f32>(x_2300.x, x_2300.y)) + vec2<f32>(x_2303.z, x_2303.w));
        let x_2306 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2305.x, x_2305.y, x_2306.z, x_2306.w);
        let x_2309 : f32 = u_xlat10.y;
        u_xlat11.w = x_2309;
        let x_2311 : vec4<f32> = u_xlat11;
        let x_2312 : vec2<f32> = vec2<f32>(x_2311.y, x_2311.z);
        let x_2313 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2313.x, x_2312.x, x_2313.z, x_2312.y);
        let x_2315 : vec2<f32> = u_xlat61;
        let x_2318 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2321 : vec4<f32> = u_xlat10;
        u_xlat14 = ((vec4<f32>(x_2315.x, x_2315.y, x_2315.x, x_2315.y) * vec4<f32>(x_2318.x, x_2318.y, x_2318.x, x_2318.y)) + vec4<f32>(x_2321.x, x_2321.y, x_2321.z, x_2321.y));
        let x_2324 : vec2<f32> = u_xlat61;
        let x_2327 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2330 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_2324.x, x_2324.y, x_2324.x, x_2324.y) * vec4<f32>(x_2327.x, x_2327.y, x_2327.x, x_2327.y)) + vec4<f32>(x_2330.w, x_2330.y, x_2330.w, x_2330.z));
        let x_2333 : vec2<f32> = u_xlat61;
        let x_2336 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2339 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2333.x, x_2333.y, x_2333.x, x_2333.y) * vec4<f32>(x_2336.x, x_2336.y, x_2336.x, x_2336.y)) + vec4<f32>(x_2339.x, x_2339.w, x_2339.z, x_2339.w));
        let x_2342 : vec4<f32> = u_xlat8;
        let x_2344 : vec4<f32> = u_xlat9;
        u_xlat15 = (vec4<f32>(x_2342.x, x_2342.x, x_2342.x, x_2342.y) * vec4<f32>(x_2344.z, x_2344.w, x_2344.y, x_2344.z));
        let x_2347 : vec4<f32> = u_xlat8;
        let x_2349 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_2347.y, x_2347.y, x_2347.z, x_2347.z) * x_2349);
        let x_2352 : f32 = u_xlat8.z;
        let x_2354 : f32 = u_xlat9.y;
        u_xlat61.x = (x_2352 * x_2354);
        let x_2358 : vec4<f32> = u_xlat12;
        let x_2359 : vec2<f32> = vec2<f32>(x_2358.x, x_2358.y);
        let x_2361 : f32 = u_xlat4.z;
        txVec34 = vec3<f32>(x_2359.x, x_2359.y, x_2361);
        let x_2369 : vec3<f32> = txVec34;
        let x_2371 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2369.xy, x_2369.z);
        u_xlat88 = x_2371;
        let x_2373 : vec4<f32> = u_xlat12;
        let x_2374 : vec2<f32> = vec2<f32>(x_2373.z, x_2373.w);
        let x_2376 : f32 = u_xlat4.z;
        txVec35 = vec3<f32>(x_2374.x, x_2374.y, x_2376);
        let x_2383 : vec3<f32> = txVec35;
        let x_2385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2383.xy, x_2383.z);
        u_xlat8.x = x_2385;
        let x_2388 : f32 = u_xlat8.x;
        let x_2390 : f32 = u_xlat15.y;
        u_xlat8.x = (x_2388 * x_2390);
        let x_2394 : f32 = u_xlat15.x;
        let x_2395 : f32 = u_xlat88;
        let x_2398 : f32 = u_xlat8.x;
        u_xlat88 = ((x_2394 * x_2395) + x_2398);
        let x_2401 : vec4<f32> = u_xlat13;
        let x_2402 : vec2<f32> = vec2<f32>(x_2401.x, x_2401.y);
        let x_2404 : f32 = u_xlat4.z;
        txVec36 = vec3<f32>(x_2402.x, x_2402.y, x_2404);
        let x_2411 : vec3<f32> = txVec36;
        let x_2413 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2411.xy, x_2411.z);
        u_xlat8.x = x_2413;
        let x_2416 : f32 = u_xlat15.z;
        let x_2418 : f32 = u_xlat8.x;
        let x_2420 : f32 = u_xlat88;
        u_xlat88 = ((x_2416 * x_2418) + x_2420);
        let x_2423 : vec4<f32> = u_xlat11;
        let x_2424 : vec2<f32> = vec2<f32>(x_2423.x, x_2423.y);
        let x_2426 : f32 = u_xlat4.z;
        txVec37 = vec3<f32>(x_2424.x, x_2424.y, x_2426);
        let x_2433 : vec3<f32> = txVec37;
        let x_2435 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2433.xy, x_2433.z);
        u_xlat8.x = x_2435;
        let x_2438 : f32 = u_xlat15.w;
        let x_2440 : f32 = u_xlat8.x;
        let x_2442 : f32 = u_xlat88;
        u_xlat88 = ((x_2438 * x_2440) + x_2442);
        let x_2445 : vec4<f32> = u_xlat14;
        let x_2446 : vec2<f32> = vec2<f32>(x_2445.x, x_2445.y);
        let x_2448 : f32 = u_xlat4.z;
        txVec38 = vec3<f32>(x_2446.x, x_2446.y, x_2448);
        let x_2455 : vec3<f32> = txVec38;
        let x_2457 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2455.xy, x_2455.z);
        u_xlat8.x = x_2457;
        let x_2460 : f32 = u_xlat16.x;
        let x_2462 : f32 = u_xlat8.x;
        let x_2464 : f32 = u_xlat88;
        u_xlat88 = ((x_2460 * x_2462) + x_2464);
        let x_2467 : vec4<f32> = u_xlat14;
        let x_2468 : vec2<f32> = vec2<f32>(x_2467.z, x_2467.w);
        let x_2470 : f32 = u_xlat4.z;
        txVec39 = vec3<f32>(x_2468.x, x_2468.y, x_2470);
        let x_2477 : vec3<f32> = txVec39;
        let x_2479 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2477.xy, x_2477.z);
        u_xlat8.x = x_2479;
        let x_2482 : f32 = u_xlat16.y;
        let x_2484 : f32 = u_xlat8.x;
        let x_2486 : f32 = u_xlat88;
        u_xlat88 = ((x_2482 * x_2484) + x_2486);
        let x_2489 : vec4<f32> = u_xlat11;
        let x_2490 : vec2<f32> = vec2<f32>(x_2489.z, x_2489.w);
        let x_2492 : f32 = u_xlat4.z;
        txVec40 = vec3<f32>(x_2490.x, x_2490.y, x_2492);
        let x_2499 : vec3<f32> = txVec40;
        let x_2501 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2499.xy, x_2499.z);
        u_xlat8.x = x_2501;
        let x_2504 : f32 = u_xlat16.z;
        let x_2506 : f32 = u_xlat8.x;
        let x_2508 : f32 = u_xlat88;
        u_xlat88 = ((x_2504 * x_2506) + x_2508);
        let x_2511 : vec4<f32> = u_xlat10;
        let x_2512 : vec2<f32> = vec2<f32>(x_2511.x, x_2511.y);
        let x_2514 : f32 = u_xlat4.z;
        txVec41 = vec3<f32>(x_2512.x, x_2512.y, x_2514);
        let x_2521 : vec3<f32> = txVec41;
        let x_2523 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2521.xy, x_2521.z);
        u_xlat8.x = x_2523;
        let x_2526 : f32 = u_xlat16.w;
        let x_2528 : f32 = u_xlat8.x;
        let x_2530 : f32 = u_xlat88;
        u_xlat88 = ((x_2526 * x_2528) + x_2530);
        let x_2533 : vec4<f32> = u_xlat10;
        let x_2534 : vec2<f32> = vec2<f32>(x_2533.z, x_2533.w);
        let x_2536 : f32 = u_xlat4.z;
        txVec42 = vec3<f32>(x_2534.x, x_2534.y, x_2536);
        let x_2543 : vec3<f32> = txVec42;
        let x_2545 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2543.xy, x_2543.z);
        u_xlat8.x = x_2545;
        let x_2548 : f32 = u_xlat61.x;
        let x_2550 : f32 = u_xlat8.x;
        let x_2552 : f32 = u_xlat88;
        u_xlat81 = ((x_2548 * x_2550) + x_2552);
      } else {
        let x_2555 : vec4<f32> = u_xlat4;
        let x_2558 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        u_xlat61 = ((vec2<f32>(x_2555.x, x_2555.y) * vec2<f32>(x_2558.z, x_2558.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2562 : vec2<f32> = u_xlat61;
        u_xlat61 = floor(x_2562);
        let x_2564 : vec4<f32> = u_xlat4;
        let x_2567 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2570 : vec2<f32> = u_xlat61;
        let x_2572 : vec2<f32> = ((vec2<f32>(x_2564.x, x_2564.y) * vec2<f32>(x_2567.z, x_2567.w)) + -(x_2570));
        let x_2573 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2572.x, x_2572.y, x_2573.z, x_2573.w);
        let x_2575 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2575.x, x_2575.x, x_2575.y, x_2575.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2578 : vec4<f32> = u_xlat9;
        let x_2580 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2578.x, x_2578.x, x_2578.z, x_2578.z) * vec4<f32>(x_2580.x, x_2580.x, x_2580.z, x_2580.z));
        let x_2583 : vec4<f32> = u_xlat10;
        let x_2585 : vec2<f32> = (vec2<f32>(x_2583.y, x_2583.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2586 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2586.x, x_2585.x, x_2586.z, x_2585.y);
        let x_2588 : vec4<f32> = u_xlat10;
        let x_2591 : vec4<f32> = u_xlat8;
        u_xlat62 = ((vec2<f32>(x_2588.x, x_2588.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2591.x, x_2591.y)));
        let x_2595 : vec4<f32> = u_xlat8;
        let x_2598 : vec2<f32> = (-(vec2<f32>(x_2595.x, x_2595.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2599 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2598.x, x_2599.y, x_2598.y, x_2599.w);
        let x_2601 : vec4<f32> = u_xlat8;
        let x_2603 : vec2<f32> = min(vec2<f32>(x_2601.x, x_2601.y), vec2<f32>(0.0f, 0.0f));
        let x_2604 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2603.x, x_2603.y, x_2604.z, x_2604.w);
        let x_2606 : vec4<f32> = u_xlat10;
        let x_2609 : vec4<f32> = u_xlat10;
        let x_2612 : vec4<f32> = u_xlat9;
        let x_2614 : vec2<f32> = ((-(vec2<f32>(x_2606.x, x_2606.y)) * vec2<f32>(x_2609.x, x_2609.y)) + vec2<f32>(x_2612.x, x_2612.z));
        let x_2615 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2614.x, x_2615.y, x_2614.y, x_2615.w);
        let x_2617 : vec4<f32> = u_xlat8;
        let x_2619 : vec2<f32> = max(vec2<f32>(x_2617.x, x_2617.y), vec2<f32>(0.0f, 0.0f));
        let x_2620 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2619.x, x_2619.y, x_2620.z, x_2620.w);
        let x_2622 : vec4<f32> = u_xlat10;
        let x_2625 : vec4<f32> = u_xlat10;
        let x_2628 : vec4<f32> = u_xlat9;
        let x_2630 : vec2<f32> = ((-(vec2<f32>(x_2622.x, x_2622.y)) * vec2<f32>(x_2625.x, x_2625.y)) + vec2<f32>(x_2628.y, x_2628.w));
        let x_2631 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2631.x, x_2630.x, x_2631.z, x_2630.y);
        let x_2633 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2633 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2636 : f32 = u_xlat9.y;
        u_xlat10.z = (x_2636 * 0.08163200318813323975f);
        let x_2639 : vec2<f32> = u_xlat62;
        let x_2641 : vec2<f32> = (vec2<f32>(x_2639.y, x_2639.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2642 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2641.x, x_2641.y, x_2642.z, x_2642.w);
        let x_2644 : vec4<f32> = u_xlat9;
        u_xlat62 = (vec2<f32>(x_2644.x, x_2644.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2648 : f32 = u_xlat9.w;
        u_xlat12.z = (x_2648 * 0.08163200318813323975f);
        let x_2652 : f32 = u_xlat12.y;
        u_xlat10.x = x_2652;
        let x_2654 : vec4<f32> = u_xlat8;
        let x_2657 : vec2<f32> = ((vec2<f32>(x_2654.x, x_2654.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2658 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2658.x, x_2657.x, x_2658.z, x_2657.y);
        let x_2660 : vec4<f32> = u_xlat8;
        let x_2663 : vec2<f32> = ((vec2<f32>(x_2660.x, x_2660.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2664 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2663.x, x_2664.y, x_2663.y, x_2664.w);
        let x_2667 : f32 = u_xlat62.x;
        u_xlat9.y = x_2667;
        let x_2670 : f32 = u_xlat11.y;
        u_xlat9.w = x_2670;
        let x_2672 : vec4<f32> = u_xlat9;
        let x_2673 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2672 + x_2673);
        let x_2675 : vec4<f32> = u_xlat8;
        let x_2678 : vec2<f32> = ((vec2<f32>(x_2675.y, x_2675.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2679 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2679.x, x_2678.x, x_2679.z, x_2678.y);
        let x_2681 : vec4<f32> = u_xlat8;
        let x_2684 : vec2<f32> = ((vec2<f32>(x_2681.y, x_2681.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2685 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2684.x, x_2685.y, x_2684.y, x_2685.w);
        let x_2688 : f32 = u_xlat62.y;
        u_xlat11.y = x_2688;
        let x_2690 : vec4<f32> = u_xlat11;
        let x_2691 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_2690 + x_2691);
        let x_2693 : vec4<f32> = u_xlat9;
        let x_2694 : vec4<f32> = u_xlat10;
        u_xlat9 = (x_2693 / x_2694);
        let x_2696 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2696 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2698 : vec4<f32> = u_xlat11;
        let x_2699 : vec4<f32> = u_xlat8;
        u_xlat11 = (x_2698 / x_2699);
        let x_2701 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_2701 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2703 : vec4<f32> = u_xlat9;
        let x_2706 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_2703.w, x_2703.x, x_2703.y, x_2703.z) * vec4<f32>(x_2706.x, x_2706.x, x_2706.x, x_2706.x));
        let x_2709 : vec4<f32> = u_xlat11;
        let x_2712 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_2709.x, x_2709.w, x_2709.y, x_2709.z) * vec4<f32>(x_2712.y, x_2712.y, x_2712.y, x_2712.y));
        let x_2715 : vec4<f32> = u_xlat9;
        let x_2716 : vec3<f32> = vec3<f32>(x_2715.y, x_2715.z, x_2715.w);
        let x_2717 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2716.x, x_2717.y, x_2716.y, x_2716.z);
        let x_2720 : f32 = u_xlat11.x;
        u_xlat12.y = x_2720;
        let x_2722 : vec2<f32> = u_xlat61;
        let x_2725 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2728 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_2722.x, x_2722.y, x_2722.x, x_2722.y) * vec4<f32>(x_2725.x, x_2725.y, x_2725.x, x_2725.y)) + vec4<f32>(x_2728.x, x_2728.y, x_2728.z, x_2728.y));
        let x_2731 : vec2<f32> = u_xlat61;
        let x_2733 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2736 : vec4<f32> = u_xlat12;
        let x_2738 : vec2<f32> = ((x_2731 * vec2<f32>(x_2733.x, x_2733.y)) + vec2<f32>(x_2736.w, x_2736.y));
        let x_2739 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_2738.x, x_2738.y, x_2739.z, x_2739.w);
        let x_2742 : f32 = u_xlat12.y;
        u_xlat9.y = x_2742;
        let x_2745 : f32 = u_xlat11.z;
        u_xlat12.y = x_2745;
        let x_2747 : vec2<f32> = u_xlat61;
        let x_2750 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2753 : vec4<f32> = u_xlat12;
        u_xlat15 = ((vec4<f32>(x_2747.x, x_2747.y, x_2747.x, x_2747.y) * vec4<f32>(x_2750.x, x_2750.y, x_2750.x, x_2750.y)) + vec4<f32>(x_2753.x, x_2753.y, x_2753.z, x_2753.y));
        let x_2757 : vec2<f32> = u_xlat61;
        let x_2759 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2762 : vec4<f32> = u_xlat12;
        u_xlat68 = ((x_2757 * vec2<f32>(x_2759.x, x_2759.y)) + vec2<f32>(x_2762.w, x_2762.y));
        let x_2766 : f32 = u_xlat12.y;
        u_xlat9.z = x_2766;
        let x_2768 : vec2<f32> = u_xlat61;
        let x_2771 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2774 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_2768.x, x_2768.y, x_2768.x, x_2768.y) * vec4<f32>(x_2771.x, x_2771.y, x_2771.x, x_2771.y)) + vec4<f32>(x_2774.x, x_2774.y, x_2774.x, x_2774.z));
        let x_2778 : f32 = u_xlat11.w;
        u_xlat12.y = x_2778;
        let x_2780 : vec2<f32> = u_xlat61;
        let x_2783 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2786 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_2780.x, x_2780.y, x_2780.x, x_2780.y) * vec4<f32>(x_2783.x, x_2783.y, x_2783.x, x_2783.y)) + vec4<f32>(x_2786.x, x_2786.y, x_2786.z, x_2786.y));
        let x_2790 : vec2<f32> = u_xlat61;
        let x_2792 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2795 : vec4<f32> = u_xlat12;
        u_xlat36 = ((x_2790 * vec2<f32>(x_2792.x, x_2792.y)) + vec2<f32>(x_2795.w, x_2795.y));
        let x_2799 : f32 = u_xlat12.y;
        u_xlat9.w = x_2799;
        let x_2801 : vec2<f32> = u_xlat61;
        let x_2803 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2806 : vec4<f32> = u_xlat9;
        let x_2808 : vec2<f32> = ((x_2801 * vec2<f32>(x_2803.x, x_2803.y)) + vec2<f32>(x_2806.x, x_2806.w));
        let x_2809 : vec4<f32> = u_xlat18;
        u_xlat18 = vec4<f32>(x_2808.x, x_2808.y, x_2809.z, x_2809.w);
        let x_2811 : vec4<f32> = u_xlat12;
        let x_2812 : vec3<f32> = vec3<f32>(x_2811.x, x_2811.z, x_2811.w);
        let x_2813 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2812.x, x_2813.y, x_2812.y, x_2812.z);
        let x_2815 : vec2<f32> = u_xlat61;
        let x_2818 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2821 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2815.x, x_2815.y, x_2815.x, x_2815.y) * vec4<f32>(x_2818.x, x_2818.y, x_2818.x, x_2818.y)) + vec4<f32>(x_2821.x, x_2821.y, x_2821.z, x_2821.y));
        let x_2825 : vec2<f32> = u_xlat61;
        let x_2827 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2830 : vec4<f32> = u_xlat11;
        u_xlat65 = ((x_2825 * vec2<f32>(x_2827.x, x_2827.y)) + vec2<f32>(x_2830.w, x_2830.y));
        let x_2834 : f32 = u_xlat9.x;
        u_xlat11.x = x_2834;
        let x_2836 : vec2<f32> = u_xlat61;
        let x_2838 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2841 : vec4<f32> = u_xlat11;
        u_xlat61 = ((x_2836 * vec2<f32>(x_2838.x, x_2838.y)) + vec2<f32>(x_2841.x, x_2841.y));
        let x_2845 : vec4<f32> = u_xlat8;
        let x_2847 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_2845.x, x_2845.x, x_2845.x, x_2845.x) * x_2847);
        let x_2850 : vec4<f32> = u_xlat8;
        let x_2852 : vec4<f32> = u_xlat10;
        u_xlat20 = (vec4<f32>(x_2850.y, x_2850.y, x_2850.y, x_2850.y) * x_2852);
        let x_2855 : vec4<f32> = u_xlat8;
        let x_2857 : vec4<f32> = u_xlat10;
        u_xlat21 = (vec4<f32>(x_2855.z, x_2855.z, x_2855.z, x_2855.z) * x_2857);
        let x_2859 : vec4<f32> = u_xlat8;
        let x_2861 : vec4<f32> = u_xlat10;
        u_xlat8 = (vec4<f32>(x_2859.w, x_2859.w, x_2859.w, x_2859.w) * x_2861);
        let x_2864 : vec4<f32> = u_xlat13;
        let x_2865 : vec2<f32> = vec2<f32>(x_2864.x, x_2864.y);
        let x_2867 : f32 = u_xlat4.z;
        txVec43 = vec3<f32>(x_2865.x, x_2865.y, x_2867);
        let x_2874 : vec3<f32> = txVec43;
        let x_2876 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2874.xy, x_2874.z);
        u_xlat9.x = x_2876;
        let x_2879 : vec4<f32> = u_xlat13;
        let x_2880 : vec2<f32> = vec2<f32>(x_2879.z, x_2879.w);
        let x_2882 : f32 = u_xlat4.z;
        txVec44 = vec3<f32>(x_2880.x, x_2880.y, x_2882);
        let x_2890 : vec3<f32> = txVec44;
        let x_2892 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2890.xy, x_2890.z);
        u_xlat90 = x_2892;
        let x_2893 : f32 = u_xlat90;
        let x_2895 : f32 = u_xlat19.y;
        u_xlat90 = (x_2893 * x_2895);
        let x_2898 : f32 = u_xlat19.x;
        let x_2900 : f32 = u_xlat9.x;
        let x_2902 : f32 = u_xlat90;
        u_xlat9.x = ((x_2898 * x_2900) + x_2902);
        let x_2906 : vec4<f32> = u_xlat14;
        let x_2907 : vec2<f32> = vec2<f32>(x_2906.x, x_2906.y);
        let x_2909 : f32 = u_xlat4.z;
        txVec45 = vec3<f32>(x_2907.x, x_2907.y, x_2909);
        let x_2916 : vec3<f32> = txVec45;
        let x_2918 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2916.xy, x_2916.z);
        u_xlat90 = x_2918;
        let x_2920 : f32 = u_xlat19.z;
        let x_2921 : f32 = u_xlat90;
        let x_2924 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_2920 * x_2921) + x_2924);
        let x_2928 : vec4<f32> = u_xlat16;
        let x_2929 : vec2<f32> = vec2<f32>(x_2928.x, x_2928.y);
        let x_2931 : f32 = u_xlat4.z;
        txVec46 = vec3<f32>(x_2929.x, x_2929.y, x_2931);
        let x_2938 : vec3<f32> = txVec46;
        let x_2940 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2938.xy, x_2938.z);
        u_xlat90 = x_2940;
        let x_2942 : f32 = u_xlat19.w;
        let x_2943 : f32 = u_xlat90;
        let x_2946 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_2942 * x_2943) + x_2946);
        let x_2950 : vec4<f32> = u_xlat15;
        let x_2951 : vec2<f32> = vec2<f32>(x_2950.x, x_2950.y);
        let x_2953 : f32 = u_xlat4.z;
        txVec47 = vec3<f32>(x_2951.x, x_2951.y, x_2953);
        let x_2960 : vec3<f32> = txVec47;
        let x_2962 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2960.xy, x_2960.z);
        u_xlat90 = x_2962;
        let x_2964 : f32 = u_xlat20.x;
        let x_2965 : f32 = u_xlat90;
        let x_2968 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_2964 * x_2965) + x_2968);
        let x_2972 : vec4<f32> = u_xlat15;
        let x_2973 : vec2<f32> = vec2<f32>(x_2972.z, x_2972.w);
        let x_2975 : f32 = u_xlat4.z;
        txVec48 = vec3<f32>(x_2973.x, x_2973.y, x_2975);
        let x_2982 : vec3<f32> = txVec48;
        let x_2984 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2982.xy, x_2982.z);
        u_xlat90 = x_2984;
        let x_2986 : f32 = u_xlat20.y;
        let x_2987 : f32 = u_xlat90;
        let x_2990 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_2986 * x_2987) + x_2990);
        let x_2994 : vec2<f32> = u_xlat68;
        let x_2996 : f32 = u_xlat4.z;
        txVec49 = vec3<f32>(x_2994.x, x_2994.y, x_2996);
        let x_3003 : vec3<f32> = txVec49;
        let x_3005 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3003.xy, x_3003.z);
        u_xlat90 = x_3005;
        let x_3007 : f32 = u_xlat20.z;
        let x_3008 : f32 = u_xlat90;
        let x_3011 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3007 * x_3008) + x_3011);
        let x_3015 : vec4<f32> = u_xlat16;
        let x_3016 : vec2<f32> = vec2<f32>(x_3015.z, x_3015.w);
        let x_3018 : f32 = u_xlat4.z;
        txVec50 = vec3<f32>(x_3016.x, x_3016.y, x_3018);
        let x_3025 : vec3<f32> = txVec50;
        let x_3027 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3025.xy, x_3025.z);
        u_xlat90 = x_3027;
        let x_3029 : f32 = u_xlat20.w;
        let x_3030 : f32 = u_xlat90;
        let x_3033 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3029 * x_3030) + x_3033);
        let x_3037 : vec4<f32> = u_xlat17;
        let x_3038 : vec2<f32> = vec2<f32>(x_3037.x, x_3037.y);
        let x_3040 : f32 = u_xlat4.z;
        txVec51 = vec3<f32>(x_3038.x, x_3038.y, x_3040);
        let x_3047 : vec3<f32> = txVec51;
        let x_3049 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3047.xy, x_3047.z);
        u_xlat90 = x_3049;
        let x_3051 : f32 = u_xlat21.x;
        let x_3052 : f32 = u_xlat90;
        let x_3055 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3051 * x_3052) + x_3055);
        let x_3059 : vec4<f32> = u_xlat17;
        let x_3060 : vec2<f32> = vec2<f32>(x_3059.z, x_3059.w);
        let x_3062 : f32 = u_xlat4.z;
        txVec52 = vec3<f32>(x_3060.x, x_3060.y, x_3062);
        let x_3069 : vec3<f32> = txVec52;
        let x_3071 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3069.xy, x_3069.z);
        u_xlat90 = x_3071;
        let x_3073 : f32 = u_xlat21.y;
        let x_3074 : f32 = u_xlat90;
        let x_3077 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3073 * x_3074) + x_3077);
        let x_3081 : vec2<f32> = u_xlat36;
        let x_3083 : f32 = u_xlat4.z;
        txVec53 = vec3<f32>(x_3081.x, x_3081.y, x_3083);
        let x_3090 : vec3<f32> = txVec53;
        let x_3092 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3090.xy, x_3090.z);
        u_xlat36.x = x_3092;
        let x_3095 : f32 = u_xlat21.z;
        let x_3097 : f32 = u_xlat36.x;
        let x_3100 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3095 * x_3097) + x_3100);
        let x_3104 : vec4<f32> = u_xlat18;
        let x_3105 : vec2<f32> = vec2<f32>(x_3104.x, x_3104.y);
        let x_3107 : f32 = u_xlat4.z;
        txVec54 = vec3<f32>(x_3105.x, x_3105.y, x_3107);
        let x_3114 : vec3<f32> = txVec54;
        let x_3116 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3114.xy, x_3114.z);
        u_xlat36.x = x_3116;
        let x_3119 : f32 = u_xlat21.w;
        let x_3121 : f32 = u_xlat36.x;
        let x_3124 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3119 * x_3121) + x_3124);
        let x_3128 : vec4<f32> = u_xlat12;
        let x_3129 : vec2<f32> = vec2<f32>(x_3128.x, x_3128.y);
        let x_3131 : f32 = u_xlat4.z;
        txVec55 = vec3<f32>(x_3129.x, x_3129.y, x_3131);
        let x_3138 : vec3<f32> = txVec55;
        let x_3140 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3138.xy, x_3138.z);
        u_xlat36.x = x_3140;
        let x_3143 : f32 = u_xlat8.x;
        let x_3145 : f32 = u_xlat36.x;
        let x_3148 : f32 = u_xlat9.x;
        u_xlat8.x = ((x_3143 * x_3145) + x_3148);
        let x_3152 : vec4<f32> = u_xlat12;
        let x_3153 : vec2<f32> = vec2<f32>(x_3152.z, x_3152.w);
        let x_3155 : f32 = u_xlat4.z;
        txVec56 = vec3<f32>(x_3153.x, x_3153.y, x_3155);
        let x_3162 : vec3<f32> = txVec56;
        let x_3164 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3162.xy, x_3162.z);
        u_xlat9.x = x_3164;
        let x_3167 : f32 = u_xlat8.y;
        let x_3169 : f32 = u_xlat9.x;
        let x_3172 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3167 * x_3169) + x_3172);
        let x_3176 : vec2<f32> = u_xlat65;
        let x_3178 : f32 = u_xlat4.z;
        txVec57 = vec3<f32>(x_3176.x, x_3176.y, x_3178);
        let x_3186 : vec3<f32> = txVec57;
        let x_3188 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3186.xy, x_3186.z);
        u_xlat35 = x_3188;
        let x_3190 : f32 = u_xlat8.z;
        let x_3191 : f32 = u_xlat35;
        let x_3194 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3190 * x_3191) + x_3194);
        let x_3198 : vec2<f32> = u_xlat61;
        let x_3200 : f32 = u_xlat4.z;
        txVec58 = vec3<f32>(x_3198.x, x_3198.y, x_3200);
        let x_3207 : vec3<f32> = txVec58;
        let x_3209 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3207.xy, x_3207.z);
        u_xlat61.x = x_3209;
        let x_3212 : f32 = u_xlat8.w;
        let x_3214 : f32 = u_xlat61.x;
        let x_3217 : f32 = u_xlat8.x;
        u_xlat81 = ((x_3212 * x_3214) + x_3217);
      }
    }
  } else {
    let x_3221 : vec4<f32> = u_xlat4;
    let x_3222 : vec2<f32> = vec2<f32>(x_3221.x, x_3221.y);
    let x_3224 : f32 = u_xlat4.z;
    txVec59 = vec3<f32>(x_3222.x, x_3222.y, x_3224);
    let x_3231 : vec3<f32> = txVec59;
    let x_3233 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3231.xy, x_3231.z);
    u_xlat81 = x_3233;
  }
  let x_3234 : f32 = u_xlat81;
  let x_3236 : f32 = x_130.x_MainLightShadowParams.x;
  let x_3238 : f32 = u_xlat85;
  u_xlat81 = ((x_3234 * x_3236) + x_3238);
  let x_3240 : bool = u_xlatb5;
  let x_3241 : f32 = u_xlat81;
  u_xlat81 = select(x_3241, 1.0f, x_3240);
  let x_3243 : vec3<f32> = vs_INTERP8;
  let x_3245 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  let x_3247 : vec3<f32> = (x_3243 + -(x_3245));
  let x_3248 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_3247.x, x_3247.y, x_3247.z, x_3248.w);
  let x_3250 : vec4<f32> = u_xlat4;
  let x_3252 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_3250.x, x_3250.y, x_3250.z), vec3<f32>(x_3252.x, x_3252.y, x_3252.z));
  let x_3258 : f32 = u_xlat4.x;
  let x_3260 : f32 = x_130.x_MainLightShadowParams.z;
  let x_3263 : f32 = x_130.x_MainLightShadowParams.w;
  u_xlat31.x = ((x_3258 * x_3260) + x_3263);
  let x_3267 : f32 = u_xlat31.x;
  u_xlat31.x = clamp(x_3267, 0.0f, 1.0f);
  let x_3271 : f32 = u_xlat81;
  u_xlat58 = (-(x_3271) + 1.0f);
  let x_3275 : f32 = u_xlat31.x;
  let x_3276 : f32 = u_xlat58;
  let x_3278 : f32 = u_xlat81;
  u_xlat81 = ((x_3275 * x_3276) + x_3278);
  let x_3290 : f32 = x_3288.x_MainLightCookieTextureFormat;
  u_xlatb31.x = !((x_3290 == -1.0f));
  let x_3294 : bool = u_xlatb31.x;
  if (x_3294) {
    let x_3297 : vec3<f32> = vs_INTERP8;
    let x_3300 : vec4<f32> = x_3288.x_MainLightWorldToLight[1i];
    let x_3302 : vec2<f32> = (vec2<f32>(x_3297.y, x_3297.y) * vec2<f32>(x_3300.x, x_3300.y));
    let x_3303 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_3302.x, x_3302.y, x_3303.z);
    let x_3306 : vec4<f32> = x_3288.x_MainLightWorldToLight[0i];
    let x_3308 : vec3<f32> = vs_INTERP8;
    let x_3311 : vec3<f32> = u_xlat31;
    let x_3313 : vec2<f32> = ((vec2<f32>(x_3306.x, x_3306.y) * vec2<f32>(x_3308.x, x_3308.x)) + vec2<f32>(x_3311.x, x_3311.y));
    let x_3314 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_3313.x, x_3313.y, x_3314.z);
    let x_3317 : vec4<f32> = x_3288.x_MainLightWorldToLight[2i];
    let x_3319 : vec3<f32> = vs_INTERP8;
    let x_3322 : vec3<f32> = u_xlat31;
    let x_3324 : vec2<f32> = ((vec2<f32>(x_3317.x, x_3317.y) * vec2<f32>(x_3319.z, x_3319.z)) + vec2<f32>(x_3322.x, x_3322.y));
    let x_3325 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_3324.x, x_3324.y, x_3325.z);
    let x_3327 : vec3<f32> = u_xlat31;
    let x_3330 : vec4<f32> = x_3288.x_MainLightWorldToLight[3i];
    let x_3332 : vec2<f32> = (vec2<f32>(x_3327.x, x_3327.y) + vec2<f32>(x_3330.x, x_3330.y));
    let x_3333 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_3332.x, x_3332.y, x_3333.z);
    let x_3335 : vec3<f32> = u_xlat31;
    let x_3338 : vec2<f32> = ((vec2<f32>(x_3335.x, x_3335.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_3339 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_3338.x, x_3338.y, x_3339.z);
    let x_3346 : vec3<f32> = u_xlat31;
    let x_3349 : f32 = x_53.x_GlobalMipBias.x;
    let x_3350 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_3346.x, x_3346.y), x_3349);
    u_xlat8 = x_3350;
    let x_3352 : f32 = x_3288.x_MainLightCookieTextureFormat;
    let x_3354 : f32 = x_3288.x_MainLightCookieTextureFormat;
    let x_3356 : f32 = x_3288.x_MainLightCookieTextureFormat;
    let x_3358 : f32 = x_3288.x_MainLightCookieTextureFormat;
    let x_3359 : vec4<f32> = vec4<f32>(x_3352, x_3354, x_3356, x_3358);
    let x_3366 : vec4<bool> = (vec4<f32>(x_3359.x, x_3359.y, x_3359.z, x_3359.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb31 = vec2<bool>(x_3366.x, x_3366.y);
    let x_3369 : bool = u_xlatb31.y;
    if (x_3369) {
      let x_3374 : f32 = u_xlat8.w;
      x_3370 = x_3374;
    } else {
      let x_3377 : f32 = u_xlat8.x;
      x_3370 = x_3377;
    }
    let x_3378 : f32 = x_3370;
    u_xlat58 = x_3378;
    let x_3380 : bool = u_xlatb31.x;
    if (x_3380) {
      let x_3384 : vec4<f32> = u_xlat8;
      x_3381 = vec3<f32>(x_3384.x, x_3384.y, x_3384.z);
    } else {
      let x_3387 : f32 = u_xlat58;
      x_3381 = vec3<f32>(x_3387, x_3387, x_3387);
    }
    let x_3389 : vec3<f32> = x_3381;
    u_xlat31 = x_3389;
  } else {
    u_xlat31.x = 1.0f;
    u_xlat31.y = 1.0f;
    u_xlat31.z = 1.0f;
  }
  let x_3394 : vec3<f32> = u_xlat31;
  let x_3396 : vec4<f32> = x_53.x_MainLightColor;
  u_xlat31 = (x_3394 * vec3<f32>(x_3396.x, x_3396.y, x_3396.z));
  let x_3399 : vec3<f32> = u_xlat30;
  let x_3401 : vec4<f32> = u_xlat6;
  u_xlat5.x = dot(-(x_3399), vec3<f32>(x_3401.x, x_3401.y, x_3401.z));
  let x_3406 : f32 = u_xlat5.x;
  let x_3408 : f32 = u_xlat5.x;
  u_xlat5.x = (x_3406 + x_3408);
  let x_3411 : vec4<f32> = u_xlat6;
  let x_3413 : vec4<f32> = u_xlat5;
  let x_3417 : vec3<f32> = u_xlat30;
  let x_3419 : vec3<f32> = ((vec3<f32>(x_3411.x, x_3411.y, x_3411.z) * -(vec3<f32>(x_3413.x, x_3413.x, x_3413.x))) + -(x_3417));
  let x_3420 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3419.x, x_3419.y, x_3419.z, x_3420.w);
  let x_3422 : vec4<f32> = u_xlat6;
  let x_3424 : vec3<f32> = u_xlat30;
  u_xlat5.x = dot(vec3<f32>(x_3422.x, x_3422.y, x_3422.z), x_3424);
  let x_3428 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_3428, 0.0f, 1.0f);
  let x_3432 : f32 = u_xlat5.x;
  u_xlat5.x = (-(x_3432) + 1.0f);
  let x_3437 : f32 = u_xlat5.x;
  let x_3439 : f32 = u_xlat5.x;
  u_xlat5.x = (x_3437 * x_3439);
  let x_3443 : f32 = u_xlat5.x;
  let x_3445 : f32 = u_xlat5.x;
  u_xlat5.x = (x_3443 * x_3445);
  let x_3448 : f32 = u_xlat82;
  u_xlat61.x = ((-(x_3448) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3455 : f32 = u_xlat82;
  let x_3457 : f32 = u_xlat61.x;
  u_xlat82 = (x_3455 * x_3457);
  let x_3459 : f32 = u_xlat82;
  u_xlat82 = (x_3459 * 6.0f);
  let x_3470 : vec4<f32> = u_xlat8;
  let x_3472 : f32 = u_xlat82;
  let x_3473 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_3470.x, x_3470.y, x_3470.z), x_3472);
  u_xlat8 = x_3473;
  let x_3475 : f32 = u_xlat8.w;
  u_xlat82 = (x_3475 + -1.0f);
  let x_3478 : f32 = x_1746.unity_SpecCube0_HDR.w;
  let x_3479 : f32 = u_xlat82;
  u_xlat82 = ((x_3478 * x_3479) + 1.0f);
  let x_3482 : f32 = u_xlat82;
  u_xlat82 = max(x_3482, 0.0f);
  let x_3484 : f32 = u_xlat82;
  u_xlat82 = log2(x_3484);
  let x_3486 : f32 = u_xlat82;
  let x_3488 : f32 = x_1746.unity_SpecCube0_HDR.y;
  u_xlat82 = (x_3486 * x_3488);
  let x_3490 : f32 = u_xlat82;
  u_xlat82 = exp2(x_3490);
  let x_3492 : f32 = u_xlat82;
  let x_3494 : f32 = x_1746.unity_SpecCube0_HDR.x;
  u_xlat82 = (x_3492 * x_3494);
  let x_3496 : vec4<f32> = u_xlat8;
  let x_3498 : f32 = u_xlat82;
  let x_3500 : vec3<f32> = (vec3<f32>(x_3496.x, x_3496.y, x_3496.z) * vec3<f32>(x_3498, x_3498, x_3498));
  let x_3501 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3500.x, x_3500.y, x_3500.z, x_3501.w);
  let x_3503 : f32 = u_xlat83;
  let x_3505 : f32 = u_xlat83;
  u_xlat61 = ((vec2<f32>(x_3503, x_3503) * vec2<f32>(x_3505, x_3505)) + vec2<f32>(-1.0f, 1.0f));
  let x_3511 : f32 = u_xlat61.y;
  u_xlat82 = (1.0f / x_3511);
  let x_3514 : f32 = u_xlat3.x;
  u_xlat83 = (x_3514 + -0.03999999910593032837f);
  let x_3518 : f32 = u_xlat5.x;
  let x_3519 : f32 = u_xlat83;
  u_xlat83 = ((x_3518 * x_3519) + 0.03999999910593032837f);
  let x_3523 : f32 = u_xlat82;
  let x_3524 : f32 = u_xlat83;
  u_xlat82 = (x_3523 * x_3524);
  let x_3526 : f32 = u_xlat82;
  let x_3528 : vec4<f32> = u_xlat8;
  let x_3530 : vec3<f32> = (vec3<f32>(x_3526, x_3526, x_3526) * vec3<f32>(x_3528.x, x_3528.y, x_3528.z));
  let x_3531 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3530.x, x_3530.y, x_3530.z, x_3531.w);
  let x_3533 : vec3<f32> = u_xlat32;
  let x_3534 : vec3<f32> = u_xlat2;
  let x_3536 : vec4<f32> = u_xlat8;
  let x_3538 : vec3<f32> = ((x_3533 * x_3534) + vec3<f32>(x_3536.x, x_3536.y, x_3536.z));
  let x_3539 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_3538.x, x_3538.y, x_3538.z, x_3539.w);
  let x_3541 : f32 = u_xlat81;
  let x_3543 : f32 = x_1746.unity_LightData.z;
  u_xlat81 = (x_3541 * x_3543);
  let x_3545 : vec4<f32> = u_xlat6;
  let x_3548 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat82 = dot(vec3<f32>(x_3545.x, x_3545.y, x_3545.z), vec3<f32>(x_3548.x, x_3548.y, x_3548.z));
  let x_3551 : f32 = u_xlat82;
  u_xlat82 = clamp(x_3551, 0.0f, 1.0f);
  let x_3553 : f32 = u_xlat81;
  let x_3554 : f32 = u_xlat82;
  u_xlat81 = (x_3553 * x_3554);
  let x_3556 : f32 = u_xlat81;
  let x_3558 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_3556, x_3556, x_3556) * x_3558);
  let x_3560 : vec3<f32> = u_xlat30;
  let x_3562 : vec4<f32> = x_53.x_MainLightPosition;
  let x_3564 : vec3<f32> = (x_3560 + vec3<f32>(x_3562.x, x_3562.y, x_3562.z));
  let x_3565 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3564.x, x_3564.y, x_3564.z, x_3565.w);
  let x_3567 : vec4<f32> = u_xlat8;
  let x_3569 : vec4<f32> = u_xlat8;
  u_xlat81 = dot(vec3<f32>(x_3567.x, x_3567.y, x_3567.z), vec3<f32>(x_3569.x, x_3569.y, x_3569.z));
  let x_3572 : f32 = u_xlat81;
  u_xlat81 = max(x_3572, 1.17549435e-38f);
  let x_3575 : f32 = u_xlat81;
  u_xlat81 = inverseSqrt(x_3575);
  let x_3577 : f32 = u_xlat81;
  let x_3579 : vec4<f32> = u_xlat8;
  let x_3581 : vec3<f32> = (vec3<f32>(x_3577, x_3577, x_3577) * vec3<f32>(x_3579.x, x_3579.y, x_3579.z));
  let x_3582 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3581.x, x_3581.y, x_3581.z, x_3582.w);
  let x_3584 : vec4<f32> = u_xlat6;
  let x_3586 : vec4<f32> = u_xlat8;
  u_xlat81 = dot(vec3<f32>(x_3584.x, x_3584.y, x_3584.z), vec3<f32>(x_3586.x, x_3586.y, x_3586.z));
  let x_3589 : f32 = u_xlat81;
  u_xlat81 = clamp(x_3589, 0.0f, 1.0f);
  let x_3592 : vec4<f32> = x_53.x_MainLightPosition;
  let x_3594 : vec4<f32> = u_xlat8;
  u_xlat82 = dot(vec3<f32>(x_3592.x, x_3592.y, x_3592.z), vec3<f32>(x_3594.x, x_3594.y, x_3594.z));
  let x_3597 : f32 = u_xlat82;
  u_xlat82 = clamp(x_3597, 0.0f, 1.0f);
  let x_3599 : f32 = u_xlat81;
  let x_3600 : f32 = u_xlat81;
  u_xlat81 = (x_3599 * x_3600);
  let x_3602 : f32 = u_xlat81;
  let x_3604 : f32 = u_xlat61.x;
  u_xlat81 = ((x_3602 * x_3604) + 1.00001001358032226562f);
  let x_3608 : f32 = u_xlat82;
  let x_3609 : f32 = u_xlat82;
  u_xlat82 = (x_3608 * x_3609);
  let x_3611 : f32 = u_xlat81;
  let x_3612 : f32 = u_xlat81;
  u_xlat81 = (x_3611 * x_3612);
  let x_3614 : f32 = u_xlat82;
  u_xlat82 = max(x_3614, 0.10000000149011611938f);
  let x_3617 : f32 = u_xlat81;
  let x_3618 : f32 = u_xlat82;
  u_xlat81 = (x_3617 * x_3618);
  let x_3621 : f32 = u_xlat7.x;
  let x_3622 : f32 = u_xlat81;
  u_xlat81 = (x_3621 * x_3622);
  let x_3624 : f32 = u_xlat87;
  let x_3625 : f32 = u_xlat81;
  u_xlat81 = (x_3624 / x_3625);
  let x_3627 : f32 = u_xlat81;
  let x_3631 : vec3<f32> = u_xlat2;
  let x_3632 : vec3<f32> = ((vec3<f32>(x_3627, x_3627, x_3627) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3631);
  let x_3633 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3632.x, x_3632.y, x_3632.z, x_3633.w);
  let x_3635 : vec3<f32> = u_xlat31;
  let x_3636 : vec4<f32> = u_xlat8;
  u_xlat31 = (x_3635 * vec3<f32>(x_3636.x, x_3636.y, x_3636.z));
  let x_3640 : f32 = x_53.x_AdditionalLightsCount.x;
  let x_3642 : f32 = x_1746.unity_LightData.y;
  u_xlat81 = min(x_3640, x_3642);
  let x_3644 : f32 = u_xlat81;
  u_xlatu81 = bitcast<u32>(i32(x_3644));
  let x_3648 : f32 = u_xlat4.x;
  let x_3651 : f32 = x_130.x_AdditionalShadowFadeParams.x;
  let x_3654 : f32 = x_130.x_AdditionalShadowFadeParams.y;
  u_xlat82 = ((x_3648 * x_3651) + x_3654);
  let x_3656 : f32 = u_xlat82;
  u_xlat82 = clamp(x_3656, 0.0f, 1.0f);
  let x_3660 : f32 = x_3288.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3662 : f32 = x_3288.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3664 : f32 = x_3288.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3666 : f32 = x_3288.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3667 : vec4<f32> = vec4<f32>(x_3660, x_3662, x_3664, x_3666);
  let x_3673 : vec4<bool> = (vec4<f32>(x_3667.x, x_3667.y, x_3667.z, x_3667.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb8 = vec2<bool>(x_3673.x, x_3673.y);
  u_xlat9.x = 0.0f;
  u_xlat9.y = 0.0f;
  u_xlat9.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3685 : u32 = u_xlatu_loop_1;
    let x_3686 : u32 = u_xlatu81;
    if ((x_3685 < x_3686)) {
    } else {
      break;
    }
    let x_3689 : u32 = u_xlatu_loop_1;
    u_xlatu3 = (x_3689 >> 2u);
    let x_3692 : u32 = u_xlatu_loop_1;
    u_xlati4 = bitcast<i32>((x_3692 & 3u));
    let x_3695 : u32 = u_xlatu3;
    let x_3698 : vec4<f32> = x_1746.unity_LightIndices[bitcast<i32>(x_3695)];
    let x_3708 : i32 = u_xlati4;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3713 : vec4<u32> = indexable[x_3708];
    u_xlat3.x = dot(x_3698, bitcast<vec4<f32>>(x_3713));
    let x_3719 : f32 = u_xlat3.x;
    u_xlati3 = i32(x_3719);
    let x_3721 : vec3<f32> = vs_INTERP8;
    let x_3732 : i32 = u_xlati3;
    let x_3734 : vec4<f32> = x_3731.x_AdditionalLightsPosition[x_3732];
    let x_3737 : i32 = u_xlati3;
    let x_3739 : vec4<f32> = x_3731.x_AdditionalLightsPosition[x_3737];
    let x_3741 : vec3<f32> = ((-(x_3721) * vec3<f32>(x_3734.w, x_3734.w, x_3734.w)) + vec3<f32>(x_3739.x, x_3739.y, x_3739.z));
    let x_3742 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3741.x, x_3741.y, x_3741.z, x_3742.w);
    let x_3744 : vec4<f32> = u_xlat10;
    let x_3746 : vec4<f32> = u_xlat10;
    u_xlat4.x = dot(vec3<f32>(x_3744.x, x_3744.y, x_3744.z), vec3<f32>(x_3746.x, x_3746.y, x_3746.z));
    let x_3751 : f32 = u_xlat4.x;
    u_xlat4.x = max(x_3751, 0.00006103515625f);
    let x_3757 : f32 = u_xlat4.x;
    u_xlat86 = inverseSqrt(x_3757);
    let x_3759 : f32 = u_xlat86;
    let x_3761 : vec4<f32> = u_xlat10;
    let x_3763 : vec3<f32> = (vec3<f32>(x_3759, x_3759, x_3759) * vec3<f32>(x_3761.x, x_3761.y, x_3761.z));
    let x_3764 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3763.x, x_3763.y, x_3763.z, x_3764.w);
    let x_3767 : f32 = u_xlat4.x;
    u_xlat88 = (1.0f / x_3767);
    let x_3770 : f32 = u_xlat4.x;
    let x_3771 : i32 = u_xlati3;
    let x_3773 : f32 = x_3731.x_AdditionalLightsAttenuation[x_3771].x;
    u_xlat4.x = (x_3770 * x_3773);
    let x_3777 : f32 = u_xlat4.x;
    let x_3780 : f32 = u_xlat4.x;
    u_xlat4.x = ((-(x_3777) * x_3780) + 1.0f);
    let x_3785 : f32 = u_xlat4.x;
    u_xlat4.x = max(x_3785, 0.0f);
    let x_3789 : f32 = u_xlat4.x;
    let x_3791 : f32 = u_xlat4.x;
    u_xlat4.x = (x_3789 * x_3791);
    let x_3795 : f32 = u_xlat4.x;
    let x_3796 : f32 = u_xlat88;
    u_xlat4.x = (x_3795 * x_3796);
    let x_3799 : i32 = u_xlati3;
    let x_3801 : vec4<f32> = x_3731.x_AdditionalLightsSpotDir[x_3799];
    let x_3803 : vec4<f32> = u_xlat11;
    u_xlat88 = dot(vec3<f32>(x_3801.x, x_3801.y, x_3801.z), vec3<f32>(x_3803.x, x_3803.y, x_3803.z));
    let x_3806 : f32 = u_xlat88;
    let x_3807 : i32 = u_xlati3;
    let x_3809 : f32 = x_3731.x_AdditionalLightsAttenuation[x_3807].z;
    let x_3811 : i32 = u_xlati3;
    let x_3813 : f32 = x_3731.x_AdditionalLightsAttenuation[x_3811].w;
    u_xlat88 = ((x_3806 * x_3809) + x_3813);
    let x_3815 : f32 = u_xlat88;
    u_xlat88 = clamp(x_3815, 0.0f, 1.0f);
    let x_3817 : f32 = u_xlat88;
    let x_3818 : f32 = u_xlat88;
    u_xlat88 = (x_3817 * x_3818);
    let x_3821 : f32 = u_xlat4.x;
    let x_3822 : f32 = u_xlat88;
    u_xlat4.x = (x_3821 * x_3822);
    let x_3827 : i32 = u_xlati3;
    let x_3829 : f32 = x_130.x_AdditionalShadowParams[x_3827].w;
    u_xlati88 = i32(x_3829);
    let x_3832 : i32 = u_xlati88;
    u_xlatb62 = (x_3832 >= 0i);
    let x_3834 : bool = u_xlatb62;
    if (x_3834) {
      let x_3838 : i32 = u_xlati3;
      let x_3840 : f32 = x_130.x_AdditionalShadowParams[x_3838].z;
      u_xlatb62 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3840, x_3840, x_3840, x_3840))));
      let x_3844 : bool = u_xlatb62;
      if (x_3844) {
        let x_3848 : vec4<f32> = u_xlat11;
        let x_3851 : vec4<f32> = u_xlat11;
        let x_3854 : vec4<bool> = (abs(vec4<f32>(x_3848.z, x_3848.z, x_3848.y, x_3848.z)) >= abs(vec4<f32>(x_3851.x, x_3851.y, x_3851.x, x_3851.x)));
        let x_3855 : vec3<bool> = vec3<bool>(x_3854.x, x_3854.y, x_3854.z);
        let x_3856 : vec4<bool> = u_xlatb12;
        u_xlatb12 = vec4<bool>(x_3855.x, x_3855.y, x_3855.z, x_3856.w);
        let x_3859 : bool = u_xlatb12.y;
        let x_3861 : bool = u_xlatb12.x;
        u_xlatb62 = (x_3859 & x_3861);
        let x_3863 : vec4<f32> = u_xlat11;
        let x_3866 : vec4<bool> = (-(vec4<f32>(x_3863.z, x_3863.y, x_3863.z, x_3863.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3867 : vec3<bool> = vec3<bool>(x_3866.x, x_3866.y, x_3866.w);
        let x_3868 : vec4<bool> = u_xlatb12;
        u_xlatb12 = vec4<bool>(x_3867.x, x_3867.y, x_3868.z, x_3867.z);
        let x_3871 : bool = u_xlatb12.x;
        u_xlat12.x = select(4.0f, 5.0f, x_3871);
        let x_3876 : bool = u_xlatb12.y;
        u_xlat12.y = select(2.0f, 3.0f, x_3876);
        let x_3881 : bool = u_xlatb12.w;
        u_xlat89 = select(0.0f, 1.0f, x_3881);
        let x_3884 : bool = u_xlatb12.z;
        if (x_3884) {
          let x_3889 : f32 = u_xlat12.y;
          x_3885 = x_3889;
        } else {
          let x_3891 : f32 = u_xlat89;
          x_3885 = x_3891;
        }
        let x_3892 : f32 = x_3885;
        u_xlat89 = x_3892;
        let x_3893 : bool = u_xlatb62;
        if (x_3893) {
          let x_3898 : f32 = u_xlat12.x;
          x_3894 = x_3898;
        } else {
          let x_3900 : f32 = u_xlat89;
          x_3894 = x_3900;
        }
        let x_3901 : f32 = x_3894;
        u_xlat62.x = x_3901;
        let x_3903 : i32 = u_xlati3;
        let x_3905 : f32 = x_130.x_AdditionalShadowParams[x_3903].w;
        u_xlat89 = trunc(x_3905);
        let x_3908 : f32 = u_xlat62.x;
        let x_3909 : f32 = u_xlat89;
        u_xlat62.x = (x_3908 + x_3909);
        let x_3913 : f32 = u_xlat62.x;
        u_xlati88 = i32(x_3913);
      }
      let x_3915 : i32 = u_xlati88;
      u_xlati88 = (x_3915 << bitcast<u32>(2i));
      let x_3917 : vec3<f32> = vs_INTERP8;
      let x_3920 : i32 = u_xlati88;
      let x_3923 : i32 = u_xlati88;
      let x_3927 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_3920 + 1i) / 4i)][((x_3923 + 1i) % 4i)];
      u_xlat12 = (vec4<f32>(x_3917.y, x_3917.y, x_3917.y, x_3917.y) * x_3927);
      let x_3929 : i32 = u_xlati88;
      let x_3931 : i32 = u_xlati88;
      let x_3934 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[(x_3929 / 4i)][(x_3931 % 4i)];
      let x_3935 : vec3<f32> = vs_INTERP8;
      let x_3938 : vec4<f32> = u_xlat12;
      u_xlat12 = ((x_3934 * vec4<f32>(x_3935.x, x_3935.x, x_3935.x, x_3935.x)) + x_3938);
      let x_3940 : i32 = u_xlati88;
      let x_3943 : i32 = u_xlati88;
      let x_3947 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_3940 + 2i) / 4i)][((x_3943 + 2i) % 4i)];
      let x_3948 : vec3<f32> = vs_INTERP8;
      let x_3951 : vec4<f32> = u_xlat12;
      u_xlat12 = ((x_3947 * vec4<f32>(x_3948.z, x_3948.z, x_3948.z, x_3948.z)) + x_3951);
      let x_3953 : vec4<f32> = u_xlat12;
      let x_3954 : i32 = u_xlati88;
      let x_3957 : i32 = u_xlati88;
      let x_3961 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_3954 + 3i) / 4i)][((x_3957 + 3i) % 4i)];
      u_xlat12 = (x_3953 + x_3961);
      let x_3963 : vec4<f32> = u_xlat12;
      let x_3965 : vec4<f32> = u_xlat12;
      let x_3967 : vec3<f32> = (vec3<f32>(x_3963.x, x_3963.y, x_3963.z) / vec3<f32>(x_3965.w, x_3965.w, x_3965.w));
      let x_3968 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_3967.x, x_3967.y, x_3967.z, x_3968.w);
      let x_3971 : i32 = u_xlati3;
      let x_3973 : f32 = x_130.x_AdditionalShadowParams[x_3971].y;
      u_xlatb88 = (0.0f < x_3973);
      let x_3975 : bool = u_xlatb88;
      if (x_3975) {
        let x_3978 : i32 = u_xlati3;
        let x_3980 : f32 = x_130.x_AdditionalShadowParams[x_3978].y;
        u_xlatb88 = (1.0f == x_3980);
        let x_3982 : bool = u_xlatb88;
        if (x_3982) {
          let x_3985 : vec4<f32> = u_xlat12;
          let x_3988 : vec4<f32> = x_130.x_AdditionalShadowOffset0;
          u_xlat13 = (vec4<f32>(x_3985.x, x_3985.y, x_3985.x, x_3985.y) + x_3988);
          let x_3991 : vec4<f32> = u_xlat13;
          let x_3992 : vec2<f32> = vec2<f32>(x_3991.x, x_3991.y);
          let x_3994 : f32 = u_xlat12.z;
          txVec60 = vec3<f32>(x_3992.x, x_3992.y, x_3994);
          let x_4002 : vec3<f32> = txVec60;
          let x_4004 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4002.xy, x_4002.z);
          u_xlat14.x = x_4004;
          let x_4007 : vec4<f32> = u_xlat13;
          let x_4008 : vec2<f32> = vec2<f32>(x_4007.z, x_4007.w);
          let x_4010 : f32 = u_xlat12.z;
          txVec61 = vec3<f32>(x_4008.x, x_4008.y, x_4010);
          let x_4017 : vec3<f32> = txVec61;
          let x_4019 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4017.xy, x_4017.z);
          u_xlat14.y = x_4019;
          let x_4021 : vec4<f32> = u_xlat12;
          let x_4025 : vec4<f32> = x_130.x_AdditionalShadowOffset1;
          u_xlat13 = (vec4<f32>(x_4021.x, x_4021.y, x_4021.x, x_4021.y) + x_4025);
          let x_4028 : vec4<f32> = u_xlat13;
          let x_4029 : vec2<f32> = vec2<f32>(x_4028.x, x_4028.y);
          let x_4031 : f32 = u_xlat12.z;
          txVec62 = vec3<f32>(x_4029.x, x_4029.y, x_4031);
          let x_4038 : vec3<f32> = txVec62;
          let x_4040 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4038.xy, x_4038.z);
          u_xlat14.z = x_4040;
          let x_4043 : vec4<f32> = u_xlat13;
          let x_4044 : vec2<f32> = vec2<f32>(x_4043.z, x_4043.w);
          let x_4046 : f32 = u_xlat12.z;
          txVec63 = vec3<f32>(x_4044.x, x_4044.y, x_4046);
          let x_4053 : vec3<f32> = txVec63;
          let x_4055 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4053.xy, x_4053.z);
          u_xlat14.w = x_4055;
          let x_4057 : vec4<f32> = u_xlat14;
          u_xlat88 = dot(x_4057, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_4060 : i32 = u_xlati3;
          let x_4062 : f32 = x_130.x_AdditionalShadowParams[x_4060].y;
          u_xlatb62 = (2.0f == x_4062);
          let x_4064 : bool = u_xlatb62;
          if (x_4064) {
            let x_4067 : vec4<f32> = u_xlat12;
            let x_4071 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            u_xlat62 = ((vec2<f32>(x_4067.x, x_4067.y) * vec2<f32>(x_4071.z, x_4071.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4075 : vec2<f32> = u_xlat62;
            u_xlat62 = floor(x_4075);
            let x_4077 : vec4<f32> = u_xlat12;
            let x_4080 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4083 : vec2<f32> = u_xlat62;
            let x_4085 : vec2<f32> = ((vec2<f32>(x_4077.x, x_4077.y) * vec2<f32>(x_4080.z, x_4080.w)) + -(x_4083));
            let x_4086 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4085.x, x_4085.y, x_4086.z, x_4086.w);
            let x_4088 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4088.x, x_4088.x, x_4088.y, x_4088.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4091 : vec4<f32> = u_xlat14;
            let x_4093 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_4091.x, x_4091.x, x_4091.z, x_4091.z) * vec4<f32>(x_4093.x, x_4093.x, x_4093.z, x_4093.z));
            let x_4096 : vec4<f32> = u_xlat15;
            u_xlat67 = (vec2<f32>(x_4096.y, x_4096.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_4099 : vec4<f32> = u_xlat15;
            let x_4102 : vec4<f32> = u_xlat13;
            let x_4105 : vec2<f32> = ((vec2<f32>(x_4099.x, x_4099.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_4102.x, x_4102.y)));
            let x_4106 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4105.x, x_4106.y, x_4105.y, x_4106.w);
            let x_4108 : vec4<f32> = u_xlat13;
            let x_4111 : vec2<f32> = (-(vec2<f32>(x_4108.x, x_4108.y)) + vec2<f32>(1.0f, 1.0f));
            let x_4112 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4111.x, x_4111.y, x_4112.z, x_4112.w);
            let x_4115 : vec4<f32> = u_xlat13;
            u_xlat69 = min(vec2<f32>(x_4115.x, x_4115.y), vec2<f32>(0.0f, 0.0f));
            let x_4118 : vec2<f32> = u_xlat69;
            let x_4120 : vec2<f32> = u_xlat69;
            let x_4122 : vec4<f32> = u_xlat15;
            u_xlat69 = ((-(x_4118) * x_4120) + vec2<f32>(x_4122.x, x_4122.y));
            let x_4125 : vec4<f32> = u_xlat13;
            let x_4127 : vec2<f32> = max(vec2<f32>(x_4125.x, x_4125.y), vec2<f32>(0.0f, 0.0f));
            let x_4128 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4127.x, x_4127.y, x_4128.z, x_4128.w);
            let x_4130 : vec4<f32> = u_xlat13;
            let x_4133 : vec4<f32> = u_xlat13;
            let x_4136 : vec4<f32> = u_xlat14;
            let x_4138 : vec2<f32> = ((-(vec2<f32>(x_4130.x, x_4130.y)) * vec2<f32>(x_4133.x, x_4133.y)) + vec2<f32>(x_4136.y, x_4136.w));
            let x_4139 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4138.x, x_4138.y, x_4139.z, x_4139.w);
            let x_4141 : vec2<f32> = u_xlat69;
            u_xlat69 = (x_4141 + vec2<f32>(1.0f, 1.0f));
            let x_4143 : vec4<f32> = u_xlat13;
            let x_4145 : vec2<f32> = (vec2<f32>(x_4143.x, x_4143.y) + vec2<f32>(1.0f, 1.0f));
            let x_4146 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4145.x, x_4145.y, x_4146.z, x_4146.w);
            let x_4148 : vec4<f32> = u_xlat14;
            let x_4150 : vec2<f32> = (vec2<f32>(x_4148.x, x_4148.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4151 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4150.x, x_4150.y, x_4151.z, x_4151.w);
            let x_4153 : vec4<f32> = u_xlat15;
            let x_4155 : vec2<f32> = (vec2<f32>(x_4153.x, x_4153.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4156 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4155.x, x_4155.y, x_4156.z, x_4156.w);
            let x_4158 : vec2<f32> = u_xlat69;
            let x_4159 : vec2<f32> = (x_4158 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4160 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4159.x, x_4159.y, x_4160.z, x_4160.w);
            let x_4162 : vec4<f32> = u_xlat13;
            let x_4164 : vec2<f32> = (vec2<f32>(x_4162.x, x_4162.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4165 : vec4<f32> = u_xlat18;
            u_xlat18 = vec4<f32>(x_4164.x, x_4164.y, x_4165.z, x_4165.w);
            let x_4167 : vec4<f32> = u_xlat14;
            let x_4169 : vec2<f32> = (vec2<f32>(x_4167.y, x_4167.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4170 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4169.x, x_4169.y, x_4170.z, x_4170.w);
            let x_4173 : f32 = u_xlat15.x;
            u_xlat16.z = x_4173;
            let x_4176 : f32 = u_xlat13.x;
            u_xlat16.w = x_4176;
            let x_4179 : f32 = u_xlat18.x;
            u_xlat17.z = x_4179;
            let x_4182 : f32 = u_xlat67.x;
            u_xlat17.w = x_4182;
            let x_4184 : vec4<f32> = u_xlat16;
            let x_4186 : vec4<f32> = u_xlat17;
            u_xlat14 = (vec4<f32>(x_4184.z, x_4184.w, x_4184.x, x_4184.z) + vec4<f32>(x_4186.z, x_4186.w, x_4186.x, x_4186.z));
            let x_4190 : f32 = u_xlat16.y;
            u_xlat15.z = x_4190;
            let x_4193 : f32 = u_xlat13.y;
            u_xlat15.w = x_4193;
            let x_4196 : f32 = u_xlat17.y;
            u_xlat18.z = x_4196;
            let x_4199 : f32 = u_xlat67.y;
            u_xlat18.w = x_4199;
            let x_4201 : vec4<f32> = u_xlat15;
            let x_4203 : vec4<f32> = u_xlat18;
            let x_4205 : vec3<f32> = (vec3<f32>(x_4201.z, x_4201.y, x_4201.w) + vec3<f32>(x_4203.z, x_4203.y, x_4203.w));
            let x_4206 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4205.x, x_4205.y, x_4205.z, x_4206.w);
            let x_4208 : vec4<f32> = u_xlat17;
            let x_4210 : vec4<f32> = u_xlat14;
            let x_4212 : vec3<f32> = (vec3<f32>(x_4208.x, x_4208.z, x_4208.w) / vec3<f32>(x_4210.z, x_4210.w, x_4210.y));
            let x_4213 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4212.x, x_4212.y, x_4212.z, x_4213.w);
            let x_4215 : vec4<f32> = u_xlat15;
            let x_4217 : vec3<f32> = (vec3<f32>(x_4215.x, x_4215.y, x_4215.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4218 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4217.x, x_4217.y, x_4217.z, x_4218.w);
            let x_4220 : vec4<f32> = u_xlat18;
            let x_4222 : vec4<f32> = u_xlat13;
            let x_4224 : vec3<f32> = (vec3<f32>(x_4220.z, x_4220.y, x_4220.w) / vec3<f32>(x_4222.x, x_4222.y, x_4222.z));
            let x_4225 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4224.x, x_4224.y, x_4224.z, x_4225.w);
            let x_4227 : vec4<f32> = u_xlat16;
            let x_4229 : vec3<f32> = (vec3<f32>(x_4227.x, x_4227.y, x_4227.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4230 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4229.x, x_4229.y, x_4229.z, x_4230.w);
            let x_4232 : vec4<f32> = u_xlat15;
            let x_4235 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4237 : vec3<f32> = (vec3<f32>(x_4232.y, x_4232.x, x_4232.z) * vec3<f32>(x_4235.x, x_4235.x, x_4235.x));
            let x_4238 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4237.x, x_4237.y, x_4237.z, x_4238.w);
            let x_4240 : vec4<f32> = u_xlat16;
            let x_4243 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4245 : vec3<f32> = (vec3<f32>(x_4240.x, x_4240.y, x_4240.z) * vec3<f32>(x_4243.y, x_4243.y, x_4243.y));
            let x_4246 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4245.x, x_4245.y, x_4245.z, x_4246.w);
            let x_4249 : f32 = u_xlat16.x;
            u_xlat15.w = x_4249;
            let x_4251 : vec2<f32> = u_xlat62;
            let x_4254 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4257 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4251.x, x_4251.y, x_4251.x, x_4251.y) * vec4<f32>(x_4254.x, x_4254.y, x_4254.x, x_4254.y)) + vec4<f32>(x_4257.y, x_4257.w, x_4257.x, x_4257.w));
            let x_4260 : vec2<f32> = u_xlat62;
            let x_4262 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4265 : vec4<f32> = u_xlat15;
            let x_4267 : vec2<f32> = ((x_4260 * vec2<f32>(x_4262.x, x_4262.y)) + vec2<f32>(x_4265.z, x_4265.w));
            let x_4268 : vec4<f32> = u_xlat18;
            u_xlat18 = vec4<f32>(x_4267.x, x_4267.y, x_4268.z, x_4268.w);
            let x_4271 : f32 = u_xlat15.y;
            u_xlat16.w = x_4271;
            let x_4273 : vec4<f32> = u_xlat16;
            let x_4274 : vec2<f32> = vec2<f32>(x_4273.y, x_4273.z);
            let x_4275 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4275.x, x_4274.x, x_4275.z, x_4274.y);
            let x_4277 : vec2<f32> = u_xlat62;
            let x_4280 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4283 : vec4<f32> = u_xlat15;
            u_xlat19 = ((vec4<f32>(x_4277.x, x_4277.y, x_4277.x, x_4277.y) * vec4<f32>(x_4280.x, x_4280.y, x_4280.x, x_4280.y)) + vec4<f32>(x_4283.x, x_4283.y, x_4283.z, x_4283.y));
            let x_4286 : vec2<f32> = u_xlat62;
            let x_4289 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4292 : vec4<f32> = u_xlat16;
            u_xlat16 = ((vec4<f32>(x_4286.x, x_4286.y, x_4286.x, x_4286.y) * vec4<f32>(x_4289.x, x_4289.y, x_4289.x, x_4289.y)) + vec4<f32>(x_4292.w, x_4292.y, x_4292.w, x_4292.z));
            let x_4295 : vec2<f32> = u_xlat62;
            let x_4298 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4301 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4295.x, x_4295.y, x_4295.x, x_4295.y) * vec4<f32>(x_4298.x, x_4298.y, x_4298.x, x_4298.y)) + vec4<f32>(x_4301.x, x_4301.w, x_4301.z, x_4301.w));
            let x_4304 : vec4<f32> = u_xlat13;
            let x_4306 : vec4<f32> = u_xlat14;
            u_xlat20 = (vec4<f32>(x_4304.x, x_4304.x, x_4304.x, x_4304.y) * vec4<f32>(x_4306.z, x_4306.w, x_4306.y, x_4306.z));
            let x_4309 : vec4<f32> = u_xlat13;
            let x_4311 : vec4<f32> = u_xlat14;
            u_xlat21 = (vec4<f32>(x_4309.y, x_4309.y, x_4309.z, x_4309.z) * x_4311);
            let x_4314 : f32 = u_xlat13.z;
            let x_4316 : f32 = u_xlat14.y;
            u_xlat62.x = (x_4314 * x_4316);
            let x_4320 : vec4<f32> = u_xlat17;
            let x_4321 : vec2<f32> = vec2<f32>(x_4320.x, x_4320.y);
            let x_4323 : f32 = u_xlat12.z;
            txVec64 = vec3<f32>(x_4321.x, x_4321.y, x_4323);
            let x_4330 : vec3<f32> = txVec64;
            let x_4332 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4330.xy, x_4330.z);
            u_xlat89 = x_4332;
            let x_4334 : vec4<f32> = u_xlat17;
            let x_4335 : vec2<f32> = vec2<f32>(x_4334.z, x_4334.w);
            let x_4337 : f32 = u_xlat12.z;
            txVec65 = vec3<f32>(x_4335.x, x_4335.y, x_4337);
            let x_4344 : vec3<f32> = txVec65;
            let x_4346 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4344.xy, x_4344.z);
            u_xlat90 = x_4346;
            let x_4347 : f32 = u_xlat90;
            let x_4349 : f32 = u_xlat20.y;
            u_xlat90 = (x_4347 * x_4349);
            let x_4352 : f32 = u_xlat20.x;
            let x_4353 : f32 = u_xlat89;
            let x_4355 : f32 = u_xlat90;
            u_xlat89 = ((x_4352 * x_4353) + x_4355);
            let x_4358 : vec4<f32> = u_xlat18;
            let x_4359 : vec2<f32> = vec2<f32>(x_4358.x, x_4358.y);
            let x_4361 : f32 = u_xlat12.z;
            txVec66 = vec3<f32>(x_4359.x, x_4359.y, x_4361);
            let x_4368 : vec3<f32> = txVec66;
            let x_4370 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4368.xy, x_4368.z);
            u_xlat90 = x_4370;
            let x_4372 : f32 = u_xlat20.z;
            let x_4373 : f32 = u_xlat90;
            let x_4375 : f32 = u_xlat89;
            u_xlat89 = ((x_4372 * x_4373) + x_4375);
            let x_4378 : vec4<f32> = u_xlat16;
            let x_4379 : vec2<f32> = vec2<f32>(x_4378.x, x_4378.y);
            let x_4381 : f32 = u_xlat12.z;
            txVec67 = vec3<f32>(x_4379.x, x_4379.y, x_4381);
            let x_4388 : vec3<f32> = txVec67;
            let x_4390 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4388.xy, x_4388.z);
            u_xlat90 = x_4390;
            let x_4392 : f32 = u_xlat20.w;
            let x_4393 : f32 = u_xlat90;
            let x_4395 : f32 = u_xlat89;
            u_xlat89 = ((x_4392 * x_4393) + x_4395);
            let x_4398 : vec4<f32> = u_xlat19;
            let x_4399 : vec2<f32> = vec2<f32>(x_4398.x, x_4398.y);
            let x_4401 : f32 = u_xlat12.z;
            txVec68 = vec3<f32>(x_4399.x, x_4399.y, x_4401);
            let x_4408 : vec3<f32> = txVec68;
            let x_4410 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4408.xy, x_4408.z);
            u_xlat90 = x_4410;
            let x_4412 : f32 = u_xlat21.x;
            let x_4413 : f32 = u_xlat90;
            let x_4415 : f32 = u_xlat89;
            u_xlat89 = ((x_4412 * x_4413) + x_4415);
            let x_4418 : vec4<f32> = u_xlat19;
            let x_4419 : vec2<f32> = vec2<f32>(x_4418.z, x_4418.w);
            let x_4421 : f32 = u_xlat12.z;
            txVec69 = vec3<f32>(x_4419.x, x_4419.y, x_4421);
            let x_4428 : vec3<f32> = txVec69;
            let x_4430 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4428.xy, x_4428.z);
            u_xlat90 = x_4430;
            let x_4432 : f32 = u_xlat21.y;
            let x_4433 : f32 = u_xlat90;
            let x_4435 : f32 = u_xlat89;
            u_xlat89 = ((x_4432 * x_4433) + x_4435);
            let x_4438 : vec4<f32> = u_xlat16;
            let x_4439 : vec2<f32> = vec2<f32>(x_4438.z, x_4438.w);
            let x_4441 : f32 = u_xlat12.z;
            txVec70 = vec3<f32>(x_4439.x, x_4439.y, x_4441);
            let x_4448 : vec3<f32> = txVec70;
            let x_4450 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4448.xy, x_4448.z);
            u_xlat90 = x_4450;
            let x_4452 : f32 = u_xlat21.z;
            let x_4453 : f32 = u_xlat90;
            let x_4455 : f32 = u_xlat89;
            u_xlat89 = ((x_4452 * x_4453) + x_4455);
            let x_4458 : vec4<f32> = u_xlat15;
            let x_4459 : vec2<f32> = vec2<f32>(x_4458.x, x_4458.y);
            let x_4461 : f32 = u_xlat12.z;
            txVec71 = vec3<f32>(x_4459.x, x_4459.y, x_4461);
            let x_4468 : vec3<f32> = txVec71;
            let x_4470 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4468.xy, x_4468.z);
            u_xlat90 = x_4470;
            let x_4472 : f32 = u_xlat21.w;
            let x_4473 : f32 = u_xlat90;
            let x_4475 : f32 = u_xlat89;
            u_xlat89 = ((x_4472 * x_4473) + x_4475);
            let x_4478 : vec4<f32> = u_xlat15;
            let x_4479 : vec2<f32> = vec2<f32>(x_4478.z, x_4478.w);
            let x_4481 : f32 = u_xlat12.z;
            txVec72 = vec3<f32>(x_4479.x, x_4479.y, x_4481);
            let x_4488 : vec3<f32> = txVec72;
            let x_4490 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4488.xy, x_4488.z);
            u_xlat90 = x_4490;
            let x_4492 : f32 = u_xlat62.x;
            let x_4493 : f32 = u_xlat90;
            let x_4495 : f32 = u_xlat89;
            u_xlat88 = ((x_4492 * x_4493) + x_4495);
          } else {
            let x_4498 : vec4<f32> = u_xlat12;
            let x_4501 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            u_xlat62 = ((vec2<f32>(x_4498.x, x_4498.y) * vec2<f32>(x_4501.z, x_4501.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4505 : vec2<f32> = u_xlat62;
            u_xlat62 = floor(x_4505);
            let x_4507 : vec4<f32> = u_xlat12;
            let x_4510 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4513 : vec2<f32> = u_xlat62;
            let x_4515 : vec2<f32> = ((vec2<f32>(x_4507.x, x_4507.y) * vec2<f32>(x_4510.z, x_4510.w)) + -(x_4513));
            let x_4516 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4515.x, x_4515.y, x_4516.z, x_4516.w);
            let x_4518 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4518.x, x_4518.x, x_4518.y, x_4518.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4521 : vec4<f32> = u_xlat14;
            let x_4523 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_4521.x, x_4521.x, x_4521.z, x_4521.z) * vec4<f32>(x_4523.x, x_4523.x, x_4523.z, x_4523.z));
            let x_4526 : vec4<f32> = u_xlat15;
            let x_4528 : vec2<f32> = (vec2<f32>(x_4526.y, x_4526.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4529 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4529.x, x_4528.x, x_4529.z, x_4528.y);
            let x_4531 : vec4<f32> = u_xlat15;
            let x_4534 : vec4<f32> = u_xlat13;
            u_xlat67 = ((vec2<f32>(x_4531.x, x_4531.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_4534.x, x_4534.y)));
            let x_4538 : vec4<f32> = u_xlat13;
            let x_4541 : vec2<f32> = (-(vec2<f32>(x_4538.x, x_4538.y)) + vec2<f32>(1.0f, 1.0f));
            let x_4542 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4541.x, x_4542.y, x_4541.y, x_4542.w);
            let x_4544 : vec4<f32> = u_xlat13;
            let x_4546 : vec2<f32> = min(vec2<f32>(x_4544.x, x_4544.y), vec2<f32>(0.0f, 0.0f));
            let x_4547 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4546.x, x_4546.y, x_4547.z, x_4547.w);
            let x_4549 : vec4<f32> = u_xlat15;
            let x_4552 : vec4<f32> = u_xlat15;
            let x_4555 : vec4<f32> = u_xlat14;
            let x_4557 : vec2<f32> = ((-(vec2<f32>(x_4549.x, x_4549.y)) * vec2<f32>(x_4552.x, x_4552.y)) + vec2<f32>(x_4555.x, x_4555.z));
            let x_4558 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4557.x, x_4558.y, x_4557.y, x_4558.w);
            let x_4560 : vec4<f32> = u_xlat13;
            let x_4562 : vec2<f32> = max(vec2<f32>(x_4560.x, x_4560.y), vec2<f32>(0.0f, 0.0f));
            let x_4563 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4562.x, x_4562.y, x_4563.z, x_4563.w);
            let x_4565 : vec4<f32> = u_xlat15;
            let x_4568 : vec4<f32> = u_xlat15;
            let x_4571 : vec4<f32> = u_xlat14;
            let x_4573 : vec2<f32> = ((-(vec2<f32>(x_4565.x, x_4565.y)) * vec2<f32>(x_4568.x, x_4568.y)) + vec2<f32>(x_4571.y, x_4571.w));
            let x_4574 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4574.x, x_4573.x, x_4574.z, x_4573.y);
            let x_4576 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4576 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
            let x_4579 : f32 = u_xlat14.y;
            u_xlat15.z = (x_4579 * 0.08163200318813323975f);
            let x_4582 : vec2<f32> = u_xlat67;
            let x_4584 : vec2<f32> = (vec2<f32>(x_4582.y, x_4582.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4585 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4584.x, x_4584.y, x_4585.z, x_4585.w);
            let x_4587 : vec4<f32> = u_xlat14;
            u_xlat67 = (vec2<f32>(x_4587.x, x_4587.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4591 : f32 = u_xlat14.w;
            u_xlat17.z = (x_4591 * 0.08163200318813323975f);
            let x_4595 : f32 = u_xlat17.y;
            u_xlat15.x = x_4595;
            let x_4597 : vec4<f32> = u_xlat13;
            let x_4600 : vec2<f32> = ((vec2<f32>(x_4597.x, x_4597.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4601 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4601.x, x_4600.x, x_4601.z, x_4600.y);
            let x_4603 : vec4<f32> = u_xlat13;
            let x_4606 : vec2<f32> = ((vec2<f32>(x_4603.x, x_4603.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4607 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4606.x, x_4607.y, x_4606.y, x_4607.w);
            let x_4610 : f32 = u_xlat67.x;
            u_xlat14.y = x_4610;
            let x_4613 : f32 = u_xlat16.y;
            u_xlat14.w = x_4613;
            let x_4615 : vec4<f32> = u_xlat14;
            let x_4616 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4615 + x_4616);
            let x_4618 : vec4<f32> = u_xlat13;
            let x_4621 : vec2<f32> = ((vec2<f32>(x_4618.y, x_4618.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4622 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4622.x, x_4621.x, x_4622.z, x_4621.y);
            let x_4624 : vec4<f32> = u_xlat13;
            let x_4627 : vec2<f32> = ((vec2<f32>(x_4624.y, x_4624.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4628 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4627.x, x_4628.y, x_4627.y, x_4628.w);
            let x_4631 : f32 = u_xlat67.y;
            u_xlat16.y = x_4631;
            let x_4633 : vec4<f32> = u_xlat16;
            let x_4634 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4633 + x_4634);
            let x_4636 : vec4<f32> = u_xlat14;
            let x_4637 : vec4<f32> = u_xlat15;
            u_xlat14 = (x_4636 / x_4637);
            let x_4639 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4639 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4641 : vec4<f32> = u_xlat16;
            let x_4642 : vec4<f32> = u_xlat13;
            u_xlat16 = (x_4641 / x_4642);
            let x_4644 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4644 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4646 : vec4<f32> = u_xlat14;
            let x_4649 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4646.w, x_4646.x, x_4646.y, x_4646.z) * vec4<f32>(x_4649.x, x_4649.x, x_4649.x, x_4649.x));
            let x_4652 : vec4<f32> = u_xlat16;
            let x_4655 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            u_xlat16 = (vec4<f32>(x_4652.x, x_4652.w, x_4652.y, x_4652.z) * vec4<f32>(x_4655.y, x_4655.y, x_4655.y, x_4655.y));
            let x_4658 : vec4<f32> = u_xlat14;
            let x_4659 : vec3<f32> = vec3<f32>(x_4658.y, x_4658.z, x_4658.w);
            let x_4660 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4659.x, x_4660.y, x_4659.y, x_4659.z);
            let x_4663 : f32 = u_xlat16.x;
            u_xlat17.y = x_4663;
            let x_4665 : vec2<f32> = u_xlat62;
            let x_4668 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4671 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4665.x, x_4665.y, x_4665.x, x_4665.y) * vec4<f32>(x_4668.x, x_4668.y, x_4668.x, x_4668.y)) + vec4<f32>(x_4671.x, x_4671.y, x_4671.z, x_4671.y));
            let x_4674 : vec2<f32> = u_xlat62;
            let x_4676 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4679 : vec4<f32> = u_xlat17;
            let x_4681 : vec2<f32> = ((x_4674 * vec2<f32>(x_4676.x, x_4676.y)) + vec2<f32>(x_4679.w, x_4679.y));
            let x_4682 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_4681.x, x_4681.y, x_4682.z, x_4682.w);
            let x_4685 : f32 = u_xlat17.y;
            u_xlat14.y = x_4685;
            let x_4688 : f32 = u_xlat16.z;
            u_xlat17.y = x_4688;
            let x_4690 : vec2<f32> = u_xlat62;
            let x_4693 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4696 : vec4<f32> = u_xlat17;
            u_xlat20 = ((vec4<f32>(x_4690.x, x_4690.y, x_4690.x, x_4690.y) * vec4<f32>(x_4693.x, x_4693.y, x_4693.x, x_4693.y)) + vec4<f32>(x_4696.x, x_4696.y, x_4696.z, x_4696.y));
            let x_4700 : vec2<f32> = u_xlat62;
            let x_4702 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4705 : vec4<f32> = u_xlat17;
            u_xlat73 = ((x_4700 * vec2<f32>(x_4702.x, x_4702.y)) + vec2<f32>(x_4705.w, x_4705.y));
            let x_4709 : f32 = u_xlat17.y;
            u_xlat14.z = x_4709;
            let x_4711 : vec2<f32> = u_xlat62;
            let x_4714 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4717 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4711.x, x_4711.y, x_4711.x, x_4711.y) * vec4<f32>(x_4714.x, x_4714.y, x_4714.x, x_4714.y)) + vec4<f32>(x_4717.x, x_4717.y, x_4717.x, x_4717.z));
            let x_4721 : f32 = u_xlat16.w;
            u_xlat17.y = x_4721;
            let x_4724 : vec2<f32> = u_xlat62;
            let x_4727 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4730 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4724.x, x_4724.y, x_4724.x, x_4724.y) * vec4<f32>(x_4727.x, x_4727.y, x_4727.x, x_4727.y)) + vec4<f32>(x_4730.x, x_4730.y, x_4730.z, x_4730.y));
            let x_4734 : vec2<f32> = u_xlat62;
            let x_4736 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4739 : vec4<f32> = u_xlat17;
            u_xlat41 = ((x_4734 * vec2<f32>(x_4736.x, x_4736.y)) + vec2<f32>(x_4739.w, x_4739.y));
            let x_4743 : f32 = u_xlat17.y;
            u_xlat14.w = x_4743;
            let x_4746 : vec2<f32> = u_xlat62;
            let x_4748 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4751 : vec4<f32> = u_xlat14;
            u_xlat23 = ((x_4746 * vec2<f32>(x_4748.x, x_4748.y)) + vec2<f32>(x_4751.x, x_4751.w));
            let x_4754 : vec4<f32> = u_xlat17;
            let x_4755 : vec3<f32> = vec3<f32>(x_4754.x, x_4754.z, x_4754.w);
            let x_4756 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4755.x, x_4756.y, x_4755.y, x_4755.z);
            let x_4758 : vec2<f32> = u_xlat62;
            let x_4761 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4764 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_4758.x, x_4758.y, x_4758.x, x_4758.y) * vec4<f32>(x_4761.x, x_4761.y, x_4761.x, x_4761.y)) + vec4<f32>(x_4764.x, x_4764.y, x_4764.z, x_4764.y));
            let x_4768 : vec2<f32> = u_xlat62;
            let x_4770 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4773 : vec4<f32> = u_xlat16;
            u_xlat70 = ((x_4768 * vec2<f32>(x_4770.x, x_4770.y)) + vec2<f32>(x_4773.w, x_4773.y));
            let x_4777 : f32 = u_xlat14.x;
            u_xlat16.x = x_4777;
            let x_4779 : vec2<f32> = u_xlat62;
            let x_4781 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4784 : vec4<f32> = u_xlat16;
            u_xlat62 = ((x_4779 * vec2<f32>(x_4781.x, x_4781.y)) + vec2<f32>(x_4784.x, x_4784.y));
            let x_4788 : vec4<f32> = u_xlat13;
            let x_4790 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_4788.x, x_4788.x, x_4788.x, x_4788.x) * x_4790);
            let x_4793 : vec4<f32> = u_xlat13;
            let x_4795 : vec4<f32> = u_xlat15;
            u_xlat25 = (vec4<f32>(x_4793.y, x_4793.y, x_4793.y, x_4793.y) * x_4795);
            let x_4798 : vec4<f32> = u_xlat13;
            let x_4800 : vec4<f32> = u_xlat15;
            u_xlat26 = (vec4<f32>(x_4798.z, x_4798.z, x_4798.z, x_4798.z) * x_4800);
            let x_4802 : vec4<f32> = u_xlat13;
            let x_4804 : vec4<f32> = u_xlat15;
            u_xlat13 = (vec4<f32>(x_4802.w, x_4802.w, x_4802.w, x_4802.w) * x_4804);
            let x_4807 : vec4<f32> = u_xlat18;
            let x_4808 : vec2<f32> = vec2<f32>(x_4807.x, x_4807.y);
            let x_4810 : f32 = u_xlat12.z;
            txVec73 = vec3<f32>(x_4808.x, x_4808.y, x_4810);
            let x_4817 : vec3<f32> = txVec73;
            let x_4819 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4817.xy, x_4817.z);
            u_xlat90 = x_4819;
            let x_4821 : vec4<f32> = u_xlat18;
            let x_4822 : vec2<f32> = vec2<f32>(x_4821.z, x_4821.w);
            let x_4824 : f32 = u_xlat12.z;
            txVec74 = vec3<f32>(x_4822.x, x_4822.y, x_4824);
            let x_4832 : vec3<f32> = txVec74;
            let x_4834 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4832.xy, x_4832.z);
            u_xlat91 = x_4834;
            let x_4835 : f32 = u_xlat91;
            let x_4837 : f32 = u_xlat24.y;
            u_xlat91 = (x_4835 * x_4837);
            let x_4840 : f32 = u_xlat24.x;
            let x_4841 : f32 = u_xlat90;
            let x_4843 : f32 = u_xlat91;
            u_xlat90 = ((x_4840 * x_4841) + x_4843);
            let x_4846 : vec4<f32> = u_xlat19;
            let x_4847 : vec2<f32> = vec2<f32>(x_4846.x, x_4846.y);
            let x_4849 : f32 = u_xlat12.z;
            txVec75 = vec3<f32>(x_4847.x, x_4847.y, x_4849);
            let x_4856 : vec3<f32> = txVec75;
            let x_4858 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4856.xy, x_4856.z);
            u_xlat91 = x_4858;
            let x_4860 : f32 = u_xlat24.z;
            let x_4861 : f32 = u_xlat91;
            let x_4863 : f32 = u_xlat90;
            u_xlat90 = ((x_4860 * x_4861) + x_4863);
            let x_4866 : vec4<f32> = u_xlat21;
            let x_4867 : vec2<f32> = vec2<f32>(x_4866.x, x_4866.y);
            let x_4869 : f32 = u_xlat12.z;
            txVec76 = vec3<f32>(x_4867.x, x_4867.y, x_4869);
            let x_4876 : vec3<f32> = txVec76;
            let x_4878 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4876.xy, x_4876.z);
            u_xlat91 = x_4878;
            let x_4880 : f32 = u_xlat24.w;
            let x_4881 : f32 = u_xlat91;
            let x_4883 : f32 = u_xlat90;
            u_xlat90 = ((x_4880 * x_4881) + x_4883);
            let x_4886 : vec4<f32> = u_xlat20;
            let x_4887 : vec2<f32> = vec2<f32>(x_4886.x, x_4886.y);
            let x_4889 : f32 = u_xlat12.z;
            txVec77 = vec3<f32>(x_4887.x, x_4887.y, x_4889);
            let x_4896 : vec3<f32> = txVec77;
            let x_4898 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4896.xy, x_4896.z);
            u_xlat91 = x_4898;
            let x_4900 : f32 = u_xlat25.x;
            let x_4901 : f32 = u_xlat91;
            let x_4903 : f32 = u_xlat90;
            u_xlat90 = ((x_4900 * x_4901) + x_4903);
            let x_4906 : vec4<f32> = u_xlat20;
            let x_4907 : vec2<f32> = vec2<f32>(x_4906.z, x_4906.w);
            let x_4909 : f32 = u_xlat12.z;
            txVec78 = vec3<f32>(x_4907.x, x_4907.y, x_4909);
            let x_4916 : vec3<f32> = txVec78;
            let x_4918 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4916.xy, x_4916.z);
            u_xlat91 = x_4918;
            let x_4920 : f32 = u_xlat25.y;
            let x_4921 : f32 = u_xlat91;
            let x_4923 : f32 = u_xlat90;
            u_xlat90 = ((x_4920 * x_4921) + x_4923);
            let x_4926 : vec2<f32> = u_xlat73;
            let x_4928 : f32 = u_xlat12.z;
            txVec79 = vec3<f32>(x_4926.x, x_4926.y, x_4928);
            let x_4935 : vec3<f32> = txVec79;
            let x_4937 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4935.xy, x_4935.z);
            u_xlat91 = x_4937;
            let x_4939 : f32 = u_xlat25.z;
            let x_4940 : f32 = u_xlat91;
            let x_4942 : f32 = u_xlat90;
            u_xlat90 = ((x_4939 * x_4940) + x_4942);
            let x_4945 : vec4<f32> = u_xlat21;
            let x_4946 : vec2<f32> = vec2<f32>(x_4945.z, x_4945.w);
            let x_4948 : f32 = u_xlat12.z;
            txVec80 = vec3<f32>(x_4946.x, x_4946.y, x_4948);
            let x_4955 : vec3<f32> = txVec80;
            let x_4957 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4955.xy, x_4955.z);
            u_xlat91 = x_4957;
            let x_4959 : f32 = u_xlat25.w;
            let x_4960 : f32 = u_xlat91;
            let x_4962 : f32 = u_xlat90;
            u_xlat90 = ((x_4959 * x_4960) + x_4962);
            let x_4965 : vec4<f32> = u_xlat22;
            let x_4966 : vec2<f32> = vec2<f32>(x_4965.x, x_4965.y);
            let x_4968 : f32 = u_xlat12.z;
            txVec81 = vec3<f32>(x_4966.x, x_4966.y, x_4968);
            let x_4975 : vec3<f32> = txVec81;
            let x_4977 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4975.xy, x_4975.z);
            u_xlat91 = x_4977;
            let x_4979 : f32 = u_xlat26.x;
            let x_4980 : f32 = u_xlat91;
            let x_4982 : f32 = u_xlat90;
            u_xlat90 = ((x_4979 * x_4980) + x_4982);
            let x_4985 : vec4<f32> = u_xlat22;
            let x_4986 : vec2<f32> = vec2<f32>(x_4985.z, x_4985.w);
            let x_4988 : f32 = u_xlat12.z;
            txVec82 = vec3<f32>(x_4986.x, x_4986.y, x_4988);
            let x_4995 : vec3<f32> = txVec82;
            let x_4997 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4995.xy, x_4995.z);
            u_xlat91 = x_4997;
            let x_4999 : f32 = u_xlat26.y;
            let x_5000 : f32 = u_xlat91;
            let x_5002 : f32 = u_xlat90;
            u_xlat90 = ((x_4999 * x_5000) + x_5002);
            let x_5005 : vec2<f32> = u_xlat41;
            let x_5007 : f32 = u_xlat12.z;
            txVec83 = vec3<f32>(x_5005.x, x_5005.y, x_5007);
            let x_5014 : vec3<f32> = txVec83;
            let x_5016 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5014.xy, x_5014.z);
            u_xlat91 = x_5016;
            let x_5018 : f32 = u_xlat26.z;
            let x_5019 : f32 = u_xlat91;
            let x_5021 : f32 = u_xlat90;
            u_xlat90 = ((x_5018 * x_5019) + x_5021);
            let x_5024 : vec2<f32> = u_xlat23;
            let x_5026 : f32 = u_xlat12.z;
            txVec84 = vec3<f32>(x_5024.x, x_5024.y, x_5026);
            let x_5033 : vec3<f32> = txVec84;
            let x_5035 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5033.xy, x_5033.z);
            u_xlat91 = x_5035;
            let x_5037 : f32 = u_xlat26.w;
            let x_5038 : f32 = u_xlat91;
            let x_5040 : f32 = u_xlat90;
            u_xlat90 = ((x_5037 * x_5038) + x_5040);
            let x_5043 : vec4<f32> = u_xlat17;
            let x_5044 : vec2<f32> = vec2<f32>(x_5043.x, x_5043.y);
            let x_5046 : f32 = u_xlat12.z;
            txVec85 = vec3<f32>(x_5044.x, x_5044.y, x_5046);
            let x_5053 : vec3<f32> = txVec85;
            let x_5055 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5053.xy, x_5053.z);
            u_xlat91 = x_5055;
            let x_5057 : f32 = u_xlat13.x;
            let x_5058 : f32 = u_xlat91;
            let x_5060 : f32 = u_xlat90;
            u_xlat90 = ((x_5057 * x_5058) + x_5060);
            let x_5063 : vec4<f32> = u_xlat17;
            let x_5064 : vec2<f32> = vec2<f32>(x_5063.z, x_5063.w);
            let x_5066 : f32 = u_xlat12.z;
            txVec86 = vec3<f32>(x_5064.x, x_5064.y, x_5066);
            let x_5073 : vec3<f32> = txVec86;
            let x_5075 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5073.xy, x_5073.z);
            u_xlat91 = x_5075;
            let x_5077 : f32 = u_xlat13.y;
            let x_5078 : f32 = u_xlat91;
            let x_5080 : f32 = u_xlat90;
            u_xlat90 = ((x_5077 * x_5078) + x_5080);
            let x_5083 : vec2<f32> = u_xlat70;
            let x_5085 : f32 = u_xlat12.z;
            txVec87 = vec3<f32>(x_5083.x, x_5083.y, x_5085);
            let x_5092 : vec3<f32> = txVec87;
            let x_5094 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5092.xy, x_5092.z);
            u_xlat91 = x_5094;
            let x_5096 : f32 = u_xlat13.z;
            let x_5097 : f32 = u_xlat91;
            let x_5099 : f32 = u_xlat90;
            u_xlat90 = ((x_5096 * x_5097) + x_5099);
            let x_5102 : vec2<f32> = u_xlat62;
            let x_5104 : f32 = u_xlat12.z;
            txVec88 = vec3<f32>(x_5102.x, x_5102.y, x_5104);
            let x_5111 : vec3<f32> = txVec88;
            let x_5113 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5111.xy, x_5111.z);
            u_xlat62.x = x_5113;
            let x_5116 : f32 = u_xlat13.w;
            let x_5118 : f32 = u_xlat62.x;
            let x_5120 : f32 = u_xlat90;
            u_xlat88 = ((x_5116 * x_5118) + x_5120);
          }
        }
      } else {
        let x_5124 : vec4<f32> = u_xlat12;
        let x_5125 : vec2<f32> = vec2<f32>(x_5124.x, x_5124.y);
        let x_5127 : f32 = u_xlat12.z;
        txVec89 = vec3<f32>(x_5125.x, x_5125.y, x_5127);
        let x_5134 : vec3<f32> = txVec89;
        let x_5136 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5134.xy, x_5134.z);
        u_xlat88 = x_5136;
      }
      let x_5137 : i32 = u_xlati3;
      let x_5139 : f32 = x_130.x_AdditionalShadowParams[x_5137].x;
      u_xlat62.x = (1.0f + -(x_5139));
      let x_5143 : f32 = u_xlat88;
      let x_5144 : i32 = u_xlati3;
      let x_5146 : f32 = x_130.x_AdditionalShadowParams[x_5144].x;
      let x_5149 : f32 = u_xlat62.x;
      u_xlat88 = ((x_5143 * x_5146) + x_5149);
      let x_5152 : f32 = u_xlat12.z;
      u_xlatb62 = (0.0f >= x_5152);
      let x_5156 : f32 = u_xlat12.z;
      u_xlatb89 = (x_5156 >= 1.0f);
      let x_5158 : bool = u_xlatb89;
      let x_5159 : bool = u_xlatb62;
      u_xlatb62 = (x_5158 | x_5159);
      let x_5161 : bool = u_xlatb62;
      let x_5162 : f32 = u_xlat88;
      u_xlat88 = select(x_5162, 1.0f, x_5161);
    } else {
      u_xlat88 = 1.0f;
    }
    let x_5165 : f32 = u_xlat88;
    u_xlat62.x = (-(x_5165) + 1.0f);
    let x_5169 : f32 = u_xlat82;
    let x_5171 : f32 = u_xlat62.x;
    let x_5173 : f32 = u_xlat88;
    u_xlat88 = ((x_5169 * x_5171) + x_5173);
    let x_5176 : i32 = u_xlati3;
    u_xlati62 = (1i << bitcast<u32>((x_5176 & 31i)));
    let x_5180 : i32 = u_xlati62;
    let x_5183 : f32 = x_3288.x_AdditionalLightsCookieEnableBits;
    u_xlati62 = bitcast<i32>((bitcast<u32>(x_5180) & bitcast<u32>(x_5183)));
    let x_5187 : i32 = u_xlati62;
    if ((x_5187 != 0i)) {
      let x_5191 : i32 = u_xlati3;
      let x_5193 : f32 = x_3288.x_AdditionalLightsLightTypes[x_5191].el;
      u_xlati62 = i32(x_5193);
      let x_5196 : i32 = u_xlati62;
      u_xlati89 = select(1i, 0i, (x_5196 != 0i));
      let x_5200 : i32 = u_xlati3;
      u_xlati90 = (x_5200 << bitcast<u32>(2i));
      let x_5202 : i32 = u_xlati89;
      if ((x_5202 != 0i)) {
        let x_5206 : vec3<f32> = vs_INTERP8;
        let x_5208 : i32 = u_xlati90;
        let x_5211 : i32 = u_xlati90;
        let x_5215 : vec4<f32> = x_3288.x_AdditionalLightsWorldToLights[((x_5208 + 1i) / 4i)][((x_5211 + 1i) % 4i)];
        let x_5217 : vec3<f32> = (vec3<f32>(x_5206.y, x_5206.y, x_5206.y) * vec3<f32>(x_5215.x, x_5215.y, x_5215.w));
        let x_5218 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_5217.x, x_5217.y, x_5217.z, x_5218.w);
        let x_5220 : i32 = u_xlati90;
        let x_5222 : i32 = u_xlati90;
        let x_5225 : vec4<f32> = x_3288.x_AdditionalLightsWorldToLights[(x_5220 / 4i)][(x_5222 % 4i)];
        let x_5227 : vec3<f32> = vs_INTERP8;
        let x_5230 : vec4<f32> = u_xlat12;
        let x_5232 : vec3<f32> = ((vec3<f32>(x_5225.x, x_5225.y, x_5225.w) * vec3<f32>(x_5227.x, x_5227.x, x_5227.x)) + vec3<f32>(x_5230.x, x_5230.y, x_5230.z));
        let x_5233 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_5232.x, x_5232.y, x_5232.z, x_5233.w);
        let x_5235 : i32 = u_xlati90;
        let x_5238 : i32 = u_xlati90;
        let x_5242 : vec4<f32> = x_3288.x_AdditionalLightsWorldToLights[((x_5235 + 2i) / 4i)][((x_5238 + 2i) % 4i)];
        let x_5244 : vec3<f32> = vs_INTERP8;
        let x_5247 : vec4<f32> = u_xlat12;
        let x_5249 : vec3<f32> = ((vec3<f32>(x_5242.x, x_5242.y, x_5242.w) * vec3<f32>(x_5244.z, x_5244.z, x_5244.z)) + vec3<f32>(x_5247.x, x_5247.y, x_5247.z));
        let x_5250 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_5249.x, x_5249.y, x_5249.z, x_5250.w);
        let x_5252 : vec4<f32> = u_xlat12;
        let x_5254 : i32 = u_xlati90;
        let x_5257 : i32 = u_xlati90;
        let x_5261 : vec4<f32> = x_3288.x_AdditionalLightsWorldToLights[((x_5254 + 3i) / 4i)][((x_5257 + 3i) % 4i)];
        let x_5263 : vec3<f32> = (vec3<f32>(x_5252.x, x_5252.y, x_5252.z) + vec3<f32>(x_5261.x, x_5261.y, x_5261.w));
        let x_5264 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_5263.x, x_5263.y, x_5263.z, x_5264.w);
        let x_5266 : vec4<f32> = u_xlat12;
        let x_5268 : vec4<f32> = u_xlat12;
        let x_5270 : vec2<f32> = (vec2<f32>(x_5266.x, x_5266.y) / vec2<f32>(x_5268.z, x_5268.z));
        let x_5271 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_5270.x, x_5270.y, x_5271.z, x_5271.w);
        let x_5273 : vec4<f32> = u_xlat12;
        let x_5276 : vec2<f32> = ((vec2<f32>(x_5273.x, x_5273.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_5277 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_5276.x, x_5276.y, x_5277.z, x_5277.w);
        let x_5279 : vec4<f32> = u_xlat12;
        let x_5283 : vec2<f32> = clamp(vec2<f32>(x_5279.x, x_5279.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_5284 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_5283.x, x_5283.y, x_5284.z, x_5284.w);
        let x_5286 : i32 = u_xlati3;
        let x_5288 : vec4<f32> = x_3288.x_AdditionalLightsCookieAtlasUVRects[x_5286];
        let x_5290 : vec4<f32> = u_xlat12;
        let x_5293 : i32 = u_xlati3;
        let x_5295 : vec4<f32> = x_3288.x_AdditionalLightsCookieAtlasUVRects[x_5293];
        let x_5297 : vec2<f32> = ((vec2<f32>(x_5288.x, x_5288.y) * vec2<f32>(x_5290.x, x_5290.y)) + vec2<f32>(x_5295.z, x_5295.w));
        let x_5298 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_5297.x, x_5297.y, x_5298.z, x_5298.w);
      } else {
        let x_5301 : i32 = u_xlati62;
        u_xlatb62 = (x_5301 == 1i);
        let x_5303 : bool = u_xlatb62;
        u_xlati62 = select(0i, 1i, x_5303);
        let x_5305 : i32 = u_xlati62;
        if ((x_5305 != 0i)) {
          let x_5309 : vec3<f32> = vs_INTERP8;
          let x_5311 : i32 = u_xlati90;
          let x_5314 : i32 = u_xlati90;
          let x_5318 : vec4<f32> = x_3288.x_AdditionalLightsWorldToLights[((x_5311 + 1i) / 4i)][((x_5314 + 1i) % 4i)];
          u_xlat62 = (vec2<f32>(x_5309.y, x_5309.y) * vec2<f32>(x_5318.x, x_5318.y));
          let x_5321 : i32 = u_xlati90;
          let x_5323 : i32 = u_xlati90;
          let x_5326 : vec4<f32> = x_3288.x_AdditionalLightsWorldToLights[(x_5321 / 4i)][(x_5323 % 4i)];
          let x_5328 : vec3<f32> = vs_INTERP8;
          let x_5331 : vec2<f32> = u_xlat62;
          u_xlat62 = ((vec2<f32>(x_5326.x, x_5326.y) * vec2<f32>(x_5328.x, x_5328.x)) + x_5331);
          let x_5333 : i32 = u_xlati90;
          let x_5336 : i32 = u_xlati90;
          let x_5340 : vec4<f32> = x_3288.x_AdditionalLightsWorldToLights[((x_5333 + 2i) / 4i)][((x_5336 + 2i) % 4i)];
          let x_5342 : vec3<f32> = vs_INTERP8;
          let x_5345 : vec2<f32> = u_xlat62;
          u_xlat62 = ((vec2<f32>(x_5340.x, x_5340.y) * vec2<f32>(x_5342.z, x_5342.z)) + x_5345);
          let x_5347 : vec2<f32> = u_xlat62;
          let x_5348 : i32 = u_xlati90;
          let x_5351 : i32 = u_xlati90;
          let x_5355 : vec4<f32> = x_3288.x_AdditionalLightsWorldToLights[((x_5348 + 3i) / 4i)][((x_5351 + 3i) % 4i)];
          u_xlat62 = (x_5347 + vec2<f32>(x_5355.x, x_5355.y));
          let x_5358 : vec2<f32> = u_xlat62;
          u_xlat62 = ((x_5358 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5361 : vec2<f32> = u_xlat62;
          u_xlat62 = fract(x_5361);
          let x_5363 : i32 = u_xlati3;
          let x_5365 : vec4<f32> = x_3288.x_AdditionalLightsCookieAtlasUVRects[x_5363];
          let x_5367 : vec2<f32> = u_xlat62;
          let x_5369 : i32 = u_xlati3;
          let x_5371 : vec4<f32> = x_3288.x_AdditionalLightsCookieAtlasUVRects[x_5369];
          let x_5373 : vec2<f32> = ((vec2<f32>(x_5365.x, x_5365.y) * x_5367) + vec2<f32>(x_5371.z, x_5371.w));
          let x_5374 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5373.x, x_5373.y, x_5374.z, x_5374.w);
        } else {
          let x_5377 : vec3<f32> = vs_INTERP8;
          let x_5379 : i32 = u_xlati90;
          let x_5382 : i32 = u_xlati90;
          let x_5386 : vec4<f32> = x_3288.x_AdditionalLightsWorldToLights[((x_5379 + 1i) / 4i)][((x_5382 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_5377.y, x_5377.y, x_5377.y, x_5377.y) * x_5386);
          let x_5388 : i32 = u_xlati90;
          let x_5390 : i32 = u_xlati90;
          let x_5393 : vec4<f32> = x_3288.x_AdditionalLightsWorldToLights[(x_5388 / 4i)][(x_5390 % 4i)];
          let x_5394 : vec3<f32> = vs_INTERP8;
          let x_5397 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_5393 * vec4<f32>(x_5394.x, x_5394.x, x_5394.x, x_5394.x)) + x_5397);
          let x_5399 : i32 = u_xlati90;
          let x_5402 : i32 = u_xlati90;
          let x_5406 : vec4<f32> = x_3288.x_AdditionalLightsWorldToLights[((x_5399 + 2i) / 4i)][((x_5402 + 2i) % 4i)];
          let x_5407 : vec3<f32> = vs_INTERP8;
          let x_5410 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_5406 * vec4<f32>(x_5407.z, x_5407.z, x_5407.z, x_5407.z)) + x_5410);
          let x_5412 : vec4<f32> = u_xlat13;
          let x_5413 : i32 = u_xlati90;
          let x_5416 : i32 = u_xlati90;
          let x_5420 : vec4<f32> = x_3288.x_AdditionalLightsWorldToLights[((x_5413 + 3i) / 4i)][((x_5416 + 3i) % 4i)];
          u_xlat13 = (x_5412 + x_5420);
          let x_5422 : vec4<f32> = u_xlat13;
          let x_5424 : vec4<f32> = u_xlat13;
          let x_5426 : vec3<f32> = (vec3<f32>(x_5422.x, x_5422.y, x_5422.z) / vec3<f32>(x_5424.w, x_5424.w, x_5424.w));
          let x_5427 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_5426.x, x_5426.y, x_5426.z, x_5427.w);
          let x_5429 : vec4<f32> = u_xlat13;
          let x_5431 : vec4<f32> = u_xlat13;
          u_xlat62.x = dot(vec3<f32>(x_5429.x, x_5429.y, x_5429.z), vec3<f32>(x_5431.x, x_5431.y, x_5431.z));
          let x_5436 : f32 = u_xlat62.x;
          u_xlat62.x = inverseSqrt(x_5436);
          let x_5439 : vec2<f32> = u_xlat62;
          let x_5441 : vec4<f32> = u_xlat13;
          let x_5443 : vec3<f32> = (vec3<f32>(x_5439.x, x_5439.x, x_5439.x) * vec3<f32>(x_5441.x, x_5441.y, x_5441.z));
          let x_5444 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_5443.x, x_5443.y, x_5443.z, x_5444.w);
          let x_5446 : vec4<f32> = u_xlat13;
          u_xlat62.x = dot(abs(vec3<f32>(x_5446.x, x_5446.y, x_5446.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_5453 : f32 = u_xlat62.x;
          u_xlat62.x = max(x_5453, 0.00000099999999747524f);
          let x_5458 : f32 = u_xlat62.x;
          u_xlat62.x = (1.0f / x_5458);
          let x_5461 : vec2<f32> = u_xlat62;
          let x_5463 : vec4<f32> = u_xlat13;
          let x_5465 : vec3<f32> = (vec3<f32>(x_5461.x, x_5461.x, x_5461.x) * vec3<f32>(x_5463.z, x_5463.x, x_5463.y));
          let x_5466 : vec4<f32> = u_xlat14;
          u_xlat14 = vec4<f32>(x_5465.x, x_5465.y, x_5465.z, x_5466.w);
          let x_5469 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_5469);
          let x_5473 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_5473, 0.0f, 1.0f);
          let x_5477 : vec4<f32> = u_xlat14;
          let x_5479 : vec4<bool> = (vec4<f32>(x_5477.y, x_5477.z, x_5477.y, x_5477.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb66 = vec2<bool>(x_5479.x, x_5479.y);
          let x_5483 : bool = u_xlatb66.x;
          if (x_5483) {
            let x_5488 : f32 = u_xlat14.x;
            x_5484 = x_5488;
          } else {
            let x_5491 : f32 = u_xlat14.x;
            x_5484 = -(x_5491);
          }
          let x_5493 : f32 = x_5484;
          u_xlat66.x = x_5493;
          let x_5496 : bool = u_xlatb66.y;
          if (x_5496) {
            let x_5501 : f32 = u_xlat14.x;
            x_5497 = x_5501;
          } else {
            let x_5504 : f32 = u_xlat14.x;
            x_5497 = -(x_5504);
          }
          let x_5506 : f32 = x_5497;
          u_xlat66.y = x_5506;
          let x_5508 : vec4<f32> = u_xlat13;
          let x_5510 : vec2<f32> = u_xlat62;
          let x_5513 : vec2<f32> = u_xlat66;
          u_xlat62 = ((vec2<f32>(x_5508.x, x_5508.y) * vec2<f32>(x_5510.x, x_5510.x)) + x_5513);
          let x_5515 : vec2<f32> = u_xlat62;
          u_xlat62 = ((x_5515 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5518 : vec2<f32> = u_xlat62;
          u_xlat62 = clamp(x_5518, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_5522 : i32 = u_xlati3;
          let x_5524 : vec4<f32> = x_3288.x_AdditionalLightsCookieAtlasUVRects[x_5522];
          let x_5526 : vec2<f32> = u_xlat62;
          let x_5528 : i32 = u_xlati3;
          let x_5530 : vec4<f32> = x_3288.x_AdditionalLightsCookieAtlasUVRects[x_5528];
          let x_5532 : vec2<f32> = ((vec2<f32>(x_5524.x, x_5524.y) * x_5526) + vec2<f32>(x_5530.z, x_5530.w));
          let x_5533 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5532.x, x_5532.y, x_5533.z, x_5533.w);
        }
      }
      let x_5540 : vec4<f32> = u_xlat12;
      let x_5542 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_5540.x, x_5540.y), 0.0f);
      u_xlat12 = x_5542;
      let x_5544 : bool = u_xlatb8.y;
      if (x_5544) {
        let x_5549 : f32 = u_xlat12.w;
        x_5545 = x_5549;
      } else {
        let x_5552 : f32 = u_xlat12.x;
        x_5545 = x_5552;
      }
      let x_5553 : f32 = x_5545;
      u_xlat62.x = x_5553;
      let x_5556 : bool = u_xlatb8.x;
      if (x_5556) {
        let x_5560 : vec4<f32> = u_xlat12;
        x_5557 = vec3<f32>(x_5560.x, x_5560.y, x_5560.z);
      } else {
        let x_5563 : vec2<f32> = u_xlat62;
        x_5557 = vec3<f32>(x_5563.x, x_5563.x, x_5563.x);
      }
      let x_5565 : vec3<f32> = x_5557;
      let x_5566 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_5565.x, x_5565.y, x_5565.z, x_5566.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_5572 : vec4<f32> = u_xlat12;
    let x_5574 : i32 = u_xlati3;
    let x_5576 : vec4<f32> = x_3731.x_AdditionalLightsColor[x_5574];
    let x_5578 : vec3<f32> = (vec3<f32>(x_5572.x, x_5572.y, x_5572.z) * vec3<f32>(x_5576.x, x_5576.y, x_5576.z));
    let x_5579 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_5578.x, x_5578.y, x_5578.z, x_5579.w);
    let x_5582 : f32 = u_xlat4.x;
    let x_5583 : f32 = u_xlat88;
    u_xlat3.x = (x_5582 * x_5583);
    let x_5586 : vec4<f32> = u_xlat6;
    let x_5588 : vec4<f32> = u_xlat11;
    u_xlat4.x = dot(vec3<f32>(x_5586.x, x_5586.y, x_5586.z), vec3<f32>(x_5588.x, x_5588.y, x_5588.z));
    let x_5593 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_5593, 0.0f, 1.0f);
    let x_5597 : f32 = u_xlat3.x;
    let x_5599 : f32 = u_xlat4.x;
    u_xlat3.x = (x_5597 * x_5599);
    let x_5602 : vec4<f32> = u_xlat3;
    let x_5604 : vec4<f32> = u_xlat12;
    let x_5606 : vec3<f32> = (vec3<f32>(x_5602.x, x_5602.x, x_5602.x) * vec3<f32>(x_5604.x, x_5604.y, x_5604.z));
    let x_5607 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_5606.x, x_5606.y, x_5606.z, x_5607.w);
    let x_5609 : vec4<f32> = u_xlat10;
    let x_5611 : f32 = u_xlat86;
    let x_5614 : vec3<f32> = u_xlat30;
    let x_5615 : vec3<f32> = ((vec3<f32>(x_5609.x, x_5609.y, x_5609.z) * vec3<f32>(x_5611, x_5611, x_5611)) + x_5614);
    let x_5616 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_5615.x, x_5615.y, x_5615.z, x_5616.w);
    let x_5618 : vec4<f32> = u_xlat10;
    let x_5620 : vec4<f32> = u_xlat10;
    u_xlat3.x = dot(vec3<f32>(x_5618.x, x_5618.y, x_5618.z), vec3<f32>(x_5620.x, x_5620.y, x_5620.z));
    let x_5625 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_5625, 1.17549435e-38f);
    let x_5629 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_5629);
    let x_5632 : vec4<f32> = u_xlat3;
    let x_5634 : vec4<f32> = u_xlat10;
    let x_5636 : vec3<f32> = (vec3<f32>(x_5632.x, x_5632.x, x_5632.x) * vec3<f32>(x_5634.x, x_5634.y, x_5634.z));
    let x_5637 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_5636.x, x_5636.y, x_5636.z, x_5637.w);
    let x_5639 : vec4<f32> = u_xlat6;
    let x_5641 : vec4<f32> = u_xlat10;
    u_xlat3.x = dot(vec3<f32>(x_5639.x, x_5639.y, x_5639.z), vec3<f32>(x_5641.x, x_5641.y, x_5641.z));
    let x_5646 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_5646, 0.0f, 1.0f);
    let x_5649 : vec4<f32> = u_xlat11;
    let x_5651 : vec4<f32> = u_xlat10;
    u_xlat4.x = dot(vec3<f32>(x_5649.x, x_5649.y, x_5649.z), vec3<f32>(x_5651.x, x_5651.y, x_5651.z));
    let x_5656 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_5656, 0.0f, 1.0f);
    let x_5660 : f32 = u_xlat3.x;
    let x_5662 : f32 = u_xlat3.x;
    u_xlat3.x = (x_5660 * x_5662);
    let x_5666 : f32 = u_xlat3.x;
    let x_5668 : f32 = u_xlat61.x;
    u_xlat3.x = ((x_5666 * x_5668) + 1.00001001358032226562f);
    let x_5673 : f32 = u_xlat4.x;
    let x_5675 : f32 = u_xlat4.x;
    u_xlat4.x = (x_5673 * x_5675);
    let x_5679 : f32 = u_xlat3.x;
    let x_5681 : f32 = u_xlat3.x;
    u_xlat3.x = (x_5679 * x_5681);
    let x_5685 : f32 = u_xlat4.x;
    u_xlat4.x = max(x_5685, 0.10000000149011611938f);
    let x_5689 : f32 = u_xlat3.x;
    let x_5691 : f32 = u_xlat4.x;
    u_xlat3.x = (x_5689 * x_5691);
    let x_5695 : f32 = u_xlat7.x;
    let x_5697 : f32 = u_xlat3.x;
    u_xlat3.x = (x_5695 * x_5697);
    let x_5700 : f32 = u_xlat87;
    let x_5702 : f32 = u_xlat3.x;
    u_xlat3.x = (x_5700 / x_5702);
    let x_5705 : vec4<f32> = u_xlat3;
    let x_5708 : vec3<f32> = u_xlat2;
    let x_5709 : vec3<f32> = ((vec3<f32>(x_5705.x, x_5705.x, x_5705.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5708);
    let x_5710 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_5709.x, x_5709.y, x_5709.z, x_5710.w);
    let x_5712 : vec4<f32> = u_xlat10;
    let x_5714 : vec4<f32> = u_xlat12;
    let x_5717 : vec4<f32> = u_xlat9;
    let x_5719 : vec3<f32> = ((vec3<f32>(x_5712.x, x_5712.y, x_5712.z) * vec3<f32>(x_5714.x, x_5714.y, x_5714.z)) + vec3<f32>(x_5717.x, x_5717.y, x_5717.z));
    let x_5720 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5719.x, x_5719.y, x_5719.z, x_5720.w);

    continuing {
      let x_5722 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5722 + bitcast<u32>(1i));
    }
  }
  let x_5724 : vec4<f32> = u_xlat5;
  let x_5726 : vec2<f32> = u_xlat34;
  let x_5729 : vec3<f32> = u_xlat31;
  u_xlat2 = ((vec3<f32>(x_5724.x, x_5724.y, x_5724.z) * vec3<f32>(x_5726.x, x_5726.x, x_5726.x)) + x_5729);
  let x_5731 : vec4<f32> = u_xlat9;
  let x_5733 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_5731.x, x_5731.y, x_5731.z) + x_5733);
  let x_5735 : vec4<f32> = vs_INTERP6;
  let x_5737 : vec3<f32> = u_xlat0;
  let x_5739 : vec3<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_5735.w, x_5735.w, x_5735.w) * x_5737) + x_5739);
  let x_5742 : f32 = u_xlat28.x;
  let x_5744 : f32 = u_xlat28.x;
  u_xlat81 = (x_5742 * -(x_5744));
  let x_5747 : f32 = u_xlat81;
  u_xlat81 = exp2(x_5747);
  let x_5749 : vec3<f32> = u_xlat0;
  let x_5751 : vec4<f32> = x_53.unity_FogColor;
  u_xlat0 = (x_5749 + -(vec3<f32>(x_5751.x, x_5751.y, x_5751.z)));
  let x_5757 : f32 = u_xlat81;
  let x_5759 : vec3<f32> = u_xlat0;
  let x_5762 : vec4<f32> = x_53.unity_FogColor;
  let x_5764 : vec3<f32> = ((vec3<f32>(x_5757, x_5757, x_5757) * x_5759) + vec3<f32>(x_5762.x, x_5762.y, x_5762.z));
  let x_5765 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5764.x, x_5764.y, x_5764.z, x_5765.w);
  let x_5767 : bool = u_xlatb55;
  if (x_5767) {
    let x_5772 : f32 = u_xlat1.x;
    x_5768 = x_5772;
  } else {
    x_5768 = 1.0f;
  }
  let x_5774 : f32 = x_5768;
  SV_Target0.w = x_5774;
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


