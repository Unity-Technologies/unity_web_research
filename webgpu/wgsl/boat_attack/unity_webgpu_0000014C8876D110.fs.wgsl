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

var<private> u_xlat83 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb58 : vec2<bool>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat84 : f32;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat86 : f32;

var<private> u_xlatb4 : bool;

@group(1) @binding(4) var<uniform> x_3143 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu78 : u32;

var<private> u_xlatu3 : u32;

var<private> u_xlati4 : i32;

var<private> u_xlati3 : i32;

var<private> u_xlat35 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_3585 : AdditionalLights;

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

var<private> u_xlat66 : vec2<f32>;

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

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb3 : bool;

var<private> u_xlatu80 : u32;

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
  var x_1684 : vec3<f32>;
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
  var x_3211 : f32;
  var x_3222 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3737 : f32;
  var x_3748 : f32;
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
  var x_5363 : f32;
  var x_5376 : f32;
  var x_5434 : f32;
  var x_5445 : vec3<f32>;
  var x_5643 : f32;
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
  let x_1674 : f32 = x_53.unity_MatrixV[0i].z;
  u_xlat6.x = x_1674;
  let x_1677 : f32 = x_53.unity_MatrixV[1i].z;
  u_xlat6.y = x_1677;
  let x_1680 : f32 = x_53.unity_MatrixV[2i].z;
  u_xlat6.z = x_1680;
  let x_1683 : bool = u_xlatb27.x;
  if (x_1683) {
    let x_1687 : vec3<f32> = u_xlat29;
    x_1684 = x_1687;
  } else {
    let x_1689 : vec4<f32> = u_xlat6;
    x_1684 = vec3<f32>(x_1689.x, x_1689.y, x_1689.z);
  }
  let x_1691 : vec3<f32> = x_1684;
  u_xlat29 = x_1691;
  let x_1693 : f32 = vs_INTERP8.y;
  let x_1695 : f32 = x_53.unity_MatrixV[1i].z;
  u_xlat27.x = (x_1693 * x_1695);
  let x_1699 : f32 = x_53.unity_MatrixV[0i].z;
  let x_1701 : f32 = vs_INTERP8.x;
  let x_1704 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_1699 * x_1701) + x_1704);
  let x_1708 : f32 = x_53.unity_MatrixV[2i].z;
  let x_1710 : f32 = vs_INTERP8.z;
  let x_1713 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_1708 * x_1710) + x_1713);
  let x_1717 : f32 = u_xlat27.x;
  let x_1719 : f32 = x_53.unity_MatrixV[3i].z;
  u_xlat27.x = (x_1717 + x_1719);
  let x_1723 : f32 = u_xlat27.x;
  let x_1726 : f32 = x_53.x_ProjectionParams.y;
  u_xlat27.x = (-(x_1723) + -(x_1726));
  let x_1731 : f32 = u_xlat27.x;
  u_xlat27.x = max(x_1731, 0.0f);
  let x_1735 : f32 = u_xlat27.x;
  let x_1737 : f32 = x_53.unity_FogParams.x;
  u_xlat27.x = (x_1735 * x_1737);
  u_xlat5.w = 1.0f;
  let x_1743 : vec4<f32> = x_1585.unity_SHAr;
  let x_1744 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_1743, x_1744);
  let x_1749 : vec4<f32> = x_1585.unity_SHAg;
  let x_1750 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_1749, x_1750);
  let x_1755 : vec4<f32> = x_1585.unity_SHAb;
  let x_1756 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_1755, x_1756);
  let x_1759 : vec4<f32> = u_xlat5;
  let x_1761 : vec4<f32> = u_xlat5;
  u_xlat7 = (vec4<f32>(x_1759.y, x_1759.z, x_1759.z, x_1759.x) * vec4<f32>(x_1761.x, x_1761.y, x_1761.z, x_1761.z));
  let x_1766 : vec4<f32> = x_1585.unity_SHBr;
  let x_1767 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_1766, x_1767);
  let x_1772 : vec4<f32> = x_1585.unity_SHBg;
  let x_1773 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_1772, x_1773);
  let x_1778 : vec4<f32> = x_1585.unity_SHBb;
  let x_1779 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_1778, x_1779);
  let x_1783 : f32 = u_xlat5.y;
  let x_1785 : f32 = u_xlat5.y;
  u_xlat79 = (x_1783 * x_1785);
  let x_1788 : f32 = u_xlat5.x;
  let x_1790 : f32 = u_xlat5.x;
  let x_1792 : f32 = u_xlat79;
  u_xlat79 = ((x_1788 * x_1790) + -(x_1792));
  let x_1797 : vec4<f32> = x_1585.unity_SHC;
  let x_1799 : f32 = u_xlat79;
  let x_1802 : vec4<f32> = u_xlat8;
  u_xlat30 = ((vec3<f32>(x_1797.x, x_1797.y, x_1797.z) * vec3<f32>(x_1799, x_1799, x_1799)) + vec3<f32>(x_1802.x, x_1802.y, x_1802.z));
  let x_1805 : vec3<f32> = u_xlat30;
  let x_1806 : vec4<f32> = u_xlat6;
  u_xlat30 = (x_1805 + vec3<f32>(x_1806.x, x_1806.y, x_1806.z));
  let x_1809 : vec3<f32> = u_xlat30;
  u_xlat30 = max(x_1809, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1813 : f32 = u_xlat3.x;
  u_xlat3.x = x_1813;
  let x_1816 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1816, 0.0f, 1.0f);
  let x_1820 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_1820, 1.0f);
  let x_1823 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1823 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_1828 : f32 = u_xlat3.x;
  u_xlat79 = (-(x_1828) + 1.0f);
  let x_1831 : f32 = u_xlat79;
  let x_1832 : f32 = u_xlat79;
  u_xlat80 = (x_1831 * x_1832);
  let x_1834 : f32 = u_xlat80;
  u_xlat80 = max(x_1834, 0.0078125f);
  let x_1838 : f32 = u_xlat80;
  let x_1839 : f32 = u_xlat80;
  u_xlat83 = (x_1838 * x_1839);
  let x_1842 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1842 + 0.04000002145767211914f);
  let x_1847 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_1847, 1.0f);
  let x_1850 : f32 = u_xlat80;
  u_xlat6.x = ((x_1850 * 4.0f) + 2.0f);
  let x_1856 : f32 = vs_INTERP6.w;
  u_xlat32.x = min(x_1856, 1.0f);
  let x_1859 : bool = u_xlatb78;
  if (x_1859) {
    let x_1863 : f32 = x_131.x_MainLightShadowParams.y;
    u_xlatb78 = (x_1863 == 1.0f);
    let x_1865 : bool = u_xlatb78;
    if (x_1865) {
      let x_1869 : vec4<f32> = vs_INTERP3;
      let x_1872 : vec4<f32> = x_131.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_1869.x, x_1869.y, x_1869.x, x_1869.y) + x_1872);
      let x_1875 : vec4<f32> = u_xlat7;
      let x_1876 : vec2<f32> = vec2<f32>(x_1875.x, x_1875.y);
      let x_1878 : f32 = vs_INTERP3.z;
      txVec30 = vec3<f32>(x_1876.x, x_1876.y, x_1878);
      let x_1885 : vec3<f32> = txVec30;
      let x_1887 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1885.xy, x_1885.z);
      u_xlat8.x = x_1887;
      let x_1890 : vec4<f32> = u_xlat7;
      let x_1891 : vec2<f32> = vec2<f32>(x_1890.z, x_1890.w);
      let x_1893 : f32 = vs_INTERP3.z;
      txVec31 = vec3<f32>(x_1891.x, x_1891.y, x_1893);
      let x_1900 : vec3<f32> = txVec31;
      let x_1902 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1900.xy, x_1900.z);
      u_xlat8.y = x_1902;
      let x_1904 : vec4<f32> = vs_INTERP3;
      let x_1907 : vec4<f32> = x_131.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_1904.x, x_1904.y, x_1904.x, x_1904.y) + x_1907);
      let x_1910 : vec4<f32> = u_xlat7;
      let x_1911 : vec2<f32> = vec2<f32>(x_1910.x, x_1910.y);
      let x_1913 : f32 = vs_INTERP3.z;
      txVec32 = vec3<f32>(x_1911.x, x_1911.y, x_1913);
      let x_1920 : vec3<f32> = txVec32;
      let x_1922 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1920.xy, x_1920.z);
      u_xlat8.z = x_1922;
      let x_1925 : vec4<f32> = u_xlat7;
      let x_1926 : vec2<f32> = vec2<f32>(x_1925.z, x_1925.w);
      let x_1928 : f32 = vs_INTERP3.z;
      txVec33 = vec3<f32>(x_1926.x, x_1926.y, x_1928);
      let x_1935 : vec3<f32> = txVec33;
      let x_1937 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1935.xy, x_1935.z);
      u_xlat8.w = x_1937;
      let x_1939 : vec4<f32> = u_xlat8;
      u_xlat78 = dot(x_1939, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1946 : f32 = x_131.x_MainLightShadowParams.y;
      u_xlatb58.x = (x_1946 == 2.0f);
      let x_1950 : bool = u_xlatb58.x;
      if (x_1950) {
        let x_1954 : vec4<f32> = vs_INTERP3;
        let x_1957 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_1954.x, x_1954.y) * vec2<f32>(x_1957.z, x_1957.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1961 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_1961);
        let x_1963 : vec4<f32> = vs_INTERP3;
        let x_1966 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_1969 : vec2<f32> = u_xlat58;
        let x_1971 : vec2<f32> = ((vec2<f32>(x_1963.x, x_1963.y) * vec2<f32>(x_1966.z, x_1966.w)) + -(x_1969));
        let x_1972 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1971.x, x_1971.y, x_1972.z, x_1972.w);
        let x_1974 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1974.x, x_1974.x, x_1974.y, x_1974.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1977 : vec4<f32> = u_xlat8;
        let x_1979 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1977.x, x_1977.x, x_1977.z, x_1977.z) * vec4<f32>(x_1979.x, x_1979.x, x_1979.z, x_1979.z));
        let x_1982 : vec4<f32> = u_xlat9;
        u_xlat59 = (vec2<f32>(x_1982.y, x_1982.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1985 : vec4<f32> = u_xlat9;
        let x_1988 : vec4<f32> = u_xlat7;
        let x_1991 : vec2<f32> = ((vec2<f32>(x_1985.x, x_1985.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1988.x, x_1988.y)));
        let x_1992 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1991.x, x_1992.y, x_1991.y, x_1992.w);
        let x_1994 : vec4<f32> = u_xlat7;
        let x_1997 : vec2<f32> = (-(vec2<f32>(x_1994.x, x_1994.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1998 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1997.x, x_1997.y, x_1998.z, x_1998.w);
        let x_2001 : vec4<f32> = u_xlat7;
        u_xlat61 = min(vec2<f32>(x_2001.x, x_2001.y), vec2<f32>(0.0f, 0.0f));
        let x_2004 : vec2<f32> = u_xlat61;
        let x_2006 : vec2<f32> = u_xlat61;
        let x_2008 : vec4<f32> = u_xlat9;
        u_xlat61 = ((-(x_2004) * x_2006) + vec2<f32>(x_2008.x, x_2008.y));
        let x_2011 : vec4<f32> = u_xlat7;
        let x_2013 : vec2<f32> = max(vec2<f32>(x_2011.x, x_2011.y), vec2<f32>(0.0f, 0.0f));
        let x_2014 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2013.x, x_2013.y, x_2014.z, x_2014.w);
        let x_2016 : vec4<f32> = u_xlat7;
        let x_2019 : vec4<f32> = u_xlat7;
        let x_2022 : vec4<f32> = u_xlat8;
        let x_2024 : vec2<f32> = ((-(vec2<f32>(x_2016.x, x_2016.y)) * vec2<f32>(x_2019.x, x_2019.y)) + vec2<f32>(x_2022.y, x_2022.w));
        let x_2025 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2024.x, x_2024.y, x_2025.z, x_2025.w);
        let x_2027 : vec2<f32> = u_xlat61;
        u_xlat61 = (x_2027 + vec2<f32>(1.0f, 1.0f));
        let x_2029 : vec4<f32> = u_xlat7;
        let x_2031 : vec2<f32> = (vec2<f32>(x_2029.x, x_2029.y) + vec2<f32>(1.0f, 1.0f));
        let x_2032 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2031.x, x_2031.y, x_2032.z, x_2032.w);
        let x_2034 : vec4<f32> = u_xlat8;
        let x_2036 : vec2<f32> = (vec2<f32>(x_2034.x, x_2034.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2037 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2036.x, x_2036.y, x_2037.z, x_2037.w);
        let x_2039 : vec4<f32> = u_xlat9;
        let x_2041 : vec2<f32> = (vec2<f32>(x_2039.x, x_2039.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2042 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2041.x, x_2041.y, x_2042.z, x_2042.w);
        let x_2044 : vec2<f32> = u_xlat61;
        let x_2045 : vec2<f32> = (x_2044 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2046 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2045.x, x_2045.y, x_2046.z, x_2046.w);
        let x_2048 : vec4<f32> = u_xlat7;
        let x_2050 : vec2<f32> = (vec2<f32>(x_2048.x, x_2048.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2051 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2050.x, x_2050.y, x_2051.z, x_2051.w);
        let x_2053 : vec4<f32> = u_xlat8;
        let x_2055 : vec2<f32> = (vec2<f32>(x_2053.y, x_2053.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2056 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2055.x, x_2055.y, x_2056.z, x_2056.w);
        let x_2059 : f32 = u_xlat9.x;
        u_xlat10.z = x_2059;
        let x_2062 : f32 = u_xlat7.x;
        u_xlat10.w = x_2062;
        let x_2065 : f32 = u_xlat12.x;
        u_xlat11.z = x_2065;
        let x_2068 : f32 = u_xlat59.x;
        u_xlat11.w = x_2068;
        let x_2070 : vec4<f32> = u_xlat10;
        let x_2072 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_2070.z, x_2070.w, x_2070.x, x_2070.z) + vec4<f32>(x_2072.z, x_2072.w, x_2072.x, x_2072.z));
        let x_2076 : f32 = u_xlat10.y;
        u_xlat9.z = x_2076;
        let x_2079 : f32 = u_xlat7.y;
        u_xlat9.w = x_2079;
        let x_2082 : f32 = u_xlat11.y;
        u_xlat12.z = x_2082;
        let x_2085 : f32 = u_xlat59.y;
        u_xlat12.w = x_2085;
        let x_2087 : vec4<f32> = u_xlat9;
        let x_2089 : vec4<f32> = u_xlat12;
        let x_2091 : vec3<f32> = (vec3<f32>(x_2087.z, x_2087.y, x_2087.w) + vec3<f32>(x_2089.z, x_2089.y, x_2089.w));
        let x_2092 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2091.x, x_2091.y, x_2091.z, x_2092.w);
        let x_2094 : vec4<f32> = u_xlat11;
        let x_2096 : vec4<f32> = u_xlat8;
        let x_2098 : vec3<f32> = (vec3<f32>(x_2094.x, x_2094.z, x_2094.w) / vec3<f32>(x_2096.z, x_2096.w, x_2096.y));
        let x_2099 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2098.x, x_2098.y, x_2098.z, x_2099.w);
        let x_2101 : vec4<f32> = u_xlat9;
        let x_2103 : vec3<f32> = (vec3<f32>(x_2101.x, x_2101.y, x_2101.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2104 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2103.x, x_2103.y, x_2103.z, x_2104.w);
        let x_2106 : vec4<f32> = u_xlat12;
        let x_2108 : vec4<f32> = u_xlat7;
        let x_2110 : vec3<f32> = (vec3<f32>(x_2106.z, x_2106.y, x_2106.w) / vec3<f32>(x_2108.x, x_2108.y, x_2108.z));
        let x_2111 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2110.x, x_2110.y, x_2110.z, x_2111.w);
        let x_2113 : vec4<f32> = u_xlat10;
        let x_2115 : vec3<f32> = (vec3<f32>(x_2113.x, x_2113.y, x_2113.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2116 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2115.x, x_2115.y, x_2115.z, x_2116.w);
        let x_2118 : vec4<f32> = u_xlat9;
        let x_2121 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2123 : vec3<f32> = (vec3<f32>(x_2118.y, x_2118.x, x_2118.z) * vec3<f32>(x_2121.x, x_2121.x, x_2121.x));
        let x_2124 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2123.x, x_2123.y, x_2123.z, x_2124.w);
        let x_2126 : vec4<f32> = u_xlat10;
        let x_2129 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2131 : vec3<f32> = (vec3<f32>(x_2126.x, x_2126.y, x_2126.z) * vec3<f32>(x_2129.y, x_2129.y, x_2129.y));
        let x_2132 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2131.x, x_2131.y, x_2131.z, x_2132.w);
        let x_2135 : f32 = u_xlat10.x;
        u_xlat9.w = x_2135;
        let x_2137 : vec2<f32> = u_xlat58;
        let x_2140 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2143 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2137.x, x_2137.y, x_2137.x, x_2137.y) * vec4<f32>(x_2140.x, x_2140.y, x_2140.x, x_2140.y)) + vec4<f32>(x_2143.y, x_2143.w, x_2143.x, x_2143.w));
        let x_2146 : vec2<f32> = u_xlat58;
        let x_2148 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2151 : vec4<f32> = u_xlat9;
        let x_2153 : vec2<f32> = ((x_2146 * vec2<f32>(x_2148.x, x_2148.y)) + vec2<f32>(x_2151.z, x_2151.w));
        let x_2154 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2153.x, x_2153.y, x_2154.z, x_2154.w);
        let x_2157 : f32 = u_xlat9.y;
        u_xlat10.w = x_2157;
        let x_2159 : vec4<f32> = u_xlat10;
        let x_2160 : vec2<f32> = vec2<f32>(x_2159.y, x_2159.z);
        let x_2161 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2161.x, x_2160.x, x_2161.z, x_2160.y);
        let x_2163 : vec2<f32> = u_xlat58;
        let x_2166 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2169 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_2163.x, x_2163.y, x_2163.x, x_2163.y) * vec4<f32>(x_2166.x, x_2166.y, x_2166.x, x_2166.y)) + vec4<f32>(x_2169.x, x_2169.y, x_2169.z, x_2169.y));
        let x_2172 : vec2<f32> = u_xlat58;
        let x_2175 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2178 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2172.x, x_2172.y, x_2172.x, x_2172.y) * vec4<f32>(x_2175.x, x_2175.y, x_2175.x, x_2175.y)) + vec4<f32>(x_2178.w, x_2178.y, x_2178.w, x_2178.z));
        let x_2181 : vec2<f32> = u_xlat58;
        let x_2184 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2187 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_2181.x, x_2181.y, x_2181.x, x_2181.y) * vec4<f32>(x_2184.x, x_2184.y, x_2184.x, x_2184.y)) + vec4<f32>(x_2187.x, x_2187.w, x_2187.z, x_2187.w));
        let x_2190 : vec4<f32> = u_xlat7;
        let x_2192 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_2190.x, x_2190.x, x_2190.x, x_2190.y) * vec4<f32>(x_2192.z, x_2192.w, x_2192.y, x_2192.z));
        let x_2195 : vec4<f32> = u_xlat7;
        let x_2197 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_2195.y, x_2195.y, x_2195.z, x_2195.z) * x_2197);
        let x_2200 : f32 = u_xlat7.z;
        let x_2202 : f32 = u_xlat8.y;
        u_xlat58.x = (x_2200 * x_2202);
        let x_2206 : vec4<f32> = u_xlat11;
        let x_2207 : vec2<f32> = vec2<f32>(x_2206.x, x_2206.y);
        let x_2209 : f32 = vs_INTERP3.z;
        txVec34 = vec3<f32>(x_2207.x, x_2207.y, x_2209);
        let x_2217 : vec3<f32> = txVec34;
        let x_2219 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2217.xy, x_2217.z);
        u_xlat84 = x_2219;
        let x_2221 : vec4<f32> = u_xlat11;
        let x_2222 : vec2<f32> = vec2<f32>(x_2221.z, x_2221.w);
        let x_2224 : f32 = vs_INTERP3.z;
        txVec35 = vec3<f32>(x_2222.x, x_2222.y, x_2224);
        let x_2231 : vec3<f32> = txVec35;
        let x_2233 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2231.xy, x_2231.z);
        u_xlat7.x = x_2233;
        let x_2236 : f32 = u_xlat7.x;
        let x_2238 : f32 = u_xlat14.y;
        u_xlat7.x = (x_2236 * x_2238);
        let x_2242 : f32 = u_xlat14.x;
        let x_2243 : f32 = u_xlat84;
        let x_2246 : f32 = u_xlat7.x;
        u_xlat84 = ((x_2242 * x_2243) + x_2246);
        let x_2249 : vec4<f32> = u_xlat12;
        let x_2250 : vec2<f32> = vec2<f32>(x_2249.x, x_2249.y);
        let x_2252 : f32 = vs_INTERP3.z;
        txVec36 = vec3<f32>(x_2250.x, x_2250.y, x_2252);
        let x_2259 : vec3<f32> = txVec36;
        let x_2261 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2259.xy, x_2259.z);
        u_xlat7.x = x_2261;
        let x_2264 : f32 = u_xlat14.z;
        let x_2266 : f32 = u_xlat7.x;
        let x_2268 : f32 = u_xlat84;
        u_xlat84 = ((x_2264 * x_2266) + x_2268);
        let x_2271 : vec4<f32> = u_xlat10;
        let x_2272 : vec2<f32> = vec2<f32>(x_2271.x, x_2271.y);
        let x_2274 : f32 = vs_INTERP3.z;
        txVec37 = vec3<f32>(x_2272.x, x_2272.y, x_2274);
        let x_2281 : vec3<f32> = txVec37;
        let x_2283 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2281.xy, x_2281.z);
        u_xlat7.x = x_2283;
        let x_2286 : f32 = u_xlat14.w;
        let x_2288 : f32 = u_xlat7.x;
        let x_2290 : f32 = u_xlat84;
        u_xlat84 = ((x_2286 * x_2288) + x_2290);
        let x_2293 : vec4<f32> = u_xlat13;
        let x_2294 : vec2<f32> = vec2<f32>(x_2293.x, x_2293.y);
        let x_2296 : f32 = vs_INTERP3.z;
        txVec38 = vec3<f32>(x_2294.x, x_2294.y, x_2296);
        let x_2303 : vec3<f32> = txVec38;
        let x_2305 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2303.xy, x_2303.z);
        u_xlat7.x = x_2305;
        let x_2308 : f32 = u_xlat15.x;
        let x_2310 : f32 = u_xlat7.x;
        let x_2312 : f32 = u_xlat84;
        u_xlat84 = ((x_2308 * x_2310) + x_2312);
        let x_2315 : vec4<f32> = u_xlat13;
        let x_2316 : vec2<f32> = vec2<f32>(x_2315.z, x_2315.w);
        let x_2318 : f32 = vs_INTERP3.z;
        txVec39 = vec3<f32>(x_2316.x, x_2316.y, x_2318);
        let x_2325 : vec3<f32> = txVec39;
        let x_2327 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2325.xy, x_2325.z);
        u_xlat7.x = x_2327;
        let x_2330 : f32 = u_xlat15.y;
        let x_2332 : f32 = u_xlat7.x;
        let x_2334 : f32 = u_xlat84;
        u_xlat84 = ((x_2330 * x_2332) + x_2334);
        let x_2337 : vec4<f32> = u_xlat10;
        let x_2338 : vec2<f32> = vec2<f32>(x_2337.z, x_2337.w);
        let x_2340 : f32 = vs_INTERP3.z;
        txVec40 = vec3<f32>(x_2338.x, x_2338.y, x_2340);
        let x_2347 : vec3<f32> = txVec40;
        let x_2349 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2347.xy, x_2347.z);
        u_xlat7.x = x_2349;
        let x_2352 : f32 = u_xlat15.z;
        let x_2354 : f32 = u_xlat7.x;
        let x_2356 : f32 = u_xlat84;
        u_xlat84 = ((x_2352 * x_2354) + x_2356);
        let x_2359 : vec4<f32> = u_xlat9;
        let x_2360 : vec2<f32> = vec2<f32>(x_2359.x, x_2359.y);
        let x_2362 : f32 = vs_INTERP3.z;
        txVec41 = vec3<f32>(x_2360.x, x_2360.y, x_2362);
        let x_2369 : vec3<f32> = txVec41;
        let x_2371 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2369.xy, x_2369.z);
        u_xlat7.x = x_2371;
        let x_2374 : f32 = u_xlat15.w;
        let x_2376 : f32 = u_xlat7.x;
        let x_2378 : f32 = u_xlat84;
        u_xlat84 = ((x_2374 * x_2376) + x_2378);
        let x_2381 : vec4<f32> = u_xlat9;
        let x_2382 : vec2<f32> = vec2<f32>(x_2381.z, x_2381.w);
        let x_2384 : f32 = vs_INTERP3.z;
        txVec42 = vec3<f32>(x_2382.x, x_2382.y, x_2384);
        let x_2391 : vec3<f32> = txVec42;
        let x_2393 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2391.xy, x_2391.z);
        u_xlat7.x = x_2393;
        let x_2396 : f32 = u_xlat58.x;
        let x_2398 : f32 = u_xlat7.x;
        let x_2400 : f32 = u_xlat84;
        u_xlat78 = ((x_2396 * x_2398) + x_2400);
      } else {
        let x_2403 : vec4<f32> = vs_INTERP3;
        let x_2406 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_2403.x, x_2403.y) * vec2<f32>(x_2406.z, x_2406.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2410 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_2410);
        let x_2412 : vec4<f32> = vs_INTERP3;
        let x_2415 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2418 : vec2<f32> = u_xlat58;
        let x_2420 : vec2<f32> = ((vec2<f32>(x_2412.x, x_2412.y) * vec2<f32>(x_2415.z, x_2415.w)) + -(x_2418));
        let x_2421 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2420.x, x_2420.y, x_2421.z, x_2421.w);
        let x_2423 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2423.x, x_2423.x, x_2423.y, x_2423.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2426 : vec4<f32> = u_xlat8;
        let x_2428 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2426.x, x_2426.x, x_2426.z, x_2426.z) * vec4<f32>(x_2428.x, x_2428.x, x_2428.z, x_2428.z));
        let x_2431 : vec4<f32> = u_xlat9;
        let x_2433 : vec2<f32> = (vec2<f32>(x_2431.y, x_2431.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2434 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2434.x, x_2433.x, x_2434.z, x_2433.y);
        let x_2436 : vec4<f32> = u_xlat9;
        let x_2439 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_2436.x, x_2436.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2439.x, x_2439.y)));
        let x_2443 : vec4<f32> = u_xlat7;
        let x_2446 : vec2<f32> = (-(vec2<f32>(x_2443.x, x_2443.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2447 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2446.x, x_2447.y, x_2446.y, x_2447.w);
        let x_2449 : vec4<f32> = u_xlat7;
        let x_2451 : vec2<f32> = min(vec2<f32>(x_2449.x, x_2449.y), vec2<f32>(0.0f, 0.0f));
        let x_2452 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2451.x, x_2451.y, x_2452.z, x_2452.w);
        let x_2454 : vec4<f32> = u_xlat9;
        let x_2457 : vec4<f32> = u_xlat9;
        let x_2460 : vec4<f32> = u_xlat8;
        let x_2462 : vec2<f32> = ((-(vec2<f32>(x_2454.x, x_2454.y)) * vec2<f32>(x_2457.x, x_2457.y)) + vec2<f32>(x_2460.x, x_2460.z));
        let x_2463 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2462.x, x_2463.y, x_2462.y, x_2463.w);
        let x_2465 : vec4<f32> = u_xlat7;
        let x_2467 : vec2<f32> = max(vec2<f32>(x_2465.x, x_2465.y), vec2<f32>(0.0f, 0.0f));
        let x_2468 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2467.x, x_2467.y, x_2468.z, x_2468.w);
        let x_2470 : vec4<f32> = u_xlat9;
        let x_2473 : vec4<f32> = u_xlat9;
        let x_2476 : vec4<f32> = u_xlat8;
        let x_2478 : vec2<f32> = ((-(vec2<f32>(x_2470.x, x_2470.y)) * vec2<f32>(x_2473.x, x_2473.y)) + vec2<f32>(x_2476.y, x_2476.w));
        let x_2479 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2479.x, x_2478.x, x_2479.z, x_2478.y);
        let x_2481 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2481 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2484 : f32 = u_xlat8.y;
        u_xlat9.z = (x_2484 * 0.08163200318813323975f);
        let x_2487 : vec2<f32> = u_xlat59;
        let x_2489 : vec2<f32> = (vec2<f32>(x_2487.y, x_2487.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2490 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2489.x, x_2489.y, x_2490.z, x_2490.w);
        let x_2492 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_2492.x, x_2492.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2496 : f32 = u_xlat8.w;
        u_xlat11.z = (x_2496 * 0.08163200318813323975f);
        let x_2500 : f32 = u_xlat11.y;
        u_xlat9.x = x_2500;
        let x_2502 : vec4<f32> = u_xlat7;
        let x_2505 : vec2<f32> = ((vec2<f32>(x_2502.x, x_2502.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2506 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2506.x, x_2505.x, x_2506.z, x_2505.y);
        let x_2508 : vec4<f32> = u_xlat7;
        let x_2511 : vec2<f32> = ((vec2<f32>(x_2508.x, x_2508.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2512 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2511.x, x_2512.y, x_2511.y, x_2512.w);
        let x_2515 : f32 = u_xlat59.x;
        u_xlat8.y = x_2515;
        let x_2518 : f32 = u_xlat10.y;
        u_xlat8.w = x_2518;
        let x_2520 : vec4<f32> = u_xlat8;
        let x_2521 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2520 + x_2521);
        let x_2523 : vec4<f32> = u_xlat7;
        let x_2526 : vec2<f32> = ((vec2<f32>(x_2523.y, x_2523.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2527 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2527.x, x_2526.x, x_2527.z, x_2526.y);
        let x_2529 : vec4<f32> = u_xlat7;
        let x_2532 : vec2<f32> = ((vec2<f32>(x_2529.y, x_2529.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2533 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2532.x, x_2533.y, x_2532.y, x_2533.w);
        let x_2536 : f32 = u_xlat59.y;
        u_xlat10.y = x_2536;
        let x_2538 : vec4<f32> = u_xlat10;
        let x_2539 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_2538 + x_2539);
        let x_2541 : vec4<f32> = u_xlat8;
        let x_2542 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_2541 / x_2542);
        let x_2544 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2544 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2546 : vec4<f32> = u_xlat10;
        let x_2547 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_2546 / x_2547);
        let x_2549 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2549 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2551 : vec4<f32> = u_xlat8;
        let x_2554 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_2551.w, x_2551.x, x_2551.y, x_2551.z) * vec4<f32>(x_2554.x, x_2554.x, x_2554.x, x_2554.x));
        let x_2557 : vec4<f32> = u_xlat10;
        let x_2560 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_2557.x, x_2557.w, x_2557.y, x_2557.z) * vec4<f32>(x_2560.y, x_2560.y, x_2560.y, x_2560.y));
        let x_2563 : vec4<f32> = u_xlat8;
        let x_2564 : vec3<f32> = vec3<f32>(x_2563.y, x_2563.z, x_2563.w);
        let x_2565 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2564.x, x_2565.y, x_2564.y, x_2564.z);
        let x_2568 : f32 = u_xlat10.x;
        u_xlat11.y = x_2568;
        let x_2570 : vec2<f32> = u_xlat58;
        let x_2573 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2576 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2570.x, x_2570.y, x_2570.x, x_2570.y) * vec4<f32>(x_2573.x, x_2573.y, x_2573.x, x_2573.y)) + vec4<f32>(x_2576.x, x_2576.y, x_2576.z, x_2576.y));
        let x_2579 : vec2<f32> = u_xlat58;
        let x_2581 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2584 : vec4<f32> = u_xlat11;
        let x_2586 : vec2<f32> = ((x_2579 * vec2<f32>(x_2581.x, x_2581.y)) + vec2<f32>(x_2584.w, x_2584.y));
        let x_2587 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2586.x, x_2586.y, x_2587.z, x_2587.w);
        let x_2590 : f32 = u_xlat11.y;
        u_xlat8.y = x_2590;
        let x_2593 : f32 = u_xlat10.z;
        u_xlat11.y = x_2593;
        let x_2595 : vec2<f32> = u_xlat58;
        let x_2598 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2601 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_2595.x, x_2595.y, x_2595.x, x_2595.y) * vec4<f32>(x_2598.x, x_2598.y, x_2598.x, x_2598.y)) + vec4<f32>(x_2601.x, x_2601.y, x_2601.z, x_2601.y));
        let x_2604 : vec2<f32> = u_xlat58;
        let x_2606 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2609 : vec4<f32> = u_xlat11;
        u_xlat65 = ((x_2604 * vec2<f32>(x_2606.x, x_2606.y)) + vec2<f32>(x_2609.w, x_2609.y));
        let x_2613 : f32 = u_xlat11.y;
        u_xlat8.z = x_2613;
        let x_2615 : vec2<f32> = u_xlat58;
        let x_2618 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2621 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_2615.x, x_2615.y, x_2615.x, x_2615.y) * vec4<f32>(x_2618.x, x_2618.y, x_2618.x, x_2618.y)) + vec4<f32>(x_2621.x, x_2621.y, x_2621.x, x_2621.z));
        let x_2625 : f32 = u_xlat10.w;
        u_xlat11.y = x_2625;
        let x_2627 : vec2<f32> = u_xlat58;
        let x_2630 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2633 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_2627.x, x_2627.y, x_2627.x, x_2627.y) * vec4<f32>(x_2630.x, x_2630.y, x_2630.x, x_2630.y)) + vec4<f32>(x_2633.x, x_2633.y, x_2633.z, x_2633.y));
        let x_2637 : vec2<f32> = u_xlat58;
        let x_2639 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2642 : vec4<f32> = u_xlat11;
        u_xlat34 = ((x_2637 * vec2<f32>(x_2639.x, x_2639.y)) + vec2<f32>(x_2642.w, x_2642.y));
        let x_2646 : f32 = u_xlat11.y;
        u_xlat8.w = x_2646;
        let x_2648 : vec2<f32> = u_xlat58;
        let x_2650 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2653 : vec4<f32> = u_xlat8;
        let x_2655 : vec2<f32> = ((x_2648 * vec2<f32>(x_2650.x, x_2650.y)) + vec2<f32>(x_2653.x, x_2653.w));
        let x_2656 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_2655.x, x_2655.y, x_2656.z, x_2656.w);
        let x_2658 : vec4<f32> = u_xlat11;
        let x_2659 : vec3<f32> = vec3<f32>(x_2658.x, x_2658.z, x_2658.w);
        let x_2660 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2659.x, x_2660.y, x_2659.y, x_2659.z);
        let x_2662 : vec2<f32> = u_xlat58;
        let x_2665 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2668 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_2662.x, x_2662.y, x_2662.x, x_2662.y) * vec4<f32>(x_2665.x, x_2665.y, x_2665.x, x_2665.y)) + vec4<f32>(x_2668.x, x_2668.y, x_2668.z, x_2668.y));
        let x_2672 : vec2<f32> = u_xlat58;
        let x_2674 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2677 : vec4<f32> = u_xlat10;
        u_xlat62 = ((x_2672 * vec2<f32>(x_2674.x, x_2674.y)) + vec2<f32>(x_2677.w, x_2677.y));
        let x_2681 : f32 = u_xlat8.x;
        u_xlat10.x = x_2681;
        let x_2683 : vec2<f32> = u_xlat58;
        let x_2685 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2688 : vec4<f32> = u_xlat10;
        u_xlat58 = ((x_2683 * vec2<f32>(x_2685.x, x_2685.y)) + vec2<f32>(x_2688.x, x_2688.y));
        let x_2691 : vec4<f32> = u_xlat7;
        let x_2693 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_2691.x, x_2691.x, x_2691.x, x_2691.x) * x_2693);
        let x_2696 : vec4<f32> = u_xlat7;
        let x_2698 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_2696.y, x_2696.y, x_2696.y, x_2696.y) * x_2698);
        let x_2701 : vec4<f32> = u_xlat7;
        let x_2703 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_2701.z, x_2701.z, x_2701.z, x_2701.z) * x_2703);
        let x_2705 : vec4<f32> = u_xlat7;
        let x_2707 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_2705.w, x_2705.w, x_2705.w, x_2705.w) * x_2707);
        let x_2710 : vec4<f32> = u_xlat12;
        let x_2711 : vec2<f32> = vec2<f32>(x_2710.x, x_2710.y);
        let x_2713 : f32 = vs_INTERP3.z;
        txVec43 = vec3<f32>(x_2711.x, x_2711.y, x_2713);
        let x_2720 : vec3<f32> = txVec43;
        let x_2722 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2720.xy, x_2720.z);
        u_xlat8.x = x_2722;
        let x_2725 : vec4<f32> = u_xlat12;
        let x_2726 : vec2<f32> = vec2<f32>(x_2725.z, x_2725.w);
        let x_2728 : f32 = vs_INTERP3.z;
        txVec44 = vec3<f32>(x_2726.x, x_2726.y, x_2728);
        let x_2736 : vec3<f32> = txVec44;
        let x_2738 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2736.xy, x_2736.z);
        u_xlat86 = x_2738;
        let x_2739 : f32 = u_xlat86;
        let x_2741 : f32 = u_xlat18.y;
        u_xlat86 = (x_2739 * x_2741);
        let x_2744 : f32 = u_xlat18.x;
        let x_2746 : f32 = u_xlat8.x;
        let x_2748 : f32 = u_xlat86;
        u_xlat8.x = ((x_2744 * x_2746) + x_2748);
        let x_2752 : vec4<f32> = u_xlat13;
        let x_2753 : vec2<f32> = vec2<f32>(x_2752.x, x_2752.y);
        let x_2755 : f32 = vs_INTERP3.z;
        txVec45 = vec3<f32>(x_2753.x, x_2753.y, x_2755);
        let x_2762 : vec3<f32> = txVec45;
        let x_2764 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2762.xy, x_2762.z);
        u_xlat86 = x_2764;
        let x_2766 : f32 = u_xlat18.z;
        let x_2767 : f32 = u_xlat86;
        let x_2770 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2766 * x_2767) + x_2770);
        let x_2774 : vec4<f32> = u_xlat15;
        let x_2775 : vec2<f32> = vec2<f32>(x_2774.x, x_2774.y);
        let x_2777 : f32 = vs_INTERP3.z;
        txVec46 = vec3<f32>(x_2775.x, x_2775.y, x_2777);
        let x_2784 : vec3<f32> = txVec46;
        let x_2786 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2784.xy, x_2784.z);
        u_xlat86 = x_2786;
        let x_2788 : f32 = u_xlat18.w;
        let x_2789 : f32 = u_xlat86;
        let x_2792 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2788 * x_2789) + x_2792);
        let x_2796 : vec4<f32> = u_xlat14;
        let x_2797 : vec2<f32> = vec2<f32>(x_2796.x, x_2796.y);
        let x_2799 : f32 = vs_INTERP3.z;
        txVec47 = vec3<f32>(x_2797.x, x_2797.y, x_2799);
        let x_2806 : vec3<f32> = txVec47;
        let x_2808 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2806.xy, x_2806.z);
        u_xlat86 = x_2808;
        let x_2810 : f32 = u_xlat19.x;
        let x_2811 : f32 = u_xlat86;
        let x_2814 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2810 * x_2811) + x_2814);
        let x_2818 : vec4<f32> = u_xlat14;
        let x_2819 : vec2<f32> = vec2<f32>(x_2818.z, x_2818.w);
        let x_2821 : f32 = vs_INTERP3.z;
        txVec48 = vec3<f32>(x_2819.x, x_2819.y, x_2821);
        let x_2828 : vec3<f32> = txVec48;
        let x_2830 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2828.xy, x_2828.z);
        u_xlat86 = x_2830;
        let x_2832 : f32 = u_xlat19.y;
        let x_2833 : f32 = u_xlat86;
        let x_2836 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2832 * x_2833) + x_2836);
        let x_2840 : vec2<f32> = u_xlat65;
        let x_2842 : f32 = vs_INTERP3.z;
        txVec49 = vec3<f32>(x_2840.x, x_2840.y, x_2842);
        let x_2849 : vec3<f32> = txVec49;
        let x_2851 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2849.xy, x_2849.z);
        u_xlat86 = x_2851;
        let x_2853 : f32 = u_xlat19.z;
        let x_2854 : f32 = u_xlat86;
        let x_2857 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2853 * x_2854) + x_2857);
        let x_2861 : vec4<f32> = u_xlat15;
        let x_2862 : vec2<f32> = vec2<f32>(x_2861.z, x_2861.w);
        let x_2864 : f32 = vs_INTERP3.z;
        txVec50 = vec3<f32>(x_2862.x, x_2862.y, x_2864);
        let x_2871 : vec3<f32> = txVec50;
        let x_2873 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2871.xy, x_2871.z);
        u_xlat86 = x_2873;
        let x_2875 : f32 = u_xlat19.w;
        let x_2876 : f32 = u_xlat86;
        let x_2879 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2875 * x_2876) + x_2879);
        let x_2883 : vec4<f32> = u_xlat16;
        let x_2884 : vec2<f32> = vec2<f32>(x_2883.x, x_2883.y);
        let x_2886 : f32 = vs_INTERP3.z;
        txVec51 = vec3<f32>(x_2884.x, x_2884.y, x_2886);
        let x_2893 : vec3<f32> = txVec51;
        let x_2895 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2893.xy, x_2893.z);
        u_xlat86 = x_2895;
        let x_2897 : f32 = u_xlat20.x;
        let x_2898 : f32 = u_xlat86;
        let x_2901 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2897 * x_2898) + x_2901);
        let x_2905 : vec4<f32> = u_xlat16;
        let x_2906 : vec2<f32> = vec2<f32>(x_2905.z, x_2905.w);
        let x_2908 : f32 = vs_INTERP3.z;
        txVec52 = vec3<f32>(x_2906.x, x_2906.y, x_2908);
        let x_2915 : vec3<f32> = txVec52;
        let x_2917 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2915.xy, x_2915.z);
        u_xlat86 = x_2917;
        let x_2919 : f32 = u_xlat20.y;
        let x_2920 : f32 = u_xlat86;
        let x_2923 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2919 * x_2920) + x_2923);
        let x_2927 : vec2<f32> = u_xlat34;
        let x_2929 : f32 = vs_INTERP3.z;
        txVec53 = vec3<f32>(x_2927.x, x_2927.y, x_2929);
        let x_2936 : vec3<f32> = txVec53;
        let x_2938 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2936.xy, x_2936.z);
        u_xlat34.x = x_2938;
        let x_2941 : f32 = u_xlat20.z;
        let x_2943 : f32 = u_xlat34.x;
        let x_2946 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2941 * x_2943) + x_2946);
        let x_2950 : vec4<f32> = u_xlat17;
        let x_2951 : vec2<f32> = vec2<f32>(x_2950.x, x_2950.y);
        let x_2953 : f32 = vs_INTERP3.z;
        txVec54 = vec3<f32>(x_2951.x, x_2951.y, x_2953);
        let x_2960 : vec3<f32> = txVec54;
        let x_2962 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2960.xy, x_2960.z);
        u_xlat34.x = x_2962;
        let x_2965 : f32 = u_xlat20.w;
        let x_2967 : f32 = u_xlat34.x;
        let x_2970 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2965 * x_2967) + x_2970);
        let x_2974 : vec4<f32> = u_xlat11;
        let x_2975 : vec2<f32> = vec2<f32>(x_2974.x, x_2974.y);
        let x_2977 : f32 = vs_INTERP3.z;
        txVec55 = vec3<f32>(x_2975.x, x_2975.y, x_2977);
        let x_2984 : vec3<f32> = txVec55;
        let x_2986 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2984.xy, x_2984.z);
        u_xlat34.x = x_2986;
        let x_2989 : f32 = u_xlat7.x;
        let x_2991 : f32 = u_xlat34.x;
        let x_2994 : f32 = u_xlat8.x;
        u_xlat7.x = ((x_2989 * x_2991) + x_2994);
        let x_2998 : vec4<f32> = u_xlat11;
        let x_2999 : vec2<f32> = vec2<f32>(x_2998.z, x_2998.w);
        let x_3001 : f32 = vs_INTERP3.z;
        txVec56 = vec3<f32>(x_2999.x, x_2999.y, x_3001);
        let x_3008 : vec3<f32> = txVec56;
        let x_3010 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3008.xy, x_3008.z);
        u_xlat8.x = x_3010;
        let x_3013 : f32 = u_xlat7.y;
        let x_3015 : f32 = u_xlat8.x;
        let x_3018 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_3013 * x_3015) + x_3018);
        let x_3022 : vec2<f32> = u_xlat62;
        let x_3024 : f32 = vs_INTERP3.z;
        txVec57 = vec3<f32>(x_3022.x, x_3022.y, x_3024);
        let x_3031 : vec3<f32> = txVec57;
        let x_3033 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3031.xy, x_3031.z);
        u_xlat33.x = x_3033;
        let x_3036 : f32 = u_xlat7.z;
        let x_3038 : f32 = u_xlat33.x;
        let x_3041 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_3036 * x_3038) + x_3041);
        let x_3045 : vec2<f32> = u_xlat58;
        let x_3047 : f32 = vs_INTERP3.z;
        txVec58 = vec3<f32>(x_3045.x, x_3045.y, x_3047);
        let x_3054 : vec3<f32> = txVec58;
        let x_3056 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3054.xy, x_3054.z);
        u_xlat58.x = x_3056;
        let x_3059 : f32 = u_xlat7.w;
        let x_3061 : f32 = u_xlat58.x;
        let x_3064 : f32 = u_xlat7.x;
        u_xlat78 = ((x_3059 * x_3061) + x_3064);
      }
    }
  } else {
    let x_3068 : vec4<f32> = vs_INTERP3;
    let x_3069 : vec2<f32> = vec2<f32>(x_3068.x, x_3068.y);
    let x_3071 : f32 = vs_INTERP3.z;
    txVec59 = vec3<f32>(x_3069.x, x_3069.y, x_3071);
    let x_3078 : vec3<f32> = txVec59;
    let x_3080 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3078.xy, x_3078.z);
    u_xlat78 = x_3080;
  }
  let x_3081 : f32 = u_xlat78;
  let x_3083 : f32 = x_131.x_MainLightShadowParams.x;
  let x_3086 : f32 = u_xlat4.x;
  u_xlat78 = ((x_3081 * x_3083) + x_3086);
  let x_3090 : f32 = vs_INTERP3.z;
  u_xlatb4 = (0.0f >= x_3090);
  let x_3093 : f32 = vs_INTERP3.z;
  u_xlatb58.x = (x_3093 >= 1.0f);
  let x_3096 : bool = u_xlatb4;
  let x_3098 : bool = u_xlatb58.x;
  u_xlatb4 = (x_3096 | x_3098);
  let x_3100 : bool = u_xlatb4;
  let x_3101 : f32 = u_xlat78;
  u_xlat78 = select(x_3101, 1.0f, x_3100);
  let x_3103 : vec3<f32> = vs_INTERP8;
  let x_3105 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  let x_3107 : vec3<f32> = (x_3103 + -(x_3105));
  let x_3108 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3107.x, x_3107.y, x_3107.z, x_3108.w);
  let x_3110 : vec4<f32> = u_xlat7;
  let x_3112 : vec4<f32> = u_xlat7;
  u_xlat4.x = dot(vec3<f32>(x_3110.x, x_3110.y, x_3110.z), vec3<f32>(x_3112.x, x_3112.y, x_3112.z));
  let x_3117 : f32 = u_xlat4.x;
  let x_3119 : f32 = x_131.x_MainLightShadowParams.z;
  let x_3122 : f32 = x_131.x_MainLightShadowParams.w;
  u_xlat58.x = ((x_3117 * x_3119) + x_3122);
  let x_3126 : f32 = u_xlat58.x;
  u_xlat58.x = clamp(x_3126, 0.0f, 1.0f);
  let x_3129 : f32 = u_xlat78;
  u_xlat84 = (-(x_3129) + 1.0f);
  let x_3133 : f32 = u_xlat58.x;
  let x_3134 : f32 = u_xlat84;
  let x_3136 : f32 = u_xlat78;
  u_xlat78 = ((x_3133 * x_3134) + x_3136);
  let x_3145 : f32 = x_3143.x_MainLightCookieTextureFormat;
  u_xlatb58.x = !((x_3145 == -1.0f));
  let x_3149 : bool = u_xlatb58.x;
  if (x_3149) {
    let x_3152 : vec3<f32> = vs_INTERP8;
    let x_3155 : vec4<f32> = x_3143.x_MainLightWorldToLight[1i];
    u_xlat58 = (vec2<f32>(x_3152.y, x_3152.y) * vec2<f32>(x_3155.x, x_3155.y));
    let x_3159 : vec4<f32> = x_3143.x_MainLightWorldToLight[0i];
    let x_3161 : vec3<f32> = vs_INTERP8;
    let x_3164 : vec2<f32> = u_xlat58;
    u_xlat58 = ((vec2<f32>(x_3159.x, x_3159.y) * vec2<f32>(x_3161.x, x_3161.x)) + x_3164);
    let x_3167 : vec4<f32> = x_3143.x_MainLightWorldToLight[2i];
    let x_3169 : vec3<f32> = vs_INTERP8;
    let x_3172 : vec2<f32> = u_xlat58;
    u_xlat58 = ((vec2<f32>(x_3167.x, x_3167.y) * vec2<f32>(x_3169.z, x_3169.z)) + x_3172);
    let x_3174 : vec2<f32> = u_xlat58;
    let x_3176 : vec4<f32> = x_3143.x_MainLightWorldToLight[3i];
    u_xlat58 = (x_3174 + vec2<f32>(x_3176.x, x_3176.y));
    let x_3179 : vec2<f32> = u_xlat58;
    u_xlat58 = ((x_3179 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_3187 : vec2<f32> = u_xlat58;
    let x_3189 : f32 = x_53.x_GlobalMipBias.x;
    let x_3190 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_3187, x_3189);
    u_xlat7 = x_3190;
    let x_3192 : f32 = x_3143.x_MainLightCookieTextureFormat;
    let x_3194 : f32 = x_3143.x_MainLightCookieTextureFormat;
    let x_3196 : f32 = x_3143.x_MainLightCookieTextureFormat;
    let x_3198 : f32 = x_3143.x_MainLightCookieTextureFormat;
    let x_3199 : vec4<f32> = vec4<f32>(x_3192, x_3194, x_3196, x_3198);
    let x_3207 : vec4<bool> = (vec4<f32>(x_3199.x, x_3199.y, x_3199.z, x_3199.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb58 = vec2<bool>(x_3207.x, x_3207.y);
    let x_3210 : bool = u_xlatb58.y;
    if (x_3210) {
      let x_3215 : f32 = u_xlat7.w;
      x_3211 = x_3215;
    } else {
      let x_3218 : f32 = u_xlat7.x;
      x_3211 = x_3218;
    }
    let x_3219 : f32 = x_3211;
    u_xlat84 = x_3219;
    let x_3221 : bool = u_xlatb58.x;
    if (x_3221) {
      let x_3225 : vec4<f32> = u_xlat7;
      x_3222 = vec3<f32>(x_3225.x, x_3225.y, x_3225.z);
    } else {
      let x_3228 : f32 = u_xlat84;
      x_3222 = vec3<f32>(x_3228, x_3228, x_3228);
    }
    let x_3230 : vec3<f32> = x_3222;
    let x_3231 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3230.x, x_3230.y, x_3230.z, x_3231.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_3237 : vec4<f32> = u_xlat7;
  let x_3240 : vec4<f32> = x_53.x_MainLightColor;
  let x_3242 : vec3<f32> = (vec3<f32>(x_3237.x, x_3237.y, x_3237.z) * vec3<f32>(x_3240.x, x_3240.y, x_3240.z));
  let x_3243 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3242.x, x_3242.y, x_3242.z, x_3243.w);
  let x_3245 : vec3<f32> = u_xlat29;
  let x_3247 : vec4<f32> = u_xlat5;
  u_xlat58.x = dot(-(x_3245), vec3<f32>(x_3247.x, x_3247.y, x_3247.z));
  let x_3252 : f32 = u_xlat58.x;
  let x_3254 : f32 = u_xlat58.x;
  u_xlat58.x = (x_3252 + x_3254);
  let x_3257 : vec4<f32> = u_xlat5;
  let x_3259 : vec2<f32> = u_xlat58;
  let x_3263 : vec3<f32> = u_xlat29;
  let x_3265 : vec3<f32> = ((vec3<f32>(x_3257.x, x_3257.y, x_3257.z) * -(vec3<f32>(x_3259.x, x_3259.x, x_3259.x))) + -(x_3263));
  let x_3266 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3265.x, x_3265.y, x_3265.z, x_3266.w);
  let x_3268 : vec4<f32> = u_xlat5;
  let x_3270 : vec3<f32> = u_xlat29;
  u_xlat58.x = dot(vec3<f32>(x_3268.x, x_3268.y, x_3268.z), x_3270);
  let x_3274 : f32 = u_xlat58.x;
  u_xlat58.x = clamp(x_3274, 0.0f, 1.0f);
  let x_3278 : f32 = u_xlat58.x;
  u_xlat58.x = (-(x_3278) + 1.0f);
  let x_3283 : f32 = u_xlat58.x;
  let x_3285 : f32 = u_xlat58.x;
  u_xlat58.x = (x_3283 * x_3285);
  let x_3289 : f32 = u_xlat58.x;
  let x_3291 : f32 = u_xlat58.x;
  u_xlat58.x = (x_3289 * x_3291);
  let x_3294 : f32 = u_xlat79;
  u_xlat84 = ((-(x_3294) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3300 : f32 = u_xlat79;
  let x_3301 : f32 = u_xlat84;
  u_xlat79 = (x_3300 * x_3301);
  let x_3303 : f32 = u_xlat79;
  u_xlat79 = (x_3303 * 6.0f);
  let x_3314 : vec4<f32> = u_xlat8;
  let x_3316 : f32 = u_xlat79;
  let x_3317 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_3314.x, x_3314.y, x_3314.z), x_3316);
  u_xlat8 = x_3317;
  let x_3319 : f32 = u_xlat8.w;
  u_xlat79 = (x_3319 + -1.0f);
  let x_3322 : f32 = x_1585.unity_SpecCube0_HDR.w;
  let x_3323 : f32 = u_xlat79;
  u_xlat79 = ((x_3322 * x_3323) + 1.0f);
  let x_3326 : f32 = u_xlat79;
  u_xlat79 = max(x_3326, 0.0f);
  let x_3328 : f32 = u_xlat79;
  u_xlat79 = log2(x_3328);
  let x_3330 : f32 = u_xlat79;
  let x_3332 : f32 = x_1585.unity_SpecCube0_HDR.y;
  u_xlat79 = (x_3330 * x_3332);
  let x_3334 : f32 = u_xlat79;
  u_xlat79 = exp2(x_3334);
  let x_3336 : f32 = u_xlat79;
  let x_3338 : f32 = x_1585.unity_SpecCube0_HDR.x;
  u_xlat79 = (x_3336 * x_3338);
  let x_3340 : vec4<f32> = u_xlat8;
  let x_3342 : f32 = u_xlat79;
  let x_3344 : vec3<f32> = (vec3<f32>(x_3340.x, x_3340.y, x_3340.z) * vec3<f32>(x_3342, x_3342, x_3342));
  let x_3345 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3344.x, x_3344.y, x_3344.z, x_3345.w);
  let x_3347 : f32 = u_xlat80;
  let x_3349 : f32 = u_xlat80;
  let x_3353 : vec2<f32> = ((vec2<f32>(x_3347, x_3347) * vec2<f32>(x_3349, x_3349)) + vec2<f32>(-1.0f, 1.0f));
  let x_3354 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_3353.x, x_3353.y, x_3354.z, x_3354.w);
  let x_3357 : f32 = u_xlat9.y;
  u_xlat79 = (1.0f / x_3357);
  let x_3360 : f32 = u_xlat3.x;
  u_xlat80 = (x_3360 + -0.03999999910593032837f);
  let x_3364 : f32 = u_xlat58.x;
  let x_3365 : f32 = u_xlat80;
  u_xlat80 = ((x_3364 * x_3365) + 0.03999999910593032837f);
  let x_3369 : f32 = u_xlat79;
  let x_3370 : f32 = u_xlat80;
  u_xlat79 = (x_3369 * x_3370);
  let x_3372 : f32 = u_xlat79;
  let x_3374 : vec4<f32> = u_xlat8;
  let x_3376 : vec3<f32> = (vec3<f32>(x_3372, x_3372, x_3372) * vec3<f32>(x_3374.x, x_3374.y, x_3374.z));
  let x_3377 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3376.x, x_3376.y, x_3376.z, x_3377.w);
  let x_3379 : vec3<f32> = u_xlat30;
  let x_3380 : vec3<f32> = u_xlat2;
  let x_3382 : vec4<f32> = u_xlat8;
  u_xlat30 = ((x_3379 * x_3380) + vec3<f32>(x_3382.x, x_3382.y, x_3382.z));
  let x_3385 : f32 = u_xlat78;
  let x_3387 : f32 = x_1585.unity_LightData.z;
  u_xlat78 = (x_3385 * x_3387);
  let x_3389 : vec4<f32> = u_xlat5;
  let x_3392 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat79 = dot(vec3<f32>(x_3389.x, x_3389.y, x_3389.z), vec3<f32>(x_3392.x, x_3392.y, x_3392.z));
  let x_3395 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3395, 0.0f, 1.0f);
  let x_3397 : f32 = u_xlat78;
  let x_3398 : f32 = u_xlat79;
  u_xlat78 = (x_3397 * x_3398);
  let x_3400 : f32 = u_xlat78;
  let x_3402 : vec4<f32> = u_xlat7;
  let x_3404 : vec3<f32> = (vec3<f32>(x_3400, x_3400, x_3400) * vec3<f32>(x_3402.x, x_3402.y, x_3402.z));
  let x_3405 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3404.x, x_3404.y, x_3404.z, x_3405.w);
  let x_3407 : vec3<f32> = u_xlat29;
  let x_3409 : vec4<f32> = x_53.x_MainLightPosition;
  let x_3411 : vec3<f32> = (x_3407 + vec3<f32>(x_3409.x, x_3409.y, x_3409.z));
  let x_3412 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3411.x, x_3411.y, x_3411.z, x_3412.w);
  let x_3414 : vec4<f32> = u_xlat8;
  let x_3416 : vec4<f32> = u_xlat8;
  u_xlat78 = dot(vec3<f32>(x_3414.x, x_3414.y, x_3414.z), vec3<f32>(x_3416.x, x_3416.y, x_3416.z));
  let x_3419 : f32 = u_xlat78;
  u_xlat78 = max(x_3419, 1.17549435e-38f);
  let x_3422 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_3422);
  let x_3424 : f32 = u_xlat78;
  let x_3426 : vec4<f32> = u_xlat8;
  let x_3428 : vec3<f32> = (vec3<f32>(x_3424, x_3424, x_3424) * vec3<f32>(x_3426.x, x_3426.y, x_3426.z));
  let x_3429 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3428.x, x_3428.y, x_3428.z, x_3429.w);
  let x_3431 : vec4<f32> = u_xlat5;
  let x_3433 : vec4<f32> = u_xlat8;
  u_xlat78 = dot(vec3<f32>(x_3431.x, x_3431.y, x_3431.z), vec3<f32>(x_3433.x, x_3433.y, x_3433.z));
  let x_3436 : f32 = u_xlat78;
  u_xlat78 = clamp(x_3436, 0.0f, 1.0f);
  let x_3439 : vec4<f32> = x_53.x_MainLightPosition;
  let x_3441 : vec4<f32> = u_xlat8;
  u_xlat79 = dot(vec3<f32>(x_3439.x, x_3439.y, x_3439.z), vec3<f32>(x_3441.x, x_3441.y, x_3441.z));
  let x_3444 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3444, 0.0f, 1.0f);
  let x_3446 : f32 = u_xlat78;
  let x_3447 : f32 = u_xlat78;
  u_xlat78 = (x_3446 * x_3447);
  let x_3449 : f32 = u_xlat78;
  let x_3451 : f32 = u_xlat9.x;
  u_xlat78 = ((x_3449 * x_3451) + 1.00001001358032226562f);
  let x_3455 : f32 = u_xlat79;
  let x_3456 : f32 = u_xlat79;
  u_xlat79 = (x_3455 * x_3456);
  let x_3458 : f32 = u_xlat78;
  let x_3459 : f32 = u_xlat78;
  u_xlat78 = (x_3458 * x_3459);
  let x_3461 : f32 = u_xlat79;
  u_xlat79 = max(x_3461, 0.10000000149011611938f);
  let x_3464 : f32 = u_xlat78;
  let x_3465 : f32 = u_xlat79;
  u_xlat78 = (x_3464 * x_3465);
  let x_3468 : f32 = u_xlat6.x;
  let x_3469 : f32 = u_xlat78;
  u_xlat78 = (x_3468 * x_3469);
  let x_3471 : f32 = u_xlat83;
  let x_3472 : f32 = u_xlat78;
  u_xlat78 = (x_3471 / x_3472);
  let x_3474 : f32 = u_xlat78;
  let x_3478 : vec3<f32> = u_xlat2;
  let x_3479 : vec3<f32> = ((vec3<f32>(x_3474, x_3474, x_3474) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3478);
  let x_3480 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3479.x, x_3479.y, x_3479.z, x_3480.w);
  let x_3482 : vec4<f32> = u_xlat7;
  let x_3484 : vec4<f32> = u_xlat8;
  let x_3486 : vec3<f32> = (vec3<f32>(x_3482.x, x_3482.y, x_3482.z) * vec3<f32>(x_3484.x, x_3484.y, x_3484.z));
  let x_3487 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3486.x, x_3486.y, x_3486.z, x_3487.w);
  let x_3491 : f32 = x_53.x_AdditionalLightsCount.x;
  let x_3493 : f32 = x_1585.unity_LightData.y;
  u_xlat78 = min(x_3491, x_3493);
  let x_3497 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_3497));
  let x_3501 : f32 = u_xlat4.x;
  let x_3504 : f32 = x_131.x_AdditionalShadowFadeParams.x;
  let x_3507 : f32 = x_131.x_AdditionalShadowFadeParams.y;
  u_xlat79 = ((x_3501 * x_3504) + x_3507);
  let x_3509 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3509, 0.0f, 1.0f);
  let x_3512 : f32 = x_3143.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3514 : f32 = x_3143.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3516 : f32 = x_3143.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3518 : f32 = x_3143.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3519 : vec4<f32> = vec4<f32>(x_3512, x_3514, x_3516, x_3518);
  let x_3525 : vec4<bool> = (vec4<f32>(x_3519.x, x_3519.y, x_3519.z, x_3519.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  u_xlatb58 = vec2<bool>(x_3525.x, x_3525.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3537 : u32 = u_xlatu_loop_1;
    let x_3538 : u32 = u_xlatu78;
    if ((x_3537 < x_3538)) {
    } else {
      break;
    }
    let x_3541 : u32 = u_xlatu_loop_1;
    u_xlatu3 = (x_3541 >> 2u);
    let x_3545 : u32 = u_xlatu_loop_1;
    u_xlati4 = bitcast<i32>((x_3545 & 3u));
    let x_3548 : u32 = u_xlatu3;
    let x_3551 : vec4<f32> = x_1585.unity_LightIndices[bitcast<i32>(x_3548)];
    let x_3561 : i32 = u_xlati4;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3566 : vec4<u32> = indexable[x_3561];
    u_xlat3.x = dot(x_3551, bitcast<vec4<f32>>(x_3566));
    let x_3572 : f32 = u_xlat3.x;
    u_xlati3 = i32(x_3572);
    let x_3575 : vec3<f32> = vs_INTERP8;
    let x_3586 : i32 = u_xlati3;
    let x_3588 : vec4<f32> = x_3585.x_AdditionalLightsPosition[x_3586];
    let x_3591 : i32 = u_xlati3;
    let x_3593 : vec4<f32> = x_3585.x_AdditionalLightsPosition[x_3591];
    u_xlat35 = ((-(x_3575) * vec3<f32>(x_3588.w, x_3588.w, x_3588.w)) + vec3<f32>(x_3593.x, x_3593.y, x_3593.z));
    let x_3596 : vec3<f32> = u_xlat35;
    let x_3597 : vec3<f32> = u_xlat35;
    u_xlat4.x = dot(x_3596, x_3597);
    let x_3601 : f32 = u_xlat4.x;
    u_xlat4.x = max(x_3601, 0.00006103515625f);
    let x_3607 : f32 = u_xlat4.x;
    u_xlat85 = inverseSqrt(x_3607);
    let x_3609 : f32 = u_xlat85;
    let x_3611 : vec3<f32> = u_xlat35;
    let x_3612 : vec3<f32> = (vec3<f32>(x_3609, x_3609, x_3609) * x_3611);
    let x_3613 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3612.x, x_3612.y, x_3612.z, x_3613.w);
    let x_3616 : f32 = u_xlat4.x;
    u_xlat86 = (1.0f / x_3616);
    let x_3619 : f32 = u_xlat4.x;
    let x_3620 : i32 = u_xlati3;
    let x_3622 : f32 = x_3585.x_AdditionalLightsAttenuation[x_3620].x;
    u_xlat4.x = (x_3619 * x_3622);
    let x_3626 : f32 = u_xlat4.x;
    let x_3629 : f32 = u_xlat4.x;
    u_xlat4.x = ((-(x_3626) * x_3629) + 1.0f);
    let x_3634 : f32 = u_xlat4.x;
    u_xlat4.x = max(x_3634, 0.0f);
    let x_3638 : f32 = u_xlat4.x;
    let x_3640 : f32 = u_xlat4.x;
    u_xlat4.x = (x_3638 * x_3640);
    let x_3644 : f32 = u_xlat4.x;
    let x_3645 : f32 = u_xlat86;
    u_xlat4.x = (x_3644 * x_3645);
    let x_3648 : i32 = u_xlati3;
    let x_3650 : vec4<f32> = x_3585.x_AdditionalLightsSpotDir[x_3648];
    let x_3652 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_3650.x, x_3650.y, x_3650.z), vec3<f32>(x_3652.x, x_3652.y, x_3652.z));
    let x_3655 : f32 = u_xlat86;
    let x_3656 : i32 = u_xlati3;
    let x_3658 : f32 = x_3585.x_AdditionalLightsAttenuation[x_3656].z;
    let x_3660 : i32 = u_xlati3;
    let x_3662 : f32 = x_3585.x_AdditionalLightsAttenuation[x_3660].w;
    u_xlat86 = ((x_3655 * x_3658) + x_3662);
    let x_3664 : f32 = u_xlat86;
    u_xlat86 = clamp(x_3664, 0.0f, 1.0f);
    let x_3666 : f32 = u_xlat86;
    let x_3667 : f32 = u_xlat86;
    u_xlat86 = (x_3666 * x_3667);
    let x_3670 : f32 = u_xlat4.x;
    let x_3671 : f32 = u_xlat86;
    u_xlat4.x = (x_3670 * x_3671);
    let x_3676 : i32 = u_xlati3;
    let x_3678 : f32 = x_131.x_AdditionalShadowParams[x_3676].w;
    u_xlati86 = i32(x_3678);
    let x_3681 : i32 = u_xlati86;
    u_xlatb88 = (x_3681 >= 0i);
    let x_3683 : bool = u_xlatb88;
    if (x_3683) {
      let x_3687 : i32 = u_xlati3;
      let x_3689 : f32 = x_131.x_AdditionalShadowParams[x_3687].z;
      u_xlatb88 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3689, x_3689, x_3689, x_3689))));
      let x_3693 : bool = u_xlatb88;
      if (x_3693) {
        let x_3698 : vec4<f32> = u_xlat10;
        let x_3701 : vec4<f32> = u_xlat10;
        let x_3704 : vec4<bool> = (abs(vec4<f32>(x_3698.z, x_3698.z, x_3698.y, x_3698.z)) >= abs(vec4<f32>(x_3701.x, x_3701.y, x_3701.x, x_3701.x)));
        let x_3705 : vec3<bool> = vec3<bool>(x_3704.x, x_3704.y, x_3704.z);
        let x_3706 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3705.x, x_3705.y, x_3705.z, x_3706.w);
        let x_3709 : bool = u_xlatb11.y;
        let x_3711 : bool = u_xlatb11.x;
        u_xlatb88 = (x_3709 & x_3711);
        let x_3713 : vec4<f32> = u_xlat10;
        let x_3716 : vec4<bool> = (-(vec4<f32>(x_3713.z, x_3713.y, x_3713.z, x_3713.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3717 : vec3<bool> = vec3<bool>(x_3716.x, x_3716.y, x_3716.w);
        let x_3718 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3717.x, x_3717.y, x_3718.z, x_3717.z);
        let x_3721 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3721);
        let x_3726 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3726);
        let x_3732 : bool = u_xlatb11.w;
        u_xlat89 = select(0.0f, 1.0f, x_3732);
        let x_3736 : bool = u_xlatb11.z;
        if (x_3736) {
          let x_3741 : f32 = u_xlat11.y;
          x_3737 = x_3741;
        } else {
          let x_3743 : f32 = u_xlat89;
          x_3737 = x_3743;
        }
        let x_3744 : f32 = x_3737;
        u_xlat37.x = x_3744;
        let x_3747 : bool = u_xlatb88;
        if (x_3747) {
          let x_3752 : f32 = u_xlat11.x;
          x_3748 = x_3752;
        } else {
          let x_3755 : f32 = u_xlat37.x;
          x_3748 = x_3755;
        }
        let x_3756 : f32 = x_3748;
        u_xlat88 = x_3756;
        let x_3757 : i32 = u_xlati3;
        let x_3759 : f32 = x_131.x_AdditionalShadowParams[x_3757].w;
        u_xlat11.x = trunc(x_3759);
        let x_3762 : f32 = u_xlat88;
        let x_3764 : f32 = u_xlat11.x;
        u_xlat88 = (x_3762 + x_3764);
        let x_3766 : f32 = u_xlat88;
        u_xlati86 = i32(x_3766);
      }
      let x_3768 : i32 = u_xlati86;
      u_xlati86 = (x_3768 << bitcast<u32>(2i));
      let x_3770 : vec3<f32> = vs_INTERP8;
      let x_3773 : i32 = u_xlati86;
      let x_3776 : i32 = u_xlati86;
      let x_3780 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_3773 + 1i) / 4i)][((x_3776 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3770.y, x_3770.y, x_3770.y, x_3770.y) * x_3780);
      let x_3782 : i32 = u_xlati86;
      let x_3784 : i32 = u_xlati86;
      let x_3787 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[(x_3782 / 4i)][(x_3784 % 4i)];
      let x_3788 : vec3<f32> = vs_INTERP8;
      let x_3791 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3787 * vec4<f32>(x_3788.x, x_3788.x, x_3788.x, x_3788.x)) + x_3791);
      let x_3793 : i32 = u_xlati86;
      let x_3796 : i32 = u_xlati86;
      let x_3800 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_3793 + 2i) / 4i)][((x_3796 + 2i) % 4i)];
      let x_3801 : vec3<f32> = vs_INTERP8;
      let x_3804 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3800 * vec4<f32>(x_3801.z, x_3801.z, x_3801.z, x_3801.z)) + x_3804);
      let x_3806 : vec4<f32> = u_xlat11;
      let x_3807 : i32 = u_xlati86;
      let x_3810 : i32 = u_xlati86;
      let x_3814 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_3807 + 3i) / 4i)][((x_3810 + 3i) % 4i)];
      u_xlat11 = (x_3806 + x_3814);
      let x_3816 : vec4<f32> = u_xlat11;
      let x_3818 : vec4<f32> = u_xlat11;
      let x_3820 : vec3<f32> = (vec3<f32>(x_3816.x, x_3816.y, x_3816.z) / vec3<f32>(x_3818.w, x_3818.w, x_3818.w));
      let x_3821 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3820.x, x_3820.y, x_3820.z, x_3821.w);
      let x_3824 : i32 = u_xlati3;
      let x_3826 : f32 = x_131.x_AdditionalShadowParams[x_3824].y;
      u_xlatb86 = (0.0f < x_3826);
      let x_3828 : bool = u_xlatb86;
      if (x_3828) {
        let x_3831 : i32 = u_xlati3;
        let x_3833 : f32 = x_131.x_AdditionalShadowParams[x_3831].y;
        u_xlatb86 = (1.0f == x_3833);
        let x_3835 : bool = u_xlatb86;
        if (x_3835) {
          let x_3838 : vec4<f32> = u_xlat11;
          let x_3841 : vec4<f32> = x_131.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3838.x, x_3838.y, x_3838.x, x_3838.y) + x_3841);
          let x_3844 : vec4<f32> = u_xlat12;
          let x_3845 : vec2<f32> = vec2<f32>(x_3844.x, x_3844.y);
          let x_3847 : f32 = u_xlat11.z;
          txVec60 = vec3<f32>(x_3845.x, x_3845.y, x_3847);
          let x_3855 : vec3<f32> = txVec60;
          let x_3857 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3855.xy, x_3855.z);
          u_xlat13.x = x_3857;
          let x_3860 : vec4<f32> = u_xlat12;
          let x_3861 : vec2<f32> = vec2<f32>(x_3860.z, x_3860.w);
          let x_3863 : f32 = u_xlat11.z;
          txVec61 = vec3<f32>(x_3861.x, x_3861.y, x_3863);
          let x_3870 : vec3<f32> = txVec61;
          let x_3872 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3870.xy, x_3870.z);
          u_xlat13.y = x_3872;
          let x_3874 : vec4<f32> = u_xlat11;
          let x_3878 : vec4<f32> = x_131.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3874.x, x_3874.y, x_3874.x, x_3874.y) + x_3878);
          let x_3881 : vec4<f32> = u_xlat12;
          let x_3882 : vec2<f32> = vec2<f32>(x_3881.x, x_3881.y);
          let x_3884 : f32 = u_xlat11.z;
          txVec62 = vec3<f32>(x_3882.x, x_3882.y, x_3884);
          let x_3891 : vec3<f32> = txVec62;
          let x_3893 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3891.xy, x_3891.z);
          u_xlat13.z = x_3893;
          let x_3896 : vec4<f32> = u_xlat12;
          let x_3897 : vec2<f32> = vec2<f32>(x_3896.z, x_3896.w);
          let x_3899 : f32 = u_xlat11.z;
          txVec63 = vec3<f32>(x_3897.x, x_3897.y, x_3899);
          let x_3906 : vec3<f32> = txVec63;
          let x_3908 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3906.xy, x_3906.z);
          u_xlat13.w = x_3908;
          let x_3910 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_3910, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3913 : i32 = u_xlati3;
          let x_3915 : f32 = x_131.x_AdditionalShadowParams[x_3913].y;
          u_xlatb88 = (2.0f == x_3915);
          let x_3917 : bool = u_xlatb88;
          if (x_3917) {
            let x_3920 : vec4<f32> = u_xlat11;
            let x_3924 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3927 : vec2<f32> = ((vec2<f32>(x_3920.x, x_3920.y) * vec2<f32>(x_3924.z, x_3924.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3928 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3927.x, x_3927.y, x_3928.z, x_3928.w);
            let x_3930 : vec4<f32> = u_xlat12;
            let x_3932 : vec2<f32> = floor(vec2<f32>(x_3930.x, x_3930.y));
            let x_3933 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3932.x, x_3932.y, x_3933.z, x_3933.w);
            let x_3936 : vec4<f32> = u_xlat11;
            let x_3939 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3942 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3936.x, x_3936.y) * vec2<f32>(x_3939.z, x_3939.w)) + -(vec2<f32>(x_3942.x, x_3942.y)));
            let x_3946 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3946.x, x_3946.x, x_3946.y, x_3946.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3949 : vec4<f32> = u_xlat13;
            let x_3951 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3949.x, x_3949.x, x_3949.z, x_3949.z) * vec4<f32>(x_3951.x, x_3951.x, x_3951.z, x_3951.z));
            let x_3954 : vec4<f32> = u_xlat14;
            let x_3956 : vec2<f32> = (vec2<f32>(x_3954.y, x_3954.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3957 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3956.x, x_3957.y, x_3956.y, x_3957.w);
            let x_3959 : vec4<f32> = u_xlat14;
            let x_3962 : vec2<f32> = u_xlat64;
            let x_3964 : vec2<f32> = ((vec2<f32>(x_3959.x, x_3959.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3962));
            let x_3965 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3964.x, x_3964.y, x_3965.z, x_3965.w);
            let x_3968 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3968) + vec2<f32>(1.0f, 1.0f));
            let x_3971 : vec2<f32> = u_xlat64;
            let x_3972 : vec2<f32> = min(x_3971, vec2<f32>(0.0f, 0.0f));
            let x_3973 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3972.x, x_3972.y, x_3973.z, x_3973.w);
            let x_3975 : vec4<f32> = u_xlat15;
            let x_3978 : vec4<f32> = u_xlat15;
            let x_3981 : vec2<f32> = u_xlat66;
            let x_3982 : vec2<f32> = ((-(vec2<f32>(x_3975.x, x_3975.y)) * vec2<f32>(x_3978.x, x_3978.y)) + x_3981);
            let x_3983 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3982.x, x_3982.y, x_3983.z, x_3983.w);
            let x_3985 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3985, vec2<f32>(0.0f, 0.0f));
            let x_3987 : vec2<f32> = u_xlat64;
            let x_3989 : vec2<f32> = u_xlat64;
            let x_3991 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3987) * x_3989) + vec2<f32>(x_3991.y, x_3991.w));
            let x_3994 : vec4<f32> = u_xlat15;
            let x_3996 : vec2<f32> = (vec2<f32>(x_3994.x, x_3994.y) + vec2<f32>(1.0f, 1.0f));
            let x_3997 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3996.x, x_3996.y, x_3997.z, x_3997.w);
            let x_3999 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3999 + vec2<f32>(1.0f, 1.0f));
            let x_4001 : vec4<f32> = u_xlat14;
            let x_4003 : vec2<f32> = (vec2<f32>(x_4001.x, x_4001.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4004 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4003.x, x_4003.y, x_4004.z, x_4004.w);
            let x_4006 : vec2<f32> = u_xlat66;
            let x_4007 : vec2<f32> = (x_4006 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4008 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4007.x, x_4007.y, x_4008.z, x_4008.w);
            let x_4010 : vec4<f32> = u_xlat15;
            let x_4012 : vec2<f32> = (vec2<f32>(x_4010.x, x_4010.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4013 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4012.x, x_4012.y, x_4013.z, x_4013.w);
            let x_4015 : vec2<f32> = u_xlat64;
            let x_4016 : vec2<f32> = (x_4015 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4017 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4016.x, x_4016.y, x_4017.z, x_4017.w);
            let x_4019 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_4019.y, x_4019.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4023 : f32 = u_xlat15.x;
            u_xlat16.z = x_4023;
            let x_4026 : f32 = u_xlat64.x;
            u_xlat16.w = x_4026;
            let x_4029 : f32 = u_xlat17.x;
            u_xlat14.z = x_4029;
            let x_4032 : f32 = u_xlat13.x;
            u_xlat14.w = x_4032;
            let x_4034 : vec4<f32> = u_xlat14;
            let x_4036 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_4034.z, x_4034.w, x_4034.x, x_4034.z) + vec4<f32>(x_4036.z, x_4036.w, x_4036.x, x_4036.z));
            let x_4040 : f32 = u_xlat16.y;
            u_xlat15.z = x_4040;
            let x_4043 : f32 = u_xlat64.y;
            u_xlat15.w = x_4043;
            let x_4046 : f32 = u_xlat14.y;
            u_xlat17.z = x_4046;
            let x_4049 : f32 = u_xlat13.z;
            u_xlat17.w = x_4049;
            let x_4051 : vec4<f32> = u_xlat15;
            let x_4053 : vec4<f32> = u_xlat17;
            let x_4055 : vec3<f32> = (vec3<f32>(x_4051.z, x_4051.y, x_4051.w) + vec3<f32>(x_4053.z, x_4053.y, x_4053.w));
            let x_4056 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4055.x, x_4055.y, x_4055.z, x_4056.w);
            let x_4058 : vec4<f32> = u_xlat14;
            let x_4060 : vec4<f32> = u_xlat18;
            let x_4062 : vec3<f32> = (vec3<f32>(x_4058.x, x_4058.z, x_4058.w) / vec3<f32>(x_4060.z, x_4060.w, x_4060.y));
            let x_4063 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4062.x, x_4062.y, x_4062.z, x_4063.w);
            let x_4065 : vec4<f32> = u_xlat14;
            let x_4067 : vec3<f32> = (vec3<f32>(x_4065.x, x_4065.y, x_4065.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4068 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4067.x, x_4067.y, x_4067.z, x_4068.w);
            let x_4070 : vec4<f32> = u_xlat17;
            let x_4072 : vec4<f32> = u_xlat13;
            let x_4074 : vec3<f32> = (vec3<f32>(x_4070.z, x_4070.y, x_4070.w) / vec3<f32>(x_4072.x, x_4072.y, x_4072.z));
            let x_4075 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4074.x, x_4074.y, x_4074.z, x_4075.w);
            let x_4077 : vec4<f32> = u_xlat15;
            let x_4079 : vec3<f32> = (vec3<f32>(x_4077.x, x_4077.y, x_4077.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4080 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4079.x, x_4079.y, x_4079.z, x_4080.w);
            let x_4082 : vec4<f32> = u_xlat14;
            let x_4085 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4087 : vec3<f32> = (vec3<f32>(x_4082.y, x_4082.x, x_4082.z) * vec3<f32>(x_4085.x, x_4085.x, x_4085.x));
            let x_4088 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4087.x, x_4087.y, x_4087.z, x_4088.w);
            let x_4090 : vec4<f32> = u_xlat15;
            let x_4093 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4095 : vec3<f32> = (vec3<f32>(x_4090.x, x_4090.y, x_4090.z) * vec3<f32>(x_4093.y, x_4093.y, x_4093.y));
            let x_4096 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4095.x, x_4095.y, x_4095.z, x_4096.w);
            let x_4099 : f32 = u_xlat15.x;
            u_xlat14.w = x_4099;
            let x_4101 : vec4<f32> = u_xlat12;
            let x_4104 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4107 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4101.x, x_4101.y, x_4101.x, x_4101.y) * vec4<f32>(x_4104.x, x_4104.y, x_4104.x, x_4104.y)) + vec4<f32>(x_4107.y, x_4107.w, x_4107.x, x_4107.w));
            let x_4110 : vec4<f32> = u_xlat12;
            let x_4113 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4116 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4110.x, x_4110.y) * vec2<f32>(x_4113.x, x_4113.y)) + vec2<f32>(x_4116.z, x_4116.w));
            let x_4120 : f32 = u_xlat14.y;
            u_xlat15.w = x_4120;
            let x_4122 : vec4<f32> = u_xlat15;
            let x_4123 : vec2<f32> = vec2<f32>(x_4122.y, x_4122.z);
            let x_4124 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4124.x, x_4123.x, x_4124.z, x_4123.y);
            let x_4126 : vec4<f32> = u_xlat12;
            let x_4129 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4132 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_4126.x, x_4126.y, x_4126.x, x_4126.y) * vec4<f32>(x_4129.x, x_4129.y, x_4129.x, x_4129.y)) + vec4<f32>(x_4132.x, x_4132.y, x_4132.z, x_4132.y));
            let x_4135 : vec4<f32> = u_xlat12;
            let x_4138 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4141 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4135.x, x_4135.y, x_4135.x, x_4135.y) * vec4<f32>(x_4138.x, x_4138.y, x_4138.x, x_4138.y)) + vec4<f32>(x_4141.w, x_4141.y, x_4141.w, x_4141.z));
            let x_4144 : vec4<f32> = u_xlat12;
            let x_4147 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4150 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4144.x, x_4144.y, x_4144.x, x_4144.y) * vec4<f32>(x_4147.x, x_4147.y, x_4147.x, x_4147.y)) + vec4<f32>(x_4150.x, x_4150.w, x_4150.z, x_4150.w));
            let x_4153 : vec4<f32> = u_xlat13;
            let x_4155 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_4153.x, x_4153.x, x_4153.x, x_4153.y) * vec4<f32>(x_4155.z, x_4155.w, x_4155.y, x_4155.z));
            let x_4158 : vec4<f32> = u_xlat13;
            let x_4160 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_4158.y, x_4158.y, x_4158.z, x_4158.z) * x_4160);
            let x_4163 : f32 = u_xlat13.z;
            let x_4165 : f32 = u_xlat18.y;
            u_xlat88 = (x_4163 * x_4165);
            let x_4168 : vec4<f32> = u_xlat16;
            let x_4169 : vec2<f32> = vec2<f32>(x_4168.x, x_4168.y);
            let x_4171 : f32 = u_xlat11.z;
            txVec64 = vec3<f32>(x_4169.x, x_4169.y, x_4171);
            let x_4178 : vec3<f32> = txVec64;
            let x_4180 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4178.xy, x_4178.z);
            u_xlat89 = x_4180;
            let x_4182 : vec4<f32> = u_xlat16;
            let x_4183 : vec2<f32> = vec2<f32>(x_4182.z, x_4182.w);
            let x_4185 : f32 = u_xlat11.z;
            txVec65 = vec3<f32>(x_4183.x, x_4183.y, x_4185);
            let x_4192 : vec3<f32> = txVec65;
            let x_4194 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4192.xy, x_4192.z);
            u_xlat12.x = x_4194;
            let x_4197 : f32 = u_xlat12.x;
            let x_4199 : f32 = u_xlat19.y;
            u_xlat12.x = (x_4197 * x_4199);
            let x_4203 : f32 = u_xlat19.x;
            let x_4204 : f32 = u_xlat89;
            let x_4207 : f32 = u_xlat12.x;
            u_xlat89 = ((x_4203 * x_4204) + x_4207);
            let x_4210 : vec2<f32> = u_xlat64;
            let x_4212 : f32 = u_xlat11.z;
            txVec66 = vec3<f32>(x_4210.x, x_4210.y, x_4212);
            let x_4219 : vec3<f32> = txVec66;
            let x_4221 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4219.xy, x_4219.z);
            u_xlat12.x = x_4221;
            let x_4224 : f32 = u_xlat19.z;
            let x_4226 : f32 = u_xlat12.x;
            let x_4228 : f32 = u_xlat89;
            u_xlat89 = ((x_4224 * x_4226) + x_4228);
            let x_4231 : vec4<f32> = u_xlat15;
            let x_4232 : vec2<f32> = vec2<f32>(x_4231.x, x_4231.y);
            let x_4234 : f32 = u_xlat11.z;
            txVec67 = vec3<f32>(x_4232.x, x_4232.y, x_4234);
            let x_4241 : vec3<f32> = txVec67;
            let x_4243 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4241.xy, x_4241.z);
            u_xlat12.x = x_4243;
            let x_4246 : f32 = u_xlat19.w;
            let x_4248 : f32 = u_xlat12.x;
            let x_4250 : f32 = u_xlat89;
            u_xlat89 = ((x_4246 * x_4248) + x_4250);
            let x_4253 : vec4<f32> = u_xlat17;
            let x_4254 : vec2<f32> = vec2<f32>(x_4253.x, x_4253.y);
            let x_4256 : f32 = u_xlat11.z;
            txVec68 = vec3<f32>(x_4254.x, x_4254.y, x_4256);
            let x_4263 : vec3<f32> = txVec68;
            let x_4265 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4263.xy, x_4263.z);
            u_xlat12.x = x_4265;
            let x_4268 : f32 = u_xlat20.x;
            let x_4270 : f32 = u_xlat12.x;
            let x_4272 : f32 = u_xlat89;
            u_xlat89 = ((x_4268 * x_4270) + x_4272);
            let x_4275 : vec4<f32> = u_xlat17;
            let x_4276 : vec2<f32> = vec2<f32>(x_4275.z, x_4275.w);
            let x_4278 : f32 = u_xlat11.z;
            txVec69 = vec3<f32>(x_4276.x, x_4276.y, x_4278);
            let x_4285 : vec3<f32> = txVec69;
            let x_4287 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4285.xy, x_4285.z);
            u_xlat12.x = x_4287;
            let x_4290 : f32 = u_xlat20.y;
            let x_4292 : f32 = u_xlat12.x;
            let x_4294 : f32 = u_xlat89;
            u_xlat89 = ((x_4290 * x_4292) + x_4294);
            let x_4297 : vec4<f32> = u_xlat15;
            let x_4298 : vec2<f32> = vec2<f32>(x_4297.z, x_4297.w);
            let x_4300 : f32 = u_xlat11.z;
            txVec70 = vec3<f32>(x_4298.x, x_4298.y, x_4300);
            let x_4307 : vec3<f32> = txVec70;
            let x_4309 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4307.xy, x_4307.z);
            u_xlat12.x = x_4309;
            let x_4312 : f32 = u_xlat20.z;
            let x_4314 : f32 = u_xlat12.x;
            let x_4316 : f32 = u_xlat89;
            u_xlat89 = ((x_4312 * x_4314) + x_4316);
            let x_4319 : vec4<f32> = u_xlat14;
            let x_4320 : vec2<f32> = vec2<f32>(x_4319.x, x_4319.y);
            let x_4322 : f32 = u_xlat11.z;
            txVec71 = vec3<f32>(x_4320.x, x_4320.y, x_4322);
            let x_4329 : vec3<f32> = txVec71;
            let x_4331 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4329.xy, x_4329.z);
            u_xlat12.x = x_4331;
            let x_4334 : f32 = u_xlat20.w;
            let x_4336 : f32 = u_xlat12.x;
            let x_4338 : f32 = u_xlat89;
            u_xlat89 = ((x_4334 * x_4336) + x_4338);
            let x_4341 : vec4<f32> = u_xlat14;
            let x_4342 : vec2<f32> = vec2<f32>(x_4341.z, x_4341.w);
            let x_4344 : f32 = u_xlat11.z;
            txVec72 = vec3<f32>(x_4342.x, x_4342.y, x_4344);
            let x_4351 : vec3<f32> = txVec72;
            let x_4353 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4351.xy, x_4351.z);
            u_xlat12.x = x_4353;
            let x_4355 : f32 = u_xlat88;
            let x_4357 : f32 = u_xlat12.x;
            let x_4359 : f32 = u_xlat89;
            u_xlat86 = ((x_4355 * x_4357) + x_4359);
          } else {
            let x_4362 : vec4<f32> = u_xlat11;
            let x_4365 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4368 : vec2<f32> = ((vec2<f32>(x_4362.x, x_4362.y) * vec2<f32>(x_4365.z, x_4365.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4369 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4368.x, x_4368.y, x_4369.z, x_4369.w);
            let x_4371 : vec4<f32> = u_xlat12;
            let x_4373 : vec2<f32> = floor(vec2<f32>(x_4371.x, x_4371.y));
            let x_4374 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4373.x, x_4373.y, x_4374.z, x_4374.w);
            let x_4376 : vec4<f32> = u_xlat11;
            let x_4379 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4382 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4376.x, x_4376.y) * vec2<f32>(x_4379.z, x_4379.w)) + -(vec2<f32>(x_4382.x, x_4382.y)));
            let x_4386 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4386.x, x_4386.x, x_4386.y, x_4386.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4389 : vec4<f32> = u_xlat13;
            let x_4391 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4389.x, x_4389.x, x_4389.z, x_4389.z) * vec4<f32>(x_4391.x, x_4391.x, x_4391.z, x_4391.z));
            let x_4394 : vec4<f32> = u_xlat14;
            let x_4396 : vec2<f32> = (vec2<f32>(x_4394.y, x_4394.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4397 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4397.x, x_4396.x, x_4397.z, x_4396.y);
            let x_4399 : vec4<f32> = u_xlat14;
            let x_4402 : vec2<f32> = u_xlat64;
            let x_4404 : vec2<f32> = ((vec2<f32>(x_4399.x, x_4399.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4402));
            let x_4405 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4404.x, x_4405.y, x_4404.y, x_4405.w);
            let x_4407 : vec2<f32> = u_xlat64;
            let x_4409 : vec2<f32> = (-(x_4407) + vec2<f32>(1.0f, 1.0f));
            let x_4410 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4409.x, x_4409.y, x_4410.z, x_4410.w);
            let x_4412 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_4412, vec2<f32>(0.0f, 0.0f));
            let x_4414 : vec2<f32> = u_xlat66;
            let x_4416 : vec2<f32> = u_xlat66;
            let x_4418 : vec4<f32> = u_xlat14;
            let x_4420 : vec2<f32> = ((-(x_4414) * x_4416) + vec2<f32>(x_4418.x, x_4418.y));
            let x_4421 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4420.x, x_4420.y, x_4421.z, x_4421.w);
            let x_4423 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_4423, vec2<f32>(0.0f, 0.0f));
            let x_4426 : vec2<f32> = u_xlat66;
            let x_4428 : vec2<f32> = u_xlat66;
            let x_4430 : vec4<f32> = u_xlat13;
            let x_4432 : vec2<f32> = ((-(x_4426) * x_4428) + vec2<f32>(x_4430.y, x_4430.w));
            let x_4433 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_4432.x, x_4433.y, x_4432.y);
            let x_4435 : vec4<f32> = u_xlat14;
            let x_4437 : vec2<f32> = (vec2<f32>(x_4435.x, x_4435.y) + vec2<f32>(2.0f, 2.0f));
            let x_4438 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4437.x, x_4437.y, x_4438.z, x_4438.w);
            let x_4440 : vec3<f32> = u_xlat39;
            let x_4442 : vec2<f32> = (vec2<f32>(x_4440.x, x_4440.z) + vec2<f32>(2.0f, 2.0f));
            let x_4443 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4443.x, x_4442.x, x_4443.z, x_4442.y);
            let x_4446 : f32 = u_xlat13.y;
            u_xlat16.z = (x_4446 * 0.08163200318813323975f);
            let x_4449 : vec4<f32> = u_xlat13;
            let x_4451 : vec3<f32> = (vec3<f32>(x_4449.z, x_4449.x, x_4449.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4452 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4451.x, x_4451.y, x_4451.z, x_4452.w);
            let x_4454 : vec4<f32> = u_xlat14;
            let x_4456 : vec2<f32> = (vec2<f32>(x_4454.x, x_4454.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4457 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4456.x, x_4456.y, x_4457.z, x_4457.w);
            let x_4460 : f32 = u_xlat17.y;
            u_xlat16.x = x_4460;
            let x_4462 : vec2<f32> = u_xlat64;
            let x_4465 : vec2<f32> = ((vec2<f32>(x_4462.x, x_4462.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4466 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4466.x, x_4465.x, x_4466.z, x_4465.y);
            let x_4468 : vec2<f32> = u_xlat64;
            let x_4471 : vec2<f32> = ((vec2<f32>(x_4468.x, x_4468.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4472 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4471.x, x_4472.y, x_4471.y, x_4472.w);
            let x_4475 : f32 = u_xlat13.x;
            u_xlat14.y = x_4475;
            let x_4478 : f32 = u_xlat15.y;
            u_xlat14.w = x_4478;
            let x_4480 : vec4<f32> = u_xlat14;
            let x_4481 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4480 + x_4481);
            let x_4483 : vec2<f32> = u_xlat64;
            let x_4486 : vec2<f32> = ((vec2<f32>(x_4483.y, x_4483.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4487 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4487.x, x_4486.x, x_4487.z, x_4486.y);
            let x_4489 : vec2<f32> = u_xlat64;
            let x_4492 : vec2<f32> = ((vec2<f32>(x_4489.y, x_4489.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4493 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4492.x, x_4493.y, x_4492.y, x_4493.w);
            let x_4496 : f32 = u_xlat13.y;
            u_xlat15.y = x_4496;
            let x_4498 : vec4<f32> = u_xlat15;
            let x_4499 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4498 + x_4499);
            let x_4501 : vec4<f32> = u_xlat14;
            let x_4502 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_4501 / x_4502);
            let x_4504 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4504 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4506 : vec4<f32> = u_xlat15;
            let x_4507 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_4506 / x_4507);
            let x_4509 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4509 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4511 : vec4<f32> = u_xlat14;
            let x_4514 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4511.w, x_4511.x, x_4511.y, x_4511.z) * vec4<f32>(x_4514.x, x_4514.x, x_4514.x, x_4514.x));
            let x_4517 : vec4<f32> = u_xlat15;
            let x_4520 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_4517.x, x_4517.w, x_4517.y, x_4517.z) * vec4<f32>(x_4520.y, x_4520.y, x_4520.y, x_4520.y));
            let x_4523 : vec4<f32> = u_xlat14;
            let x_4524 : vec3<f32> = vec3<f32>(x_4523.y, x_4523.z, x_4523.w);
            let x_4525 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4524.x, x_4525.y, x_4524.y, x_4524.z);
            let x_4528 : f32 = u_xlat15.x;
            u_xlat17.y = x_4528;
            let x_4530 : vec4<f32> = u_xlat12;
            let x_4533 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4536 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4530.x, x_4530.y, x_4530.x, x_4530.y) * vec4<f32>(x_4533.x, x_4533.y, x_4533.x, x_4533.y)) + vec4<f32>(x_4536.x, x_4536.y, x_4536.z, x_4536.y));
            let x_4539 : vec4<f32> = u_xlat12;
            let x_4542 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4545 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_4539.x, x_4539.y) * vec2<f32>(x_4542.x, x_4542.y)) + vec2<f32>(x_4545.w, x_4545.y));
            let x_4549 : f32 = u_xlat17.y;
            u_xlat14.y = x_4549;
            let x_4552 : f32 = u_xlat15.z;
            u_xlat17.y = x_4552;
            let x_4554 : vec4<f32> = u_xlat12;
            let x_4557 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4560 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_4554.x, x_4554.y, x_4554.x, x_4554.y) * vec4<f32>(x_4557.x, x_4557.y, x_4557.x, x_4557.y)) + vec4<f32>(x_4560.x, x_4560.y, x_4560.z, x_4560.y));
            let x_4563 : vec4<f32> = u_xlat12;
            let x_4566 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4569 : vec4<f32> = u_xlat17;
            let x_4571 : vec2<f32> = ((vec2<f32>(x_4563.x, x_4563.y) * vec2<f32>(x_4566.x, x_4566.y)) + vec2<f32>(x_4569.w, x_4569.y));
            let x_4572 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_4571.x, x_4571.y, x_4572.z, x_4572.w);
            let x_4575 : f32 = u_xlat17.y;
            u_xlat14.z = x_4575;
            let x_4578 : vec4<f32> = u_xlat12;
            let x_4581 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4584 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4578.x, x_4578.y, x_4578.x, x_4578.y) * vec4<f32>(x_4581.x, x_4581.y, x_4581.x, x_4581.y)) + vec4<f32>(x_4584.x, x_4584.y, x_4584.x, x_4584.z));
            let x_4588 : f32 = u_xlat15.w;
            u_xlat17.y = x_4588;
            let x_4591 : vec4<f32> = u_xlat12;
            let x_4594 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4597 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4591.x, x_4591.y, x_4591.x, x_4591.y) * vec4<f32>(x_4594.x, x_4594.y, x_4594.x, x_4594.y)) + vec4<f32>(x_4597.x, x_4597.y, x_4597.z, x_4597.y));
            let x_4601 : vec4<f32> = u_xlat12;
            let x_4604 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4607 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_4601.x, x_4601.y) * vec2<f32>(x_4604.x, x_4604.y)) + vec2<f32>(x_4607.w, x_4607.y));
            let x_4611 : f32 = u_xlat17.y;
            u_xlat14.w = x_4611;
            let x_4614 : vec4<f32> = u_xlat12;
            let x_4617 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4620 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4614.x, x_4614.y) * vec2<f32>(x_4617.x, x_4617.y)) + vec2<f32>(x_4620.x, x_4620.w));
            let x_4623 : vec4<f32> = u_xlat17;
            let x_4624 : vec3<f32> = vec3<f32>(x_4623.x, x_4623.z, x_4623.w);
            let x_4625 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4624.x, x_4625.y, x_4624.y, x_4624.z);
            let x_4627 : vec4<f32> = u_xlat12;
            let x_4630 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4633 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4627.x, x_4627.y, x_4627.x, x_4627.y) * vec4<f32>(x_4630.x, x_4630.y, x_4630.x, x_4630.y)) + vec4<f32>(x_4633.x, x_4633.y, x_4633.z, x_4633.y));
            let x_4637 : vec4<f32> = u_xlat12;
            let x_4640 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4643 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4637.x, x_4637.y) * vec2<f32>(x_4640.x, x_4640.y)) + vec2<f32>(x_4643.w, x_4643.y));
            let x_4647 : f32 = u_xlat14.x;
            u_xlat15.x = x_4647;
            let x_4649 : vec4<f32> = u_xlat12;
            let x_4652 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4655 : vec4<f32> = u_xlat15;
            let x_4657 : vec2<f32> = ((vec2<f32>(x_4649.x, x_4649.y) * vec2<f32>(x_4652.x, x_4652.y)) + vec2<f32>(x_4655.x, x_4655.y));
            let x_4658 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4657.x, x_4657.y, x_4658.z, x_4658.w);
            let x_4661 : vec4<f32> = u_xlat13;
            let x_4663 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4661.x, x_4661.x, x_4661.x, x_4661.x) * x_4663);
            let x_4666 : vec4<f32> = u_xlat13;
            let x_4668 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4666.y, x_4666.y, x_4666.y, x_4666.y) * x_4668);
            let x_4671 : vec4<f32> = u_xlat13;
            let x_4673 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4671.z, x_4671.z, x_4671.z, x_4671.z) * x_4673);
            let x_4675 : vec4<f32> = u_xlat13;
            let x_4677 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4675.w, x_4675.w, x_4675.w, x_4675.w) * x_4677);
            let x_4680 : vec4<f32> = u_xlat18;
            let x_4681 : vec2<f32> = vec2<f32>(x_4680.x, x_4680.y);
            let x_4683 : f32 = u_xlat11.z;
            txVec73 = vec3<f32>(x_4681.x, x_4681.y, x_4683);
            let x_4690 : vec3<f32> = txVec73;
            let x_4692 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4690.xy, x_4690.z);
            u_xlat88 = x_4692;
            let x_4694 : vec4<f32> = u_xlat18;
            let x_4695 : vec2<f32> = vec2<f32>(x_4694.z, x_4694.w);
            let x_4697 : f32 = u_xlat11.z;
            txVec74 = vec3<f32>(x_4695.x, x_4695.y, x_4697);
            let x_4704 : vec3<f32> = txVec74;
            let x_4706 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4704.xy, x_4704.z);
            u_xlat89 = x_4706;
            let x_4707 : f32 = u_xlat89;
            let x_4709 : f32 = u_xlat23.y;
            u_xlat89 = (x_4707 * x_4709);
            let x_4712 : f32 = u_xlat23.x;
            let x_4713 : f32 = u_xlat88;
            let x_4715 : f32 = u_xlat89;
            u_xlat88 = ((x_4712 * x_4713) + x_4715);
            let x_4718 : vec2<f32> = u_xlat64;
            let x_4720 : f32 = u_xlat11.z;
            txVec75 = vec3<f32>(x_4718.x, x_4718.y, x_4720);
            let x_4727 : vec3<f32> = txVec75;
            let x_4729 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4727.xy, x_4727.z);
            u_xlat89 = x_4729;
            let x_4731 : f32 = u_xlat23.z;
            let x_4732 : f32 = u_xlat89;
            let x_4734 : f32 = u_xlat88;
            u_xlat88 = ((x_4731 * x_4732) + x_4734);
            let x_4737 : vec4<f32> = u_xlat21;
            let x_4738 : vec2<f32> = vec2<f32>(x_4737.x, x_4737.y);
            let x_4740 : f32 = u_xlat11.z;
            txVec76 = vec3<f32>(x_4738.x, x_4738.y, x_4740);
            let x_4747 : vec3<f32> = txVec76;
            let x_4749 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4747.xy, x_4747.z);
            u_xlat89 = x_4749;
            let x_4751 : f32 = u_xlat23.w;
            let x_4752 : f32 = u_xlat89;
            let x_4754 : f32 = u_xlat88;
            u_xlat88 = ((x_4751 * x_4752) + x_4754);
            let x_4757 : vec4<f32> = u_xlat19;
            let x_4758 : vec2<f32> = vec2<f32>(x_4757.x, x_4757.y);
            let x_4760 : f32 = u_xlat11.z;
            txVec77 = vec3<f32>(x_4758.x, x_4758.y, x_4760);
            let x_4767 : vec3<f32> = txVec77;
            let x_4769 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4767.xy, x_4767.z);
            u_xlat89 = x_4769;
            let x_4771 : f32 = u_xlat24.x;
            let x_4772 : f32 = u_xlat89;
            let x_4774 : f32 = u_xlat88;
            u_xlat88 = ((x_4771 * x_4772) + x_4774);
            let x_4777 : vec4<f32> = u_xlat19;
            let x_4778 : vec2<f32> = vec2<f32>(x_4777.z, x_4777.w);
            let x_4780 : f32 = u_xlat11.z;
            txVec78 = vec3<f32>(x_4778.x, x_4778.y, x_4780);
            let x_4787 : vec3<f32> = txVec78;
            let x_4789 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4787.xy, x_4787.z);
            u_xlat89 = x_4789;
            let x_4791 : f32 = u_xlat24.y;
            let x_4792 : f32 = u_xlat89;
            let x_4794 : f32 = u_xlat88;
            u_xlat88 = ((x_4791 * x_4792) + x_4794);
            let x_4797 : vec4<f32> = u_xlat20;
            let x_4798 : vec2<f32> = vec2<f32>(x_4797.x, x_4797.y);
            let x_4800 : f32 = u_xlat11.z;
            txVec79 = vec3<f32>(x_4798.x, x_4798.y, x_4800);
            let x_4807 : vec3<f32> = txVec79;
            let x_4809 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4807.xy, x_4807.z);
            u_xlat89 = x_4809;
            let x_4811 : f32 = u_xlat24.z;
            let x_4812 : f32 = u_xlat89;
            let x_4814 : f32 = u_xlat88;
            u_xlat88 = ((x_4811 * x_4812) + x_4814);
            let x_4817 : vec4<f32> = u_xlat21;
            let x_4818 : vec2<f32> = vec2<f32>(x_4817.z, x_4817.w);
            let x_4820 : f32 = u_xlat11.z;
            txVec80 = vec3<f32>(x_4818.x, x_4818.y, x_4820);
            let x_4827 : vec3<f32> = txVec80;
            let x_4829 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4827.xy, x_4827.z);
            u_xlat89 = x_4829;
            let x_4831 : f32 = u_xlat24.w;
            let x_4832 : f32 = u_xlat89;
            let x_4834 : f32 = u_xlat88;
            u_xlat88 = ((x_4831 * x_4832) + x_4834);
            let x_4837 : vec4<f32> = u_xlat22;
            let x_4838 : vec2<f32> = vec2<f32>(x_4837.x, x_4837.y);
            let x_4840 : f32 = u_xlat11.z;
            txVec81 = vec3<f32>(x_4838.x, x_4838.y, x_4840);
            let x_4847 : vec3<f32> = txVec81;
            let x_4849 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4847.xy, x_4847.z);
            u_xlat89 = x_4849;
            let x_4851 : f32 = u_xlat25.x;
            let x_4852 : f32 = u_xlat89;
            let x_4854 : f32 = u_xlat88;
            u_xlat88 = ((x_4851 * x_4852) + x_4854);
            let x_4857 : vec4<f32> = u_xlat22;
            let x_4858 : vec2<f32> = vec2<f32>(x_4857.z, x_4857.w);
            let x_4860 : f32 = u_xlat11.z;
            txVec82 = vec3<f32>(x_4858.x, x_4858.y, x_4860);
            let x_4867 : vec3<f32> = txVec82;
            let x_4869 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4867.xy, x_4867.z);
            u_xlat89 = x_4869;
            let x_4871 : f32 = u_xlat25.y;
            let x_4872 : f32 = u_xlat89;
            let x_4874 : f32 = u_xlat88;
            u_xlat88 = ((x_4871 * x_4872) + x_4874);
            let x_4877 : vec2<f32> = u_xlat40;
            let x_4879 : f32 = u_xlat11.z;
            txVec83 = vec3<f32>(x_4877.x, x_4877.y, x_4879);
            let x_4886 : vec3<f32> = txVec83;
            let x_4888 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4886.xy, x_4886.z);
            u_xlat89 = x_4888;
            let x_4890 : f32 = u_xlat25.z;
            let x_4891 : f32 = u_xlat89;
            let x_4893 : f32 = u_xlat88;
            u_xlat88 = ((x_4890 * x_4891) + x_4893);
            let x_4896 : vec2<f32> = u_xlat72;
            let x_4898 : f32 = u_xlat11.z;
            txVec84 = vec3<f32>(x_4896.x, x_4896.y, x_4898);
            let x_4905 : vec3<f32> = txVec84;
            let x_4907 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4905.xy, x_4905.z);
            u_xlat89 = x_4907;
            let x_4909 : f32 = u_xlat25.w;
            let x_4910 : f32 = u_xlat89;
            let x_4912 : f32 = u_xlat88;
            u_xlat88 = ((x_4909 * x_4910) + x_4912);
            let x_4915 : vec4<f32> = u_xlat17;
            let x_4916 : vec2<f32> = vec2<f32>(x_4915.x, x_4915.y);
            let x_4918 : f32 = u_xlat11.z;
            txVec85 = vec3<f32>(x_4916.x, x_4916.y, x_4918);
            let x_4925 : vec3<f32> = txVec85;
            let x_4927 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4925.xy, x_4925.z);
            u_xlat89 = x_4927;
            let x_4929 : f32 = u_xlat13.x;
            let x_4930 : f32 = u_xlat89;
            let x_4932 : f32 = u_xlat88;
            u_xlat88 = ((x_4929 * x_4930) + x_4932);
            let x_4935 : vec4<f32> = u_xlat17;
            let x_4936 : vec2<f32> = vec2<f32>(x_4935.z, x_4935.w);
            let x_4938 : f32 = u_xlat11.z;
            txVec86 = vec3<f32>(x_4936.x, x_4936.y, x_4938);
            let x_4945 : vec3<f32> = txVec86;
            let x_4947 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4945.xy, x_4945.z);
            u_xlat89 = x_4947;
            let x_4949 : f32 = u_xlat13.y;
            let x_4950 : f32 = u_xlat89;
            let x_4952 : f32 = u_xlat88;
            u_xlat88 = ((x_4949 * x_4950) + x_4952);
            let x_4955 : vec2<f32> = u_xlat67;
            let x_4957 : f32 = u_xlat11.z;
            txVec87 = vec3<f32>(x_4955.x, x_4955.y, x_4957);
            let x_4964 : vec3<f32> = txVec87;
            let x_4966 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4964.xy, x_4964.z);
            u_xlat89 = x_4966;
            let x_4968 : f32 = u_xlat13.z;
            let x_4969 : f32 = u_xlat89;
            let x_4971 : f32 = u_xlat88;
            u_xlat88 = ((x_4968 * x_4969) + x_4971);
            let x_4974 : vec4<f32> = u_xlat12;
            let x_4975 : vec2<f32> = vec2<f32>(x_4974.x, x_4974.y);
            let x_4977 : f32 = u_xlat11.z;
            txVec88 = vec3<f32>(x_4975.x, x_4975.y, x_4977);
            let x_4984 : vec3<f32> = txVec88;
            let x_4986 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4984.xy, x_4984.z);
            u_xlat89 = x_4986;
            let x_4988 : f32 = u_xlat13.w;
            let x_4989 : f32 = u_xlat89;
            let x_4991 : f32 = u_xlat88;
            u_xlat86 = ((x_4988 * x_4989) + x_4991);
          }
        }
      } else {
        let x_4995 : vec4<f32> = u_xlat11;
        let x_4996 : vec2<f32> = vec2<f32>(x_4995.x, x_4995.y);
        let x_4998 : f32 = u_xlat11.z;
        txVec89 = vec3<f32>(x_4996.x, x_4996.y, x_4998);
        let x_5005 : vec3<f32> = txVec89;
        let x_5007 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5005.xy, x_5005.z);
        u_xlat86 = x_5007;
      }
      let x_5008 : i32 = u_xlati3;
      let x_5010 : f32 = x_131.x_AdditionalShadowParams[x_5008].x;
      u_xlat88 = (1.0f + -(x_5010));
      let x_5013 : f32 = u_xlat86;
      let x_5014 : i32 = u_xlati3;
      let x_5016 : f32 = x_131.x_AdditionalShadowParams[x_5014].x;
      let x_5018 : f32 = u_xlat88;
      u_xlat86 = ((x_5013 * x_5016) + x_5018);
      let x_5021 : f32 = u_xlat11.z;
      u_xlatb88 = (0.0f >= x_5021);
      let x_5024 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_5024 >= 1.0f);
      let x_5027 : bool = u_xlatb88;
      let x_5029 : bool = u_xlatb11.x;
      u_xlatb88 = (x_5027 | x_5029);
      let x_5031 : bool = u_xlatb88;
      let x_5032 : f32 = u_xlat86;
      u_xlat86 = select(x_5032, 1.0f, x_5031);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_5035 : f32 = u_xlat86;
    u_xlat88 = (-(x_5035) + 1.0f);
    let x_5038 : f32 = u_xlat79;
    let x_5039 : f32 = u_xlat88;
    let x_5041 : f32 = u_xlat86;
    u_xlat86 = ((x_5038 * x_5039) + x_5041);
    let x_5044 : i32 = u_xlati3;
    u_xlati88 = (1i << bitcast<u32>((x_5044 & 31i)));
    let x_5048 : i32 = u_xlati88;
    let x_5051 : f32 = x_3143.x_AdditionalLightsCookieEnableBits;
    u_xlati88 = bitcast<i32>((bitcast<u32>(x_5048) & bitcast<u32>(x_5051)));
    let x_5055 : i32 = u_xlati88;
    if ((x_5055 != 0i)) {
      let x_5059 : i32 = u_xlati3;
      let x_5061 : f32 = x_3143.x_AdditionalLightsLightTypes[x_5059].el;
      u_xlati88 = i32(x_5061);
      let x_5064 : i32 = u_xlati88;
      u_xlati11 = select(1i, 0i, (x_5064 != 0i));
      let x_5068 : i32 = u_xlati3;
      u_xlati37 = (x_5068 << bitcast<u32>(2i));
      let x_5070 : i32 = u_xlati11;
      if ((x_5070 != 0i)) {
        let x_5074 : vec3<f32> = vs_INTERP8;
        let x_5076 : i32 = u_xlati37;
        let x_5079 : i32 = u_xlati37;
        let x_5083 : vec4<f32> = x_3143.x_AdditionalLightsWorldToLights[((x_5076 + 1i) / 4i)][((x_5079 + 1i) % 4i)];
        let x_5085 : vec3<f32> = (vec3<f32>(x_5074.y, x_5074.y, x_5074.y) * vec3<f32>(x_5083.x, x_5083.y, x_5083.w));
        let x_5086 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5085.x, x_5086.y, x_5085.y, x_5085.z);
        let x_5088 : i32 = u_xlati37;
        let x_5090 : i32 = u_xlati37;
        let x_5093 : vec4<f32> = x_3143.x_AdditionalLightsWorldToLights[(x_5088 / 4i)][(x_5090 % 4i)];
        let x_5095 : vec3<f32> = vs_INTERP8;
        let x_5098 : vec4<f32> = u_xlat11;
        let x_5100 : vec3<f32> = ((vec3<f32>(x_5093.x, x_5093.y, x_5093.w) * vec3<f32>(x_5095.x, x_5095.x, x_5095.x)) + vec3<f32>(x_5098.x, x_5098.z, x_5098.w));
        let x_5101 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5100.x, x_5101.y, x_5100.y, x_5100.z);
        let x_5103 : i32 = u_xlati37;
        let x_5106 : i32 = u_xlati37;
        let x_5110 : vec4<f32> = x_3143.x_AdditionalLightsWorldToLights[((x_5103 + 2i) / 4i)][((x_5106 + 2i) % 4i)];
        let x_5112 : vec3<f32> = vs_INTERP8;
        let x_5115 : vec4<f32> = u_xlat11;
        let x_5117 : vec3<f32> = ((vec3<f32>(x_5110.x, x_5110.y, x_5110.w) * vec3<f32>(x_5112.z, x_5112.z, x_5112.z)) + vec3<f32>(x_5115.x, x_5115.z, x_5115.w));
        let x_5118 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5117.x, x_5118.y, x_5117.y, x_5117.z);
        let x_5120 : vec4<f32> = u_xlat11;
        let x_5122 : i32 = u_xlati37;
        let x_5125 : i32 = u_xlati37;
        let x_5129 : vec4<f32> = x_3143.x_AdditionalLightsWorldToLights[((x_5122 + 3i) / 4i)][((x_5125 + 3i) % 4i)];
        let x_5131 : vec3<f32> = (vec3<f32>(x_5120.x, x_5120.z, x_5120.w) + vec3<f32>(x_5129.x, x_5129.y, x_5129.w));
        let x_5132 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5131.x, x_5132.y, x_5131.y, x_5131.z);
        let x_5134 : vec4<f32> = u_xlat11;
        let x_5136 : vec4<f32> = u_xlat11;
        let x_5138 : vec2<f32> = (vec2<f32>(x_5134.x, x_5134.z) / vec2<f32>(x_5136.w, x_5136.w));
        let x_5139 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5138.x, x_5139.y, x_5138.y, x_5139.w);
        let x_5141 : vec4<f32> = u_xlat11;
        let x_5144 : vec2<f32> = ((vec2<f32>(x_5141.x, x_5141.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_5145 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5144.x, x_5145.y, x_5144.y, x_5145.w);
        let x_5147 : vec4<f32> = u_xlat11;
        let x_5151 : vec2<f32> = clamp(vec2<f32>(x_5147.x, x_5147.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_5152 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5151.x, x_5152.y, x_5151.y, x_5152.w);
        let x_5154 : i32 = u_xlati3;
        let x_5156 : vec4<f32> = x_3143.x_AdditionalLightsCookieAtlasUVRects[x_5154];
        let x_5158 : vec4<f32> = u_xlat11;
        let x_5161 : i32 = u_xlati3;
        let x_5163 : vec4<f32> = x_3143.x_AdditionalLightsCookieAtlasUVRects[x_5161];
        let x_5165 : vec2<f32> = ((vec2<f32>(x_5156.x, x_5156.y) * vec2<f32>(x_5158.x, x_5158.z)) + vec2<f32>(x_5163.z, x_5163.w));
        let x_5166 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5165.x, x_5166.y, x_5165.y, x_5166.w);
      } else {
        let x_5169 : i32 = u_xlati88;
        u_xlatb88 = (x_5169 == 1i);
        let x_5171 : bool = u_xlatb88;
        u_xlati88 = select(0i, 1i, x_5171);
        let x_5173 : i32 = u_xlati88;
        if ((x_5173 != 0i)) {
          let x_5177 : vec3<f32> = vs_INTERP8;
          let x_5179 : i32 = u_xlati37;
          let x_5182 : i32 = u_xlati37;
          let x_5186 : vec4<f32> = x_3143.x_AdditionalLightsWorldToLights[((x_5179 + 1i) / 4i)][((x_5182 + 1i) % 4i)];
          let x_5188 : vec2<f32> = (vec2<f32>(x_5177.y, x_5177.y) * vec2<f32>(x_5186.x, x_5186.y));
          let x_5189 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5188.x, x_5188.y, x_5189.z, x_5189.w);
          let x_5191 : i32 = u_xlati37;
          let x_5193 : i32 = u_xlati37;
          let x_5196 : vec4<f32> = x_3143.x_AdditionalLightsWorldToLights[(x_5191 / 4i)][(x_5193 % 4i)];
          let x_5198 : vec3<f32> = vs_INTERP8;
          let x_5201 : vec4<f32> = u_xlat12;
          let x_5203 : vec2<f32> = ((vec2<f32>(x_5196.x, x_5196.y) * vec2<f32>(x_5198.x, x_5198.x)) + vec2<f32>(x_5201.x, x_5201.y));
          let x_5204 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5203.x, x_5203.y, x_5204.z, x_5204.w);
          let x_5206 : i32 = u_xlati37;
          let x_5209 : i32 = u_xlati37;
          let x_5213 : vec4<f32> = x_3143.x_AdditionalLightsWorldToLights[((x_5206 + 2i) / 4i)][((x_5209 + 2i) % 4i)];
          let x_5215 : vec3<f32> = vs_INTERP8;
          let x_5218 : vec4<f32> = u_xlat12;
          let x_5220 : vec2<f32> = ((vec2<f32>(x_5213.x, x_5213.y) * vec2<f32>(x_5215.z, x_5215.z)) + vec2<f32>(x_5218.x, x_5218.y));
          let x_5221 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5220.x, x_5220.y, x_5221.z, x_5221.w);
          let x_5223 : vec4<f32> = u_xlat12;
          let x_5225 : i32 = u_xlati37;
          let x_5228 : i32 = u_xlati37;
          let x_5232 : vec4<f32> = x_3143.x_AdditionalLightsWorldToLights[((x_5225 + 3i) / 4i)][((x_5228 + 3i) % 4i)];
          let x_5234 : vec2<f32> = (vec2<f32>(x_5223.x, x_5223.y) + vec2<f32>(x_5232.x, x_5232.y));
          let x_5235 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5234.x, x_5234.y, x_5235.z, x_5235.w);
          let x_5237 : vec4<f32> = u_xlat12;
          let x_5240 : vec2<f32> = ((vec2<f32>(x_5237.x, x_5237.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5241 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5240.x, x_5240.y, x_5241.z, x_5241.w);
          let x_5243 : vec4<f32> = u_xlat12;
          let x_5245 : vec2<f32> = fract(vec2<f32>(x_5243.x, x_5243.y));
          let x_5246 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5245.x, x_5245.y, x_5246.z, x_5246.w);
          let x_5248 : i32 = u_xlati3;
          let x_5250 : vec4<f32> = x_3143.x_AdditionalLightsCookieAtlasUVRects[x_5248];
          let x_5252 : vec4<f32> = u_xlat12;
          let x_5255 : i32 = u_xlati3;
          let x_5257 : vec4<f32> = x_3143.x_AdditionalLightsCookieAtlasUVRects[x_5255];
          let x_5259 : vec2<f32> = ((vec2<f32>(x_5250.x, x_5250.y) * vec2<f32>(x_5252.x, x_5252.y)) + vec2<f32>(x_5257.z, x_5257.w));
          let x_5260 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5259.x, x_5260.y, x_5259.y, x_5260.w);
        } else {
          let x_5263 : vec3<f32> = vs_INTERP8;
          let x_5265 : i32 = u_xlati37;
          let x_5268 : i32 = u_xlati37;
          let x_5272 : vec4<f32> = x_3143.x_AdditionalLightsWorldToLights[((x_5265 + 1i) / 4i)][((x_5268 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_5263.y, x_5263.y, x_5263.y, x_5263.y) * x_5272);
          let x_5274 : i32 = u_xlati37;
          let x_5276 : i32 = u_xlati37;
          let x_5279 : vec4<f32> = x_3143.x_AdditionalLightsWorldToLights[(x_5274 / 4i)][(x_5276 % 4i)];
          let x_5280 : vec3<f32> = vs_INTERP8;
          let x_5283 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5279 * vec4<f32>(x_5280.x, x_5280.x, x_5280.x, x_5280.x)) + x_5283);
          let x_5285 : i32 = u_xlati37;
          let x_5288 : i32 = u_xlati37;
          let x_5292 : vec4<f32> = x_3143.x_AdditionalLightsWorldToLights[((x_5285 + 2i) / 4i)][((x_5288 + 2i) % 4i)];
          let x_5293 : vec3<f32> = vs_INTERP8;
          let x_5296 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5292 * vec4<f32>(x_5293.z, x_5293.z, x_5293.z, x_5293.z)) + x_5296);
          let x_5298 : vec4<f32> = u_xlat12;
          let x_5299 : i32 = u_xlati37;
          let x_5302 : i32 = u_xlati37;
          let x_5306 : vec4<f32> = x_3143.x_AdditionalLightsWorldToLights[((x_5299 + 3i) / 4i)][((x_5302 + 3i) % 4i)];
          u_xlat12 = (x_5298 + x_5306);
          let x_5308 : vec4<f32> = u_xlat12;
          let x_5310 : vec4<f32> = u_xlat12;
          let x_5312 : vec3<f32> = (vec3<f32>(x_5308.x, x_5308.y, x_5308.z) / vec3<f32>(x_5310.w, x_5310.w, x_5310.w));
          let x_5313 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5312.x, x_5312.y, x_5312.z, x_5313.w);
          let x_5315 : vec4<f32> = u_xlat12;
          let x_5317 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(vec3<f32>(x_5315.x, x_5315.y, x_5315.z), vec3<f32>(x_5317.x, x_5317.y, x_5317.z));
          let x_5320 : f32 = u_xlat88;
          u_xlat88 = inverseSqrt(x_5320);
          let x_5322 : f32 = u_xlat88;
          let x_5324 : vec4<f32> = u_xlat12;
          let x_5326 : vec3<f32> = (vec3<f32>(x_5322, x_5322, x_5322) * vec3<f32>(x_5324.x, x_5324.y, x_5324.z));
          let x_5327 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5326.x, x_5326.y, x_5326.z, x_5327.w);
          let x_5329 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(abs(vec3<f32>(x_5329.x, x_5329.y, x_5329.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_5334 : f32 = u_xlat88;
          u_xlat88 = max(x_5334, 0.00000099999999747524f);
          let x_5337 : f32 = u_xlat88;
          u_xlat88 = (1.0f / x_5337);
          let x_5339 : f32 = u_xlat88;
          let x_5341 : vec4<f32> = u_xlat12;
          let x_5343 : vec3<f32> = (vec3<f32>(x_5339, x_5339, x_5339) * vec3<f32>(x_5341.z, x_5341.x, x_5341.y));
          let x_5344 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_5343.x, x_5343.y, x_5343.z, x_5344.w);
          let x_5347 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_5347);
          let x_5351 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_5351, 0.0f, 1.0f);
          let x_5355 : vec4<f32> = u_xlat13;
          let x_5357 : vec4<bool> = (vec4<f32>(x_5355.y, x_5355.y, x_5355.z, x_5355.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_5358 : vec2<bool> = vec2<bool>(x_5357.x, x_5357.z);
          let x_5359 : vec3<bool> = u_xlatb37;
          u_xlatb37 = vec3<bool>(x_5358.x, x_5359.y, x_5358.y);
          let x_5362 : bool = u_xlatb37.x;
          if (x_5362) {
            let x_5367 : f32 = u_xlat13.x;
            x_5363 = x_5367;
          } else {
            let x_5370 : f32 = u_xlat13.x;
            x_5363 = -(x_5370);
          }
          let x_5372 : f32 = x_5363;
          u_xlat37.x = x_5372;
          let x_5375 : bool = u_xlatb37.z;
          if (x_5375) {
            let x_5380 : f32 = u_xlat13.x;
            x_5376 = x_5380;
          } else {
            let x_5383 : f32 = u_xlat13.x;
            x_5376 = -(x_5383);
          }
          let x_5385 : f32 = x_5376;
          u_xlat37.z = x_5385;
          let x_5387 : vec4<f32> = u_xlat12;
          let x_5389 : f32 = u_xlat88;
          let x_5392 : vec3<f32> = u_xlat37;
          let x_5394 : vec2<f32> = ((vec2<f32>(x_5387.x, x_5387.y) * vec2<f32>(x_5389, x_5389)) + vec2<f32>(x_5392.x, x_5392.z));
          let x_5395 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5394.x, x_5395.y, x_5394.y);
          let x_5397 : vec3<f32> = u_xlat37;
          let x_5400 : vec2<f32> = ((vec2<f32>(x_5397.x, x_5397.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5401 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5400.x, x_5401.y, x_5400.y);
          let x_5403 : vec3<f32> = u_xlat37;
          let x_5407 : vec2<f32> = clamp(vec2<f32>(x_5403.x, x_5403.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_5408 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5407.x, x_5408.y, x_5407.y);
          let x_5410 : i32 = u_xlati3;
          let x_5412 : vec4<f32> = x_3143.x_AdditionalLightsCookieAtlasUVRects[x_5410];
          let x_5414 : vec3<f32> = u_xlat37;
          let x_5417 : i32 = u_xlati3;
          let x_5419 : vec4<f32> = x_3143.x_AdditionalLightsCookieAtlasUVRects[x_5417];
          let x_5421 : vec2<f32> = ((vec2<f32>(x_5412.x, x_5412.y) * vec2<f32>(x_5414.x, x_5414.z)) + vec2<f32>(x_5419.z, x_5419.w));
          let x_5422 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5421.x, x_5422.y, x_5421.y, x_5422.w);
        }
      }
      let x_5429 : vec4<f32> = u_xlat11;
      let x_5431 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_5429.x, x_5429.z), 0.0f);
      u_xlat11 = x_5431;
      let x_5433 : bool = u_xlatb58.y;
      if (x_5433) {
        let x_5438 : f32 = u_xlat11.w;
        x_5434 = x_5438;
      } else {
        let x_5441 : f32 = u_xlat11.x;
        x_5434 = x_5441;
      }
      let x_5442 : f32 = x_5434;
      u_xlat88 = x_5442;
      let x_5444 : bool = u_xlatb58.x;
      if (x_5444) {
        let x_5448 : vec4<f32> = u_xlat11;
        x_5445 = vec3<f32>(x_5448.x, x_5448.y, x_5448.z);
      } else {
        let x_5451 : f32 = u_xlat88;
        x_5445 = vec3<f32>(x_5451, x_5451, x_5451);
      }
      let x_5453 : vec3<f32> = x_5445;
      let x_5454 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_5453.x, x_5453.y, x_5453.z, x_5454.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_5460 : vec4<f32> = u_xlat11;
    let x_5462 : i32 = u_xlati3;
    let x_5464 : vec4<f32> = x_3585.x_AdditionalLightsColor[x_5462];
    let x_5466 : vec3<f32> = (vec3<f32>(x_5460.x, x_5460.y, x_5460.z) * vec3<f32>(x_5464.x, x_5464.y, x_5464.z));
    let x_5467 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5466.x, x_5466.y, x_5466.z, x_5467.w);
    let x_5470 : f32 = u_xlat4.x;
    let x_5471 : f32 = u_xlat86;
    u_xlat3.x = (x_5470 * x_5471);
    let x_5474 : vec4<f32> = u_xlat5;
    let x_5476 : vec4<f32> = u_xlat10;
    u_xlat4.x = dot(vec3<f32>(x_5474.x, x_5474.y, x_5474.z), vec3<f32>(x_5476.x, x_5476.y, x_5476.z));
    let x_5481 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_5481, 0.0f, 1.0f);
    let x_5485 : f32 = u_xlat3.x;
    let x_5487 : f32 = u_xlat4.x;
    u_xlat3.x = (x_5485 * x_5487);
    let x_5490 : vec4<f32> = u_xlat3;
    let x_5492 : vec4<f32> = u_xlat11;
    let x_5494 : vec3<f32> = (vec3<f32>(x_5490.x, x_5490.x, x_5490.x) * vec3<f32>(x_5492.x, x_5492.y, x_5492.z));
    let x_5495 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5494.x, x_5494.y, x_5494.z, x_5495.w);
    let x_5497 : vec3<f32> = u_xlat35;
    let x_5498 : f32 = u_xlat85;
    let x_5501 : vec3<f32> = u_xlat29;
    u_xlat35 = ((x_5497 * vec3<f32>(x_5498, x_5498, x_5498)) + x_5501);
    let x_5503 : vec3<f32> = u_xlat35;
    let x_5504 : vec3<f32> = u_xlat35;
    u_xlat3.x = dot(x_5503, x_5504);
    let x_5508 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_5508, 1.17549435e-38f);
    let x_5512 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_5512);
    let x_5515 : vec4<f32> = u_xlat3;
    let x_5517 : vec3<f32> = u_xlat35;
    u_xlat35 = (vec3<f32>(x_5515.x, x_5515.x, x_5515.x) * x_5517);
    let x_5519 : vec4<f32> = u_xlat5;
    let x_5521 : vec3<f32> = u_xlat35;
    u_xlat3.x = dot(vec3<f32>(x_5519.x, x_5519.y, x_5519.z), x_5521);
    let x_5525 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_5525, 0.0f, 1.0f);
    let x_5528 : vec4<f32> = u_xlat10;
    let x_5530 : vec3<f32> = u_xlat35;
    u_xlat4.x = dot(vec3<f32>(x_5528.x, x_5528.y, x_5528.z), x_5530);
    let x_5534 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_5534, 0.0f, 1.0f);
    let x_5538 : f32 = u_xlat3.x;
    let x_5540 : f32 = u_xlat3.x;
    u_xlat3.x = (x_5538 * x_5540);
    let x_5544 : f32 = u_xlat3.x;
    let x_5546 : f32 = u_xlat9.x;
    u_xlat3.x = ((x_5544 * x_5546) + 1.00001001358032226562f);
    let x_5551 : f32 = u_xlat4.x;
    let x_5553 : f32 = u_xlat4.x;
    u_xlat4.x = (x_5551 * x_5553);
    let x_5557 : f32 = u_xlat3.x;
    let x_5559 : f32 = u_xlat3.x;
    u_xlat3.x = (x_5557 * x_5559);
    let x_5563 : f32 = u_xlat4.x;
    u_xlat4.x = max(x_5563, 0.10000000149011611938f);
    let x_5567 : f32 = u_xlat3.x;
    let x_5569 : f32 = u_xlat4.x;
    u_xlat3.x = (x_5567 * x_5569);
    let x_5573 : f32 = u_xlat6.x;
    let x_5575 : f32 = u_xlat3.x;
    u_xlat3.x = (x_5573 * x_5575);
    let x_5578 : f32 = u_xlat83;
    let x_5580 : f32 = u_xlat3.x;
    u_xlat3.x = (x_5578 / x_5580);
    let x_5583 : vec4<f32> = u_xlat3;
    let x_5586 : vec3<f32> = u_xlat2;
    u_xlat35 = ((vec3<f32>(x_5583.x, x_5583.x, x_5583.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5586);
    let x_5588 : vec3<f32> = u_xlat35;
    let x_5589 : vec4<f32> = u_xlat11;
    let x_5592 : vec4<f32> = u_xlat8;
    let x_5594 : vec3<f32> = ((x_5588 * vec3<f32>(x_5589.x, x_5589.y, x_5589.z)) + vec3<f32>(x_5592.x, x_5592.y, x_5592.z));
    let x_5595 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5594.x, x_5594.y, x_5594.z, x_5595.w);

    continuing {
      let x_5597 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5597 + bitcast<u32>(1i));
    }
  }
  let x_5599 : vec3<f32> = u_xlat30;
  let x_5600 : vec3<f32> = u_xlat32;
  let x_5603 : vec4<f32> = u_xlat7;
  u_xlat2 = ((x_5599 * vec3<f32>(x_5600.x, x_5600.x, x_5600.x)) + vec3<f32>(x_5603.x, x_5603.y, x_5603.z));
  let x_5606 : vec4<f32> = u_xlat8;
  let x_5608 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_5606.x, x_5606.y, x_5606.z) + x_5608);
  let x_5610 : vec4<f32> = vs_INTERP6;
  let x_5612 : vec3<f32> = u_xlat0;
  let x_5614 : vec3<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_5610.w, x_5610.w, x_5610.w) * x_5612) + x_5614);
  let x_5617 : f32 = u_xlat27.x;
  let x_5619 : f32 = u_xlat27.x;
  u_xlat78 = (x_5617 * -(x_5619));
  let x_5622 : f32 = u_xlat78;
  u_xlat78 = exp2(x_5622);
  let x_5624 : vec3<f32> = u_xlat0;
  let x_5626 : vec4<f32> = x_53.unity_FogColor;
  u_xlat0 = (x_5624 + -(vec3<f32>(x_5626.x, x_5626.y, x_5626.z)));
  let x_5632 : f32 = u_xlat78;
  let x_5634 : vec3<f32> = u_xlat0;
  let x_5637 : vec4<f32> = x_53.unity_FogColor;
  let x_5639 : vec3<f32> = ((vec3<f32>(x_5632, x_5632, x_5632) * x_5634) + vec3<f32>(x_5637.x, x_5637.y, x_5637.z));
  let x_5640 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5639.x, x_5639.y, x_5639.z, x_5640.w);
  let x_5642 : bool = u_xlatb53;
  if (x_5642) {
    let x_5647 : f32 = u_xlat1.x;
    x_5643 = x_5647;
  } else {
    x_5643 = 1.0f;
  }
  let x_5649 : f32 = x_5643;
  SV_Target0.w = x_5649;
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


