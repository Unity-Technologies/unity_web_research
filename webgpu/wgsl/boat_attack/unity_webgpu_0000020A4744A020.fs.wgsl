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

@group(1) @binding(3) var<uniform> x_131 : LightShadows;

var<private> u_xlatb78 : bool;

var<private> u_xlatb80 : bool;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat80 : f32;

var<private> u_xlatb82 : bool;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlat31 : f32;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb30 : bool;

var<private> u_xlatb56 : bool;

var<private> u_xlat30 : vec3<f32>;

var<private> u_xlatb1 : bool;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlatb53 : bool;

var<private> u_xlatb27 : vec3<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_1585 : UnityPerDraw;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat83 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb32 : vec2<bool>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat58 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb4 : bool;

@group(1) @binding(4) var<uniform> x_3075 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat85 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu78 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu4 : u32;

var<private> u_xlati59 : i32;

var<private> u_xlati4 : i32;

@group(1) @binding(1) var<uniform> x_3533 : AdditionalLights;

var<private> u_xlat86 : f32;

var<private> u_xlati86 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb86 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

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
  var x_1498 : f32;
  var x_1546 : f32;
  var x_1672 : f32;
  var x_1684 : f32;
  var x_1696 : f32;
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
  var x_3158 : f32;
  var x_3169 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3689 : f32;
  var x_3699 : f32;
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
  var x_5283 : f32;
  var x_5296 : f32;
  var x_5354 : f32;
  var x_5365 : vec3<f32>;
  var x_5551 : f32;
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
  let x_133 : vec4<f32> = x_131.x_MainLightWorldToShadow[0i][1i];
  let x_135 : vec3<f32> = (vec3<f32>(x_122.y, x_122.y, x_122.y) * vec3<f32>(x_133.x, x_133.y, x_133.z));
  let x_136 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
  let x_139 : vec4<f32> = x_131.x_MainLightWorldToShadow[0i][0i];
  let x_141 : vec3<f32> = vs_INTERP8;
  let x_144 : vec4<f32> = u_xlat4;
  let x_146 : vec3<f32> = ((vec3<f32>(x_139.x, x_139.y, x_139.z) * vec3<f32>(x_141.x, x_141.x, x_141.x)) + vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_147 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_151 : vec4<f32> = x_131.x_MainLightWorldToShadow[0i][2i];
  let x_153 : vec3<f32> = vs_INTERP8;
  let x_156 : vec4<f32> = u_xlat4;
  let x_158 : vec3<f32> = ((vec3<f32>(x_151.x, x_151.y, x_151.z) * vec3<f32>(x_153.z, x_153.z, x_153.z)) + vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_159 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_161 : vec4<f32> = u_xlat4;
  let x_165 : vec4<f32> = x_131.x_MainLightWorldToShadow[0i][3i];
  let x_167 : vec3<f32> = (vec3<f32>(x_161.x, x_161.y, x_161.z) + vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_168 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_176 : f32 = x_131.x_MainLightShadowParams.y;
  u_xlatb78 = (0.0f < x_176);
  let x_178 : bool = u_xlatb78;
  if (x_178) {
    let x_183 : f32 = x_131.x_MainLightShadowParams.y;
    u_xlatb80 = (x_183 == 1.0f);
    let x_185 : bool = u_xlatb80;
    if (x_185) {
      let x_189 : vec4<f32> = u_xlat4;
      let x_193 : vec4<f32> = x_131.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_189.x, x_189.y, x_189.x, x_189.y) + x_193);
      let x_197 : vec4<f32> = u_xlat5;
      let x_198 : vec2<f32> = vec2<f32>(x_197.x, x_197.y);
      let x_201 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_198.x, x_198.y, x_201);
      let x_214 : vec3<f32> = txVec0;
      let x_216 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_214.xy, x_214.z);
      u_xlat6.x = x_216;
      let x_219 : vec4<f32> = u_xlat5;
      let x_220 : vec2<f32> = vec2<f32>(x_219.z, x_219.w);
      let x_222 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_220.x, x_220.y, x_222);
      let x_229 : vec3<f32> = txVec1;
      let x_231 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_229.xy, x_229.z);
      u_xlat6.y = x_231;
      let x_233 : vec4<f32> = u_xlat4;
      let x_237 : vec4<f32> = x_131.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_233.x, x_233.y, x_233.x, x_233.y) + x_237);
      let x_240 : vec4<f32> = u_xlat5;
      let x_241 : vec2<f32> = vec2<f32>(x_240.x, x_240.y);
      let x_243 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_241.x, x_241.y, x_243);
      let x_250 : vec3<f32> = txVec2;
      let x_252 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_250.xy, x_250.z);
      u_xlat6.z = x_252;
      let x_255 : vec4<f32> = u_xlat5;
      let x_256 : vec2<f32> = vec2<f32>(x_255.z, x_255.w);
      let x_258 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_256.x, x_256.y, x_258);
      let x_265 : vec3<f32> = txVec3;
      let x_267 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_265.xy, x_265.z);
      u_xlat6.w = x_267;
      let x_271 : vec4<f32> = u_xlat6;
      u_xlat80 = dot(x_271, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_278 : f32 = x_131.x_MainLightShadowParams.y;
      u_xlatb82 = (x_278 == 2.0f);
      let x_280 : bool = u_xlatb82;
      if (x_280) {
        let x_283 : vec4<f32> = u_xlat4;
        let x_287 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_292 : vec2<f32> = ((vec2<f32>(x_283.x, x_283.y) * vec2<f32>(x_287.z, x_287.w)) + vec2<f32>(0.5f, 0.5f));
        let x_293 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_292.x, x_292.y, x_293.z, x_293.w);
        let x_295 : vec4<f32> = u_xlat5;
        let x_297 : vec2<f32> = floor(vec2<f32>(x_295.x, x_295.y));
        let x_298 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_297.x, x_297.y, x_298.z, x_298.w);
        let x_302 : vec4<f32> = u_xlat4;
        let x_305 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_308 : vec4<f32> = u_xlat5;
        u_xlat57 = ((vec2<f32>(x_302.x, x_302.y) * vec2<f32>(x_305.z, x_305.w)) + -(vec2<f32>(x_308.x, x_308.y)));
        let x_312 : vec2<f32> = u_xlat57;
        u_xlat6 = (vec4<f32>(x_312.x, x_312.x, x_312.y, x_312.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_317 : vec4<f32> = u_xlat6;
        let x_319 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_317.x, x_317.x, x_317.z, x_317.z) * vec4<f32>(x_319.x, x_319.x, x_319.z, x_319.z));
        let x_322 : vec4<f32> = u_xlat7;
        let x_326 : vec2<f32> = (vec2<f32>(x_322.y, x_322.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_327 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_326.x, x_327.y, x_326.y, x_327.w);
        let x_329 : vec4<f32> = u_xlat7;
        let x_332 : vec2<f32> = u_xlat57;
        let x_334 : vec2<f32> = ((vec2<f32>(x_329.x, x_329.z) * vec2<f32>(0.5f, 0.5f)) + -(x_332));
        let x_335 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_334.x, x_334.y, x_335.z, x_335.w);
        let x_338 : vec2<f32> = u_xlat57;
        u_xlat59 = (-(x_338) + vec2<f32>(1.0f, 1.0f));
        let x_343 : vec2<f32> = u_xlat57;
        let x_345 : vec2<f32> = min(x_343, vec2<f32>(0.0f, 0.0f));
        let x_346 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_345.x, x_345.y, x_346.z, x_346.w);
        let x_348 : vec4<f32> = u_xlat8;
        let x_351 : vec4<f32> = u_xlat8;
        let x_354 : vec2<f32> = u_xlat59;
        let x_355 : vec2<f32> = ((-(vec2<f32>(x_348.x, x_348.y)) * vec2<f32>(x_351.x, x_351.y)) + x_354);
        let x_356 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_355.x, x_355.y, x_356.z, x_356.w);
        let x_358 : vec2<f32> = u_xlat57;
        u_xlat57 = max(x_358, vec2<f32>(0.0f, 0.0f));
        let x_360 : vec2<f32> = u_xlat57;
        let x_362 : vec2<f32> = u_xlat57;
        let x_364 : vec4<f32> = u_xlat6;
        u_xlat57 = ((-(x_360) * x_362) + vec2<f32>(x_364.y, x_364.w));
        let x_367 : vec4<f32> = u_xlat8;
        let x_369 : vec2<f32> = (vec2<f32>(x_367.x, x_367.y) + vec2<f32>(1.0f, 1.0f));
        let x_370 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_369.x, x_369.y, x_370.z, x_370.w);
        let x_372 : vec2<f32> = u_xlat57;
        u_xlat57 = (x_372 + vec2<f32>(1.0f, 1.0f));
        let x_375 : vec4<f32> = u_xlat7;
        let x_379 : vec2<f32> = (vec2<f32>(x_375.x, x_375.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_380 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_379.x, x_379.y, x_380.z, x_380.w);
        let x_382 : vec2<f32> = u_xlat59;
        let x_383 : vec2<f32> = (x_382 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_384 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_383.x, x_383.y, x_384.z, x_384.w);
        let x_386 : vec4<f32> = u_xlat8;
        let x_388 : vec2<f32> = (vec2<f32>(x_386.x, x_386.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_389 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_388.x, x_388.y, x_389.z, x_389.w);
        let x_392 : vec2<f32> = u_xlat57;
        let x_393 : vec2<f32> = (x_392 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_394 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_393.x, x_393.y, x_394.z, x_394.w);
        let x_396 : vec4<f32> = u_xlat6;
        u_xlat57 = (vec2<f32>(x_396.y, x_396.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_400 : f32 = u_xlat8.x;
        u_xlat9.z = x_400;
        let x_403 : f32 = u_xlat57.x;
        u_xlat9.w = x_403;
        let x_406 : f32 = u_xlat10.x;
        u_xlat7.z = x_406;
        let x_409 : f32 = u_xlat6.x;
        u_xlat7.w = x_409;
        let x_412 : vec4<f32> = u_xlat7;
        let x_414 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_412.z, x_412.w, x_412.x, x_412.z) + vec4<f32>(x_414.z, x_414.w, x_414.x, x_414.z));
        let x_418 : f32 = u_xlat9.y;
        u_xlat8.z = x_418;
        let x_421 : f32 = u_xlat57.y;
        u_xlat8.w = x_421;
        let x_424 : f32 = u_xlat7.y;
        u_xlat10.z = x_424;
        let x_427 : f32 = u_xlat6.z;
        u_xlat10.w = x_427;
        let x_429 : vec4<f32> = u_xlat8;
        let x_431 : vec4<f32> = u_xlat10;
        let x_433 : vec3<f32> = (vec3<f32>(x_429.z, x_429.y, x_429.w) + vec3<f32>(x_431.z, x_431.y, x_431.w));
        let x_434 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
        let x_436 : vec4<f32> = u_xlat7;
        let x_438 : vec4<f32> = u_xlat11;
        let x_440 : vec3<f32> = (vec3<f32>(x_436.x, x_436.z, x_436.w) / vec3<f32>(x_438.z, x_438.w, x_438.y));
        let x_441 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
        let x_443 : vec4<f32> = u_xlat7;
        let x_449 : vec3<f32> = (vec3<f32>(x_443.x, x_443.y, x_443.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_450 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
        let x_452 : vec4<f32> = u_xlat10;
        let x_454 : vec4<f32> = u_xlat6;
        let x_456 : vec3<f32> = (vec3<f32>(x_452.z, x_452.y, x_452.w) / vec3<f32>(x_454.x, x_454.y, x_454.z));
        let x_457 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_456.x, x_456.y, x_456.z, x_457.w);
        let x_459 : vec4<f32> = u_xlat8;
        let x_461 : vec3<f32> = (vec3<f32>(x_459.x, x_459.y, x_459.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_462 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462.w);
        let x_464 : vec4<f32> = u_xlat7;
        let x_467 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_469 : vec3<f32> = (vec3<f32>(x_464.y, x_464.x, x_464.z) * vec3<f32>(x_467.x, x_467.x, x_467.x));
        let x_470 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
        let x_472 : vec4<f32> = u_xlat8;
        let x_475 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_477 : vec3<f32> = (vec3<f32>(x_472.x, x_472.y, x_472.z) * vec3<f32>(x_475.y, x_475.y, x_475.y));
        let x_478 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
        let x_481 : f32 = u_xlat8.x;
        u_xlat7.w = x_481;
        let x_483 : vec4<f32> = u_xlat5;
        let x_486 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_489 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_483.x, x_483.y, x_483.x, x_483.y) * vec4<f32>(x_486.x, x_486.y, x_486.x, x_486.y)) + vec4<f32>(x_489.y, x_489.w, x_489.x, x_489.w));
        let x_492 : vec4<f32> = u_xlat5;
        let x_495 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_498 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_492.x, x_492.y) * vec2<f32>(x_495.x, x_495.y)) + vec2<f32>(x_498.z, x_498.w));
        let x_502 : f32 = u_xlat7.y;
        u_xlat8.w = x_502;
        let x_504 : vec4<f32> = u_xlat8;
        let x_505 : vec2<f32> = vec2<f32>(x_504.y, x_504.z);
        let x_506 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_506.x, x_505.x, x_506.z, x_505.y);
        let x_508 : vec4<f32> = u_xlat5;
        let x_511 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_514 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_508.x, x_508.y, x_508.x, x_508.y) * vec4<f32>(x_511.x, x_511.y, x_511.x, x_511.y)) + vec4<f32>(x_514.x, x_514.y, x_514.z, x_514.y));
        let x_517 : vec4<f32> = u_xlat5;
        let x_520 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_523 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_517.x, x_517.y, x_517.x, x_517.y) * vec4<f32>(x_520.x, x_520.y, x_520.x, x_520.y)) + vec4<f32>(x_523.w, x_523.y, x_523.w, x_523.z));
        let x_526 : vec4<f32> = u_xlat5;
        let x_529 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_532 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_526.x, x_526.y, x_526.x, x_526.y) * vec4<f32>(x_529.x, x_529.y, x_529.x, x_529.y)) + vec4<f32>(x_532.x, x_532.w, x_532.z, x_532.w));
        let x_536 : vec4<f32> = u_xlat6;
        let x_538 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_536.x, x_536.x, x_536.x, x_536.y) * vec4<f32>(x_538.z, x_538.w, x_538.y, x_538.z));
        let x_542 : vec4<f32> = u_xlat6;
        let x_544 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_542.y, x_542.y, x_542.z, x_542.z) * x_544);
        let x_548 : f32 = u_xlat6.z;
        let x_550 : f32 = u_xlat11.y;
        u_xlat82 = (x_548 * x_550);
        let x_553 : vec4<f32> = u_xlat9;
        let x_554 : vec2<f32> = vec2<f32>(x_553.x, x_553.y);
        let x_556 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_554.x, x_554.y, x_556);
        let x_563 : vec3<f32> = txVec4;
        let x_565 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_563.xy, x_563.z);
        u_xlat5.x = x_565;
        let x_568 : vec4<f32> = u_xlat9;
        let x_569 : vec2<f32> = vec2<f32>(x_568.z, x_568.w);
        let x_571 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_569.x, x_569.y, x_571);
        let x_579 : vec3<f32> = txVec5;
        let x_581 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_579.xy, x_579.z);
        u_xlat31 = x_581;
        let x_582 : f32 = u_xlat31;
        let x_584 : f32 = u_xlat12.y;
        u_xlat31 = (x_582 * x_584);
        let x_587 : f32 = u_xlat12.x;
        let x_589 : f32 = u_xlat5.x;
        let x_591 : f32 = u_xlat31;
        u_xlat5.x = ((x_587 * x_589) + x_591);
        let x_595 : vec2<f32> = u_xlat57;
        let x_597 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_595.x, x_595.y, x_597);
        let x_604 : vec3<f32> = txVec6;
        let x_606 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_604.xy, x_604.z);
        u_xlat31 = x_606;
        let x_608 : f32 = u_xlat12.z;
        let x_609 : f32 = u_xlat31;
        let x_612 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_608 * x_609) + x_612);
        let x_616 : vec4<f32> = u_xlat8;
        let x_617 : vec2<f32> = vec2<f32>(x_616.x, x_616.y);
        let x_619 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_617.x, x_617.y, x_619);
        let x_626 : vec3<f32> = txVec7;
        let x_628 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_626.xy, x_626.z);
        u_xlat31 = x_628;
        let x_630 : f32 = u_xlat12.w;
        let x_631 : f32 = u_xlat31;
        let x_634 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_630 * x_631) + x_634);
        let x_638 : vec4<f32> = u_xlat10;
        let x_639 : vec2<f32> = vec2<f32>(x_638.x, x_638.y);
        let x_641 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_639.x, x_639.y, x_641);
        let x_648 : vec3<f32> = txVec8;
        let x_650 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_648.xy, x_648.z);
        u_xlat31 = x_650;
        let x_652 : f32 = u_xlat13.x;
        let x_653 : f32 = u_xlat31;
        let x_656 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_652 * x_653) + x_656);
        let x_660 : vec4<f32> = u_xlat10;
        let x_661 : vec2<f32> = vec2<f32>(x_660.z, x_660.w);
        let x_663 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_661.x, x_661.y, x_663);
        let x_670 : vec3<f32> = txVec9;
        let x_672 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_670.xy, x_670.z);
        u_xlat31 = x_672;
        let x_674 : f32 = u_xlat13.y;
        let x_675 : f32 = u_xlat31;
        let x_678 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_674 * x_675) + x_678);
        let x_682 : vec4<f32> = u_xlat8;
        let x_683 : vec2<f32> = vec2<f32>(x_682.z, x_682.w);
        let x_685 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_683.x, x_683.y, x_685);
        let x_692 : vec3<f32> = txVec10;
        let x_694 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_692.xy, x_692.z);
        u_xlat31 = x_694;
        let x_696 : f32 = u_xlat13.z;
        let x_697 : f32 = u_xlat31;
        let x_700 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_696 * x_697) + x_700);
        let x_704 : vec4<f32> = u_xlat7;
        let x_705 : vec2<f32> = vec2<f32>(x_704.x, x_704.y);
        let x_707 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_705.x, x_705.y, x_707);
        let x_714 : vec3<f32> = txVec11;
        let x_716 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_714.xy, x_714.z);
        u_xlat31 = x_716;
        let x_718 : f32 = u_xlat13.w;
        let x_719 : f32 = u_xlat31;
        let x_722 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_718 * x_719) + x_722);
        let x_726 : vec4<f32> = u_xlat7;
        let x_727 : vec2<f32> = vec2<f32>(x_726.z, x_726.w);
        let x_729 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_727.x, x_727.y, x_729);
        let x_736 : vec3<f32> = txVec12;
        let x_738 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_736.xy, x_736.z);
        u_xlat31 = x_738;
        let x_739 : f32 = u_xlat82;
        let x_740 : f32 = u_xlat31;
        let x_743 : f32 = u_xlat5.x;
        u_xlat80 = ((x_739 * x_740) + x_743);
      } else {
        let x_746 : vec4<f32> = u_xlat4;
        let x_749 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_752 : vec2<f32> = ((vec2<f32>(x_746.x, x_746.y) * vec2<f32>(x_749.z, x_749.w)) + vec2<f32>(0.5f, 0.5f));
        let x_753 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_752.x, x_752.y, x_753.z, x_753.w);
        let x_755 : vec4<f32> = u_xlat5;
        let x_757 : vec2<f32> = floor(vec2<f32>(x_755.x, x_755.y));
        let x_758 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_757.x, x_757.y, x_758.z, x_758.w);
        let x_760 : vec4<f32> = u_xlat4;
        let x_763 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_766 : vec4<f32> = u_xlat5;
        u_xlat57 = ((vec2<f32>(x_760.x, x_760.y) * vec2<f32>(x_763.z, x_763.w)) + -(vec2<f32>(x_766.x, x_766.y)));
        let x_770 : vec2<f32> = u_xlat57;
        u_xlat6 = (vec4<f32>(x_770.x, x_770.x, x_770.y, x_770.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_773 : vec4<f32> = u_xlat6;
        let x_775 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_773.x, x_773.x, x_773.z, x_773.z) * vec4<f32>(x_775.x, x_775.x, x_775.z, x_775.z));
        let x_778 : vec4<f32> = u_xlat7;
        let x_782 : vec2<f32> = (vec2<f32>(x_778.y, x_778.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_783 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_783.x, x_782.x, x_783.z, x_782.y);
        let x_785 : vec4<f32> = u_xlat7;
        let x_788 : vec2<f32> = u_xlat57;
        let x_790 : vec2<f32> = ((vec2<f32>(x_785.x, x_785.z) * vec2<f32>(0.5f, 0.5f)) + -(x_788));
        let x_791 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_790.x, x_791.y, x_790.y, x_791.w);
        let x_793 : vec2<f32> = u_xlat57;
        let x_795 : vec2<f32> = (-(x_793) + vec2<f32>(1.0f, 1.0f));
        let x_796 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_795.x, x_795.y, x_796.z, x_796.w);
        let x_798 : vec2<f32> = u_xlat57;
        u_xlat59 = min(x_798, vec2<f32>(0.0f, 0.0f));
        let x_800 : vec2<f32> = u_xlat59;
        let x_802 : vec2<f32> = u_xlat59;
        let x_804 : vec4<f32> = u_xlat7;
        let x_806 : vec2<f32> = ((-(x_800) * x_802) + vec2<f32>(x_804.x, x_804.y));
        let x_807 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_806.x, x_806.y, x_807.z, x_807.w);
        let x_809 : vec2<f32> = u_xlat57;
        u_xlat59 = max(x_809, vec2<f32>(0.0f, 0.0f));
        let x_812 : vec2<f32> = u_xlat59;
        let x_814 : vec2<f32> = u_xlat59;
        let x_816 : vec4<f32> = u_xlat6;
        let x_818 : vec2<f32> = ((-(x_812) * x_814) + vec2<f32>(x_816.y, x_816.w));
        let x_819 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_818.x, x_819.y, x_818.y);
        let x_821 : vec4<f32> = u_xlat7;
        let x_824 : vec2<f32> = (vec2<f32>(x_821.x, x_821.y) + vec2<f32>(2.0f, 2.0f));
        let x_825 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_824.x, x_824.y, x_825.z, x_825.w);
        let x_827 : vec3<f32> = u_xlat32;
        let x_829 : vec2<f32> = (vec2<f32>(x_827.x, x_827.z) + vec2<f32>(2.0f, 2.0f));
        let x_830 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_830.x, x_829.x, x_830.z, x_829.y);
        let x_833 : f32 = u_xlat6.y;
        u_xlat9.z = (x_833 * 0.08163200318813323975f);
        let x_837 : vec4<f32> = u_xlat6;
        let x_840 : vec3<f32> = (vec3<f32>(x_837.z, x_837.x, x_837.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_841 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
        let x_843 : vec4<f32> = u_xlat7;
        let x_846 : vec2<f32> = (vec2<f32>(x_843.x, x_843.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_847 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_846.x, x_846.y, x_847.z, x_847.w);
        let x_850 : f32 = u_xlat10.y;
        u_xlat9.x = x_850;
        let x_852 : vec2<f32> = u_xlat57;
        let x_859 : vec2<f32> = ((vec2<f32>(x_852.x, x_852.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_860 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_860.x, x_859.x, x_860.z, x_859.y);
        let x_862 : vec2<f32> = u_xlat57;
        let x_866 : vec2<f32> = ((vec2<f32>(x_862.x, x_862.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_867 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_866.x, x_867.y, x_866.y, x_867.w);
        let x_870 : f32 = u_xlat6.x;
        u_xlat7.y = x_870;
        let x_873 : f32 = u_xlat8.y;
        u_xlat7.w = x_873;
        let x_875 : vec4<f32> = u_xlat7;
        let x_876 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_875 + x_876);
        let x_878 : vec2<f32> = u_xlat57;
        let x_881 : vec2<f32> = ((vec2<f32>(x_878.y, x_878.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_882 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_882.x, x_881.x, x_882.z, x_881.y);
        let x_884 : vec2<f32> = u_xlat57;
        let x_887 : vec2<f32> = ((vec2<f32>(x_884.y, x_884.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_888 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_887.x, x_888.y, x_887.y, x_888.w);
        let x_891 : f32 = u_xlat6.y;
        u_xlat8.y = x_891;
        let x_893 : vec4<f32> = u_xlat8;
        let x_894 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_893 + x_894);
        let x_896 : vec4<f32> = u_xlat7;
        let x_897 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_896 / x_897);
        let x_899 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_899 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_905 : vec4<f32> = u_xlat8;
        let x_906 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_905 / x_906);
        let x_908 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_908 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_910 : vec4<f32> = u_xlat7;
        let x_913 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_910.w, x_910.x, x_910.y, x_910.z) * vec4<f32>(x_913.x, x_913.x, x_913.x, x_913.x));
        let x_916 : vec4<f32> = u_xlat8;
        let x_919 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_916.x, x_916.w, x_916.y, x_916.z) * vec4<f32>(x_919.y, x_919.y, x_919.y, x_919.y));
        let x_922 : vec4<f32> = u_xlat7;
        let x_923 : vec3<f32> = vec3<f32>(x_922.y, x_922.z, x_922.w);
        let x_924 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_923.x, x_924.y, x_923.y, x_923.z);
        let x_927 : f32 = u_xlat8.x;
        u_xlat10.y = x_927;
        let x_929 : vec4<f32> = u_xlat5;
        let x_932 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_935 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_929.x, x_929.y, x_929.x, x_929.y) * vec4<f32>(x_932.x, x_932.y, x_932.x, x_932.y)) + vec4<f32>(x_935.x, x_935.y, x_935.z, x_935.y));
        let x_938 : vec4<f32> = u_xlat5;
        let x_941 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_944 : vec4<f32> = u_xlat10;
        u_xlat57 = ((vec2<f32>(x_938.x, x_938.y) * vec2<f32>(x_941.x, x_941.y)) + vec2<f32>(x_944.w, x_944.y));
        let x_948 : f32 = u_xlat10.y;
        u_xlat7.y = x_948;
        let x_951 : f32 = u_xlat8.z;
        u_xlat10.y = x_951;
        let x_953 : vec4<f32> = u_xlat5;
        let x_956 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_959 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_953.x, x_953.y, x_953.x, x_953.y) * vec4<f32>(x_956.x, x_956.y, x_956.x, x_956.y)) + vec4<f32>(x_959.x, x_959.y, x_959.z, x_959.y));
        let x_962 : vec4<f32> = u_xlat5;
        let x_965 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_968 : vec4<f32> = u_xlat10;
        let x_970 : vec2<f32> = ((vec2<f32>(x_962.x, x_962.y) * vec2<f32>(x_965.x, x_965.y)) + vec2<f32>(x_968.w, x_968.y));
        let x_971 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_970.x, x_970.y, x_971.z, x_971.w);
        let x_974 : f32 = u_xlat10.y;
        u_xlat7.z = x_974;
        let x_977 : vec4<f32> = u_xlat5;
        let x_980 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_983 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_977.x, x_977.y, x_977.x, x_977.y) * vec4<f32>(x_980.x, x_980.y, x_980.x, x_980.y)) + vec4<f32>(x_983.x, x_983.y, x_983.x, x_983.z));
        let x_987 : f32 = u_xlat8.w;
        u_xlat10.y = x_987;
        let x_990 : vec4<f32> = u_xlat5;
        let x_993 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_996 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_990.x, x_990.y, x_990.x, x_990.y) * vec4<f32>(x_993.x, x_993.y, x_993.x, x_993.y)) + vec4<f32>(x_996.x, x_996.y, x_996.z, x_996.y));
        let x_1000 : vec4<f32> = u_xlat5;
        let x_1003 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_1006 : vec4<f32> = u_xlat10;
        u_xlat33 = ((vec2<f32>(x_1000.x, x_1000.y) * vec2<f32>(x_1003.x, x_1003.y)) + vec2<f32>(x_1006.w, x_1006.y));
        let x_1010 : f32 = u_xlat10.y;
        u_xlat7.w = x_1010;
        let x_1013 : vec4<f32> = u_xlat5;
        let x_1016 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_1019 : vec4<f32> = u_xlat7;
        u_xlat65 = ((vec2<f32>(x_1013.x, x_1013.y) * vec2<f32>(x_1016.x, x_1016.y)) + vec2<f32>(x_1019.x, x_1019.w));
        let x_1022 : vec4<f32> = u_xlat10;
        let x_1023 : vec3<f32> = vec3<f32>(x_1022.x, x_1022.z, x_1022.w);
        let x_1024 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1023.x, x_1024.y, x_1023.y, x_1023.z);
        let x_1026 : vec4<f32> = u_xlat5;
        let x_1029 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_1032 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1026.x, x_1026.y, x_1026.x, x_1026.y) * vec4<f32>(x_1029.x, x_1029.y, x_1029.x, x_1029.y)) + vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1032.y));
        let x_1036 : vec4<f32> = u_xlat5;
        let x_1039 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_1042 : vec4<f32> = u_xlat8;
        u_xlat60 = ((vec2<f32>(x_1036.x, x_1036.y) * vec2<f32>(x_1039.x, x_1039.y)) + vec2<f32>(x_1042.w, x_1042.y));
        let x_1046 : f32 = u_xlat7.x;
        u_xlat8.x = x_1046;
        let x_1048 : vec4<f32> = u_xlat5;
        let x_1051 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_1054 : vec4<f32> = u_xlat8;
        let x_1056 : vec2<f32> = ((vec2<f32>(x_1048.x, x_1048.y) * vec2<f32>(x_1051.x, x_1051.y)) + vec2<f32>(x_1054.x, x_1054.y));
        let x_1057 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1056.x, x_1056.y, x_1057.z, x_1057.w);
        let x_1060 : vec4<f32> = u_xlat6;
        let x_1062 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1060.x, x_1060.x, x_1060.x, x_1060.x) * x_1062);
        let x_1065 : vec4<f32> = u_xlat6;
        let x_1067 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1065.y, x_1065.y, x_1065.y, x_1065.y) * x_1067);
        let x_1070 : vec4<f32> = u_xlat6;
        let x_1072 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1070.z, x_1070.z, x_1070.z, x_1070.z) * x_1072);
        let x_1074 : vec4<f32> = u_xlat6;
        let x_1076 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1074.w, x_1074.w, x_1074.w, x_1074.w) * x_1076);
        let x_1079 : vec4<f32> = u_xlat11;
        let x_1080 : vec2<f32> = vec2<f32>(x_1079.x, x_1079.y);
        let x_1082 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1080.x, x_1080.y, x_1082);
        let x_1089 : vec3<f32> = txVec13;
        let x_1091 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1089.xy, x_1089.z);
        u_xlat82 = x_1091;
        let x_1093 : vec4<f32> = u_xlat11;
        let x_1094 : vec2<f32> = vec2<f32>(x_1093.z, x_1093.w);
        let x_1096 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1094.x, x_1094.y, x_1096);
        let x_1103 : vec3<f32> = txVec14;
        let x_1105 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1103.xy, x_1103.z);
        u_xlat7.x = x_1105;
        let x_1108 : f32 = u_xlat7.x;
        let x_1110 : f32 = u_xlat16.y;
        u_xlat7.x = (x_1108 * x_1110);
        let x_1114 : f32 = u_xlat16.x;
        let x_1115 : f32 = u_xlat82;
        let x_1118 : f32 = u_xlat7.x;
        u_xlat82 = ((x_1114 * x_1115) + x_1118);
        let x_1121 : vec2<f32> = u_xlat57;
        let x_1123 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1121.x, x_1121.y, x_1123);
        let x_1130 : vec3<f32> = txVec15;
        let x_1132 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1130.xy, x_1130.z);
        u_xlat57.x = x_1132;
        let x_1135 : f32 = u_xlat16.z;
        let x_1137 : f32 = u_xlat57.x;
        let x_1139 : f32 = u_xlat82;
        u_xlat82 = ((x_1135 * x_1137) + x_1139);
        let x_1142 : vec4<f32> = u_xlat14;
        let x_1143 : vec2<f32> = vec2<f32>(x_1142.x, x_1142.y);
        let x_1145 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1143.x, x_1143.y, x_1145);
        let x_1152 : vec3<f32> = txVec16;
        let x_1154 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1152.xy, x_1152.z);
        u_xlat57.x = x_1154;
        let x_1157 : f32 = u_xlat16.w;
        let x_1159 : f32 = u_xlat57.x;
        let x_1161 : f32 = u_xlat82;
        u_xlat82 = ((x_1157 * x_1159) + x_1161);
        let x_1164 : vec4<f32> = u_xlat12;
        let x_1165 : vec2<f32> = vec2<f32>(x_1164.x, x_1164.y);
        let x_1167 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1165.x, x_1165.y, x_1167);
        let x_1174 : vec3<f32> = txVec17;
        let x_1176 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1174.xy, x_1174.z);
        u_xlat57.x = x_1176;
        let x_1179 : f32 = u_xlat17.x;
        let x_1181 : f32 = u_xlat57.x;
        let x_1183 : f32 = u_xlat82;
        u_xlat82 = ((x_1179 * x_1181) + x_1183);
        let x_1186 : vec4<f32> = u_xlat12;
        let x_1187 : vec2<f32> = vec2<f32>(x_1186.z, x_1186.w);
        let x_1189 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1187.x, x_1187.y, x_1189);
        let x_1196 : vec3<f32> = txVec18;
        let x_1198 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1196.xy, x_1196.z);
        u_xlat57.x = x_1198;
        let x_1201 : f32 = u_xlat17.y;
        let x_1203 : f32 = u_xlat57.x;
        let x_1205 : f32 = u_xlat82;
        u_xlat82 = ((x_1201 * x_1203) + x_1205);
        let x_1208 : vec4<f32> = u_xlat13;
        let x_1209 : vec2<f32> = vec2<f32>(x_1208.x, x_1208.y);
        let x_1211 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1209.x, x_1209.y, x_1211);
        let x_1218 : vec3<f32> = txVec19;
        let x_1220 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1218.xy, x_1218.z);
        u_xlat57.x = x_1220;
        let x_1223 : f32 = u_xlat17.z;
        let x_1225 : f32 = u_xlat57.x;
        let x_1227 : f32 = u_xlat82;
        u_xlat82 = ((x_1223 * x_1225) + x_1227);
        let x_1230 : vec4<f32> = u_xlat14;
        let x_1231 : vec2<f32> = vec2<f32>(x_1230.z, x_1230.w);
        let x_1233 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1231.x, x_1231.y, x_1233);
        let x_1240 : vec3<f32> = txVec20;
        let x_1242 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1240.xy, x_1240.z);
        u_xlat57.x = x_1242;
        let x_1245 : f32 = u_xlat17.w;
        let x_1247 : f32 = u_xlat57.x;
        let x_1249 : f32 = u_xlat82;
        u_xlat82 = ((x_1245 * x_1247) + x_1249);
        let x_1252 : vec4<f32> = u_xlat15;
        let x_1253 : vec2<f32> = vec2<f32>(x_1252.x, x_1252.y);
        let x_1255 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1253.x, x_1253.y, x_1255);
        let x_1262 : vec3<f32> = txVec21;
        let x_1264 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1262.xy, x_1262.z);
        u_xlat57.x = x_1264;
        let x_1267 : f32 = u_xlat18.x;
        let x_1269 : f32 = u_xlat57.x;
        let x_1271 : f32 = u_xlat82;
        u_xlat82 = ((x_1267 * x_1269) + x_1271);
        let x_1274 : vec4<f32> = u_xlat15;
        let x_1275 : vec2<f32> = vec2<f32>(x_1274.z, x_1274.w);
        let x_1277 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1275.x, x_1275.y, x_1277);
        let x_1284 : vec3<f32> = txVec22;
        let x_1286 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1284.xy, x_1284.z);
        u_xlat57.x = x_1286;
        let x_1289 : f32 = u_xlat18.y;
        let x_1291 : f32 = u_xlat57.x;
        let x_1293 : f32 = u_xlat82;
        u_xlat82 = ((x_1289 * x_1291) + x_1293);
        let x_1296 : vec2<f32> = u_xlat33;
        let x_1298 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1296.x, x_1296.y, x_1298);
        let x_1305 : vec3<f32> = txVec23;
        let x_1307 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1305.xy, x_1305.z);
        u_xlat57.x = x_1307;
        let x_1310 : f32 = u_xlat18.z;
        let x_1312 : f32 = u_xlat57.x;
        let x_1314 : f32 = u_xlat82;
        u_xlat82 = ((x_1310 * x_1312) + x_1314);
        let x_1317 : vec2<f32> = u_xlat65;
        let x_1319 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1317.x, x_1317.y, x_1319);
        let x_1326 : vec3<f32> = txVec24;
        let x_1328 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1326.xy, x_1326.z);
        u_xlat57.x = x_1328;
        let x_1331 : f32 = u_xlat18.w;
        let x_1333 : f32 = u_xlat57.x;
        let x_1335 : f32 = u_xlat82;
        u_xlat82 = ((x_1331 * x_1333) + x_1335);
        let x_1338 : vec4<f32> = u_xlat10;
        let x_1339 : vec2<f32> = vec2<f32>(x_1338.x, x_1338.y);
        let x_1341 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1339.x, x_1339.y, x_1341);
        let x_1348 : vec3<f32> = txVec25;
        let x_1350 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1348.xy, x_1348.z);
        u_xlat57.x = x_1350;
        let x_1353 : f32 = u_xlat6.x;
        let x_1355 : f32 = u_xlat57.x;
        let x_1357 : f32 = u_xlat82;
        u_xlat82 = ((x_1353 * x_1355) + x_1357);
        let x_1360 : vec4<f32> = u_xlat10;
        let x_1361 : vec2<f32> = vec2<f32>(x_1360.z, x_1360.w);
        let x_1363 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1361.x, x_1361.y, x_1363);
        let x_1370 : vec3<f32> = txVec26;
        let x_1372 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1370.xy, x_1370.z);
        u_xlat57.x = x_1372;
        let x_1375 : f32 = u_xlat6.y;
        let x_1377 : f32 = u_xlat57.x;
        let x_1379 : f32 = u_xlat82;
        u_xlat82 = ((x_1375 * x_1377) + x_1379);
        let x_1382 : vec2<f32> = u_xlat60;
        let x_1384 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1382.x, x_1382.y, x_1384);
        let x_1391 : vec3<f32> = txVec27;
        let x_1393 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1391.xy, x_1391.z);
        u_xlat57.x = x_1393;
        let x_1396 : f32 = u_xlat6.z;
        let x_1398 : f32 = u_xlat57.x;
        let x_1400 : f32 = u_xlat82;
        u_xlat82 = ((x_1396 * x_1398) + x_1400);
        let x_1403 : vec4<f32> = u_xlat5;
        let x_1404 : vec2<f32> = vec2<f32>(x_1403.x, x_1403.y);
        let x_1406 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1404.x, x_1404.y, x_1406);
        let x_1413 : vec3<f32> = txVec28;
        let x_1415 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1413.xy, x_1413.z);
        u_xlat5.x = x_1415;
        let x_1418 : f32 = u_xlat6.w;
        let x_1420 : f32 = u_xlat5.x;
        let x_1422 : f32 = u_xlat82;
        u_xlat80 = ((x_1418 * x_1420) + x_1422);
      }
    }
  } else {
    let x_1426 : vec4<f32> = u_xlat4;
    let x_1427 : vec2<f32> = vec2<f32>(x_1426.x, x_1426.y);
    let x_1429 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1427.x, x_1427.y, x_1429);
    let x_1436 : vec3<f32> = txVec29;
    let x_1438 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1436.xy, x_1436.z);
    u_xlat80 = x_1438;
  }
  let x_1440 : f32 = x_131.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_1440) + 1.0f);
  let x_1444 : f32 = u_xlat80;
  let x_1446 : f32 = x_131.x_MainLightShadowParams.x;
  let x_1449 : f32 = u_xlat4.x;
  u_xlat80 = ((x_1444 * x_1446) + x_1449);
  let x_1453 : f32 = u_xlat4.z;
  u_xlatb30 = (0.0f >= x_1453);
  let x_1457 : f32 = u_xlat4.z;
  u_xlatb56 = (x_1457 >= 1.0f);
  let x_1459 : bool = u_xlatb56;
  let x_1460 : bool = u_xlatb30;
  u_xlatb30 = (x_1459 | x_1460);
  let x_1462 : bool = u_xlatb30;
  let x_1463 : f32 = u_xlat80;
  u_xlat80 = select(x_1463, 1.0f, x_1462);
  let x_1465 : vec3<f32> = u_xlat0;
  let x_1467 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat0.x = dot(x_1465, -(vec3<f32>(x_1467.x, x_1467.y, x_1467.z)));
  let x_1473 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1473, 0.0f, 1.0f);
  let x_1477 : f32 = u_xlat80;
  let x_1480 : vec4<f32> = x_53.x_MainLightColor;
  u_xlat30 = (vec3<f32>(x_1477, x_1477, x_1477) * vec3<f32>(x_1480.x, x_1480.y, x_1480.z));
  let x_1483 : vec3<f32> = u_xlat0;
  let x_1485 : vec3<f32> = u_xlat30;
  u_xlat0 = (vec3<f32>(x_1483.x, x_1483.x, x_1483.x) * x_1485);
  let x_1487 : vec3<f32> = u_xlat0;
  let x_1488 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_1487 * vec3<f32>(x_1488.x, x_1488.y, x_1488.z));
  let x_1493 : f32 = u_xlat1.w;
  u_xlatb1 = (x_1493 >= 0.40000000596046447754f);
  let x_1496 : bool = u_xlatb1;
  if (x_1496) {
    let x_1502 : f32 = u_xlat1.w;
    x_1498 = x_1502;
  } else {
    x_1498 = 0.0f;
  }
  let x_1504 : f32 = x_1498;
  u_xlat1.x = x_1504;
  let x_1508 : f32 = u_xlat1.w;
  u_xlat27.x = (x_1508 + -0.40000000596046447754f);
  let x_1514 : f32 = u_xlat1.w;
  u_xlat53 = dpdxCoarse(x_1514);
  let x_1518 : f32 = u_xlat1.w;
  u_xlat79 = dpdyCoarse(x_1518);
  let x_1520 : f32 = u_xlat79;
  let x_1522 : f32 = u_xlat53;
  u_xlat53 = (abs(x_1520) + abs(x_1522));
  let x_1525 : f32 = u_xlat53;
  u_xlat53 = max(x_1525, 0.00009999999747378752f);
  let x_1529 : f32 = u_xlat27.x;
  let x_1530 : f32 = u_xlat53;
  u_xlat27.x = (x_1529 / x_1530);
  let x_1534 : f32 = u_xlat27.x;
  u_xlat27.x = (x_1534 + 0.5f);
  let x_1538 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_1538, 0.0f, 1.0f);
  let x_1543 : f32 = x_53.x_AlphaToMaskAvailable;
  u_xlatb53 = !((x_1543 == 0.0f));
  let x_1545 : bool = u_xlatb53;
  if (x_1545) {
    let x_1550 : f32 = u_xlat27.x;
    x_1546 = x_1550;
  } else {
    let x_1553 : f32 = u_xlat1.x;
    x_1546 = x_1553;
  }
  let x_1554 : f32 = x_1546;
  u_xlat1.x = x_1554;
  let x_1557 : f32 = u_xlat1.x;
  u_xlat27.x = (x_1557 + -0.00009999999747378752f);
  let x_1565 : f32 = u_xlat27.x;
  u_xlatb27.x = (x_1565 < 0.0f);
  let x_1569 : bool = u_xlatb27.x;
  if (((select(0i, 1i, x_1569) * -1i) != 0i)) {
    discard;
  }
  let x_1579 : f32 = vs_INTERP4.w;
  u_xlatb27.x = (0.0f < x_1579);
  let x_1587 : f32 = x_1585.unity_WorldTransformParams.w;
  u_xlatb27.z = (x_1587 >= 0.0f);
  let x_1591 : bool = u_xlatb27.x;
  u_xlat27.x = select(-1.0f, 1.0f, x_1591);
  let x_1595 : bool = u_xlatb27.z;
  u_xlat27.z = select(-1.0f, 1.0f, x_1595);
  let x_1599 : f32 = u_xlat27.z;
  let x_1601 : f32 = u_xlat27.x;
  u_xlat27.x = (x_1599 * x_1601);
  let x_1604 : vec4<f32> = vs_INTERP4;
  let x_1606 : vec3<f32> = vs_INTERP9;
  u_xlat30 = (vec3<f32>(x_1604.y, x_1604.z, x_1604.x) * vec3<f32>(x_1606.z, x_1606.x, x_1606.y));
  let x_1609 : vec3<f32> = vs_INTERP9;
  let x_1611 : vec4<f32> = vs_INTERP4;
  let x_1614 : vec3<f32> = u_xlat30;
  u_xlat30 = ((vec3<f32>(x_1609.y, x_1609.z, x_1609.x) * vec3<f32>(x_1611.z, x_1611.x, x_1611.y)) + -(x_1614));
  let x_1617 : vec3<f32> = u_xlat27;
  let x_1619 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_1617.x, x_1617.x, x_1617.x) * x_1619);
  let x_1621 : vec3<f32> = u_xlat29;
  let x_1623 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_1621.y, x_1621.y, x_1621.y) * x_1623);
  let x_1625 : vec3<f32> = u_xlat29;
  let x_1627 : vec4<f32> = vs_INTERP4;
  let x_1630 : vec3<f32> = u_xlat30;
  u_xlat30 = ((vec3<f32>(x_1625.x, x_1625.x, x_1625.x) * vec3<f32>(x_1627.x, x_1627.y, x_1627.z)) + x_1630);
  let x_1632 : vec3<f32> = u_xlat29;
  let x_1634 : vec3<f32> = vs_INTERP9;
  let x_1636 : vec3<f32> = u_xlat30;
  u_xlat29 = ((vec3<f32>(x_1632.z, x_1632.z, x_1632.z) * x_1634) + x_1636);
  let x_1638 : vec3<f32> = u_xlat29;
  let x_1639 : vec3<f32> = u_xlat29;
  u_xlat27.x = dot(x_1638, x_1639);
  let x_1643 : f32 = u_xlat27.x;
  u_xlat27.x = inverseSqrt(x_1643);
  let x_1646 : vec3<f32> = u_xlat27;
  let x_1648 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_1646.x, x_1646.x, x_1646.x) * x_1648);
  let x_1651 : f32 = x_53.unity_OrthoParams.w;
  u_xlatb27.x = (x_1651 == 0.0f);
  let x_1654 : vec3<f32> = vs_INTERP8;
  let x_1659 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  u_xlat30 = (-(x_1654) + x_1659);
  let x_1661 : vec3<f32> = u_xlat30;
  let x_1662 : vec3<f32> = u_xlat30;
  u_xlat79 = dot(x_1661, x_1662);
  let x_1664 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_1664);
  let x_1666 : f32 = u_xlat79;
  let x_1668 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_1666, x_1666, x_1666) * x_1668);
  let x_1671 : bool = u_xlatb27.x;
  if (x_1671) {
    let x_1676 : f32 = u_xlat30.x;
    x_1672 = x_1676;
  } else {
    let x_1679 : f32 = x_53.unity_MatrixV[0i].z;
    x_1672 = x_1679;
  }
  let x_1680 : f32 = x_1672;
  u_xlat5.x = x_1680;
  let x_1683 : bool = u_xlatb27.x;
  if (x_1683) {
    let x_1688 : f32 = u_xlat30.y;
    x_1684 = x_1688;
  } else {
    let x_1691 : f32 = x_53.unity_MatrixV[1i].z;
    x_1684 = x_1691;
  }
  let x_1692 : f32 = x_1684;
  u_xlat5.y = x_1692;
  let x_1695 : bool = u_xlatb27.x;
  if (x_1695) {
    let x_1700 : f32 = u_xlat30.z;
    x_1696 = x_1700;
  } else {
    let x_1703 : f32 = x_53.unity_MatrixV[2i].z;
    x_1696 = x_1703;
  }
  let x_1704 : f32 = x_1696;
  u_xlat5.z = x_1704;
  let x_1713 : vec2<f32> = vs_INTERP0;
  let x_1715 : f32 = x_53.x_GlobalMipBias.x;
  let x_1716 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_1713, x_1715);
  u_xlat6 = x_1716;
  let x_1721 : vec2<f32> = vs_INTERP0;
  let x_1723 : f32 = x_53.x_GlobalMipBias.x;
  let x_1724 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_1721, x_1723);
  u_xlat30 = vec3<f32>(x_1724.x, x_1724.y, x_1724.z);
  let x_1726 : vec4<f32> = u_xlat6;
  let x_1729 : vec3<f32> = (vec3<f32>(x_1726.x, x_1726.y, x_1726.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1730 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1729.x, x_1729.y, x_1729.z, x_1730.w);
  let x_1732 : vec3<f32> = u_xlat29;
  let x_1733 : vec4<f32> = u_xlat6;
  u_xlat27.x = dot(x_1732, vec3<f32>(x_1733.x, x_1733.y, x_1733.z));
  let x_1738 : f32 = u_xlat27.x;
  u_xlat27.x = (x_1738 + 0.5f);
  let x_1741 : vec3<f32> = u_xlat27;
  let x_1743 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_1741.x, x_1741.x, x_1741.x) * x_1743);
  let x_1746 : f32 = u_xlat6.w;
  u_xlat27.x = max(x_1746, 0.00009999999747378752f);
  let x_1749 : vec3<f32> = u_xlat30;
  let x_1750 : vec3<f32> = u_xlat27;
  u_xlat30 = (x_1749 / vec3<f32>(x_1750.x, x_1750.x, x_1750.x));
  let x_1754 : f32 = u_xlat3.x;
  u_xlat3.x = x_1754;
  let x_1757 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1757, 0.0f, 1.0f);
  let x_1761 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_1761, 1.0f);
  let x_1764 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1764 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_1769 : f32 = u_xlat3.x;
  u_xlat27.x = (-(x_1769) + 1.0f);
  let x_1774 : f32 = u_xlat27.x;
  let x_1776 : f32 = u_xlat27.x;
  u_xlat79 = (x_1774 * x_1776);
  let x_1778 : f32 = u_xlat79;
  u_xlat79 = max(x_1778, 0.0078125f);
  let x_1781 : f32 = u_xlat79;
  let x_1782 : f32 = u_xlat79;
  u_xlat80 = (x_1781 * x_1782);
  let x_1785 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1785 + 0.04000002145767211914f);
  let x_1790 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_1790, 1.0f);
  let x_1794 : f32 = u_xlat79;
  u_xlat83 = ((x_1794 * 4.0f) + 2.0f);
  let x_1799 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_1799, 1.0f);
  let x_1802 : bool = u_xlatb78;
  if (x_1802) {
    let x_1806 : f32 = x_131.x_MainLightShadowParams.y;
    u_xlatb78 = (x_1806 == 1.0f);
    let x_1808 : bool = u_xlatb78;
    if (x_1808) {
      let x_1812 : vec4<f32> = vs_INTERP3;
      let x_1815 : vec4<f32> = x_131.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_1812.x, x_1812.y, x_1812.x, x_1812.y) + x_1815);
      let x_1818 : vec4<f32> = u_xlat7;
      let x_1819 : vec2<f32> = vec2<f32>(x_1818.x, x_1818.y);
      let x_1821 : f32 = vs_INTERP3.z;
      txVec30 = vec3<f32>(x_1819.x, x_1819.y, x_1821);
      let x_1828 : vec3<f32> = txVec30;
      let x_1830 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1828.xy, x_1828.z);
      u_xlat8.x = x_1830;
      let x_1833 : vec4<f32> = u_xlat7;
      let x_1834 : vec2<f32> = vec2<f32>(x_1833.z, x_1833.w);
      let x_1836 : f32 = vs_INTERP3.z;
      txVec31 = vec3<f32>(x_1834.x, x_1834.y, x_1836);
      let x_1843 : vec3<f32> = txVec31;
      let x_1845 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1843.xy, x_1843.z);
      u_xlat8.y = x_1845;
      let x_1847 : vec4<f32> = vs_INTERP3;
      let x_1850 : vec4<f32> = x_131.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_1847.x, x_1847.y, x_1847.x, x_1847.y) + x_1850);
      let x_1853 : vec4<f32> = u_xlat7;
      let x_1854 : vec2<f32> = vec2<f32>(x_1853.x, x_1853.y);
      let x_1856 : f32 = vs_INTERP3.z;
      txVec32 = vec3<f32>(x_1854.x, x_1854.y, x_1856);
      let x_1863 : vec3<f32> = txVec32;
      let x_1865 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1863.xy, x_1863.z);
      u_xlat8.z = x_1865;
      let x_1868 : vec4<f32> = u_xlat7;
      let x_1869 : vec2<f32> = vec2<f32>(x_1868.z, x_1868.w);
      let x_1871 : f32 = vs_INTERP3.z;
      txVec33 = vec3<f32>(x_1869.x, x_1869.y, x_1871);
      let x_1878 : vec3<f32> = txVec33;
      let x_1880 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1878.xy, x_1878.z);
      u_xlat8.w = x_1880;
      let x_1882 : vec4<f32> = u_xlat8;
      u_xlat78 = dot(x_1882, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1889 : f32 = x_131.x_MainLightShadowParams.y;
      u_xlatb32.x = (x_1889 == 2.0f);
      let x_1893 : bool = u_xlatb32.x;
      if (x_1893) {
        let x_1896 : vec4<f32> = vs_INTERP3;
        let x_1899 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_1902 : vec2<f32> = ((vec2<f32>(x_1896.x, x_1896.y) * vec2<f32>(x_1899.z, x_1899.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1903 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1902.x, x_1902.y, x_1903.z);
        let x_1905 : vec3<f32> = u_xlat32;
        let x_1907 : vec2<f32> = floor(vec2<f32>(x_1905.x, x_1905.y));
        let x_1908 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1907.x, x_1907.y, x_1908.z);
        let x_1910 : vec4<f32> = vs_INTERP3;
        let x_1913 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_1916 : vec3<f32> = u_xlat32;
        let x_1919 : vec2<f32> = ((vec2<f32>(x_1910.x, x_1910.y) * vec2<f32>(x_1913.z, x_1913.w)) + -(vec2<f32>(x_1916.x, x_1916.y)));
        let x_1920 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1919.x, x_1919.y, x_1920.z, x_1920.w);
        let x_1922 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1922.x, x_1922.x, x_1922.y, x_1922.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1925 : vec4<f32> = u_xlat8;
        let x_1927 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1925.x, x_1925.x, x_1925.z, x_1925.z) * vec4<f32>(x_1927.x, x_1927.x, x_1927.z, x_1927.z));
        let x_1930 : vec4<f32> = u_xlat9;
        u_xlat59 = (vec2<f32>(x_1930.y, x_1930.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1933 : vec4<f32> = u_xlat9;
        let x_1936 : vec4<f32> = u_xlat7;
        let x_1939 : vec2<f32> = ((vec2<f32>(x_1933.x, x_1933.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1936.x, x_1936.y)));
        let x_1940 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1939.x, x_1940.y, x_1939.y, x_1940.w);
        let x_1942 : vec4<f32> = u_xlat7;
        let x_1945 : vec2<f32> = (-(vec2<f32>(x_1942.x, x_1942.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1946 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1945.x, x_1945.y, x_1946.z, x_1946.w);
        let x_1949 : vec4<f32> = u_xlat7;
        u_xlat61 = min(vec2<f32>(x_1949.x, x_1949.y), vec2<f32>(0.0f, 0.0f));
        let x_1952 : vec2<f32> = u_xlat61;
        let x_1954 : vec2<f32> = u_xlat61;
        let x_1956 : vec4<f32> = u_xlat9;
        u_xlat61 = ((-(x_1952) * x_1954) + vec2<f32>(x_1956.x, x_1956.y));
        let x_1959 : vec4<f32> = u_xlat7;
        let x_1961 : vec2<f32> = max(vec2<f32>(x_1959.x, x_1959.y), vec2<f32>(0.0f, 0.0f));
        let x_1962 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1961.x, x_1961.y, x_1962.z, x_1962.w);
        let x_1964 : vec4<f32> = u_xlat7;
        let x_1967 : vec4<f32> = u_xlat7;
        let x_1970 : vec4<f32> = u_xlat8;
        let x_1972 : vec2<f32> = ((-(vec2<f32>(x_1964.x, x_1964.y)) * vec2<f32>(x_1967.x, x_1967.y)) + vec2<f32>(x_1970.y, x_1970.w));
        let x_1973 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1972.x, x_1972.y, x_1973.z, x_1973.w);
        let x_1975 : vec2<f32> = u_xlat61;
        u_xlat61 = (x_1975 + vec2<f32>(1.0f, 1.0f));
        let x_1977 : vec4<f32> = u_xlat7;
        let x_1979 : vec2<f32> = (vec2<f32>(x_1977.x, x_1977.y) + vec2<f32>(1.0f, 1.0f));
        let x_1980 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1979.x, x_1979.y, x_1980.z, x_1980.w);
        let x_1982 : vec4<f32> = u_xlat8;
        let x_1984 : vec2<f32> = (vec2<f32>(x_1982.x, x_1982.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1985 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1984.x, x_1984.y, x_1985.z, x_1985.w);
        let x_1987 : vec4<f32> = u_xlat9;
        let x_1989 : vec2<f32> = (vec2<f32>(x_1987.x, x_1987.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1990 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1989.x, x_1989.y, x_1990.z, x_1990.w);
        let x_1992 : vec2<f32> = u_xlat61;
        let x_1993 : vec2<f32> = (x_1992 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1994 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1993.x, x_1993.y, x_1994.z, x_1994.w);
        let x_1996 : vec4<f32> = u_xlat7;
        let x_1998 : vec2<f32> = (vec2<f32>(x_1996.x, x_1996.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1999 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1998.x, x_1998.y, x_1999.z, x_1999.w);
        let x_2001 : vec4<f32> = u_xlat8;
        let x_2003 : vec2<f32> = (vec2<f32>(x_2001.y, x_2001.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2004 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2003.x, x_2003.y, x_2004.z, x_2004.w);
        let x_2007 : f32 = u_xlat9.x;
        u_xlat10.z = x_2007;
        let x_2010 : f32 = u_xlat7.x;
        u_xlat10.w = x_2010;
        let x_2013 : f32 = u_xlat12.x;
        u_xlat11.z = x_2013;
        let x_2016 : f32 = u_xlat59.x;
        u_xlat11.w = x_2016;
        let x_2018 : vec4<f32> = u_xlat10;
        let x_2020 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_2018.z, x_2018.w, x_2018.x, x_2018.z) + vec4<f32>(x_2020.z, x_2020.w, x_2020.x, x_2020.z));
        let x_2024 : f32 = u_xlat10.y;
        u_xlat9.z = x_2024;
        let x_2027 : f32 = u_xlat7.y;
        u_xlat9.w = x_2027;
        let x_2030 : f32 = u_xlat11.y;
        u_xlat12.z = x_2030;
        let x_2033 : f32 = u_xlat59.y;
        u_xlat12.w = x_2033;
        let x_2035 : vec4<f32> = u_xlat9;
        let x_2037 : vec4<f32> = u_xlat12;
        let x_2039 : vec3<f32> = (vec3<f32>(x_2035.z, x_2035.y, x_2035.w) + vec3<f32>(x_2037.z, x_2037.y, x_2037.w));
        let x_2040 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2039.x, x_2039.y, x_2039.z, x_2040.w);
        let x_2042 : vec4<f32> = u_xlat11;
        let x_2044 : vec4<f32> = u_xlat8;
        let x_2046 : vec3<f32> = (vec3<f32>(x_2042.x, x_2042.z, x_2042.w) / vec3<f32>(x_2044.z, x_2044.w, x_2044.y));
        let x_2047 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2046.x, x_2046.y, x_2046.z, x_2047.w);
        let x_2049 : vec4<f32> = u_xlat9;
        let x_2051 : vec3<f32> = (vec3<f32>(x_2049.x, x_2049.y, x_2049.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2052 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2051.x, x_2051.y, x_2051.z, x_2052.w);
        let x_2054 : vec4<f32> = u_xlat12;
        let x_2056 : vec4<f32> = u_xlat7;
        let x_2058 : vec3<f32> = (vec3<f32>(x_2054.z, x_2054.y, x_2054.w) / vec3<f32>(x_2056.x, x_2056.y, x_2056.z));
        let x_2059 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2058.x, x_2058.y, x_2058.z, x_2059.w);
        let x_2061 : vec4<f32> = u_xlat10;
        let x_2063 : vec3<f32> = (vec3<f32>(x_2061.x, x_2061.y, x_2061.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2064 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2063.x, x_2063.y, x_2063.z, x_2064.w);
        let x_2066 : vec4<f32> = u_xlat9;
        let x_2069 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2071 : vec3<f32> = (vec3<f32>(x_2066.y, x_2066.x, x_2066.z) * vec3<f32>(x_2069.x, x_2069.x, x_2069.x));
        let x_2072 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2071.x, x_2071.y, x_2071.z, x_2072.w);
        let x_2074 : vec4<f32> = u_xlat10;
        let x_2077 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2079 : vec3<f32> = (vec3<f32>(x_2074.x, x_2074.y, x_2074.z) * vec3<f32>(x_2077.y, x_2077.y, x_2077.y));
        let x_2080 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2079.x, x_2079.y, x_2079.z, x_2080.w);
        let x_2083 : f32 = u_xlat10.x;
        u_xlat9.w = x_2083;
        let x_2085 : vec3<f32> = u_xlat32;
        let x_2088 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2091 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2085.x, x_2085.y, x_2085.x, x_2085.y) * vec4<f32>(x_2088.x, x_2088.y, x_2088.x, x_2088.y)) + vec4<f32>(x_2091.y, x_2091.w, x_2091.x, x_2091.w));
        let x_2094 : vec3<f32> = u_xlat32;
        let x_2097 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2100 : vec4<f32> = u_xlat9;
        let x_2102 : vec2<f32> = ((vec2<f32>(x_2094.x, x_2094.y) * vec2<f32>(x_2097.x, x_2097.y)) + vec2<f32>(x_2100.z, x_2100.w));
        let x_2103 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2102.x, x_2102.y, x_2103.z, x_2103.w);
        let x_2106 : f32 = u_xlat9.y;
        u_xlat10.w = x_2106;
        let x_2108 : vec4<f32> = u_xlat10;
        let x_2109 : vec2<f32> = vec2<f32>(x_2108.y, x_2108.z);
        let x_2110 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2110.x, x_2109.x, x_2110.z, x_2109.y);
        let x_2112 : vec3<f32> = u_xlat32;
        let x_2115 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2118 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_2112.x, x_2112.y, x_2112.x, x_2112.y) * vec4<f32>(x_2115.x, x_2115.y, x_2115.x, x_2115.y)) + vec4<f32>(x_2118.x, x_2118.y, x_2118.z, x_2118.y));
        let x_2121 : vec3<f32> = u_xlat32;
        let x_2124 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2127 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2121.x, x_2121.y, x_2121.x, x_2121.y) * vec4<f32>(x_2124.x, x_2124.y, x_2124.x, x_2124.y)) + vec4<f32>(x_2127.w, x_2127.y, x_2127.w, x_2127.z));
        let x_2130 : vec3<f32> = u_xlat32;
        let x_2133 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2136 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_2130.x, x_2130.y, x_2130.x, x_2130.y) * vec4<f32>(x_2133.x, x_2133.y, x_2133.x, x_2133.y)) + vec4<f32>(x_2136.x, x_2136.w, x_2136.z, x_2136.w));
        let x_2139 : vec4<f32> = u_xlat7;
        let x_2141 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_2139.x, x_2139.x, x_2139.x, x_2139.y) * vec4<f32>(x_2141.z, x_2141.w, x_2141.y, x_2141.z));
        let x_2144 : vec4<f32> = u_xlat7;
        let x_2146 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_2144.y, x_2144.y, x_2144.z, x_2144.z) * x_2146);
        let x_2149 : f32 = u_xlat7.z;
        let x_2151 : f32 = u_xlat8.y;
        u_xlat32.x = (x_2149 * x_2151);
        let x_2155 : vec4<f32> = u_xlat11;
        let x_2156 : vec2<f32> = vec2<f32>(x_2155.x, x_2155.y);
        let x_2158 : f32 = vs_INTERP3.z;
        txVec34 = vec3<f32>(x_2156.x, x_2156.y, x_2158);
        let x_2166 : vec3<f32> = txVec34;
        let x_2168 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2166.xy, x_2166.z);
        u_xlat58 = x_2168;
        let x_2170 : vec4<f32> = u_xlat11;
        let x_2171 : vec2<f32> = vec2<f32>(x_2170.z, x_2170.w);
        let x_2173 : f32 = vs_INTERP3.z;
        txVec35 = vec3<f32>(x_2171.x, x_2171.y, x_2173);
        let x_2181 : vec3<f32> = txVec35;
        let x_2183 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2181.xy, x_2181.z);
        u_xlat84 = x_2183;
        let x_2184 : f32 = u_xlat84;
        let x_2186 : f32 = u_xlat14.y;
        u_xlat84 = (x_2184 * x_2186);
        let x_2189 : f32 = u_xlat14.x;
        let x_2190 : f32 = u_xlat58;
        let x_2192 : f32 = u_xlat84;
        u_xlat58 = ((x_2189 * x_2190) + x_2192);
        let x_2195 : vec4<f32> = u_xlat12;
        let x_2196 : vec2<f32> = vec2<f32>(x_2195.x, x_2195.y);
        let x_2198 : f32 = vs_INTERP3.z;
        txVec36 = vec3<f32>(x_2196.x, x_2196.y, x_2198);
        let x_2205 : vec3<f32> = txVec36;
        let x_2207 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2205.xy, x_2205.z);
        u_xlat84 = x_2207;
        let x_2209 : f32 = u_xlat14.z;
        let x_2210 : f32 = u_xlat84;
        let x_2212 : f32 = u_xlat58;
        u_xlat58 = ((x_2209 * x_2210) + x_2212);
        let x_2215 : vec4<f32> = u_xlat10;
        let x_2216 : vec2<f32> = vec2<f32>(x_2215.x, x_2215.y);
        let x_2218 : f32 = vs_INTERP3.z;
        txVec37 = vec3<f32>(x_2216.x, x_2216.y, x_2218);
        let x_2225 : vec3<f32> = txVec37;
        let x_2227 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2225.xy, x_2225.z);
        u_xlat84 = x_2227;
        let x_2229 : f32 = u_xlat14.w;
        let x_2230 : f32 = u_xlat84;
        let x_2232 : f32 = u_xlat58;
        u_xlat58 = ((x_2229 * x_2230) + x_2232);
        let x_2235 : vec4<f32> = u_xlat13;
        let x_2236 : vec2<f32> = vec2<f32>(x_2235.x, x_2235.y);
        let x_2238 : f32 = vs_INTERP3.z;
        txVec38 = vec3<f32>(x_2236.x, x_2236.y, x_2238);
        let x_2245 : vec3<f32> = txVec38;
        let x_2247 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2245.xy, x_2245.z);
        u_xlat84 = x_2247;
        let x_2249 : f32 = u_xlat15.x;
        let x_2250 : f32 = u_xlat84;
        let x_2252 : f32 = u_xlat58;
        u_xlat58 = ((x_2249 * x_2250) + x_2252);
        let x_2255 : vec4<f32> = u_xlat13;
        let x_2256 : vec2<f32> = vec2<f32>(x_2255.z, x_2255.w);
        let x_2258 : f32 = vs_INTERP3.z;
        txVec39 = vec3<f32>(x_2256.x, x_2256.y, x_2258);
        let x_2265 : vec3<f32> = txVec39;
        let x_2267 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2265.xy, x_2265.z);
        u_xlat84 = x_2267;
        let x_2269 : f32 = u_xlat15.y;
        let x_2270 : f32 = u_xlat84;
        let x_2272 : f32 = u_xlat58;
        u_xlat58 = ((x_2269 * x_2270) + x_2272);
        let x_2275 : vec4<f32> = u_xlat10;
        let x_2276 : vec2<f32> = vec2<f32>(x_2275.z, x_2275.w);
        let x_2278 : f32 = vs_INTERP3.z;
        txVec40 = vec3<f32>(x_2276.x, x_2276.y, x_2278);
        let x_2285 : vec3<f32> = txVec40;
        let x_2287 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2285.xy, x_2285.z);
        u_xlat84 = x_2287;
        let x_2289 : f32 = u_xlat15.z;
        let x_2290 : f32 = u_xlat84;
        let x_2292 : f32 = u_xlat58;
        u_xlat58 = ((x_2289 * x_2290) + x_2292);
        let x_2295 : vec4<f32> = u_xlat9;
        let x_2296 : vec2<f32> = vec2<f32>(x_2295.x, x_2295.y);
        let x_2298 : f32 = vs_INTERP3.z;
        txVec41 = vec3<f32>(x_2296.x, x_2296.y, x_2298);
        let x_2305 : vec3<f32> = txVec41;
        let x_2307 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2305.xy, x_2305.z);
        u_xlat84 = x_2307;
        let x_2309 : f32 = u_xlat15.w;
        let x_2310 : f32 = u_xlat84;
        let x_2312 : f32 = u_xlat58;
        u_xlat58 = ((x_2309 * x_2310) + x_2312);
        let x_2315 : vec4<f32> = u_xlat9;
        let x_2316 : vec2<f32> = vec2<f32>(x_2315.z, x_2315.w);
        let x_2318 : f32 = vs_INTERP3.z;
        txVec42 = vec3<f32>(x_2316.x, x_2316.y, x_2318);
        let x_2325 : vec3<f32> = txVec42;
        let x_2327 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2325.xy, x_2325.z);
        u_xlat84 = x_2327;
        let x_2329 : f32 = u_xlat32.x;
        let x_2330 : f32 = u_xlat84;
        let x_2332 : f32 = u_xlat58;
        u_xlat78 = ((x_2329 * x_2330) + x_2332);
      } else {
        let x_2335 : vec4<f32> = vs_INTERP3;
        let x_2338 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2341 : vec2<f32> = ((vec2<f32>(x_2335.x, x_2335.y) * vec2<f32>(x_2338.z, x_2338.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2342 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_2341.x, x_2341.y, x_2342.z);
        let x_2344 : vec3<f32> = u_xlat32;
        let x_2346 : vec2<f32> = floor(vec2<f32>(x_2344.x, x_2344.y));
        let x_2347 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_2346.x, x_2346.y, x_2347.z);
        let x_2349 : vec4<f32> = vs_INTERP3;
        let x_2352 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2355 : vec3<f32> = u_xlat32;
        let x_2358 : vec2<f32> = ((vec2<f32>(x_2349.x, x_2349.y) * vec2<f32>(x_2352.z, x_2352.w)) + -(vec2<f32>(x_2355.x, x_2355.y)));
        let x_2359 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2358.x, x_2358.y, x_2359.z, x_2359.w);
        let x_2361 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2361.x, x_2361.x, x_2361.y, x_2361.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2364 : vec4<f32> = u_xlat8;
        let x_2366 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2364.x, x_2364.x, x_2364.z, x_2364.z) * vec4<f32>(x_2366.x, x_2366.x, x_2366.z, x_2366.z));
        let x_2369 : vec4<f32> = u_xlat9;
        let x_2371 : vec2<f32> = (vec2<f32>(x_2369.y, x_2369.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2372 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2372.x, x_2371.x, x_2372.z, x_2371.y);
        let x_2374 : vec4<f32> = u_xlat9;
        let x_2377 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_2374.x, x_2374.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2377.x, x_2377.y)));
        let x_2381 : vec4<f32> = u_xlat7;
        let x_2384 : vec2<f32> = (-(vec2<f32>(x_2381.x, x_2381.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2385 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2384.x, x_2385.y, x_2384.y, x_2385.w);
        let x_2387 : vec4<f32> = u_xlat7;
        let x_2389 : vec2<f32> = min(vec2<f32>(x_2387.x, x_2387.y), vec2<f32>(0.0f, 0.0f));
        let x_2390 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2389.x, x_2389.y, x_2390.z, x_2390.w);
        let x_2392 : vec4<f32> = u_xlat9;
        let x_2395 : vec4<f32> = u_xlat9;
        let x_2398 : vec4<f32> = u_xlat8;
        let x_2400 : vec2<f32> = ((-(vec2<f32>(x_2392.x, x_2392.y)) * vec2<f32>(x_2395.x, x_2395.y)) + vec2<f32>(x_2398.x, x_2398.z));
        let x_2401 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2400.x, x_2401.y, x_2400.y, x_2401.w);
        let x_2403 : vec4<f32> = u_xlat7;
        let x_2405 : vec2<f32> = max(vec2<f32>(x_2403.x, x_2403.y), vec2<f32>(0.0f, 0.0f));
        let x_2406 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2405.x, x_2405.y, x_2406.z, x_2406.w);
        let x_2408 : vec4<f32> = u_xlat9;
        let x_2411 : vec4<f32> = u_xlat9;
        let x_2414 : vec4<f32> = u_xlat8;
        let x_2416 : vec2<f32> = ((-(vec2<f32>(x_2408.x, x_2408.y)) * vec2<f32>(x_2411.x, x_2411.y)) + vec2<f32>(x_2414.y, x_2414.w));
        let x_2417 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2417.x, x_2416.x, x_2417.z, x_2416.y);
        let x_2419 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2419 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2422 : f32 = u_xlat8.y;
        u_xlat9.z = (x_2422 * 0.08163200318813323975f);
        let x_2425 : vec2<f32> = u_xlat59;
        let x_2427 : vec2<f32> = (vec2<f32>(x_2425.y, x_2425.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2428 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2427.x, x_2427.y, x_2428.z, x_2428.w);
        let x_2430 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_2430.x, x_2430.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2434 : f32 = u_xlat8.w;
        u_xlat11.z = (x_2434 * 0.08163200318813323975f);
        let x_2438 : f32 = u_xlat11.y;
        u_xlat9.x = x_2438;
        let x_2440 : vec4<f32> = u_xlat7;
        let x_2443 : vec2<f32> = ((vec2<f32>(x_2440.x, x_2440.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2444 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2444.x, x_2443.x, x_2444.z, x_2443.y);
        let x_2446 : vec4<f32> = u_xlat7;
        let x_2449 : vec2<f32> = ((vec2<f32>(x_2446.x, x_2446.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2450 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2449.x, x_2450.y, x_2449.y, x_2450.w);
        let x_2453 : f32 = u_xlat59.x;
        u_xlat8.y = x_2453;
        let x_2456 : f32 = u_xlat10.y;
        u_xlat8.w = x_2456;
        let x_2458 : vec4<f32> = u_xlat8;
        let x_2459 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2458 + x_2459);
        let x_2461 : vec4<f32> = u_xlat7;
        let x_2464 : vec2<f32> = ((vec2<f32>(x_2461.y, x_2461.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2465 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2465.x, x_2464.x, x_2465.z, x_2464.y);
        let x_2467 : vec4<f32> = u_xlat7;
        let x_2470 : vec2<f32> = ((vec2<f32>(x_2467.y, x_2467.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2471 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2470.x, x_2471.y, x_2470.y, x_2471.w);
        let x_2474 : f32 = u_xlat59.y;
        u_xlat10.y = x_2474;
        let x_2476 : vec4<f32> = u_xlat10;
        let x_2477 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_2476 + x_2477);
        let x_2479 : vec4<f32> = u_xlat8;
        let x_2480 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_2479 / x_2480);
        let x_2482 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2482 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2484 : vec4<f32> = u_xlat10;
        let x_2485 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_2484 / x_2485);
        let x_2487 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2487 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2489 : vec4<f32> = u_xlat8;
        let x_2492 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_2489.w, x_2489.x, x_2489.y, x_2489.z) * vec4<f32>(x_2492.x, x_2492.x, x_2492.x, x_2492.x));
        let x_2495 : vec4<f32> = u_xlat10;
        let x_2498 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_2495.x, x_2495.w, x_2495.y, x_2495.z) * vec4<f32>(x_2498.y, x_2498.y, x_2498.y, x_2498.y));
        let x_2501 : vec4<f32> = u_xlat8;
        let x_2502 : vec3<f32> = vec3<f32>(x_2501.y, x_2501.z, x_2501.w);
        let x_2503 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2502.x, x_2503.y, x_2502.y, x_2502.z);
        let x_2506 : f32 = u_xlat10.x;
        u_xlat11.y = x_2506;
        let x_2508 : vec3<f32> = u_xlat32;
        let x_2511 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2514 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2508.x, x_2508.y, x_2508.x, x_2508.y) * vec4<f32>(x_2511.x, x_2511.y, x_2511.x, x_2511.y)) + vec4<f32>(x_2514.x, x_2514.y, x_2514.z, x_2514.y));
        let x_2517 : vec3<f32> = u_xlat32;
        let x_2520 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2523 : vec4<f32> = u_xlat11;
        let x_2525 : vec2<f32> = ((vec2<f32>(x_2517.x, x_2517.y) * vec2<f32>(x_2520.x, x_2520.y)) + vec2<f32>(x_2523.w, x_2523.y));
        let x_2526 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2525.x, x_2525.y, x_2526.z, x_2526.w);
        let x_2529 : f32 = u_xlat11.y;
        u_xlat8.y = x_2529;
        let x_2532 : f32 = u_xlat10.z;
        u_xlat11.y = x_2532;
        let x_2534 : vec3<f32> = u_xlat32;
        let x_2537 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2540 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_2534.x, x_2534.y, x_2534.x, x_2534.y) * vec4<f32>(x_2537.x, x_2537.y, x_2537.x, x_2537.y)) + vec4<f32>(x_2540.x, x_2540.y, x_2540.z, x_2540.y));
        let x_2543 : vec3<f32> = u_xlat32;
        let x_2546 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2549 : vec4<f32> = u_xlat11;
        u_xlat65 = ((vec2<f32>(x_2543.x, x_2543.y) * vec2<f32>(x_2546.x, x_2546.y)) + vec2<f32>(x_2549.w, x_2549.y));
        let x_2553 : f32 = u_xlat11.y;
        u_xlat8.z = x_2553;
        let x_2555 : vec3<f32> = u_xlat32;
        let x_2558 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2561 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_2555.x, x_2555.y, x_2555.x, x_2555.y) * vec4<f32>(x_2558.x, x_2558.y, x_2558.x, x_2558.y)) + vec4<f32>(x_2561.x, x_2561.y, x_2561.x, x_2561.z));
        let x_2565 : f32 = u_xlat10.w;
        u_xlat11.y = x_2565;
        let x_2567 : vec3<f32> = u_xlat32;
        let x_2570 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2573 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_2567.x, x_2567.y, x_2567.x, x_2567.y) * vec4<f32>(x_2570.x, x_2570.y, x_2570.x, x_2570.y)) + vec4<f32>(x_2573.x, x_2573.y, x_2573.z, x_2573.y));
        let x_2577 : vec3<f32> = u_xlat32;
        let x_2580 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2583 : vec4<f32> = u_xlat11;
        u_xlat34 = ((vec2<f32>(x_2577.x, x_2577.y) * vec2<f32>(x_2580.x, x_2580.y)) + vec2<f32>(x_2583.w, x_2583.y));
        let x_2587 : f32 = u_xlat11.y;
        u_xlat8.w = x_2587;
        let x_2589 : vec3<f32> = u_xlat32;
        let x_2592 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2595 : vec4<f32> = u_xlat8;
        let x_2597 : vec2<f32> = ((vec2<f32>(x_2589.x, x_2589.y) * vec2<f32>(x_2592.x, x_2592.y)) + vec2<f32>(x_2595.x, x_2595.w));
        let x_2598 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_2597.x, x_2597.y, x_2598.z, x_2598.w);
        let x_2600 : vec4<f32> = u_xlat11;
        let x_2601 : vec3<f32> = vec3<f32>(x_2600.x, x_2600.z, x_2600.w);
        let x_2602 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2601.x, x_2602.y, x_2601.y, x_2601.z);
        let x_2604 : vec3<f32> = u_xlat32;
        let x_2607 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2610 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_2604.x, x_2604.y, x_2604.x, x_2604.y) * vec4<f32>(x_2607.x, x_2607.y, x_2607.x, x_2607.y)) + vec4<f32>(x_2610.x, x_2610.y, x_2610.z, x_2610.y));
        let x_2614 : vec3<f32> = u_xlat32;
        let x_2617 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2620 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_2614.x, x_2614.y) * vec2<f32>(x_2617.x, x_2617.y)) + vec2<f32>(x_2620.w, x_2620.y));
        let x_2624 : f32 = u_xlat8.x;
        u_xlat10.x = x_2624;
        let x_2626 : vec3<f32> = u_xlat32;
        let x_2629 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2632 : vec4<f32> = u_xlat10;
        let x_2634 : vec2<f32> = ((vec2<f32>(x_2626.x, x_2626.y) * vec2<f32>(x_2629.x, x_2629.y)) + vec2<f32>(x_2632.x, x_2632.y));
        let x_2635 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_2634.x, x_2634.y, x_2635.z);
        let x_2637 : vec4<f32> = u_xlat7;
        let x_2639 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_2637.x, x_2637.x, x_2637.x, x_2637.x) * x_2639);
        let x_2642 : vec4<f32> = u_xlat7;
        let x_2644 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_2642.y, x_2642.y, x_2642.y, x_2642.y) * x_2644);
        let x_2647 : vec4<f32> = u_xlat7;
        let x_2649 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_2647.z, x_2647.z, x_2647.z, x_2647.z) * x_2649);
        let x_2651 : vec4<f32> = u_xlat7;
        let x_2653 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_2651.w, x_2651.w, x_2651.w, x_2651.w) * x_2653);
        let x_2656 : vec4<f32> = u_xlat12;
        let x_2657 : vec2<f32> = vec2<f32>(x_2656.x, x_2656.y);
        let x_2659 : f32 = vs_INTERP3.z;
        txVec43 = vec3<f32>(x_2657.x, x_2657.y, x_2659);
        let x_2666 : vec3<f32> = txVec43;
        let x_2668 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2666.xy, x_2666.z);
        u_xlat84 = x_2668;
        let x_2670 : vec4<f32> = u_xlat12;
        let x_2671 : vec2<f32> = vec2<f32>(x_2670.z, x_2670.w);
        let x_2673 : f32 = vs_INTERP3.z;
        txVec44 = vec3<f32>(x_2671.x, x_2671.y, x_2673);
        let x_2680 : vec3<f32> = txVec44;
        let x_2682 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2680.xy, x_2680.z);
        u_xlat8.x = x_2682;
        let x_2685 : f32 = u_xlat8.x;
        let x_2687 : f32 = u_xlat18.y;
        u_xlat8.x = (x_2685 * x_2687);
        let x_2691 : f32 = u_xlat18.x;
        let x_2692 : f32 = u_xlat84;
        let x_2695 : f32 = u_xlat8.x;
        u_xlat84 = ((x_2691 * x_2692) + x_2695);
        let x_2698 : vec4<f32> = u_xlat13;
        let x_2699 : vec2<f32> = vec2<f32>(x_2698.x, x_2698.y);
        let x_2701 : f32 = vs_INTERP3.z;
        txVec45 = vec3<f32>(x_2699.x, x_2699.y, x_2701);
        let x_2708 : vec3<f32> = txVec45;
        let x_2710 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2708.xy, x_2708.z);
        u_xlat8.x = x_2710;
        let x_2713 : f32 = u_xlat18.z;
        let x_2715 : f32 = u_xlat8.x;
        let x_2717 : f32 = u_xlat84;
        u_xlat84 = ((x_2713 * x_2715) + x_2717);
        let x_2720 : vec4<f32> = u_xlat15;
        let x_2721 : vec2<f32> = vec2<f32>(x_2720.x, x_2720.y);
        let x_2723 : f32 = vs_INTERP3.z;
        txVec46 = vec3<f32>(x_2721.x, x_2721.y, x_2723);
        let x_2730 : vec3<f32> = txVec46;
        let x_2732 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2730.xy, x_2730.z);
        u_xlat8.x = x_2732;
        let x_2735 : f32 = u_xlat18.w;
        let x_2737 : f32 = u_xlat8.x;
        let x_2739 : f32 = u_xlat84;
        u_xlat84 = ((x_2735 * x_2737) + x_2739);
        let x_2742 : vec4<f32> = u_xlat14;
        let x_2743 : vec2<f32> = vec2<f32>(x_2742.x, x_2742.y);
        let x_2745 : f32 = vs_INTERP3.z;
        txVec47 = vec3<f32>(x_2743.x, x_2743.y, x_2745);
        let x_2752 : vec3<f32> = txVec47;
        let x_2754 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2752.xy, x_2752.z);
        u_xlat8.x = x_2754;
        let x_2757 : f32 = u_xlat19.x;
        let x_2759 : f32 = u_xlat8.x;
        let x_2761 : f32 = u_xlat84;
        u_xlat84 = ((x_2757 * x_2759) + x_2761);
        let x_2764 : vec4<f32> = u_xlat14;
        let x_2765 : vec2<f32> = vec2<f32>(x_2764.z, x_2764.w);
        let x_2767 : f32 = vs_INTERP3.z;
        txVec48 = vec3<f32>(x_2765.x, x_2765.y, x_2767);
        let x_2774 : vec3<f32> = txVec48;
        let x_2776 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2774.xy, x_2774.z);
        u_xlat8.x = x_2776;
        let x_2779 : f32 = u_xlat19.y;
        let x_2781 : f32 = u_xlat8.x;
        let x_2783 : f32 = u_xlat84;
        u_xlat84 = ((x_2779 * x_2781) + x_2783);
        let x_2786 : vec2<f32> = u_xlat65;
        let x_2788 : f32 = vs_INTERP3.z;
        txVec49 = vec3<f32>(x_2786.x, x_2786.y, x_2788);
        let x_2795 : vec3<f32> = txVec49;
        let x_2797 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2795.xy, x_2795.z);
        u_xlat8.x = x_2797;
        let x_2800 : f32 = u_xlat19.z;
        let x_2802 : f32 = u_xlat8.x;
        let x_2804 : f32 = u_xlat84;
        u_xlat84 = ((x_2800 * x_2802) + x_2804);
        let x_2807 : vec4<f32> = u_xlat15;
        let x_2808 : vec2<f32> = vec2<f32>(x_2807.z, x_2807.w);
        let x_2810 : f32 = vs_INTERP3.z;
        txVec50 = vec3<f32>(x_2808.x, x_2808.y, x_2810);
        let x_2817 : vec3<f32> = txVec50;
        let x_2819 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2817.xy, x_2817.z);
        u_xlat8.x = x_2819;
        let x_2822 : f32 = u_xlat19.w;
        let x_2824 : f32 = u_xlat8.x;
        let x_2826 : f32 = u_xlat84;
        u_xlat84 = ((x_2822 * x_2824) + x_2826);
        let x_2829 : vec4<f32> = u_xlat16;
        let x_2830 : vec2<f32> = vec2<f32>(x_2829.x, x_2829.y);
        let x_2832 : f32 = vs_INTERP3.z;
        txVec51 = vec3<f32>(x_2830.x, x_2830.y, x_2832);
        let x_2839 : vec3<f32> = txVec51;
        let x_2841 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2839.xy, x_2839.z);
        u_xlat8.x = x_2841;
        let x_2844 : f32 = u_xlat20.x;
        let x_2846 : f32 = u_xlat8.x;
        let x_2848 : f32 = u_xlat84;
        u_xlat84 = ((x_2844 * x_2846) + x_2848);
        let x_2851 : vec4<f32> = u_xlat16;
        let x_2852 : vec2<f32> = vec2<f32>(x_2851.z, x_2851.w);
        let x_2854 : f32 = vs_INTERP3.z;
        txVec52 = vec3<f32>(x_2852.x, x_2852.y, x_2854);
        let x_2861 : vec3<f32> = txVec52;
        let x_2863 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2861.xy, x_2861.z);
        u_xlat8.x = x_2863;
        let x_2866 : f32 = u_xlat20.y;
        let x_2868 : f32 = u_xlat8.x;
        let x_2870 : f32 = u_xlat84;
        u_xlat84 = ((x_2866 * x_2868) + x_2870);
        let x_2873 : vec2<f32> = u_xlat34;
        let x_2875 : f32 = vs_INTERP3.z;
        txVec53 = vec3<f32>(x_2873.x, x_2873.y, x_2875);
        let x_2882 : vec3<f32> = txVec53;
        let x_2884 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2882.xy, x_2882.z);
        u_xlat8.x = x_2884;
        let x_2887 : f32 = u_xlat20.z;
        let x_2889 : f32 = u_xlat8.x;
        let x_2891 : f32 = u_xlat84;
        u_xlat84 = ((x_2887 * x_2889) + x_2891);
        let x_2894 : vec4<f32> = u_xlat17;
        let x_2895 : vec2<f32> = vec2<f32>(x_2894.x, x_2894.y);
        let x_2897 : f32 = vs_INTERP3.z;
        txVec54 = vec3<f32>(x_2895.x, x_2895.y, x_2897);
        let x_2904 : vec3<f32> = txVec54;
        let x_2906 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2904.xy, x_2904.z);
        u_xlat8.x = x_2906;
        let x_2909 : f32 = u_xlat20.w;
        let x_2911 : f32 = u_xlat8.x;
        let x_2913 : f32 = u_xlat84;
        u_xlat84 = ((x_2909 * x_2911) + x_2913);
        let x_2916 : vec4<f32> = u_xlat11;
        let x_2917 : vec2<f32> = vec2<f32>(x_2916.x, x_2916.y);
        let x_2919 : f32 = vs_INTERP3.z;
        txVec55 = vec3<f32>(x_2917.x, x_2917.y, x_2919);
        let x_2926 : vec3<f32> = txVec55;
        let x_2928 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2926.xy, x_2926.z);
        u_xlat8.x = x_2928;
        let x_2931 : f32 = u_xlat7.x;
        let x_2933 : f32 = u_xlat8.x;
        let x_2935 : f32 = u_xlat84;
        u_xlat84 = ((x_2931 * x_2933) + x_2935);
        let x_2938 : vec4<f32> = u_xlat11;
        let x_2939 : vec2<f32> = vec2<f32>(x_2938.z, x_2938.w);
        let x_2941 : f32 = vs_INTERP3.z;
        txVec56 = vec3<f32>(x_2939.x, x_2939.y, x_2941);
        let x_2948 : vec3<f32> = txVec56;
        let x_2950 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2948.xy, x_2948.z);
        u_xlat7.x = x_2950;
        let x_2953 : f32 = u_xlat7.y;
        let x_2955 : f32 = u_xlat7.x;
        let x_2957 : f32 = u_xlat84;
        u_xlat84 = ((x_2953 * x_2955) + x_2957);
        let x_2960 : vec2<f32> = u_xlat62;
        let x_2962 : f32 = vs_INTERP3.z;
        txVec57 = vec3<f32>(x_2960.x, x_2960.y, x_2962);
        let x_2969 : vec3<f32> = txVec57;
        let x_2971 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2969.xy, x_2969.z);
        u_xlat7.x = x_2971;
        let x_2974 : f32 = u_xlat7.z;
        let x_2976 : f32 = u_xlat7.x;
        let x_2978 : f32 = u_xlat84;
        u_xlat84 = ((x_2974 * x_2976) + x_2978);
        let x_2981 : vec3<f32> = u_xlat32;
        let x_2982 : vec2<f32> = vec2<f32>(x_2981.x, x_2981.y);
        let x_2984 : f32 = vs_INTERP3.z;
        txVec58 = vec3<f32>(x_2982.x, x_2982.y, x_2984);
        let x_2991 : vec3<f32> = txVec58;
        let x_2993 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2991.xy, x_2991.z);
        u_xlat32.x = x_2993;
        let x_2996 : f32 = u_xlat7.w;
        let x_2998 : f32 = u_xlat32.x;
        let x_3000 : f32 = u_xlat84;
        u_xlat78 = ((x_2996 * x_2998) + x_3000);
      }
    }
  } else {
    let x_3004 : vec4<f32> = vs_INTERP3;
    let x_3005 : vec2<f32> = vec2<f32>(x_3004.x, x_3004.y);
    let x_3007 : f32 = vs_INTERP3.z;
    txVec59 = vec3<f32>(x_3005.x, x_3005.y, x_3007);
    let x_3014 : vec3<f32> = txVec59;
    let x_3016 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3014.xy, x_3014.z);
    u_xlat78 = x_3016;
  }
  let x_3017 : f32 = u_xlat78;
  let x_3019 : f32 = x_131.x_MainLightShadowParams.x;
  let x_3022 : f32 = u_xlat4.x;
  u_xlat78 = ((x_3017 * x_3019) + x_3022);
  let x_3026 : f32 = vs_INTERP3.z;
  u_xlatb4 = (0.0f >= x_3026);
  let x_3029 : f32 = vs_INTERP3.z;
  u_xlatb32.x = (x_3029 >= 1.0f);
  let x_3032 : bool = u_xlatb4;
  let x_3034 : bool = u_xlatb32.x;
  u_xlatb4 = (x_3032 | x_3034);
  let x_3036 : bool = u_xlatb4;
  let x_3037 : f32 = u_xlat78;
  u_xlat78 = select(x_3037, 1.0f, x_3036);
  let x_3039 : vec3<f32> = vs_INTERP8;
  let x_3041 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  u_xlat32 = (x_3039 + -(x_3041));
  let x_3044 : vec3<f32> = u_xlat32;
  let x_3045 : vec3<f32> = u_xlat32;
  u_xlat4.x = dot(x_3044, x_3045);
  let x_3049 : f32 = u_xlat4.x;
  let x_3051 : f32 = x_131.x_MainLightShadowParams.z;
  let x_3054 : f32 = x_131.x_MainLightShadowParams.w;
  u_xlat32.x = ((x_3049 * x_3051) + x_3054);
  let x_3058 : f32 = u_xlat32.x;
  u_xlat32.x = clamp(x_3058, 0.0f, 1.0f);
  let x_3061 : f32 = u_xlat78;
  u_xlat58 = (-(x_3061) + 1.0f);
  let x_3065 : f32 = u_xlat32.x;
  let x_3066 : f32 = u_xlat58;
  let x_3068 : f32 = u_xlat78;
  u_xlat78 = ((x_3065 * x_3066) + x_3068);
  let x_3077 : f32 = x_3075.x_MainLightCookieTextureFormat;
  u_xlatb32.x = !((x_3077 == -1.0f));
  let x_3081 : bool = u_xlatb32.x;
  if (x_3081) {
    let x_3084 : vec3<f32> = vs_INTERP8;
    let x_3087 : vec4<f32> = x_3075.x_MainLightWorldToLight[1i];
    let x_3089 : vec2<f32> = (vec2<f32>(x_3084.y, x_3084.y) * vec2<f32>(x_3087.x, x_3087.y));
    let x_3090 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_3089.x, x_3089.y, x_3090.z);
    let x_3093 : vec4<f32> = x_3075.x_MainLightWorldToLight[0i];
    let x_3095 : vec3<f32> = vs_INTERP8;
    let x_3098 : vec3<f32> = u_xlat32;
    let x_3100 : vec2<f32> = ((vec2<f32>(x_3093.x, x_3093.y) * vec2<f32>(x_3095.x, x_3095.x)) + vec2<f32>(x_3098.x, x_3098.y));
    let x_3101 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_3100.x, x_3100.y, x_3101.z);
    let x_3104 : vec4<f32> = x_3075.x_MainLightWorldToLight[2i];
    let x_3106 : vec3<f32> = vs_INTERP8;
    let x_3109 : vec3<f32> = u_xlat32;
    let x_3111 : vec2<f32> = ((vec2<f32>(x_3104.x, x_3104.y) * vec2<f32>(x_3106.z, x_3106.z)) + vec2<f32>(x_3109.x, x_3109.y));
    let x_3112 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_3111.x, x_3111.y, x_3112.z);
    let x_3114 : vec3<f32> = u_xlat32;
    let x_3117 : vec4<f32> = x_3075.x_MainLightWorldToLight[3i];
    let x_3119 : vec2<f32> = (vec2<f32>(x_3114.x, x_3114.y) + vec2<f32>(x_3117.x, x_3117.y));
    let x_3120 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_3119.x, x_3119.y, x_3120.z);
    let x_3122 : vec3<f32> = u_xlat32;
    let x_3125 : vec2<f32> = ((vec2<f32>(x_3122.x, x_3122.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_3126 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_3125.x, x_3125.y, x_3126.z);
    let x_3133 : vec3<f32> = u_xlat32;
    let x_3136 : f32 = x_53.x_GlobalMipBias.x;
    let x_3137 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_3133.x, x_3133.y), x_3136);
    u_xlat7 = x_3137;
    let x_3139 : f32 = x_3075.x_MainLightCookieTextureFormat;
    let x_3141 : f32 = x_3075.x_MainLightCookieTextureFormat;
    let x_3143 : f32 = x_3075.x_MainLightCookieTextureFormat;
    let x_3145 : f32 = x_3075.x_MainLightCookieTextureFormat;
    let x_3146 : vec4<f32> = vec4<f32>(x_3139, x_3141, x_3143, x_3145);
    let x_3154 : vec4<bool> = (vec4<f32>(x_3146.x, x_3146.y, x_3146.z, x_3146.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb32 = vec2<bool>(x_3154.x, x_3154.y);
    let x_3157 : bool = u_xlatb32.y;
    if (x_3157) {
      let x_3162 : f32 = u_xlat7.w;
      x_3158 = x_3162;
    } else {
      let x_3165 : f32 = u_xlat7.x;
      x_3158 = x_3165;
    }
    let x_3166 : f32 = x_3158;
    u_xlat58 = x_3166;
    let x_3168 : bool = u_xlatb32.x;
    if (x_3168) {
      let x_3172 : vec4<f32> = u_xlat7;
      x_3169 = vec3<f32>(x_3172.x, x_3172.y, x_3172.z);
    } else {
      let x_3175 : f32 = u_xlat58;
      x_3169 = vec3<f32>(x_3175, x_3175, x_3175);
    }
    let x_3177 : vec3<f32> = x_3169;
    u_xlat32 = x_3177;
  } else {
    u_xlat32.x = 1.0f;
    u_xlat32.y = 1.0f;
    u_xlat32.z = 1.0f;
  }
  let x_3182 : vec3<f32> = u_xlat32;
  let x_3184 : vec4<f32> = x_53.x_MainLightColor;
  u_xlat32 = (x_3182 * vec3<f32>(x_3184.x, x_3184.y, x_3184.z));
  let x_3187 : vec4<f32> = u_xlat5;
  let x_3190 : vec3<f32> = u_xlat29;
  u_xlat7.x = dot(-(vec3<f32>(x_3187.x, x_3187.y, x_3187.z)), x_3190);
  let x_3194 : f32 = u_xlat7.x;
  let x_3196 : f32 = u_xlat7.x;
  u_xlat7.x = (x_3194 + x_3196);
  let x_3199 : vec3<f32> = u_xlat29;
  let x_3200 : vec4<f32> = u_xlat7;
  let x_3204 : vec4<f32> = u_xlat5;
  let x_3207 : vec3<f32> = ((x_3199 * -(vec3<f32>(x_3200.x, x_3200.x, x_3200.x))) + -(vec3<f32>(x_3204.x, x_3204.y, x_3204.z)));
  let x_3208 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3207.x, x_3207.y, x_3207.z, x_3208.w);
  let x_3211 : vec3<f32> = u_xlat29;
  let x_3212 : vec4<f32> = u_xlat5;
  u_xlat85 = dot(x_3211, vec3<f32>(x_3212.x, x_3212.y, x_3212.z));
  let x_3215 : f32 = u_xlat85;
  u_xlat85 = clamp(x_3215, 0.0f, 1.0f);
  let x_3217 : f32 = u_xlat85;
  u_xlat85 = (-(x_3217) + 1.0f);
  let x_3220 : f32 = u_xlat85;
  let x_3221 : f32 = u_xlat85;
  u_xlat85 = (x_3220 * x_3221);
  let x_3223 : f32 = u_xlat85;
  let x_3224 : f32 = u_xlat85;
  u_xlat85 = (x_3223 * x_3224);
  let x_3227 : f32 = u_xlat27.x;
  u_xlat8.x = ((-(x_3227) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3235 : f32 = u_xlat27.x;
  let x_3237 : f32 = u_xlat8.x;
  u_xlat27.x = (x_3235 * x_3237);
  let x_3241 : f32 = u_xlat27.x;
  u_xlat27.x = (x_3241 * 6.0f);
  let x_3253 : vec4<f32> = u_xlat7;
  let x_3256 : f32 = u_xlat27.x;
  let x_3257 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_3253.x, x_3253.y, x_3253.z), x_3256);
  u_xlat8 = x_3257;
  let x_3259 : f32 = u_xlat8.w;
  u_xlat27.x = (x_3259 + -1.0f);
  let x_3263 : f32 = x_1585.unity_SpecCube0_HDR.w;
  let x_3265 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_3263 * x_3265) + 1.0f);
  let x_3270 : f32 = u_xlat27.x;
  u_xlat27.x = max(x_3270, 0.0f);
  let x_3274 : f32 = u_xlat27.x;
  u_xlat27.x = log2(x_3274);
  let x_3278 : f32 = u_xlat27.x;
  let x_3280 : f32 = x_1585.unity_SpecCube0_HDR.y;
  u_xlat27.x = (x_3278 * x_3280);
  let x_3284 : f32 = u_xlat27.x;
  u_xlat27.x = exp2(x_3284);
  let x_3288 : f32 = u_xlat27.x;
  let x_3290 : f32 = x_1585.unity_SpecCube0_HDR.x;
  u_xlat27.x = (x_3288 * x_3290);
  let x_3293 : vec4<f32> = u_xlat8;
  let x_3295 : vec3<f32> = u_xlat27;
  let x_3297 : vec3<f32> = (vec3<f32>(x_3293.x, x_3293.y, x_3293.z) * vec3<f32>(x_3295.x, x_3295.x, x_3295.x));
  let x_3298 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3297.x, x_3297.y, x_3297.z, x_3298.w);
  let x_3300 : f32 = u_xlat79;
  let x_3302 : f32 = u_xlat79;
  let x_3306 : vec2<f32> = ((vec2<f32>(x_3300, x_3300) * vec2<f32>(x_3302, x_3302)) + vec2<f32>(-1.0f, 1.0f));
  let x_3307 : vec3<f32> = u_xlat27;
  u_xlat27 = vec3<f32>(x_3306.x, x_3307.y, x_3306.y);
  let x_3310 : f32 = u_xlat27.z;
  u_xlat79 = (1.0f / x_3310);
  let x_3313 : f32 = u_xlat3.x;
  u_xlat3.x = (x_3313 + -0.03999999910593032837f);
  let x_3317 : f32 = u_xlat85;
  let x_3319 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_3317 * x_3319) + 0.03999999910593032837f);
  let x_3324 : f32 = u_xlat79;
  let x_3326 : f32 = u_xlat3.x;
  u_xlat79 = (x_3324 * x_3326);
  let x_3328 : f32 = u_xlat79;
  let x_3330 : vec4<f32> = u_xlat7;
  let x_3332 : vec3<f32> = (vec3<f32>(x_3328, x_3328, x_3328) * vec3<f32>(x_3330.x, x_3330.y, x_3330.z));
  let x_3333 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3332.x, x_3332.y, x_3332.z, x_3333.w);
  let x_3335 : vec3<f32> = u_xlat30;
  let x_3336 : vec3<f32> = u_xlat2;
  let x_3338 : vec4<f32> = u_xlat7;
  u_xlat30 = ((x_3335 * x_3336) + vec3<f32>(x_3338.x, x_3338.y, x_3338.z));
  let x_3341 : f32 = u_xlat78;
  let x_3343 : f32 = x_1585.unity_LightData.z;
  u_xlat78 = (x_3341 * x_3343);
  let x_3345 : vec3<f32> = u_xlat29;
  let x_3347 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat79 = dot(x_3345, vec3<f32>(x_3347.x, x_3347.y, x_3347.z));
  let x_3350 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3350, 0.0f, 1.0f);
  let x_3352 : f32 = u_xlat78;
  let x_3353 : f32 = u_xlat79;
  u_xlat78 = (x_3352 * x_3353);
  let x_3355 : f32 = u_xlat78;
  let x_3357 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_3355, x_3355, x_3355) * x_3357);
  let x_3359 : vec4<f32> = u_xlat5;
  let x_3362 : vec4<f32> = x_53.x_MainLightPosition;
  let x_3364 : vec3<f32> = (vec3<f32>(x_3359.x, x_3359.y, x_3359.z) + vec3<f32>(x_3362.x, x_3362.y, x_3362.z));
  let x_3365 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3364.x, x_3364.y, x_3364.z, x_3365.w);
  let x_3367 : vec4<f32> = u_xlat7;
  let x_3369 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_3367.x, x_3367.y, x_3367.z), vec3<f32>(x_3369.x, x_3369.y, x_3369.z));
  let x_3372 : f32 = u_xlat78;
  u_xlat78 = max(x_3372, 1.17549435e-38f);
  let x_3375 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_3375);
  let x_3377 : f32 = u_xlat78;
  let x_3379 : vec4<f32> = u_xlat7;
  let x_3381 : vec3<f32> = (vec3<f32>(x_3377, x_3377, x_3377) * vec3<f32>(x_3379.x, x_3379.y, x_3379.z));
  let x_3382 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3381.x, x_3381.y, x_3381.z, x_3382.w);
  let x_3384 : vec3<f32> = u_xlat29;
  let x_3385 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(x_3384, vec3<f32>(x_3385.x, x_3385.y, x_3385.z));
  let x_3388 : f32 = u_xlat78;
  u_xlat78 = clamp(x_3388, 0.0f, 1.0f);
  let x_3391 : vec4<f32> = x_53.x_MainLightPosition;
  let x_3393 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec3<f32>(x_3391.x, x_3391.y, x_3391.z), vec3<f32>(x_3393.x, x_3393.y, x_3393.z));
  let x_3396 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3396, 0.0f, 1.0f);
  let x_3398 : f32 = u_xlat78;
  let x_3399 : f32 = u_xlat78;
  u_xlat78 = (x_3398 * x_3399);
  let x_3401 : f32 = u_xlat78;
  let x_3403 : f32 = u_xlat27.x;
  u_xlat78 = ((x_3401 * x_3403) + 1.00001001358032226562f);
  let x_3407 : f32 = u_xlat79;
  let x_3408 : f32 = u_xlat79;
  u_xlat79 = (x_3407 * x_3408);
  let x_3410 : f32 = u_xlat78;
  let x_3411 : f32 = u_xlat78;
  u_xlat78 = (x_3410 * x_3411);
  let x_3413 : f32 = u_xlat79;
  u_xlat79 = max(x_3413, 0.10000000149011611938f);
  let x_3416 : f32 = u_xlat78;
  let x_3417 : f32 = u_xlat79;
  u_xlat78 = (x_3416 * x_3417);
  let x_3419 : f32 = u_xlat83;
  let x_3420 : f32 = u_xlat78;
  u_xlat78 = (x_3419 * x_3420);
  let x_3422 : f32 = u_xlat80;
  let x_3423 : f32 = u_xlat78;
  u_xlat78 = (x_3422 / x_3423);
  let x_3425 : f32 = u_xlat78;
  let x_3429 : vec3<f32> = u_xlat2;
  let x_3430 : vec3<f32> = ((vec3<f32>(x_3425, x_3425, x_3425) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3429);
  let x_3431 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3430.x, x_3430.y, x_3430.z, x_3431.w);
  let x_3433 : vec3<f32> = u_xlat32;
  let x_3434 : vec4<f32> = u_xlat7;
  u_xlat32 = (x_3433 * vec3<f32>(x_3434.x, x_3434.y, x_3434.z));
  let x_3439 : f32 = x_53.x_AdditionalLightsCount.x;
  let x_3441 : f32 = x_1585.unity_LightData.y;
  u_xlat78 = min(x_3439, x_3441);
  let x_3445 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_3445));
  let x_3449 : f32 = u_xlat4.x;
  let x_3452 : f32 = x_131.x_AdditionalShadowFadeParams.x;
  let x_3455 : f32 = x_131.x_AdditionalShadowFadeParams.y;
  u_xlat79 = ((x_3449 * x_3452) + x_3455);
  let x_3457 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3457, 0.0f, 1.0f);
  let x_3461 : f32 = x_3075.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3463 : f32 = x_3075.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3465 : f32 = x_3075.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3467 : f32 = x_3075.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3468 : vec4<f32> = vec4<f32>(x_3461, x_3463, x_3465, x_3467);
  let x_3474 : vec4<bool> = (vec4<f32>(x_3468.x, x_3468.y, x_3468.z, x_3468.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_3474.x, x_3474.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3486 : u32 = u_xlatu_loop_1;
    let x_3487 : u32 = u_xlatu78;
    if ((x_3486 < x_3487)) {
    } else {
      break;
    }
    let x_3490 : u32 = u_xlatu_loop_1;
    u_xlatu4 = (x_3490 >> 2u);
    let x_3494 : u32 = u_xlatu_loop_1;
    u_xlati59 = bitcast<i32>((x_3494 & 3u));
    let x_3497 : u32 = u_xlatu4;
    let x_3500 : vec4<f32> = x_1585.unity_LightIndices[bitcast<i32>(x_3497)];
    let x_3510 : i32 = u_xlati59;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3515 : vec4<u32> = indexable[x_3510];
    u_xlat4.x = dot(x_3500, bitcast<vec4<f32>>(x_3515));
    let x_3521 : f32 = u_xlat4.x;
    u_xlati4 = i32(x_3521);
    let x_3523 : vec3<f32> = vs_INTERP8;
    let x_3534 : i32 = u_xlati4;
    let x_3536 : vec4<f32> = x_3533.x_AdditionalLightsPosition[x_3534];
    let x_3539 : i32 = u_xlati4;
    let x_3541 : vec4<f32> = x_3533.x_AdditionalLightsPosition[x_3539];
    let x_3543 : vec3<f32> = ((-(x_3523) * vec3<f32>(x_3536.w, x_3536.w, x_3536.w)) + vec3<f32>(x_3541.x, x_3541.y, x_3541.z));
    let x_3544 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3543.x, x_3543.y, x_3543.z, x_3544.w);
    let x_3546 : vec4<f32> = u_xlat9;
    let x_3548 : vec4<f32> = u_xlat9;
    u_xlat59.x = dot(vec3<f32>(x_3546.x, x_3546.y, x_3546.z), vec3<f32>(x_3548.x, x_3548.y, x_3548.z));
    let x_3553 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_3553, 0.00006103515625f);
    let x_3558 : f32 = u_xlat59.x;
    u_xlat85 = inverseSqrt(x_3558);
    let x_3560 : f32 = u_xlat85;
    let x_3562 : vec4<f32> = u_xlat9;
    let x_3564 : vec3<f32> = (vec3<f32>(x_3560, x_3560, x_3560) * vec3<f32>(x_3562.x, x_3562.y, x_3562.z));
    let x_3565 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3564.x, x_3564.y, x_3564.z, x_3565.w);
    let x_3569 : f32 = u_xlat59.x;
    u_xlat86 = (1.0f / x_3569);
    let x_3572 : f32 = u_xlat59.x;
    let x_3573 : i32 = u_xlati4;
    let x_3575 : f32 = x_3533.x_AdditionalLightsAttenuation[x_3573].x;
    u_xlat59.x = (x_3572 * x_3575);
    let x_3579 : f32 = u_xlat59.x;
    let x_3582 : f32 = u_xlat59.x;
    u_xlat59.x = ((-(x_3579) * x_3582) + 1.0f);
    let x_3587 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_3587, 0.0f);
    let x_3591 : f32 = u_xlat59.x;
    let x_3593 : f32 = u_xlat59.x;
    u_xlat59.x = (x_3591 * x_3593);
    let x_3597 : f32 = u_xlat59.x;
    let x_3598 : f32 = u_xlat86;
    u_xlat59.x = (x_3597 * x_3598);
    let x_3601 : i32 = u_xlati4;
    let x_3603 : vec4<f32> = x_3533.x_AdditionalLightsSpotDir[x_3601];
    let x_3605 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_3603.x, x_3603.y, x_3603.z), vec3<f32>(x_3605.x, x_3605.y, x_3605.z));
    let x_3608 : f32 = u_xlat86;
    let x_3609 : i32 = u_xlati4;
    let x_3611 : f32 = x_3533.x_AdditionalLightsAttenuation[x_3609].z;
    let x_3613 : i32 = u_xlati4;
    let x_3615 : f32 = x_3533.x_AdditionalLightsAttenuation[x_3613].w;
    u_xlat86 = ((x_3608 * x_3611) + x_3615);
    let x_3617 : f32 = u_xlat86;
    u_xlat86 = clamp(x_3617, 0.0f, 1.0f);
    let x_3619 : f32 = u_xlat86;
    let x_3620 : f32 = u_xlat86;
    u_xlat86 = (x_3619 * x_3620);
    let x_3623 : f32 = u_xlat59.x;
    let x_3624 : f32 = u_xlat86;
    u_xlat59.x = (x_3623 * x_3624);
    let x_3629 : i32 = u_xlati4;
    let x_3631 : f32 = x_131.x_AdditionalShadowParams[x_3629].w;
    u_xlati86 = i32(x_3631);
    let x_3634 : i32 = u_xlati86;
    u_xlatb87 = (x_3634 >= 0i);
    let x_3636 : bool = u_xlatb87;
    if (x_3636) {
      let x_3640 : i32 = u_xlati4;
      let x_3642 : f32 = x_131.x_AdditionalShadowParams[x_3640].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3642, x_3642, x_3642, x_3642))));
      let x_3646 : bool = u_xlatb87;
      if (x_3646) {
        let x_3651 : vec4<f32> = u_xlat10;
        let x_3654 : vec4<f32> = u_xlat10;
        let x_3657 : vec4<bool> = (abs(vec4<f32>(x_3651.z, x_3651.z, x_3651.y, x_3651.z)) >= abs(vec4<f32>(x_3654.x, x_3654.y, x_3654.x, x_3654.x)));
        let x_3658 : vec3<bool> = vec3<bool>(x_3657.x, x_3657.y, x_3657.z);
        let x_3659 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3658.x, x_3658.y, x_3658.z, x_3659.w);
        let x_3662 : bool = u_xlatb11.y;
        let x_3664 : bool = u_xlatb11.x;
        u_xlatb87 = (x_3662 & x_3664);
        let x_3666 : vec4<f32> = u_xlat10;
        let x_3669 : vec4<bool> = (-(vec4<f32>(x_3666.z, x_3666.y, x_3666.z, x_3666.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3670 : vec3<bool> = vec3<bool>(x_3669.x, x_3669.y, x_3669.w);
        let x_3671 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3670.x, x_3670.y, x_3671.z, x_3670.z);
        let x_3674 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3674);
        let x_3679 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3679);
        let x_3685 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_3685);
        let x_3688 : bool = u_xlatb11.z;
        if (x_3688) {
          let x_3693 : f32 = u_xlat11.y;
          x_3689 = x_3693;
        } else {
          let x_3695 : f32 = u_xlat88;
          x_3689 = x_3695;
        }
        let x_3696 : f32 = x_3689;
        u_xlat88 = x_3696;
        let x_3698 : bool = u_xlatb87;
        if (x_3698) {
          let x_3703 : f32 = u_xlat11.x;
          x_3699 = x_3703;
        } else {
          let x_3705 : f32 = u_xlat88;
          x_3699 = x_3705;
        }
        let x_3706 : f32 = x_3699;
        u_xlat87 = x_3706;
        let x_3707 : i32 = u_xlati4;
        let x_3709 : f32 = x_131.x_AdditionalShadowParams[x_3707].w;
        u_xlat88 = trunc(x_3709);
        let x_3711 : f32 = u_xlat87;
        let x_3712 : f32 = u_xlat88;
        u_xlat87 = (x_3711 + x_3712);
        let x_3714 : f32 = u_xlat87;
        u_xlati86 = i32(x_3714);
      }
      let x_3716 : i32 = u_xlati86;
      u_xlati86 = (x_3716 << bitcast<u32>(2i));
      let x_3718 : vec3<f32> = vs_INTERP8;
      let x_3721 : i32 = u_xlati86;
      let x_3724 : i32 = u_xlati86;
      let x_3728 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_3721 + 1i) / 4i)][((x_3724 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3718.y, x_3718.y, x_3718.y, x_3718.y) * x_3728);
      let x_3730 : i32 = u_xlati86;
      let x_3732 : i32 = u_xlati86;
      let x_3735 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[(x_3730 / 4i)][(x_3732 % 4i)];
      let x_3736 : vec3<f32> = vs_INTERP8;
      let x_3739 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3735 * vec4<f32>(x_3736.x, x_3736.x, x_3736.x, x_3736.x)) + x_3739);
      let x_3741 : i32 = u_xlati86;
      let x_3744 : i32 = u_xlati86;
      let x_3748 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_3741 + 2i) / 4i)][((x_3744 + 2i) % 4i)];
      let x_3749 : vec3<f32> = vs_INTERP8;
      let x_3752 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3748 * vec4<f32>(x_3749.z, x_3749.z, x_3749.z, x_3749.z)) + x_3752);
      let x_3754 : vec4<f32> = u_xlat11;
      let x_3755 : i32 = u_xlati86;
      let x_3758 : i32 = u_xlati86;
      let x_3762 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_3755 + 3i) / 4i)][((x_3758 + 3i) % 4i)];
      u_xlat11 = (x_3754 + x_3762);
      let x_3764 : vec4<f32> = u_xlat11;
      let x_3766 : vec4<f32> = u_xlat11;
      let x_3768 : vec3<f32> = (vec3<f32>(x_3764.x, x_3764.y, x_3764.z) / vec3<f32>(x_3766.w, x_3766.w, x_3766.w));
      let x_3769 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3768.x, x_3768.y, x_3768.z, x_3769.w);
      let x_3772 : i32 = u_xlati4;
      let x_3774 : f32 = x_131.x_AdditionalShadowParams[x_3772].y;
      u_xlatb86 = (0.0f < x_3774);
      let x_3776 : bool = u_xlatb86;
      if (x_3776) {
        let x_3779 : i32 = u_xlati4;
        let x_3781 : f32 = x_131.x_AdditionalShadowParams[x_3779].y;
        u_xlatb86 = (1.0f == x_3781);
        let x_3783 : bool = u_xlatb86;
        if (x_3783) {
          let x_3786 : vec4<f32> = u_xlat11;
          let x_3790 : vec4<f32> = x_131.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3786.x, x_3786.y, x_3786.x, x_3786.y) + x_3790);
          let x_3793 : vec4<f32> = u_xlat12;
          let x_3794 : vec2<f32> = vec2<f32>(x_3793.x, x_3793.y);
          let x_3796 : f32 = u_xlat11.z;
          txVec60 = vec3<f32>(x_3794.x, x_3794.y, x_3796);
          let x_3804 : vec3<f32> = txVec60;
          let x_3806 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3804.xy, x_3804.z);
          u_xlat13.x = x_3806;
          let x_3809 : vec4<f32> = u_xlat12;
          let x_3810 : vec2<f32> = vec2<f32>(x_3809.z, x_3809.w);
          let x_3812 : f32 = u_xlat11.z;
          txVec61 = vec3<f32>(x_3810.x, x_3810.y, x_3812);
          let x_3819 : vec3<f32> = txVec61;
          let x_3821 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3819.xy, x_3819.z);
          u_xlat13.y = x_3821;
          let x_3823 : vec4<f32> = u_xlat11;
          let x_3827 : vec4<f32> = x_131.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3823.x, x_3823.y, x_3823.x, x_3823.y) + x_3827);
          let x_3830 : vec4<f32> = u_xlat12;
          let x_3831 : vec2<f32> = vec2<f32>(x_3830.x, x_3830.y);
          let x_3833 : f32 = u_xlat11.z;
          txVec62 = vec3<f32>(x_3831.x, x_3831.y, x_3833);
          let x_3840 : vec3<f32> = txVec62;
          let x_3842 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3840.xy, x_3840.z);
          u_xlat13.z = x_3842;
          let x_3845 : vec4<f32> = u_xlat12;
          let x_3846 : vec2<f32> = vec2<f32>(x_3845.z, x_3845.w);
          let x_3848 : f32 = u_xlat11.z;
          txVec63 = vec3<f32>(x_3846.x, x_3846.y, x_3848);
          let x_3855 : vec3<f32> = txVec63;
          let x_3857 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3855.xy, x_3855.z);
          u_xlat13.w = x_3857;
          let x_3859 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_3859, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3862 : i32 = u_xlati4;
          let x_3864 : f32 = x_131.x_AdditionalShadowParams[x_3862].y;
          u_xlatb87 = (2.0f == x_3864);
          let x_3866 : bool = u_xlatb87;
          if (x_3866) {
            let x_3869 : vec4<f32> = u_xlat11;
            let x_3873 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3876 : vec2<f32> = ((vec2<f32>(x_3869.x, x_3869.y) * vec2<f32>(x_3873.z, x_3873.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3877 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3876.x, x_3876.y, x_3877.z, x_3877.w);
            let x_3879 : vec4<f32> = u_xlat12;
            let x_3881 : vec2<f32> = floor(vec2<f32>(x_3879.x, x_3879.y));
            let x_3882 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3881.x, x_3881.y, x_3882.z, x_3882.w);
            let x_3885 : vec4<f32> = u_xlat11;
            let x_3888 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3891 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3885.x, x_3885.y) * vec2<f32>(x_3888.z, x_3888.w)) + -(vec2<f32>(x_3891.x, x_3891.y)));
            let x_3895 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3895.x, x_3895.x, x_3895.y, x_3895.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3898 : vec4<f32> = u_xlat13;
            let x_3900 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3898.x, x_3898.x, x_3898.z, x_3898.z) * vec4<f32>(x_3900.x, x_3900.x, x_3900.z, x_3900.z));
            let x_3903 : vec4<f32> = u_xlat14;
            let x_3905 : vec2<f32> = (vec2<f32>(x_3903.y, x_3903.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3906 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3905.x, x_3906.y, x_3905.y, x_3906.w);
            let x_3908 : vec4<f32> = u_xlat14;
            let x_3911 : vec2<f32> = u_xlat64;
            let x_3913 : vec2<f32> = ((vec2<f32>(x_3908.x, x_3908.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3911));
            let x_3914 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3913.x, x_3913.y, x_3914.z, x_3914.w);
            let x_3917 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3917) + vec2<f32>(1.0f, 1.0f));
            let x_3920 : vec2<f32> = u_xlat64;
            let x_3921 : vec2<f32> = min(x_3920, vec2<f32>(0.0f, 0.0f));
            let x_3922 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3921.x, x_3921.y, x_3922.z, x_3922.w);
            let x_3924 : vec4<f32> = u_xlat15;
            let x_3927 : vec4<f32> = u_xlat15;
            let x_3930 : vec2<f32> = u_xlat66;
            let x_3931 : vec2<f32> = ((-(vec2<f32>(x_3924.x, x_3924.y)) * vec2<f32>(x_3927.x, x_3927.y)) + x_3930);
            let x_3932 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3931.x, x_3931.y, x_3932.z, x_3932.w);
            let x_3934 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3934, vec2<f32>(0.0f, 0.0f));
            let x_3936 : vec2<f32> = u_xlat64;
            let x_3938 : vec2<f32> = u_xlat64;
            let x_3940 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3936) * x_3938) + vec2<f32>(x_3940.y, x_3940.w));
            let x_3943 : vec4<f32> = u_xlat15;
            let x_3945 : vec2<f32> = (vec2<f32>(x_3943.x, x_3943.y) + vec2<f32>(1.0f, 1.0f));
            let x_3946 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3945.x, x_3945.y, x_3946.z, x_3946.w);
            let x_3948 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3948 + vec2<f32>(1.0f, 1.0f));
            let x_3950 : vec4<f32> = u_xlat14;
            let x_3952 : vec2<f32> = (vec2<f32>(x_3950.x, x_3950.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3953 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3952.x, x_3952.y, x_3953.z, x_3953.w);
            let x_3955 : vec2<f32> = u_xlat66;
            let x_3956 : vec2<f32> = (x_3955 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3957 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3956.x, x_3956.y, x_3957.z, x_3957.w);
            let x_3959 : vec4<f32> = u_xlat15;
            let x_3961 : vec2<f32> = (vec2<f32>(x_3959.x, x_3959.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3962 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3961.x, x_3961.y, x_3962.z, x_3962.w);
            let x_3964 : vec2<f32> = u_xlat64;
            let x_3965 : vec2<f32> = (x_3964 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3966 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3965.x, x_3965.y, x_3966.z, x_3966.w);
            let x_3968 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3968.y, x_3968.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3972 : f32 = u_xlat15.x;
            u_xlat16.z = x_3972;
            let x_3975 : f32 = u_xlat64.x;
            u_xlat16.w = x_3975;
            let x_3978 : f32 = u_xlat17.x;
            u_xlat14.z = x_3978;
            let x_3981 : f32 = u_xlat13.x;
            u_xlat14.w = x_3981;
            let x_3983 : vec4<f32> = u_xlat14;
            let x_3985 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3983.z, x_3983.w, x_3983.x, x_3983.z) + vec4<f32>(x_3985.z, x_3985.w, x_3985.x, x_3985.z));
            let x_3989 : f32 = u_xlat16.y;
            u_xlat15.z = x_3989;
            let x_3992 : f32 = u_xlat64.y;
            u_xlat15.w = x_3992;
            let x_3995 : f32 = u_xlat14.y;
            u_xlat17.z = x_3995;
            let x_3998 : f32 = u_xlat13.z;
            u_xlat17.w = x_3998;
            let x_4000 : vec4<f32> = u_xlat15;
            let x_4002 : vec4<f32> = u_xlat17;
            let x_4004 : vec3<f32> = (vec3<f32>(x_4000.z, x_4000.y, x_4000.w) + vec3<f32>(x_4002.z, x_4002.y, x_4002.w));
            let x_4005 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4004.x, x_4004.y, x_4004.z, x_4005.w);
            let x_4007 : vec4<f32> = u_xlat14;
            let x_4009 : vec4<f32> = u_xlat18;
            let x_4011 : vec3<f32> = (vec3<f32>(x_4007.x, x_4007.z, x_4007.w) / vec3<f32>(x_4009.z, x_4009.w, x_4009.y));
            let x_4012 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4011.x, x_4011.y, x_4011.z, x_4012.w);
            let x_4014 : vec4<f32> = u_xlat14;
            let x_4016 : vec3<f32> = (vec3<f32>(x_4014.x, x_4014.y, x_4014.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4017 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4016.x, x_4016.y, x_4016.z, x_4017.w);
            let x_4019 : vec4<f32> = u_xlat17;
            let x_4021 : vec4<f32> = u_xlat13;
            let x_4023 : vec3<f32> = (vec3<f32>(x_4019.z, x_4019.y, x_4019.w) / vec3<f32>(x_4021.x, x_4021.y, x_4021.z));
            let x_4024 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4023.x, x_4023.y, x_4023.z, x_4024.w);
            let x_4026 : vec4<f32> = u_xlat15;
            let x_4028 : vec3<f32> = (vec3<f32>(x_4026.x, x_4026.y, x_4026.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4029 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4028.x, x_4028.y, x_4028.z, x_4029.w);
            let x_4031 : vec4<f32> = u_xlat14;
            let x_4034 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4036 : vec3<f32> = (vec3<f32>(x_4031.y, x_4031.x, x_4031.z) * vec3<f32>(x_4034.x, x_4034.x, x_4034.x));
            let x_4037 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4036.x, x_4036.y, x_4036.z, x_4037.w);
            let x_4039 : vec4<f32> = u_xlat15;
            let x_4042 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4044 : vec3<f32> = (vec3<f32>(x_4039.x, x_4039.y, x_4039.z) * vec3<f32>(x_4042.y, x_4042.y, x_4042.y));
            let x_4045 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4044.x, x_4044.y, x_4044.z, x_4045.w);
            let x_4048 : f32 = u_xlat15.x;
            u_xlat14.w = x_4048;
            let x_4050 : vec4<f32> = u_xlat12;
            let x_4053 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4056 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4050.x, x_4050.y, x_4050.x, x_4050.y) * vec4<f32>(x_4053.x, x_4053.y, x_4053.x, x_4053.y)) + vec4<f32>(x_4056.y, x_4056.w, x_4056.x, x_4056.w));
            let x_4059 : vec4<f32> = u_xlat12;
            let x_4062 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4065 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4059.x, x_4059.y) * vec2<f32>(x_4062.x, x_4062.y)) + vec2<f32>(x_4065.z, x_4065.w));
            let x_4069 : f32 = u_xlat14.y;
            u_xlat15.w = x_4069;
            let x_4071 : vec4<f32> = u_xlat15;
            let x_4072 : vec2<f32> = vec2<f32>(x_4071.y, x_4071.z);
            let x_4073 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4073.x, x_4072.x, x_4073.z, x_4072.y);
            let x_4075 : vec4<f32> = u_xlat12;
            let x_4078 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4081 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_4075.x, x_4075.y, x_4075.x, x_4075.y) * vec4<f32>(x_4078.x, x_4078.y, x_4078.x, x_4078.y)) + vec4<f32>(x_4081.x, x_4081.y, x_4081.z, x_4081.y));
            let x_4084 : vec4<f32> = u_xlat12;
            let x_4087 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4090 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4084.x, x_4084.y, x_4084.x, x_4084.y) * vec4<f32>(x_4087.x, x_4087.y, x_4087.x, x_4087.y)) + vec4<f32>(x_4090.w, x_4090.y, x_4090.w, x_4090.z));
            let x_4093 : vec4<f32> = u_xlat12;
            let x_4096 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4099 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4093.x, x_4093.y, x_4093.x, x_4093.y) * vec4<f32>(x_4096.x, x_4096.y, x_4096.x, x_4096.y)) + vec4<f32>(x_4099.x, x_4099.w, x_4099.z, x_4099.w));
            let x_4102 : vec4<f32> = u_xlat13;
            let x_4104 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_4102.x, x_4102.x, x_4102.x, x_4102.y) * vec4<f32>(x_4104.z, x_4104.w, x_4104.y, x_4104.z));
            let x_4107 : vec4<f32> = u_xlat13;
            let x_4109 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_4107.y, x_4107.y, x_4107.z, x_4107.z) * x_4109);
            let x_4112 : f32 = u_xlat13.z;
            let x_4114 : f32 = u_xlat18.y;
            u_xlat87 = (x_4112 * x_4114);
            let x_4117 : vec4<f32> = u_xlat16;
            let x_4118 : vec2<f32> = vec2<f32>(x_4117.x, x_4117.y);
            let x_4120 : f32 = u_xlat11.z;
            txVec64 = vec3<f32>(x_4118.x, x_4118.y, x_4120);
            let x_4127 : vec3<f32> = txVec64;
            let x_4129 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4127.xy, x_4127.z);
            u_xlat88 = x_4129;
            let x_4131 : vec4<f32> = u_xlat16;
            let x_4132 : vec2<f32> = vec2<f32>(x_4131.z, x_4131.w);
            let x_4134 : f32 = u_xlat11.z;
            txVec65 = vec3<f32>(x_4132.x, x_4132.y, x_4134);
            let x_4142 : vec3<f32> = txVec65;
            let x_4144 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4142.xy, x_4142.z);
            u_xlat89 = x_4144;
            let x_4145 : f32 = u_xlat89;
            let x_4147 : f32 = u_xlat19.y;
            u_xlat89 = (x_4145 * x_4147);
            let x_4150 : f32 = u_xlat19.x;
            let x_4151 : f32 = u_xlat88;
            let x_4153 : f32 = u_xlat89;
            u_xlat88 = ((x_4150 * x_4151) + x_4153);
            let x_4156 : vec2<f32> = u_xlat64;
            let x_4158 : f32 = u_xlat11.z;
            txVec66 = vec3<f32>(x_4156.x, x_4156.y, x_4158);
            let x_4165 : vec3<f32> = txVec66;
            let x_4167 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4165.xy, x_4165.z);
            u_xlat89 = x_4167;
            let x_4169 : f32 = u_xlat19.z;
            let x_4170 : f32 = u_xlat89;
            let x_4172 : f32 = u_xlat88;
            u_xlat88 = ((x_4169 * x_4170) + x_4172);
            let x_4175 : vec4<f32> = u_xlat15;
            let x_4176 : vec2<f32> = vec2<f32>(x_4175.x, x_4175.y);
            let x_4178 : f32 = u_xlat11.z;
            txVec67 = vec3<f32>(x_4176.x, x_4176.y, x_4178);
            let x_4185 : vec3<f32> = txVec67;
            let x_4187 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4185.xy, x_4185.z);
            u_xlat89 = x_4187;
            let x_4189 : f32 = u_xlat19.w;
            let x_4190 : f32 = u_xlat89;
            let x_4192 : f32 = u_xlat88;
            u_xlat88 = ((x_4189 * x_4190) + x_4192);
            let x_4195 : vec4<f32> = u_xlat17;
            let x_4196 : vec2<f32> = vec2<f32>(x_4195.x, x_4195.y);
            let x_4198 : f32 = u_xlat11.z;
            txVec68 = vec3<f32>(x_4196.x, x_4196.y, x_4198);
            let x_4205 : vec3<f32> = txVec68;
            let x_4207 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4205.xy, x_4205.z);
            u_xlat89 = x_4207;
            let x_4209 : f32 = u_xlat20.x;
            let x_4210 : f32 = u_xlat89;
            let x_4212 : f32 = u_xlat88;
            u_xlat88 = ((x_4209 * x_4210) + x_4212);
            let x_4215 : vec4<f32> = u_xlat17;
            let x_4216 : vec2<f32> = vec2<f32>(x_4215.z, x_4215.w);
            let x_4218 : f32 = u_xlat11.z;
            txVec69 = vec3<f32>(x_4216.x, x_4216.y, x_4218);
            let x_4225 : vec3<f32> = txVec69;
            let x_4227 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4225.xy, x_4225.z);
            u_xlat89 = x_4227;
            let x_4229 : f32 = u_xlat20.y;
            let x_4230 : f32 = u_xlat89;
            let x_4232 : f32 = u_xlat88;
            u_xlat88 = ((x_4229 * x_4230) + x_4232);
            let x_4235 : vec4<f32> = u_xlat15;
            let x_4236 : vec2<f32> = vec2<f32>(x_4235.z, x_4235.w);
            let x_4238 : f32 = u_xlat11.z;
            txVec70 = vec3<f32>(x_4236.x, x_4236.y, x_4238);
            let x_4245 : vec3<f32> = txVec70;
            let x_4247 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4245.xy, x_4245.z);
            u_xlat89 = x_4247;
            let x_4249 : f32 = u_xlat20.z;
            let x_4250 : f32 = u_xlat89;
            let x_4252 : f32 = u_xlat88;
            u_xlat88 = ((x_4249 * x_4250) + x_4252);
            let x_4255 : vec4<f32> = u_xlat14;
            let x_4256 : vec2<f32> = vec2<f32>(x_4255.x, x_4255.y);
            let x_4258 : f32 = u_xlat11.z;
            txVec71 = vec3<f32>(x_4256.x, x_4256.y, x_4258);
            let x_4265 : vec3<f32> = txVec71;
            let x_4267 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4265.xy, x_4265.z);
            u_xlat89 = x_4267;
            let x_4269 : f32 = u_xlat20.w;
            let x_4270 : f32 = u_xlat89;
            let x_4272 : f32 = u_xlat88;
            u_xlat88 = ((x_4269 * x_4270) + x_4272);
            let x_4275 : vec4<f32> = u_xlat14;
            let x_4276 : vec2<f32> = vec2<f32>(x_4275.z, x_4275.w);
            let x_4278 : f32 = u_xlat11.z;
            txVec72 = vec3<f32>(x_4276.x, x_4276.y, x_4278);
            let x_4285 : vec3<f32> = txVec72;
            let x_4287 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4285.xy, x_4285.z);
            u_xlat89 = x_4287;
            let x_4288 : f32 = u_xlat87;
            let x_4289 : f32 = u_xlat89;
            let x_4291 : f32 = u_xlat88;
            u_xlat86 = ((x_4288 * x_4289) + x_4291);
          } else {
            let x_4294 : vec4<f32> = u_xlat11;
            let x_4297 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4300 : vec2<f32> = ((vec2<f32>(x_4294.x, x_4294.y) * vec2<f32>(x_4297.z, x_4297.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4301 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4300.x, x_4300.y, x_4301.z, x_4301.w);
            let x_4303 : vec4<f32> = u_xlat12;
            let x_4305 : vec2<f32> = floor(vec2<f32>(x_4303.x, x_4303.y));
            let x_4306 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4305.x, x_4305.y, x_4306.z, x_4306.w);
            let x_4308 : vec4<f32> = u_xlat11;
            let x_4311 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4314 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4308.x, x_4308.y) * vec2<f32>(x_4311.z, x_4311.w)) + -(vec2<f32>(x_4314.x, x_4314.y)));
            let x_4318 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4318.x, x_4318.x, x_4318.y, x_4318.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4321 : vec4<f32> = u_xlat13;
            let x_4323 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4321.x, x_4321.x, x_4321.z, x_4321.z) * vec4<f32>(x_4323.x, x_4323.x, x_4323.z, x_4323.z));
            let x_4326 : vec4<f32> = u_xlat14;
            let x_4328 : vec2<f32> = (vec2<f32>(x_4326.y, x_4326.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4329 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4329.x, x_4328.x, x_4329.z, x_4328.y);
            let x_4331 : vec4<f32> = u_xlat14;
            let x_4334 : vec2<f32> = u_xlat64;
            let x_4336 : vec2<f32> = ((vec2<f32>(x_4331.x, x_4331.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4334));
            let x_4337 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4336.x, x_4337.y, x_4336.y, x_4337.w);
            let x_4339 : vec2<f32> = u_xlat64;
            let x_4341 : vec2<f32> = (-(x_4339) + vec2<f32>(1.0f, 1.0f));
            let x_4342 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4341.x, x_4341.y, x_4342.z, x_4342.w);
            let x_4344 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_4344, vec2<f32>(0.0f, 0.0f));
            let x_4346 : vec2<f32> = u_xlat66;
            let x_4348 : vec2<f32> = u_xlat66;
            let x_4350 : vec4<f32> = u_xlat14;
            let x_4352 : vec2<f32> = ((-(x_4346) * x_4348) + vec2<f32>(x_4350.x, x_4350.y));
            let x_4353 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4352.x, x_4352.y, x_4353.z, x_4353.w);
            let x_4355 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_4355, vec2<f32>(0.0f, 0.0f));
            let x_4358 : vec2<f32> = u_xlat66;
            let x_4360 : vec2<f32> = u_xlat66;
            let x_4362 : vec4<f32> = u_xlat13;
            let x_4364 : vec2<f32> = ((-(x_4358) * x_4360) + vec2<f32>(x_4362.y, x_4362.w));
            let x_4365 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_4364.x, x_4365.y, x_4364.y);
            let x_4367 : vec4<f32> = u_xlat14;
            let x_4369 : vec2<f32> = (vec2<f32>(x_4367.x, x_4367.y) + vec2<f32>(2.0f, 2.0f));
            let x_4370 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4369.x, x_4369.y, x_4370.z, x_4370.w);
            let x_4372 : vec3<f32> = u_xlat39;
            let x_4374 : vec2<f32> = (vec2<f32>(x_4372.x, x_4372.z) + vec2<f32>(2.0f, 2.0f));
            let x_4375 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4375.x, x_4374.x, x_4375.z, x_4374.y);
            let x_4378 : f32 = u_xlat13.y;
            u_xlat16.z = (x_4378 * 0.08163200318813323975f);
            let x_4381 : vec4<f32> = u_xlat13;
            let x_4383 : vec3<f32> = (vec3<f32>(x_4381.z, x_4381.x, x_4381.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4384 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4383.x, x_4383.y, x_4383.z, x_4384.w);
            let x_4386 : vec4<f32> = u_xlat14;
            let x_4388 : vec2<f32> = (vec2<f32>(x_4386.x, x_4386.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4389 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4388.x, x_4388.y, x_4389.z, x_4389.w);
            let x_4392 : f32 = u_xlat17.y;
            u_xlat16.x = x_4392;
            let x_4394 : vec2<f32> = u_xlat64;
            let x_4397 : vec2<f32> = ((vec2<f32>(x_4394.x, x_4394.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4398 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4398.x, x_4397.x, x_4398.z, x_4397.y);
            let x_4400 : vec2<f32> = u_xlat64;
            let x_4403 : vec2<f32> = ((vec2<f32>(x_4400.x, x_4400.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4404 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4403.x, x_4404.y, x_4403.y, x_4404.w);
            let x_4407 : f32 = u_xlat13.x;
            u_xlat14.y = x_4407;
            let x_4410 : f32 = u_xlat15.y;
            u_xlat14.w = x_4410;
            let x_4412 : vec4<f32> = u_xlat14;
            let x_4413 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4412 + x_4413);
            let x_4415 : vec2<f32> = u_xlat64;
            let x_4418 : vec2<f32> = ((vec2<f32>(x_4415.y, x_4415.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4419 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4419.x, x_4418.x, x_4419.z, x_4418.y);
            let x_4421 : vec2<f32> = u_xlat64;
            let x_4424 : vec2<f32> = ((vec2<f32>(x_4421.y, x_4421.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4425 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4424.x, x_4425.y, x_4424.y, x_4425.w);
            let x_4428 : f32 = u_xlat13.y;
            u_xlat15.y = x_4428;
            let x_4430 : vec4<f32> = u_xlat15;
            let x_4431 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4430 + x_4431);
            let x_4433 : vec4<f32> = u_xlat14;
            let x_4434 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_4433 / x_4434);
            let x_4436 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4436 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4438 : vec4<f32> = u_xlat15;
            let x_4439 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_4438 / x_4439);
            let x_4441 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4441 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4443 : vec4<f32> = u_xlat14;
            let x_4446 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4443.w, x_4443.x, x_4443.y, x_4443.z) * vec4<f32>(x_4446.x, x_4446.x, x_4446.x, x_4446.x));
            let x_4449 : vec4<f32> = u_xlat15;
            let x_4452 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_4449.x, x_4449.w, x_4449.y, x_4449.z) * vec4<f32>(x_4452.y, x_4452.y, x_4452.y, x_4452.y));
            let x_4455 : vec4<f32> = u_xlat14;
            let x_4456 : vec3<f32> = vec3<f32>(x_4455.y, x_4455.z, x_4455.w);
            let x_4457 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4456.x, x_4457.y, x_4456.y, x_4456.z);
            let x_4460 : f32 = u_xlat15.x;
            u_xlat17.y = x_4460;
            let x_4462 : vec4<f32> = u_xlat12;
            let x_4465 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4468 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4462.x, x_4462.y, x_4462.x, x_4462.y) * vec4<f32>(x_4465.x, x_4465.y, x_4465.x, x_4465.y)) + vec4<f32>(x_4468.x, x_4468.y, x_4468.z, x_4468.y));
            let x_4471 : vec4<f32> = u_xlat12;
            let x_4474 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4477 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_4471.x, x_4471.y) * vec2<f32>(x_4474.x, x_4474.y)) + vec2<f32>(x_4477.w, x_4477.y));
            let x_4481 : f32 = u_xlat17.y;
            u_xlat14.y = x_4481;
            let x_4484 : f32 = u_xlat15.z;
            u_xlat17.y = x_4484;
            let x_4486 : vec4<f32> = u_xlat12;
            let x_4489 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4492 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_4486.x, x_4486.y, x_4486.x, x_4486.y) * vec4<f32>(x_4489.x, x_4489.y, x_4489.x, x_4489.y)) + vec4<f32>(x_4492.x, x_4492.y, x_4492.z, x_4492.y));
            let x_4495 : vec4<f32> = u_xlat12;
            let x_4498 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4501 : vec4<f32> = u_xlat17;
            let x_4503 : vec2<f32> = ((vec2<f32>(x_4495.x, x_4495.y) * vec2<f32>(x_4498.x, x_4498.y)) + vec2<f32>(x_4501.w, x_4501.y));
            let x_4504 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_4503.x, x_4503.y, x_4504.z, x_4504.w);
            let x_4507 : f32 = u_xlat17.y;
            u_xlat14.z = x_4507;
            let x_4510 : vec4<f32> = u_xlat12;
            let x_4513 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4516 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4510.x, x_4510.y, x_4510.x, x_4510.y) * vec4<f32>(x_4513.x, x_4513.y, x_4513.x, x_4513.y)) + vec4<f32>(x_4516.x, x_4516.y, x_4516.x, x_4516.z));
            let x_4520 : f32 = u_xlat15.w;
            u_xlat17.y = x_4520;
            let x_4523 : vec4<f32> = u_xlat12;
            let x_4526 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4529 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4523.x, x_4523.y, x_4523.x, x_4523.y) * vec4<f32>(x_4526.x, x_4526.y, x_4526.x, x_4526.y)) + vec4<f32>(x_4529.x, x_4529.y, x_4529.z, x_4529.y));
            let x_4533 : vec4<f32> = u_xlat12;
            let x_4536 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4539 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_4533.x, x_4533.y) * vec2<f32>(x_4536.x, x_4536.y)) + vec2<f32>(x_4539.w, x_4539.y));
            let x_4543 : f32 = u_xlat17.y;
            u_xlat14.w = x_4543;
            let x_4546 : vec4<f32> = u_xlat12;
            let x_4549 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4552 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4546.x, x_4546.y) * vec2<f32>(x_4549.x, x_4549.y)) + vec2<f32>(x_4552.x, x_4552.w));
            let x_4555 : vec4<f32> = u_xlat17;
            let x_4556 : vec3<f32> = vec3<f32>(x_4555.x, x_4555.z, x_4555.w);
            let x_4557 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4556.x, x_4557.y, x_4556.y, x_4556.z);
            let x_4559 : vec4<f32> = u_xlat12;
            let x_4562 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4565 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4559.x, x_4559.y, x_4559.x, x_4559.y) * vec4<f32>(x_4562.x, x_4562.y, x_4562.x, x_4562.y)) + vec4<f32>(x_4565.x, x_4565.y, x_4565.z, x_4565.y));
            let x_4569 : vec4<f32> = u_xlat12;
            let x_4572 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4575 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4569.x, x_4569.y) * vec2<f32>(x_4572.x, x_4572.y)) + vec2<f32>(x_4575.w, x_4575.y));
            let x_4579 : f32 = u_xlat14.x;
            u_xlat15.x = x_4579;
            let x_4581 : vec4<f32> = u_xlat12;
            let x_4584 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4587 : vec4<f32> = u_xlat15;
            let x_4589 : vec2<f32> = ((vec2<f32>(x_4581.x, x_4581.y) * vec2<f32>(x_4584.x, x_4584.y)) + vec2<f32>(x_4587.x, x_4587.y));
            let x_4590 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4589.x, x_4589.y, x_4590.z, x_4590.w);
            let x_4593 : vec4<f32> = u_xlat13;
            let x_4595 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4593.x, x_4593.x, x_4593.x, x_4593.x) * x_4595);
            let x_4598 : vec4<f32> = u_xlat13;
            let x_4600 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4598.y, x_4598.y, x_4598.y, x_4598.y) * x_4600);
            let x_4603 : vec4<f32> = u_xlat13;
            let x_4605 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4603.z, x_4603.z, x_4603.z, x_4603.z) * x_4605);
            let x_4607 : vec4<f32> = u_xlat13;
            let x_4609 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4607.w, x_4607.w, x_4607.w, x_4607.w) * x_4609);
            let x_4612 : vec4<f32> = u_xlat18;
            let x_4613 : vec2<f32> = vec2<f32>(x_4612.x, x_4612.y);
            let x_4615 : f32 = u_xlat11.z;
            txVec73 = vec3<f32>(x_4613.x, x_4613.y, x_4615);
            let x_4622 : vec3<f32> = txVec73;
            let x_4624 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4622.xy, x_4622.z);
            u_xlat87 = x_4624;
            let x_4626 : vec4<f32> = u_xlat18;
            let x_4627 : vec2<f32> = vec2<f32>(x_4626.z, x_4626.w);
            let x_4629 : f32 = u_xlat11.z;
            txVec74 = vec3<f32>(x_4627.x, x_4627.y, x_4629);
            let x_4636 : vec3<f32> = txVec74;
            let x_4638 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4636.xy, x_4636.z);
            u_xlat88 = x_4638;
            let x_4639 : f32 = u_xlat88;
            let x_4641 : f32 = u_xlat23.y;
            u_xlat88 = (x_4639 * x_4641);
            let x_4644 : f32 = u_xlat23.x;
            let x_4645 : f32 = u_xlat87;
            let x_4647 : f32 = u_xlat88;
            u_xlat87 = ((x_4644 * x_4645) + x_4647);
            let x_4650 : vec2<f32> = u_xlat64;
            let x_4652 : f32 = u_xlat11.z;
            txVec75 = vec3<f32>(x_4650.x, x_4650.y, x_4652);
            let x_4659 : vec3<f32> = txVec75;
            let x_4661 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4659.xy, x_4659.z);
            u_xlat88 = x_4661;
            let x_4663 : f32 = u_xlat23.z;
            let x_4664 : f32 = u_xlat88;
            let x_4666 : f32 = u_xlat87;
            u_xlat87 = ((x_4663 * x_4664) + x_4666);
            let x_4669 : vec4<f32> = u_xlat21;
            let x_4670 : vec2<f32> = vec2<f32>(x_4669.x, x_4669.y);
            let x_4672 : f32 = u_xlat11.z;
            txVec76 = vec3<f32>(x_4670.x, x_4670.y, x_4672);
            let x_4679 : vec3<f32> = txVec76;
            let x_4681 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4679.xy, x_4679.z);
            u_xlat88 = x_4681;
            let x_4683 : f32 = u_xlat23.w;
            let x_4684 : f32 = u_xlat88;
            let x_4686 : f32 = u_xlat87;
            u_xlat87 = ((x_4683 * x_4684) + x_4686);
            let x_4689 : vec4<f32> = u_xlat19;
            let x_4690 : vec2<f32> = vec2<f32>(x_4689.x, x_4689.y);
            let x_4692 : f32 = u_xlat11.z;
            txVec77 = vec3<f32>(x_4690.x, x_4690.y, x_4692);
            let x_4699 : vec3<f32> = txVec77;
            let x_4701 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4699.xy, x_4699.z);
            u_xlat88 = x_4701;
            let x_4703 : f32 = u_xlat24.x;
            let x_4704 : f32 = u_xlat88;
            let x_4706 : f32 = u_xlat87;
            u_xlat87 = ((x_4703 * x_4704) + x_4706);
            let x_4709 : vec4<f32> = u_xlat19;
            let x_4710 : vec2<f32> = vec2<f32>(x_4709.z, x_4709.w);
            let x_4712 : f32 = u_xlat11.z;
            txVec78 = vec3<f32>(x_4710.x, x_4710.y, x_4712);
            let x_4719 : vec3<f32> = txVec78;
            let x_4721 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4719.xy, x_4719.z);
            u_xlat88 = x_4721;
            let x_4723 : f32 = u_xlat24.y;
            let x_4724 : f32 = u_xlat88;
            let x_4726 : f32 = u_xlat87;
            u_xlat87 = ((x_4723 * x_4724) + x_4726);
            let x_4729 : vec4<f32> = u_xlat20;
            let x_4730 : vec2<f32> = vec2<f32>(x_4729.x, x_4729.y);
            let x_4732 : f32 = u_xlat11.z;
            txVec79 = vec3<f32>(x_4730.x, x_4730.y, x_4732);
            let x_4739 : vec3<f32> = txVec79;
            let x_4741 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4739.xy, x_4739.z);
            u_xlat88 = x_4741;
            let x_4743 : f32 = u_xlat24.z;
            let x_4744 : f32 = u_xlat88;
            let x_4746 : f32 = u_xlat87;
            u_xlat87 = ((x_4743 * x_4744) + x_4746);
            let x_4749 : vec4<f32> = u_xlat21;
            let x_4750 : vec2<f32> = vec2<f32>(x_4749.z, x_4749.w);
            let x_4752 : f32 = u_xlat11.z;
            txVec80 = vec3<f32>(x_4750.x, x_4750.y, x_4752);
            let x_4759 : vec3<f32> = txVec80;
            let x_4761 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4759.xy, x_4759.z);
            u_xlat88 = x_4761;
            let x_4763 : f32 = u_xlat24.w;
            let x_4764 : f32 = u_xlat88;
            let x_4766 : f32 = u_xlat87;
            u_xlat87 = ((x_4763 * x_4764) + x_4766);
            let x_4769 : vec4<f32> = u_xlat22;
            let x_4770 : vec2<f32> = vec2<f32>(x_4769.x, x_4769.y);
            let x_4772 : f32 = u_xlat11.z;
            txVec81 = vec3<f32>(x_4770.x, x_4770.y, x_4772);
            let x_4779 : vec3<f32> = txVec81;
            let x_4781 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4779.xy, x_4779.z);
            u_xlat88 = x_4781;
            let x_4783 : f32 = u_xlat25.x;
            let x_4784 : f32 = u_xlat88;
            let x_4786 : f32 = u_xlat87;
            u_xlat87 = ((x_4783 * x_4784) + x_4786);
            let x_4789 : vec4<f32> = u_xlat22;
            let x_4790 : vec2<f32> = vec2<f32>(x_4789.z, x_4789.w);
            let x_4792 : f32 = u_xlat11.z;
            txVec82 = vec3<f32>(x_4790.x, x_4790.y, x_4792);
            let x_4799 : vec3<f32> = txVec82;
            let x_4801 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4799.xy, x_4799.z);
            u_xlat88 = x_4801;
            let x_4803 : f32 = u_xlat25.y;
            let x_4804 : f32 = u_xlat88;
            let x_4806 : f32 = u_xlat87;
            u_xlat87 = ((x_4803 * x_4804) + x_4806);
            let x_4809 : vec2<f32> = u_xlat40;
            let x_4811 : f32 = u_xlat11.z;
            txVec83 = vec3<f32>(x_4809.x, x_4809.y, x_4811);
            let x_4818 : vec3<f32> = txVec83;
            let x_4820 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4818.xy, x_4818.z);
            u_xlat88 = x_4820;
            let x_4822 : f32 = u_xlat25.z;
            let x_4823 : f32 = u_xlat88;
            let x_4825 : f32 = u_xlat87;
            u_xlat87 = ((x_4822 * x_4823) + x_4825);
            let x_4828 : vec2<f32> = u_xlat72;
            let x_4830 : f32 = u_xlat11.z;
            txVec84 = vec3<f32>(x_4828.x, x_4828.y, x_4830);
            let x_4837 : vec3<f32> = txVec84;
            let x_4839 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4837.xy, x_4837.z);
            u_xlat88 = x_4839;
            let x_4841 : f32 = u_xlat25.w;
            let x_4842 : f32 = u_xlat88;
            let x_4844 : f32 = u_xlat87;
            u_xlat87 = ((x_4841 * x_4842) + x_4844);
            let x_4847 : vec4<f32> = u_xlat17;
            let x_4848 : vec2<f32> = vec2<f32>(x_4847.x, x_4847.y);
            let x_4850 : f32 = u_xlat11.z;
            txVec85 = vec3<f32>(x_4848.x, x_4848.y, x_4850);
            let x_4857 : vec3<f32> = txVec85;
            let x_4859 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4857.xy, x_4857.z);
            u_xlat88 = x_4859;
            let x_4861 : f32 = u_xlat13.x;
            let x_4862 : f32 = u_xlat88;
            let x_4864 : f32 = u_xlat87;
            u_xlat87 = ((x_4861 * x_4862) + x_4864);
            let x_4867 : vec4<f32> = u_xlat17;
            let x_4868 : vec2<f32> = vec2<f32>(x_4867.z, x_4867.w);
            let x_4870 : f32 = u_xlat11.z;
            txVec86 = vec3<f32>(x_4868.x, x_4868.y, x_4870);
            let x_4877 : vec3<f32> = txVec86;
            let x_4879 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4877.xy, x_4877.z);
            u_xlat88 = x_4879;
            let x_4881 : f32 = u_xlat13.y;
            let x_4882 : f32 = u_xlat88;
            let x_4884 : f32 = u_xlat87;
            u_xlat87 = ((x_4881 * x_4882) + x_4884);
            let x_4887 : vec2<f32> = u_xlat67;
            let x_4889 : f32 = u_xlat11.z;
            txVec87 = vec3<f32>(x_4887.x, x_4887.y, x_4889);
            let x_4896 : vec3<f32> = txVec87;
            let x_4898 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4896.xy, x_4896.z);
            u_xlat88 = x_4898;
            let x_4900 : f32 = u_xlat13.z;
            let x_4901 : f32 = u_xlat88;
            let x_4903 : f32 = u_xlat87;
            u_xlat87 = ((x_4900 * x_4901) + x_4903);
            let x_4906 : vec4<f32> = u_xlat12;
            let x_4907 : vec2<f32> = vec2<f32>(x_4906.x, x_4906.y);
            let x_4909 : f32 = u_xlat11.z;
            txVec88 = vec3<f32>(x_4907.x, x_4907.y, x_4909);
            let x_4916 : vec3<f32> = txVec88;
            let x_4918 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4916.xy, x_4916.z);
            u_xlat88 = x_4918;
            let x_4920 : f32 = u_xlat13.w;
            let x_4921 : f32 = u_xlat88;
            let x_4923 : f32 = u_xlat87;
            u_xlat86 = ((x_4920 * x_4921) + x_4923);
          }
        }
      } else {
        let x_4927 : vec4<f32> = u_xlat11;
        let x_4928 : vec2<f32> = vec2<f32>(x_4927.x, x_4927.y);
        let x_4930 : f32 = u_xlat11.z;
        txVec89 = vec3<f32>(x_4928.x, x_4928.y, x_4930);
        let x_4937 : vec3<f32> = txVec89;
        let x_4939 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4937.xy, x_4937.z);
        u_xlat86 = x_4939;
      }
      let x_4940 : i32 = u_xlati4;
      let x_4942 : f32 = x_131.x_AdditionalShadowParams[x_4940].x;
      u_xlat87 = (1.0f + -(x_4942));
      let x_4945 : f32 = u_xlat86;
      let x_4946 : i32 = u_xlati4;
      let x_4948 : f32 = x_131.x_AdditionalShadowParams[x_4946].x;
      let x_4950 : f32 = u_xlat87;
      u_xlat86 = ((x_4945 * x_4948) + x_4950);
      let x_4953 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_4953);
      let x_4957 : f32 = u_xlat11.z;
      u_xlatb88 = (x_4957 >= 1.0f);
      let x_4959 : bool = u_xlatb87;
      let x_4960 : bool = u_xlatb88;
      u_xlatb87 = (x_4959 | x_4960);
      let x_4962 : bool = u_xlatb87;
      let x_4963 : f32 = u_xlat86;
      u_xlat86 = select(x_4963, 1.0f, x_4962);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_4966 : f32 = u_xlat86;
    u_xlat87 = (-(x_4966) + 1.0f);
    let x_4969 : f32 = u_xlat79;
    let x_4970 : f32 = u_xlat87;
    let x_4972 : f32 = u_xlat86;
    u_xlat86 = ((x_4969 * x_4970) + x_4972);
    let x_4975 : i32 = u_xlati4;
    u_xlati87 = (1i << bitcast<u32>((x_4975 & 31i)));
    let x_4979 : i32 = u_xlati87;
    let x_4982 : f32 = x_3075.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_4979) & bitcast<u32>(x_4982)));
    let x_4986 : i32 = u_xlati87;
    if ((x_4986 != 0i)) {
      let x_4990 : i32 = u_xlati4;
      let x_4992 : f32 = x_3075.x_AdditionalLightsLightTypes[x_4990].el;
      u_xlati87 = i32(x_4992);
      let x_4995 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_4995 != 0i));
      let x_4999 : i32 = u_xlati4;
      u_xlati11 = (x_4999 << bitcast<u32>(2i));
      let x_5001 : i32 = u_xlati88;
      if ((x_5001 != 0i)) {
        let x_5006 : vec3<f32> = vs_INTERP8;
        let x_5008 : i32 = u_xlati11;
        let x_5011 : i32 = u_xlati11;
        let x_5015 : vec4<f32> = x_3075.x_AdditionalLightsWorldToLights[((x_5008 + 1i) / 4i)][((x_5011 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_5006.y, x_5006.y, x_5006.y) * vec3<f32>(x_5015.x, x_5015.y, x_5015.w));
        let x_5018 : i32 = u_xlati11;
        let x_5020 : i32 = u_xlati11;
        let x_5023 : vec4<f32> = x_3075.x_AdditionalLightsWorldToLights[(x_5018 / 4i)][(x_5020 % 4i)];
        let x_5025 : vec3<f32> = vs_INTERP8;
        let x_5028 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_5023.x, x_5023.y, x_5023.w) * vec3<f32>(x_5025.x, x_5025.x, x_5025.x)) + x_5028);
        let x_5030 : i32 = u_xlati11;
        let x_5033 : i32 = u_xlati11;
        let x_5037 : vec4<f32> = x_3075.x_AdditionalLightsWorldToLights[((x_5030 + 2i) / 4i)][((x_5033 + 2i) % 4i)];
        let x_5039 : vec3<f32> = vs_INTERP8;
        let x_5042 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_5037.x, x_5037.y, x_5037.w) * vec3<f32>(x_5039.z, x_5039.z, x_5039.z)) + x_5042);
        let x_5044 : vec3<f32> = u_xlat37;
        let x_5045 : i32 = u_xlati11;
        let x_5048 : i32 = u_xlati11;
        let x_5052 : vec4<f32> = x_3075.x_AdditionalLightsWorldToLights[((x_5045 + 3i) / 4i)][((x_5048 + 3i) % 4i)];
        u_xlat37 = (x_5044 + vec3<f32>(x_5052.x, x_5052.y, x_5052.w));
        let x_5055 : vec3<f32> = u_xlat37;
        let x_5057 : vec3<f32> = u_xlat37;
        let x_5059 : vec2<f32> = (vec2<f32>(x_5055.x, x_5055.y) / vec2<f32>(x_5057.z, x_5057.z));
        let x_5060 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5059.x, x_5059.y, x_5060.z);
        let x_5062 : vec3<f32> = u_xlat37;
        let x_5065 : vec2<f32> = ((vec2<f32>(x_5062.x, x_5062.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_5066 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5065.x, x_5065.y, x_5066.z);
        let x_5068 : vec3<f32> = u_xlat37;
        let x_5072 : vec2<f32> = clamp(vec2<f32>(x_5068.x, x_5068.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_5073 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5072.x, x_5072.y, x_5073.z);
        let x_5075 : i32 = u_xlati4;
        let x_5077 : vec4<f32> = x_3075.x_AdditionalLightsCookieAtlasUVRects[x_5075];
        let x_5079 : vec3<f32> = u_xlat37;
        let x_5082 : i32 = u_xlati4;
        let x_5084 : vec4<f32> = x_3075.x_AdditionalLightsCookieAtlasUVRects[x_5082];
        let x_5086 : vec2<f32> = ((vec2<f32>(x_5077.x, x_5077.y) * vec2<f32>(x_5079.x, x_5079.y)) + vec2<f32>(x_5084.z, x_5084.w));
        let x_5087 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5086.x, x_5086.y, x_5087.z);
      } else {
        let x_5090 : i32 = u_xlati87;
        u_xlatb87 = (x_5090 == 1i);
        let x_5092 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_5092);
        let x_5094 : i32 = u_xlati87;
        if ((x_5094 != 0i)) {
          let x_5098 : vec3<f32> = vs_INTERP8;
          let x_5100 : i32 = u_xlati11;
          let x_5103 : i32 = u_xlati11;
          let x_5107 : vec4<f32> = x_3075.x_AdditionalLightsWorldToLights[((x_5100 + 1i) / 4i)][((x_5103 + 1i) % 4i)];
          let x_5109 : vec2<f32> = (vec2<f32>(x_5098.y, x_5098.y) * vec2<f32>(x_5107.x, x_5107.y));
          let x_5110 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5109.x, x_5109.y, x_5110.z, x_5110.w);
          let x_5112 : i32 = u_xlati11;
          let x_5114 : i32 = u_xlati11;
          let x_5117 : vec4<f32> = x_3075.x_AdditionalLightsWorldToLights[(x_5112 / 4i)][(x_5114 % 4i)];
          let x_5119 : vec3<f32> = vs_INTERP8;
          let x_5122 : vec4<f32> = u_xlat12;
          let x_5124 : vec2<f32> = ((vec2<f32>(x_5117.x, x_5117.y) * vec2<f32>(x_5119.x, x_5119.x)) + vec2<f32>(x_5122.x, x_5122.y));
          let x_5125 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5124.x, x_5124.y, x_5125.z, x_5125.w);
          let x_5127 : i32 = u_xlati11;
          let x_5130 : i32 = u_xlati11;
          let x_5134 : vec4<f32> = x_3075.x_AdditionalLightsWorldToLights[((x_5127 + 2i) / 4i)][((x_5130 + 2i) % 4i)];
          let x_5136 : vec3<f32> = vs_INTERP8;
          let x_5139 : vec4<f32> = u_xlat12;
          let x_5141 : vec2<f32> = ((vec2<f32>(x_5134.x, x_5134.y) * vec2<f32>(x_5136.z, x_5136.z)) + vec2<f32>(x_5139.x, x_5139.y));
          let x_5142 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5141.x, x_5141.y, x_5142.z, x_5142.w);
          let x_5144 : vec4<f32> = u_xlat12;
          let x_5146 : i32 = u_xlati11;
          let x_5149 : i32 = u_xlati11;
          let x_5153 : vec4<f32> = x_3075.x_AdditionalLightsWorldToLights[((x_5146 + 3i) / 4i)][((x_5149 + 3i) % 4i)];
          let x_5155 : vec2<f32> = (vec2<f32>(x_5144.x, x_5144.y) + vec2<f32>(x_5153.x, x_5153.y));
          let x_5156 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5155.x, x_5155.y, x_5156.z, x_5156.w);
          let x_5158 : vec4<f32> = u_xlat12;
          let x_5161 : vec2<f32> = ((vec2<f32>(x_5158.x, x_5158.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5162 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5161.x, x_5161.y, x_5162.z, x_5162.w);
          let x_5164 : vec4<f32> = u_xlat12;
          let x_5166 : vec2<f32> = fract(vec2<f32>(x_5164.x, x_5164.y));
          let x_5167 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5166.x, x_5166.y, x_5167.z, x_5167.w);
          let x_5169 : i32 = u_xlati4;
          let x_5171 : vec4<f32> = x_3075.x_AdditionalLightsCookieAtlasUVRects[x_5169];
          let x_5173 : vec4<f32> = u_xlat12;
          let x_5176 : i32 = u_xlati4;
          let x_5178 : vec4<f32> = x_3075.x_AdditionalLightsCookieAtlasUVRects[x_5176];
          let x_5180 : vec2<f32> = ((vec2<f32>(x_5171.x, x_5171.y) * vec2<f32>(x_5173.x, x_5173.y)) + vec2<f32>(x_5178.z, x_5178.w));
          let x_5181 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5180.x, x_5180.y, x_5181.z);
        } else {
          let x_5184 : vec3<f32> = vs_INTERP8;
          let x_5186 : i32 = u_xlati11;
          let x_5189 : i32 = u_xlati11;
          let x_5193 : vec4<f32> = x_3075.x_AdditionalLightsWorldToLights[((x_5186 + 1i) / 4i)][((x_5189 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_5184.y, x_5184.y, x_5184.y, x_5184.y) * x_5193);
          let x_5195 : i32 = u_xlati11;
          let x_5197 : i32 = u_xlati11;
          let x_5200 : vec4<f32> = x_3075.x_AdditionalLightsWorldToLights[(x_5195 / 4i)][(x_5197 % 4i)];
          let x_5201 : vec3<f32> = vs_INTERP8;
          let x_5204 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5200 * vec4<f32>(x_5201.x, x_5201.x, x_5201.x, x_5201.x)) + x_5204);
          let x_5206 : i32 = u_xlati11;
          let x_5209 : i32 = u_xlati11;
          let x_5213 : vec4<f32> = x_3075.x_AdditionalLightsWorldToLights[((x_5206 + 2i) / 4i)][((x_5209 + 2i) % 4i)];
          let x_5214 : vec3<f32> = vs_INTERP8;
          let x_5217 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5213 * vec4<f32>(x_5214.z, x_5214.z, x_5214.z, x_5214.z)) + x_5217);
          let x_5219 : vec4<f32> = u_xlat12;
          let x_5220 : i32 = u_xlati11;
          let x_5223 : i32 = u_xlati11;
          let x_5227 : vec4<f32> = x_3075.x_AdditionalLightsWorldToLights[((x_5220 + 3i) / 4i)][((x_5223 + 3i) % 4i)];
          u_xlat12 = (x_5219 + x_5227);
          let x_5229 : vec4<f32> = u_xlat12;
          let x_5231 : vec4<f32> = u_xlat12;
          let x_5233 : vec3<f32> = (vec3<f32>(x_5229.x, x_5229.y, x_5229.z) / vec3<f32>(x_5231.w, x_5231.w, x_5231.w));
          let x_5234 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5233.x, x_5233.y, x_5233.z, x_5234.w);
          let x_5236 : vec4<f32> = u_xlat12;
          let x_5238 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_5236.x, x_5236.y, x_5236.z), vec3<f32>(x_5238.x, x_5238.y, x_5238.z));
          let x_5241 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_5241);
          let x_5243 : f32 = u_xlat87;
          let x_5245 : vec4<f32> = u_xlat12;
          let x_5247 : vec3<f32> = (vec3<f32>(x_5243, x_5243, x_5243) * vec3<f32>(x_5245.x, x_5245.y, x_5245.z));
          let x_5248 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5247.x, x_5247.y, x_5247.z, x_5248.w);
          let x_5250 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_5250.x, x_5250.y, x_5250.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_5255 : f32 = u_xlat87;
          u_xlat87 = max(x_5255, 0.00000099999999747524f);
          let x_5258 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_5258);
          let x_5260 : f32 = u_xlat87;
          let x_5262 : vec4<f32> = u_xlat12;
          let x_5264 : vec3<f32> = (vec3<f32>(x_5260, x_5260, x_5260) * vec3<f32>(x_5262.z, x_5262.x, x_5262.y));
          let x_5265 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_5264.x, x_5264.y, x_5264.z, x_5265.w);
          let x_5268 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_5268);
          let x_5272 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_5272, 0.0f, 1.0f);
          let x_5275 : vec4<f32> = u_xlat13;
          let x_5277 : vec4<bool> = (vec4<f32>(x_5275.y, x_5275.y, x_5275.y, x_5275.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_5278 : vec2<bool> = vec2<bool>(x_5277.x, x_5277.w);
          let x_5279 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_5278.x, x_5279.y, x_5279.z, x_5278.y);
          let x_5282 : bool = u_xlatb11.x;
          if (x_5282) {
            let x_5287 : f32 = u_xlat13.x;
            x_5283 = x_5287;
          } else {
            let x_5290 : f32 = u_xlat13.x;
            x_5283 = -(x_5290);
          }
          let x_5292 : f32 = x_5283;
          u_xlat11.x = x_5292;
          let x_5295 : bool = u_xlatb11.w;
          if (x_5295) {
            let x_5300 : f32 = u_xlat13.x;
            x_5296 = x_5300;
          } else {
            let x_5303 : f32 = u_xlat13.x;
            x_5296 = -(x_5303);
          }
          let x_5305 : f32 = x_5296;
          u_xlat11.w = x_5305;
          let x_5307 : vec4<f32> = u_xlat12;
          let x_5309 : f32 = u_xlat87;
          let x_5312 : vec4<f32> = u_xlat11;
          let x_5314 : vec2<f32> = ((vec2<f32>(x_5307.x, x_5307.y) * vec2<f32>(x_5309, x_5309)) + vec2<f32>(x_5312.x, x_5312.w));
          let x_5315 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5314.x, x_5315.y, x_5315.z, x_5314.y);
          let x_5317 : vec4<f32> = u_xlat11;
          let x_5320 : vec2<f32> = ((vec2<f32>(x_5317.x, x_5317.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5321 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5320.x, x_5321.y, x_5321.z, x_5320.y);
          let x_5323 : vec4<f32> = u_xlat11;
          let x_5327 : vec2<f32> = clamp(vec2<f32>(x_5323.x, x_5323.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_5328 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5327.x, x_5328.y, x_5328.z, x_5327.y);
          let x_5330 : i32 = u_xlati4;
          let x_5332 : vec4<f32> = x_3075.x_AdditionalLightsCookieAtlasUVRects[x_5330];
          let x_5334 : vec4<f32> = u_xlat11;
          let x_5337 : i32 = u_xlati4;
          let x_5339 : vec4<f32> = x_3075.x_AdditionalLightsCookieAtlasUVRects[x_5337];
          let x_5341 : vec2<f32> = ((vec2<f32>(x_5332.x, x_5332.y) * vec2<f32>(x_5334.x, x_5334.w)) + vec2<f32>(x_5339.z, x_5339.w));
          let x_5342 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5341.x, x_5341.y, x_5342.z);
        }
      }
      let x_5349 : vec3<f32> = u_xlat37;
      let x_5351 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_5349.x, x_5349.y), 0.0f);
      u_xlat11 = x_5351;
      let x_5353 : bool = u_xlatb7.y;
      if (x_5353) {
        let x_5358 : f32 = u_xlat11.w;
        x_5354 = x_5358;
      } else {
        let x_5361 : f32 = u_xlat11.x;
        x_5354 = x_5361;
      }
      let x_5362 : f32 = x_5354;
      u_xlat87 = x_5362;
      let x_5364 : bool = u_xlatb7.x;
      if (x_5364) {
        let x_5368 : vec4<f32> = u_xlat11;
        x_5365 = vec3<f32>(x_5368.x, x_5368.y, x_5368.z);
      } else {
        let x_5371 : f32 = u_xlat87;
        x_5365 = vec3<f32>(x_5371, x_5371, x_5371);
      }
      let x_5373 : vec3<f32> = x_5365;
      let x_5374 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_5373.x, x_5373.y, x_5373.z, x_5374.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_5380 : vec4<f32> = u_xlat11;
    let x_5382 : i32 = u_xlati4;
    let x_5384 : vec4<f32> = x_3533.x_AdditionalLightsColor[x_5382];
    let x_5386 : vec3<f32> = (vec3<f32>(x_5380.x, x_5380.y, x_5380.z) * vec3<f32>(x_5384.x, x_5384.y, x_5384.z));
    let x_5387 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5386.x, x_5386.y, x_5386.z, x_5387.w);
    let x_5390 : f32 = u_xlat59.x;
    let x_5391 : f32 = u_xlat86;
    u_xlat4.x = (x_5390 * x_5391);
    let x_5394 : vec3<f32> = u_xlat29;
    let x_5395 : vec4<f32> = u_xlat10;
    u_xlat59.x = dot(x_5394, vec3<f32>(x_5395.x, x_5395.y, x_5395.z));
    let x_5400 : f32 = u_xlat59.x;
    u_xlat59.x = clamp(x_5400, 0.0f, 1.0f);
    let x_5404 : f32 = u_xlat4.x;
    let x_5406 : f32 = u_xlat59.x;
    u_xlat4.x = (x_5404 * x_5406);
    let x_5409 : vec4<f32> = u_xlat4;
    let x_5411 : vec4<f32> = u_xlat11;
    let x_5413 : vec3<f32> = (vec3<f32>(x_5409.x, x_5409.x, x_5409.x) * vec3<f32>(x_5411.x, x_5411.y, x_5411.z));
    let x_5414 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5413.x, x_5413.y, x_5413.z, x_5414.w);
    let x_5416 : vec4<f32> = u_xlat9;
    let x_5418 : f32 = u_xlat85;
    let x_5421 : vec4<f32> = u_xlat5;
    let x_5423 : vec3<f32> = ((vec3<f32>(x_5416.x, x_5416.y, x_5416.z) * vec3<f32>(x_5418, x_5418, x_5418)) + vec3<f32>(x_5421.x, x_5421.y, x_5421.z));
    let x_5424 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5423.x, x_5423.y, x_5423.z, x_5424.w);
    let x_5426 : vec4<f32> = u_xlat9;
    let x_5428 : vec4<f32> = u_xlat9;
    u_xlat4.x = dot(vec3<f32>(x_5426.x, x_5426.y, x_5426.z), vec3<f32>(x_5428.x, x_5428.y, x_5428.z));
    let x_5433 : f32 = u_xlat4.x;
    u_xlat4.x = max(x_5433, 1.17549435e-38f);
    let x_5437 : f32 = u_xlat4.x;
    u_xlat4.x = inverseSqrt(x_5437);
    let x_5440 : vec4<f32> = u_xlat4;
    let x_5442 : vec4<f32> = u_xlat9;
    let x_5444 : vec3<f32> = (vec3<f32>(x_5440.x, x_5440.x, x_5440.x) * vec3<f32>(x_5442.x, x_5442.y, x_5442.z));
    let x_5445 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5444.x, x_5444.y, x_5444.z, x_5445.w);
    let x_5447 : vec3<f32> = u_xlat29;
    let x_5448 : vec4<f32> = u_xlat9;
    u_xlat4.x = dot(x_5447, vec3<f32>(x_5448.x, x_5448.y, x_5448.z));
    let x_5453 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_5453, 0.0f, 1.0f);
    let x_5456 : vec4<f32> = u_xlat10;
    let x_5458 : vec4<f32> = u_xlat9;
    u_xlat59.x = dot(vec3<f32>(x_5456.x, x_5456.y, x_5456.z), vec3<f32>(x_5458.x, x_5458.y, x_5458.z));
    let x_5463 : f32 = u_xlat59.x;
    u_xlat59.x = clamp(x_5463, 0.0f, 1.0f);
    let x_5467 : f32 = u_xlat4.x;
    let x_5469 : f32 = u_xlat4.x;
    u_xlat4.x = (x_5467 * x_5469);
    let x_5473 : f32 = u_xlat4.x;
    let x_5475 : f32 = u_xlat27.x;
    u_xlat4.x = ((x_5473 * x_5475) + 1.00001001358032226562f);
    let x_5480 : f32 = u_xlat59.x;
    let x_5482 : f32 = u_xlat59.x;
    u_xlat59.x = (x_5480 * x_5482);
    let x_5486 : f32 = u_xlat4.x;
    let x_5488 : f32 = u_xlat4.x;
    u_xlat4.x = (x_5486 * x_5488);
    let x_5492 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_5492, 0.10000000149011611938f);
    let x_5496 : f32 = u_xlat4.x;
    let x_5498 : f32 = u_xlat59.x;
    u_xlat4.x = (x_5496 * x_5498);
    let x_5501 : f32 = u_xlat83;
    let x_5503 : f32 = u_xlat4.x;
    u_xlat4.x = (x_5501 * x_5503);
    let x_5506 : f32 = u_xlat80;
    let x_5508 : f32 = u_xlat4.x;
    u_xlat4.x = (x_5506 / x_5508);
    let x_5511 : vec4<f32> = u_xlat4;
    let x_5514 : vec3<f32> = u_xlat2;
    let x_5515 : vec3<f32> = ((vec3<f32>(x_5511.x, x_5511.x, x_5511.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5514);
    let x_5516 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5515.x, x_5515.y, x_5515.z, x_5516.w);
    let x_5518 : vec4<f32> = u_xlat9;
    let x_5520 : vec4<f32> = u_xlat11;
    let x_5523 : vec4<f32> = u_xlat8;
    let x_5525 : vec3<f32> = ((vec3<f32>(x_5518.x, x_5518.y, x_5518.z) * vec3<f32>(x_5520.x, x_5520.y, x_5520.z)) + vec3<f32>(x_5523.x, x_5523.y, x_5523.z));
    let x_5526 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5525.x, x_5525.y, x_5525.z, x_5526.w);

    continuing {
      let x_5528 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5528 + bitcast<u32>(1i));
    }
  }
  let x_5530 : vec3<f32> = u_xlat30;
  let x_5531 : vec4<f32> = u_xlat6;
  let x_5534 : vec3<f32> = u_xlat32;
  u_xlat2 = ((x_5530 * vec3<f32>(x_5531.x, x_5531.x, x_5531.x)) + x_5534);
  let x_5536 : vec4<f32> = u_xlat8;
  let x_5538 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_5536.x, x_5536.y, x_5536.z) + x_5538);
  let x_5542 : vec4<f32> = vs_INTERP6;
  let x_5544 : vec3<f32> = u_xlat0;
  let x_5546 : vec3<f32> = u_xlat2;
  let x_5547 : vec3<f32> = ((vec3<f32>(x_5542.w, x_5542.w, x_5542.w) * x_5544) + x_5546);
  let x_5548 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5547.x, x_5547.y, x_5547.z, x_5548.w);
  let x_5550 : bool = u_xlatb53;
  if (x_5550) {
    let x_5555 : f32 = u_xlat1.x;
    x_5551 = x_5555;
  } else {
    x_5551 = 1.0f;
  }
  let x_5557 : f32 = x_5551;
  SV_Target0.w = x_5557;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(6) vs_INTERP9_param : vec3<f32>, @location(3) vs_INTERP5_param : vec4<f32>, @location(4) vs_INTERP6_param : vec4<f32>, @location(5) vs_INTERP8_param : vec3<f32>, @location(2) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @location(1) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


