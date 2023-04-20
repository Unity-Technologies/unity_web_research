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

@group(1) @binding(3) var<uniform> x_131 : LightShadows;

var<private> u_xlatb78 : bool;

var<private> u_xlatb80 : bool;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlat56 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlat35 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

@group(1) @binding(4) var<uniform> x_3050 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb8 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu78 : u32;

var<private> u_xlatu83 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati83 : i32;

@group(1) @binding(1) var<uniform> x_3520 : AdditionalLights;

var<private> u_xlat85 : f32;

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

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

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

var<private> u_xlatb83 : bool;

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
  var x_1674 : f32;
  var x_1686 : f32;
  var x_1698 : f32;
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
  var x_3133 : f32;
  var x_3144 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3657 : f32;
  var x_3667 : f32;
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
  var x_5250 : f32;
  var x_5263 : f32;
  var x_5321 : f32;
  var x_5332 : vec3<f32>;
  var x_5484 : f32;
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
  let x_1649 : vec3<f32> = (vec3<f32>(x_1646.x, x_1646.x, x_1646.x) * x_1648);
  let x_1650 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1649.x, x_1649.y, x_1649.z, x_1650.w);
  let x_1653 : f32 = x_53.unity_OrthoParams.w;
  u_xlatb27.x = (x_1653 == 0.0f);
  let x_1656 : vec3<f32> = vs_INTERP8;
  let x_1661 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  u_xlat29 = (-(x_1656) + x_1661);
  let x_1663 : vec3<f32> = u_xlat29;
  let x_1664 : vec3<f32> = u_xlat29;
  u_xlat79 = dot(x_1663, x_1664);
  let x_1666 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_1666);
  let x_1668 : f32 = u_xlat79;
  let x_1670 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_1668, x_1668, x_1668) * x_1670);
  let x_1673 : bool = u_xlatb27.x;
  if (x_1673) {
    let x_1678 : f32 = u_xlat29.x;
    x_1674 = x_1678;
  } else {
    let x_1681 : f32 = x_53.unity_MatrixV[0i].z;
    x_1674 = x_1681;
  }
  let x_1682 : f32 = x_1674;
  u_xlat6.x = x_1682;
  let x_1685 : bool = u_xlatb27.x;
  if (x_1685) {
    let x_1690 : f32 = u_xlat29.y;
    x_1686 = x_1690;
  } else {
    let x_1693 : f32 = x_53.unity_MatrixV[1i].z;
    x_1686 = x_1693;
  }
  let x_1694 : f32 = x_1686;
  u_xlat6.y = x_1694;
  let x_1697 : bool = u_xlatb27.x;
  if (x_1697) {
    let x_1702 : f32 = u_xlat29.z;
    x_1698 = x_1702;
  } else {
    let x_1705 : f32 = x_53.unity_MatrixV[2i].z;
    x_1698 = x_1705;
  }
  let x_1706 : f32 = x_1698;
  u_xlat6.z = x_1706;
  u_xlat5.w = 1.0f;
  let x_1711 : vec4<f32> = x_1585.unity_SHAr;
  let x_1712 : vec4<f32> = u_xlat5;
  u_xlat7.x = dot(x_1711, x_1712);
  let x_1717 : vec4<f32> = x_1585.unity_SHAg;
  let x_1718 : vec4<f32> = u_xlat5;
  u_xlat7.y = dot(x_1717, x_1718);
  let x_1723 : vec4<f32> = x_1585.unity_SHAb;
  let x_1724 : vec4<f32> = u_xlat5;
  u_xlat7.z = dot(x_1723, x_1724);
  let x_1727 : vec4<f32> = u_xlat5;
  let x_1729 : vec4<f32> = u_xlat5;
  u_xlat8 = (vec4<f32>(x_1727.y, x_1727.z, x_1727.z, x_1727.x) * vec4<f32>(x_1729.x, x_1729.y, x_1729.z, x_1729.z));
  let x_1734 : vec4<f32> = x_1585.unity_SHBr;
  let x_1735 : vec4<f32> = u_xlat8;
  u_xlat9.x = dot(x_1734, x_1735);
  let x_1740 : vec4<f32> = x_1585.unity_SHBg;
  let x_1741 : vec4<f32> = u_xlat8;
  u_xlat9.y = dot(x_1740, x_1741);
  let x_1746 : vec4<f32> = x_1585.unity_SHBb;
  let x_1747 : vec4<f32> = u_xlat8;
  u_xlat9.z = dot(x_1746, x_1747);
  let x_1751 : f32 = u_xlat5.y;
  let x_1753 : f32 = u_xlat5.y;
  u_xlat27.x = (x_1751 * x_1753);
  let x_1757 : f32 = u_xlat5.x;
  let x_1759 : f32 = u_xlat5.x;
  let x_1762 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_1757 * x_1759) + -(x_1762));
  let x_1768 : vec4<f32> = x_1585.unity_SHC;
  let x_1770 : vec3<f32> = u_xlat27;
  let x_1773 : vec4<f32> = u_xlat9;
  u_xlat29 = ((vec3<f32>(x_1768.x, x_1768.y, x_1768.z) * vec3<f32>(x_1770.x, x_1770.x, x_1770.x)) + vec3<f32>(x_1773.x, x_1773.y, x_1773.z));
  let x_1776 : vec3<f32> = u_xlat29;
  let x_1777 : vec4<f32> = u_xlat7;
  u_xlat29 = (x_1776 + vec3<f32>(x_1777.x, x_1777.y, x_1777.z));
  let x_1780 : vec3<f32> = u_xlat29;
  u_xlat29 = max(x_1780, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1784 : f32 = u_xlat3.x;
  u_xlat3.x = x_1784;
  let x_1787 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1787, 0.0f, 1.0f);
  let x_1791 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_1791, 1.0f);
  let x_1794 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1794 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_1799 : f32 = u_xlat3.x;
  u_xlat27.x = (-(x_1799) + 1.0f);
  let x_1804 : f32 = u_xlat27.x;
  let x_1806 : f32 = u_xlat27.x;
  u_xlat79 = (x_1804 * x_1806);
  let x_1808 : f32 = u_xlat79;
  u_xlat79 = max(x_1808, 0.0078125f);
  let x_1811 : f32 = u_xlat79;
  let x_1812 : f32 = u_xlat79;
  u_xlat80 = (x_1811 * x_1812);
  let x_1815 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1815 + 0.04000002145767211914f);
  let x_1820 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_1820, 1.0f);
  let x_1823 : f32 = u_xlat79;
  u_xlat30.x = ((x_1823 * 4.0f) + 2.0f);
  let x_1830 : f32 = vs_INTERP6.w;
  u_xlat56 = min(x_1830, 1.0f);
  let x_1832 : bool = u_xlatb78;
  if (x_1832) {
    let x_1836 : f32 = x_131.x_MainLightShadowParams.y;
    u_xlatb78 = (x_1836 == 1.0f);
    let x_1838 : bool = u_xlatb78;
    if (x_1838) {
      let x_1842 : vec4<f32> = vs_INTERP3;
      let x_1845 : vec4<f32> = x_131.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_1842.x, x_1842.y, x_1842.x, x_1842.y) + x_1845);
      let x_1848 : vec4<f32> = u_xlat7;
      let x_1849 : vec2<f32> = vec2<f32>(x_1848.x, x_1848.y);
      let x_1851 : f32 = vs_INTERP3.z;
      txVec30 = vec3<f32>(x_1849.x, x_1849.y, x_1851);
      let x_1858 : vec3<f32> = txVec30;
      let x_1860 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1858.xy, x_1858.z);
      u_xlat8.x = x_1860;
      let x_1863 : vec4<f32> = u_xlat7;
      let x_1864 : vec2<f32> = vec2<f32>(x_1863.z, x_1863.w);
      let x_1866 : f32 = vs_INTERP3.z;
      txVec31 = vec3<f32>(x_1864.x, x_1864.y, x_1866);
      let x_1873 : vec3<f32> = txVec31;
      let x_1875 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1873.xy, x_1873.z);
      u_xlat8.y = x_1875;
      let x_1877 : vec4<f32> = vs_INTERP3;
      let x_1880 : vec4<f32> = x_131.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_1877.x, x_1877.y, x_1877.x, x_1877.y) + x_1880);
      let x_1883 : vec4<f32> = u_xlat7;
      let x_1884 : vec2<f32> = vec2<f32>(x_1883.x, x_1883.y);
      let x_1886 : f32 = vs_INTERP3.z;
      txVec32 = vec3<f32>(x_1884.x, x_1884.y, x_1886);
      let x_1893 : vec3<f32> = txVec32;
      let x_1895 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1893.xy, x_1893.z);
      u_xlat8.z = x_1895;
      let x_1898 : vec4<f32> = u_xlat7;
      let x_1899 : vec2<f32> = vec2<f32>(x_1898.z, x_1898.w);
      let x_1901 : f32 = vs_INTERP3.z;
      txVec33 = vec3<f32>(x_1899.x, x_1899.y, x_1901);
      let x_1908 : vec3<f32> = txVec33;
      let x_1910 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1908.xy, x_1908.z);
      u_xlat8.w = x_1910;
      let x_1912 : vec4<f32> = u_xlat8;
      u_xlat78 = dot(x_1912, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1916 : f32 = x_131.x_MainLightShadowParams.y;
      u_xlatb82 = (x_1916 == 2.0f);
      let x_1918 : bool = u_xlatb82;
      if (x_1918) {
        let x_1921 : vec4<f32> = vs_INTERP3;
        let x_1924 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_1927 : vec2<f32> = ((vec2<f32>(x_1921.x, x_1921.y) * vec2<f32>(x_1924.z, x_1924.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1928 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1927.x, x_1927.y, x_1928.z, x_1928.w);
        let x_1930 : vec4<f32> = u_xlat7;
        let x_1932 : vec2<f32> = floor(vec2<f32>(x_1930.x, x_1930.y));
        let x_1933 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1932.x, x_1932.y, x_1933.z, x_1933.w);
        let x_1935 : vec4<f32> = vs_INTERP3;
        let x_1938 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_1941 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1935.x, x_1935.y) * vec2<f32>(x_1938.z, x_1938.w)) + -(vec2<f32>(x_1941.x, x_1941.y)));
        let x_1945 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_1945.x, x_1945.x, x_1945.y, x_1945.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1948 : vec4<f32> = u_xlat8;
        let x_1950 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1948.x, x_1948.x, x_1948.z, x_1948.z) * vec4<f32>(x_1950.x, x_1950.x, x_1950.z, x_1950.z));
        let x_1953 : vec4<f32> = u_xlat9;
        let x_1955 : vec2<f32> = (vec2<f32>(x_1953.y, x_1953.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1956 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1955.x, x_1956.y, x_1955.y, x_1956.w);
        let x_1958 : vec4<f32> = u_xlat9;
        let x_1961 : vec2<f32> = u_xlat59;
        let x_1963 : vec2<f32> = ((vec2<f32>(x_1958.x, x_1958.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1961));
        let x_1964 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1963.x, x_1963.y, x_1964.z, x_1964.w);
        let x_1967 : vec2<f32> = u_xlat59;
        u_xlat61 = (-(x_1967) + vec2<f32>(1.0f, 1.0f));
        let x_1970 : vec2<f32> = u_xlat59;
        let x_1971 : vec2<f32> = min(x_1970, vec2<f32>(0.0f, 0.0f));
        let x_1972 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1971.x, x_1971.y, x_1972.z, x_1972.w);
        let x_1974 : vec4<f32> = u_xlat10;
        let x_1977 : vec4<f32> = u_xlat10;
        let x_1980 : vec2<f32> = u_xlat61;
        let x_1981 : vec2<f32> = ((-(vec2<f32>(x_1974.x, x_1974.y)) * vec2<f32>(x_1977.x, x_1977.y)) + x_1980);
        let x_1982 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1981.x, x_1981.y, x_1982.z, x_1982.w);
        let x_1984 : vec2<f32> = u_xlat59;
        u_xlat59 = max(x_1984, vec2<f32>(0.0f, 0.0f));
        let x_1986 : vec2<f32> = u_xlat59;
        let x_1988 : vec2<f32> = u_xlat59;
        let x_1990 : vec4<f32> = u_xlat8;
        u_xlat59 = ((-(x_1986) * x_1988) + vec2<f32>(x_1990.y, x_1990.w));
        let x_1993 : vec4<f32> = u_xlat10;
        let x_1995 : vec2<f32> = (vec2<f32>(x_1993.x, x_1993.y) + vec2<f32>(1.0f, 1.0f));
        let x_1996 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1995.x, x_1995.y, x_1996.z, x_1996.w);
        let x_1998 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_1998 + vec2<f32>(1.0f, 1.0f));
        let x_2000 : vec4<f32> = u_xlat9;
        let x_2002 : vec2<f32> = (vec2<f32>(x_2000.x, x_2000.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2003 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2002.x, x_2002.y, x_2003.z, x_2003.w);
        let x_2005 : vec2<f32> = u_xlat61;
        let x_2006 : vec2<f32> = (x_2005 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2007 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2006.x, x_2006.y, x_2007.z, x_2007.w);
        let x_2009 : vec4<f32> = u_xlat10;
        let x_2011 : vec2<f32> = (vec2<f32>(x_2009.x, x_2009.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2012 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2011.x, x_2011.y, x_2012.z, x_2012.w);
        let x_2014 : vec2<f32> = u_xlat59;
        let x_2015 : vec2<f32> = (x_2014 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2016 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2015.x, x_2015.y, x_2016.z, x_2016.w);
        let x_2018 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_2018.y, x_2018.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2022 : f32 = u_xlat10.x;
        u_xlat11.z = x_2022;
        let x_2025 : f32 = u_xlat59.x;
        u_xlat11.w = x_2025;
        let x_2028 : f32 = u_xlat12.x;
        u_xlat9.z = x_2028;
        let x_2031 : f32 = u_xlat8.x;
        u_xlat9.w = x_2031;
        let x_2033 : vec4<f32> = u_xlat9;
        let x_2035 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_2033.z, x_2033.w, x_2033.x, x_2033.z) + vec4<f32>(x_2035.z, x_2035.w, x_2035.x, x_2035.z));
        let x_2039 : f32 = u_xlat11.y;
        u_xlat10.z = x_2039;
        let x_2042 : f32 = u_xlat59.y;
        u_xlat10.w = x_2042;
        let x_2045 : f32 = u_xlat9.y;
        u_xlat12.z = x_2045;
        let x_2048 : f32 = u_xlat8.z;
        u_xlat12.w = x_2048;
        let x_2050 : vec4<f32> = u_xlat10;
        let x_2052 : vec4<f32> = u_xlat12;
        let x_2054 : vec3<f32> = (vec3<f32>(x_2050.z, x_2050.y, x_2050.w) + vec3<f32>(x_2052.z, x_2052.y, x_2052.w));
        let x_2055 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2054.x, x_2054.y, x_2054.z, x_2055.w);
        let x_2057 : vec4<f32> = u_xlat9;
        let x_2059 : vec4<f32> = u_xlat13;
        let x_2061 : vec3<f32> = (vec3<f32>(x_2057.x, x_2057.z, x_2057.w) / vec3<f32>(x_2059.z, x_2059.w, x_2059.y));
        let x_2062 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2061.x, x_2061.y, x_2061.z, x_2062.w);
        let x_2064 : vec4<f32> = u_xlat9;
        let x_2066 : vec3<f32> = (vec3<f32>(x_2064.x, x_2064.y, x_2064.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2067 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2066.x, x_2066.y, x_2066.z, x_2067.w);
        let x_2069 : vec4<f32> = u_xlat12;
        let x_2071 : vec4<f32> = u_xlat8;
        let x_2073 : vec3<f32> = (vec3<f32>(x_2069.z, x_2069.y, x_2069.w) / vec3<f32>(x_2071.x, x_2071.y, x_2071.z));
        let x_2074 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2073.x, x_2073.y, x_2073.z, x_2074.w);
        let x_2076 : vec4<f32> = u_xlat10;
        let x_2078 : vec3<f32> = (vec3<f32>(x_2076.x, x_2076.y, x_2076.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2079 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2078.x, x_2078.y, x_2078.z, x_2079.w);
        let x_2081 : vec4<f32> = u_xlat9;
        let x_2084 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2086 : vec3<f32> = (vec3<f32>(x_2081.y, x_2081.x, x_2081.z) * vec3<f32>(x_2084.x, x_2084.x, x_2084.x));
        let x_2087 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2086.x, x_2086.y, x_2086.z, x_2087.w);
        let x_2089 : vec4<f32> = u_xlat10;
        let x_2092 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2094 : vec3<f32> = (vec3<f32>(x_2089.x, x_2089.y, x_2089.z) * vec3<f32>(x_2092.y, x_2092.y, x_2092.y));
        let x_2095 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2094.x, x_2094.y, x_2094.z, x_2095.w);
        let x_2098 : f32 = u_xlat10.x;
        u_xlat9.w = x_2098;
        let x_2100 : vec4<f32> = u_xlat7;
        let x_2103 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2106 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2100.x, x_2100.y, x_2100.x, x_2100.y) * vec4<f32>(x_2103.x, x_2103.y, x_2103.x, x_2103.y)) + vec4<f32>(x_2106.y, x_2106.w, x_2106.x, x_2106.w));
        let x_2109 : vec4<f32> = u_xlat7;
        let x_2112 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2115 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_2109.x, x_2109.y) * vec2<f32>(x_2112.x, x_2112.y)) + vec2<f32>(x_2115.z, x_2115.w));
        let x_2119 : f32 = u_xlat9.y;
        u_xlat10.w = x_2119;
        let x_2121 : vec4<f32> = u_xlat10;
        let x_2122 : vec2<f32> = vec2<f32>(x_2121.y, x_2121.z);
        let x_2123 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2123.x, x_2122.x, x_2123.z, x_2122.y);
        let x_2125 : vec4<f32> = u_xlat7;
        let x_2128 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2131 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_2125.x, x_2125.y, x_2125.x, x_2125.y) * vec4<f32>(x_2128.x, x_2128.y, x_2128.x, x_2128.y)) + vec4<f32>(x_2131.x, x_2131.y, x_2131.z, x_2131.y));
        let x_2134 : vec4<f32> = u_xlat7;
        let x_2137 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2140 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2134.x, x_2134.y, x_2134.x, x_2134.y) * vec4<f32>(x_2137.x, x_2137.y, x_2137.x, x_2137.y)) + vec4<f32>(x_2140.w, x_2140.y, x_2140.w, x_2140.z));
        let x_2143 : vec4<f32> = u_xlat7;
        let x_2146 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2149 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_2143.x, x_2143.y, x_2143.x, x_2143.y) * vec4<f32>(x_2146.x, x_2146.y, x_2146.x, x_2146.y)) + vec4<f32>(x_2149.x, x_2149.w, x_2149.z, x_2149.w));
        let x_2152 : vec4<f32> = u_xlat8;
        let x_2154 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_2152.x, x_2152.x, x_2152.x, x_2152.y) * vec4<f32>(x_2154.z, x_2154.w, x_2154.y, x_2154.z));
        let x_2157 : vec4<f32> = u_xlat8;
        let x_2159 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_2157.y, x_2157.y, x_2157.z, x_2157.z) * x_2159);
        let x_2162 : f32 = u_xlat8.z;
        let x_2164 : f32 = u_xlat13.y;
        u_xlat82 = (x_2162 * x_2164);
        let x_2167 : vec4<f32> = u_xlat11;
        let x_2168 : vec2<f32> = vec2<f32>(x_2167.x, x_2167.y);
        let x_2170 : f32 = vs_INTERP3.z;
        txVec34 = vec3<f32>(x_2168.x, x_2168.y, x_2170);
        let x_2178 : vec3<f32> = txVec34;
        let x_2180 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2178.xy, x_2178.z);
        u_xlat83 = x_2180;
        let x_2182 : vec4<f32> = u_xlat11;
        let x_2183 : vec2<f32> = vec2<f32>(x_2182.z, x_2182.w);
        let x_2185 : f32 = vs_INTERP3.z;
        txVec35 = vec3<f32>(x_2183.x, x_2183.y, x_2185);
        let x_2193 : vec3<f32> = txVec35;
        let x_2195 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2193.xy, x_2193.z);
        u_xlat84 = x_2195;
        let x_2196 : f32 = u_xlat84;
        let x_2198 : f32 = u_xlat14.y;
        u_xlat84 = (x_2196 * x_2198);
        let x_2201 : f32 = u_xlat14.x;
        let x_2202 : f32 = u_xlat83;
        let x_2204 : f32 = u_xlat84;
        u_xlat83 = ((x_2201 * x_2202) + x_2204);
        let x_2207 : vec2<f32> = u_xlat59;
        let x_2209 : f32 = vs_INTERP3.z;
        txVec36 = vec3<f32>(x_2207.x, x_2207.y, x_2209);
        let x_2216 : vec3<f32> = txVec36;
        let x_2218 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2216.xy, x_2216.z);
        u_xlat84 = x_2218;
        let x_2220 : f32 = u_xlat14.z;
        let x_2221 : f32 = u_xlat84;
        let x_2223 : f32 = u_xlat83;
        u_xlat83 = ((x_2220 * x_2221) + x_2223);
        let x_2226 : vec4<f32> = u_xlat10;
        let x_2227 : vec2<f32> = vec2<f32>(x_2226.x, x_2226.y);
        let x_2229 : f32 = vs_INTERP3.z;
        txVec37 = vec3<f32>(x_2227.x, x_2227.y, x_2229);
        let x_2236 : vec3<f32> = txVec37;
        let x_2238 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2236.xy, x_2236.z);
        u_xlat84 = x_2238;
        let x_2240 : f32 = u_xlat14.w;
        let x_2241 : f32 = u_xlat84;
        let x_2243 : f32 = u_xlat83;
        u_xlat83 = ((x_2240 * x_2241) + x_2243);
        let x_2246 : vec4<f32> = u_xlat12;
        let x_2247 : vec2<f32> = vec2<f32>(x_2246.x, x_2246.y);
        let x_2249 : f32 = vs_INTERP3.z;
        txVec38 = vec3<f32>(x_2247.x, x_2247.y, x_2249);
        let x_2256 : vec3<f32> = txVec38;
        let x_2258 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2256.xy, x_2256.z);
        u_xlat84 = x_2258;
        let x_2260 : f32 = u_xlat15.x;
        let x_2261 : f32 = u_xlat84;
        let x_2263 : f32 = u_xlat83;
        u_xlat83 = ((x_2260 * x_2261) + x_2263);
        let x_2266 : vec4<f32> = u_xlat12;
        let x_2267 : vec2<f32> = vec2<f32>(x_2266.z, x_2266.w);
        let x_2269 : f32 = vs_INTERP3.z;
        txVec39 = vec3<f32>(x_2267.x, x_2267.y, x_2269);
        let x_2276 : vec3<f32> = txVec39;
        let x_2278 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2276.xy, x_2276.z);
        u_xlat84 = x_2278;
        let x_2280 : f32 = u_xlat15.y;
        let x_2281 : f32 = u_xlat84;
        let x_2283 : f32 = u_xlat83;
        u_xlat83 = ((x_2280 * x_2281) + x_2283);
        let x_2286 : vec4<f32> = u_xlat10;
        let x_2287 : vec2<f32> = vec2<f32>(x_2286.z, x_2286.w);
        let x_2289 : f32 = vs_INTERP3.z;
        txVec40 = vec3<f32>(x_2287.x, x_2287.y, x_2289);
        let x_2296 : vec3<f32> = txVec40;
        let x_2298 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2296.xy, x_2296.z);
        u_xlat84 = x_2298;
        let x_2300 : f32 = u_xlat15.z;
        let x_2301 : f32 = u_xlat84;
        let x_2303 : f32 = u_xlat83;
        u_xlat83 = ((x_2300 * x_2301) + x_2303);
        let x_2306 : vec4<f32> = u_xlat9;
        let x_2307 : vec2<f32> = vec2<f32>(x_2306.x, x_2306.y);
        let x_2309 : f32 = vs_INTERP3.z;
        txVec41 = vec3<f32>(x_2307.x, x_2307.y, x_2309);
        let x_2316 : vec3<f32> = txVec41;
        let x_2318 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2316.xy, x_2316.z);
        u_xlat84 = x_2318;
        let x_2320 : f32 = u_xlat15.w;
        let x_2321 : f32 = u_xlat84;
        let x_2323 : f32 = u_xlat83;
        u_xlat83 = ((x_2320 * x_2321) + x_2323);
        let x_2326 : vec4<f32> = u_xlat9;
        let x_2327 : vec2<f32> = vec2<f32>(x_2326.z, x_2326.w);
        let x_2329 : f32 = vs_INTERP3.z;
        txVec42 = vec3<f32>(x_2327.x, x_2327.y, x_2329);
        let x_2336 : vec3<f32> = txVec42;
        let x_2338 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2336.xy, x_2336.z);
        u_xlat84 = x_2338;
        let x_2339 : f32 = u_xlat82;
        let x_2340 : f32 = u_xlat84;
        let x_2342 : f32 = u_xlat83;
        u_xlat78 = ((x_2339 * x_2340) + x_2342);
      } else {
        let x_2345 : vec4<f32> = vs_INTERP3;
        let x_2348 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2351 : vec2<f32> = ((vec2<f32>(x_2345.x, x_2345.y) * vec2<f32>(x_2348.z, x_2348.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2352 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2351.x, x_2351.y, x_2352.z, x_2352.w);
        let x_2354 : vec4<f32> = u_xlat7;
        let x_2356 : vec2<f32> = floor(vec2<f32>(x_2354.x, x_2354.y));
        let x_2357 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2356.x, x_2356.y, x_2357.z, x_2357.w);
        let x_2359 : vec4<f32> = vs_INTERP3;
        let x_2362 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2365 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_2359.x, x_2359.y) * vec2<f32>(x_2362.z, x_2362.w)) + -(vec2<f32>(x_2365.x, x_2365.y)));
        let x_2369 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_2369.x, x_2369.x, x_2369.y, x_2369.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2372 : vec4<f32> = u_xlat8;
        let x_2374 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2372.x, x_2372.x, x_2372.z, x_2372.z) * vec4<f32>(x_2374.x, x_2374.x, x_2374.z, x_2374.z));
        let x_2377 : vec4<f32> = u_xlat9;
        let x_2379 : vec2<f32> = (vec2<f32>(x_2377.y, x_2377.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2380 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2380.x, x_2379.x, x_2380.z, x_2379.y);
        let x_2382 : vec4<f32> = u_xlat9;
        let x_2385 : vec2<f32> = u_xlat59;
        let x_2387 : vec2<f32> = ((vec2<f32>(x_2382.x, x_2382.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2385));
        let x_2388 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2387.x, x_2388.y, x_2387.y, x_2388.w);
        let x_2390 : vec2<f32> = u_xlat59;
        let x_2392 : vec2<f32> = (-(x_2390) + vec2<f32>(1.0f, 1.0f));
        let x_2393 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2392.x, x_2392.y, x_2393.z, x_2393.w);
        let x_2395 : vec2<f32> = u_xlat59;
        u_xlat61 = min(x_2395, vec2<f32>(0.0f, 0.0f));
        let x_2397 : vec2<f32> = u_xlat61;
        let x_2399 : vec2<f32> = u_xlat61;
        let x_2401 : vec4<f32> = u_xlat9;
        let x_2403 : vec2<f32> = ((-(x_2397) * x_2399) + vec2<f32>(x_2401.x, x_2401.y));
        let x_2404 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2403.x, x_2403.y, x_2404.z, x_2404.w);
        let x_2406 : vec2<f32> = u_xlat59;
        u_xlat61 = max(x_2406, vec2<f32>(0.0f, 0.0f));
        let x_2409 : vec2<f32> = u_xlat61;
        let x_2411 : vec2<f32> = u_xlat61;
        let x_2413 : vec4<f32> = u_xlat8;
        let x_2415 : vec2<f32> = ((-(x_2409) * x_2411) + vec2<f32>(x_2413.y, x_2413.w));
        let x_2416 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_2415.x, x_2416.y, x_2415.y);
        let x_2418 : vec4<f32> = u_xlat9;
        let x_2420 : vec2<f32> = (vec2<f32>(x_2418.x, x_2418.y) + vec2<f32>(2.0f, 2.0f));
        let x_2421 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2420.x, x_2420.y, x_2421.z, x_2421.w);
        let x_2423 : vec3<f32> = u_xlat34;
        let x_2425 : vec2<f32> = (vec2<f32>(x_2423.x, x_2423.z) + vec2<f32>(2.0f, 2.0f));
        let x_2426 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2426.x, x_2425.x, x_2426.z, x_2425.y);
        let x_2429 : f32 = u_xlat8.y;
        u_xlat11.z = (x_2429 * 0.08163200318813323975f);
        let x_2432 : vec4<f32> = u_xlat8;
        let x_2434 : vec3<f32> = (vec3<f32>(x_2432.z, x_2432.x, x_2432.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_2435 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2434.x, x_2434.y, x_2434.z, x_2435.w);
        let x_2437 : vec4<f32> = u_xlat9;
        let x_2439 : vec2<f32> = (vec2<f32>(x_2437.x, x_2437.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2440 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2439.x, x_2439.y, x_2440.z, x_2440.w);
        let x_2443 : f32 = u_xlat12.y;
        u_xlat11.x = x_2443;
        let x_2445 : vec2<f32> = u_xlat59;
        let x_2448 : vec2<f32> = ((vec2<f32>(x_2445.x, x_2445.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2449 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2449.x, x_2448.x, x_2449.z, x_2448.y);
        let x_2451 : vec2<f32> = u_xlat59;
        let x_2454 : vec2<f32> = ((vec2<f32>(x_2451.x, x_2451.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2455 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2454.x, x_2455.y, x_2454.y, x_2455.w);
        let x_2458 : f32 = u_xlat8.x;
        u_xlat9.y = x_2458;
        let x_2461 : f32 = u_xlat10.y;
        u_xlat9.w = x_2461;
        let x_2463 : vec4<f32> = u_xlat9;
        let x_2464 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_2463 + x_2464);
        let x_2466 : vec2<f32> = u_xlat59;
        let x_2469 : vec2<f32> = ((vec2<f32>(x_2466.y, x_2466.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2470 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2470.x, x_2469.x, x_2470.z, x_2469.y);
        let x_2472 : vec2<f32> = u_xlat59;
        let x_2475 : vec2<f32> = ((vec2<f32>(x_2472.y, x_2472.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2476 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2475.x, x_2476.y, x_2475.y, x_2476.w);
        let x_2479 : f32 = u_xlat8.y;
        u_xlat10.y = x_2479;
        let x_2481 : vec4<f32> = u_xlat10;
        let x_2482 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_2481 + x_2482);
        let x_2484 : vec4<f32> = u_xlat9;
        let x_2485 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_2484 / x_2485);
        let x_2487 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2487 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2489 : vec4<f32> = u_xlat10;
        let x_2490 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_2489 / x_2490);
        let x_2492 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2492 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2494 : vec4<f32> = u_xlat9;
        let x_2497 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_2494.w, x_2494.x, x_2494.y, x_2494.z) * vec4<f32>(x_2497.x, x_2497.x, x_2497.x, x_2497.x));
        let x_2500 : vec4<f32> = u_xlat10;
        let x_2503 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_2500.x, x_2500.w, x_2500.y, x_2500.z) * vec4<f32>(x_2503.y, x_2503.y, x_2503.y, x_2503.y));
        let x_2506 : vec4<f32> = u_xlat9;
        let x_2507 : vec3<f32> = vec3<f32>(x_2506.y, x_2506.z, x_2506.w);
        let x_2508 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2507.x, x_2508.y, x_2507.y, x_2507.z);
        let x_2511 : f32 = u_xlat10.x;
        u_xlat12.y = x_2511;
        let x_2513 : vec4<f32> = u_xlat7;
        let x_2516 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2519 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_2513.x, x_2513.y, x_2513.x, x_2513.y) * vec4<f32>(x_2516.x, x_2516.y, x_2516.x, x_2516.y)) + vec4<f32>(x_2519.x, x_2519.y, x_2519.z, x_2519.y));
        let x_2522 : vec4<f32> = u_xlat7;
        let x_2525 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2528 : vec4<f32> = u_xlat12;
        u_xlat59 = ((vec2<f32>(x_2522.x, x_2522.y) * vec2<f32>(x_2525.x, x_2525.y)) + vec2<f32>(x_2528.w, x_2528.y));
        let x_2532 : f32 = u_xlat12.y;
        u_xlat9.y = x_2532;
        let x_2535 : f32 = u_xlat10.z;
        u_xlat12.y = x_2535;
        let x_2537 : vec4<f32> = u_xlat7;
        let x_2540 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2543 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_2537.x, x_2537.y, x_2537.x, x_2537.y) * vec4<f32>(x_2540.x, x_2540.y, x_2540.x, x_2540.y)) + vec4<f32>(x_2543.x, x_2543.y, x_2543.z, x_2543.y));
        let x_2546 : vec4<f32> = u_xlat7;
        let x_2549 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2552 : vec4<f32> = u_xlat12;
        let x_2554 : vec2<f32> = ((vec2<f32>(x_2546.x, x_2546.y) * vec2<f32>(x_2549.x, x_2549.y)) + vec2<f32>(x_2552.w, x_2552.y));
        let x_2555 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_2554.x, x_2554.y, x_2555.z, x_2555.w);
        let x_2558 : f32 = u_xlat12.y;
        u_xlat9.z = x_2558;
        let x_2560 : vec4<f32> = u_xlat7;
        let x_2563 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2566 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_2560.x, x_2560.y, x_2560.x, x_2560.y) * vec4<f32>(x_2563.x, x_2563.y, x_2563.x, x_2563.y)) + vec4<f32>(x_2566.x, x_2566.y, x_2566.x, x_2566.z));
        let x_2570 : f32 = u_xlat10.w;
        u_xlat12.y = x_2570;
        let x_2572 : vec4<f32> = u_xlat7;
        let x_2575 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2578 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_2572.x, x_2572.y, x_2572.x, x_2572.y) * vec4<f32>(x_2575.x, x_2575.y, x_2575.x, x_2575.y)) + vec4<f32>(x_2578.x, x_2578.y, x_2578.z, x_2578.y));
        let x_2582 : vec4<f32> = u_xlat7;
        let x_2585 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2588 : vec4<f32> = u_xlat12;
        u_xlat35 = ((vec2<f32>(x_2582.x, x_2582.y) * vec2<f32>(x_2585.x, x_2585.y)) + vec2<f32>(x_2588.w, x_2588.y));
        let x_2592 : f32 = u_xlat12.y;
        u_xlat9.w = x_2592;
        let x_2595 : vec4<f32> = u_xlat7;
        let x_2598 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2601 : vec4<f32> = u_xlat9;
        u_xlat67 = ((vec2<f32>(x_2595.x, x_2595.y) * vec2<f32>(x_2598.x, x_2598.y)) + vec2<f32>(x_2601.x, x_2601.w));
        let x_2604 : vec4<f32> = u_xlat12;
        let x_2605 : vec3<f32> = vec3<f32>(x_2604.x, x_2604.z, x_2604.w);
        let x_2606 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2605.x, x_2606.y, x_2605.y, x_2605.z);
        let x_2608 : vec4<f32> = u_xlat7;
        let x_2611 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2614 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_2608.x, x_2608.y, x_2608.x, x_2608.y) * vec4<f32>(x_2611.x, x_2611.y, x_2611.x, x_2611.y)) + vec4<f32>(x_2614.x, x_2614.y, x_2614.z, x_2614.y));
        let x_2618 : vec4<f32> = u_xlat7;
        let x_2621 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2624 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_2618.x, x_2618.y) * vec2<f32>(x_2621.x, x_2621.y)) + vec2<f32>(x_2624.w, x_2624.y));
        let x_2628 : f32 = u_xlat9.x;
        u_xlat10.x = x_2628;
        let x_2630 : vec4<f32> = u_xlat7;
        let x_2633 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2636 : vec4<f32> = u_xlat10;
        let x_2638 : vec2<f32> = ((vec2<f32>(x_2630.x, x_2630.y) * vec2<f32>(x_2633.x, x_2633.y)) + vec2<f32>(x_2636.x, x_2636.y));
        let x_2639 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2638.x, x_2638.y, x_2639.z, x_2639.w);
        let x_2641 : vec4<f32> = u_xlat8;
        let x_2643 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_2641.x, x_2641.x, x_2641.x, x_2641.x) * x_2643);
        let x_2646 : vec4<f32> = u_xlat8;
        let x_2648 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_2646.y, x_2646.y, x_2646.y, x_2646.y) * x_2648);
        let x_2651 : vec4<f32> = u_xlat8;
        let x_2653 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_2651.z, x_2651.z, x_2651.z, x_2651.z) * x_2653);
        let x_2655 : vec4<f32> = u_xlat8;
        let x_2657 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_2655.w, x_2655.w, x_2655.w, x_2655.w) * x_2657);
        let x_2660 : vec4<f32> = u_xlat13;
        let x_2661 : vec2<f32> = vec2<f32>(x_2660.x, x_2660.y);
        let x_2663 : f32 = vs_INTERP3.z;
        txVec43 = vec3<f32>(x_2661.x, x_2661.y, x_2663);
        let x_2670 : vec3<f32> = txVec43;
        let x_2672 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2670.xy, x_2670.z);
        u_xlat82 = x_2672;
        let x_2674 : vec4<f32> = u_xlat13;
        let x_2675 : vec2<f32> = vec2<f32>(x_2674.z, x_2674.w);
        let x_2677 : f32 = vs_INTERP3.z;
        txVec44 = vec3<f32>(x_2675.x, x_2675.y, x_2677);
        let x_2684 : vec3<f32> = txVec44;
        let x_2686 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2684.xy, x_2684.z);
        u_xlat83 = x_2686;
        let x_2687 : f32 = u_xlat83;
        let x_2689 : f32 = u_xlat18.y;
        u_xlat83 = (x_2687 * x_2689);
        let x_2692 : f32 = u_xlat18.x;
        let x_2693 : f32 = u_xlat82;
        let x_2695 : f32 = u_xlat83;
        u_xlat82 = ((x_2692 * x_2693) + x_2695);
        let x_2698 : vec2<f32> = u_xlat59;
        let x_2700 : f32 = vs_INTERP3.z;
        txVec45 = vec3<f32>(x_2698.x, x_2698.y, x_2700);
        let x_2707 : vec3<f32> = txVec45;
        let x_2709 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2707.xy, x_2707.z);
        u_xlat83 = x_2709;
        let x_2711 : f32 = u_xlat18.z;
        let x_2712 : f32 = u_xlat83;
        let x_2714 : f32 = u_xlat82;
        u_xlat82 = ((x_2711 * x_2712) + x_2714);
        let x_2717 : vec4<f32> = u_xlat16;
        let x_2718 : vec2<f32> = vec2<f32>(x_2717.x, x_2717.y);
        let x_2720 : f32 = vs_INTERP3.z;
        txVec46 = vec3<f32>(x_2718.x, x_2718.y, x_2720);
        let x_2727 : vec3<f32> = txVec46;
        let x_2729 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2727.xy, x_2727.z);
        u_xlat83 = x_2729;
        let x_2731 : f32 = u_xlat18.w;
        let x_2732 : f32 = u_xlat83;
        let x_2734 : f32 = u_xlat82;
        u_xlat82 = ((x_2731 * x_2732) + x_2734);
        let x_2737 : vec4<f32> = u_xlat14;
        let x_2738 : vec2<f32> = vec2<f32>(x_2737.x, x_2737.y);
        let x_2740 : f32 = vs_INTERP3.z;
        txVec47 = vec3<f32>(x_2738.x, x_2738.y, x_2740);
        let x_2747 : vec3<f32> = txVec47;
        let x_2749 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2747.xy, x_2747.z);
        u_xlat83 = x_2749;
        let x_2751 : f32 = u_xlat19.x;
        let x_2752 : f32 = u_xlat83;
        let x_2754 : f32 = u_xlat82;
        u_xlat82 = ((x_2751 * x_2752) + x_2754);
        let x_2757 : vec4<f32> = u_xlat14;
        let x_2758 : vec2<f32> = vec2<f32>(x_2757.z, x_2757.w);
        let x_2760 : f32 = vs_INTERP3.z;
        txVec48 = vec3<f32>(x_2758.x, x_2758.y, x_2760);
        let x_2767 : vec3<f32> = txVec48;
        let x_2769 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2767.xy, x_2767.z);
        u_xlat83 = x_2769;
        let x_2771 : f32 = u_xlat19.y;
        let x_2772 : f32 = u_xlat83;
        let x_2774 : f32 = u_xlat82;
        u_xlat82 = ((x_2771 * x_2772) + x_2774);
        let x_2777 : vec4<f32> = u_xlat15;
        let x_2778 : vec2<f32> = vec2<f32>(x_2777.x, x_2777.y);
        let x_2780 : f32 = vs_INTERP3.z;
        txVec49 = vec3<f32>(x_2778.x, x_2778.y, x_2780);
        let x_2787 : vec3<f32> = txVec49;
        let x_2789 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2787.xy, x_2787.z);
        u_xlat83 = x_2789;
        let x_2791 : f32 = u_xlat19.z;
        let x_2792 : f32 = u_xlat83;
        let x_2794 : f32 = u_xlat82;
        u_xlat82 = ((x_2791 * x_2792) + x_2794);
        let x_2797 : vec4<f32> = u_xlat16;
        let x_2798 : vec2<f32> = vec2<f32>(x_2797.z, x_2797.w);
        let x_2800 : f32 = vs_INTERP3.z;
        txVec50 = vec3<f32>(x_2798.x, x_2798.y, x_2800);
        let x_2807 : vec3<f32> = txVec50;
        let x_2809 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2807.xy, x_2807.z);
        u_xlat83 = x_2809;
        let x_2811 : f32 = u_xlat19.w;
        let x_2812 : f32 = u_xlat83;
        let x_2814 : f32 = u_xlat82;
        u_xlat82 = ((x_2811 * x_2812) + x_2814);
        let x_2817 : vec4<f32> = u_xlat17;
        let x_2818 : vec2<f32> = vec2<f32>(x_2817.x, x_2817.y);
        let x_2820 : f32 = vs_INTERP3.z;
        txVec51 = vec3<f32>(x_2818.x, x_2818.y, x_2820);
        let x_2827 : vec3<f32> = txVec51;
        let x_2829 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2827.xy, x_2827.z);
        u_xlat83 = x_2829;
        let x_2831 : f32 = u_xlat20.x;
        let x_2832 : f32 = u_xlat83;
        let x_2834 : f32 = u_xlat82;
        u_xlat82 = ((x_2831 * x_2832) + x_2834);
        let x_2837 : vec4<f32> = u_xlat17;
        let x_2838 : vec2<f32> = vec2<f32>(x_2837.z, x_2837.w);
        let x_2840 : f32 = vs_INTERP3.z;
        txVec52 = vec3<f32>(x_2838.x, x_2838.y, x_2840);
        let x_2847 : vec3<f32> = txVec52;
        let x_2849 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2847.xy, x_2847.z);
        u_xlat83 = x_2849;
        let x_2851 : f32 = u_xlat20.y;
        let x_2852 : f32 = u_xlat83;
        let x_2854 : f32 = u_xlat82;
        u_xlat82 = ((x_2851 * x_2852) + x_2854);
        let x_2857 : vec2<f32> = u_xlat35;
        let x_2859 : f32 = vs_INTERP3.z;
        txVec53 = vec3<f32>(x_2857.x, x_2857.y, x_2859);
        let x_2866 : vec3<f32> = txVec53;
        let x_2868 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2866.xy, x_2866.z);
        u_xlat83 = x_2868;
        let x_2870 : f32 = u_xlat20.z;
        let x_2871 : f32 = u_xlat83;
        let x_2873 : f32 = u_xlat82;
        u_xlat82 = ((x_2870 * x_2871) + x_2873);
        let x_2876 : vec2<f32> = u_xlat67;
        let x_2878 : f32 = vs_INTERP3.z;
        txVec54 = vec3<f32>(x_2876.x, x_2876.y, x_2878);
        let x_2885 : vec3<f32> = txVec54;
        let x_2887 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2885.xy, x_2885.z);
        u_xlat83 = x_2887;
        let x_2889 : f32 = u_xlat20.w;
        let x_2890 : f32 = u_xlat83;
        let x_2892 : f32 = u_xlat82;
        u_xlat82 = ((x_2889 * x_2890) + x_2892);
        let x_2895 : vec4<f32> = u_xlat12;
        let x_2896 : vec2<f32> = vec2<f32>(x_2895.x, x_2895.y);
        let x_2898 : f32 = vs_INTERP3.z;
        txVec55 = vec3<f32>(x_2896.x, x_2896.y, x_2898);
        let x_2905 : vec3<f32> = txVec55;
        let x_2907 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2905.xy, x_2905.z);
        u_xlat83 = x_2907;
        let x_2909 : f32 = u_xlat8.x;
        let x_2910 : f32 = u_xlat83;
        let x_2912 : f32 = u_xlat82;
        u_xlat82 = ((x_2909 * x_2910) + x_2912);
        let x_2915 : vec4<f32> = u_xlat12;
        let x_2916 : vec2<f32> = vec2<f32>(x_2915.z, x_2915.w);
        let x_2918 : f32 = vs_INTERP3.z;
        txVec56 = vec3<f32>(x_2916.x, x_2916.y, x_2918);
        let x_2925 : vec3<f32> = txVec56;
        let x_2927 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2925.xy, x_2925.z);
        u_xlat83 = x_2927;
        let x_2929 : f32 = u_xlat8.y;
        let x_2930 : f32 = u_xlat83;
        let x_2932 : f32 = u_xlat82;
        u_xlat82 = ((x_2929 * x_2930) + x_2932);
        let x_2935 : vec2<f32> = u_xlat62;
        let x_2937 : f32 = vs_INTERP3.z;
        txVec57 = vec3<f32>(x_2935.x, x_2935.y, x_2937);
        let x_2944 : vec3<f32> = txVec57;
        let x_2946 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2944.xy, x_2944.z);
        u_xlat83 = x_2946;
        let x_2948 : f32 = u_xlat8.z;
        let x_2949 : f32 = u_xlat83;
        let x_2951 : f32 = u_xlat82;
        u_xlat82 = ((x_2948 * x_2949) + x_2951);
        let x_2954 : vec4<f32> = u_xlat7;
        let x_2955 : vec2<f32> = vec2<f32>(x_2954.x, x_2954.y);
        let x_2957 : f32 = vs_INTERP3.z;
        txVec58 = vec3<f32>(x_2955.x, x_2955.y, x_2957);
        let x_2964 : vec3<f32> = txVec58;
        let x_2966 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2964.xy, x_2964.z);
        u_xlat83 = x_2966;
        let x_2968 : f32 = u_xlat8.w;
        let x_2969 : f32 = u_xlat83;
        let x_2971 : f32 = u_xlat82;
        u_xlat78 = ((x_2968 * x_2969) + x_2971);
      }
    }
  } else {
    let x_2975 : vec4<f32> = vs_INTERP3;
    let x_2976 : vec2<f32> = vec2<f32>(x_2975.x, x_2975.y);
    let x_2978 : f32 = vs_INTERP3.z;
    txVec59 = vec3<f32>(x_2976.x, x_2976.y, x_2978);
    let x_2985 : vec3<f32> = txVec59;
    let x_2987 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2985.xy, x_2985.z);
    u_xlat78 = x_2987;
  }
  let x_2988 : f32 = u_xlat78;
  let x_2990 : f32 = x_131.x_MainLightShadowParams.x;
  let x_2993 : f32 = u_xlat4.x;
  u_xlat78 = ((x_2988 * x_2990) + x_2993);
  let x_2999 : f32 = vs_INTERP3.z;
  u_xlatb4.x = (0.0f >= x_2999);
  let x_3003 : f32 = vs_INTERP3.z;
  u_xlatb82 = (x_3003 >= 1.0f);
  let x_3005 : bool = u_xlatb82;
  let x_3007 : bool = u_xlatb4.x;
  u_xlatb4.x = (x_3005 | x_3007);
  let x_3011 : bool = u_xlatb4.x;
  let x_3012 : f32 = u_xlat78;
  u_xlat78 = select(x_3012, 1.0f, x_3011);
  let x_3014 : vec3<f32> = vs_INTERP8;
  let x_3016 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  let x_3018 : vec3<f32> = (x_3014 + -(x_3016));
  let x_3019 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3018.x, x_3018.y, x_3018.z, x_3019.w);
  let x_3021 : vec4<f32> = u_xlat7;
  let x_3023 : vec4<f32> = u_xlat7;
  u_xlat4.x = dot(vec3<f32>(x_3021.x, x_3021.y, x_3021.z), vec3<f32>(x_3023.x, x_3023.y, x_3023.z));
  let x_3028 : f32 = u_xlat4.x;
  let x_3030 : f32 = x_131.x_MainLightShadowParams.z;
  let x_3033 : f32 = x_131.x_MainLightShadowParams.w;
  u_xlat82 = ((x_3028 * x_3030) + x_3033);
  let x_3035 : f32 = u_xlat82;
  u_xlat82 = clamp(x_3035, 0.0f, 1.0f);
  let x_3037 : f32 = u_xlat78;
  u_xlat83 = (-(x_3037) + 1.0f);
  let x_3040 : f32 = u_xlat82;
  let x_3041 : f32 = u_xlat83;
  let x_3043 : f32 = u_xlat78;
  u_xlat78 = ((x_3040 * x_3041) + x_3043);
  let x_3052 : f32 = x_3050.x_MainLightCookieTextureFormat;
  u_xlatb82 = !((x_3052 == -1.0f));
  let x_3054 : bool = u_xlatb82;
  if (x_3054) {
    let x_3057 : vec3<f32> = vs_INTERP8;
    let x_3060 : vec4<f32> = x_3050.x_MainLightWorldToLight[1i];
    let x_3062 : vec2<f32> = (vec2<f32>(x_3057.y, x_3057.y) * vec2<f32>(x_3060.x, x_3060.y));
    let x_3063 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3062.x, x_3062.y, x_3063.z, x_3063.w);
    let x_3066 : vec4<f32> = x_3050.x_MainLightWorldToLight[0i];
    let x_3068 : vec3<f32> = vs_INTERP8;
    let x_3071 : vec4<f32> = u_xlat7;
    let x_3073 : vec2<f32> = ((vec2<f32>(x_3066.x, x_3066.y) * vec2<f32>(x_3068.x, x_3068.x)) + vec2<f32>(x_3071.x, x_3071.y));
    let x_3074 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3073.x, x_3073.y, x_3074.z, x_3074.w);
    let x_3077 : vec4<f32> = x_3050.x_MainLightWorldToLight[2i];
    let x_3079 : vec3<f32> = vs_INTERP8;
    let x_3082 : vec4<f32> = u_xlat7;
    let x_3084 : vec2<f32> = ((vec2<f32>(x_3077.x, x_3077.y) * vec2<f32>(x_3079.z, x_3079.z)) + vec2<f32>(x_3082.x, x_3082.y));
    let x_3085 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3084.x, x_3084.y, x_3085.z, x_3085.w);
    let x_3087 : vec4<f32> = u_xlat7;
    let x_3090 : vec4<f32> = x_3050.x_MainLightWorldToLight[3i];
    let x_3092 : vec2<f32> = (vec2<f32>(x_3087.x, x_3087.y) + vec2<f32>(x_3090.x, x_3090.y));
    let x_3093 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3092.x, x_3092.y, x_3093.z, x_3093.w);
    let x_3095 : vec4<f32> = u_xlat7;
    let x_3098 : vec2<f32> = ((vec2<f32>(x_3095.x, x_3095.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_3099 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3098.x, x_3098.y, x_3099.z, x_3099.w);
    let x_3106 : vec4<f32> = u_xlat7;
    let x_3109 : f32 = x_53.x_GlobalMipBias.x;
    let x_3110 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_3106.x, x_3106.y), x_3109);
    u_xlat7 = x_3110;
    let x_3115 : f32 = x_3050.x_MainLightCookieTextureFormat;
    let x_3117 : f32 = x_3050.x_MainLightCookieTextureFormat;
    let x_3119 : f32 = x_3050.x_MainLightCookieTextureFormat;
    let x_3121 : f32 = x_3050.x_MainLightCookieTextureFormat;
    let x_3122 : vec4<f32> = vec4<f32>(x_3115, x_3117, x_3119, x_3121);
    let x_3129 : vec4<bool> = (vec4<f32>(x_3122.x, x_3122.y, x_3122.z, x_3122.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_3129.x, x_3129.y);
    let x_3132 : bool = u_xlatb8.y;
    if (x_3132) {
      let x_3137 : f32 = u_xlat7.w;
      x_3133 = x_3137;
    } else {
      let x_3140 : f32 = u_xlat7.x;
      x_3133 = x_3140;
    }
    let x_3141 : f32 = x_3133;
    u_xlat82 = x_3141;
    let x_3143 : bool = u_xlatb8.x;
    if (x_3143) {
      let x_3147 : vec4<f32> = u_xlat7;
      x_3144 = vec3<f32>(x_3147.x, x_3147.y, x_3147.z);
    } else {
      let x_3150 : f32 = u_xlat82;
      x_3144 = vec3<f32>(x_3150, x_3150, x_3150);
    }
    let x_3152 : vec3<f32> = x_3144;
    let x_3153 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3152.x, x_3152.y, x_3152.z, x_3153.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_3159 : vec4<f32> = u_xlat7;
  let x_3162 : vec4<f32> = x_53.x_MainLightColor;
  let x_3164 : vec3<f32> = (vec3<f32>(x_3159.x, x_3159.y, x_3159.z) * vec3<f32>(x_3162.x, x_3162.y, x_3162.z));
  let x_3165 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3164.x, x_3164.y, x_3164.z, x_3165.w);
  let x_3167 : vec4<f32> = u_xlat6;
  let x_3170 : vec4<f32> = u_xlat5;
  u_xlat82 = dot(-(vec3<f32>(x_3167.x, x_3167.y, x_3167.z)), vec3<f32>(x_3170.x, x_3170.y, x_3170.z));
  let x_3173 : f32 = u_xlat82;
  let x_3174 : f32 = u_xlat82;
  u_xlat82 = (x_3173 + x_3174);
  let x_3176 : vec4<f32> = u_xlat5;
  let x_3178 : f32 = u_xlat82;
  let x_3182 : vec4<f32> = u_xlat6;
  let x_3185 : vec3<f32> = ((vec3<f32>(x_3176.x, x_3176.y, x_3176.z) * -(vec3<f32>(x_3178, x_3178, x_3178))) + -(vec3<f32>(x_3182.x, x_3182.y, x_3182.z)));
  let x_3186 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3185.x, x_3185.y, x_3185.z, x_3186.w);
  let x_3188 : vec4<f32> = u_xlat5;
  let x_3190 : vec4<f32> = u_xlat6;
  u_xlat82 = dot(vec3<f32>(x_3188.x, x_3188.y, x_3188.z), vec3<f32>(x_3190.x, x_3190.y, x_3190.z));
  let x_3193 : f32 = u_xlat82;
  u_xlat82 = clamp(x_3193, 0.0f, 1.0f);
  let x_3195 : f32 = u_xlat82;
  u_xlat82 = (-(x_3195) + 1.0f);
  let x_3198 : f32 = u_xlat82;
  let x_3199 : f32 = u_xlat82;
  u_xlat82 = (x_3198 * x_3199);
  let x_3201 : f32 = u_xlat82;
  let x_3202 : f32 = u_xlat82;
  u_xlat82 = (x_3201 * x_3202);
  let x_3205 : f32 = u_xlat27.x;
  u_xlat83 = ((-(x_3205) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3212 : f32 = u_xlat27.x;
  let x_3213 : f32 = u_xlat83;
  u_xlat27.x = (x_3212 * x_3213);
  let x_3217 : f32 = u_xlat27.x;
  u_xlat27.x = (x_3217 * 6.0f);
  let x_3229 : vec4<f32> = u_xlat8;
  let x_3232 : f32 = u_xlat27.x;
  let x_3233 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_3229.x, x_3229.y, x_3229.z), x_3232);
  u_xlat8 = x_3233;
  let x_3235 : f32 = u_xlat8.w;
  u_xlat27.x = (x_3235 + -1.0f);
  let x_3239 : f32 = x_1585.unity_SpecCube0_HDR.w;
  let x_3241 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_3239 * x_3241) + 1.0f);
  let x_3246 : f32 = u_xlat27.x;
  u_xlat27.x = max(x_3246, 0.0f);
  let x_3250 : f32 = u_xlat27.x;
  u_xlat27.x = log2(x_3250);
  let x_3254 : f32 = u_xlat27.x;
  let x_3256 : f32 = x_1585.unity_SpecCube0_HDR.y;
  u_xlat27.x = (x_3254 * x_3256);
  let x_3260 : f32 = u_xlat27.x;
  u_xlat27.x = exp2(x_3260);
  let x_3264 : f32 = u_xlat27.x;
  let x_3266 : f32 = x_1585.unity_SpecCube0_HDR.x;
  u_xlat27.x = (x_3264 * x_3266);
  let x_3269 : vec4<f32> = u_xlat8;
  let x_3271 : vec3<f32> = u_xlat27;
  let x_3273 : vec3<f32> = (vec3<f32>(x_3269.x, x_3269.y, x_3269.z) * vec3<f32>(x_3271.x, x_3271.x, x_3271.x));
  let x_3274 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3273.x, x_3273.y, x_3273.z, x_3274.w);
  let x_3276 : f32 = u_xlat79;
  let x_3278 : f32 = u_xlat79;
  let x_3282 : vec2<f32> = ((vec2<f32>(x_3276, x_3276) * vec2<f32>(x_3278, x_3278)) + vec2<f32>(-1.0f, 1.0f));
  let x_3283 : vec3<f32> = u_xlat27;
  u_xlat27 = vec3<f32>(x_3282.x, x_3283.y, x_3282.y);
  let x_3286 : f32 = u_xlat27.z;
  u_xlat79 = (1.0f / x_3286);
  let x_3289 : f32 = u_xlat3.x;
  u_xlat3.x = (x_3289 + -0.03999999910593032837f);
  let x_3293 : f32 = u_xlat82;
  let x_3295 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_3293 * x_3295) + 0.03999999910593032837f);
  let x_3300 : f32 = u_xlat79;
  let x_3302 : f32 = u_xlat3.x;
  u_xlat79 = (x_3300 * x_3302);
  let x_3304 : f32 = u_xlat79;
  let x_3306 : vec4<f32> = u_xlat8;
  let x_3308 : vec3<f32> = (vec3<f32>(x_3304, x_3304, x_3304) * vec3<f32>(x_3306.x, x_3306.y, x_3306.z));
  let x_3309 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3308.x, x_3308.y, x_3308.z, x_3309.w);
  let x_3311 : vec3<f32> = u_xlat29;
  let x_3312 : vec3<f32> = u_xlat2;
  let x_3314 : vec4<f32> = u_xlat8;
  let x_3316 : vec3<f32> = ((x_3311 * x_3312) + vec3<f32>(x_3314.x, x_3314.y, x_3314.z));
  let x_3317 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_3316.x, x_3316.y, x_3316.z, x_3317.w);
  let x_3319 : f32 = u_xlat78;
  let x_3321 : f32 = x_1585.unity_LightData.z;
  u_xlat78 = (x_3319 * x_3321);
  let x_3323 : vec4<f32> = u_xlat5;
  let x_3326 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat79 = dot(vec3<f32>(x_3323.x, x_3323.y, x_3323.z), vec3<f32>(x_3326.x, x_3326.y, x_3326.z));
  let x_3329 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3329, 0.0f, 1.0f);
  let x_3331 : f32 = u_xlat78;
  let x_3332 : f32 = u_xlat79;
  u_xlat78 = (x_3331 * x_3332);
  let x_3334 : f32 = u_xlat78;
  let x_3336 : vec4<f32> = u_xlat7;
  let x_3338 : vec3<f32> = (vec3<f32>(x_3334, x_3334, x_3334) * vec3<f32>(x_3336.x, x_3336.y, x_3336.z));
  let x_3339 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3338.x, x_3338.y, x_3338.z, x_3339.w);
  let x_3341 : vec4<f32> = u_xlat6;
  let x_3344 : vec4<f32> = x_53.x_MainLightPosition;
  let x_3346 : vec3<f32> = (vec3<f32>(x_3341.x, x_3341.y, x_3341.z) + vec3<f32>(x_3344.x, x_3344.y, x_3344.z));
  let x_3347 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3346.x, x_3346.y, x_3346.z, x_3347.w);
  let x_3349 : vec4<f32> = u_xlat8;
  let x_3351 : vec4<f32> = u_xlat8;
  u_xlat78 = dot(vec3<f32>(x_3349.x, x_3349.y, x_3349.z), vec3<f32>(x_3351.x, x_3351.y, x_3351.z));
  let x_3354 : f32 = u_xlat78;
  u_xlat78 = max(x_3354, 1.17549435e-38f);
  let x_3357 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_3357);
  let x_3359 : f32 = u_xlat78;
  let x_3361 : vec4<f32> = u_xlat8;
  let x_3363 : vec3<f32> = (vec3<f32>(x_3359, x_3359, x_3359) * vec3<f32>(x_3361.x, x_3361.y, x_3361.z));
  let x_3364 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3363.x, x_3363.y, x_3363.z, x_3364.w);
  let x_3366 : vec4<f32> = u_xlat5;
  let x_3368 : vec4<f32> = u_xlat8;
  u_xlat78 = dot(vec3<f32>(x_3366.x, x_3366.y, x_3366.z), vec3<f32>(x_3368.x, x_3368.y, x_3368.z));
  let x_3371 : f32 = u_xlat78;
  u_xlat78 = clamp(x_3371, 0.0f, 1.0f);
  let x_3374 : vec4<f32> = x_53.x_MainLightPosition;
  let x_3376 : vec4<f32> = u_xlat8;
  u_xlat79 = dot(vec3<f32>(x_3374.x, x_3374.y, x_3374.z), vec3<f32>(x_3376.x, x_3376.y, x_3376.z));
  let x_3379 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3379, 0.0f, 1.0f);
  let x_3381 : f32 = u_xlat78;
  let x_3382 : f32 = u_xlat78;
  u_xlat78 = (x_3381 * x_3382);
  let x_3384 : f32 = u_xlat78;
  let x_3386 : f32 = u_xlat27.x;
  u_xlat78 = ((x_3384 * x_3386) + 1.00001001358032226562f);
  let x_3390 : f32 = u_xlat79;
  let x_3391 : f32 = u_xlat79;
  u_xlat79 = (x_3390 * x_3391);
  let x_3393 : f32 = u_xlat78;
  let x_3394 : f32 = u_xlat78;
  u_xlat78 = (x_3393 * x_3394);
  let x_3396 : f32 = u_xlat79;
  u_xlat79 = max(x_3396, 0.10000000149011611938f);
  let x_3399 : f32 = u_xlat78;
  let x_3400 : f32 = u_xlat79;
  u_xlat78 = (x_3399 * x_3400);
  let x_3403 : f32 = u_xlat30.x;
  let x_3404 : f32 = u_xlat78;
  u_xlat78 = (x_3403 * x_3404);
  let x_3406 : f32 = u_xlat80;
  let x_3407 : f32 = u_xlat78;
  u_xlat78 = (x_3406 / x_3407);
  let x_3409 : f32 = u_xlat78;
  let x_3413 : vec3<f32> = u_xlat2;
  let x_3414 : vec3<f32> = ((vec3<f32>(x_3409, x_3409, x_3409) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3413);
  let x_3415 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3414.x, x_3414.y, x_3414.z, x_3415.w);
  let x_3417 : vec4<f32> = u_xlat7;
  let x_3419 : vec4<f32> = u_xlat8;
  let x_3421 : vec3<f32> = (vec3<f32>(x_3417.x, x_3417.y, x_3417.z) * vec3<f32>(x_3419.x, x_3419.y, x_3419.z));
  let x_3422 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3421.x, x_3421.y, x_3421.z, x_3422.w);
  let x_3426 : f32 = x_53.x_AdditionalLightsCount.x;
  let x_3428 : f32 = x_1585.unity_LightData.y;
  u_xlat78 = min(x_3426, x_3428);
  let x_3432 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_3432));
  let x_3436 : f32 = u_xlat4.x;
  let x_3439 : f32 = x_131.x_AdditionalShadowFadeParams.x;
  let x_3442 : f32 = x_131.x_AdditionalShadowFadeParams.y;
  u_xlat79 = ((x_3436 * x_3439) + x_3442);
  let x_3444 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3444, 0.0f, 1.0f);
  let x_3447 : f32 = x_3050.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3449 : f32 = x_3050.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3451 : f32 = x_3050.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3453 : f32 = x_3050.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3454 : vec4<f32> = vec4<f32>(x_3447, x_3449, x_3451, x_3453);
  let x_3461 : vec4<bool> = (vec4<f32>(x_3454.x, x_3454.y, x_3454.z, x_3454.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_3462 : vec2<bool> = vec2<bool>(x_3461.x, x_3461.w);
  let x_3463 : vec4<bool> = u_xlatb4;
  u_xlatb4 = vec4<bool>(x_3462.x, x_3463.y, x_3463.z, x_3462.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3475 : u32 = u_xlatu_loop_1;
    let x_3476 : u32 = u_xlatu78;
    if ((x_3475 < x_3476)) {
    } else {
      break;
    }
    let x_3479 : u32 = u_xlatu_loop_1;
    u_xlatu83 = (x_3479 >> 2u);
    let x_3483 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_3483 & 3u));
    let x_3486 : u32 = u_xlatu83;
    let x_3489 : vec4<f32> = x_1585.unity_LightIndices[bitcast<i32>(x_3486)];
    let x_3499 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3504 : vec4<u32> = indexable[x_3499];
    u_xlat83 = dot(x_3489, bitcast<vec4<f32>>(x_3504));
    let x_3508 : f32 = u_xlat83;
    u_xlati83 = i32(x_3508);
    let x_3510 : vec3<f32> = vs_INTERP8;
    let x_3521 : i32 = u_xlati83;
    let x_3523 : vec4<f32> = x_3520.x_AdditionalLightsPosition[x_3521];
    let x_3526 : i32 = u_xlati83;
    let x_3528 : vec4<f32> = x_3520.x_AdditionalLightsPosition[x_3526];
    let x_3530 : vec3<f32> = ((-(x_3510) * vec3<f32>(x_3523.w, x_3523.w, x_3523.w)) + vec3<f32>(x_3528.x, x_3528.y, x_3528.z));
    let x_3531 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3530.x, x_3530.y, x_3530.z, x_3531.w);
    let x_3533 : vec4<f32> = u_xlat9;
    let x_3535 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_3533.x, x_3533.y, x_3533.z), vec3<f32>(x_3535.x, x_3535.y, x_3535.z));
    let x_3538 : f32 = u_xlat84;
    u_xlat84 = max(x_3538, 0.00006103515625f);
    let x_3542 : f32 = u_xlat84;
    u_xlat85 = inverseSqrt(x_3542);
    let x_3544 : f32 = u_xlat85;
    let x_3546 : vec4<f32> = u_xlat9;
    let x_3548 : vec3<f32> = (vec3<f32>(x_3544, x_3544, x_3544) * vec3<f32>(x_3546.x, x_3546.y, x_3546.z));
    let x_3549 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3548.x, x_3548.y, x_3548.z, x_3549.w);
    let x_3552 : f32 = u_xlat84;
    u_xlat86 = (1.0f / x_3552);
    let x_3554 : f32 = u_xlat84;
    let x_3555 : i32 = u_xlati83;
    let x_3557 : f32 = x_3520.x_AdditionalLightsAttenuation[x_3555].x;
    u_xlat84 = (x_3554 * x_3557);
    let x_3559 : f32 = u_xlat84;
    let x_3561 : f32 = u_xlat84;
    u_xlat84 = ((-(x_3559) * x_3561) + 1.0f);
    let x_3564 : f32 = u_xlat84;
    u_xlat84 = max(x_3564, 0.0f);
    let x_3566 : f32 = u_xlat84;
    let x_3567 : f32 = u_xlat84;
    u_xlat84 = (x_3566 * x_3567);
    let x_3569 : f32 = u_xlat84;
    let x_3570 : f32 = u_xlat86;
    u_xlat84 = (x_3569 * x_3570);
    let x_3572 : i32 = u_xlati83;
    let x_3574 : vec4<f32> = x_3520.x_AdditionalLightsSpotDir[x_3572];
    let x_3576 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_3574.x, x_3574.y, x_3574.z), vec3<f32>(x_3576.x, x_3576.y, x_3576.z));
    let x_3579 : f32 = u_xlat86;
    let x_3580 : i32 = u_xlati83;
    let x_3582 : f32 = x_3520.x_AdditionalLightsAttenuation[x_3580].z;
    let x_3584 : i32 = u_xlati83;
    let x_3586 : f32 = x_3520.x_AdditionalLightsAttenuation[x_3584].w;
    u_xlat86 = ((x_3579 * x_3582) + x_3586);
    let x_3588 : f32 = u_xlat86;
    u_xlat86 = clamp(x_3588, 0.0f, 1.0f);
    let x_3590 : f32 = u_xlat86;
    let x_3591 : f32 = u_xlat86;
    u_xlat86 = (x_3590 * x_3591);
    let x_3593 : f32 = u_xlat84;
    let x_3594 : f32 = u_xlat86;
    u_xlat84 = (x_3593 * x_3594);
    let x_3598 : i32 = u_xlati83;
    let x_3600 : f32 = x_131.x_AdditionalShadowParams[x_3598].w;
    u_xlati86 = i32(x_3600);
    let x_3603 : i32 = u_xlati86;
    u_xlatb87 = (x_3603 >= 0i);
    let x_3605 : bool = u_xlatb87;
    if (x_3605) {
      let x_3609 : i32 = u_xlati83;
      let x_3611 : f32 = x_131.x_AdditionalShadowParams[x_3609].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3611, x_3611, x_3611, x_3611))));
      let x_3615 : bool = u_xlatb87;
      if (x_3615) {
        let x_3619 : vec4<f32> = u_xlat10;
        let x_3622 : vec4<f32> = u_xlat10;
        let x_3625 : vec4<bool> = (abs(vec4<f32>(x_3619.z, x_3619.z, x_3619.y, x_3619.z)) >= abs(vec4<f32>(x_3622.x, x_3622.y, x_3622.x, x_3622.x)));
        let x_3626 : vec3<bool> = vec3<bool>(x_3625.x, x_3625.y, x_3625.z);
        let x_3627 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3626.x, x_3626.y, x_3626.z, x_3627.w);
        let x_3630 : bool = u_xlatb11.y;
        let x_3632 : bool = u_xlatb11.x;
        u_xlatb87 = (x_3630 & x_3632);
        let x_3634 : vec4<f32> = u_xlat10;
        let x_3637 : vec4<bool> = (-(vec4<f32>(x_3634.z, x_3634.y, x_3634.z, x_3634.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3638 : vec3<bool> = vec3<bool>(x_3637.x, x_3637.y, x_3637.w);
        let x_3639 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3638.x, x_3638.y, x_3639.z, x_3638.z);
        let x_3642 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3642);
        let x_3647 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3647);
        let x_3653 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_3653);
        let x_3656 : bool = u_xlatb11.z;
        if (x_3656) {
          let x_3661 : f32 = u_xlat11.y;
          x_3657 = x_3661;
        } else {
          let x_3663 : f32 = u_xlat88;
          x_3657 = x_3663;
        }
        let x_3664 : f32 = x_3657;
        u_xlat88 = x_3664;
        let x_3666 : bool = u_xlatb87;
        if (x_3666) {
          let x_3671 : f32 = u_xlat11.x;
          x_3667 = x_3671;
        } else {
          let x_3673 : f32 = u_xlat88;
          x_3667 = x_3673;
        }
        let x_3674 : f32 = x_3667;
        u_xlat87 = x_3674;
        let x_3675 : i32 = u_xlati83;
        let x_3677 : f32 = x_131.x_AdditionalShadowParams[x_3675].w;
        u_xlat88 = trunc(x_3677);
        let x_3679 : f32 = u_xlat87;
        let x_3680 : f32 = u_xlat88;
        u_xlat87 = (x_3679 + x_3680);
        let x_3682 : f32 = u_xlat87;
        u_xlati86 = i32(x_3682);
      }
      let x_3684 : i32 = u_xlati86;
      u_xlati86 = (x_3684 << bitcast<u32>(2i));
      let x_3686 : vec3<f32> = vs_INTERP8;
      let x_3689 : i32 = u_xlati86;
      let x_3692 : i32 = u_xlati86;
      let x_3696 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_3689 + 1i) / 4i)][((x_3692 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3686.y, x_3686.y, x_3686.y, x_3686.y) * x_3696);
      let x_3698 : i32 = u_xlati86;
      let x_3700 : i32 = u_xlati86;
      let x_3703 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[(x_3698 / 4i)][(x_3700 % 4i)];
      let x_3704 : vec3<f32> = vs_INTERP8;
      let x_3707 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3703 * vec4<f32>(x_3704.x, x_3704.x, x_3704.x, x_3704.x)) + x_3707);
      let x_3709 : i32 = u_xlati86;
      let x_3712 : i32 = u_xlati86;
      let x_3716 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_3709 + 2i) / 4i)][((x_3712 + 2i) % 4i)];
      let x_3717 : vec3<f32> = vs_INTERP8;
      let x_3720 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3716 * vec4<f32>(x_3717.z, x_3717.z, x_3717.z, x_3717.z)) + x_3720);
      let x_3722 : vec4<f32> = u_xlat11;
      let x_3723 : i32 = u_xlati86;
      let x_3726 : i32 = u_xlati86;
      let x_3730 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_3723 + 3i) / 4i)][((x_3726 + 3i) % 4i)];
      u_xlat11 = (x_3722 + x_3730);
      let x_3732 : vec4<f32> = u_xlat11;
      let x_3734 : vec4<f32> = u_xlat11;
      let x_3736 : vec3<f32> = (vec3<f32>(x_3732.x, x_3732.y, x_3732.z) / vec3<f32>(x_3734.w, x_3734.w, x_3734.w));
      let x_3737 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3736.x, x_3736.y, x_3736.z, x_3737.w);
      let x_3740 : i32 = u_xlati83;
      let x_3742 : f32 = x_131.x_AdditionalShadowParams[x_3740].y;
      u_xlatb86 = (0.0f < x_3742);
      let x_3744 : bool = u_xlatb86;
      if (x_3744) {
        let x_3747 : i32 = u_xlati83;
        let x_3749 : f32 = x_131.x_AdditionalShadowParams[x_3747].y;
        u_xlatb86 = (1.0f == x_3749);
        let x_3751 : bool = u_xlatb86;
        if (x_3751) {
          let x_3754 : vec4<f32> = u_xlat11;
          let x_3758 : vec4<f32> = x_131.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3754.x, x_3754.y, x_3754.x, x_3754.y) + x_3758);
          let x_3761 : vec4<f32> = u_xlat12;
          let x_3762 : vec2<f32> = vec2<f32>(x_3761.x, x_3761.y);
          let x_3764 : f32 = u_xlat11.z;
          txVec60 = vec3<f32>(x_3762.x, x_3762.y, x_3764);
          let x_3772 : vec3<f32> = txVec60;
          let x_3774 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3772.xy, x_3772.z);
          u_xlat13.x = x_3774;
          let x_3777 : vec4<f32> = u_xlat12;
          let x_3778 : vec2<f32> = vec2<f32>(x_3777.z, x_3777.w);
          let x_3780 : f32 = u_xlat11.z;
          txVec61 = vec3<f32>(x_3778.x, x_3778.y, x_3780);
          let x_3787 : vec3<f32> = txVec61;
          let x_3789 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3787.xy, x_3787.z);
          u_xlat13.y = x_3789;
          let x_3791 : vec4<f32> = u_xlat11;
          let x_3795 : vec4<f32> = x_131.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3791.x, x_3791.y, x_3791.x, x_3791.y) + x_3795);
          let x_3798 : vec4<f32> = u_xlat12;
          let x_3799 : vec2<f32> = vec2<f32>(x_3798.x, x_3798.y);
          let x_3801 : f32 = u_xlat11.z;
          txVec62 = vec3<f32>(x_3799.x, x_3799.y, x_3801);
          let x_3808 : vec3<f32> = txVec62;
          let x_3810 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3808.xy, x_3808.z);
          u_xlat13.z = x_3810;
          let x_3813 : vec4<f32> = u_xlat12;
          let x_3814 : vec2<f32> = vec2<f32>(x_3813.z, x_3813.w);
          let x_3816 : f32 = u_xlat11.z;
          txVec63 = vec3<f32>(x_3814.x, x_3814.y, x_3816);
          let x_3823 : vec3<f32> = txVec63;
          let x_3825 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3823.xy, x_3823.z);
          u_xlat13.w = x_3825;
          let x_3827 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_3827, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3830 : i32 = u_xlati83;
          let x_3832 : f32 = x_131.x_AdditionalShadowParams[x_3830].y;
          u_xlatb87 = (2.0f == x_3832);
          let x_3834 : bool = u_xlatb87;
          if (x_3834) {
            let x_3837 : vec4<f32> = u_xlat11;
            let x_3841 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3844 : vec2<f32> = ((vec2<f32>(x_3837.x, x_3837.y) * vec2<f32>(x_3841.z, x_3841.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3845 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3844.x, x_3844.y, x_3845.z, x_3845.w);
            let x_3847 : vec4<f32> = u_xlat12;
            let x_3849 : vec2<f32> = floor(vec2<f32>(x_3847.x, x_3847.y));
            let x_3850 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3849.x, x_3849.y, x_3850.z, x_3850.w);
            let x_3853 : vec4<f32> = u_xlat11;
            let x_3856 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3859 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3853.x, x_3853.y) * vec2<f32>(x_3856.z, x_3856.w)) + -(vec2<f32>(x_3859.x, x_3859.y)));
            let x_3863 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3863.x, x_3863.x, x_3863.y, x_3863.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3866 : vec4<f32> = u_xlat13;
            let x_3868 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3866.x, x_3866.x, x_3866.z, x_3866.z) * vec4<f32>(x_3868.x, x_3868.x, x_3868.z, x_3868.z));
            let x_3871 : vec4<f32> = u_xlat14;
            let x_3873 : vec2<f32> = (vec2<f32>(x_3871.y, x_3871.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3874 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3873.x, x_3874.y, x_3873.y, x_3874.w);
            let x_3876 : vec4<f32> = u_xlat14;
            let x_3879 : vec2<f32> = u_xlat64;
            let x_3881 : vec2<f32> = ((vec2<f32>(x_3876.x, x_3876.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3879));
            let x_3882 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3881.x, x_3881.y, x_3882.z, x_3882.w);
            let x_3885 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3885) + vec2<f32>(1.0f, 1.0f));
            let x_3888 : vec2<f32> = u_xlat64;
            let x_3889 : vec2<f32> = min(x_3888, vec2<f32>(0.0f, 0.0f));
            let x_3890 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3889.x, x_3889.y, x_3890.z, x_3890.w);
            let x_3892 : vec4<f32> = u_xlat15;
            let x_3895 : vec4<f32> = u_xlat15;
            let x_3898 : vec2<f32> = u_xlat66;
            let x_3899 : vec2<f32> = ((-(vec2<f32>(x_3892.x, x_3892.y)) * vec2<f32>(x_3895.x, x_3895.y)) + x_3898);
            let x_3900 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3899.x, x_3899.y, x_3900.z, x_3900.w);
            let x_3902 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3902, vec2<f32>(0.0f, 0.0f));
            let x_3904 : vec2<f32> = u_xlat64;
            let x_3906 : vec2<f32> = u_xlat64;
            let x_3908 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3904) * x_3906) + vec2<f32>(x_3908.y, x_3908.w));
            let x_3911 : vec4<f32> = u_xlat15;
            let x_3913 : vec2<f32> = (vec2<f32>(x_3911.x, x_3911.y) + vec2<f32>(1.0f, 1.0f));
            let x_3914 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3913.x, x_3913.y, x_3914.z, x_3914.w);
            let x_3916 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3916 + vec2<f32>(1.0f, 1.0f));
            let x_3918 : vec4<f32> = u_xlat14;
            let x_3920 : vec2<f32> = (vec2<f32>(x_3918.x, x_3918.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3921 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3920.x, x_3920.y, x_3921.z, x_3921.w);
            let x_3923 : vec2<f32> = u_xlat66;
            let x_3924 : vec2<f32> = (x_3923 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3925 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3924.x, x_3924.y, x_3925.z, x_3925.w);
            let x_3927 : vec4<f32> = u_xlat15;
            let x_3929 : vec2<f32> = (vec2<f32>(x_3927.x, x_3927.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3930 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3929.x, x_3929.y, x_3930.z, x_3930.w);
            let x_3932 : vec2<f32> = u_xlat64;
            let x_3933 : vec2<f32> = (x_3932 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3934 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3933.x, x_3933.y, x_3934.z, x_3934.w);
            let x_3936 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3936.y, x_3936.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3940 : f32 = u_xlat15.x;
            u_xlat16.z = x_3940;
            let x_3943 : f32 = u_xlat64.x;
            u_xlat16.w = x_3943;
            let x_3946 : f32 = u_xlat17.x;
            u_xlat14.z = x_3946;
            let x_3949 : f32 = u_xlat13.x;
            u_xlat14.w = x_3949;
            let x_3951 : vec4<f32> = u_xlat14;
            let x_3953 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3951.z, x_3951.w, x_3951.x, x_3951.z) + vec4<f32>(x_3953.z, x_3953.w, x_3953.x, x_3953.z));
            let x_3957 : f32 = u_xlat16.y;
            u_xlat15.z = x_3957;
            let x_3960 : f32 = u_xlat64.y;
            u_xlat15.w = x_3960;
            let x_3963 : f32 = u_xlat14.y;
            u_xlat17.z = x_3963;
            let x_3966 : f32 = u_xlat13.z;
            u_xlat17.w = x_3966;
            let x_3968 : vec4<f32> = u_xlat15;
            let x_3970 : vec4<f32> = u_xlat17;
            let x_3972 : vec3<f32> = (vec3<f32>(x_3968.z, x_3968.y, x_3968.w) + vec3<f32>(x_3970.z, x_3970.y, x_3970.w));
            let x_3973 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3972.x, x_3972.y, x_3972.z, x_3973.w);
            let x_3975 : vec4<f32> = u_xlat14;
            let x_3977 : vec4<f32> = u_xlat18;
            let x_3979 : vec3<f32> = (vec3<f32>(x_3975.x, x_3975.z, x_3975.w) / vec3<f32>(x_3977.z, x_3977.w, x_3977.y));
            let x_3980 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3979.x, x_3979.y, x_3979.z, x_3980.w);
            let x_3982 : vec4<f32> = u_xlat14;
            let x_3984 : vec3<f32> = (vec3<f32>(x_3982.x, x_3982.y, x_3982.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3985 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3984.x, x_3984.y, x_3984.z, x_3985.w);
            let x_3987 : vec4<f32> = u_xlat17;
            let x_3989 : vec4<f32> = u_xlat13;
            let x_3991 : vec3<f32> = (vec3<f32>(x_3987.z, x_3987.y, x_3987.w) / vec3<f32>(x_3989.x, x_3989.y, x_3989.z));
            let x_3992 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3991.x, x_3991.y, x_3991.z, x_3992.w);
            let x_3994 : vec4<f32> = u_xlat15;
            let x_3996 : vec3<f32> = (vec3<f32>(x_3994.x, x_3994.y, x_3994.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3997 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3996.x, x_3996.y, x_3996.z, x_3997.w);
            let x_3999 : vec4<f32> = u_xlat14;
            let x_4002 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4004 : vec3<f32> = (vec3<f32>(x_3999.y, x_3999.x, x_3999.z) * vec3<f32>(x_4002.x, x_4002.x, x_4002.x));
            let x_4005 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4004.x, x_4004.y, x_4004.z, x_4005.w);
            let x_4007 : vec4<f32> = u_xlat15;
            let x_4010 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4012 : vec3<f32> = (vec3<f32>(x_4007.x, x_4007.y, x_4007.z) * vec3<f32>(x_4010.y, x_4010.y, x_4010.y));
            let x_4013 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4012.x, x_4012.y, x_4012.z, x_4013.w);
            let x_4016 : f32 = u_xlat15.x;
            u_xlat14.w = x_4016;
            let x_4018 : vec4<f32> = u_xlat12;
            let x_4021 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4024 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4018.x, x_4018.y, x_4018.x, x_4018.y) * vec4<f32>(x_4021.x, x_4021.y, x_4021.x, x_4021.y)) + vec4<f32>(x_4024.y, x_4024.w, x_4024.x, x_4024.w));
            let x_4027 : vec4<f32> = u_xlat12;
            let x_4030 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4033 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4027.x, x_4027.y) * vec2<f32>(x_4030.x, x_4030.y)) + vec2<f32>(x_4033.z, x_4033.w));
            let x_4037 : f32 = u_xlat14.y;
            u_xlat15.w = x_4037;
            let x_4039 : vec4<f32> = u_xlat15;
            let x_4040 : vec2<f32> = vec2<f32>(x_4039.y, x_4039.z);
            let x_4041 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4041.x, x_4040.x, x_4041.z, x_4040.y);
            let x_4043 : vec4<f32> = u_xlat12;
            let x_4046 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4049 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_4043.x, x_4043.y, x_4043.x, x_4043.y) * vec4<f32>(x_4046.x, x_4046.y, x_4046.x, x_4046.y)) + vec4<f32>(x_4049.x, x_4049.y, x_4049.z, x_4049.y));
            let x_4052 : vec4<f32> = u_xlat12;
            let x_4055 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4058 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4052.x, x_4052.y, x_4052.x, x_4052.y) * vec4<f32>(x_4055.x, x_4055.y, x_4055.x, x_4055.y)) + vec4<f32>(x_4058.w, x_4058.y, x_4058.w, x_4058.z));
            let x_4061 : vec4<f32> = u_xlat12;
            let x_4064 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4067 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4061.x, x_4061.y, x_4061.x, x_4061.y) * vec4<f32>(x_4064.x, x_4064.y, x_4064.x, x_4064.y)) + vec4<f32>(x_4067.x, x_4067.w, x_4067.z, x_4067.w));
            let x_4070 : vec4<f32> = u_xlat13;
            let x_4072 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_4070.x, x_4070.x, x_4070.x, x_4070.y) * vec4<f32>(x_4072.z, x_4072.w, x_4072.y, x_4072.z));
            let x_4075 : vec4<f32> = u_xlat13;
            let x_4077 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_4075.y, x_4075.y, x_4075.z, x_4075.z) * x_4077);
            let x_4080 : f32 = u_xlat13.z;
            let x_4082 : f32 = u_xlat18.y;
            u_xlat87 = (x_4080 * x_4082);
            let x_4085 : vec4<f32> = u_xlat16;
            let x_4086 : vec2<f32> = vec2<f32>(x_4085.x, x_4085.y);
            let x_4088 : f32 = u_xlat11.z;
            txVec64 = vec3<f32>(x_4086.x, x_4086.y, x_4088);
            let x_4095 : vec3<f32> = txVec64;
            let x_4097 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4095.xy, x_4095.z);
            u_xlat88 = x_4097;
            let x_4099 : vec4<f32> = u_xlat16;
            let x_4100 : vec2<f32> = vec2<f32>(x_4099.z, x_4099.w);
            let x_4102 : f32 = u_xlat11.z;
            txVec65 = vec3<f32>(x_4100.x, x_4100.y, x_4102);
            let x_4110 : vec3<f32> = txVec65;
            let x_4112 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4110.xy, x_4110.z);
            u_xlat89 = x_4112;
            let x_4113 : f32 = u_xlat89;
            let x_4115 : f32 = u_xlat19.y;
            u_xlat89 = (x_4113 * x_4115);
            let x_4118 : f32 = u_xlat19.x;
            let x_4119 : f32 = u_xlat88;
            let x_4121 : f32 = u_xlat89;
            u_xlat88 = ((x_4118 * x_4119) + x_4121);
            let x_4124 : vec2<f32> = u_xlat64;
            let x_4126 : f32 = u_xlat11.z;
            txVec66 = vec3<f32>(x_4124.x, x_4124.y, x_4126);
            let x_4133 : vec3<f32> = txVec66;
            let x_4135 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4133.xy, x_4133.z);
            u_xlat89 = x_4135;
            let x_4137 : f32 = u_xlat19.z;
            let x_4138 : f32 = u_xlat89;
            let x_4140 : f32 = u_xlat88;
            u_xlat88 = ((x_4137 * x_4138) + x_4140);
            let x_4143 : vec4<f32> = u_xlat15;
            let x_4144 : vec2<f32> = vec2<f32>(x_4143.x, x_4143.y);
            let x_4146 : f32 = u_xlat11.z;
            txVec67 = vec3<f32>(x_4144.x, x_4144.y, x_4146);
            let x_4153 : vec3<f32> = txVec67;
            let x_4155 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4153.xy, x_4153.z);
            u_xlat89 = x_4155;
            let x_4157 : f32 = u_xlat19.w;
            let x_4158 : f32 = u_xlat89;
            let x_4160 : f32 = u_xlat88;
            u_xlat88 = ((x_4157 * x_4158) + x_4160);
            let x_4163 : vec4<f32> = u_xlat17;
            let x_4164 : vec2<f32> = vec2<f32>(x_4163.x, x_4163.y);
            let x_4166 : f32 = u_xlat11.z;
            txVec68 = vec3<f32>(x_4164.x, x_4164.y, x_4166);
            let x_4173 : vec3<f32> = txVec68;
            let x_4175 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4173.xy, x_4173.z);
            u_xlat89 = x_4175;
            let x_4177 : f32 = u_xlat20.x;
            let x_4178 : f32 = u_xlat89;
            let x_4180 : f32 = u_xlat88;
            u_xlat88 = ((x_4177 * x_4178) + x_4180);
            let x_4183 : vec4<f32> = u_xlat17;
            let x_4184 : vec2<f32> = vec2<f32>(x_4183.z, x_4183.w);
            let x_4186 : f32 = u_xlat11.z;
            txVec69 = vec3<f32>(x_4184.x, x_4184.y, x_4186);
            let x_4193 : vec3<f32> = txVec69;
            let x_4195 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4193.xy, x_4193.z);
            u_xlat89 = x_4195;
            let x_4197 : f32 = u_xlat20.y;
            let x_4198 : f32 = u_xlat89;
            let x_4200 : f32 = u_xlat88;
            u_xlat88 = ((x_4197 * x_4198) + x_4200);
            let x_4203 : vec4<f32> = u_xlat15;
            let x_4204 : vec2<f32> = vec2<f32>(x_4203.z, x_4203.w);
            let x_4206 : f32 = u_xlat11.z;
            txVec70 = vec3<f32>(x_4204.x, x_4204.y, x_4206);
            let x_4213 : vec3<f32> = txVec70;
            let x_4215 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4213.xy, x_4213.z);
            u_xlat89 = x_4215;
            let x_4217 : f32 = u_xlat20.z;
            let x_4218 : f32 = u_xlat89;
            let x_4220 : f32 = u_xlat88;
            u_xlat88 = ((x_4217 * x_4218) + x_4220);
            let x_4223 : vec4<f32> = u_xlat14;
            let x_4224 : vec2<f32> = vec2<f32>(x_4223.x, x_4223.y);
            let x_4226 : f32 = u_xlat11.z;
            txVec71 = vec3<f32>(x_4224.x, x_4224.y, x_4226);
            let x_4233 : vec3<f32> = txVec71;
            let x_4235 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4233.xy, x_4233.z);
            u_xlat89 = x_4235;
            let x_4237 : f32 = u_xlat20.w;
            let x_4238 : f32 = u_xlat89;
            let x_4240 : f32 = u_xlat88;
            u_xlat88 = ((x_4237 * x_4238) + x_4240);
            let x_4243 : vec4<f32> = u_xlat14;
            let x_4244 : vec2<f32> = vec2<f32>(x_4243.z, x_4243.w);
            let x_4246 : f32 = u_xlat11.z;
            txVec72 = vec3<f32>(x_4244.x, x_4244.y, x_4246);
            let x_4253 : vec3<f32> = txVec72;
            let x_4255 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4253.xy, x_4253.z);
            u_xlat89 = x_4255;
            let x_4256 : f32 = u_xlat87;
            let x_4257 : f32 = u_xlat89;
            let x_4259 : f32 = u_xlat88;
            u_xlat86 = ((x_4256 * x_4257) + x_4259);
          } else {
            let x_4262 : vec4<f32> = u_xlat11;
            let x_4265 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4268 : vec2<f32> = ((vec2<f32>(x_4262.x, x_4262.y) * vec2<f32>(x_4265.z, x_4265.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4269 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4268.x, x_4268.y, x_4269.z, x_4269.w);
            let x_4271 : vec4<f32> = u_xlat12;
            let x_4273 : vec2<f32> = floor(vec2<f32>(x_4271.x, x_4271.y));
            let x_4274 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4273.x, x_4273.y, x_4274.z, x_4274.w);
            let x_4276 : vec4<f32> = u_xlat11;
            let x_4279 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4282 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4276.x, x_4276.y) * vec2<f32>(x_4279.z, x_4279.w)) + -(vec2<f32>(x_4282.x, x_4282.y)));
            let x_4286 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4286.x, x_4286.x, x_4286.y, x_4286.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4289 : vec4<f32> = u_xlat13;
            let x_4291 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4289.x, x_4289.x, x_4289.z, x_4289.z) * vec4<f32>(x_4291.x, x_4291.x, x_4291.z, x_4291.z));
            let x_4294 : vec4<f32> = u_xlat14;
            let x_4296 : vec2<f32> = (vec2<f32>(x_4294.y, x_4294.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4297 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4297.x, x_4296.x, x_4297.z, x_4296.y);
            let x_4299 : vec4<f32> = u_xlat14;
            let x_4302 : vec2<f32> = u_xlat64;
            let x_4304 : vec2<f32> = ((vec2<f32>(x_4299.x, x_4299.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4302));
            let x_4305 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4304.x, x_4305.y, x_4304.y, x_4305.w);
            let x_4307 : vec2<f32> = u_xlat64;
            let x_4309 : vec2<f32> = (-(x_4307) + vec2<f32>(1.0f, 1.0f));
            let x_4310 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4309.x, x_4309.y, x_4310.z, x_4310.w);
            let x_4312 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_4312, vec2<f32>(0.0f, 0.0f));
            let x_4314 : vec2<f32> = u_xlat66;
            let x_4316 : vec2<f32> = u_xlat66;
            let x_4318 : vec4<f32> = u_xlat14;
            let x_4320 : vec2<f32> = ((-(x_4314) * x_4316) + vec2<f32>(x_4318.x, x_4318.y));
            let x_4321 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4320.x, x_4320.y, x_4321.z, x_4321.w);
            let x_4323 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_4323, vec2<f32>(0.0f, 0.0f));
            let x_4326 : vec2<f32> = u_xlat66;
            let x_4328 : vec2<f32> = u_xlat66;
            let x_4330 : vec4<f32> = u_xlat13;
            let x_4332 : vec2<f32> = ((-(x_4326) * x_4328) + vec2<f32>(x_4330.y, x_4330.w));
            let x_4333 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_4332.x, x_4333.y, x_4332.y);
            let x_4335 : vec4<f32> = u_xlat14;
            let x_4337 : vec2<f32> = (vec2<f32>(x_4335.x, x_4335.y) + vec2<f32>(2.0f, 2.0f));
            let x_4338 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4337.x, x_4337.y, x_4338.z, x_4338.w);
            let x_4340 : vec3<f32> = u_xlat39;
            let x_4342 : vec2<f32> = (vec2<f32>(x_4340.x, x_4340.z) + vec2<f32>(2.0f, 2.0f));
            let x_4343 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4343.x, x_4342.x, x_4343.z, x_4342.y);
            let x_4346 : f32 = u_xlat13.y;
            u_xlat16.z = (x_4346 * 0.08163200318813323975f);
            let x_4349 : vec4<f32> = u_xlat13;
            let x_4351 : vec3<f32> = (vec3<f32>(x_4349.z, x_4349.x, x_4349.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4352 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4351.x, x_4351.y, x_4351.z, x_4352.w);
            let x_4354 : vec4<f32> = u_xlat14;
            let x_4356 : vec2<f32> = (vec2<f32>(x_4354.x, x_4354.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4357 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4356.x, x_4356.y, x_4357.z, x_4357.w);
            let x_4360 : f32 = u_xlat17.y;
            u_xlat16.x = x_4360;
            let x_4362 : vec2<f32> = u_xlat64;
            let x_4365 : vec2<f32> = ((vec2<f32>(x_4362.x, x_4362.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4366 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4366.x, x_4365.x, x_4366.z, x_4365.y);
            let x_4368 : vec2<f32> = u_xlat64;
            let x_4371 : vec2<f32> = ((vec2<f32>(x_4368.x, x_4368.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4372 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4371.x, x_4372.y, x_4371.y, x_4372.w);
            let x_4375 : f32 = u_xlat13.x;
            u_xlat14.y = x_4375;
            let x_4378 : f32 = u_xlat15.y;
            u_xlat14.w = x_4378;
            let x_4380 : vec4<f32> = u_xlat14;
            let x_4381 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4380 + x_4381);
            let x_4383 : vec2<f32> = u_xlat64;
            let x_4386 : vec2<f32> = ((vec2<f32>(x_4383.y, x_4383.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4387 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4387.x, x_4386.x, x_4387.z, x_4386.y);
            let x_4389 : vec2<f32> = u_xlat64;
            let x_4392 : vec2<f32> = ((vec2<f32>(x_4389.y, x_4389.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4393 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4392.x, x_4393.y, x_4392.y, x_4393.w);
            let x_4396 : f32 = u_xlat13.y;
            u_xlat15.y = x_4396;
            let x_4398 : vec4<f32> = u_xlat15;
            let x_4399 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4398 + x_4399);
            let x_4401 : vec4<f32> = u_xlat14;
            let x_4402 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_4401 / x_4402);
            let x_4404 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4404 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4406 : vec4<f32> = u_xlat15;
            let x_4407 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_4406 / x_4407);
            let x_4409 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4409 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4411 : vec4<f32> = u_xlat14;
            let x_4414 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4411.w, x_4411.x, x_4411.y, x_4411.z) * vec4<f32>(x_4414.x, x_4414.x, x_4414.x, x_4414.x));
            let x_4417 : vec4<f32> = u_xlat15;
            let x_4420 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_4417.x, x_4417.w, x_4417.y, x_4417.z) * vec4<f32>(x_4420.y, x_4420.y, x_4420.y, x_4420.y));
            let x_4423 : vec4<f32> = u_xlat14;
            let x_4424 : vec3<f32> = vec3<f32>(x_4423.y, x_4423.z, x_4423.w);
            let x_4425 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4424.x, x_4425.y, x_4424.y, x_4424.z);
            let x_4428 : f32 = u_xlat15.x;
            u_xlat17.y = x_4428;
            let x_4430 : vec4<f32> = u_xlat12;
            let x_4433 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4436 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4430.x, x_4430.y, x_4430.x, x_4430.y) * vec4<f32>(x_4433.x, x_4433.y, x_4433.x, x_4433.y)) + vec4<f32>(x_4436.x, x_4436.y, x_4436.z, x_4436.y));
            let x_4439 : vec4<f32> = u_xlat12;
            let x_4442 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4445 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_4439.x, x_4439.y) * vec2<f32>(x_4442.x, x_4442.y)) + vec2<f32>(x_4445.w, x_4445.y));
            let x_4449 : f32 = u_xlat17.y;
            u_xlat14.y = x_4449;
            let x_4452 : f32 = u_xlat15.z;
            u_xlat17.y = x_4452;
            let x_4454 : vec4<f32> = u_xlat12;
            let x_4457 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4460 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_4454.x, x_4454.y, x_4454.x, x_4454.y) * vec4<f32>(x_4457.x, x_4457.y, x_4457.x, x_4457.y)) + vec4<f32>(x_4460.x, x_4460.y, x_4460.z, x_4460.y));
            let x_4463 : vec4<f32> = u_xlat12;
            let x_4466 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4469 : vec4<f32> = u_xlat17;
            let x_4471 : vec2<f32> = ((vec2<f32>(x_4463.x, x_4463.y) * vec2<f32>(x_4466.x, x_4466.y)) + vec2<f32>(x_4469.w, x_4469.y));
            let x_4472 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_4471.x, x_4471.y, x_4472.z, x_4472.w);
            let x_4475 : f32 = u_xlat17.y;
            u_xlat14.z = x_4475;
            let x_4478 : vec4<f32> = u_xlat12;
            let x_4481 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4484 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4478.x, x_4478.y, x_4478.x, x_4478.y) * vec4<f32>(x_4481.x, x_4481.y, x_4481.x, x_4481.y)) + vec4<f32>(x_4484.x, x_4484.y, x_4484.x, x_4484.z));
            let x_4488 : f32 = u_xlat15.w;
            u_xlat17.y = x_4488;
            let x_4491 : vec4<f32> = u_xlat12;
            let x_4494 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4497 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4491.x, x_4491.y, x_4491.x, x_4491.y) * vec4<f32>(x_4494.x, x_4494.y, x_4494.x, x_4494.y)) + vec4<f32>(x_4497.x, x_4497.y, x_4497.z, x_4497.y));
            let x_4501 : vec4<f32> = u_xlat12;
            let x_4504 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4507 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_4501.x, x_4501.y) * vec2<f32>(x_4504.x, x_4504.y)) + vec2<f32>(x_4507.w, x_4507.y));
            let x_4511 : f32 = u_xlat17.y;
            u_xlat14.w = x_4511;
            let x_4514 : vec4<f32> = u_xlat12;
            let x_4517 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4520 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4514.x, x_4514.y) * vec2<f32>(x_4517.x, x_4517.y)) + vec2<f32>(x_4520.x, x_4520.w));
            let x_4523 : vec4<f32> = u_xlat17;
            let x_4524 : vec3<f32> = vec3<f32>(x_4523.x, x_4523.z, x_4523.w);
            let x_4525 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4524.x, x_4525.y, x_4524.y, x_4524.z);
            let x_4527 : vec4<f32> = u_xlat12;
            let x_4530 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4533 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4527.x, x_4527.y, x_4527.x, x_4527.y) * vec4<f32>(x_4530.x, x_4530.y, x_4530.x, x_4530.y)) + vec4<f32>(x_4533.x, x_4533.y, x_4533.z, x_4533.y));
            let x_4536 : vec4<f32> = u_xlat12;
            let x_4539 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4542 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4536.x, x_4536.y) * vec2<f32>(x_4539.x, x_4539.y)) + vec2<f32>(x_4542.w, x_4542.y));
            let x_4546 : f32 = u_xlat14.x;
            u_xlat15.x = x_4546;
            let x_4548 : vec4<f32> = u_xlat12;
            let x_4551 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4554 : vec4<f32> = u_xlat15;
            let x_4556 : vec2<f32> = ((vec2<f32>(x_4548.x, x_4548.y) * vec2<f32>(x_4551.x, x_4551.y)) + vec2<f32>(x_4554.x, x_4554.y));
            let x_4557 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4556.x, x_4556.y, x_4557.z, x_4557.w);
            let x_4560 : vec4<f32> = u_xlat13;
            let x_4562 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4560.x, x_4560.x, x_4560.x, x_4560.x) * x_4562);
            let x_4565 : vec4<f32> = u_xlat13;
            let x_4567 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4565.y, x_4565.y, x_4565.y, x_4565.y) * x_4567);
            let x_4570 : vec4<f32> = u_xlat13;
            let x_4572 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4570.z, x_4570.z, x_4570.z, x_4570.z) * x_4572);
            let x_4574 : vec4<f32> = u_xlat13;
            let x_4576 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4574.w, x_4574.w, x_4574.w, x_4574.w) * x_4576);
            let x_4579 : vec4<f32> = u_xlat18;
            let x_4580 : vec2<f32> = vec2<f32>(x_4579.x, x_4579.y);
            let x_4582 : f32 = u_xlat11.z;
            txVec73 = vec3<f32>(x_4580.x, x_4580.y, x_4582);
            let x_4589 : vec3<f32> = txVec73;
            let x_4591 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4589.xy, x_4589.z);
            u_xlat87 = x_4591;
            let x_4593 : vec4<f32> = u_xlat18;
            let x_4594 : vec2<f32> = vec2<f32>(x_4593.z, x_4593.w);
            let x_4596 : f32 = u_xlat11.z;
            txVec74 = vec3<f32>(x_4594.x, x_4594.y, x_4596);
            let x_4603 : vec3<f32> = txVec74;
            let x_4605 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4603.xy, x_4603.z);
            u_xlat88 = x_4605;
            let x_4606 : f32 = u_xlat88;
            let x_4608 : f32 = u_xlat23.y;
            u_xlat88 = (x_4606 * x_4608);
            let x_4611 : f32 = u_xlat23.x;
            let x_4612 : f32 = u_xlat87;
            let x_4614 : f32 = u_xlat88;
            u_xlat87 = ((x_4611 * x_4612) + x_4614);
            let x_4617 : vec2<f32> = u_xlat64;
            let x_4619 : f32 = u_xlat11.z;
            txVec75 = vec3<f32>(x_4617.x, x_4617.y, x_4619);
            let x_4626 : vec3<f32> = txVec75;
            let x_4628 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4626.xy, x_4626.z);
            u_xlat88 = x_4628;
            let x_4630 : f32 = u_xlat23.z;
            let x_4631 : f32 = u_xlat88;
            let x_4633 : f32 = u_xlat87;
            u_xlat87 = ((x_4630 * x_4631) + x_4633);
            let x_4636 : vec4<f32> = u_xlat21;
            let x_4637 : vec2<f32> = vec2<f32>(x_4636.x, x_4636.y);
            let x_4639 : f32 = u_xlat11.z;
            txVec76 = vec3<f32>(x_4637.x, x_4637.y, x_4639);
            let x_4646 : vec3<f32> = txVec76;
            let x_4648 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4646.xy, x_4646.z);
            u_xlat88 = x_4648;
            let x_4650 : f32 = u_xlat23.w;
            let x_4651 : f32 = u_xlat88;
            let x_4653 : f32 = u_xlat87;
            u_xlat87 = ((x_4650 * x_4651) + x_4653);
            let x_4656 : vec4<f32> = u_xlat19;
            let x_4657 : vec2<f32> = vec2<f32>(x_4656.x, x_4656.y);
            let x_4659 : f32 = u_xlat11.z;
            txVec77 = vec3<f32>(x_4657.x, x_4657.y, x_4659);
            let x_4666 : vec3<f32> = txVec77;
            let x_4668 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4666.xy, x_4666.z);
            u_xlat88 = x_4668;
            let x_4670 : f32 = u_xlat24.x;
            let x_4671 : f32 = u_xlat88;
            let x_4673 : f32 = u_xlat87;
            u_xlat87 = ((x_4670 * x_4671) + x_4673);
            let x_4676 : vec4<f32> = u_xlat19;
            let x_4677 : vec2<f32> = vec2<f32>(x_4676.z, x_4676.w);
            let x_4679 : f32 = u_xlat11.z;
            txVec78 = vec3<f32>(x_4677.x, x_4677.y, x_4679);
            let x_4686 : vec3<f32> = txVec78;
            let x_4688 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4686.xy, x_4686.z);
            u_xlat88 = x_4688;
            let x_4690 : f32 = u_xlat24.y;
            let x_4691 : f32 = u_xlat88;
            let x_4693 : f32 = u_xlat87;
            u_xlat87 = ((x_4690 * x_4691) + x_4693);
            let x_4696 : vec4<f32> = u_xlat20;
            let x_4697 : vec2<f32> = vec2<f32>(x_4696.x, x_4696.y);
            let x_4699 : f32 = u_xlat11.z;
            txVec79 = vec3<f32>(x_4697.x, x_4697.y, x_4699);
            let x_4706 : vec3<f32> = txVec79;
            let x_4708 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4706.xy, x_4706.z);
            u_xlat88 = x_4708;
            let x_4710 : f32 = u_xlat24.z;
            let x_4711 : f32 = u_xlat88;
            let x_4713 : f32 = u_xlat87;
            u_xlat87 = ((x_4710 * x_4711) + x_4713);
            let x_4716 : vec4<f32> = u_xlat21;
            let x_4717 : vec2<f32> = vec2<f32>(x_4716.z, x_4716.w);
            let x_4719 : f32 = u_xlat11.z;
            txVec80 = vec3<f32>(x_4717.x, x_4717.y, x_4719);
            let x_4726 : vec3<f32> = txVec80;
            let x_4728 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4726.xy, x_4726.z);
            u_xlat88 = x_4728;
            let x_4730 : f32 = u_xlat24.w;
            let x_4731 : f32 = u_xlat88;
            let x_4733 : f32 = u_xlat87;
            u_xlat87 = ((x_4730 * x_4731) + x_4733);
            let x_4736 : vec4<f32> = u_xlat22;
            let x_4737 : vec2<f32> = vec2<f32>(x_4736.x, x_4736.y);
            let x_4739 : f32 = u_xlat11.z;
            txVec81 = vec3<f32>(x_4737.x, x_4737.y, x_4739);
            let x_4746 : vec3<f32> = txVec81;
            let x_4748 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4746.xy, x_4746.z);
            u_xlat88 = x_4748;
            let x_4750 : f32 = u_xlat25.x;
            let x_4751 : f32 = u_xlat88;
            let x_4753 : f32 = u_xlat87;
            u_xlat87 = ((x_4750 * x_4751) + x_4753);
            let x_4756 : vec4<f32> = u_xlat22;
            let x_4757 : vec2<f32> = vec2<f32>(x_4756.z, x_4756.w);
            let x_4759 : f32 = u_xlat11.z;
            txVec82 = vec3<f32>(x_4757.x, x_4757.y, x_4759);
            let x_4766 : vec3<f32> = txVec82;
            let x_4768 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4766.xy, x_4766.z);
            u_xlat88 = x_4768;
            let x_4770 : f32 = u_xlat25.y;
            let x_4771 : f32 = u_xlat88;
            let x_4773 : f32 = u_xlat87;
            u_xlat87 = ((x_4770 * x_4771) + x_4773);
            let x_4776 : vec2<f32> = u_xlat40;
            let x_4778 : f32 = u_xlat11.z;
            txVec83 = vec3<f32>(x_4776.x, x_4776.y, x_4778);
            let x_4785 : vec3<f32> = txVec83;
            let x_4787 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4785.xy, x_4785.z);
            u_xlat88 = x_4787;
            let x_4789 : f32 = u_xlat25.z;
            let x_4790 : f32 = u_xlat88;
            let x_4792 : f32 = u_xlat87;
            u_xlat87 = ((x_4789 * x_4790) + x_4792);
            let x_4795 : vec2<f32> = u_xlat72;
            let x_4797 : f32 = u_xlat11.z;
            txVec84 = vec3<f32>(x_4795.x, x_4795.y, x_4797);
            let x_4804 : vec3<f32> = txVec84;
            let x_4806 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4804.xy, x_4804.z);
            u_xlat88 = x_4806;
            let x_4808 : f32 = u_xlat25.w;
            let x_4809 : f32 = u_xlat88;
            let x_4811 : f32 = u_xlat87;
            u_xlat87 = ((x_4808 * x_4809) + x_4811);
            let x_4814 : vec4<f32> = u_xlat17;
            let x_4815 : vec2<f32> = vec2<f32>(x_4814.x, x_4814.y);
            let x_4817 : f32 = u_xlat11.z;
            txVec85 = vec3<f32>(x_4815.x, x_4815.y, x_4817);
            let x_4824 : vec3<f32> = txVec85;
            let x_4826 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4824.xy, x_4824.z);
            u_xlat88 = x_4826;
            let x_4828 : f32 = u_xlat13.x;
            let x_4829 : f32 = u_xlat88;
            let x_4831 : f32 = u_xlat87;
            u_xlat87 = ((x_4828 * x_4829) + x_4831);
            let x_4834 : vec4<f32> = u_xlat17;
            let x_4835 : vec2<f32> = vec2<f32>(x_4834.z, x_4834.w);
            let x_4837 : f32 = u_xlat11.z;
            txVec86 = vec3<f32>(x_4835.x, x_4835.y, x_4837);
            let x_4844 : vec3<f32> = txVec86;
            let x_4846 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4844.xy, x_4844.z);
            u_xlat88 = x_4846;
            let x_4848 : f32 = u_xlat13.y;
            let x_4849 : f32 = u_xlat88;
            let x_4851 : f32 = u_xlat87;
            u_xlat87 = ((x_4848 * x_4849) + x_4851);
            let x_4854 : vec2<f32> = u_xlat67;
            let x_4856 : f32 = u_xlat11.z;
            txVec87 = vec3<f32>(x_4854.x, x_4854.y, x_4856);
            let x_4863 : vec3<f32> = txVec87;
            let x_4865 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4863.xy, x_4863.z);
            u_xlat88 = x_4865;
            let x_4867 : f32 = u_xlat13.z;
            let x_4868 : f32 = u_xlat88;
            let x_4870 : f32 = u_xlat87;
            u_xlat87 = ((x_4867 * x_4868) + x_4870);
            let x_4873 : vec4<f32> = u_xlat12;
            let x_4874 : vec2<f32> = vec2<f32>(x_4873.x, x_4873.y);
            let x_4876 : f32 = u_xlat11.z;
            txVec88 = vec3<f32>(x_4874.x, x_4874.y, x_4876);
            let x_4883 : vec3<f32> = txVec88;
            let x_4885 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4883.xy, x_4883.z);
            u_xlat88 = x_4885;
            let x_4887 : f32 = u_xlat13.w;
            let x_4888 : f32 = u_xlat88;
            let x_4890 : f32 = u_xlat87;
            u_xlat86 = ((x_4887 * x_4888) + x_4890);
          }
        }
      } else {
        let x_4894 : vec4<f32> = u_xlat11;
        let x_4895 : vec2<f32> = vec2<f32>(x_4894.x, x_4894.y);
        let x_4897 : f32 = u_xlat11.z;
        txVec89 = vec3<f32>(x_4895.x, x_4895.y, x_4897);
        let x_4904 : vec3<f32> = txVec89;
        let x_4906 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4904.xy, x_4904.z);
        u_xlat86 = x_4906;
      }
      let x_4907 : i32 = u_xlati83;
      let x_4909 : f32 = x_131.x_AdditionalShadowParams[x_4907].x;
      u_xlat87 = (1.0f + -(x_4909));
      let x_4912 : f32 = u_xlat86;
      let x_4913 : i32 = u_xlati83;
      let x_4915 : f32 = x_131.x_AdditionalShadowParams[x_4913].x;
      let x_4917 : f32 = u_xlat87;
      u_xlat86 = ((x_4912 * x_4915) + x_4917);
      let x_4920 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_4920);
      let x_4924 : f32 = u_xlat11.z;
      u_xlatb88 = (x_4924 >= 1.0f);
      let x_4926 : bool = u_xlatb87;
      let x_4927 : bool = u_xlatb88;
      u_xlatb87 = (x_4926 | x_4927);
      let x_4929 : bool = u_xlatb87;
      let x_4930 : f32 = u_xlat86;
      u_xlat86 = select(x_4930, 1.0f, x_4929);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_4933 : f32 = u_xlat86;
    u_xlat87 = (-(x_4933) + 1.0f);
    let x_4936 : f32 = u_xlat79;
    let x_4937 : f32 = u_xlat87;
    let x_4939 : f32 = u_xlat86;
    u_xlat86 = ((x_4936 * x_4937) + x_4939);
    let x_4942 : i32 = u_xlati83;
    u_xlati87 = (1i << bitcast<u32>((x_4942 & 31i)));
    let x_4946 : i32 = u_xlati87;
    let x_4949 : f32 = x_3050.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_4946) & bitcast<u32>(x_4949)));
    let x_4953 : i32 = u_xlati87;
    if ((x_4953 != 0i)) {
      let x_4957 : i32 = u_xlati83;
      let x_4959 : f32 = x_3050.x_AdditionalLightsLightTypes[x_4957].el;
      u_xlati87 = i32(x_4959);
      let x_4962 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_4962 != 0i));
      let x_4966 : i32 = u_xlati83;
      u_xlati11 = (x_4966 << bitcast<u32>(2i));
      let x_4968 : i32 = u_xlati88;
      if ((x_4968 != 0i)) {
        let x_4973 : vec3<f32> = vs_INTERP8;
        let x_4975 : i32 = u_xlati11;
        let x_4978 : i32 = u_xlati11;
        let x_4982 : vec4<f32> = x_3050.x_AdditionalLightsWorldToLights[((x_4975 + 1i) / 4i)][((x_4978 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_4973.y, x_4973.y, x_4973.y) * vec3<f32>(x_4982.x, x_4982.y, x_4982.w));
        let x_4985 : i32 = u_xlati11;
        let x_4987 : i32 = u_xlati11;
        let x_4990 : vec4<f32> = x_3050.x_AdditionalLightsWorldToLights[(x_4985 / 4i)][(x_4987 % 4i)];
        let x_4992 : vec3<f32> = vs_INTERP8;
        let x_4995 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4990.x, x_4990.y, x_4990.w) * vec3<f32>(x_4992.x, x_4992.x, x_4992.x)) + x_4995);
        let x_4997 : i32 = u_xlati11;
        let x_5000 : i32 = u_xlati11;
        let x_5004 : vec4<f32> = x_3050.x_AdditionalLightsWorldToLights[((x_4997 + 2i) / 4i)][((x_5000 + 2i) % 4i)];
        let x_5006 : vec3<f32> = vs_INTERP8;
        let x_5009 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_5004.x, x_5004.y, x_5004.w) * vec3<f32>(x_5006.z, x_5006.z, x_5006.z)) + x_5009);
        let x_5011 : vec3<f32> = u_xlat37;
        let x_5012 : i32 = u_xlati11;
        let x_5015 : i32 = u_xlati11;
        let x_5019 : vec4<f32> = x_3050.x_AdditionalLightsWorldToLights[((x_5012 + 3i) / 4i)][((x_5015 + 3i) % 4i)];
        u_xlat37 = (x_5011 + vec3<f32>(x_5019.x, x_5019.y, x_5019.w));
        let x_5022 : vec3<f32> = u_xlat37;
        let x_5024 : vec3<f32> = u_xlat37;
        let x_5026 : vec2<f32> = (vec2<f32>(x_5022.x, x_5022.y) / vec2<f32>(x_5024.z, x_5024.z));
        let x_5027 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5026.x, x_5026.y, x_5027.z);
        let x_5029 : vec3<f32> = u_xlat37;
        let x_5032 : vec2<f32> = ((vec2<f32>(x_5029.x, x_5029.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_5033 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5032.x, x_5032.y, x_5033.z);
        let x_5035 : vec3<f32> = u_xlat37;
        let x_5039 : vec2<f32> = clamp(vec2<f32>(x_5035.x, x_5035.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_5040 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5039.x, x_5039.y, x_5040.z);
        let x_5042 : i32 = u_xlati83;
        let x_5044 : vec4<f32> = x_3050.x_AdditionalLightsCookieAtlasUVRects[x_5042];
        let x_5046 : vec3<f32> = u_xlat37;
        let x_5049 : i32 = u_xlati83;
        let x_5051 : vec4<f32> = x_3050.x_AdditionalLightsCookieAtlasUVRects[x_5049];
        let x_5053 : vec2<f32> = ((vec2<f32>(x_5044.x, x_5044.y) * vec2<f32>(x_5046.x, x_5046.y)) + vec2<f32>(x_5051.z, x_5051.w));
        let x_5054 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5053.x, x_5053.y, x_5054.z);
      } else {
        let x_5057 : i32 = u_xlati87;
        u_xlatb87 = (x_5057 == 1i);
        let x_5059 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_5059);
        let x_5061 : i32 = u_xlati87;
        if ((x_5061 != 0i)) {
          let x_5065 : vec3<f32> = vs_INTERP8;
          let x_5067 : i32 = u_xlati11;
          let x_5070 : i32 = u_xlati11;
          let x_5074 : vec4<f32> = x_3050.x_AdditionalLightsWorldToLights[((x_5067 + 1i) / 4i)][((x_5070 + 1i) % 4i)];
          let x_5076 : vec2<f32> = (vec2<f32>(x_5065.y, x_5065.y) * vec2<f32>(x_5074.x, x_5074.y));
          let x_5077 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5076.x, x_5076.y, x_5077.z, x_5077.w);
          let x_5079 : i32 = u_xlati11;
          let x_5081 : i32 = u_xlati11;
          let x_5084 : vec4<f32> = x_3050.x_AdditionalLightsWorldToLights[(x_5079 / 4i)][(x_5081 % 4i)];
          let x_5086 : vec3<f32> = vs_INTERP8;
          let x_5089 : vec4<f32> = u_xlat12;
          let x_5091 : vec2<f32> = ((vec2<f32>(x_5084.x, x_5084.y) * vec2<f32>(x_5086.x, x_5086.x)) + vec2<f32>(x_5089.x, x_5089.y));
          let x_5092 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5091.x, x_5091.y, x_5092.z, x_5092.w);
          let x_5094 : i32 = u_xlati11;
          let x_5097 : i32 = u_xlati11;
          let x_5101 : vec4<f32> = x_3050.x_AdditionalLightsWorldToLights[((x_5094 + 2i) / 4i)][((x_5097 + 2i) % 4i)];
          let x_5103 : vec3<f32> = vs_INTERP8;
          let x_5106 : vec4<f32> = u_xlat12;
          let x_5108 : vec2<f32> = ((vec2<f32>(x_5101.x, x_5101.y) * vec2<f32>(x_5103.z, x_5103.z)) + vec2<f32>(x_5106.x, x_5106.y));
          let x_5109 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5108.x, x_5108.y, x_5109.z, x_5109.w);
          let x_5111 : vec4<f32> = u_xlat12;
          let x_5113 : i32 = u_xlati11;
          let x_5116 : i32 = u_xlati11;
          let x_5120 : vec4<f32> = x_3050.x_AdditionalLightsWorldToLights[((x_5113 + 3i) / 4i)][((x_5116 + 3i) % 4i)];
          let x_5122 : vec2<f32> = (vec2<f32>(x_5111.x, x_5111.y) + vec2<f32>(x_5120.x, x_5120.y));
          let x_5123 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5122.x, x_5122.y, x_5123.z, x_5123.w);
          let x_5125 : vec4<f32> = u_xlat12;
          let x_5128 : vec2<f32> = ((vec2<f32>(x_5125.x, x_5125.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5129 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5128.x, x_5128.y, x_5129.z, x_5129.w);
          let x_5131 : vec4<f32> = u_xlat12;
          let x_5133 : vec2<f32> = fract(vec2<f32>(x_5131.x, x_5131.y));
          let x_5134 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5133.x, x_5133.y, x_5134.z, x_5134.w);
          let x_5136 : i32 = u_xlati83;
          let x_5138 : vec4<f32> = x_3050.x_AdditionalLightsCookieAtlasUVRects[x_5136];
          let x_5140 : vec4<f32> = u_xlat12;
          let x_5143 : i32 = u_xlati83;
          let x_5145 : vec4<f32> = x_3050.x_AdditionalLightsCookieAtlasUVRects[x_5143];
          let x_5147 : vec2<f32> = ((vec2<f32>(x_5138.x, x_5138.y) * vec2<f32>(x_5140.x, x_5140.y)) + vec2<f32>(x_5145.z, x_5145.w));
          let x_5148 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5147.x, x_5147.y, x_5148.z);
        } else {
          let x_5151 : vec3<f32> = vs_INTERP8;
          let x_5153 : i32 = u_xlati11;
          let x_5156 : i32 = u_xlati11;
          let x_5160 : vec4<f32> = x_3050.x_AdditionalLightsWorldToLights[((x_5153 + 1i) / 4i)][((x_5156 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_5151.y, x_5151.y, x_5151.y, x_5151.y) * x_5160);
          let x_5162 : i32 = u_xlati11;
          let x_5164 : i32 = u_xlati11;
          let x_5167 : vec4<f32> = x_3050.x_AdditionalLightsWorldToLights[(x_5162 / 4i)][(x_5164 % 4i)];
          let x_5168 : vec3<f32> = vs_INTERP8;
          let x_5171 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5167 * vec4<f32>(x_5168.x, x_5168.x, x_5168.x, x_5168.x)) + x_5171);
          let x_5173 : i32 = u_xlati11;
          let x_5176 : i32 = u_xlati11;
          let x_5180 : vec4<f32> = x_3050.x_AdditionalLightsWorldToLights[((x_5173 + 2i) / 4i)][((x_5176 + 2i) % 4i)];
          let x_5181 : vec3<f32> = vs_INTERP8;
          let x_5184 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5180 * vec4<f32>(x_5181.z, x_5181.z, x_5181.z, x_5181.z)) + x_5184);
          let x_5186 : vec4<f32> = u_xlat12;
          let x_5187 : i32 = u_xlati11;
          let x_5190 : i32 = u_xlati11;
          let x_5194 : vec4<f32> = x_3050.x_AdditionalLightsWorldToLights[((x_5187 + 3i) / 4i)][((x_5190 + 3i) % 4i)];
          u_xlat12 = (x_5186 + x_5194);
          let x_5196 : vec4<f32> = u_xlat12;
          let x_5198 : vec4<f32> = u_xlat12;
          let x_5200 : vec3<f32> = (vec3<f32>(x_5196.x, x_5196.y, x_5196.z) / vec3<f32>(x_5198.w, x_5198.w, x_5198.w));
          let x_5201 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5200.x, x_5200.y, x_5200.z, x_5201.w);
          let x_5203 : vec4<f32> = u_xlat12;
          let x_5205 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_5203.x, x_5203.y, x_5203.z), vec3<f32>(x_5205.x, x_5205.y, x_5205.z));
          let x_5208 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_5208);
          let x_5210 : f32 = u_xlat87;
          let x_5212 : vec4<f32> = u_xlat12;
          let x_5214 : vec3<f32> = (vec3<f32>(x_5210, x_5210, x_5210) * vec3<f32>(x_5212.x, x_5212.y, x_5212.z));
          let x_5215 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5214.x, x_5214.y, x_5214.z, x_5215.w);
          let x_5217 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_5217.x, x_5217.y, x_5217.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_5222 : f32 = u_xlat87;
          u_xlat87 = max(x_5222, 0.00000099999999747524f);
          let x_5225 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_5225);
          let x_5227 : f32 = u_xlat87;
          let x_5229 : vec4<f32> = u_xlat12;
          let x_5231 : vec3<f32> = (vec3<f32>(x_5227, x_5227, x_5227) * vec3<f32>(x_5229.z, x_5229.x, x_5229.y));
          let x_5232 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_5231.x, x_5231.y, x_5231.z, x_5232.w);
          let x_5235 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_5235);
          let x_5239 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_5239, 0.0f, 1.0f);
          let x_5242 : vec4<f32> = u_xlat13;
          let x_5244 : vec4<bool> = (vec4<f32>(x_5242.y, x_5242.y, x_5242.y, x_5242.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_5245 : vec2<bool> = vec2<bool>(x_5244.x, x_5244.w);
          let x_5246 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_5245.x, x_5246.y, x_5246.z, x_5245.y);
          let x_5249 : bool = u_xlatb11.x;
          if (x_5249) {
            let x_5254 : f32 = u_xlat13.x;
            x_5250 = x_5254;
          } else {
            let x_5257 : f32 = u_xlat13.x;
            x_5250 = -(x_5257);
          }
          let x_5259 : f32 = x_5250;
          u_xlat11.x = x_5259;
          let x_5262 : bool = u_xlatb11.w;
          if (x_5262) {
            let x_5267 : f32 = u_xlat13.x;
            x_5263 = x_5267;
          } else {
            let x_5270 : f32 = u_xlat13.x;
            x_5263 = -(x_5270);
          }
          let x_5272 : f32 = x_5263;
          u_xlat11.w = x_5272;
          let x_5274 : vec4<f32> = u_xlat12;
          let x_5276 : f32 = u_xlat87;
          let x_5279 : vec4<f32> = u_xlat11;
          let x_5281 : vec2<f32> = ((vec2<f32>(x_5274.x, x_5274.y) * vec2<f32>(x_5276, x_5276)) + vec2<f32>(x_5279.x, x_5279.w));
          let x_5282 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5281.x, x_5282.y, x_5282.z, x_5281.y);
          let x_5284 : vec4<f32> = u_xlat11;
          let x_5287 : vec2<f32> = ((vec2<f32>(x_5284.x, x_5284.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5288 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5287.x, x_5288.y, x_5288.z, x_5287.y);
          let x_5290 : vec4<f32> = u_xlat11;
          let x_5294 : vec2<f32> = clamp(vec2<f32>(x_5290.x, x_5290.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_5295 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5294.x, x_5295.y, x_5295.z, x_5294.y);
          let x_5297 : i32 = u_xlati83;
          let x_5299 : vec4<f32> = x_3050.x_AdditionalLightsCookieAtlasUVRects[x_5297];
          let x_5301 : vec4<f32> = u_xlat11;
          let x_5304 : i32 = u_xlati83;
          let x_5306 : vec4<f32> = x_3050.x_AdditionalLightsCookieAtlasUVRects[x_5304];
          let x_5308 : vec2<f32> = ((vec2<f32>(x_5299.x, x_5299.y) * vec2<f32>(x_5301.x, x_5301.w)) + vec2<f32>(x_5306.z, x_5306.w));
          let x_5309 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5308.x, x_5308.y, x_5309.z);
        }
      }
      let x_5316 : vec3<f32> = u_xlat37;
      let x_5318 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_5316.x, x_5316.y), 0.0f);
      u_xlat11 = x_5318;
      let x_5320 : bool = u_xlatb4.w;
      if (x_5320) {
        let x_5325 : f32 = u_xlat11.w;
        x_5321 = x_5325;
      } else {
        let x_5328 : f32 = u_xlat11.x;
        x_5321 = x_5328;
      }
      let x_5329 : f32 = x_5321;
      u_xlat87 = x_5329;
      let x_5331 : bool = u_xlatb4.x;
      if (x_5331) {
        let x_5335 : vec4<f32> = u_xlat11;
        x_5332 = vec3<f32>(x_5335.x, x_5335.y, x_5335.z);
      } else {
        let x_5338 : f32 = u_xlat87;
        x_5332 = vec3<f32>(x_5338, x_5338, x_5338);
      }
      let x_5340 : vec3<f32> = x_5332;
      let x_5341 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_5340.x, x_5340.y, x_5340.z, x_5341.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_5347 : vec4<f32> = u_xlat11;
    let x_5349 : i32 = u_xlati83;
    let x_5351 : vec4<f32> = x_3520.x_AdditionalLightsColor[x_5349];
    let x_5353 : vec3<f32> = (vec3<f32>(x_5347.x, x_5347.y, x_5347.z) * vec3<f32>(x_5351.x, x_5351.y, x_5351.z));
    let x_5354 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5353.x, x_5353.y, x_5353.z, x_5354.w);
    let x_5356 : f32 = u_xlat84;
    let x_5357 : f32 = u_xlat86;
    u_xlat83 = (x_5356 * x_5357);
    let x_5359 : vec4<f32> = u_xlat5;
    let x_5361 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_5359.x, x_5359.y, x_5359.z), vec3<f32>(x_5361.x, x_5361.y, x_5361.z));
    let x_5364 : f32 = u_xlat84;
    u_xlat84 = clamp(x_5364, 0.0f, 1.0f);
    let x_5366 : f32 = u_xlat83;
    let x_5367 : f32 = u_xlat84;
    u_xlat83 = (x_5366 * x_5367);
    let x_5369 : f32 = u_xlat83;
    let x_5371 : vec4<f32> = u_xlat11;
    let x_5373 : vec3<f32> = (vec3<f32>(x_5369, x_5369, x_5369) * vec3<f32>(x_5371.x, x_5371.y, x_5371.z));
    let x_5374 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5373.x, x_5373.y, x_5373.z, x_5374.w);
    let x_5376 : vec4<f32> = u_xlat9;
    let x_5378 : f32 = u_xlat85;
    let x_5381 : vec4<f32> = u_xlat6;
    let x_5383 : vec3<f32> = ((vec3<f32>(x_5376.x, x_5376.y, x_5376.z) * vec3<f32>(x_5378, x_5378, x_5378)) + vec3<f32>(x_5381.x, x_5381.y, x_5381.z));
    let x_5384 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5383.x, x_5383.y, x_5383.z, x_5384.w);
    let x_5386 : vec4<f32> = u_xlat9;
    let x_5388 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_5386.x, x_5386.y, x_5386.z), vec3<f32>(x_5388.x, x_5388.y, x_5388.z));
    let x_5391 : f32 = u_xlat83;
    u_xlat83 = max(x_5391, 1.17549435e-38f);
    let x_5393 : f32 = u_xlat83;
    u_xlat83 = inverseSqrt(x_5393);
    let x_5395 : f32 = u_xlat83;
    let x_5397 : vec4<f32> = u_xlat9;
    let x_5399 : vec3<f32> = (vec3<f32>(x_5395, x_5395, x_5395) * vec3<f32>(x_5397.x, x_5397.y, x_5397.z));
    let x_5400 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5399.x, x_5399.y, x_5399.z, x_5400.w);
    let x_5402 : vec4<f32> = u_xlat5;
    let x_5404 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_5402.x, x_5402.y, x_5402.z), vec3<f32>(x_5404.x, x_5404.y, x_5404.z));
    let x_5407 : f32 = u_xlat83;
    u_xlat83 = clamp(x_5407, 0.0f, 1.0f);
    let x_5409 : vec4<f32> = u_xlat10;
    let x_5411 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_5409.x, x_5409.y, x_5409.z), vec3<f32>(x_5411.x, x_5411.y, x_5411.z));
    let x_5414 : f32 = u_xlat84;
    u_xlat84 = clamp(x_5414, 0.0f, 1.0f);
    let x_5416 : f32 = u_xlat83;
    let x_5417 : f32 = u_xlat83;
    u_xlat83 = (x_5416 * x_5417);
    let x_5419 : f32 = u_xlat83;
    let x_5421 : f32 = u_xlat27.x;
    u_xlat83 = ((x_5419 * x_5421) + 1.00001001358032226562f);
    let x_5424 : f32 = u_xlat84;
    let x_5425 : f32 = u_xlat84;
    u_xlat84 = (x_5424 * x_5425);
    let x_5427 : f32 = u_xlat83;
    let x_5428 : f32 = u_xlat83;
    u_xlat83 = (x_5427 * x_5428);
    let x_5430 : f32 = u_xlat84;
    u_xlat84 = max(x_5430, 0.10000000149011611938f);
    let x_5432 : f32 = u_xlat83;
    let x_5433 : f32 = u_xlat84;
    u_xlat83 = (x_5432 * x_5433);
    let x_5436 : f32 = u_xlat30.x;
    let x_5437 : f32 = u_xlat83;
    u_xlat83 = (x_5436 * x_5437);
    let x_5439 : f32 = u_xlat80;
    let x_5440 : f32 = u_xlat83;
    u_xlat83 = (x_5439 / x_5440);
    let x_5442 : f32 = u_xlat83;
    let x_5445 : vec3<f32> = u_xlat2;
    let x_5446 : vec3<f32> = ((vec3<f32>(x_5442, x_5442, x_5442) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5445);
    let x_5447 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5446.x, x_5446.y, x_5446.z, x_5447.w);
    let x_5449 : vec4<f32> = u_xlat9;
    let x_5451 : vec4<f32> = u_xlat11;
    let x_5454 : vec4<f32> = u_xlat8;
    let x_5456 : vec3<f32> = ((vec3<f32>(x_5449.x, x_5449.y, x_5449.z) * vec3<f32>(x_5451.x, x_5451.y, x_5451.z)) + vec3<f32>(x_5454.x, x_5454.y, x_5454.z));
    let x_5457 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5456.x, x_5456.y, x_5456.z, x_5457.w);

    continuing {
      let x_5459 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5459 + bitcast<u32>(1i));
    }
  }
  let x_5461 : vec4<f32> = u_xlat3;
  let x_5463 : f32 = u_xlat56;
  let x_5466 : vec4<f32> = u_xlat7;
  u_xlat2 = ((vec3<f32>(x_5461.x, x_5461.y, x_5461.z) * vec3<f32>(x_5463, x_5463, x_5463)) + vec3<f32>(x_5466.x, x_5466.y, x_5466.z));
  let x_5469 : vec4<f32> = u_xlat8;
  let x_5471 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_5469.x, x_5469.y, x_5469.z) + x_5471);
  let x_5475 : vec4<f32> = vs_INTERP6;
  let x_5477 : vec3<f32> = u_xlat0;
  let x_5479 : vec3<f32> = u_xlat2;
  let x_5480 : vec3<f32> = ((vec3<f32>(x_5475.w, x_5475.w, x_5475.w) * x_5477) + x_5479);
  let x_5481 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5480.x, x_5480.y, x_5480.z, x_5481.w);
  let x_5483 : bool = u_xlatb53;
  if (x_5483) {
    let x_5488 : f32 = u_xlat1.x;
    x_5484 = x_5488;
  } else {
    x_5484 = 1.0f;
  }
  let x_5490 : f32 = x_5484;
  SV_Target0.w = x_5490;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_INTERP9_param : vec3<f32>, @location(2) vs_INTERP5_param : vec4<f32>, @location(3) vs_INTERP6_param : vec4<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


