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

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(7) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_128 : PGlobals;

var<private> u_xlat5 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_138 : UnityPerMaterial;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(8) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat32 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_246 : LightShadows;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu0 : u32;

var<private> u_xlati0 : i32;

var<private> u_xlatb0 : bool;

var<private> u_xlatb79 : bool;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat79 : f32;

var<private> u_xlatb80 : bool;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat29 : vec3<f32>;

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

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatb29 : bool;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlatb55 : bool;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlatb58 : bool;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat84 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlat35 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat54 : f32;

var<private> u_xlatb28 : vec2<bool>;

@group(1) @binding(4) var<uniform> x_3286 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu58 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati58 : i32;

@group(1) @binding(1) var<uniform> x_3797 : AdditionalLights;

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
  var x_1772 : f32;
  var x_1823 : f32;
  var x_1901 : f32;
  var x_1912 : f32;
  var x_1923 : f32;
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
  var x_3232 : f32;
  var x_3368 : f32;
  var x_3379 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3933 : f32;
  var x_3943 : f32;
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
  var x_5526 : f32;
  var x_5539 : f32;
  var x_5597 : f32;
  var x_5608 : vec3<f32>;
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
  let x_97 : vec3<f32> = u_xlat0;
  let x_99 : vec4<f32> = vs_INTERP4;
  let x_101 : vec3<f32> = (vec3<f32>(x_97.x, x_97.x, x_97.x) * vec3<f32>(x_99.x, x_99.y, x_99.z));
  let x_102 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_101.x, x_101.y, x_101.z, x_102.w);
  let x_105 : vec3<f32> = u_xlat26;
  let x_106 : vec3<f32> = u_xlat0;
  let x_108 : vec3<f32> = (x_105 * vec3<f32>(x_106.x, x_106.x, x_106.x));
  let x_109 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_108.x, x_108.y, x_108.z, x_109.w);
  let x_124 : vec4<f32> = vs_INTERP5;
  let x_131 : f32 = x_128.x_GlobalMipBias.x;
  let x_132 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_124.x, x_124.y), x_131);
  u_xlat4 = x_132;
  let x_134 : vec4<f32> = u_xlat4;
  let x_142 : vec4<f32> = x_138.Color_C30C7CA3;
  u_xlat5 = (vec3<f32>(x_134.x, x_134.y, x_134.z) * vec3<f32>(x_142.x, x_142.y, x_142.z));
  let x_151 : vec4<f32> = vs_INTERP5;
  let x_154 : f32 = x_128.x_GlobalMipBias.x;
  let x_155 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_151.x, x_151.y), x_154);
  u_xlat6 = vec4<f32>(x_155.w, x_155.x, x_155.y, x_155.z);
  let x_158 : vec4<f32> = u_xlat6;
  u_xlat7 = ((vec4<f32>(x_158.y, x_158.z, x_158.w, x_158.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_165 : vec4<f32> = u_xlat7;
  let x_166 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_165, x_166);
  let x_170 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_170);
  let x_174 : vec3<f32> = u_xlat0;
  let x_176 : vec4<f32> = u_xlat7;
  u_xlat32 = (vec3<f32>(x_174.x, x_174.x, x_174.x) * vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_181 : f32 = vs_INTERP6.y;
  u_xlat0.x = (x_181 * 200.0f);
  let x_186 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_186, 1.0f);
  let x_189 : vec3<f32> = u_xlat0;
  let x_191 : vec4<f32> = u_xlat4;
  let x_193 : vec3<f32> = (vec3<f32>(x_189.x, x_189.x, x_189.x) * vec3<f32>(x_191.x, x_191.y, x_191.z));
  let x_194 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_196 : vec4<f32> = u_xlat3;
  let x_198 : vec3<f32> = u_xlat32;
  let x_200 : vec3<f32> = (vec3<f32>(x_196.x, x_196.y, x_196.z) * vec3<f32>(x_198.y, x_198.y, x_198.y));
  let x_201 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_200.x, x_200.y, x_200.z, x_201.w);
  let x_203 : vec3<f32> = u_xlat32;
  let x_205 : vec4<f32> = u_xlat2;
  let x_208 : vec4<f32> = u_xlat3;
  let x_210 : vec3<f32> = ((vec3<f32>(x_203.x, x_203.x, x_203.x) * vec3<f32>(x_205.x, x_205.y, x_205.z)) + vec3<f32>(x_208.x, x_208.y, x_208.z));
  let x_211 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
  let x_213 : vec3<f32> = u_xlat32;
  let x_215 : vec3<f32> = u_xlat1;
  let x_217 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_213.z, x_213.z, x_213.z) * x_215) + vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_220 : vec3<f32> = u_xlat1;
  let x_221 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_220, x_221);
  let x_225 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_225, 1.17549435e-38f);
  let x_230 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_230);
  let x_233 : vec3<f32> = u_xlat0;
  let x_235 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_233.x, x_233.x, x_233.x) * x_235);
  let x_238 : vec3<f32> = vs_INTERP8;
  let x_248 : vec4<f32> = x_246.x_CascadeShadowSplitSpheres0;
  let x_251 : vec3<f32> = (x_238 + -(vec3<f32>(x_248.x, x_248.y, x_248.z)));
  let x_252 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_254 : vec3<f32> = vs_INTERP8;
  let x_257 : vec4<f32> = x_246.x_CascadeShadowSplitSpheres1;
  let x_260 : vec3<f32> = (x_254 + -(vec3<f32>(x_257.x, x_257.y, x_257.z)));
  let x_261 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_263 : vec3<f32> = vs_INTERP8;
  let x_265 : vec4<f32> = x_246.x_CascadeShadowSplitSpheres2;
  let x_268 : vec3<f32> = (x_263 + -(vec3<f32>(x_265.x, x_265.y, x_265.z)));
  let x_269 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_272 : vec3<f32> = vs_INTERP8;
  let x_275 : vec4<f32> = x_246.x_CascadeShadowSplitSpheres3;
  let x_278 : vec3<f32> = (x_272 + -(vec3<f32>(x_275.x, x_275.y, x_275.z)));
  let x_279 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
  let x_281 : vec4<f32> = u_xlat2;
  let x_283 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_281.x, x_281.y, x_281.z), vec3<f32>(x_283.x, x_283.y, x_283.z));
  let x_287 : vec4<f32> = u_xlat3;
  let x_289 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_287.x, x_287.y, x_287.z), vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_293 : vec4<f32> = u_xlat7;
  let x_295 : vec4<f32> = u_xlat7;
  u_xlat2.z = dot(vec3<f32>(x_293.x, x_293.y, x_293.z), vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_299 : vec4<f32> = u_xlat8;
  let x_301 : vec4<f32> = u_xlat8;
  u_xlat2.w = dot(vec3<f32>(x_299.x, x_299.y, x_299.z), vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_308 : vec4<f32> = u_xlat2;
  let x_311 : vec4<f32> = x_246.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_308 < x_311);
  let x_314 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_314);
  let x_318 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_318);
  let x_322 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_322);
  let x_326 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_326);
  let x_330 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_330);
  let x_335 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_335);
  let x_339 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_339);
  let x_342 : vec4<f32> = u_xlat2;
  let x_344 : vec4<f32> = u_xlat3;
  let x_346 : vec3<f32> = (vec3<f32>(x_342.x, x_342.y, x_342.z) + vec3<f32>(x_344.y, x_344.z, x_344.w));
  let x_347 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_349 : vec4<f32> = u_xlat2;
  let x_352 : vec3<f32> = max(vec3<f32>(x_349.x, x_349.y, x_349.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_353 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_353.x, x_352.x, x_352.y, x_352.z);
  let x_355 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(x_355, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_362 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_362) + 4.0f);
  let x_369 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_369);
  let x_373 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_373) << bitcast<u32>(2i));
  let x_376 : vec3<f32> = vs_INTERP8;
  let x_378 : i32 = u_xlati0;
  let x_381 : i32 = u_xlati0;
  let x_385 : vec4<f32> = x_246.x_MainLightWorldToShadow[((x_378 + 1i) / 4i)][((x_381 + 1i) % 4i)];
  let x_387 : vec3<f32> = (vec3<f32>(x_376.y, x_376.y, x_376.y) * vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_388 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_390 : i32 = u_xlati0;
  let x_392 : i32 = u_xlati0;
  let x_395 : vec4<f32> = x_246.x_MainLightWorldToShadow[(x_390 / 4i)][(x_392 % 4i)];
  let x_397 : vec3<f32> = vs_INTERP8;
  let x_400 : vec4<f32> = u_xlat2;
  let x_402 : vec3<f32> = ((vec3<f32>(x_395.x, x_395.y, x_395.z) * vec3<f32>(x_397.x, x_397.x, x_397.x)) + vec3<f32>(x_400.x, x_400.y, x_400.z));
  let x_403 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
  let x_405 : i32 = u_xlati0;
  let x_408 : i32 = u_xlati0;
  let x_412 : vec4<f32> = x_246.x_MainLightWorldToShadow[((x_405 + 2i) / 4i)][((x_408 + 2i) % 4i)];
  let x_414 : vec3<f32> = vs_INTERP8;
  let x_417 : vec4<f32> = u_xlat2;
  let x_419 : vec3<f32> = ((vec3<f32>(x_412.x, x_412.y, x_412.z) * vec3<f32>(x_414.z, x_414.z, x_414.z)) + vec3<f32>(x_417.x, x_417.y, x_417.z));
  let x_420 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_422 : vec4<f32> = u_xlat2;
  let x_424 : i32 = u_xlati0;
  let x_427 : i32 = u_xlati0;
  let x_431 : vec4<f32> = x_246.x_MainLightWorldToShadow[((x_424 + 3i) / 4i)][((x_427 + 3i) % 4i)];
  let x_433 : vec3<f32> = (vec3<f32>(x_422.x, x_422.y, x_422.z) + vec3<f32>(x_431.x, x_431.y, x_431.z));
  let x_434 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
  let x_439 : f32 = x_246.x_MainLightShadowParams.y;
  u_xlatb0 = (0.0f < x_439);
  let x_441 : bool = u_xlatb0;
  if (x_441) {
    let x_446 : f32 = x_246.x_MainLightShadowParams.y;
    u_xlatb79 = (x_446 == 1.0f);
    let x_448 : bool = u_xlatb79;
    if (x_448) {
      let x_451 : vec4<f32> = u_xlat2;
      let x_455 : vec4<f32> = x_246.x_MainLightShadowOffset0;
      u_xlat3 = (vec4<f32>(x_451.x, x_451.y, x_451.x, x_451.y) + x_455);
      let x_459 : vec4<f32> = u_xlat3;
      let x_460 : vec2<f32> = vec2<f32>(x_459.x, x_459.y);
      let x_462 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_460.x, x_460.y, x_462);
      let x_474 : vec3<f32> = txVec0;
      let x_476 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_474.xy, x_474.z);
      u_xlat7.x = x_476;
      let x_479 : vec4<f32> = u_xlat3;
      let x_480 : vec2<f32> = vec2<f32>(x_479.z, x_479.w);
      let x_482 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_480.x, x_480.y, x_482);
      let x_489 : vec3<f32> = txVec1;
      let x_491 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_489.xy, x_489.z);
      u_xlat7.y = x_491;
      let x_493 : vec4<f32> = u_xlat2;
      let x_497 : vec4<f32> = x_246.x_MainLightShadowOffset1;
      u_xlat3 = (vec4<f32>(x_493.x, x_493.y, x_493.x, x_493.y) + x_497);
      let x_500 : vec4<f32> = u_xlat3;
      let x_501 : vec2<f32> = vec2<f32>(x_500.x, x_500.y);
      let x_503 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_501.x, x_501.y, x_503);
      let x_510 : vec3<f32> = txVec2;
      let x_512 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_510.xy, x_510.z);
      u_xlat7.z = x_512;
      let x_515 : vec4<f32> = u_xlat3;
      let x_516 : vec2<f32> = vec2<f32>(x_515.z, x_515.w);
      let x_518 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_516.x, x_516.y, x_518);
      let x_525 : vec3<f32> = txVec3;
      let x_527 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_525.xy, x_525.z);
      u_xlat7.w = x_527;
      let x_530 : vec4<f32> = u_xlat7;
      u_xlat79 = dot(x_530, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_537 : f32 = x_246.x_MainLightShadowParams.y;
      u_xlatb80 = (x_537 == 2.0f);
      let x_539 : bool = u_xlatb80;
      if (x_539) {
        let x_542 : vec4<f32> = u_xlat2;
        let x_546 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_551 : vec2<f32> = ((vec2<f32>(x_542.x, x_542.y) * vec2<f32>(x_546.z, x_546.w)) + vec2<f32>(0.5f, 0.5f));
        let x_552 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_551.x, x_551.y, x_552.z, x_552.w);
        let x_554 : vec4<f32> = u_xlat3;
        let x_556 : vec2<f32> = floor(vec2<f32>(x_554.x, x_554.y));
        let x_557 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_556.x, x_556.y, x_557.z, x_557.w);
        let x_561 : vec4<f32> = u_xlat2;
        let x_564 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_567 : vec4<f32> = u_xlat3;
        u_xlat55 = ((vec2<f32>(x_561.x, x_561.y) * vec2<f32>(x_564.z, x_564.w)) + -(vec2<f32>(x_567.x, x_567.y)));
        let x_571 : vec2<f32> = u_xlat55;
        u_xlat7 = (vec4<f32>(x_571.x, x_571.x, x_571.y, x_571.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_575 : vec4<f32> = u_xlat7;
        let x_577 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_575.x, x_575.x, x_575.z, x_575.z) * vec4<f32>(x_577.x, x_577.x, x_577.z, x_577.z));
        let x_580 : vec4<f32> = u_xlat8;
        let x_584 : vec2<f32> = (vec2<f32>(x_580.y, x_580.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_585 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_584.x, x_585.y, x_584.y, x_585.w);
        let x_587 : vec4<f32> = u_xlat8;
        let x_590 : vec2<f32> = u_xlat55;
        let x_592 : vec2<f32> = ((vec2<f32>(x_587.x, x_587.z) * vec2<f32>(0.5f, 0.5f)) + -(x_590));
        let x_593 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_592.x, x_592.y, x_593.z, x_593.w);
        let x_596 : vec2<f32> = u_xlat55;
        u_xlat60 = (-(x_596) + vec2<f32>(1.0f, 1.0f));
        let x_601 : vec2<f32> = u_xlat55;
        let x_603 : vec2<f32> = min(x_601, vec2<f32>(0.0f, 0.0f));
        let x_604 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_603.x, x_603.y, x_604.z, x_604.w);
        let x_606 : vec4<f32> = u_xlat9;
        let x_609 : vec4<f32> = u_xlat9;
        let x_612 : vec2<f32> = u_xlat60;
        let x_613 : vec2<f32> = ((-(vec2<f32>(x_606.x, x_606.y)) * vec2<f32>(x_609.x, x_609.y)) + x_612);
        let x_614 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_613.x, x_613.y, x_614.z, x_614.w);
        let x_616 : vec2<f32> = u_xlat55;
        u_xlat55 = max(x_616, vec2<f32>(0.0f, 0.0f));
        let x_618 : vec2<f32> = u_xlat55;
        let x_620 : vec2<f32> = u_xlat55;
        let x_622 : vec4<f32> = u_xlat7;
        u_xlat55 = ((-(x_618) * x_620) + vec2<f32>(x_622.y, x_622.w));
        let x_625 : vec4<f32> = u_xlat9;
        let x_627 : vec2<f32> = (vec2<f32>(x_625.x, x_625.y) + vec2<f32>(1.0f, 1.0f));
        let x_628 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_627.x, x_627.y, x_628.z, x_628.w);
        let x_630 : vec2<f32> = u_xlat55;
        u_xlat55 = (x_630 + vec2<f32>(1.0f, 1.0f));
        let x_633 : vec4<f32> = u_xlat8;
        let x_637 : vec2<f32> = (vec2<f32>(x_633.x, x_633.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_638 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_637.x, x_637.y, x_638.z, x_638.w);
        let x_640 : vec2<f32> = u_xlat60;
        let x_641 : vec2<f32> = (x_640 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_642 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_641.x, x_641.y, x_642.z, x_642.w);
        let x_644 : vec4<f32> = u_xlat9;
        let x_646 : vec2<f32> = (vec2<f32>(x_644.x, x_644.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_647 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_646.x, x_646.y, x_647.z, x_647.w);
        let x_650 : vec2<f32> = u_xlat55;
        let x_651 : vec2<f32> = (x_650 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_652 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_651.x, x_651.y, x_652.z, x_652.w);
        let x_654 : vec4<f32> = u_xlat7;
        u_xlat55 = (vec2<f32>(x_654.y, x_654.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_658 : f32 = u_xlat9.x;
        u_xlat10.z = x_658;
        let x_661 : f32 = u_xlat55.x;
        u_xlat10.w = x_661;
        let x_664 : f32 = u_xlat11.x;
        u_xlat8.z = x_664;
        let x_667 : f32 = u_xlat7.x;
        u_xlat8.w = x_667;
        let x_670 : vec4<f32> = u_xlat8;
        let x_672 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_670.z, x_670.w, x_670.x, x_670.z) + vec4<f32>(x_672.z, x_672.w, x_672.x, x_672.z));
        let x_676 : f32 = u_xlat10.y;
        u_xlat9.z = x_676;
        let x_679 : f32 = u_xlat55.y;
        u_xlat9.w = x_679;
        let x_682 : f32 = u_xlat8.y;
        u_xlat11.z = x_682;
        let x_685 : f32 = u_xlat7.z;
        u_xlat11.w = x_685;
        let x_687 : vec4<f32> = u_xlat9;
        let x_689 : vec4<f32> = u_xlat11;
        let x_691 : vec3<f32> = (vec3<f32>(x_687.z, x_687.y, x_687.w) + vec3<f32>(x_689.z, x_689.y, x_689.w));
        let x_692 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
        let x_694 : vec4<f32> = u_xlat8;
        let x_696 : vec4<f32> = u_xlat12;
        let x_698 : vec3<f32> = (vec3<f32>(x_694.x, x_694.z, x_694.w) / vec3<f32>(x_696.z, x_696.w, x_696.y));
        let x_699 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
        let x_701 : vec4<f32> = u_xlat8;
        let x_707 : vec3<f32> = (vec3<f32>(x_701.x, x_701.y, x_701.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_708 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
        let x_710 : vec4<f32> = u_xlat11;
        let x_712 : vec4<f32> = u_xlat7;
        let x_714 : vec3<f32> = (vec3<f32>(x_710.z, x_710.y, x_710.w) / vec3<f32>(x_712.x, x_712.y, x_712.z));
        let x_715 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
        let x_717 : vec4<f32> = u_xlat9;
        let x_719 : vec3<f32> = (vec3<f32>(x_717.x, x_717.y, x_717.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_720 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_719.x, x_719.y, x_719.z, x_720.w);
        let x_722 : vec4<f32> = u_xlat8;
        let x_725 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_727 : vec3<f32> = (vec3<f32>(x_722.y, x_722.x, x_722.z) * vec3<f32>(x_725.x, x_725.x, x_725.x));
        let x_728 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_727.x, x_727.y, x_727.z, x_728.w);
        let x_730 : vec4<f32> = u_xlat9;
        let x_733 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_735 : vec3<f32> = (vec3<f32>(x_730.x, x_730.y, x_730.z) * vec3<f32>(x_733.y, x_733.y, x_733.y));
        let x_736 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_735.x, x_735.y, x_735.z, x_736.w);
        let x_739 : f32 = u_xlat9.x;
        u_xlat8.w = x_739;
        let x_741 : vec4<f32> = u_xlat3;
        let x_744 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_747 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_741.x, x_741.y, x_741.x, x_741.y) * vec4<f32>(x_744.x, x_744.y, x_744.x, x_744.y)) + vec4<f32>(x_747.y, x_747.w, x_747.x, x_747.w));
        let x_750 : vec4<f32> = u_xlat3;
        let x_753 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_756 : vec4<f32> = u_xlat8;
        u_xlat55 = ((vec2<f32>(x_750.x, x_750.y) * vec2<f32>(x_753.x, x_753.y)) + vec2<f32>(x_756.z, x_756.w));
        let x_760 : f32 = u_xlat8.y;
        u_xlat9.w = x_760;
        let x_762 : vec4<f32> = u_xlat9;
        let x_763 : vec2<f32> = vec2<f32>(x_762.y, x_762.z);
        let x_764 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_764.x, x_763.x, x_764.z, x_763.y);
        let x_766 : vec4<f32> = u_xlat3;
        let x_769 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_772 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_766.x, x_766.y, x_766.x, x_766.y) * vec4<f32>(x_769.x, x_769.y, x_769.x, x_769.y)) + vec4<f32>(x_772.x, x_772.y, x_772.z, x_772.y));
        let x_775 : vec4<f32> = u_xlat3;
        let x_778 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_781 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_775.x, x_775.y, x_775.x, x_775.y) * vec4<f32>(x_778.x, x_778.y, x_778.x, x_778.y)) + vec4<f32>(x_781.w, x_781.y, x_781.w, x_781.z));
        let x_784 : vec4<f32> = u_xlat3;
        let x_787 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_790 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_784.x, x_784.y, x_784.x, x_784.y) * vec4<f32>(x_787.x, x_787.y, x_787.x, x_787.y)) + vec4<f32>(x_790.x, x_790.w, x_790.z, x_790.w));
        let x_794 : vec4<f32> = u_xlat7;
        let x_796 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_794.x, x_794.x, x_794.x, x_794.y) * vec4<f32>(x_796.z, x_796.w, x_796.y, x_796.z));
        let x_800 : vec4<f32> = u_xlat7;
        let x_802 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_800.y, x_800.y, x_800.z, x_800.z) * x_802);
        let x_806 : f32 = u_xlat7.z;
        let x_808 : f32 = u_xlat12.y;
        u_xlat80 = (x_806 * x_808);
        let x_811 : vec4<f32> = u_xlat10;
        let x_812 : vec2<f32> = vec2<f32>(x_811.x, x_811.y);
        let x_814 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_812.x, x_812.y, x_814);
        let x_821 : vec3<f32> = txVec4;
        let x_823 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_821.xy, x_821.z);
        u_xlat3.x = x_823;
        let x_826 : vec4<f32> = u_xlat10;
        let x_827 : vec2<f32> = vec2<f32>(x_826.z, x_826.w);
        let x_829 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_827.x, x_827.y, x_829);
        let x_837 : vec3<f32> = txVec5;
        let x_839 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_837.xy, x_837.z);
        u_xlat29.x = x_839;
        let x_842 : f32 = u_xlat29.x;
        let x_844 : f32 = u_xlat13.y;
        u_xlat29.x = (x_842 * x_844);
        let x_848 : f32 = u_xlat13.x;
        let x_850 : f32 = u_xlat3.x;
        let x_853 : f32 = u_xlat29.x;
        u_xlat3.x = ((x_848 * x_850) + x_853);
        let x_857 : vec2<f32> = u_xlat55;
        let x_859 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_857.x, x_857.y, x_859);
        let x_866 : vec3<f32> = txVec6;
        let x_868 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_866.xy, x_866.z);
        u_xlat29.x = x_868;
        let x_871 : f32 = u_xlat13.z;
        let x_873 : f32 = u_xlat29.x;
        let x_876 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_871 * x_873) + x_876);
        let x_880 : vec4<f32> = u_xlat9;
        let x_881 : vec2<f32> = vec2<f32>(x_880.x, x_880.y);
        let x_883 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_881.x, x_881.y, x_883);
        let x_890 : vec3<f32> = txVec7;
        let x_892 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_890.xy, x_890.z);
        u_xlat29.x = x_892;
        let x_895 : f32 = u_xlat13.w;
        let x_897 : f32 = u_xlat29.x;
        let x_900 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_895 * x_897) + x_900);
        let x_904 : vec4<f32> = u_xlat11;
        let x_905 : vec2<f32> = vec2<f32>(x_904.x, x_904.y);
        let x_907 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_905.x, x_905.y, x_907);
        let x_914 : vec3<f32> = txVec8;
        let x_916 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_914.xy, x_914.z);
        u_xlat29.x = x_916;
        let x_919 : f32 = u_xlat14.x;
        let x_921 : f32 = u_xlat29.x;
        let x_924 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_919 * x_921) + x_924);
        let x_928 : vec4<f32> = u_xlat11;
        let x_929 : vec2<f32> = vec2<f32>(x_928.z, x_928.w);
        let x_931 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_929.x, x_929.y, x_931);
        let x_938 : vec3<f32> = txVec9;
        let x_940 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_938.xy, x_938.z);
        u_xlat29.x = x_940;
        let x_943 : f32 = u_xlat14.y;
        let x_945 : f32 = u_xlat29.x;
        let x_948 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_943 * x_945) + x_948);
        let x_952 : vec4<f32> = u_xlat9;
        let x_953 : vec2<f32> = vec2<f32>(x_952.z, x_952.w);
        let x_955 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_953.x, x_953.y, x_955);
        let x_962 : vec3<f32> = txVec10;
        let x_964 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_962.xy, x_962.z);
        u_xlat29.x = x_964;
        let x_967 : f32 = u_xlat14.z;
        let x_969 : f32 = u_xlat29.x;
        let x_972 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_967 * x_969) + x_972);
        let x_976 : vec4<f32> = u_xlat8;
        let x_977 : vec2<f32> = vec2<f32>(x_976.x, x_976.y);
        let x_979 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_977.x, x_977.y, x_979);
        let x_986 : vec3<f32> = txVec11;
        let x_988 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_986.xy, x_986.z);
        u_xlat29.x = x_988;
        let x_991 : f32 = u_xlat14.w;
        let x_993 : f32 = u_xlat29.x;
        let x_996 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_991 * x_993) + x_996);
        let x_1000 : vec4<f32> = u_xlat8;
        let x_1001 : vec2<f32> = vec2<f32>(x_1000.z, x_1000.w);
        let x_1003 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_1001.x, x_1001.y, x_1003);
        let x_1010 : vec3<f32> = txVec12;
        let x_1012 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1010.xy, x_1010.z);
        u_xlat29.x = x_1012;
        let x_1014 : f32 = u_xlat80;
        let x_1016 : f32 = u_xlat29.x;
        let x_1019 : f32 = u_xlat3.x;
        u_xlat79 = ((x_1014 * x_1016) + x_1019);
      } else {
        let x_1022 : vec4<f32> = u_xlat2;
        let x_1025 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1028 : vec2<f32> = ((vec2<f32>(x_1022.x, x_1022.y) * vec2<f32>(x_1025.z, x_1025.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1029 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1028.x, x_1028.y, x_1029.z, x_1029.w);
        let x_1031 : vec4<f32> = u_xlat3;
        let x_1033 : vec2<f32> = floor(vec2<f32>(x_1031.x, x_1031.y));
        let x_1034 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1033.x, x_1033.y, x_1034.z, x_1034.w);
        let x_1036 : vec4<f32> = u_xlat2;
        let x_1039 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1042 : vec4<f32> = u_xlat3;
        u_xlat55 = ((vec2<f32>(x_1036.x, x_1036.y) * vec2<f32>(x_1039.z, x_1039.w)) + -(vec2<f32>(x_1042.x, x_1042.y)));
        let x_1046 : vec2<f32> = u_xlat55;
        u_xlat7 = (vec4<f32>(x_1046.x, x_1046.x, x_1046.y, x_1046.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1049 : vec4<f32> = u_xlat7;
        let x_1051 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1049.x, x_1049.x, x_1049.z, x_1049.z) * vec4<f32>(x_1051.x, x_1051.x, x_1051.z, x_1051.z));
        let x_1054 : vec4<f32> = u_xlat8;
        let x_1058 : vec2<f32> = (vec2<f32>(x_1054.y, x_1054.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1059 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1059.x, x_1058.x, x_1059.z, x_1058.y);
        let x_1061 : vec4<f32> = u_xlat8;
        let x_1064 : vec2<f32> = u_xlat55;
        let x_1066 : vec2<f32> = ((vec2<f32>(x_1061.x, x_1061.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1064));
        let x_1067 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1066.x, x_1067.y, x_1066.y, x_1067.w);
        let x_1069 : vec2<f32> = u_xlat55;
        let x_1071 : vec2<f32> = (-(x_1069) + vec2<f32>(1.0f, 1.0f));
        let x_1072 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1071.x, x_1071.y, x_1072.z, x_1072.w);
        let x_1074 : vec2<f32> = u_xlat55;
        u_xlat60 = min(x_1074, vec2<f32>(0.0f, 0.0f));
        let x_1076 : vec2<f32> = u_xlat60;
        let x_1078 : vec2<f32> = u_xlat60;
        let x_1080 : vec4<f32> = u_xlat8;
        let x_1082 : vec2<f32> = ((-(x_1076) * x_1078) + vec2<f32>(x_1080.x, x_1080.y));
        let x_1083 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1082.x, x_1082.y, x_1083.z, x_1083.w);
        let x_1085 : vec2<f32> = u_xlat55;
        u_xlat60 = max(x_1085, vec2<f32>(0.0f, 0.0f));
        let x_1088 : vec2<f32> = u_xlat60;
        let x_1090 : vec2<f32> = u_xlat60;
        let x_1092 : vec4<f32> = u_xlat7;
        let x_1094 : vec2<f32> = ((-(x_1088) * x_1090) + vec2<f32>(x_1092.y, x_1092.w));
        let x_1095 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1094.x, x_1095.y, x_1094.y);
        let x_1097 : vec4<f32> = u_xlat8;
        let x_1100 : vec2<f32> = (vec2<f32>(x_1097.x, x_1097.y) + vec2<f32>(2.0f, 2.0f));
        let x_1101 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1100.x, x_1100.y, x_1101.z, x_1101.w);
        let x_1103 : vec3<f32> = u_xlat33;
        let x_1105 : vec2<f32> = (vec2<f32>(x_1103.x, x_1103.z) + vec2<f32>(2.0f, 2.0f));
        let x_1106 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1106.x, x_1105.x, x_1106.z, x_1105.y);
        let x_1109 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1109 * 0.08163200318813323975f);
        let x_1113 : vec4<f32> = u_xlat7;
        let x_1116 : vec3<f32> = (vec3<f32>(x_1113.z, x_1113.x, x_1113.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1117 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1116.x, x_1116.y, x_1116.z, x_1117.w);
        let x_1119 : vec4<f32> = u_xlat8;
        let x_1122 : vec2<f32> = (vec2<f32>(x_1119.x, x_1119.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1123 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1122.x, x_1122.y, x_1123.z, x_1123.w);
        let x_1126 : f32 = u_xlat11.y;
        u_xlat10.x = x_1126;
        let x_1128 : vec2<f32> = u_xlat55;
        let x_1135 : vec2<f32> = ((vec2<f32>(x_1128.x, x_1128.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1136 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1136.x, x_1135.x, x_1136.z, x_1135.y);
        let x_1138 : vec2<f32> = u_xlat55;
        let x_1142 : vec2<f32> = ((vec2<f32>(x_1138.x, x_1138.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1143 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1142.x, x_1143.y, x_1142.y, x_1143.w);
        let x_1146 : f32 = u_xlat7.x;
        u_xlat8.y = x_1146;
        let x_1149 : f32 = u_xlat9.y;
        u_xlat8.w = x_1149;
        let x_1151 : vec4<f32> = u_xlat8;
        let x_1152 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1151 + x_1152);
        let x_1154 : vec2<f32> = u_xlat55;
        let x_1157 : vec2<f32> = ((vec2<f32>(x_1154.y, x_1154.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1158 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1158.x, x_1157.x, x_1158.z, x_1157.y);
        let x_1160 : vec2<f32> = u_xlat55;
        let x_1163 : vec2<f32> = ((vec2<f32>(x_1160.y, x_1160.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1164 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1163.x, x_1164.y, x_1163.y, x_1164.w);
        let x_1167 : f32 = u_xlat7.y;
        u_xlat9.y = x_1167;
        let x_1169 : vec4<f32> = u_xlat9;
        let x_1170 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1169 + x_1170);
        let x_1172 : vec4<f32> = u_xlat8;
        let x_1173 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1172 / x_1173);
        let x_1175 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1175 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1181 : vec4<f32> = u_xlat9;
        let x_1182 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1181 / x_1182);
        let x_1184 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1184 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1186 : vec4<f32> = u_xlat8;
        let x_1189 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1186.w, x_1186.x, x_1186.y, x_1186.z) * vec4<f32>(x_1189.x, x_1189.x, x_1189.x, x_1189.x));
        let x_1192 : vec4<f32> = u_xlat9;
        let x_1195 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1192.x, x_1192.w, x_1192.y, x_1192.z) * vec4<f32>(x_1195.y, x_1195.y, x_1195.y, x_1195.y));
        let x_1198 : vec4<f32> = u_xlat8;
        let x_1199 : vec3<f32> = vec3<f32>(x_1198.y, x_1198.z, x_1198.w);
        let x_1200 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1199.x, x_1200.y, x_1199.y, x_1199.z);
        let x_1203 : f32 = u_xlat9.x;
        u_xlat11.y = x_1203;
        let x_1205 : vec4<f32> = u_xlat3;
        let x_1208 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1211 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1205.x, x_1205.y, x_1205.x, x_1205.y) * vec4<f32>(x_1208.x, x_1208.y, x_1208.x, x_1208.y)) + vec4<f32>(x_1211.x, x_1211.y, x_1211.z, x_1211.y));
        let x_1214 : vec4<f32> = u_xlat3;
        let x_1217 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1220 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1214.x, x_1214.y) * vec2<f32>(x_1217.x, x_1217.y)) + vec2<f32>(x_1220.w, x_1220.y));
        let x_1224 : f32 = u_xlat11.y;
        u_xlat8.y = x_1224;
        let x_1227 : f32 = u_xlat9.z;
        u_xlat11.y = x_1227;
        let x_1229 : vec4<f32> = u_xlat3;
        let x_1232 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1235 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1229.x, x_1229.y, x_1229.x, x_1229.y) * vec4<f32>(x_1232.x, x_1232.y, x_1232.x, x_1232.y)) + vec4<f32>(x_1235.x, x_1235.y, x_1235.z, x_1235.y));
        let x_1238 : vec4<f32> = u_xlat3;
        let x_1241 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1244 : vec4<f32> = u_xlat11;
        let x_1246 : vec2<f32> = ((vec2<f32>(x_1238.x, x_1238.y) * vec2<f32>(x_1241.x, x_1241.y)) + vec2<f32>(x_1244.w, x_1244.y));
        let x_1247 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1246.x, x_1246.y, x_1247.z, x_1247.w);
        let x_1250 : f32 = u_xlat11.y;
        u_xlat8.z = x_1250;
        let x_1253 : vec4<f32> = u_xlat3;
        let x_1256 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1259 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1253.x, x_1253.y, x_1253.x, x_1253.y) * vec4<f32>(x_1256.x, x_1256.y, x_1256.x, x_1256.y)) + vec4<f32>(x_1259.x, x_1259.y, x_1259.x, x_1259.z));
        let x_1263 : f32 = u_xlat9.w;
        u_xlat11.y = x_1263;
        let x_1266 : vec4<f32> = u_xlat3;
        let x_1269 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1272 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1266.x, x_1266.y, x_1266.x, x_1266.y) * vec4<f32>(x_1269.x, x_1269.y, x_1269.x, x_1269.y)) + vec4<f32>(x_1272.x, x_1272.y, x_1272.z, x_1272.y));
        let x_1276 : vec4<f32> = u_xlat3;
        let x_1279 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1282 : vec4<f32> = u_xlat11;
        u_xlat34 = ((vec2<f32>(x_1276.x, x_1276.y) * vec2<f32>(x_1279.x, x_1279.y)) + vec2<f32>(x_1282.w, x_1282.y));
        let x_1286 : f32 = u_xlat11.y;
        u_xlat8.w = x_1286;
        let x_1289 : vec4<f32> = u_xlat3;
        let x_1292 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1295 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1289.x, x_1289.y) * vec2<f32>(x_1292.x, x_1292.y)) + vec2<f32>(x_1295.x, x_1295.w));
        let x_1298 : vec4<f32> = u_xlat11;
        let x_1299 : vec3<f32> = vec3<f32>(x_1298.x, x_1298.z, x_1298.w);
        let x_1300 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1299.x, x_1300.y, x_1299.y, x_1299.z);
        let x_1302 : vec4<f32> = u_xlat3;
        let x_1305 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1308 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1302.x, x_1302.y, x_1302.x, x_1302.y) * vec4<f32>(x_1305.x, x_1305.y, x_1305.x, x_1305.y)) + vec4<f32>(x_1308.x, x_1308.y, x_1308.z, x_1308.y));
        let x_1312 : vec4<f32> = u_xlat3;
        let x_1315 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1318 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1312.x, x_1312.y) * vec2<f32>(x_1315.x, x_1315.y)) + vec2<f32>(x_1318.w, x_1318.y));
        let x_1322 : f32 = u_xlat8.x;
        u_xlat9.x = x_1322;
        let x_1324 : vec4<f32> = u_xlat3;
        let x_1327 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1330 : vec4<f32> = u_xlat9;
        let x_1332 : vec2<f32> = ((vec2<f32>(x_1324.x, x_1324.y) * vec2<f32>(x_1327.x, x_1327.y)) + vec2<f32>(x_1330.x, x_1330.y));
        let x_1333 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1332.x, x_1332.y, x_1333.z, x_1333.w);
        let x_1336 : vec4<f32> = u_xlat7;
        let x_1338 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1336.x, x_1336.x, x_1336.x, x_1336.x) * x_1338);
        let x_1341 : vec4<f32> = u_xlat7;
        let x_1343 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1341.y, x_1341.y, x_1341.y, x_1341.y) * x_1343);
        let x_1346 : vec4<f32> = u_xlat7;
        let x_1348 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1346.z, x_1346.z, x_1346.z, x_1346.z) * x_1348);
        let x_1350 : vec4<f32> = u_xlat7;
        let x_1352 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1350.w, x_1350.w, x_1350.w, x_1350.w) * x_1352);
        let x_1355 : vec4<f32> = u_xlat12;
        let x_1356 : vec2<f32> = vec2<f32>(x_1355.x, x_1355.y);
        let x_1358 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_1356.x, x_1356.y, x_1358);
        let x_1365 : vec3<f32> = txVec13;
        let x_1367 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1365.xy, x_1365.z);
        u_xlat80 = x_1367;
        let x_1369 : vec4<f32> = u_xlat12;
        let x_1370 : vec2<f32> = vec2<f32>(x_1369.z, x_1369.w);
        let x_1372 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1370.x, x_1370.y, x_1372);
        let x_1380 : vec3<f32> = txVec14;
        let x_1382 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1380.xy, x_1380.z);
        u_xlat83 = x_1382;
        let x_1383 : f32 = u_xlat83;
        let x_1385 : f32 = u_xlat17.y;
        u_xlat83 = (x_1383 * x_1385);
        let x_1388 : f32 = u_xlat17.x;
        let x_1389 : f32 = u_xlat80;
        let x_1391 : f32 = u_xlat83;
        u_xlat80 = ((x_1388 * x_1389) + x_1391);
        let x_1394 : vec2<f32> = u_xlat55;
        let x_1396 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1394.x, x_1394.y, x_1396);
        let x_1403 : vec3<f32> = txVec15;
        let x_1405 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1403.xy, x_1403.z);
        u_xlat55.x = x_1405;
        let x_1408 : f32 = u_xlat17.z;
        let x_1410 : f32 = u_xlat55.x;
        let x_1412 : f32 = u_xlat80;
        u_xlat80 = ((x_1408 * x_1410) + x_1412);
        let x_1415 : vec4<f32> = u_xlat15;
        let x_1416 : vec2<f32> = vec2<f32>(x_1415.x, x_1415.y);
        let x_1418 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1416.x, x_1416.y, x_1418);
        let x_1425 : vec3<f32> = txVec16;
        let x_1427 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1425.xy, x_1425.z);
        u_xlat55.x = x_1427;
        let x_1430 : f32 = u_xlat17.w;
        let x_1432 : f32 = u_xlat55.x;
        let x_1434 : f32 = u_xlat80;
        u_xlat80 = ((x_1430 * x_1432) + x_1434);
        let x_1437 : vec4<f32> = u_xlat13;
        let x_1438 : vec2<f32> = vec2<f32>(x_1437.x, x_1437.y);
        let x_1440 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1438.x, x_1438.y, x_1440);
        let x_1447 : vec3<f32> = txVec17;
        let x_1449 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1447.xy, x_1447.z);
        u_xlat55.x = x_1449;
        let x_1452 : f32 = u_xlat18.x;
        let x_1454 : f32 = u_xlat55.x;
        let x_1456 : f32 = u_xlat80;
        u_xlat80 = ((x_1452 * x_1454) + x_1456);
        let x_1459 : vec4<f32> = u_xlat13;
        let x_1460 : vec2<f32> = vec2<f32>(x_1459.z, x_1459.w);
        let x_1462 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1460.x, x_1460.y, x_1462);
        let x_1469 : vec3<f32> = txVec18;
        let x_1471 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1469.xy, x_1469.z);
        u_xlat55.x = x_1471;
        let x_1474 : f32 = u_xlat18.y;
        let x_1476 : f32 = u_xlat55.x;
        let x_1478 : f32 = u_xlat80;
        u_xlat80 = ((x_1474 * x_1476) + x_1478);
        let x_1481 : vec4<f32> = u_xlat14;
        let x_1482 : vec2<f32> = vec2<f32>(x_1481.x, x_1481.y);
        let x_1484 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1482.x, x_1482.y, x_1484);
        let x_1491 : vec3<f32> = txVec19;
        let x_1493 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1491.xy, x_1491.z);
        u_xlat55.x = x_1493;
        let x_1496 : f32 = u_xlat18.z;
        let x_1498 : f32 = u_xlat55.x;
        let x_1500 : f32 = u_xlat80;
        u_xlat80 = ((x_1496 * x_1498) + x_1500);
        let x_1503 : vec4<f32> = u_xlat15;
        let x_1504 : vec2<f32> = vec2<f32>(x_1503.z, x_1503.w);
        let x_1506 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1504.x, x_1504.y, x_1506);
        let x_1513 : vec3<f32> = txVec20;
        let x_1515 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1513.xy, x_1513.z);
        u_xlat55.x = x_1515;
        let x_1518 : f32 = u_xlat18.w;
        let x_1520 : f32 = u_xlat55.x;
        let x_1522 : f32 = u_xlat80;
        u_xlat80 = ((x_1518 * x_1520) + x_1522);
        let x_1525 : vec4<f32> = u_xlat16;
        let x_1526 : vec2<f32> = vec2<f32>(x_1525.x, x_1525.y);
        let x_1528 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1526.x, x_1526.y, x_1528);
        let x_1535 : vec3<f32> = txVec21;
        let x_1537 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1535.xy, x_1535.z);
        u_xlat55.x = x_1537;
        let x_1540 : f32 = u_xlat19.x;
        let x_1542 : f32 = u_xlat55.x;
        let x_1544 : f32 = u_xlat80;
        u_xlat80 = ((x_1540 * x_1542) + x_1544);
        let x_1547 : vec4<f32> = u_xlat16;
        let x_1548 : vec2<f32> = vec2<f32>(x_1547.z, x_1547.w);
        let x_1550 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1548.x, x_1548.y, x_1550);
        let x_1557 : vec3<f32> = txVec22;
        let x_1559 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1557.xy, x_1557.z);
        u_xlat55.x = x_1559;
        let x_1562 : f32 = u_xlat19.y;
        let x_1564 : f32 = u_xlat55.x;
        let x_1566 : f32 = u_xlat80;
        u_xlat80 = ((x_1562 * x_1564) + x_1566);
        let x_1569 : vec2<f32> = u_xlat34;
        let x_1571 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1569.x, x_1569.y, x_1571);
        let x_1578 : vec3<f32> = txVec23;
        let x_1580 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1578.xy, x_1578.z);
        u_xlat55.x = x_1580;
        let x_1583 : f32 = u_xlat19.z;
        let x_1585 : f32 = u_xlat55.x;
        let x_1587 : f32 = u_xlat80;
        u_xlat80 = ((x_1583 * x_1585) + x_1587);
        let x_1590 : vec2<f32> = u_xlat66;
        let x_1592 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1590.x, x_1590.y, x_1592);
        let x_1599 : vec3<f32> = txVec24;
        let x_1601 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1599.xy, x_1599.z);
        u_xlat55.x = x_1601;
        let x_1604 : f32 = u_xlat19.w;
        let x_1606 : f32 = u_xlat55.x;
        let x_1608 : f32 = u_xlat80;
        u_xlat80 = ((x_1604 * x_1606) + x_1608);
        let x_1611 : vec4<f32> = u_xlat11;
        let x_1612 : vec2<f32> = vec2<f32>(x_1611.x, x_1611.y);
        let x_1614 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1612.x, x_1612.y, x_1614);
        let x_1621 : vec3<f32> = txVec25;
        let x_1623 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1621.xy, x_1621.z);
        u_xlat55.x = x_1623;
        let x_1626 : f32 = u_xlat7.x;
        let x_1628 : f32 = u_xlat55.x;
        let x_1630 : f32 = u_xlat80;
        u_xlat80 = ((x_1626 * x_1628) + x_1630);
        let x_1633 : vec4<f32> = u_xlat11;
        let x_1634 : vec2<f32> = vec2<f32>(x_1633.z, x_1633.w);
        let x_1636 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1634.x, x_1634.y, x_1636);
        let x_1643 : vec3<f32> = txVec26;
        let x_1645 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1643.xy, x_1643.z);
        u_xlat55.x = x_1645;
        let x_1648 : f32 = u_xlat7.y;
        let x_1650 : f32 = u_xlat55.x;
        let x_1652 : f32 = u_xlat80;
        u_xlat80 = ((x_1648 * x_1650) + x_1652);
        let x_1655 : vec2<f32> = u_xlat61;
        let x_1657 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1655.x, x_1655.y, x_1657);
        let x_1664 : vec3<f32> = txVec27;
        let x_1666 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1664.xy, x_1664.z);
        u_xlat55.x = x_1666;
        let x_1669 : f32 = u_xlat7.z;
        let x_1671 : f32 = u_xlat55.x;
        let x_1673 : f32 = u_xlat80;
        u_xlat80 = ((x_1669 * x_1671) + x_1673);
        let x_1676 : vec4<f32> = u_xlat3;
        let x_1677 : vec2<f32> = vec2<f32>(x_1676.x, x_1676.y);
        let x_1679 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1677.x, x_1677.y, x_1679);
        let x_1686 : vec3<f32> = txVec28;
        let x_1688 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1686.xy, x_1686.z);
        u_xlat3.x = x_1688;
        let x_1691 : f32 = u_xlat7.w;
        let x_1693 : f32 = u_xlat3.x;
        let x_1695 : f32 = u_xlat80;
        u_xlat79 = ((x_1691 * x_1693) + x_1695);
      }
    }
  } else {
    let x_1699 : vec4<f32> = u_xlat2;
    let x_1700 : vec2<f32> = vec2<f32>(x_1699.x, x_1699.y);
    let x_1702 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1700.x, x_1700.y, x_1702);
    let x_1709 : vec3<f32> = txVec29;
    let x_1711 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1709.xy, x_1709.z);
    u_xlat79 = x_1711;
  }
  let x_1713 : f32 = x_246.x_MainLightShadowParams.x;
  u_xlat80 = (-(x_1713) + 1.0f);
  let x_1716 : f32 = u_xlat79;
  let x_1718 : f32 = x_246.x_MainLightShadowParams.x;
  let x_1720 : f32 = u_xlat80;
  u_xlat79 = ((x_1716 * x_1718) + x_1720);
  let x_1724 : f32 = u_xlat2.z;
  u_xlatb3.x = (0.0f >= x_1724);
  let x_1729 : f32 = u_xlat2.z;
  u_xlatb29 = (x_1729 >= 1.0f);
  let x_1731 : bool = u_xlatb29;
  let x_1733 : bool = u_xlatb3.x;
  u_xlatb3.x = (x_1731 | x_1733);
  let x_1737 : bool = u_xlatb3.x;
  let x_1738 : f32 = u_xlat79;
  u_xlat79 = select(x_1738, 1.0f, x_1737);
  let x_1740 : vec3<f32> = u_xlat1;
  let x_1742 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat1.x = dot(x_1740, -(vec3<f32>(x_1742.x, x_1742.y, x_1742.z)));
  let x_1748 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1748, 0.0f, 1.0f);
  let x_1752 : f32 = u_xlat79;
  let x_1755 : vec4<f32> = x_128.x_MainLightColor;
  u_xlat27 = (vec3<f32>(x_1752, x_1752, x_1752) * vec3<f32>(x_1755.x, x_1755.y, x_1755.z));
  let x_1758 : vec3<f32> = u_xlat27;
  let x_1759 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_1758 * vec3<f32>(x_1759.x, x_1759.x, x_1759.x));
  let x_1762 : vec3<f32> = u_xlat1;
  let x_1763 : vec4<f32> = u_xlat4;
  u_xlat1 = (x_1762 * vec3<f32>(x_1763.x, x_1763.y, x_1763.z));
  let x_1767 : f32 = u_xlat4.w;
  u_xlatb79 = (x_1767 >= 0.40000000596046447754f);
  let x_1770 : bool = u_xlatb79;
  if (x_1770) {
    let x_1776 : f32 = u_xlat4.w;
    x_1772 = x_1776;
  } else {
    x_1772 = 0.0f;
  }
  let x_1778 : f32 = x_1772;
  u_xlat79 = x_1778;
  let x_1780 : f32 = u_xlat4.w;
  u_xlat29.x = (x_1780 + -0.40000000596046447754f);
  let x_1785 : f32 = u_xlat4.w;
  u_xlat55.x = dpdxCoarse(x_1785);
  let x_1790 : f32 = u_xlat4.w;
  u_xlat81 = dpdyCoarse(x_1790);
  let x_1792 : f32 = u_xlat81;
  let x_1795 : f32 = u_xlat55.x;
  u_xlat55.x = (abs(x_1792) + abs(x_1795));
  let x_1800 : f32 = u_xlat55.x;
  u_xlat55.x = max(x_1800, 0.00009999999747378752f);
  let x_1805 : f32 = u_xlat29.x;
  let x_1807 : f32 = u_xlat55.x;
  u_xlat29.x = (x_1805 / x_1807);
  let x_1811 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1811 + 0.5f);
  let x_1815 : f32 = u_xlat29.x;
  u_xlat29.x = clamp(x_1815, 0.0f, 1.0f);
  let x_1820 : f32 = x_128.x_AlphaToMaskAvailable;
  u_xlatb55 = !((x_1820 == 0.0f));
  let x_1822 : bool = u_xlatb55;
  if (x_1822) {
    let x_1827 : f32 = u_xlat29.x;
    x_1823 = x_1827;
  } else {
    let x_1829 : f32 = u_xlat79;
    x_1823 = x_1829;
  }
  let x_1830 : f32 = x_1823;
  u_xlat79 = x_1830;
  let x_1831 : f32 = u_xlat79;
  u_xlat29.x = (x_1831 + -0.00009999999747378752f);
  let x_1836 : f32 = u_xlat29.x;
  u_xlatb29 = (x_1836 < 0.0f);
  let x_1838 : bool = u_xlatb29;
  if (((select(0i, 1i, x_1838) * -1i) != 0i)) {
    discard;
  }
  let x_1846 : vec3<f32> = u_xlat26;
  let x_1847 : vec3<f32> = u_xlat32;
  u_xlat26 = (x_1846 * vec3<f32>(x_1847.y, x_1847.y, x_1847.y));
  let x_1850 : vec3<f32> = u_xlat32;
  let x_1852 : vec4<f32> = vs_INTERP4;
  let x_1855 : vec3<f32> = u_xlat26;
  u_xlat26 = ((vec3<f32>(x_1850.x, x_1850.x, x_1850.x) * vec3<f32>(x_1852.x, x_1852.y, x_1852.z)) + x_1855);
  let x_1857 : vec3<f32> = u_xlat32;
  let x_1859 : vec3<f32> = vs_INTERP9;
  let x_1861 : vec3<f32> = u_xlat26;
  u_xlat26 = ((vec3<f32>(x_1857.z, x_1857.z, x_1857.z) * x_1859) + x_1861);
  let x_1863 : vec3<f32> = u_xlat26;
  let x_1864 : vec3<f32> = u_xlat26;
  u_xlat29.x = dot(x_1863, x_1864);
  let x_1868 : f32 = u_xlat29.x;
  u_xlat29.x = inverseSqrt(x_1868);
  let x_1871 : vec3<f32> = u_xlat26;
  let x_1872 : vec3<f32> = u_xlat29;
  u_xlat26 = (x_1871 * vec3<f32>(x_1872.x, x_1872.x, x_1872.x));
  let x_1876 : f32 = x_128.unity_OrthoParams.w;
  u_xlatb29 = (x_1876 == 0.0f);
  let x_1878 : vec3<f32> = vs_INTERP8;
  let x_1882 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  let x_1883 : vec3<f32> = (-(x_1878) + x_1882);
  let x_1884 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1883.x, x_1883.y, x_1883.z, x_1884.w);
  let x_1886 : vec4<f32> = u_xlat4;
  let x_1888 : vec4<f32> = u_xlat4;
  u_xlat81 = dot(vec3<f32>(x_1886.x, x_1886.y, x_1886.z), vec3<f32>(x_1888.x, x_1888.y, x_1888.z));
  let x_1891 : f32 = u_xlat81;
  u_xlat81 = inverseSqrt(x_1891);
  let x_1893 : f32 = u_xlat81;
  let x_1895 : vec4<f32> = u_xlat4;
  let x_1897 : vec3<f32> = (vec3<f32>(x_1893, x_1893, x_1893) * vec3<f32>(x_1895.x, x_1895.y, x_1895.z));
  let x_1898 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1897.x, x_1897.y, x_1897.z, x_1898.w);
  let x_1900 : bool = u_xlatb29;
  if (x_1900) {
    let x_1905 : f32 = u_xlat4.x;
    x_1901 = x_1905;
  } else {
    let x_1908 : f32 = x_128.unity_MatrixV[0i].z;
    x_1901 = x_1908;
  }
  let x_1909 : f32 = x_1901;
  u_xlat7.x = x_1909;
  let x_1911 : bool = u_xlatb29;
  if (x_1911) {
    let x_1916 : f32 = u_xlat4.y;
    x_1912 = x_1916;
  } else {
    let x_1919 : f32 = x_128.unity_MatrixV[1i].z;
    x_1912 = x_1919;
  }
  let x_1920 : f32 = x_1912;
  u_xlat7.y = x_1920;
  let x_1922 : bool = u_xlatb29;
  if (x_1922) {
    let x_1927 : f32 = u_xlat4.z;
    x_1923 = x_1927;
  } else {
    let x_1930 : f32 = x_128.unity_MatrixV[2i].z;
    x_1923 = x_1930;
  }
  let x_1931 : f32 = x_1923;
  u_xlat7.z = x_1931;
  let x_1940 : vec2<f32> = vs_INTERP0;
  let x_1942 : f32 = x_128.x_GlobalMipBias.x;
  let x_1943 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_1940, x_1942);
  u_xlat4 = x_1943;
  let x_1948 : vec2<f32> = vs_INTERP0;
  let x_1950 : f32 = x_128.x_GlobalMipBias.x;
  let x_1951 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_1948, x_1950);
  u_xlat32 = vec3<f32>(x_1951.x, x_1951.y, x_1951.z);
  let x_1953 : vec4<f32> = u_xlat4;
  let x_1956 : vec3<f32> = (vec3<f32>(x_1953.x, x_1953.y, x_1953.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1957 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1956.x, x_1956.y, x_1956.z, x_1957.w);
  let x_1959 : vec3<f32> = u_xlat26;
  let x_1960 : vec4<f32> = u_xlat4;
  u_xlat29.x = dot(x_1959, vec3<f32>(x_1960.x, x_1960.y, x_1960.z));
  let x_1965 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1965 + 0.5f);
  let x_1968 : vec3<f32> = u_xlat29;
  let x_1970 : vec3<f32> = u_xlat32;
  let x_1971 : vec3<f32> = (vec3<f32>(x_1968.x, x_1968.x, x_1968.x) * x_1970);
  let x_1972 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1971.x, x_1971.y, x_1971.z, x_1972.w);
  let x_1975 : f32 = u_xlat4.w;
  u_xlat29.x = max(x_1975, 0.00009999999747378752f);
  let x_1978 : vec4<f32> = u_xlat4;
  let x_1980 : vec3<f32> = u_xlat29;
  let x_1982 : vec3<f32> = (vec3<f32>(x_1978.x, x_1978.y, x_1978.z) / vec3<f32>(x_1980.x, x_1980.x, x_1980.x));
  let x_1983 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1982.x, x_1982.y, x_1982.z, x_1983.w);
  let x_1986 : f32 = u_xlat6.x;
  u_xlat6.x = x_1986;
  let x_1989 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1989, 0.0f, 1.0f);
  let x_1992 : f32 = u_xlat79;
  u_xlat79 = min(x_1992, 1.0f);
  let x_1994 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_1994 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_1999 : f32 = u_xlat6.x;
  u_xlat29.x = (-(x_1999) + 1.0f);
  let x_2004 : f32 = u_xlat29.x;
  let x_2006 : f32 = u_xlat29.x;
  u_xlat81 = (x_2004 * x_2006);
  let x_2008 : f32 = u_xlat81;
  u_xlat81 = max(x_2008, 0.0078125f);
  let x_2012 : f32 = u_xlat81;
  let x_2013 : f32 = u_xlat81;
  u_xlat82 = (x_2012 * x_2013);
  let x_2016 : f32 = u_xlat6.x;
  u_xlat83 = (x_2016 + 0.04000002145767211914f);
  let x_2019 : f32 = u_xlat83;
  u_xlat83 = min(x_2019, 1.0f);
  let x_2021 : f32 = u_xlat81;
  u_xlat6.x = ((x_2021 * 4.0f) + 2.0f);
  let x_2026 : f32 = vs_INTERP6.w;
  u_xlat32.x = min(x_2026, 1.0f);
  let x_2029 : bool = u_xlatb0;
  if (x_2029) {
    let x_2033 : f32 = x_246.x_MainLightShadowParams.y;
    u_xlatb0 = (x_2033 == 1.0f);
    let x_2035 : bool = u_xlatb0;
    if (x_2035) {
      let x_2038 : vec4<f32> = u_xlat2;
      let x_2041 : vec4<f32> = x_246.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_2038.x, x_2038.y, x_2038.x, x_2038.y) + x_2041);
      let x_2044 : vec4<f32> = u_xlat8;
      let x_2045 : vec2<f32> = vec2<f32>(x_2044.x, x_2044.y);
      let x_2047 : f32 = u_xlat2.z;
      txVec30 = vec3<f32>(x_2045.x, x_2045.y, x_2047);
      let x_2054 : vec3<f32> = txVec30;
      let x_2056 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2054.xy, x_2054.z);
      u_xlat9.x = x_2056;
      let x_2059 : vec4<f32> = u_xlat8;
      let x_2060 : vec2<f32> = vec2<f32>(x_2059.z, x_2059.w);
      let x_2062 : f32 = u_xlat2.z;
      txVec31 = vec3<f32>(x_2060.x, x_2060.y, x_2062);
      let x_2069 : vec3<f32> = txVec31;
      let x_2071 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2069.xy, x_2069.z);
      u_xlat9.y = x_2071;
      let x_2073 : vec4<f32> = u_xlat2;
      let x_2076 : vec4<f32> = x_246.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_2073.x, x_2073.y, x_2073.x, x_2073.y) + x_2076);
      let x_2079 : vec4<f32> = u_xlat8;
      let x_2080 : vec2<f32> = vec2<f32>(x_2079.x, x_2079.y);
      let x_2082 : f32 = u_xlat2.z;
      txVec32 = vec3<f32>(x_2080.x, x_2080.y, x_2082);
      let x_2089 : vec3<f32> = txVec32;
      let x_2091 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2089.xy, x_2089.z);
      u_xlat9.z = x_2091;
      let x_2094 : vec4<f32> = u_xlat8;
      let x_2095 : vec2<f32> = vec2<f32>(x_2094.z, x_2094.w);
      let x_2097 : f32 = u_xlat2.z;
      txVec33 = vec3<f32>(x_2095.x, x_2095.y, x_2097);
      let x_2104 : vec3<f32> = txVec33;
      let x_2106 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2104.xy, x_2104.z);
      u_xlat9.w = x_2106;
      let x_2108 : vec4<f32> = u_xlat9;
      u_xlat0.x = dot(x_2108, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_2114 : f32 = x_246.x_MainLightShadowParams.y;
      u_xlatb58 = (x_2114 == 2.0f);
      let x_2116 : bool = u_xlatb58;
      if (x_2116) {
        let x_2120 : vec4<f32> = u_xlat2;
        let x_2123 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_2120.x, x_2120.y) * vec2<f32>(x_2123.z, x_2123.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2127 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_2127);
        let x_2129 : vec4<f32> = u_xlat2;
        let x_2132 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2135 : vec2<f32> = u_xlat58;
        let x_2137 : vec2<f32> = ((vec2<f32>(x_2129.x, x_2129.y) * vec2<f32>(x_2132.z, x_2132.w)) + -(x_2135));
        let x_2138 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2137.x, x_2137.y, x_2138.z, x_2138.w);
        let x_2140 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2140.x, x_2140.x, x_2140.y, x_2140.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2143 : vec4<f32> = u_xlat9;
        let x_2145 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2143.x, x_2143.x, x_2143.z, x_2143.z) * vec4<f32>(x_2145.x, x_2145.x, x_2145.z, x_2145.z));
        let x_2148 : vec4<f32> = u_xlat10;
        u_xlat60 = (vec2<f32>(x_2148.y, x_2148.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_2151 : vec4<f32> = u_xlat10;
        let x_2154 : vec4<f32> = u_xlat8;
        let x_2157 : vec2<f32> = ((vec2<f32>(x_2151.x, x_2151.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2154.x, x_2154.y)));
        let x_2158 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2157.x, x_2158.y, x_2157.y, x_2158.w);
        let x_2160 : vec4<f32> = u_xlat8;
        let x_2163 : vec2<f32> = (-(vec2<f32>(x_2160.x, x_2160.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2164 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2163.x, x_2163.y, x_2164.z, x_2164.w);
        let x_2167 : vec4<f32> = u_xlat8;
        u_xlat62 = min(vec2<f32>(x_2167.x, x_2167.y), vec2<f32>(0.0f, 0.0f));
        let x_2170 : vec2<f32> = u_xlat62;
        let x_2172 : vec2<f32> = u_xlat62;
        let x_2174 : vec4<f32> = u_xlat10;
        u_xlat62 = ((-(x_2170) * x_2172) + vec2<f32>(x_2174.x, x_2174.y));
        let x_2177 : vec4<f32> = u_xlat8;
        let x_2179 : vec2<f32> = max(vec2<f32>(x_2177.x, x_2177.y), vec2<f32>(0.0f, 0.0f));
        let x_2180 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2179.x, x_2179.y, x_2180.z, x_2180.w);
        let x_2182 : vec4<f32> = u_xlat8;
        let x_2185 : vec4<f32> = u_xlat8;
        let x_2188 : vec4<f32> = u_xlat9;
        let x_2190 : vec2<f32> = ((-(vec2<f32>(x_2182.x, x_2182.y)) * vec2<f32>(x_2185.x, x_2185.y)) + vec2<f32>(x_2188.y, x_2188.w));
        let x_2191 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2190.x, x_2190.y, x_2191.z, x_2191.w);
        let x_2193 : vec2<f32> = u_xlat62;
        u_xlat62 = (x_2193 + vec2<f32>(1.0f, 1.0f));
        let x_2195 : vec4<f32> = u_xlat8;
        let x_2197 : vec2<f32> = (vec2<f32>(x_2195.x, x_2195.y) + vec2<f32>(1.0f, 1.0f));
        let x_2198 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2197.x, x_2197.y, x_2198.z, x_2198.w);
        let x_2200 : vec4<f32> = u_xlat9;
        let x_2202 : vec2<f32> = (vec2<f32>(x_2200.x, x_2200.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2203 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2202.x, x_2202.y, x_2203.z, x_2203.w);
        let x_2205 : vec4<f32> = u_xlat10;
        let x_2207 : vec2<f32> = (vec2<f32>(x_2205.x, x_2205.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2208 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2207.x, x_2207.y, x_2208.z, x_2208.w);
        let x_2210 : vec2<f32> = u_xlat62;
        let x_2211 : vec2<f32> = (x_2210 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2212 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2211.x, x_2211.y, x_2212.z, x_2212.w);
        let x_2214 : vec4<f32> = u_xlat8;
        let x_2216 : vec2<f32> = (vec2<f32>(x_2214.x, x_2214.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2217 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2216.x, x_2216.y, x_2217.z, x_2217.w);
        let x_2219 : vec4<f32> = u_xlat9;
        let x_2221 : vec2<f32> = (vec2<f32>(x_2219.y, x_2219.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2222 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2221.x, x_2221.y, x_2222.z, x_2222.w);
        let x_2225 : f32 = u_xlat10.x;
        u_xlat11.z = x_2225;
        let x_2228 : f32 = u_xlat8.x;
        u_xlat11.w = x_2228;
        let x_2231 : f32 = u_xlat13.x;
        u_xlat12.z = x_2231;
        let x_2234 : f32 = u_xlat60.x;
        u_xlat12.w = x_2234;
        let x_2236 : vec4<f32> = u_xlat11;
        let x_2238 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_2236.z, x_2236.w, x_2236.x, x_2236.z) + vec4<f32>(x_2238.z, x_2238.w, x_2238.x, x_2238.z));
        let x_2242 : f32 = u_xlat11.y;
        u_xlat10.z = x_2242;
        let x_2245 : f32 = u_xlat8.y;
        u_xlat10.w = x_2245;
        let x_2248 : f32 = u_xlat12.y;
        u_xlat13.z = x_2248;
        let x_2251 : f32 = u_xlat60.y;
        u_xlat13.w = x_2251;
        let x_2253 : vec4<f32> = u_xlat10;
        let x_2255 : vec4<f32> = u_xlat13;
        let x_2257 : vec3<f32> = (vec3<f32>(x_2253.z, x_2253.y, x_2253.w) + vec3<f32>(x_2255.z, x_2255.y, x_2255.w));
        let x_2258 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2257.x, x_2257.y, x_2257.z, x_2258.w);
        let x_2260 : vec4<f32> = u_xlat12;
        let x_2262 : vec4<f32> = u_xlat9;
        let x_2264 : vec3<f32> = (vec3<f32>(x_2260.x, x_2260.z, x_2260.w) / vec3<f32>(x_2262.z, x_2262.w, x_2262.y));
        let x_2265 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2264.x, x_2264.y, x_2264.z, x_2265.w);
        let x_2267 : vec4<f32> = u_xlat10;
        let x_2269 : vec3<f32> = (vec3<f32>(x_2267.x, x_2267.y, x_2267.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2270 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2269.x, x_2269.y, x_2269.z, x_2270.w);
        let x_2272 : vec4<f32> = u_xlat13;
        let x_2274 : vec4<f32> = u_xlat8;
        let x_2276 : vec3<f32> = (vec3<f32>(x_2272.z, x_2272.y, x_2272.w) / vec3<f32>(x_2274.x, x_2274.y, x_2274.z));
        let x_2277 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2276.x, x_2276.y, x_2276.z, x_2277.w);
        let x_2279 : vec4<f32> = u_xlat11;
        let x_2281 : vec3<f32> = (vec3<f32>(x_2279.x, x_2279.y, x_2279.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2282 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2281.x, x_2281.y, x_2281.z, x_2282.w);
        let x_2284 : vec4<f32> = u_xlat10;
        let x_2287 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2289 : vec3<f32> = (vec3<f32>(x_2284.y, x_2284.x, x_2284.z) * vec3<f32>(x_2287.x, x_2287.x, x_2287.x));
        let x_2290 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2289.x, x_2289.y, x_2289.z, x_2290.w);
        let x_2292 : vec4<f32> = u_xlat11;
        let x_2295 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2297 : vec3<f32> = (vec3<f32>(x_2292.x, x_2292.y, x_2292.z) * vec3<f32>(x_2295.y, x_2295.y, x_2295.y));
        let x_2298 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2297.x, x_2297.y, x_2297.z, x_2298.w);
        let x_2301 : f32 = u_xlat11.x;
        u_xlat10.w = x_2301;
        let x_2303 : vec2<f32> = u_xlat58;
        let x_2306 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2309 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_2303.x, x_2303.y, x_2303.x, x_2303.y) * vec4<f32>(x_2306.x, x_2306.y, x_2306.x, x_2306.y)) + vec4<f32>(x_2309.y, x_2309.w, x_2309.x, x_2309.w));
        let x_2312 : vec2<f32> = u_xlat58;
        let x_2314 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2317 : vec4<f32> = u_xlat10;
        let x_2319 : vec2<f32> = ((x_2312 * vec2<f32>(x_2314.x, x_2314.y)) + vec2<f32>(x_2317.z, x_2317.w));
        let x_2320 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2319.x, x_2319.y, x_2320.z, x_2320.w);
        let x_2323 : f32 = u_xlat10.y;
        u_xlat11.w = x_2323;
        let x_2325 : vec4<f32> = u_xlat11;
        let x_2326 : vec2<f32> = vec2<f32>(x_2325.y, x_2325.z);
        let x_2327 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2327.x, x_2326.x, x_2327.z, x_2326.y);
        let x_2329 : vec2<f32> = u_xlat58;
        let x_2332 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2335 : vec4<f32> = u_xlat10;
        u_xlat14 = ((vec4<f32>(x_2329.x, x_2329.y, x_2329.x, x_2329.y) * vec4<f32>(x_2332.x, x_2332.y, x_2332.x, x_2332.y)) + vec4<f32>(x_2335.x, x_2335.y, x_2335.z, x_2335.y));
        let x_2338 : vec2<f32> = u_xlat58;
        let x_2341 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2344 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_2338.x, x_2338.y, x_2338.x, x_2338.y) * vec4<f32>(x_2341.x, x_2341.y, x_2341.x, x_2341.y)) + vec4<f32>(x_2344.w, x_2344.y, x_2344.w, x_2344.z));
        let x_2347 : vec2<f32> = u_xlat58;
        let x_2350 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2353 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2347.x, x_2347.y, x_2347.x, x_2347.y) * vec4<f32>(x_2350.x, x_2350.y, x_2350.x, x_2350.y)) + vec4<f32>(x_2353.x, x_2353.w, x_2353.z, x_2353.w));
        let x_2356 : vec4<f32> = u_xlat8;
        let x_2358 : vec4<f32> = u_xlat9;
        u_xlat15 = (vec4<f32>(x_2356.x, x_2356.x, x_2356.x, x_2356.y) * vec4<f32>(x_2358.z, x_2358.w, x_2358.y, x_2358.z));
        let x_2361 : vec4<f32> = u_xlat8;
        let x_2363 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_2361.y, x_2361.y, x_2361.z, x_2361.z) * x_2363);
        let x_2366 : f32 = u_xlat8.z;
        let x_2368 : f32 = u_xlat9.y;
        u_xlat58.x = (x_2366 * x_2368);
        let x_2372 : vec4<f32> = u_xlat12;
        let x_2373 : vec2<f32> = vec2<f32>(x_2372.x, x_2372.y);
        let x_2375 : f32 = u_xlat2.z;
        txVec34 = vec3<f32>(x_2373.x, x_2373.y, x_2375);
        let x_2383 : vec3<f32> = txVec34;
        let x_2385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2383.xy, x_2383.z);
        u_xlat84 = x_2385;
        let x_2387 : vec4<f32> = u_xlat12;
        let x_2388 : vec2<f32> = vec2<f32>(x_2387.z, x_2387.w);
        let x_2390 : f32 = u_xlat2.z;
        txVec35 = vec3<f32>(x_2388.x, x_2388.y, x_2390);
        let x_2398 : vec3<f32> = txVec35;
        let x_2400 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2398.xy, x_2398.z);
        u_xlat85 = x_2400;
        let x_2401 : f32 = u_xlat85;
        let x_2403 : f32 = u_xlat15.y;
        u_xlat85 = (x_2401 * x_2403);
        let x_2406 : f32 = u_xlat15.x;
        let x_2407 : f32 = u_xlat84;
        let x_2409 : f32 = u_xlat85;
        u_xlat84 = ((x_2406 * x_2407) + x_2409);
        let x_2412 : vec4<f32> = u_xlat13;
        let x_2413 : vec2<f32> = vec2<f32>(x_2412.x, x_2412.y);
        let x_2415 : f32 = u_xlat2.z;
        txVec36 = vec3<f32>(x_2413.x, x_2413.y, x_2415);
        let x_2422 : vec3<f32> = txVec36;
        let x_2424 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2422.xy, x_2422.z);
        u_xlat85 = x_2424;
        let x_2426 : f32 = u_xlat15.z;
        let x_2427 : f32 = u_xlat85;
        let x_2429 : f32 = u_xlat84;
        u_xlat84 = ((x_2426 * x_2427) + x_2429);
        let x_2432 : vec4<f32> = u_xlat11;
        let x_2433 : vec2<f32> = vec2<f32>(x_2432.x, x_2432.y);
        let x_2435 : f32 = u_xlat2.z;
        txVec37 = vec3<f32>(x_2433.x, x_2433.y, x_2435);
        let x_2442 : vec3<f32> = txVec37;
        let x_2444 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2442.xy, x_2442.z);
        u_xlat85 = x_2444;
        let x_2446 : f32 = u_xlat15.w;
        let x_2447 : f32 = u_xlat85;
        let x_2449 : f32 = u_xlat84;
        u_xlat84 = ((x_2446 * x_2447) + x_2449);
        let x_2452 : vec4<f32> = u_xlat14;
        let x_2453 : vec2<f32> = vec2<f32>(x_2452.x, x_2452.y);
        let x_2455 : f32 = u_xlat2.z;
        txVec38 = vec3<f32>(x_2453.x, x_2453.y, x_2455);
        let x_2462 : vec3<f32> = txVec38;
        let x_2464 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2462.xy, x_2462.z);
        u_xlat85 = x_2464;
        let x_2466 : f32 = u_xlat16.x;
        let x_2467 : f32 = u_xlat85;
        let x_2469 : f32 = u_xlat84;
        u_xlat84 = ((x_2466 * x_2467) + x_2469);
        let x_2472 : vec4<f32> = u_xlat14;
        let x_2473 : vec2<f32> = vec2<f32>(x_2472.z, x_2472.w);
        let x_2475 : f32 = u_xlat2.z;
        txVec39 = vec3<f32>(x_2473.x, x_2473.y, x_2475);
        let x_2482 : vec3<f32> = txVec39;
        let x_2484 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2482.xy, x_2482.z);
        u_xlat85 = x_2484;
        let x_2486 : f32 = u_xlat16.y;
        let x_2487 : f32 = u_xlat85;
        let x_2489 : f32 = u_xlat84;
        u_xlat84 = ((x_2486 * x_2487) + x_2489);
        let x_2492 : vec4<f32> = u_xlat11;
        let x_2493 : vec2<f32> = vec2<f32>(x_2492.z, x_2492.w);
        let x_2495 : f32 = u_xlat2.z;
        txVec40 = vec3<f32>(x_2493.x, x_2493.y, x_2495);
        let x_2502 : vec3<f32> = txVec40;
        let x_2504 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2502.xy, x_2502.z);
        u_xlat85 = x_2504;
        let x_2506 : f32 = u_xlat16.z;
        let x_2507 : f32 = u_xlat85;
        let x_2509 : f32 = u_xlat84;
        u_xlat84 = ((x_2506 * x_2507) + x_2509);
        let x_2512 : vec4<f32> = u_xlat10;
        let x_2513 : vec2<f32> = vec2<f32>(x_2512.x, x_2512.y);
        let x_2515 : f32 = u_xlat2.z;
        txVec41 = vec3<f32>(x_2513.x, x_2513.y, x_2515);
        let x_2522 : vec3<f32> = txVec41;
        let x_2524 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2522.xy, x_2522.z);
        u_xlat85 = x_2524;
        let x_2526 : f32 = u_xlat16.w;
        let x_2527 : f32 = u_xlat85;
        let x_2529 : f32 = u_xlat84;
        u_xlat84 = ((x_2526 * x_2527) + x_2529);
        let x_2532 : vec4<f32> = u_xlat10;
        let x_2533 : vec2<f32> = vec2<f32>(x_2532.z, x_2532.w);
        let x_2535 : f32 = u_xlat2.z;
        txVec42 = vec3<f32>(x_2533.x, x_2533.y, x_2535);
        let x_2542 : vec3<f32> = txVec42;
        let x_2544 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2542.xy, x_2542.z);
        u_xlat85 = x_2544;
        let x_2546 : f32 = u_xlat58.x;
        let x_2547 : f32 = u_xlat85;
        let x_2549 : f32 = u_xlat84;
        u_xlat0.x = ((x_2546 * x_2547) + x_2549);
      } else {
        let x_2553 : vec4<f32> = u_xlat2;
        let x_2556 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_2553.x, x_2553.y) * vec2<f32>(x_2556.z, x_2556.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2560 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_2560);
        let x_2562 : vec4<f32> = u_xlat2;
        let x_2565 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2568 : vec2<f32> = u_xlat58;
        let x_2570 : vec2<f32> = ((vec2<f32>(x_2562.x, x_2562.y) * vec2<f32>(x_2565.z, x_2565.w)) + -(x_2568));
        let x_2571 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2570.x, x_2570.y, x_2571.z, x_2571.w);
        let x_2573 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2573.x, x_2573.x, x_2573.y, x_2573.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2576 : vec4<f32> = u_xlat9;
        let x_2578 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2576.x, x_2576.x, x_2576.z, x_2576.z) * vec4<f32>(x_2578.x, x_2578.x, x_2578.z, x_2578.z));
        let x_2581 : vec4<f32> = u_xlat10;
        let x_2583 : vec2<f32> = (vec2<f32>(x_2581.y, x_2581.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2584 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2584.x, x_2583.x, x_2584.z, x_2583.y);
        let x_2586 : vec4<f32> = u_xlat10;
        let x_2589 : vec4<f32> = u_xlat8;
        u_xlat60 = ((vec2<f32>(x_2586.x, x_2586.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2589.x, x_2589.y)));
        let x_2593 : vec4<f32> = u_xlat8;
        let x_2596 : vec2<f32> = (-(vec2<f32>(x_2593.x, x_2593.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2597 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2596.x, x_2597.y, x_2596.y, x_2597.w);
        let x_2599 : vec4<f32> = u_xlat8;
        let x_2601 : vec2<f32> = min(vec2<f32>(x_2599.x, x_2599.y), vec2<f32>(0.0f, 0.0f));
        let x_2602 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2601.x, x_2601.y, x_2602.z, x_2602.w);
        let x_2604 : vec4<f32> = u_xlat10;
        let x_2607 : vec4<f32> = u_xlat10;
        let x_2610 : vec4<f32> = u_xlat9;
        let x_2612 : vec2<f32> = ((-(vec2<f32>(x_2604.x, x_2604.y)) * vec2<f32>(x_2607.x, x_2607.y)) + vec2<f32>(x_2610.x, x_2610.z));
        let x_2613 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2612.x, x_2613.y, x_2612.y, x_2613.w);
        let x_2615 : vec4<f32> = u_xlat8;
        let x_2617 : vec2<f32> = max(vec2<f32>(x_2615.x, x_2615.y), vec2<f32>(0.0f, 0.0f));
        let x_2618 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2617.x, x_2617.y, x_2618.z, x_2618.w);
        let x_2620 : vec4<f32> = u_xlat10;
        let x_2623 : vec4<f32> = u_xlat10;
        let x_2626 : vec4<f32> = u_xlat9;
        let x_2628 : vec2<f32> = ((-(vec2<f32>(x_2620.x, x_2620.y)) * vec2<f32>(x_2623.x, x_2623.y)) + vec2<f32>(x_2626.y, x_2626.w));
        let x_2629 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2629.x, x_2628.x, x_2629.z, x_2628.y);
        let x_2631 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2631 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2634 : f32 = u_xlat9.y;
        u_xlat10.z = (x_2634 * 0.08163200318813323975f);
        let x_2637 : vec2<f32> = u_xlat60;
        let x_2639 : vec2<f32> = (vec2<f32>(x_2637.y, x_2637.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2640 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2639.x, x_2639.y, x_2640.z, x_2640.w);
        let x_2642 : vec4<f32> = u_xlat9;
        u_xlat60 = (vec2<f32>(x_2642.x, x_2642.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2646 : f32 = u_xlat9.w;
        u_xlat12.z = (x_2646 * 0.08163200318813323975f);
        let x_2650 : f32 = u_xlat12.y;
        u_xlat10.x = x_2650;
        let x_2652 : vec4<f32> = u_xlat8;
        let x_2655 : vec2<f32> = ((vec2<f32>(x_2652.x, x_2652.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2656 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2656.x, x_2655.x, x_2656.z, x_2655.y);
        let x_2658 : vec4<f32> = u_xlat8;
        let x_2661 : vec2<f32> = ((vec2<f32>(x_2658.x, x_2658.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2662 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2661.x, x_2662.y, x_2661.y, x_2662.w);
        let x_2665 : f32 = u_xlat60.x;
        u_xlat9.y = x_2665;
        let x_2668 : f32 = u_xlat11.y;
        u_xlat9.w = x_2668;
        let x_2670 : vec4<f32> = u_xlat9;
        let x_2671 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2670 + x_2671);
        let x_2673 : vec4<f32> = u_xlat8;
        let x_2676 : vec2<f32> = ((vec2<f32>(x_2673.y, x_2673.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2677 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2677.x, x_2676.x, x_2677.z, x_2676.y);
        let x_2679 : vec4<f32> = u_xlat8;
        let x_2682 : vec2<f32> = ((vec2<f32>(x_2679.y, x_2679.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2683 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2682.x, x_2683.y, x_2682.y, x_2683.w);
        let x_2686 : f32 = u_xlat60.y;
        u_xlat11.y = x_2686;
        let x_2688 : vec4<f32> = u_xlat11;
        let x_2689 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_2688 + x_2689);
        let x_2691 : vec4<f32> = u_xlat9;
        let x_2692 : vec4<f32> = u_xlat10;
        u_xlat9 = (x_2691 / x_2692);
        let x_2694 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2694 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2696 : vec4<f32> = u_xlat11;
        let x_2697 : vec4<f32> = u_xlat8;
        u_xlat11 = (x_2696 / x_2697);
        let x_2699 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_2699 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2701 : vec4<f32> = u_xlat9;
        let x_2704 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_2701.w, x_2701.x, x_2701.y, x_2701.z) * vec4<f32>(x_2704.x, x_2704.x, x_2704.x, x_2704.x));
        let x_2707 : vec4<f32> = u_xlat11;
        let x_2710 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_2707.x, x_2707.w, x_2707.y, x_2707.z) * vec4<f32>(x_2710.y, x_2710.y, x_2710.y, x_2710.y));
        let x_2713 : vec4<f32> = u_xlat9;
        let x_2714 : vec3<f32> = vec3<f32>(x_2713.y, x_2713.z, x_2713.w);
        let x_2715 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2714.x, x_2715.y, x_2714.y, x_2714.z);
        let x_2718 : f32 = u_xlat11.x;
        u_xlat12.y = x_2718;
        let x_2720 : vec2<f32> = u_xlat58;
        let x_2723 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2726 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_2720.x, x_2720.y, x_2720.x, x_2720.y) * vec4<f32>(x_2723.x, x_2723.y, x_2723.x, x_2723.y)) + vec4<f32>(x_2726.x, x_2726.y, x_2726.z, x_2726.y));
        let x_2729 : vec2<f32> = u_xlat58;
        let x_2731 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2734 : vec4<f32> = u_xlat12;
        let x_2736 : vec2<f32> = ((x_2729 * vec2<f32>(x_2731.x, x_2731.y)) + vec2<f32>(x_2734.w, x_2734.y));
        let x_2737 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_2736.x, x_2736.y, x_2737.z, x_2737.w);
        let x_2740 : f32 = u_xlat12.y;
        u_xlat9.y = x_2740;
        let x_2743 : f32 = u_xlat11.z;
        u_xlat12.y = x_2743;
        let x_2745 : vec2<f32> = u_xlat58;
        let x_2748 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2751 : vec4<f32> = u_xlat12;
        u_xlat15 = ((vec4<f32>(x_2745.x, x_2745.y, x_2745.x, x_2745.y) * vec4<f32>(x_2748.x, x_2748.y, x_2748.x, x_2748.y)) + vec4<f32>(x_2751.x, x_2751.y, x_2751.z, x_2751.y));
        let x_2754 : vec2<f32> = u_xlat58;
        let x_2756 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2759 : vec4<f32> = u_xlat12;
        u_xlat66 = ((x_2754 * vec2<f32>(x_2756.x, x_2756.y)) + vec2<f32>(x_2759.w, x_2759.y));
        let x_2763 : f32 = u_xlat12.y;
        u_xlat9.z = x_2763;
        let x_2765 : vec2<f32> = u_xlat58;
        let x_2768 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2771 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_2765.x, x_2765.y, x_2765.x, x_2765.y) * vec4<f32>(x_2768.x, x_2768.y, x_2768.x, x_2768.y)) + vec4<f32>(x_2771.x, x_2771.y, x_2771.x, x_2771.z));
        let x_2775 : f32 = u_xlat11.w;
        u_xlat12.y = x_2775;
        let x_2777 : vec2<f32> = u_xlat58;
        let x_2780 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2783 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_2777.x, x_2777.y, x_2777.x, x_2777.y) * vec4<f32>(x_2780.x, x_2780.y, x_2780.x, x_2780.y)) + vec4<f32>(x_2783.x, x_2783.y, x_2783.z, x_2783.y));
        let x_2787 : vec2<f32> = u_xlat58;
        let x_2789 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2792 : vec4<f32> = u_xlat12;
        u_xlat35 = ((x_2787 * vec2<f32>(x_2789.x, x_2789.y)) + vec2<f32>(x_2792.w, x_2792.y));
        let x_2796 : f32 = u_xlat12.y;
        u_xlat9.w = x_2796;
        let x_2798 : vec2<f32> = u_xlat58;
        let x_2800 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2803 : vec4<f32> = u_xlat9;
        let x_2805 : vec2<f32> = ((x_2798 * vec2<f32>(x_2800.x, x_2800.y)) + vec2<f32>(x_2803.x, x_2803.w));
        let x_2806 : vec4<f32> = u_xlat18;
        u_xlat18 = vec4<f32>(x_2805.x, x_2805.y, x_2806.z, x_2806.w);
        let x_2808 : vec4<f32> = u_xlat12;
        let x_2809 : vec3<f32> = vec3<f32>(x_2808.x, x_2808.z, x_2808.w);
        let x_2810 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2809.x, x_2810.y, x_2809.y, x_2809.z);
        let x_2812 : vec2<f32> = u_xlat58;
        let x_2815 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2818 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2812.x, x_2812.y, x_2812.x, x_2812.y) * vec4<f32>(x_2815.x, x_2815.y, x_2815.x, x_2815.y)) + vec4<f32>(x_2818.x, x_2818.y, x_2818.z, x_2818.y));
        let x_2822 : vec2<f32> = u_xlat58;
        let x_2824 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2827 : vec4<f32> = u_xlat11;
        u_xlat63 = ((x_2822 * vec2<f32>(x_2824.x, x_2824.y)) + vec2<f32>(x_2827.w, x_2827.y));
        let x_2831 : f32 = u_xlat9.x;
        u_xlat11.x = x_2831;
        let x_2833 : vec2<f32> = u_xlat58;
        let x_2835 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2838 : vec4<f32> = u_xlat11;
        u_xlat58 = ((x_2833 * vec2<f32>(x_2835.x, x_2835.y)) + vec2<f32>(x_2838.x, x_2838.y));
        let x_2841 : vec4<f32> = u_xlat8;
        let x_2843 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_2841.x, x_2841.x, x_2841.x, x_2841.x) * x_2843);
        let x_2846 : vec4<f32> = u_xlat8;
        let x_2848 : vec4<f32> = u_xlat10;
        u_xlat20 = (vec4<f32>(x_2846.y, x_2846.y, x_2846.y, x_2846.y) * x_2848);
        let x_2851 : vec4<f32> = u_xlat8;
        let x_2853 : vec4<f32> = u_xlat10;
        u_xlat21 = (vec4<f32>(x_2851.z, x_2851.z, x_2851.z, x_2851.z) * x_2853);
        let x_2855 : vec4<f32> = u_xlat8;
        let x_2857 : vec4<f32> = u_xlat10;
        u_xlat8 = (vec4<f32>(x_2855.w, x_2855.w, x_2855.w, x_2855.w) * x_2857);
        let x_2860 : vec4<f32> = u_xlat13;
        let x_2861 : vec2<f32> = vec2<f32>(x_2860.x, x_2860.y);
        let x_2863 : f32 = u_xlat2.z;
        txVec43 = vec3<f32>(x_2861.x, x_2861.y, x_2863);
        let x_2870 : vec3<f32> = txVec43;
        let x_2872 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2870.xy, x_2870.z);
        u_xlat85 = x_2872;
        let x_2874 : vec4<f32> = u_xlat13;
        let x_2875 : vec2<f32> = vec2<f32>(x_2874.z, x_2874.w);
        let x_2877 : f32 = u_xlat2.z;
        txVec44 = vec3<f32>(x_2875.x, x_2875.y, x_2877);
        let x_2884 : vec3<f32> = txVec44;
        let x_2886 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2884.xy, x_2884.z);
        u_xlat9.x = x_2886;
        let x_2889 : f32 = u_xlat9.x;
        let x_2891 : f32 = u_xlat19.y;
        u_xlat9.x = (x_2889 * x_2891);
        let x_2895 : f32 = u_xlat19.x;
        let x_2896 : f32 = u_xlat85;
        let x_2899 : f32 = u_xlat9.x;
        u_xlat85 = ((x_2895 * x_2896) + x_2899);
        let x_2902 : vec4<f32> = u_xlat14;
        let x_2903 : vec2<f32> = vec2<f32>(x_2902.x, x_2902.y);
        let x_2905 : f32 = u_xlat2.z;
        txVec45 = vec3<f32>(x_2903.x, x_2903.y, x_2905);
        let x_2912 : vec3<f32> = txVec45;
        let x_2914 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2912.xy, x_2912.z);
        u_xlat9.x = x_2914;
        let x_2917 : f32 = u_xlat19.z;
        let x_2919 : f32 = u_xlat9.x;
        let x_2921 : f32 = u_xlat85;
        u_xlat85 = ((x_2917 * x_2919) + x_2921);
        let x_2924 : vec4<f32> = u_xlat16;
        let x_2925 : vec2<f32> = vec2<f32>(x_2924.x, x_2924.y);
        let x_2927 : f32 = u_xlat2.z;
        txVec46 = vec3<f32>(x_2925.x, x_2925.y, x_2927);
        let x_2934 : vec3<f32> = txVec46;
        let x_2936 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2934.xy, x_2934.z);
        u_xlat9.x = x_2936;
        let x_2939 : f32 = u_xlat19.w;
        let x_2941 : f32 = u_xlat9.x;
        let x_2943 : f32 = u_xlat85;
        u_xlat85 = ((x_2939 * x_2941) + x_2943);
        let x_2946 : vec4<f32> = u_xlat15;
        let x_2947 : vec2<f32> = vec2<f32>(x_2946.x, x_2946.y);
        let x_2949 : f32 = u_xlat2.z;
        txVec47 = vec3<f32>(x_2947.x, x_2947.y, x_2949);
        let x_2956 : vec3<f32> = txVec47;
        let x_2958 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2956.xy, x_2956.z);
        u_xlat9.x = x_2958;
        let x_2961 : f32 = u_xlat20.x;
        let x_2963 : f32 = u_xlat9.x;
        let x_2965 : f32 = u_xlat85;
        u_xlat85 = ((x_2961 * x_2963) + x_2965);
        let x_2968 : vec4<f32> = u_xlat15;
        let x_2969 : vec2<f32> = vec2<f32>(x_2968.z, x_2968.w);
        let x_2971 : f32 = u_xlat2.z;
        txVec48 = vec3<f32>(x_2969.x, x_2969.y, x_2971);
        let x_2978 : vec3<f32> = txVec48;
        let x_2980 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2978.xy, x_2978.z);
        u_xlat9.x = x_2980;
        let x_2983 : f32 = u_xlat20.y;
        let x_2985 : f32 = u_xlat9.x;
        let x_2987 : f32 = u_xlat85;
        u_xlat85 = ((x_2983 * x_2985) + x_2987);
        let x_2990 : vec2<f32> = u_xlat66;
        let x_2992 : f32 = u_xlat2.z;
        txVec49 = vec3<f32>(x_2990.x, x_2990.y, x_2992);
        let x_2999 : vec3<f32> = txVec49;
        let x_3001 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2999.xy, x_2999.z);
        u_xlat9.x = x_3001;
        let x_3004 : f32 = u_xlat20.z;
        let x_3006 : f32 = u_xlat9.x;
        let x_3008 : f32 = u_xlat85;
        u_xlat85 = ((x_3004 * x_3006) + x_3008);
        let x_3011 : vec4<f32> = u_xlat16;
        let x_3012 : vec2<f32> = vec2<f32>(x_3011.z, x_3011.w);
        let x_3014 : f32 = u_xlat2.z;
        txVec50 = vec3<f32>(x_3012.x, x_3012.y, x_3014);
        let x_3021 : vec3<f32> = txVec50;
        let x_3023 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3021.xy, x_3021.z);
        u_xlat9.x = x_3023;
        let x_3026 : f32 = u_xlat20.w;
        let x_3028 : f32 = u_xlat9.x;
        let x_3030 : f32 = u_xlat85;
        u_xlat85 = ((x_3026 * x_3028) + x_3030);
        let x_3033 : vec4<f32> = u_xlat17;
        let x_3034 : vec2<f32> = vec2<f32>(x_3033.x, x_3033.y);
        let x_3036 : f32 = u_xlat2.z;
        txVec51 = vec3<f32>(x_3034.x, x_3034.y, x_3036);
        let x_3043 : vec3<f32> = txVec51;
        let x_3045 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3043.xy, x_3043.z);
        u_xlat9.x = x_3045;
        let x_3048 : f32 = u_xlat21.x;
        let x_3050 : f32 = u_xlat9.x;
        let x_3052 : f32 = u_xlat85;
        u_xlat85 = ((x_3048 * x_3050) + x_3052);
        let x_3055 : vec4<f32> = u_xlat17;
        let x_3056 : vec2<f32> = vec2<f32>(x_3055.z, x_3055.w);
        let x_3058 : f32 = u_xlat2.z;
        txVec52 = vec3<f32>(x_3056.x, x_3056.y, x_3058);
        let x_3065 : vec3<f32> = txVec52;
        let x_3067 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3065.xy, x_3065.z);
        u_xlat9.x = x_3067;
        let x_3070 : f32 = u_xlat21.y;
        let x_3072 : f32 = u_xlat9.x;
        let x_3074 : f32 = u_xlat85;
        u_xlat85 = ((x_3070 * x_3072) + x_3074);
        let x_3077 : vec2<f32> = u_xlat35;
        let x_3079 : f32 = u_xlat2.z;
        txVec53 = vec3<f32>(x_3077.x, x_3077.y, x_3079);
        let x_3086 : vec3<f32> = txVec53;
        let x_3088 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3086.xy, x_3086.z);
        u_xlat9.x = x_3088;
        let x_3091 : f32 = u_xlat21.z;
        let x_3093 : f32 = u_xlat9.x;
        let x_3095 : f32 = u_xlat85;
        u_xlat85 = ((x_3091 * x_3093) + x_3095);
        let x_3098 : vec4<f32> = u_xlat18;
        let x_3099 : vec2<f32> = vec2<f32>(x_3098.x, x_3098.y);
        let x_3101 : f32 = u_xlat2.z;
        txVec54 = vec3<f32>(x_3099.x, x_3099.y, x_3101);
        let x_3108 : vec3<f32> = txVec54;
        let x_3110 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3108.xy, x_3108.z);
        u_xlat9.x = x_3110;
        let x_3113 : f32 = u_xlat21.w;
        let x_3115 : f32 = u_xlat9.x;
        let x_3117 : f32 = u_xlat85;
        u_xlat85 = ((x_3113 * x_3115) + x_3117);
        let x_3120 : vec4<f32> = u_xlat12;
        let x_3121 : vec2<f32> = vec2<f32>(x_3120.x, x_3120.y);
        let x_3123 : f32 = u_xlat2.z;
        txVec55 = vec3<f32>(x_3121.x, x_3121.y, x_3123);
        let x_3130 : vec3<f32> = txVec55;
        let x_3132 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3130.xy, x_3130.z);
        u_xlat9.x = x_3132;
        let x_3135 : f32 = u_xlat8.x;
        let x_3137 : f32 = u_xlat9.x;
        let x_3139 : f32 = u_xlat85;
        u_xlat85 = ((x_3135 * x_3137) + x_3139);
        let x_3142 : vec4<f32> = u_xlat12;
        let x_3143 : vec2<f32> = vec2<f32>(x_3142.z, x_3142.w);
        let x_3145 : f32 = u_xlat2.z;
        txVec56 = vec3<f32>(x_3143.x, x_3143.y, x_3145);
        let x_3152 : vec3<f32> = txVec56;
        let x_3154 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3152.xy, x_3152.z);
        u_xlat8.x = x_3154;
        let x_3157 : f32 = u_xlat8.y;
        let x_3159 : f32 = u_xlat8.x;
        let x_3161 : f32 = u_xlat85;
        u_xlat85 = ((x_3157 * x_3159) + x_3161);
        let x_3164 : vec2<f32> = u_xlat63;
        let x_3166 : f32 = u_xlat2.z;
        txVec57 = vec3<f32>(x_3164.x, x_3164.y, x_3166);
        let x_3173 : vec3<f32> = txVec57;
        let x_3175 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3173.xy, x_3173.z);
        u_xlat8.x = x_3175;
        let x_3178 : f32 = u_xlat8.z;
        let x_3180 : f32 = u_xlat8.x;
        let x_3182 : f32 = u_xlat85;
        u_xlat85 = ((x_3178 * x_3180) + x_3182);
        let x_3185 : vec2<f32> = u_xlat58;
        let x_3187 : f32 = u_xlat2.z;
        txVec58 = vec3<f32>(x_3185.x, x_3185.y, x_3187);
        let x_3194 : vec3<f32> = txVec58;
        let x_3196 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3194.xy, x_3194.z);
        u_xlat58.x = x_3196;
        let x_3199 : f32 = u_xlat8.w;
        let x_3201 : f32 = u_xlat58.x;
        let x_3203 : f32 = u_xlat85;
        u_xlat0.x = ((x_3199 * x_3201) + x_3203);
      }
    }
  } else {
    let x_3208 : vec4<f32> = u_xlat2;
    let x_3209 : vec2<f32> = vec2<f32>(x_3208.x, x_3208.y);
    let x_3211 : f32 = u_xlat2.z;
    txVec59 = vec3<f32>(x_3209.x, x_3209.y, x_3211);
    let x_3218 : vec3<f32> = txVec59;
    let x_3220 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3218.xy, x_3218.z);
    u_xlat0.x = x_3220;
  }
  let x_3223 : f32 = u_xlat0.x;
  let x_3225 : f32 = x_246.x_MainLightShadowParams.x;
  let x_3227 : f32 = u_xlat80;
  u_xlat0.x = ((x_3223 * x_3225) + x_3227);
  let x_3231 : bool = u_xlatb3.x;
  if (x_3231) {
    x_3232 = 1.0f;
  } else {
    let x_3237 : f32 = u_xlat0.x;
    x_3232 = x_3237;
  }
  let x_3238 : f32 = x_3232;
  u_xlat0.x = x_3238;
  let x_3240 : vec3<f32> = vs_INTERP8;
  let x_3242 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  let x_3244 : vec3<f32> = (x_3240 + -(x_3242));
  let x_3245 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_3244.x, x_3244.y, x_3244.z, x_3245.w);
  let x_3247 : vec4<f32> = u_xlat2;
  let x_3249 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_3247.x, x_3247.y, x_3247.z), vec3<f32>(x_3249.x, x_3249.y, x_3249.z));
  let x_3255 : f32 = u_xlat2.x;
  let x_3257 : f32 = x_246.x_MainLightShadowParams.z;
  let x_3260 : f32 = x_246.x_MainLightShadowParams.w;
  u_xlat28.x = ((x_3255 * x_3257) + x_3260);
  let x_3264 : f32 = u_xlat28.x;
  u_xlat28.x = clamp(x_3264, 0.0f, 1.0f);
  let x_3269 : f32 = u_xlat0.x;
  u_xlat54 = (-(x_3269) + 1.0f);
  let x_3273 : f32 = u_xlat28.x;
  let x_3274 : f32 = u_xlat54;
  let x_3277 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_3273 * x_3274) + x_3277);
  let x_3288 : f32 = x_3286.x_MainLightCookieTextureFormat;
  u_xlatb28.x = !((x_3288 == -1.0f));
  let x_3292 : bool = u_xlatb28.x;
  if (x_3292) {
    let x_3295 : vec3<f32> = vs_INTERP8;
    let x_3298 : vec4<f32> = x_3286.x_MainLightWorldToLight[1i];
    let x_3300 : vec2<f32> = (vec2<f32>(x_3295.y, x_3295.y) * vec2<f32>(x_3298.x, x_3298.y));
    let x_3301 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_3300.x, x_3300.y, x_3301.z);
    let x_3304 : vec4<f32> = x_3286.x_MainLightWorldToLight[0i];
    let x_3306 : vec3<f32> = vs_INTERP8;
    let x_3309 : vec3<f32> = u_xlat28;
    let x_3311 : vec2<f32> = ((vec2<f32>(x_3304.x, x_3304.y) * vec2<f32>(x_3306.x, x_3306.x)) + vec2<f32>(x_3309.x, x_3309.y));
    let x_3312 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_3311.x, x_3311.y, x_3312.z);
    let x_3315 : vec4<f32> = x_3286.x_MainLightWorldToLight[2i];
    let x_3317 : vec3<f32> = vs_INTERP8;
    let x_3320 : vec3<f32> = u_xlat28;
    let x_3322 : vec2<f32> = ((vec2<f32>(x_3315.x, x_3315.y) * vec2<f32>(x_3317.z, x_3317.z)) + vec2<f32>(x_3320.x, x_3320.y));
    let x_3323 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_3322.x, x_3322.y, x_3323.z);
    let x_3325 : vec3<f32> = u_xlat28;
    let x_3328 : vec4<f32> = x_3286.x_MainLightWorldToLight[3i];
    let x_3330 : vec2<f32> = (vec2<f32>(x_3325.x, x_3325.y) + vec2<f32>(x_3328.x, x_3328.y));
    let x_3331 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_3330.x, x_3330.y, x_3331.z);
    let x_3333 : vec3<f32> = u_xlat28;
    let x_3336 : vec2<f32> = ((vec2<f32>(x_3333.x, x_3333.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_3337 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_3336.x, x_3336.y, x_3337.z);
    let x_3344 : vec3<f32> = u_xlat28;
    let x_3347 : f32 = x_128.x_GlobalMipBias.x;
    let x_3348 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_3344.x, x_3344.y), x_3347);
    u_xlat8 = x_3348;
    let x_3350 : f32 = x_3286.x_MainLightCookieTextureFormat;
    let x_3352 : f32 = x_3286.x_MainLightCookieTextureFormat;
    let x_3354 : f32 = x_3286.x_MainLightCookieTextureFormat;
    let x_3356 : f32 = x_3286.x_MainLightCookieTextureFormat;
    let x_3357 : vec4<f32> = vec4<f32>(x_3350, x_3352, x_3354, x_3356);
    let x_3364 : vec4<bool> = (vec4<f32>(x_3357.x, x_3357.y, x_3357.z, x_3357.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb28 = vec2<bool>(x_3364.x, x_3364.y);
    let x_3367 : bool = u_xlatb28.y;
    if (x_3367) {
      let x_3372 : f32 = u_xlat8.w;
      x_3368 = x_3372;
    } else {
      let x_3375 : f32 = u_xlat8.x;
      x_3368 = x_3375;
    }
    let x_3376 : f32 = x_3368;
    u_xlat54 = x_3376;
    let x_3378 : bool = u_xlatb28.x;
    if (x_3378) {
      let x_3382 : vec4<f32> = u_xlat8;
      x_3379 = vec3<f32>(x_3382.x, x_3382.y, x_3382.z);
    } else {
      let x_3385 : f32 = u_xlat54;
      x_3379 = vec3<f32>(x_3385, x_3385, x_3385);
    }
    let x_3387 : vec3<f32> = x_3379;
    u_xlat28 = x_3387;
  } else {
    u_xlat28.x = 1.0f;
    u_xlat28.y = 1.0f;
    u_xlat28.z = 1.0f;
  }
  let x_3392 : vec3<f32> = u_xlat28;
  let x_3394 : vec4<f32> = x_128.x_MainLightColor;
  u_xlat28 = (x_3392 * vec3<f32>(x_3394.x, x_3394.y, x_3394.z));
  let x_3397 : vec4<f32> = u_xlat7;
  let x_3400 : vec3<f32> = u_xlat26;
  u_xlat3.x = dot(-(vec3<f32>(x_3397.x, x_3397.y, x_3397.z)), x_3400);
  let x_3404 : f32 = u_xlat3.x;
  let x_3406 : f32 = u_xlat3.x;
  u_xlat3.x = (x_3404 + x_3406);
  let x_3409 : vec3<f32> = u_xlat26;
  let x_3410 : vec4<f32> = u_xlat3;
  let x_3414 : vec4<f32> = u_xlat7;
  let x_3417 : vec3<f32> = ((x_3409 * -(vec3<f32>(x_3410.x, x_3410.x, x_3410.x))) + -(vec3<f32>(x_3414.x, x_3414.y, x_3414.z)));
  let x_3418 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3417.x, x_3417.y, x_3417.z, x_3418.w);
  let x_3420 : vec3<f32> = u_xlat26;
  let x_3421 : vec4<f32> = u_xlat7;
  u_xlat3.x = dot(x_3420, vec3<f32>(x_3421.x, x_3421.y, x_3421.z));
  let x_3426 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_3426, 0.0f, 1.0f);
  let x_3430 : f32 = u_xlat3.x;
  u_xlat3.x = (-(x_3430) + 1.0f);
  let x_3435 : f32 = u_xlat3.x;
  let x_3437 : f32 = u_xlat3.x;
  u_xlat3.x = (x_3435 * x_3437);
  let x_3441 : f32 = u_xlat3.x;
  let x_3443 : f32 = u_xlat3.x;
  u_xlat3.x = (x_3441 * x_3443);
  let x_3447 : f32 = u_xlat29.x;
  u_xlat58.x = ((-(x_3447) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3455 : f32 = u_xlat29.x;
  let x_3457 : f32 = u_xlat58.x;
  u_xlat29.x = (x_3455 * x_3457);
  let x_3461 : f32 = u_xlat29.x;
  u_xlat29.x = (x_3461 * 6.0f);
  let x_3473 : vec4<f32> = u_xlat8;
  let x_3476 : f32 = u_xlat29.x;
  let x_3477 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_3473.x, x_3473.y, x_3473.z), x_3476);
  u_xlat8 = x_3477;
  let x_3479 : f32 = u_xlat8.w;
  u_xlat29.x = (x_3479 + -1.0f);
  let x_3483 : f32 = x_48.unity_SpecCube0_HDR.w;
  let x_3485 : f32 = u_xlat29.x;
  u_xlat29.x = ((x_3483 * x_3485) + 1.0f);
  let x_3490 : f32 = u_xlat29.x;
  u_xlat29.x = max(x_3490, 0.0f);
  let x_3494 : f32 = u_xlat29.x;
  u_xlat29.x = log2(x_3494);
  let x_3498 : f32 = u_xlat29.x;
  let x_3500 : f32 = x_48.unity_SpecCube0_HDR.y;
  u_xlat29.x = (x_3498 * x_3500);
  let x_3504 : f32 = u_xlat29.x;
  u_xlat29.x = exp2(x_3504);
  let x_3508 : f32 = u_xlat29.x;
  let x_3510 : f32 = x_48.unity_SpecCube0_HDR.x;
  u_xlat29.x = (x_3508 * x_3510);
  let x_3513 : vec4<f32> = u_xlat8;
  let x_3515 : vec3<f32> = u_xlat29;
  let x_3517 : vec3<f32> = (vec3<f32>(x_3513.x, x_3513.y, x_3513.z) * vec3<f32>(x_3515.x, x_3515.x, x_3515.x));
  let x_3518 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3517.x, x_3517.y, x_3517.z, x_3518.w);
  let x_3520 : f32 = u_xlat81;
  let x_3522 : f32 = u_xlat81;
  let x_3526 : vec2<f32> = ((vec2<f32>(x_3520, x_3520) * vec2<f32>(x_3522, x_3522)) + vec2<f32>(-1.0f, 1.0f));
  let x_3527 : vec3<f32> = u_xlat29;
  u_xlat29 = vec3<f32>(x_3526.x, x_3527.y, x_3526.y);
  let x_3530 : f32 = u_xlat29.z;
  u_xlat81 = (1.0f / x_3530);
  let x_3532 : f32 = u_xlat83;
  u_xlat83 = (x_3532 + -0.03999999910593032837f);
  let x_3536 : f32 = u_xlat3.x;
  let x_3537 : f32 = u_xlat83;
  u_xlat3.x = ((x_3536 * x_3537) + 0.03999999910593032837f);
  let x_3543 : f32 = u_xlat3.x;
  let x_3544 : f32 = u_xlat81;
  u_xlat3.x = (x_3543 * x_3544);
  let x_3547 : vec4<f32> = u_xlat3;
  let x_3549 : vec4<f32> = u_xlat8;
  let x_3551 : vec3<f32> = (vec3<f32>(x_3547.x, x_3547.x, x_3547.x) * vec3<f32>(x_3549.x, x_3549.y, x_3549.z));
  let x_3552 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3551.x, x_3551.y, x_3551.z, x_3552.w);
  let x_3554 : vec4<f32> = u_xlat4;
  let x_3556 : vec3<f32> = u_xlat5;
  let x_3558 : vec4<f32> = u_xlat8;
  let x_3560 : vec3<f32> = ((vec3<f32>(x_3554.x, x_3554.y, x_3554.z) * x_3556) + vec3<f32>(x_3558.x, x_3558.y, x_3558.z));
  let x_3561 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_3560.x, x_3560.y, x_3560.z, x_3561.w);
  let x_3564 : f32 = u_xlat0.x;
  let x_3566 : f32 = x_48.unity_LightData.z;
  u_xlat0.x = (x_3564 * x_3566);
  let x_3569 : vec3<f32> = u_xlat26;
  let x_3571 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat3.x = dot(x_3569, vec3<f32>(x_3571.x, x_3571.y, x_3571.z));
  let x_3576 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_3576, 0.0f, 1.0f);
  let x_3580 : f32 = u_xlat0.x;
  let x_3582 : f32 = u_xlat3.x;
  u_xlat0.x = (x_3580 * x_3582);
  let x_3585 : vec3<f32> = u_xlat0;
  let x_3587 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_3585.x, x_3585.x, x_3585.x) * x_3587);
  let x_3589 : vec4<f32> = u_xlat7;
  let x_3592 : vec4<f32> = x_128.x_MainLightPosition;
  let x_3594 : vec3<f32> = (vec3<f32>(x_3589.x, x_3589.y, x_3589.z) + vec3<f32>(x_3592.x, x_3592.y, x_3592.z));
  let x_3595 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3594.x, x_3594.y, x_3594.z, x_3595.w);
  let x_3597 : vec4<f32> = u_xlat8;
  let x_3599 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_3597.x, x_3597.y, x_3597.z), vec3<f32>(x_3599.x, x_3599.y, x_3599.z));
  let x_3604 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_3604, 1.17549435e-38f);
  let x_3608 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_3608);
  let x_3611 : vec3<f32> = u_xlat0;
  let x_3613 : vec4<f32> = u_xlat8;
  let x_3615 : vec3<f32> = (vec3<f32>(x_3611.x, x_3611.x, x_3611.x) * vec3<f32>(x_3613.x, x_3613.y, x_3613.z));
  let x_3616 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3615.x, x_3615.y, x_3615.z, x_3616.w);
  let x_3618 : vec3<f32> = u_xlat26;
  let x_3619 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_3618, vec3<f32>(x_3619.x, x_3619.y, x_3619.z));
  let x_3624 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_3624, 0.0f, 1.0f);
  let x_3628 : vec4<f32> = x_128.x_MainLightPosition;
  let x_3630 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_3628.x, x_3628.y, x_3628.z), vec3<f32>(x_3630.x, x_3630.y, x_3630.z));
  let x_3635 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_3635, 0.0f, 1.0f);
  let x_3639 : f32 = u_xlat0.x;
  let x_3641 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3639 * x_3641);
  let x_3645 : f32 = u_xlat0.x;
  let x_3647 : f32 = u_xlat29.x;
  u_xlat0.x = ((x_3645 * x_3647) + 1.00001001358032226562f);
  let x_3653 : f32 = u_xlat3.x;
  let x_3655 : f32 = u_xlat3.x;
  u_xlat3.x = (x_3653 * x_3655);
  let x_3659 : f32 = u_xlat0.x;
  let x_3661 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3659 * x_3661);
  let x_3665 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_3665, 0.10000000149011611938f);
  let x_3670 : f32 = u_xlat0.x;
  let x_3672 : f32 = u_xlat3.x;
  u_xlat0.x = (x_3670 * x_3672);
  let x_3676 : f32 = u_xlat6.x;
  let x_3678 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3676 * x_3678);
  let x_3681 : f32 = u_xlat82;
  let x_3683 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3681 / x_3683);
  let x_3686 : vec3<f32> = u_xlat0;
  let x_3690 : vec3<f32> = u_xlat5;
  let x_3691 : vec3<f32> = ((vec3<f32>(x_3686.x, x_3686.x, x_3686.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3690);
  let x_3692 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3691.x, x_3691.y, x_3691.z, x_3692.w);
  let x_3694 : vec3<f32> = u_xlat28;
  let x_3695 : vec4<f32> = u_xlat8;
  u_xlat28 = (x_3694 * vec3<f32>(x_3695.x, x_3695.y, x_3695.z));
  let x_3699 : f32 = x_128.x_AdditionalLightsCount.x;
  let x_3701 : f32 = x_48.unity_LightData.y;
  u_xlat0.x = min(x_3699, x_3701);
  let x_3705 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_3705));
  let x_3709 : f32 = u_xlat2.x;
  let x_3712 : f32 = x_246.x_AdditionalShadowFadeParams.x;
  let x_3715 : f32 = x_246.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_3709 * x_3712) + x_3715);
  let x_3719 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_3719, 0.0f, 1.0f);
  let x_3723 : f32 = x_3286.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3725 : f32 = x_3286.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3727 : f32 = x_3286.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3729 : f32 = x_3286.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3730 : vec4<f32> = vec4<f32>(x_3723, x_3725, x_3727, x_3729);
  let x_3737 : vec4<bool> = (vec4<f32>(x_3730.x, x_3730.y, x_3730.z, x_3730.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_3738 : vec2<bool> = vec2<bool>(x_3737.x, x_3737.w);
  let x_3739 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_3738.x, x_3739.y, x_3739.z, x_3738.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3751 : u32 = u_xlatu_loop_1;
    let x_3752 : u32 = u_xlatu0;
    if ((x_3751 < x_3752)) {
    } else {
      break;
    }
    let x_3755 : u32 = u_xlatu_loop_1;
    u_xlatu58 = (x_3755 >> 2u);
    let x_3758 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_3758 & 3u));
    let x_3761 : u32 = u_xlatu58;
    let x_3764 : vec4<f32> = x_48.unity_LightIndices[bitcast<i32>(x_3761)];
    let x_3774 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3779 : vec4<u32> = indexable[x_3774];
    u_xlat58.x = dot(x_3764, bitcast<vec4<f32>>(x_3779));
    let x_3785 : f32 = u_xlat58.x;
    u_xlati58 = i32(x_3785);
    let x_3787 : vec3<f32> = vs_INTERP8;
    let x_3798 : i32 = u_xlati58;
    let x_3800 : vec4<f32> = x_3797.x_AdditionalLightsPosition[x_3798];
    let x_3803 : i32 = u_xlati58;
    let x_3805 : vec4<f32> = x_3797.x_AdditionalLightsPosition[x_3803];
    let x_3807 : vec3<f32> = ((-(x_3787) * vec3<f32>(x_3800.w, x_3800.w, x_3800.w)) + vec3<f32>(x_3805.x, x_3805.y, x_3805.z));
    let x_3808 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3807.x, x_3807.y, x_3807.z, x_3808.w);
    let x_3810 : vec4<f32> = u_xlat9;
    let x_3812 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_3810.x, x_3810.y, x_3810.z), vec3<f32>(x_3812.x, x_3812.y, x_3812.z));
    let x_3815 : f32 = u_xlat84;
    u_xlat84 = max(x_3815, 0.00006103515625f);
    let x_3818 : f32 = u_xlat84;
    u_xlat85 = inverseSqrt(x_3818);
    let x_3820 : f32 = u_xlat85;
    let x_3822 : vec4<f32> = u_xlat9;
    let x_3824 : vec3<f32> = (vec3<f32>(x_3820, x_3820, x_3820) * vec3<f32>(x_3822.x, x_3822.y, x_3822.z));
    let x_3825 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3824.x, x_3824.y, x_3824.z, x_3825.w);
    let x_3828 : f32 = u_xlat84;
    u_xlat86 = (1.0f / x_3828);
    let x_3830 : f32 = u_xlat84;
    let x_3831 : i32 = u_xlati58;
    let x_3833 : f32 = x_3797.x_AdditionalLightsAttenuation[x_3831].x;
    u_xlat84 = (x_3830 * x_3833);
    let x_3835 : f32 = u_xlat84;
    let x_3837 : f32 = u_xlat84;
    u_xlat84 = ((-(x_3835) * x_3837) + 1.0f);
    let x_3840 : f32 = u_xlat84;
    u_xlat84 = max(x_3840, 0.0f);
    let x_3842 : f32 = u_xlat84;
    let x_3843 : f32 = u_xlat84;
    u_xlat84 = (x_3842 * x_3843);
    let x_3845 : f32 = u_xlat84;
    let x_3846 : f32 = u_xlat86;
    u_xlat84 = (x_3845 * x_3846);
    let x_3848 : i32 = u_xlati58;
    let x_3850 : vec4<f32> = x_3797.x_AdditionalLightsSpotDir[x_3848];
    let x_3852 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_3850.x, x_3850.y, x_3850.z), vec3<f32>(x_3852.x, x_3852.y, x_3852.z));
    let x_3855 : f32 = u_xlat86;
    let x_3856 : i32 = u_xlati58;
    let x_3858 : f32 = x_3797.x_AdditionalLightsAttenuation[x_3856].z;
    let x_3860 : i32 = u_xlati58;
    let x_3862 : f32 = x_3797.x_AdditionalLightsAttenuation[x_3860].w;
    u_xlat86 = ((x_3855 * x_3858) + x_3862);
    let x_3864 : f32 = u_xlat86;
    u_xlat86 = clamp(x_3864, 0.0f, 1.0f);
    let x_3866 : f32 = u_xlat86;
    let x_3867 : f32 = u_xlat86;
    u_xlat86 = (x_3866 * x_3867);
    let x_3869 : f32 = u_xlat84;
    let x_3870 : f32 = u_xlat86;
    u_xlat84 = (x_3869 * x_3870);
    let x_3874 : i32 = u_xlati58;
    let x_3876 : f32 = x_246.x_AdditionalShadowParams[x_3874].w;
    u_xlati86 = i32(x_3876);
    let x_3879 : i32 = u_xlati86;
    u_xlatb87 = (x_3879 >= 0i);
    let x_3881 : bool = u_xlatb87;
    if (x_3881) {
      let x_3885 : i32 = u_xlati58;
      let x_3887 : f32 = x_246.x_AdditionalShadowParams[x_3885].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3887, x_3887, x_3887, x_3887))));
      let x_3891 : bool = u_xlatb87;
      if (x_3891) {
        let x_3895 : vec4<f32> = u_xlat10;
        let x_3898 : vec4<f32> = u_xlat10;
        let x_3901 : vec4<bool> = (abs(vec4<f32>(x_3895.z, x_3895.z, x_3895.y, x_3895.z)) >= abs(vec4<f32>(x_3898.x, x_3898.y, x_3898.x, x_3898.x)));
        let x_3903 : vec3<bool> = vec3<bool>(x_3901.x, x_3901.y, x_3901.z);
        let x_3904 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3903.x, x_3903.y, x_3903.z, x_3904.w);
        let x_3907 : bool = u_xlatb11.y;
        let x_3909 : bool = u_xlatb11.x;
        u_xlatb87 = (x_3907 & x_3909);
        let x_3911 : vec4<f32> = u_xlat10;
        let x_3914 : vec4<bool> = (-(vec4<f32>(x_3911.z, x_3911.y, x_3911.z, x_3911.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3915 : vec3<bool> = vec3<bool>(x_3914.x, x_3914.y, x_3914.w);
        let x_3916 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3915.x, x_3915.y, x_3916.z, x_3915.z);
        let x_3919 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3919);
        let x_3924 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3924);
        let x_3929 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_3929);
        let x_3932 : bool = u_xlatb11.z;
        if (x_3932) {
          let x_3937 : f32 = u_xlat11.y;
          x_3933 = x_3937;
        } else {
          let x_3939 : f32 = u_xlat88;
          x_3933 = x_3939;
        }
        let x_3940 : f32 = x_3933;
        u_xlat88 = x_3940;
        let x_3942 : bool = u_xlatb87;
        if (x_3942) {
          let x_3947 : f32 = u_xlat11.x;
          x_3943 = x_3947;
        } else {
          let x_3949 : f32 = u_xlat88;
          x_3943 = x_3949;
        }
        let x_3950 : f32 = x_3943;
        u_xlat87 = x_3950;
        let x_3951 : i32 = u_xlati58;
        let x_3953 : f32 = x_246.x_AdditionalShadowParams[x_3951].w;
        u_xlat88 = trunc(x_3953);
        let x_3955 : f32 = u_xlat87;
        let x_3956 : f32 = u_xlat88;
        u_xlat87 = (x_3955 + x_3956);
        let x_3958 : f32 = u_xlat87;
        u_xlati86 = i32(x_3958);
      }
      let x_3960 : i32 = u_xlati86;
      u_xlati86 = (x_3960 << bitcast<u32>(2i));
      let x_3962 : vec3<f32> = vs_INTERP8;
      let x_3965 : i32 = u_xlati86;
      let x_3968 : i32 = u_xlati86;
      let x_3972 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[((x_3965 + 1i) / 4i)][((x_3968 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3962.y, x_3962.y, x_3962.y, x_3962.y) * x_3972);
      let x_3974 : i32 = u_xlati86;
      let x_3976 : i32 = u_xlati86;
      let x_3979 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[(x_3974 / 4i)][(x_3976 % 4i)];
      let x_3980 : vec3<f32> = vs_INTERP8;
      let x_3983 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3979 * vec4<f32>(x_3980.x, x_3980.x, x_3980.x, x_3980.x)) + x_3983);
      let x_3985 : i32 = u_xlati86;
      let x_3988 : i32 = u_xlati86;
      let x_3992 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[((x_3985 + 2i) / 4i)][((x_3988 + 2i) % 4i)];
      let x_3993 : vec3<f32> = vs_INTERP8;
      let x_3996 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3992 * vec4<f32>(x_3993.z, x_3993.z, x_3993.z, x_3993.z)) + x_3996);
      let x_3998 : vec4<f32> = u_xlat11;
      let x_3999 : i32 = u_xlati86;
      let x_4002 : i32 = u_xlati86;
      let x_4006 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[((x_3999 + 3i) / 4i)][((x_4002 + 3i) % 4i)];
      u_xlat11 = (x_3998 + x_4006);
      let x_4008 : vec4<f32> = u_xlat11;
      let x_4010 : vec4<f32> = u_xlat11;
      let x_4012 : vec3<f32> = (vec3<f32>(x_4008.x, x_4008.y, x_4008.z) / vec3<f32>(x_4010.w, x_4010.w, x_4010.w));
      let x_4013 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4012.x, x_4012.y, x_4012.z, x_4013.w);
      let x_4016 : i32 = u_xlati58;
      let x_4018 : f32 = x_246.x_AdditionalShadowParams[x_4016].y;
      u_xlatb86 = (0.0f < x_4018);
      let x_4020 : bool = u_xlatb86;
      if (x_4020) {
        let x_4023 : i32 = u_xlati58;
        let x_4025 : f32 = x_246.x_AdditionalShadowParams[x_4023].y;
        u_xlatb86 = (1.0f == x_4025);
        let x_4027 : bool = u_xlatb86;
        if (x_4027) {
          let x_4030 : vec4<f32> = u_xlat11;
          let x_4034 : vec4<f32> = x_246.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_4030.x, x_4030.y, x_4030.x, x_4030.y) + x_4034);
          let x_4037 : vec4<f32> = u_xlat12;
          let x_4038 : vec2<f32> = vec2<f32>(x_4037.x, x_4037.y);
          let x_4040 : f32 = u_xlat11.z;
          txVec60 = vec3<f32>(x_4038.x, x_4038.y, x_4040);
          let x_4048 : vec3<f32> = txVec60;
          let x_4050 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4048.xy, x_4048.z);
          u_xlat13.x = x_4050;
          let x_4053 : vec4<f32> = u_xlat12;
          let x_4054 : vec2<f32> = vec2<f32>(x_4053.z, x_4053.w);
          let x_4056 : f32 = u_xlat11.z;
          txVec61 = vec3<f32>(x_4054.x, x_4054.y, x_4056);
          let x_4063 : vec3<f32> = txVec61;
          let x_4065 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4063.xy, x_4063.z);
          u_xlat13.y = x_4065;
          let x_4067 : vec4<f32> = u_xlat11;
          let x_4071 : vec4<f32> = x_246.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_4067.x, x_4067.y, x_4067.x, x_4067.y) + x_4071);
          let x_4074 : vec4<f32> = u_xlat12;
          let x_4075 : vec2<f32> = vec2<f32>(x_4074.x, x_4074.y);
          let x_4077 : f32 = u_xlat11.z;
          txVec62 = vec3<f32>(x_4075.x, x_4075.y, x_4077);
          let x_4084 : vec3<f32> = txVec62;
          let x_4086 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4084.xy, x_4084.z);
          u_xlat13.z = x_4086;
          let x_4089 : vec4<f32> = u_xlat12;
          let x_4090 : vec2<f32> = vec2<f32>(x_4089.z, x_4089.w);
          let x_4092 : f32 = u_xlat11.z;
          txVec63 = vec3<f32>(x_4090.x, x_4090.y, x_4092);
          let x_4099 : vec3<f32> = txVec63;
          let x_4101 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4099.xy, x_4099.z);
          u_xlat13.w = x_4101;
          let x_4103 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_4103, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_4106 : i32 = u_xlati58;
          let x_4108 : f32 = x_246.x_AdditionalShadowParams[x_4106].y;
          u_xlatb87 = (2.0f == x_4108);
          let x_4110 : bool = u_xlatb87;
          if (x_4110) {
            let x_4113 : vec4<f32> = u_xlat11;
            let x_4117 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4120 : vec2<f32> = ((vec2<f32>(x_4113.x, x_4113.y) * vec2<f32>(x_4117.z, x_4117.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4121 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4120.x, x_4120.y, x_4121.z, x_4121.w);
            let x_4123 : vec4<f32> = u_xlat12;
            let x_4125 : vec2<f32> = floor(vec2<f32>(x_4123.x, x_4123.y));
            let x_4126 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4125.x, x_4125.y, x_4126.z, x_4126.w);
            let x_4129 : vec4<f32> = u_xlat11;
            let x_4132 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4135 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4129.x, x_4129.y) * vec2<f32>(x_4132.z, x_4132.w)) + -(vec2<f32>(x_4135.x, x_4135.y)));
            let x_4139 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4139.x, x_4139.x, x_4139.y, x_4139.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4142 : vec4<f32> = u_xlat13;
            let x_4144 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4142.x, x_4142.x, x_4142.z, x_4142.z) * vec4<f32>(x_4144.x, x_4144.x, x_4144.z, x_4144.z));
            let x_4147 : vec4<f32> = u_xlat14;
            let x_4149 : vec2<f32> = (vec2<f32>(x_4147.y, x_4147.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_4150 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4149.x, x_4150.y, x_4149.y, x_4150.w);
            let x_4152 : vec4<f32> = u_xlat14;
            let x_4155 : vec2<f32> = u_xlat64;
            let x_4157 : vec2<f32> = ((vec2<f32>(x_4152.x, x_4152.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4155));
            let x_4158 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4157.x, x_4157.y, x_4158.z, x_4158.w);
            let x_4160 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_4160) + vec2<f32>(1.0f, 1.0f));
            let x_4163 : vec2<f32> = u_xlat64;
            let x_4164 : vec2<f32> = min(x_4163, vec2<f32>(0.0f, 0.0f));
            let x_4165 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4164.x, x_4164.y, x_4165.z, x_4165.w);
            let x_4167 : vec4<f32> = u_xlat15;
            let x_4170 : vec4<f32> = u_xlat15;
            let x_4173 : vec2<f32> = u_xlat66;
            let x_4174 : vec2<f32> = ((-(vec2<f32>(x_4167.x, x_4167.y)) * vec2<f32>(x_4170.x, x_4170.y)) + x_4173);
            let x_4175 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4174.x, x_4174.y, x_4175.z, x_4175.w);
            let x_4177 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_4177, vec2<f32>(0.0f, 0.0f));
            let x_4179 : vec2<f32> = u_xlat64;
            let x_4181 : vec2<f32> = u_xlat64;
            let x_4183 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_4179) * x_4181) + vec2<f32>(x_4183.y, x_4183.w));
            let x_4186 : vec4<f32> = u_xlat15;
            let x_4188 : vec2<f32> = (vec2<f32>(x_4186.x, x_4186.y) + vec2<f32>(1.0f, 1.0f));
            let x_4189 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4188.x, x_4188.y, x_4189.z, x_4189.w);
            let x_4191 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_4191 + vec2<f32>(1.0f, 1.0f));
            let x_4193 : vec4<f32> = u_xlat14;
            let x_4195 : vec2<f32> = (vec2<f32>(x_4193.x, x_4193.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4196 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4195.x, x_4195.y, x_4196.z, x_4196.w);
            let x_4198 : vec2<f32> = u_xlat66;
            let x_4199 : vec2<f32> = (x_4198 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4200 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4199.x, x_4199.y, x_4200.z, x_4200.w);
            let x_4202 : vec4<f32> = u_xlat15;
            let x_4204 : vec2<f32> = (vec2<f32>(x_4202.x, x_4202.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4205 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4204.x, x_4204.y, x_4205.z, x_4205.w);
            let x_4207 : vec2<f32> = u_xlat64;
            let x_4208 : vec2<f32> = (x_4207 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4209 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4208.x, x_4208.y, x_4209.z, x_4209.w);
            let x_4211 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_4211.y, x_4211.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4215 : f32 = u_xlat15.x;
            u_xlat16.z = x_4215;
            let x_4218 : f32 = u_xlat64.x;
            u_xlat16.w = x_4218;
            let x_4221 : f32 = u_xlat17.x;
            u_xlat14.z = x_4221;
            let x_4224 : f32 = u_xlat13.x;
            u_xlat14.w = x_4224;
            let x_4226 : vec4<f32> = u_xlat14;
            let x_4228 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_4226.z, x_4226.w, x_4226.x, x_4226.z) + vec4<f32>(x_4228.z, x_4228.w, x_4228.x, x_4228.z));
            let x_4232 : f32 = u_xlat16.y;
            u_xlat15.z = x_4232;
            let x_4235 : f32 = u_xlat64.y;
            u_xlat15.w = x_4235;
            let x_4238 : f32 = u_xlat14.y;
            u_xlat17.z = x_4238;
            let x_4241 : f32 = u_xlat13.z;
            u_xlat17.w = x_4241;
            let x_4243 : vec4<f32> = u_xlat15;
            let x_4245 : vec4<f32> = u_xlat17;
            let x_4247 : vec3<f32> = (vec3<f32>(x_4243.z, x_4243.y, x_4243.w) + vec3<f32>(x_4245.z, x_4245.y, x_4245.w));
            let x_4248 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4247.x, x_4247.y, x_4247.z, x_4248.w);
            let x_4250 : vec4<f32> = u_xlat14;
            let x_4252 : vec4<f32> = u_xlat18;
            let x_4254 : vec3<f32> = (vec3<f32>(x_4250.x, x_4250.z, x_4250.w) / vec3<f32>(x_4252.z, x_4252.w, x_4252.y));
            let x_4255 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4254.x, x_4254.y, x_4254.z, x_4255.w);
            let x_4257 : vec4<f32> = u_xlat14;
            let x_4259 : vec3<f32> = (vec3<f32>(x_4257.x, x_4257.y, x_4257.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4260 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4259.x, x_4259.y, x_4259.z, x_4260.w);
            let x_4262 : vec4<f32> = u_xlat17;
            let x_4264 : vec4<f32> = u_xlat13;
            let x_4266 : vec3<f32> = (vec3<f32>(x_4262.z, x_4262.y, x_4262.w) / vec3<f32>(x_4264.x, x_4264.y, x_4264.z));
            let x_4267 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4266.x, x_4266.y, x_4266.z, x_4267.w);
            let x_4269 : vec4<f32> = u_xlat15;
            let x_4271 : vec3<f32> = (vec3<f32>(x_4269.x, x_4269.y, x_4269.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4272 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4271.x, x_4271.y, x_4271.z, x_4272.w);
            let x_4274 : vec4<f32> = u_xlat14;
            let x_4277 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4279 : vec3<f32> = (vec3<f32>(x_4274.y, x_4274.x, x_4274.z) * vec3<f32>(x_4277.x, x_4277.x, x_4277.x));
            let x_4280 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4279.x, x_4279.y, x_4279.z, x_4280.w);
            let x_4282 : vec4<f32> = u_xlat15;
            let x_4285 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4287 : vec3<f32> = (vec3<f32>(x_4282.x, x_4282.y, x_4282.z) * vec3<f32>(x_4285.y, x_4285.y, x_4285.y));
            let x_4288 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4287.x, x_4287.y, x_4287.z, x_4288.w);
            let x_4291 : f32 = u_xlat15.x;
            u_xlat14.w = x_4291;
            let x_4293 : vec4<f32> = u_xlat12;
            let x_4296 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4299 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4293.x, x_4293.y, x_4293.x, x_4293.y) * vec4<f32>(x_4296.x, x_4296.y, x_4296.x, x_4296.y)) + vec4<f32>(x_4299.y, x_4299.w, x_4299.x, x_4299.w));
            let x_4302 : vec4<f32> = u_xlat12;
            let x_4305 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4308 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4302.x, x_4302.y) * vec2<f32>(x_4305.x, x_4305.y)) + vec2<f32>(x_4308.z, x_4308.w));
            let x_4312 : f32 = u_xlat14.y;
            u_xlat15.w = x_4312;
            let x_4314 : vec4<f32> = u_xlat15;
            let x_4315 : vec2<f32> = vec2<f32>(x_4314.y, x_4314.z);
            let x_4316 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4316.x, x_4315.x, x_4316.z, x_4315.y);
            let x_4318 : vec4<f32> = u_xlat12;
            let x_4321 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4324 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_4318.x, x_4318.y, x_4318.x, x_4318.y) * vec4<f32>(x_4321.x, x_4321.y, x_4321.x, x_4321.y)) + vec4<f32>(x_4324.x, x_4324.y, x_4324.z, x_4324.y));
            let x_4327 : vec4<f32> = u_xlat12;
            let x_4330 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4333 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4327.x, x_4327.y, x_4327.x, x_4327.y) * vec4<f32>(x_4330.x, x_4330.y, x_4330.x, x_4330.y)) + vec4<f32>(x_4333.w, x_4333.y, x_4333.w, x_4333.z));
            let x_4336 : vec4<f32> = u_xlat12;
            let x_4339 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4342 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4336.x, x_4336.y, x_4336.x, x_4336.y) * vec4<f32>(x_4339.x, x_4339.y, x_4339.x, x_4339.y)) + vec4<f32>(x_4342.x, x_4342.w, x_4342.z, x_4342.w));
            let x_4345 : vec4<f32> = u_xlat13;
            let x_4347 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_4345.x, x_4345.x, x_4345.x, x_4345.y) * vec4<f32>(x_4347.z, x_4347.w, x_4347.y, x_4347.z));
            let x_4350 : vec4<f32> = u_xlat13;
            let x_4352 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_4350.y, x_4350.y, x_4350.z, x_4350.z) * x_4352);
            let x_4355 : f32 = u_xlat13.z;
            let x_4357 : f32 = u_xlat18.y;
            u_xlat87 = (x_4355 * x_4357);
            let x_4360 : vec4<f32> = u_xlat16;
            let x_4361 : vec2<f32> = vec2<f32>(x_4360.x, x_4360.y);
            let x_4363 : f32 = u_xlat11.z;
            txVec64 = vec3<f32>(x_4361.x, x_4361.y, x_4363);
            let x_4370 : vec3<f32> = txVec64;
            let x_4372 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4370.xy, x_4370.z);
            u_xlat88 = x_4372;
            let x_4374 : vec4<f32> = u_xlat16;
            let x_4375 : vec2<f32> = vec2<f32>(x_4374.z, x_4374.w);
            let x_4377 : f32 = u_xlat11.z;
            txVec65 = vec3<f32>(x_4375.x, x_4375.y, x_4377);
            let x_4385 : vec3<f32> = txVec65;
            let x_4387 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4385.xy, x_4385.z);
            u_xlat89 = x_4387;
            let x_4388 : f32 = u_xlat89;
            let x_4390 : f32 = u_xlat19.y;
            u_xlat89 = (x_4388 * x_4390);
            let x_4393 : f32 = u_xlat19.x;
            let x_4394 : f32 = u_xlat88;
            let x_4396 : f32 = u_xlat89;
            u_xlat88 = ((x_4393 * x_4394) + x_4396);
            let x_4399 : vec2<f32> = u_xlat64;
            let x_4401 : f32 = u_xlat11.z;
            txVec66 = vec3<f32>(x_4399.x, x_4399.y, x_4401);
            let x_4408 : vec3<f32> = txVec66;
            let x_4410 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4408.xy, x_4408.z);
            u_xlat89 = x_4410;
            let x_4412 : f32 = u_xlat19.z;
            let x_4413 : f32 = u_xlat89;
            let x_4415 : f32 = u_xlat88;
            u_xlat88 = ((x_4412 * x_4413) + x_4415);
            let x_4418 : vec4<f32> = u_xlat15;
            let x_4419 : vec2<f32> = vec2<f32>(x_4418.x, x_4418.y);
            let x_4421 : f32 = u_xlat11.z;
            txVec67 = vec3<f32>(x_4419.x, x_4419.y, x_4421);
            let x_4428 : vec3<f32> = txVec67;
            let x_4430 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4428.xy, x_4428.z);
            u_xlat89 = x_4430;
            let x_4432 : f32 = u_xlat19.w;
            let x_4433 : f32 = u_xlat89;
            let x_4435 : f32 = u_xlat88;
            u_xlat88 = ((x_4432 * x_4433) + x_4435);
            let x_4438 : vec4<f32> = u_xlat17;
            let x_4439 : vec2<f32> = vec2<f32>(x_4438.x, x_4438.y);
            let x_4441 : f32 = u_xlat11.z;
            txVec68 = vec3<f32>(x_4439.x, x_4439.y, x_4441);
            let x_4448 : vec3<f32> = txVec68;
            let x_4450 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4448.xy, x_4448.z);
            u_xlat89 = x_4450;
            let x_4452 : f32 = u_xlat20.x;
            let x_4453 : f32 = u_xlat89;
            let x_4455 : f32 = u_xlat88;
            u_xlat88 = ((x_4452 * x_4453) + x_4455);
            let x_4458 : vec4<f32> = u_xlat17;
            let x_4459 : vec2<f32> = vec2<f32>(x_4458.z, x_4458.w);
            let x_4461 : f32 = u_xlat11.z;
            txVec69 = vec3<f32>(x_4459.x, x_4459.y, x_4461);
            let x_4468 : vec3<f32> = txVec69;
            let x_4470 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4468.xy, x_4468.z);
            u_xlat89 = x_4470;
            let x_4472 : f32 = u_xlat20.y;
            let x_4473 : f32 = u_xlat89;
            let x_4475 : f32 = u_xlat88;
            u_xlat88 = ((x_4472 * x_4473) + x_4475);
            let x_4478 : vec4<f32> = u_xlat15;
            let x_4479 : vec2<f32> = vec2<f32>(x_4478.z, x_4478.w);
            let x_4481 : f32 = u_xlat11.z;
            txVec70 = vec3<f32>(x_4479.x, x_4479.y, x_4481);
            let x_4488 : vec3<f32> = txVec70;
            let x_4490 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4488.xy, x_4488.z);
            u_xlat89 = x_4490;
            let x_4492 : f32 = u_xlat20.z;
            let x_4493 : f32 = u_xlat89;
            let x_4495 : f32 = u_xlat88;
            u_xlat88 = ((x_4492 * x_4493) + x_4495);
            let x_4498 : vec4<f32> = u_xlat14;
            let x_4499 : vec2<f32> = vec2<f32>(x_4498.x, x_4498.y);
            let x_4501 : f32 = u_xlat11.z;
            txVec71 = vec3<f32>(x_4499.x, x_4499.y, x_4501);
            let x_4508 : vec3<f32> = txVec71;
            let x_4510 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4508.xy, x_4508.z);
            u_xlat89 = x_4510;
            let x_4512 : f32 = u_xlat20.w;
            let x_4513 : f32 = u_xlat89;
            let x_4515 : f32 = u_xlat88;
            u_xlat88 = ((x_4512 * x_4513) + x_4515);
            let x_4518 : vec4<f32> = u_xlat14;
            let x_4519 : vec2<f32> = vec2<f32>(x_4518.z, x_4518.w);
            let x_4521 : f32 = u_xlat11.z;
            txVec72 = vec3<f32>(x_4519.x, x_4519.y, x_4521);
            let x_4528 : vec3<f32> = txVec72;
            let x_4530 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4528.xy, x_4528.z);
            u_xlat89 = x_4530;
            let x_4531 : f32 = u_xlat87;
            let x_4532 : f32 = u_xlat89;
            let x_4534 : f32 = u_xlat88;
            u_xlat86 = ((x_4531 * x_4532) + x_4534);
          } else {
            let x_4537 : vec4<f32> = u_xlat11;
            let x_4540 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4543 : vec2<f32> = ((vec2<f32>(x_4537.x, x_4537.y) * vec2<f32>(x_4540.z, x_4540.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4544 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4543.x, x_4543.y, x_4544.z, x_4544.w);
            let x_4546 : vec4<f32> = u_xlat12;
            let x_4548 : vec2<f32> = floor(vec2<f32>(x_4546.x, x_4546.y));
            let x_4549 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4548.x, x_4548.y, x_4549.z, x_4549.w);
            let x_4551 : vec4<f32> = u_xlat11;
            let x_4554 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4557 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4551.x, x_4551.y) * vec2<f32>(x_4554.z, x_4554.w)) + -(vec2<f32>(x_4557.x, x_4557.y)));
            let x_4561 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4561.x, x_4561.x, x_4561.y, x_4561.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4564 : vec4<f32> = u_xlat13;
            let x_4566 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4564.x, x_4564.x, x_4564.z, x_4564.z) * vec4<f32>(x_4566.x, x_4566.x, x_4566.z, x_4566.z));
            let x_4569 : vec4<f32> = u_xlat14;
            let x_4571 : vec2<f32> = (vec2<f32>(x_4569.y, x_4569.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4572 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4572.x, x_4571.x, x_4572.z, x_4571.y);
            let x_4574 : vec4<f32> = u_xlat14;
            let x_4577 : vec2<f32> = u_xlat64;
            let x_4579 : vec2<f32> = ((vec2<f32>(x_4574.x, x_4574.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4577));
            let x_4580 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4579.x, x_4580.y, x_4579.y, x_4580.w);
            let x_4582 : vec2<f32> = u_xlat64;
            let x_4584 : vec2<f32> = (-(x_4582) + vec2<f32>(1.0f, 1.0f));
            let x_4585 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4584.x, x_4584.y, x_4585.z, x_4585.w);
            let x_4587 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_4587, vec2<f32>(0.0f, 0.0f));
            let x_4589 : vec2<f32> = u_xlat66;
            let x_4591 : vec2<f32> = u_xlat66;
            let x_4593 : vec4<f32> = u_xlat14;
            let x_4595 : vec2<f32> = ((-(x_4589) * x_4591) + vec2<f32>(x_4593.x, x_4593.y));
            let x_4596 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4595.x, x_4595.y, x_4596.z, x_4596.w);
            let x_4598 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_4598, vec2<f32>(0.0f, 0.0f));
            let x_4601 : vec2<f32> = u_xlat66;
            let x_4603 : vec2<f32> = u_xlat66;
            let x_4605 : vec4<f32> = u_xlat13;
            let x_4607 : vec2<f32> = ((-(x_4601) * x_4603) + vec2<f32>(x_4605.y, x_4605.w));
            let x_4608 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_4607.x, x_4608.y, x_4607.y);
            let x_4610 : vec4<f32> = u_xlat14;
            let x_4612 : vec2<f32> = (vec2<f32>(x_4610.x, x_4610.y) + vec2<f32>(2.0f, 2.0f));
            let x_4613 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4612.x, x_4612.y, x_4613.z, x_4613.w);
            let x_4615 : vec3<f32> = u_xlat39;
            let x_4617 : vec2<f32> = (vec2<f32>(x_4615.x, x_4615.z) + vec2<f32>(2.0f, 2.0f));
            let x_4618 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4618.x, x_4617.x, x_4618.z, x_4617.y);
            let x_4621 : f32 = u_xlat13.y;
            u_xlat16.z = (x_4621 * 0.08163200318813323975f);
            let x_4624 : vec4<f32> = u_xlat13;
            let x_4626 : vec3<f32> = (vec3<f32>(x_4624.z, x_4624.x, x_4624.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4627 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4626.x, x_4626.y, x_4626.z, x_4627.w);
            let x_4629 : vec4<f32> = u_xlat14;
            let x_4631 : vec2<f32> = (vec2<f32>(x_4629.x, x_4629.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4632 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4631.x, x_4631.y, x_4632.z, x_4632.w);
            let x_4635 : f32 = u_xlat17.y;
            u_xlat16.x = x_4635;
            let x_4637 : vec2<f32> = u_xlat64;
            let x_4640 : vec2<f32> = ((vec2<f32>(x_4637.x, x_4637.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4641 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4641.x, x_4640.x, x_4641.z, x_4640.y);
            let x_4643 : vec2<f32> = u_xlat64;
            let x_4646 : vec2<f32> = ((vec2<f32>(x_4643.x, x_4643.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4647 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4646.x, x_4647.y, x_4646.y, x_4647.w);
            let x_4650 : f32 = u_xlat13.x;
            u_xlat14.y = x_4650;
            let x_4653 : f32 = u_xlat15.y;
            u_xlat14.w = x_4653;
            let x_4655 : vec4<f32> = u_xlat14;
            let x_4656 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4655 + x_4656);
            let x_4658 : vec2<f32> = u_xlat64;
            let x_4661 : vec2<f32> = ((vec2<f32>(x_4658.y, x_4658.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4662 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4662.x, x_4661.x, x_4662.z, x_4661.y);
            let x_4664 : vec2<f32> = u_xlat64;
            let x_4667 : vec2<f32> = ((vec2<f32>(x_4664.y, x_4664.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4668 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4667.x, x_4668.y, x_4667.y, x_4668.w);
            let x_4671 : f32 = u_xlat13.y;
            u_xlat15.y = x_4671;
            let x_4673 : vec4<f32> = u_xlat15;
            let x_4674 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4673 + x_4674);
            let x_4676 : vec4<f32> = u_xlat14;
            let x_4677 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_4676 / x_4677);
            let x_4679 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4679 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4681 : vec4<f32> = u_xlat15;
            let x_4682 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_4681 / x_4682);
            let x_4684 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4684 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4686 : vec4<f32> = u_xlat14;
            let x_4689 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4686.w, x_4686.x, x_4686.y, x_4686.z) * vec4<f32>(x_4689.x, x_4689.x, x_4689.x, x_4689.x));
            let x_4692 : vec4<f32> = u_xlat15;
            let x_4695 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_4692.x, x_4692.w, x_4692.y, x_4692.z) * vec4<f32>(x_4695.y, x_4695.y, x_4695.y, x_4695.y));
            let x_4698 : vec4<f32> = u_xlat14;
            let x_4699 : vec3<f32> = vec3<f32>(x_4698.y, x_4698.z, x_4698.w);
            let x_4700 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4699.x, x_4700.y, x_4699.y, x_4699.z);
            let x_4703 : f32 = u_xlat15.x;
            u_xlat17.y = x_4703;
            let x_4705 : vec4<f32> = u_xlat12;
            let x_4708 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4711 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4705.x, x_4705.y, x_4705.x, x_4705.y) * vec4<f32>(x_4708.x, x_4708.y, x_4708.x, x_4708.y)) + vec4<f32>(x_4711.x, x_4711.y, x_4711.z, x_4711.y));
            let x_4714 : vec4<f32> = u_xlat12;
            let x_4717 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4720 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_4714.x, x_4714.y) * vec2<f32>(x_4717.x, x_4717.y)) + vec2<f32>(x_4720.w, x_4720.y));
            let x_4724 : f32 = u_xlat17.y;
            u_xlat14.y = x_4724;
            let x_4727 : f32 = u_xlat15.z;
            u_xlat17.y = x_4727;
            let x_4729 : vec4<f32> = u_xlat12;
            let x_4732 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4735 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_4729.x, x_4729.y, x_4729.x, x_4729.y) * vec4<f32>(x_4732.x, x_4732.y, x_4732.x, x_4732.y)) + vec4<f32>(x_4735.x, x_4735.y, x_4735.z, x_4735.y));
            let x_4738 : vec4<f32> = u_xlat12;
            let x_4741 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4744 : vec4<f32> = u_xlat17;
            let x_4746 : vec2<f32> = ((vec2<f32>(x_4738.x, x_4738.y) * vec2<f32>(x_4741.x, x_4741.y)) + vec2<f32>(x_4744.w, x_4744.y));
            let x_4747 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_4746.x, x_4746.y, x_4747.z, x_4747.w);
            let x_4750 : f32 = u_xlat17.y;
            u_xlat14.z = x_4750;
            let x_4752 : vec4<f32> = u_xlat12;
            let x_4755 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4758 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4752.x, x_4752.y, x_4752.x, x_4752.y) * vec4<f32>(x_4755.x, x_4755.y, x_4755.x, x_4755.y)) + vec4<f32>(x_4758.x, x_4758.y, x_4758.x, x_4758.z));
            let x_4762 : f32 = u_xlat15.w;
            u_xlat17.y = x_4762;
            let x_4765 : vec4<f32> = u_xlat12;
            let x_4768 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4771 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4765.x, x_4765.y, x_4765.x, x_4765.y) * vec4<f32>(x_4768.x, x_4768.y, x_4768.x, x_4768.y)) + vec4<f32>(x_4771.x, x_4771.y, x_4771.z, x_4771.y));
            let x_4775 : vec4<f32> = u_xlat12;
            let x_4778 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4781 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_4775.x, x_4775.y) * vec2<f32>(x_4778.x, x_4778.y)) + vec2<f32>(x_4781.w, x_4781.y));
            let x_4785 : f32 = u_xlat17.y;
            u_xlat14.w = x_4785;
            let x_4788 : vec4<f32> = u_xlat12;
            let x_4791 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4794 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4788.x, x_4788.y) * vec2<f32>(x_4791.x, x_4791.y)) + vec2<f32>(x_4794.x, x_4794.w));
            let x_4797 : vec4<f32> = u_xlat17;
            let x_4798 : vec3<f32> = vec3<f32>(x_4797.x, x_4797.z, x_4797.w);
            let x_4799 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4798.x, x_4799.y, x_4798.y, x_4798.z);
            let x_4801 : vec4<f32> = u_xlat12;
            let x_4804 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4807 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4801.x, x_4801.y, x_4801.x, x_4801.y) * vec4<f32>(x_4804.x, x_4804.y, x_4804.x, x_4804.y)) + vec4<f32>(x_4807.x, x_4807.y, x_4807.z, x_4807.y));
            let x_4811 : vec4<f32> = u_xlat12;
            let x_4814 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4817 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4811.x, x_4811.y) * vec2<f32>(x_4814.x, x_4814.y)) + vec2<f32>(x_4817.w, x_4817.y));
            let x_4821 : f32 = u_xlat14.x;
            u_xlat15.x = x_4821;
            let x_4823 : vec4<f32> = u_xlat12;
            let x_4826 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4829 : vec4<f32> = u_xlat15;
            let x_4831 : vec2<f32> = ((vec2<f32>(x_4823.x, x_4823.y) * vec2<f32>(x_4826.x, x_4826.y)) + vec2<f32>(x_4829.x, x_4829.y));
            let x_4832 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4831.x, x_4831.y, x_4832.z, x_4832.w);
            let x_4835 : vec4<f32> = u_xlat13;
            let x_4837 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4835.x, x_4835.x, x_4835.x, x_4835.x) * x_4837);
            let x_4840 : vec4<f32> = u_xlat13;
            let x_4842 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4840.y, x_4840.y, x_4840.y, x_4840.y) * x_4842);
            let x_4845 : vec4<f32> = u_xlat13;
            let x_4847 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4845.z, x_4845.z, x_4845.z, x_4845.z) * x_4847);
            let x_4849 : vec4<f32> = u_xlat13;
            let x_4851 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4849.w, x_4849.w, x_4849.w, x_4849.w) * x_4851);
            let x_4854 : vec4<f32> = u_xlat18;
            let x_4855 : vec2<f32> = vec2<f32>(x_4854.x, x_4854.y);
            let x_4857 : f32 = u_xlat11.z;
            txVec73 = vec3<f32>(x_4855.x, x_4855.y, x_4857);
            let x_4864 : vec3<f32> = txVec73;
            let x_4866 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4864.xy, x_4864.z);
            u_xlat87 = x_4866;
            let x_4868 : vec4<f32> = u_xlat18;
            let x_4869 : vec2<f32> = vec2<f32>(x_4868.z, x_4868.w);
            let x_4871 : f32 = u_xlat11.z;
            txVec74 = vec3<f32>(x_4869.x, x_4869.y, x_4871);
            let x_4878 : vec3<f32> = txVec74;
            let x_4880 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4878.xy, x_4878.z);
            u_xlat88 = x_4880;
            let x_4881 : f32 = u_xlat88;
            let x_4883 : f32 = u_xlat23.y;
            u_xlat88 = (x_4881 * x_4883);
            let x_4886 : f32 = u_xlat23.x;
            let x_4887 : f32 = u_xlat87;
            let x_4889 : f32 = u_xlat88;
            u_xlat87 = ((x_4886 * x_4887) + x_4889);
            let x_4892 : vec2<f32> = u_xlat64;
            let x_4894 : f32 = u_xlat11.z;
            txVec75 = vec3<f32>(x_4892.x, x_4892.y, x_4894);
            let x_4901 : vec3<f32> = txVec75;
            let x_4903 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4901.xy, x_4901.z);
            u_xlat88 = x_4903;
            let x_4905 : f32 = u_xlat23.z;
            let x_4906 : f32 = u_xlat88;
            let x_4908 : f32 = u_xlat87;
            u_xlat87 = ((x_4905 * x_4906) + x_4908);
            let x_4911 : vec4<f32> = u_xlat21;
            let x_4912 : vec2<f32> = vec2<f32>(x_4911.x, x_4911.y);
            let x_4914 : f32 = u_xlat11.z;
            txVec76 = vec3<f32>(x_4912.x, x_4912.y, x_4914);
            let x_4921 : vec3<f32> = txVec76;
            let x_4923 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4921.xy, x_4921.z);
            u_xlat88 = x_4923;
            let x_4925 : f32 = u_xlat23.w;
            let x_4926 : f32 = u_xlat88;
            let x_4928 : f32 = u_xlat87;
            u_xlat87 = ((x_4925 * x_4926) + x_4928);
            let x_4931 : vec4<f32> = u_xlat19;
            let x_4932 : vec2<f32> = vec2<f32>(x_4931.x, x_4931.y);
            let x_4934 : f32 = u_xlat11.z;
            txVec77 = vec3<f32>(x_4932.x, x_4932.y, x_4934);
            let x_4941 : vec3<f32> = txVec77;
            let x_4943 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4941.xy, x_4941.z);
            u_xlat88 = x_4943;
            let x_4945 : f32 = u_xlat24.x;
            let x_4946 : f32 = u_xlat88;
            let x_4948 : f32 = u_xlat87;
            u_xlat87 = ((x_4945 * x_4946) + x_4948);
            let x_4951 : vec4<f32> = u_xlat19;
            let x_4952 : vec2<f32> = vec2<f32>(x_4951.z, x_4951.w);
            let x_4954 : f32 = u_xlat11.z;
            txVec78 = vec3<f32>(x_4952.x, x_4952.y, x_4954);
            let x_4961 : vec3<f32> = txVec78;
            let x_4963 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4961.xy, x_4961.z);
            u_xlat88 = x_4963;
            let x_4965 : f32 = u_xlat24.y;
            let x_4966 : f32 = u_xlat88;
            let x_4968 : f32 = u_xlat87;
            u_xlat87 = ((x_4965 * x_4966) + x_4968);
            let x_4971 : vec4<f32> = u_xlat20;
            let x_4972 : vec2<f32> = vec2<f32>(x_4971.x, x_4971.y);
            let x_4974 : f32 = u_xlat11.z;
            txVec79 = vec3<f32>(x_4972.x, x_4972.y, x_4974);
            let x_4981 : vec3<f32> = txVec79;
            let x_4983 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4981.xy, x_4981.z);
            u_xlat88 = x_4983;
            let x_4985 : f32 = u_xlat24.z;
            let x_4986 : f32 = u_xlat88;
            let x_4988 : f32 = u_xlat87;
            u_xlat87 = ((x_4985 * x_4986) + x_4988);
            let x_4991 : vec4<f32> = u_xlat21;
            let x_4992 : vec2<f32> = vec2<f32>(x_4991.z, x_4991.w);
            let x_4994 : f32 = u_xlat11.z;
            txVec80 = vec3<f32>(x_4992.x, x_4992.y, x_4994);
            let x_5001 : vec3<f32> = txVec80;
            let x_5003 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5001.xy, x_5001.z);
            u_xlat88 = x_5003;
            let x_5005 : f32 = u_xlat24.w;
            let x_5006 : f32 = u_xlat88;
            let x_5008 : f32 = u_xlat87;
            u_xlat87 = ((x_5005 * x_5006) + x_5008);
            let x_5011 : vec4<f32> = u_xlat22;
            let x_5012 : vec2<f32> = vec2<f32>(x_5011.x, x_5011.y);
            let x_5014 : f32 = u_xlat11.z;
            txVec81 = vec3<f32>(x_5012.x, x_5012.y, x_5014);
            let x_5021 : vec3<f32> = txVec81;
            let x_5023 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5021.xy, x_5021.z);
            u_xlat88 = x_5023;
            let x_5025 : f32 = u_xlat25.x;
            let x_5026 : f32 = u_xlat88;
            let x_5028 : f32 = u_xlat87;
            u_xlat87 = ((x_5025 * x_5026) + x_5028);
            let x_5031 : vec4<f32> = u_xlat22;
            let x_5032 : vec2<f32> = vec2<f32>(x_5031.z, x_5031.w);
            let x_5034 : f32 = u_xlat11.z;
            txVec82 = vec3<f32>(x_5032.x, x_5032.y, x_5034);
            let x_5041 : vec3<f32> = txVec82;
            let x_5043 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5041.xy, x_5041.z);
            u_xlat88 = x_5043;
            let x_5045 : f32 = u_xlat25.y;
            let x_5046 : f32 = u_xlat88;
            let x_5048 : f32 = u_xlat87;
            u_xlat87 = ((x_5045 * x_5046) + x_5048);
            let x_5051 : vec2<f32> = u_xlat40;
            let x_5053 : f32 = u_xlat11.z;
            txVec83 = vec3<f32>(x_5051.x, x_5051.y, x_5053);
            let x_5060 : vec3<f32> = txVec83;
            let x_5062 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5060.xy, x_5060.z);
            u_xlat88 = x_5062;
            let x_5064 : f32 = u_xlat25.z;
            let x_5065 : f32 = u_xlat88;
            let x_5067 : f32 = u_xlat87;
            u_xlat87 = ((x_5064 * x_5065) + x_5067);
            let x_5070 : vec2<f32> = u_xlat72;
            let x_5072 : f32 = u_xlat11.z;
            txVec84 = vec3<f32>(x_5070.x, x_5070.y, x_5072);
            let x_5079 : vec3<f32> = txVec84;
            let x_5081 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5079.xy, x_5079.z);
            u_xlat88 = x_5081;
            let x_5083 : f32 = u_xlat25.w;
            let x_5084 : f32 = u_xlat88;
            let x_5086 : f32 = u_xlat87;
            u_xlat87 = ((x_5083 * x_5084) + x_5086);
            let x_5089 : vec4<f32> = u_xlat17;
            let x_5090 : vec2<f32> = vec2<f32>(x_5089.x, x_5089.y);
            let x_5092 : f32 = u_xlat11.z;
            txVec85 = vec3<f32>(x_5090.x, x_5090.y, x_5092);
            let x_5099 : vec3<f32> = txVec85;
            let x_5101 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5099.xy, x_5099.z);
            u_xlat88 = x_5101;
            let x_5103 : f32 = u_xlat13.x;
            let x_5104 : f32 = u_xlat88;
            let x_5106 : f32 = u_xlat87;
            u_xlat87 = ((x_5103 * x_5104) + x_5106);
            let x_5109 : vec4<f32> = u_xlat17;
            let x_5110 : vec2<f32> = vec2<f32>(x_5109.z, x_5109.w);
            let x_5112 : f32 = u_xlat11.z;
            txVec86 = vec3<f32>(x_5110.x, x_5110.y, x_5112);
            let x_5119 : vec3<f32> = txVec86;
            let x_5121 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5119.xy, x_5119.z);
            u_xlat88 = x_5121;
            let x_5123 : f32 = u_xlat13.y;
            let x_5124 : f32 = u_xlat88;
            let x_5126 : f32 = u_xlat87;
            u_xlat87 = ((x_5123 * x_5124) + x_5126);
            let x_5129 : vec2<f32> = u_xlat67;
            let x_5131 : f32 = u_xlat11.z;
            txVec87 = vec3<f32>(x_5129.x, x_5129.y, x_5131);
            let x_5138 : vec3<f32> = txVec87;
            let x_5140 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5138.xy, x_5138.z);
            u_xlat88 = x_5140;
            let x_5142 : f32 = u_xlat13.z;
            let x_5143 : f32 = u_xlat88;
            let x_5145 : f32 = u_xlat87;
            u_xlat87 = ((x_5142 * x_5143) + x_5145);
            let x_5148 : vec4<f32> = u_xlat12;
            let x_5149 : vec2<f32> = vec2<f32>(x_5148.x, x_5148.y);
            let x_5151 : f32 = u_xlat11.z;
            txVec88 = vec3<f32>(x_5149.x, x_5149.y, x_5151);
            let x_5158 : vec3<f32> = txVec88;
            let x_5160 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5158.xy, x_5158.z);
            u_xlat88 = x_5160;
            let x_5162 : f32 = u_xlat13.w;
            let x_5163 : f32 = u_xlat88;
            let x_5165 : f32 = u_xlat87;
            u_xlat86 = ((x_5162 * x_5163) + x_5165);
          }
        }
      } else {
        let x_5169 : vec4<f32> = u_xlat11;
        let x_5170 : vec2<f32> = vec2<f32>(x_5169.x, x_5169.y);
        let x_5172 : f32 = u_xlat11.z;
        txVec89 = vec3<f32>(x_5170.x, x_5170.y, x_5172);
        let x_5179 : vec3<f32> = txVec89;
        let x_5181 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5179.xy, x_5179.z);
        u_xlat86 = x_5181;
      }
      let x_5182 : i32 = u_xlati58;
      let x_5184 : f32 = x_246.x_AdditionalShadowParams[x_5182].x;
      u_xlat87 = (1.0f + -(x_5184));
      let x_5187 : f32 = u_xlat86;
      let x_5188 : i32 = u_xlati58;
      let x_5190 : f32 = x_246.x_AdditionalShadowParams[x_5188].x;
      let x_5192 : f32 = u_xlat87;
      u_xlat86 = ((x_5187 * x_5190) + x_5192);
      let x_5195 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_5195);
      let x_5199 : f32 = u_xlat11.z;
      u_xlatb88 = (x_5199 >= 1.0f);
      let x_5201 : bool = u_xlatb87;
      let x_5202 : bool = u_xlatb88;
      u_xlatb87 = (x_5201 | x_5202);
      let x_5204 : bool = u_xlatb87;
      let x_5205 : f32 = u_xlat86;
      u_xlat86 = select(x_5205, 1.0f, x_5204);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_5208 : f32 = u_xlat86;
    u_xlat87 = (-(x_5208) + 1.0f);
    let x_5212 : f32 = u_xlat2.x;
    let x_5213 : f32 = u_xlat87;
    let x_5215 : f32 = u_xlat86;
    u_xlat86 = ((x_5212 * x_5213) + x_5215);
    let x_5218 : i32 = u_xlati58;
    u_xlati87 = (1i << bitcast<u32>((x_5218 & 31i)));
    let x_5222 : i32 = u_xlati87;
    let x_5225 : f32 = x_3286.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_5222) & bitcast<u32>(x_5225)));
    let x_5229 : i32 = u_xlati87;
    if ((x_5229 != 0i)) {
      let x_5233 : i32 = u_xlati58;
      let x_5235 : f32 = x_3286.x_AdditionalLightsLightTypes[x_5233].el;
      u_xlati87 = i32(x_5235);
      let x_5238 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_5238 != 0i));
      let x_5242 : i32 = u_xlati58;
      u_xlati11 = (x_5242 << bitcast<u32>(2i));
      let x_5244 : i32 = u_xlati88;
      if ((x_5244 != 0i)) {
        let x_5249 : vec3<f32> = vs_INTERP8;
        let x_5251 : i32 = u_xlati11;
        let x_5254 : i32 = u_xlati11;
        let x_5258 : vec4<f32> = x_3286.x_AdditionalLightsWorldToLights[((x_5251 + 1i) / 4i)][((x_5254 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_5249.y, x_5249.y, x_5249.y) * vec3<f32>(x_5258.x, x_5258.y, x_5258.w));
        let x_5261 : i32 = u_xlati11;
        let x_5263 : i32 = u_xlati11;
        let x_5266 : vec4<f32> = x_3286.x_AdditionalLightsWorldToLights[(x_5261 / 4i)][(x_5263 % 4i)];
        let x_5268 : vec3<f32> = vs_INTERP8;
        let x_5271 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_5266.x, x_5266.y, x_5266.w) * vec3<f32>(x_5268.x, x_5268.x, x_5268.x)) + x_5271);
        let x_5273 : i32 = u_xlati11;
        let x_5276 : i32 = u_xlati11;
        let x_5280 : vec4<f32> = x_3286.x_AdditionalLightsWorldToLights[((x_5273 + 2i) / 4i)][((x_5276 + 2i) % 4i)];
        let x_5282 : vec3<f32> = vs_INTERP8;
        let x_5285 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_5280.x, x_5280.y, x_5280.w) * vec3<f32>(x_5282.z, x_5282.z, x_5282.z)) + x_5285);
        let x_5287 : vec3<f32> = u_xlat37;
        let x_5288 : i32 = u_xlati11;
        let x_5291 : i32 = u_xlati11;
        let x_5295 : vec4<f32> = x_3286.x_AdditionalLightsWorldToLights[((x_5288 + 3i) / 4i)][((x_5291 + 3i) % 4i)];
        u_xlat37 = (x_5287 + vec3<f32>(x_5295.x, x_5295.y, x_5295.w));
        let x_5298 : vec3<f32> = u_xlat37;
        let x_5300 : vec3<f32> = u_xlat37;
        let x_5302 : vec2<f32> = (vec2<f32>(x_5298.x, x_5298.y) / vec2<f32>(x_5300.z, x_5300.z));
        let x_5303 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5302.x, x_5302.y, x_5303.z);
        let x_5305 : vec3<f32> = u_xlat37;
        let x_5308 : vec2<f32> = ((vec2<f32>(x_5305.x, x_5305.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_5309 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5308.x, x_5308.y, x_5309.z);
        let x_5311 : vec3<f32> = u_xlat37;
        let x_5315 : vec2<f32> = clamp(vec2<f32>(x_5311.x, x_5311.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_5316 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5315.x, x_5315.y, x_5316.z);
        let x_5318 : i32 = u_xlati58;
        let x_5320 : vec4<f32> = x_3286.x_AdditionalLightsCookieAtlasUVRects[x_5318];
        let x_5322 : vec3<f32> = u_xlat37;
        let x_5325 : i32 = u_xlati58;
        let x_5327 : vec4<f32> = x_3286.x_AdditionalLightsCookieAtlasUVRects[x_5325];
        let x_5329 : vec2<f32> = ((vec2<f32>(x_5320.x, x_5320.y) * vec2<f32>(x_5322.x, x_5322.y)) + vec2<f32>(x_5327.z, x_5327.w));
        let x_5330 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5329.x, x_5329.y, x_5330.z);
      } else {
        let x_5333 : i32 = u_xlati87;
        u_xlatb87 = (x_5333 == 1i);
        let x_5335 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_5335);
        let x_5337 : i32 = u_xlati87;
        if ((x_5337 != 0i)) {
          let x_5341 : vec3<f32> = vs_INTERP8;
          let x_5343 : i32 = u_xlati11;
          let x_5346 : i32 = u_xlati11;
          let x_5350 : vec4<f32> = x_3286.x_AdditionalLightsWorldToLights[((x_5343 + 1i) / 4i)][((x_5346 + 1i) % 4i)];
          let x_5352 : vec2<f32> = (vec2<f32>(x_5341.y, x_5341.y) * vec2<f32>(x_5350.x, x_5350.y));
          let x_5353 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5352.x, x_5352.y, x_5353.z, x_5353.w);
          let x_5355 : i32 = u_xlati11;
          let x_5357 : i32 = u_xlati11;
          let x_5360 : vec4<f32> = x_3286.x_AdditionalLightsWorldToLights[(x_5355 / 4i)][(x_5357 % 4i)];
          let x_5362 : vec3<f32> = vs_INTERP8;
          let x_5365 : vec4<f32> = u_xlat12;
          let x_5367 : vec2<f32> = ((vec2<f32>(x_5360.x, x_5360.y) * vec2<f32>(x_5362.x, x_5362.x)) + vec2<f32>(x_5365.x, x_5365.y));
          let x_5368 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5367.x, x_5367.y, x_5368.z, x_5368.w);
          let x_5370 : i32 = u_xlati11;
          let x_5373 : i32 = u_xlati11;
          let x_5377 : vec4<f32> = x_3286.x_AdditionalLightsWorldToLights[((x_5370 + 2i) / 4i)][((x_5373 + 2i) % 4i)];
          let x_5379 : vec3<f32> = vs_INTERP8;
          let x_5382 : vec4<f32> = u_xlat12;
          let x_5384 : vec2<f32> = ((vec2<f32>(x_5377.x, x_5377.y) * vec2<f32>(x_5379.z, x_5379.z)) + vec2<f32>(x_5382.x, x_5382.y));
          let x_5385 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5384.x, x_5384.y, x_5385.z, x_5385.w);
          let x_5387 : vec4<f32> = u_xlat12;
          let x_5389 : i32 = u_xlati11;
          let x_5392 : i32 = u_xlati11;
          let x_5396 : vec4<f32> = x_3286.x_AdditionalLightsWorldToLights[((x_5389 + 3i) / 4i)][((x_5392 + 3i) % 4i)];
          let x_5398 : vec2<f32> = (vec2<f32>(x_5387.x, x_5387.y) + vec2<f32>(x_5396.x, x_5396.y));
          let x_5399 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5398.x, x_5398.y, x_5399.z, x_5399.w);
          let x_5401 : vec4<f32> = u_xlat12;
          let x_5404 : vec2<f32> = ((vec2<f32>(x_5401.x, x_5401.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5405 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5404.x, x_5404.y, x_5405.z, x_5405.w);
          let x_5407 : vec4<f32> = u_xlat12;
          let x_5409 : vec2<f32> = fract(vec2<f32>(x_5407.x, x_5407.y));
          let x_5410 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5409.x, x_5409.y, x_5410.z, x_5410.w);
          let x_5412 : i32 = u_xlati58;
          let x_5414 : vec4<f32> = x_3286.x_AdditionalLightsCookieAtlasUVRects[x_5412];
          let x_5416 : vec4<f32> = u_xlat12;
          let x_5419 : i32 = u_xlati58;
          let x_5421 : vec4<f32> = x_3286.x_AdditionalLightsCookieAtlasUVRects[x_5419];
          let x_5423 : vec2<f32> = ((vec2<f32>(x_5414.x, x_5414.y) * vec2<f32>(x_5416.x, x_5416.y)) + vec2<f32>(x_5421.z, x_5421.w));
          let x_5424 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5423.x, x_5423.y, x_5424.z);
        } else {
          let x_5427 : vec3<f32> = vs_INTERP8;
          let x_5429 : i32 = u_xlati11;
          let x_5432 : i32 = u_xlati11;
          let x_5436 : vec4<f32> = x_3286.x_AdditionalLightsWorldToLights[((x_5429 + 1i) / 4i)][((x_5432 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_5427.y, x_5427.y, x_5427.y, x_5427.y) * x_5436);
          let x_5438 : i32 = u_xlati11;
          let x_5440 : i32 = u_xlati11;
          let x_5443 : vec4<f32> = x_3286.x_AdditionalLightsWorldToLights[(x_5438 / 4i)][(x_5440 % 4i)];
          let x_5444 : vec3<f32> = vs_INTERP8;
          let x_5447 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5443 * vec4<f32>(x_5444.x, x_5444.x, x_5444.x, x_5444.x)) + x_5447);
          let x_5449 : i32 = u_xlati11;
          let x_5452 : i32 = u_xlati11;
          let x_5456 : vec4<f32> = x_3286.x_AdditionalLightsWorldToLights[((x_5449 + 2i) / 4i)][((x_5452 + 2i) % 4i)];
          let x_5457 : vec3<f32> = vs_INTERP8;
          let x_5460 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5456 * vec4<f32>(x_5457.z, x_5457.z, x_5457.z, x_5457.z)) + x_5460);
          let x_5462 : vec4<f32> = u_xlat12;
          let x_5463 : i32 = u_xlati11;
          let x_5466 : i32 = u_xlati11;
          let x_5470 : vec4<f32> = x_3286.x_AdditionalLightsWorldToLights[((x_5463 + 3i) / 4i)][((x_5466 + 3i) % 4i)];
          u_xlat12 = (x_5462 + x_5470);
          let x_5472 : vec4<f32> = u_xlat12;
          let x_5474 : vec4<f32> = u_xlat12;
          let x_5476 : vec3<f32> = (vec3<f32>(x_5472.x, x_5472.y, x_5472.z) / vec3<f32>(x_5474.w, x_5474.w, x_5474.w));
          let x_5477 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5476.x, x_5476.y, x_5476.z, x_5477.w);
          let x_5479 : vec4<f32> = u_xlat12;
          let x_5481 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_5479.x, x_5479.y, x_5479.z), vec3<f32>(x_5481.x, x_5481.y, x_5481.z));
          let x_5484 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_5484);
          let x_5486 : f32 = u_xlat87;
          let x_5488 : vec4<f32> = u_xlat12;
          let x_5490 : vec3<f32> = (vec3<f32>(x_5486, x_5486, x_5486) * vec3<f32>(x_5488.x, x_5488.y, x_5488.z));
          let x_5491 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5490.x, x_5490.y, x_5490.z, x_5491.w);
          let x_5493 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_5493.x, x_5493.y, x_5493.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_5498 : f32 = u_xlat87;
          u_xlat87 = max(x_5498, 0.00000099999999747524f);
          let x_5501 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_5501);
          let x_5503 : f32 = u_xlat87;
          let x_5505 : vec4<f32> = u_xlat12;
          let x_5507 : vec3<f32> = (vec3<f32>(x_5503, x_5503, x_5503) * vec3<f32>(x_5505.z, x_5505.x, x_5505.y));
          let x_5508 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_5507.x, x_5507.y, x_5507.z, x_5508.w);
          let x_5511 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_5511);
          let x_5515 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_5515, 0.0f, 1.0f);
          let x_5518 : vec4<f32> = u_xlat13;
          let x_5520 : vec4<bool> = (vec4<f32>(x_5518.y, x_5518.y, x_5518.y, x_5518.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_5521 : vec2<bool> = vec2<bool>(x_5520.x, x_5520.w);
          let x_5522 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_5521.x, x_5522.y, x_5522.z, x_5521.y);
          let x_5525 : bool = u_xlatb11.x;
          if (x_5525) {
            let x_5530 : f32 = u_xlat13.x;
            x_5526 = x_5530;
          } else {
            let x_5533 : f32 = u_xlat13.x;
            x_5526 = -(x_5533);
          }
          let x_5535 : f32 = x_5526;
          u_xlat11.x = x_5535;
          let x_5538 : bool = u_xlatb11.w;
          if (x_5538) {
            let x_5543 : f32 = u_xlat13.x;
            x_5539 = x_5543;
          } else {
            let x_5546 : f32 = u_xlat13.x;
            x_5539 = -(x_5546);
          }
          let x_5548 : f32 = x_5539;
          u_xlat11.w = x_5548;
          let x_5550 : vec4<f32> = u_xlat12;
          let x_5552 : f32 = u_xlat87;
          let x_5555 : vec4<f32> = u_xlat11;
          let x_5557 : vec2<f32> = ((vec2<f32>(x_5550.x, x_5550.y) * vec2<f32>(x_5552, x_5552)) + vec2<f32>(x_5555.x, x_5555.w));
          let x_5558 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5557.x, x_5558.y, x_5558.z, x_5557.y);
          let x_5560 : vec4<f32> = u_xlat11;
          let x_5563 : vec2<f32> = ((vec2<f32>(x_5560.x, x_5560.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5564 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5563.x, x_5564.y, x_5564.z, x_5563.y);
          let x_5566 : vec4<f32> = u_xlat11;
          let x_5570 : vec2<f32> = clamp(vec2<f32>(x_5566.x, x_5566.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_5571 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5570.x, x_5571.y, x_5571.z, x_5570.y);
          let x_5573 : i32 = u_xlati58;
          let x_5575 : vec4<f32> = x_3286.x_AdditionalLightsCookieAtlasUVRects[x_5573];
          let x_5577 : vec4<f32> = u_xlat11;
          let x_5580 : i32 = u_xlati58;
          let x_5582 : vec4<f32> = x_3286.x_AdditionalLightsCookieAtlasUVRects[x_5580];
          let x_5584 : vec2<f32> = ((vec2<f32>(x_5575.x, x_5575.y) * vec2<f32>(x_5577.x, x_5577.w)) + vec2<f32>(x_5582.z, x_5582.w));
          let x_5585 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5584.x, x_5584.y, x_5585.z);
        }
      }
      let x_5592 : vec3<f32> = u_xlat37;
      let x_5594 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_5592.x, x_5592.y), 0.0f);
      u_xlat11 = x_5594;
      let x_5596 : bool = u_xlatb3.w;
      if (x_5596) {
        let x_5601 : f32 = u_xlat11.w;
        x_5597 = x_5601;
      } else {
        let x_5604 : f32 = u_xlat11.x;
        x_5597 = x_5604;
      }
      let x_5605 : f32 = x_5597;
      u_xlat87 = x_5605;
      let x_5607 : bool = u_xlatb3.x;
      if (x_5607) {
        let x_5611 : vec4<f32> = u_xlat11;
        x_5608 = vec3<f32>(x_5611.x, x_5611.y, x_5611.z);
      } else {
        let x_5614 : f32 = u_xlat87;
        x_5608 = vec3<f32>(x_5614, x_5614, x_5614);
      }
      let x_5616 : vec3<f32> = x_5608;
      let x_5617 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_5616.x, x_5616.y, x_5616.z, x_5617.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_5623 : vec4<f32> = u_xlat11;
    let x_5625 : i32 = u_xlati58;
    let x_5627 : vec4<f32> = x_3797.x_AdditionalLightsColor[x_5625];
    let x_5629 : vec3<f32> = (vec3<f32>(x_5623.x, x_5623.y, x_5623.z) * vec3<f32>(x_5627.x, x_5627.y, x_5627.z));
    let x_5630 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5629.x, x_5629.y, x_5629.z, x_5630.w);
    let x_5632 : f32 = u_xlat84;
    let x_5633 : f32 = u_xlat86;
    u_xlat58.x = (x_5632 * x_5633);
    let x_5636 : vec3<f32> = u_xlat26;
    let x_5637 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(x_5636, vec3<f32>(x_5637.x, x_5637.y, x_5637.z));
    let x_5640 : f32 = u_xlat84;
    u_xlat84 = clamp(x_5640, 0.0f, 1.0f);
    let x_5642 : f32 = u_xlat84;
    let x_5644 : f32 = u_xlat58.x;
    u_xlat58.x = (x_5642 * x_5644);
    let x_5647 : vec2<f32> = u_xlat58;
    let x_5649 : vec4<f32> = u_xlat11;
    let x_5651 : vec3<f32> = (vec3<f32>(x_5647.x, x_5647.x, x_5647.x) * vec3<f32>(x_5649.x, x_5649.y, x_5649.z));
    let x_5652 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5651.x, x_5651.y, x_5651.z, x_5652.w);
    let x_5654 : vec4<f32> = u_xlat9;
    let x_5656 : f32 = u_xlat85;
    let x_5659 : vec4<f32> = u_xlat7;
    let x_5661 : vec3<f32> = ((vec3<f32>(x_5654.x, x_5654.y, x_5654.z) * vec3<f32>(x_5656, x_5656, x_5656)) + vec3<f32>(x_5659.x, x_5659.y, x_5659.z));
    let x_5662 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5661.x, x_5661.y, x_5661.z, x_5662.w);
    let x_5664 : vec4<f32> = u_xlat9;
    let x_5666 : vec4<f32> = u_xlat9;
    u_xlat58.x = dot(vec3<f32>(x_5664.x, x_5664.y, x_5664.z), vec3<f32>(x_5666.x, x_5666.y, x_5666.z));
    let x_5671 : f32 = u_xlat58.x;
    u_xlat58.x = max(x_5671, 1.17549435e-38f);
    let x_5675 : f32 = u_xlat58.x;
    u_xlat58.x = inverseSqrt(x_5675);
    let x_5678 : vec2<f32> = u_xlat58;
    let x_5680 : vec4<f32> = u_xlat9;
    let x_5682 : vec3<f32> = (vec3<f32>(x_5678.x, x_5678.x, x_5678.x) * vec3<f32>(x_5680.x, x_5680.y, x_5680.z));
    let x_5683 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5682.x, x_5682.y, x_5682.z, x_5683.w);
    let x_5685 : vec3<f32> = u_xlat26;
    let x_5686 : vec4<f32> = u_xlat9;
    u_xlat58.x = dot(x_5685, vec3<f32>(x_5686.x, x_5686.y, x_5686.z));
    let x_5691 : f32 = u_xlat58.x;
    u_xlat58.x = clamp(x_5691, 0.0f, 1.0f);
    let x_5694 : vec4<f32> = u_xlat10;
    let x_5696 : vec4<f32> = u_xlat9;
    u_xlat58.y = dot(vec3<f32>(x_5694.x, x_5694.y, x_5694.z), vec3<f32>(x_5696.x, x_5696.y, x_5696.z));
    let x_5701 : f32 = u_xlat58.y;
    u_xlat58.y = clamp(x_5701, 0.0f, 1.0f);
    let x_5704 : vec2<f32> = u_xlat58;
    let x_5705 : vec2<f32> = u_xlat58;
    u_xlat58 = (x_5704 * x_5705);
    let x_5708 : f32 = u_xlat58.x;
    let x_5710 : f32 = u_xlat29.x;
    u_xlat58.x = ((x_5708 * x_5710) + 1.00001001358032226562f);
    let x_5715 : f32 = u_xlat58.x;
    let x_5717 : f32 = u_xlat58.x;
    u_xlat58.x = (x_5715 * x_5717);
    let x_5721 : f32 = u_xlat58.y;
    u_xlat84 = max(x_5721, 0.10000000149011611938f);
    let x_5723 : f32 = u_xlat84;
    let x_5725 : f32 = u_xlat58.x;
    u_xlat58.x = (x_5723 * x_5725);
    let x_5729 : f32 = u_xlat6.x;
    let x_5731 : f32 = u_xlat58.x;
    u_xlat58.x = (x_5729 * x_5731);
    let x_5734 : f32 = u_xlat82;
    let x_5736 : f32 = u_xlat58.x;
    u_xlat58.x = (x_5734 / x_5736);
    let x_5739 : vec2<f32> = u_xlat58;
    let x_5742 : vec3<f32> = u_xlat5;
    let x_5743 : vec3<f32> = ((vec3<f32>(x_5739.x, x_5739.x, x_5739.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5742);
    let x_5744 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5743.x, x_5743.y, x_5743.z, x_5744.w);
    let x_5746 : vec4<f32> = u_xlat9;
    let x_5748 : vec4<f32> = u_xlat11;
    let x_5751 : vec4<f32> = u_xlat8;
    let x_5753 : vec3<f32> = ((vec3<f32>(x_5746.x, x_5746.y, x_5746.z) * vec3<f32>(x_5748.x, x_5748.y, x_5748.z)) + vec3<f32>(x_5751.x, x_5751.y, x_5751.z));
    let x_5754 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5753.x, x_5753.y, x_5753.z, x_5754.w);

    continuing {
      let x_5756 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5756 + bitcast<u32>(1i));
    }
  }
  let x_5758 : vec4<f32> = u_xlat4;
  let x_5760 : vec3<f32> = u_xlat32;
  let x_5763 : vec3<f32> = u_xlat28;
  u_xlat0 = ((vec3<f32>(x_5758.x, x_5758.y, x_5758.z) * vec3<f32>(x_5760.x, x_5760.x, x_5760.x)) + x_5763);
  let x_5765 : vec4<f32> = u_xlat8;
  let x_5767 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_5765.x, x_5765.y, x_5765.z) + x_5767);
  let x_5771 : vec4<f32> = vs_INTERP6;
  let x_5773 : vec3<f32> = u_xlat1;
  let x_5775 : vec3<f32> = u_xlat0;
  let x_5776 : vec3<f32> = ((vec3<f32>(x_5771.w, x_5771.w, x_5771.w) * x_5773) + x_5775);
  let x_5777 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5776.x, x_5776.y, x_5776.z, x_5777.w);
  let x_5779 : bool = u_xlatb55;
  let x_5780 : f32 = u_xlat79;
  SV_Target0.w = select(1.0f, x_5780, x_5779);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_INTERP9_param : vec3<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(2) vs_INTERP5_param : vec4<f32>, @location(3) vs_INTERP6_param : vec4<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP0 = vs_INTERP0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


