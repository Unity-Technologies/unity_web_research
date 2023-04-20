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

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_128 : PGlobals;

var<private> u_xlat5 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_138 : UnityPerMaterial;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_D9BFD5F1 : sampler;

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

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlat52 : f32;

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

@group(1) @binding(4) var<uniform> x_3308 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu58 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati58 : i32;

@group(1) @binding(1) var<uniform> x_3821 : AdditionalLights;

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
  var x_1899 : f32;
  var x_1911 : f32;
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
  var x_3254 : f32;
  var x_3390 : f32;
  var x_3401 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3957 : f32;
  var x_3967 : f32;
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
  var x_5550 : f32;
  var x_5563 : f32;
  var x_5621 : f32;
  var x_5632 : vec3<f32>;
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
  let x_1874 : vec3<f32> = (x_1871 * vec3<f32>(x_1872.x, x_1872.x, x_1872.x));
  let x_1875 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1874.x, x_1874.y, x_1874.z, x_1875.w);
  let x_1878 : f32 = x_128.unity_OrthoParams.w;
  u_xlatb26.x = (x_1878 == 0.0f);
  let x_1881 : vec3<f32> = vs_INTERP8;
  let x_1885 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  u_xlat32 = (-(x_1881) + x_1885);
  let x_1888 : vec3<f32> = u_xlat32;
  let x_1889 : vec3<f32> = u_xlat32;
  u_xlat52 = dot(x_1888, x_1889);
  let x_1891 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_1891);
  let x_1893 : f32 = u_xlat52;
  let x_1895 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1893, x_1893, x_1893) * x_1895);
  let x_1898 : bool = u_xlatb26.x;
  if (x_1898) {
    let x_1903 : f32 = u_xlat32.x;
    x_1899 = x_1903;
  } else {
    let x_1906 : f32 = x_128.unity_MatrixV[0i].z;
    x_1899 = x_1906;
  }
  let x_1907 : f32 = x_1899;
  u_xlat7.x = x_1907;
  let x_1910 : bool = u_xlatb26.x;
  if (x_1910) {
    let x_1915 : f32 = u_xlat32.y;
    x_1911 = x_1915;
  } else {
    let x_1918 : f32 = x_128.unity_MatrixV[1i].z;
    x_1911 = x_1918;
  }
  let x_1919 : f32 = x_1911;
  u_xlat7.y = x_1919;
  let x_1922 : bool = u_xlatb26.x;
  if (x_1922) {
    let x_1927 : f32 = u_xlat32.z;
    x_1923 = x_1927;
  } else {
    let x_1930 : f32 = x_128.unity_MatrixV[2i].z;
    x_1923 = x_1930;
  }
  let x_1931 : f32 = x_1923;
  u_xlat7.z = x_1931;
  u_xlat4.w = 1.0f;
  let x_1936 : vec4<f32> = x_48.unity_SHAr;
  let x_1937 : vec4<f32> = u_xlat4;
  u_xlat8.x = dot(x_1936, x_1937);
  let x_1942 : vec4<f32> = x_48.unity_SHAg;
  let x_1943 : vec4<f32> = u_xlat4;
  u_xlat8.y = dot(x_1942, x_1943);
  let x_1948 : vec4<f32> = x_48.unity_SHAb;
  let x_1949 : vec4<f32> = u_xlat4;
  u_xlat8.z = dot(x_1948, x_1949);
  let x_1952 : vec4<f32> = u_xlat4;
  let x_1954 : vec4<f32> = u_xlat4;
  u_xlat9 = (vec4<f32>(x_1952.y, x_1952.z, x_1952.z, x_1952.x) * vec4<f32>(x_1954.x, x_1954.y, x_1954.z, x_1954.z));
  let x_1959 : vec4<f32> = x_48.unity_SHBr;
  let x_1960 : vec4<f32> = u_xlat9;
  u_xlat10.x = dot(x_1959, x_1960);
  let x_1965 : vec4<f32> = x_48.unity_SHBg;
  let x_1966 : vec4<f32> = u_xlat9;
  u_xlat10.y = dot(x_1965, x_1966);
  let x_1971 : vec4<f32> = x_48.unity_SHBb;
  let x_1972 : vec4<f32> = u_xlat9;
  u_xlat10.z = dot(x_1971, x_1972);
  let x_1976 : f32 = u_xlat4.y;
  let x_1978 : f32 = u_xlat4.y;
  u_xlat26.x = (x_1976 * x_1978);
  let x_1982 : f32 = u_xlat4.x;
  let x_1984 : f32 = u_xlat4.x;
  let x_1987 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_1982 * x_1984) + -(x_1987));
  let x_1993 : vec4<f32> = x_48.unity_SHC;
  let x_1995 : vec3<f32> = u_xlat26;
  let x_1998 : vec4<f32> = u_xlat10;
  u_xlat26 = ((vec3<f32>(x_1993.x, x_1993.y, x_1993.z) * vec3<f32>(x_1995.x, x_1995.x, x_1995.x)) + vec3<f32>(x_1998.x, x_1998.y, x_1998.z));
  let x_2001 : vec3<f32> = u_xlat26;
  let x_2002 : vec4<f32> = u_xlat8;
  u_xlat26 = (x_2001 + vec3<f32>(x_2002.x, x_2002.y, x_2002.z));
  let x_2005 : vec3<f32> = u_xlat26;
  u_xlat26 = max(x_2005, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_2008 : f32 = u_xlat6.x;
  u_xlat6.x = x_2008;
  let x_2011 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_2011, 0.0f, 1.0f);
  let x_2014 : f32 = u_xlat79;
  u_xlat79 = min(x_2014, 1.0f);
  let x_2016 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_2016 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_2021 : f32 = u_xlat6.x;
  u_xlat29.x = (-(x_2021) + 1.0f);
  let x_2026 : f32 = u_xlat29.x;
  let x_2028 : f32 = u_xlat29.x;
  u_xlat81 = (x_2026 * x_2028);
  let x_2030 : f32 = u_xlat81;
  u_xlat81 = max(x_2030, 0.0078125f);
  let x_2034 : f32 = u_xlat81;
  let x_2035 : f32 = u_xlat81;
  u_xlat82 = (x_2034 * x_2035);
  let x_2038 : f32 = u_xlat6.x;
  u_xlat83 = (x_2038 + 0.04000002145767211914f);
  let x_2041 : f32 = u_xlat83;
  u_xlat83 = min(x_2041, 1.0f);
  let x_2043 : f32 = u_xlat81;
  u_xlat6.x = ((x_2043 * 4.0f) + 2.0f);
  let x_2048 : f32 = vs_INTERP6.w;
  u_xlat32.x = min(x_2048, 1.0f);
  let x_2051 : bool = u_xlatb0;
  if (x_2051) {
    let x_2055 : f32 = x_246.x_MainLightShadowParams.y;
    u_xlatb0 = (x_2055 == 1.0f);
    let x_2057 : bool = u_xlatb0;
    if (x_2057) {
      let x_2060 : vec4<f32> = u_xlat2;
      let x_2063 : vec4<f32> = x_246.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_2060.x, x_2060.y, x_2060.x, x_2060.y) + x_2063);
      let x_2066 : vec4<f32> = u_xlat8;
      let x_2067 : vec2<f32> = vec2<f32>(x_2066.x, x_2066.y);
      let x_2069 : f32 = u_xlat2.z;
      txVec30 = vec3<f32>(x_2067.x, x_2067.y, x_2069);
      let x_2076 : vec3<f32> = txVec30;
      let x_2078 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2076.xy, x_2076.z);
      u_xlat9.x = x_2078;
      let x_2081 : vec4<f32> = u_xlat8;
      let x_2082 : vec2<f32> = vec2<f32>(x_2081.z, x_2081.w);
      let x_2084 : f32 = u_xlat2.z;
      txVec31 = vec3<f32>(x_2082.x, x_2082.y, x_2084);
      let x_2091 : vec3<f32> = txVec31;
      let x_2093 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2091.xy, x_2091.z);
      u_xlat9.y = x_2093;
      let x_2095 : vec4<f32> = u_xlat2;
      let x_2098 : vec4<f32> = x_246.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_2095.x, x_2095.y, x_2095.x, x_2095.y) + x_2098);
      let x_2101 : vec4<f32> = u_xlat8;
      let x_2102 : vec2<f32> = vec2<f32>(x_2101.x, x_2101.y);
      let x_2104 : f32 = u_xlat2.z;
      txVec32 = vec3<f32>(x_2102.x, x_2102.y, x_2104);
      let x_2111 : vec3<f32> = txVec32;
      let x_2113 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2111.xy, x_2111.z);
      u_xlat9.z = x_2113;
      let x_2116 : vec4<f32> = u_xlat8;
      let x_2117 : vec2<f32> = vec2<f32>(x_2116.z, x_2116.w);
      let x_2119 : f32 = u_xlat2.z;
      txVec33 = vec3<f32>(x_2117.x, x_2117.y, x_2119);
      let x_2126 : vec3<f32> = txVec33;
      let x_2128 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2126.xy, x_2126.z);
      u_xlat9.w = x_2128;
      let x_2130 : vec4<f32> = u_xlat9;
      u_xlat0.x = dot(x_2130, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_2136 : f32 = x_246.x_MainLightShadowParams.y;
      u_xlatb58 = (x_2136 == 2.0f);
      let x_2138 : bool = u_xlatb58;
      if (x_2138) {
        let x_2142 : vec4<f32> = u_xlat2;
        let x_2145 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_2142.x, x_2142.y) * vec2<f32>(x_2145.z, x_2145.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2149 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_2149);
        let x_2151 : vec4<f32> = u_xlat2;
        let x_2154 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2157 : vec2<f32> = u_xlat58;
        let x_2159 : vec2<f32> = ((vec2<f32>(x_2151.x, x_2151.y) * vec2<f32>(x_2154.z, x_2154.w)) + -(x_2157));
        let x_2160 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2159.x, x_2159.y, x_2160.z, x_2160.w);
        let x_2162 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2162.x, x_2162.x, x_2162.y, x_2162.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2165 : vec4<f32> = u_xlat9;
        let x_2167 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2165.x, x_2165.x, x_2165.z, x_2165.z) * vec4<f32>(x_2167.x, x_2167.x, x_2167.z, x_2167.z));
        let x_2170 : vec4<f32> = u_xlat10;
        u_xlat60 = (vec2<f32>(x_2170.y, x_2170.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_2173 : vec4<f32> = u_xlat10;
        let x_2176 : vec4<f32> = u_xlat8;
        let x_2179 : vec2<f32> = ((vec2<f32>(x_2173.x, x_2173.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2176.x, x_2176.y)));
        let x_2180 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2179.x, x_2180.y, x_2179.y, x_2180.w);
        let x_2182 : vec4<f32> = u_xlat8;
        let x_2185 : vec2<f32> = (-(vec2<f32>(x_2182.x, x_2182.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2186 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2185.x, x_2185.y, x_2186.z, x_2186.w);
        let x_2189 : vec4<f32> = u_xlat8;
        u_xlat62 = min(vec2<f32>(x_2189.x, x_2189.y), vec2<f32>(0.0f, 0.0f));
        let x_2192 : vec2<f32> = u_xlat62;
        let x_2194 : vec2<f32> = u_xlat62;
        let x_2196 : vec4<f32> = u_xlat10;
        u_xlat62 = ((-(x_2192) * x_2194) + vec2<f32>(x_2196.x, x_2196.y));
        let x_2199 : vec4<f32> = u_xlat8;
        let x_2201 : vec2<f32> = max(vec2<f32>(x_2199.x, x_2199.y), vec2<f32>(0.0f, 0.0f));
        let x_2202 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2201.x, x_2201.y, x_2202.z, x_2202.w);
        let x_2204 : vec4<f32> = u_xlat8;
        let x_2207 : vec4<f32> = u_xlat8;
        let x_2210 : vec4<f32> = u_xlat9;
        let x_2212 : vec2<f32> = ((-(vec2<f32>(x_2204.x, x_2204.y)) * vec2<f32>(x_2207.x, x_2207.y)) + vec2<f32>(x_2210.y, x_2210.w));
        let x_2213 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2212.x, x_2212.y, x_2213.z, x_2213.w);
        let x_2215 : vec2<f32> = u_xlat62;
        u_xlat62 = (x_2215 + vec2<f32>(1.0f, 1.0f));
        let x_2217 : vec4<f32> = u_xlat8;
        let x_2219 : vec2<f32> = (vec2<f32>(x_2217.x, x_2217.y) + vec2<f32>(1.0f, 1.0f));
        let x_2220 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2219.x, x_2219.y, x_2220.z, x_2220.w);
        let x_2222 : vec4<f32> = u_xlat9;
        let x_2224 : vec2<f32> = (vec2<f32>(x_2222.x, x_2222.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2225 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2224.x, x_2224.y, x_2225.z, x_2225.w);
        let x_2227 : vec4<f32> = u_xlat10;
        let x_2229 : vec2<f32> = (vec2<f32>(x_2227.x, x_2227.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2230 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2229.x, x_2229.y, x_2230.z, x_2230.w);
        let x_2232 : vec2<f32> = u_xlat62;
        let x_2233 : vec2<f32> = (x_2232 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2234 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2233.x, x_2233.y, x_2234.z, x_2234.w);
        let x_2236 : vec4<f32> = u_xlat8;
        let x_2238 : vec2<f32> = (vec2<f32>(x_2236.x, x_2236.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2239 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2238.x, x_2238.y, x_2239.z, x_2239.w);
        let x_2241 : vec4<f32> = u_xlat9;
        let x_2243 : vec2<f32> = (vec2<f32>(x_2241.y, x_2241.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2244 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2243.x, x_2243.y, x_2244.z, x_2244.w);
        let x_2247 : f32 = u_xlat10.x;
        u_xlat11.z = x_2247;
        let x_2250 : f32 = u_xlat8.x;
        u_xlat11.w = x_2250;
        let x_2253 : f32 = u_xlat13.x;
        u_xlat12.z = x_2253;
        let x_2256 : f32 = u_xlat60.x;
        u_xlat12.w = x_2256;
        let x_2258 : vec4<f32> = u_xlat11;
        let x_2260 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_2258.z, x_2258.w, x_2258.x, x_2258.z) + vec4<f32>(x_2260.z, x_2260.w, x_2260.x, x_2260.z));
        let x_2264 : f32 = u_xlat11.y;
        u_xlat10.z = x_2264;
        let x_2267 : f32 = u_xlat8.y;
        u_xlat10.w = x_2267;
        let x_2270 : f32 = u_xlat12.y;
        u_xlat13.z = x_2270;
        let x_2273 : f32 = u_xlat60.y;
        u_xlat13.w = x_2273;
        let x_2275 : vec4<f32> = u_xlat10;
        let x_2277 : vec4<f32> = u_xlat13;
        let x_2279 : vec3<f32> = (vec3<f32>(x_2275.z, x_2275.y, x_2275.w) + vec3<f32>(x_2277.z, x_2277.y, x_2277.w));
        let x_2280 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2279.x, x_2279.y, x_2279.z, x_2280.w);
        let x_2282 : vec4<f32> = u_xlat12;
        let x_2284 : vec4<f32> = u_xlat9;
        let x_2286 : vec3<f32> = (vec3<f32>(x_2282.x, x_2282.z, x_2282.w) / vec3<f32>(x_2284.z, x_2284.w, x_2284.y));
        let x_2287 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2286.x, x_2286.y, x_2286.z, x_2287.w);
        let x_2289 : vec4<f32> = u_xlat10;
        let x_2291 : vec3<f32> = (vec3<f32>(x_2289.x, x_2289.y, x_2289.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2292 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2291.x, x_2291.y, x_2291.z, x_2292.w);
        let x_2294 : vec4<f32> = u_xlat13;
        let x_2296 : vec4<f32> = u_xlat8;
        let x_2298 : vec3<f32> = (vec3<f32>(x_2294.z, x_2294.y, x_2294.w) / vec3<f32>(x_2296.x, x_2296.y, x_2296.z));
        let x_2299 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2298.x, x_2298.y, x_2298.z, x_2299.w);
        let x_2301 : vec4<f32> = u_xlat11;
        let x_2303 : vec3<f32> = (vec3<f32>(x_2301.x, x_2301.y, x_2301.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2304 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2303.x, x_2303.y, x_2303.z, x_2304.w);
        let x_2306 : vec4<f32> = u_xlat10;
        let x_2309 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2311 : vec3<f32> = (vec3<f32>(x_2306.y, x_2306.x, x_2306.z) * vec3<f32>(x_2309.x, x_2309.x, x_2309.x));
        let x_2312 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2311.x, x_2311.y, x_2311.z, x_2312.w);
        let x_2314 : vec4<f32> = u_xlat11;
        let x_2317 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2319 : vec3<f32> = (vec3<f32>(x_2314.x, x_2314.y, x_2314.z) * vec3<f32>(x_2317.y, x_2317.y, x_2317.y));
        let x_2320 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2319.x, x_2319.y, x_2319.z, x_2320.w);
        let x_2323 : f32 = u_xlat11.x;
        u_xlat10.w = x_2323;
        let x_2325 : vec2<f32> = u_xlat58;
        let x_2328 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2331 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_2325.x, x_2325.y, x_2325.x, x_2325.y) * vec4<f32>(x_2328.x, x_2328.y, x_2328.x, x_2328.y)) + vec4<f32>(x_2331.y, x_2331.w, x_2331.x, x_2331.w));
        let x_2334 : vec2<f32> = u_xlat58;
        let x_2336 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2339 : vec4<f32> = u_xlat10;
        let x_2341 : vec2<f32> = ((x_2334 * vec2<f32>(x_2336.x, x_2336.y)) + vec2<f32>(x_2339.z, x_2339.w));
        let x_2342 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2341.x, x_2341.y, x_2342.z, x_2342.w);
        let x_2345 : f32 = u_xlat10.y;
        u_xlat11.w = x_2345;
        let x_2347 : vec4<f32> = u_xlat11;
        let x_2348 : vec2<f32> = vec2<f32>(x_2347.y, x_2347.z);
        let x_2349 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2349.x, x_2348.x, x_2349.z, x_2348.y);
        let x_2351 : vec2<f32> = u_xlat58;
        let x_2354 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2357 : vec4<f32> = u_xlat10;
        u_xlat14 = ((vec4<f32>(x_2351.x, x_2351.y, x_2351.x, x_2351.y) * vec4<f32>(x_2354.x, x_2354.y, x_2354.x, x_2354.y)) + vec4<f32>(x_2357.x, x_2357.y, x_2357.z, x_2357.y));
        let x_2360 : vec2<f32> = u_xlat58;
        let x_2363 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2366 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_2360.x, x_2360.y, x_2360.x, x_2360.y) * vec4<f32>(x_2363.x, x_2363.y, x_2363.x, x_2363.y)) + vec4<f32>(x_2366.w, x_2366.y, x_2366.w, x_2366.z));
        let x_2369 : vec2<f32> = u_xlat58;
        let x_2372 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2375 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2369.x, x_2369.y, x_2369.x, x_2369.y) * vec4<f32>(x_2372.x, x_2372.y, x_2372.x, x_2372.y)) + vec4<f32>(x_2375.x, x_2375.w, x_2375.z, x_2375.w));
        let x_2378 : vec4<f32> = u_xlat8;
        let x_2380 : vec4<f32> = u_xlat9;
        u_xlat15 = (vec4<f32>(x_2378.x, x_2378.x, x_2378.x, x_2378.y) * vec4<f32>(x_2380.z, x_2380.w, x_2380.y, x_2380.z));
        let x_2383 : vec4<f32> = u_xlat8;
        let x_2385 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_2383.y, x_2383.y, x_2383.z, x_2383.z) * x_2385);
        let x_2388 : f32 = u_xlat8.z;
        let x_2390 : f32 = u_xlat9.y;
        u_xlat58.x = (x_2388 * x_2390);
        let x_2394 : vec4<f32> = u_xlat12;
        let x_2395 : vec2<f32> = vec2<f32>(x_2394.x, x_2394.y);
        let x_2397 : f32 = u_xlat2.z;
        txVec34 = vec3<f32>(x_2395.x, x_2395.y, x_2397);
        let x_2405 : vec3<f32> = txVec34;
        let x_2407 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2405.xy, x_2405.z);
        u_xlat84 = x_2407;
        let x_2409 : vec4<f32> = u_xlat12;
        let x_2410 : vec2<f32> = vec2<f32>(x_2409.z, x_2409.w);
        let x_2412 : f32 = u_xlat2.z;
        txVec35 = vec3<f32>(x_2410.x, x_2410.y, x_2412);
        let x_2420 : vec3<f32> = txVec35;
        let x_2422 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2420.xy, x_2420.z);
        u_xlat85 = x_2422;
        let x_2423 : f32 = u_xlat85;
        let x_2425 : f32 = u_xlat15.y;
        u_xlat85 = (x_2423 * x_2425);
        let x_2428 : f32 = u_xlat15.x;
        let x_2429 : f32 = u_xlat84;
        let x_2431 : f32 = u_xlat85;
        u_xlat84 = ((x_2428 * x_2429) + x_2431);
        let x_2434 : vec4<f32> = u_xlat13;
        let x_2435 : vec2<f32> = vec2<f32>(x_2434.x, x_2434.y);
        let x_2437 : f32 = u_xlat2.z;
        txVec36 = vec3<f32>(x_2435.x, x_2435.y, x_2437);
        let x_2444 : vec3<f32> = txVec36;
        let x_2446 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2444.xy, x_2444.z);
        u_xlat85 = x_2446;
        let x_2448 : f32 = u_xlat15.z;
        let x_2449 : f32 = u_xlat85;
        let x_2451 : f32 = u_xlat84;
        u_xlat84 = ((x_2448 * x_2449) + x_2451);
        let x_2454 : vec4<f32> = u_xlat11;
        let x_2455 : vec2<f32> = vec2<f32>(x_2454.x, x_2454.y);
        let x_2457 : f32 = u_xlat2.z;
        txVec37 = vec3<f32>(x_2455.x, x_2455.y, x_2457);
        let x_2464 : vec3<f32> = txVec37;
        let x_2466 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2464.xy, x_2464.z);
        u_xlat85 = x_2466;
        let x_2468 : f32 = u_xlat15.w;
        let x_2469 : f32 = u_xlat85;
        let x_2471 : f32 = u_xlat84;
        u_xlat84 = ((x_2468 * x_2469) + x_2471);
        let x_2474 : vec4<f32> = u_xlat14;
        let x_2475 : vec2<f32> = vec2<f32>(x_2474.x, x_2474.y);
        let x_2477 : f32 = u_xlat2.z;
        txVec38 = vec3<f32>(x_2475.x, x_2475.y, x_2477);
        let x_2484 : vec3<f32> = txVec38;
        let x_2486 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2484.xy, x_2484.z);
        u_xlat85 = x_2486;
        let x_2488 : f32 = u_xlat16.x;
        let x_2489 : f32 = u_xlat85;
        let x_2491 : f32 = u_xlat84;
        u_xlat84 = ((x_2488 * x_2489) + x_2491);
        let x_2494 : vec4<f32> = u_xlat14;
        let x_2495 : vec2<f32> = vec2<f32>(x_2494.z, x_2494.w);
        let x_2497 : f32 = u_xlat2.z;
        txVec39 = vec3<f32>(x_2495.x, x_2495.y, x_2497);
        let x_2504 : vec3<f32> = txVec39;
        let x_2506 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2504.xy, x_2504.z);
        u_xlat85 = x_2506;
        let x_2508 : f32 = u_xlat16.y;
        let x_2509 : f32 = u_xlat85;
        let x_2511 : f32 = u_xlat84;
        u_xlat84 = ((x_2508 * x_2509) + x_2511);
        let x_2514 : vec4<f32> = u_xlat11;
        let x_2515 : vec2<f32> = vec2<f32>(x_2514.z, x_2514.w);
        let x_2517 : f32 = u_xlat2.z;
        txVec40 = vec3<f32>(x_2515.x, x_2515.y, x_2517);
        let x_2524 : vec3<f32> = txVec40;
        let x_2526 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2524.xy, x_2524.z);
        u_xlat85 = x_2526;
        let x_2528 : f32 = u_xlat16.z;
        let x_2529 : f32 = u_xlat85;
        let x_2531 : f32 = u_xlat84;
        u_xlat84 = ((x_2528 * x_2529) + x_2531);
        let x_2534 : vec4<f32> = u_xlat10;
        let x_2535 : vec2<f32> = vec2<f32>(x_2534.x, x_2534.y);
        let x_2537 : f32 = u_xlat2.z;
        txVec41 = vec3<f32>(x_2535.x, x_2535.y, x_2537);
        let x_2544 : vec3<f32> = txVec41;
        let x_2546 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2544.xy, x_2544.z);
        u_xlat85 = x_2546;
        let x_2548 : f32 = u_xlat16.w;
        let x_2549 : f32 = u_xlat85;
        let x_2551 : f32 = u_xlat84;
        u_xlat84 = ((x_2548 * x_2549) + x_2551);
        let x_2554 : vec4<f32> = u_xlat10;
        let x_2555 : vec2<f32> = vec2<f32>(x_2554.z, x_2554.w);
        let x_2557 : f32 = u_xlat2.z;
        txVec42 = vec3<f32>(x_2555.x, x_2555.y, x_2557);
        let x_2564 : vec3<f32> = txVec42;
        let x_2566 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2564.xy, x_2564.z);
        u_xlat85 = x_2566;
        let x_2568 : f32 = u_xlat58.x;
        let x_2569 : f32 = u_xlat85;
        let x_2571 : f32 = u_xlat84;
        u_xlat0.x = ((x_2568 * x_2569) + x_2571);
      } else {
        let x_2575 : vec4<f32> = u_xlat2;
        let x_2578 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_2575.x, x_2575.y) * vec2<f32>(x_2578.z, x_2578.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2582 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_2582);
        let x_2584 : vec4<f32> = u_xlat2;
        let x_2587 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2590 : vec2<f32> = u_xlat58;
        let x_2592 : vec2<f32> = ((vec2<f32>(x_2584.x, x_2584.y) * vec2<f32>(x_2587.z, x_2587.w)) + -(x_2590));
        let x_2593 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2592.x, x_2592.y, x_2593.z, x_2593.w);
        let x_2595 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2595.x, x_2595.x, x_2595.y, x_2595.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2598 : vec4<f32> = u_xlat9;
        let x_2600 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2598.x, x_2598.x, x_2598.z, x_2598.z) * vec4<f32>(x_2600.x, x_2600.x, x_2600.z, x_2600.z));
        let x_2603 : vec4<f32> = u_xlat10;
        let x_2605 : vec2<f32> = (vec2<f32>(x_2603.y, x_2603.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2606 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2606.x, x_2605.x, x_2606.z, x_2605.y);
        let x_2608 : vec4<f32> = u_xlat10;
        let x_2611 : vec4<f32> = u_xlat8;
        u_xlat60 = ((vec2<f32>(x_2608.x, x_2608.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2611.x, x_2611.y)));
        let x_2615 : vec4<f32> = u_xlat8;
        let x_2618 : vec2<f32> = (-(vec2<f32>(x_2615.x, x_2615.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2619 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2618.x, x_2619.y, x_2618.y, x_2619.w);
        let x_2621 : vec4<f32> = u_xlat8;
        let x_2623 : vec2<f32> = min(vec2<f32>(x_2621.x, x_2621.y), vec2<f32>(0.0f, 0.0f));
        let x_2624 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2623.x, x_2623.y, x_2624.z, x_2624.w);
        let x_2626 : vec4<f32> = u_xlat10;
        let x_2629 : vec4<f32> = u_xlat10;
        let x_2632 : vec4<f32> = u_xlat9;
        let x_2634 : vec2<f32> = ((-(vec2<f32>(x_2626.x, x_2626.y)) * vec2<f32>(x_2629.x, x_2629.y)) + vec2<f32>(x_2632.x, x_2632.z));
        let x_2635 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2634.x, x_2635.y, x_2634.y, x_2635.w);
        let x_2637 : vec4<f32> = u_xlat8;
        let x_2639 : vec2<f32> = max(vec2<f32>(x_2637.x, x_2637.y), vec2<f32>(0.0f, 0.0f));
        let x_2640 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2639.x, x_2639.y, x_2640.z, x_2640.w);
        let x_2642 : vec4<f32> = u_xlat10;
        let x_2645 : vec4<f32> = u_xlat10;
        let x_2648 : vec4<f32> = u_xlat9;
        let x_2650 : vec2<f32> = ((-(vec2<f32>(x_2642.x, x_2642.y)) * vec2<f32>(x_2645.x, x_2645.y)) + vec2<f32>(x_2648.y, x_2648.w));
        let x_2651 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2651.x, x_2650.x, x_2651.z, x_2650.y);
        let x_2653 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2653 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2656 : f32 = u_xlat9.y;
        u_xlat10.z = (x_2656 * 0.08163200318813323975f);
        let x_2659 : vec2<f32> = u_xlat60;
        let x_2661 : vec2<f32> = (vec2<f32>(x_2659.y, x_2659.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2662 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2661.x, x_2661.y, x_2662.z, x_2662.w);
        let x_2664 : vec4<f32> = u_xlat9;
        u_xlat60 = (vec2<f32>(x_2664.x, x_2664.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2668 : f32 = u_xlat9.w;
        u_xlat12.z = (x_2668 * 0.08163200318813323975f);
        let x_2672 : f32 = u_xlat12.y;
        u_xlat10.x = x_2672;
        let x_2674 : vec4<f32> = u_xlat8;
        let x_2677 : vec2<f32> = ((vec2<f32>(x_2674.x, x_2674.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2678 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2678.x, x_2677.x, x_2678.z, x_2677.y);
        let x_2680 : vec4<f32> = u_xlat8;
        let x_2683 : vec2<f32> = ((vec2<f32>(x_2680.x, x_2680.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2684 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2683.x, x_2684.y, x_2683.y, x_2684.w);
        let x_2687 : f32 = u_xlat60.x;
        u_xlat9.y = x_2687;
        let x_2690 : f32 = u_xlat11.y;
        u_xlat9.w = x_2690;
        let x_2692 : vec4<f32> = u_xlat9;
        let x_2693 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2692 + x_2693);
        let x_2695 : vec4<f32> = u_xlat8;
        let x_2698 : vec2<f32> = ((vec2<f32>(x_2695.y, x_2695.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2699 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2699.x, x_2698.x, x_2699.z, x_2698.y);
        let x_2701 : vec4<f32> = u_xlat8;
        let x_2704 : vec2<f32> = ((vec2<f32>(x_2701.y, x_2701.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2705 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2704.x, x_2705.y, x_2704.y, x_2705.w);
        let x_2708 : f32 = u_xlat60.y;
        u_xlat11.y = x_2708;
        let x_2710 : vec4<f32> = u_xlat11;
        let x_2711 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_2710 + x_2711);
        let x_2713 : vec4<f32> = u_xlat9;
        let x_2714 : vec4<f32> = u_xlat10;
        u_xlat9 = (x_2713 / x_2714);
        let x_2716 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2716 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2718 : vec4<f32> = u_xlat11;
        let x_2719 : vec4<f32> = u_xlat8;
        u_xlat11 = (x_2718 / x_2719);
        let x_2721 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_2721 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2723 : vec4<f32> = u_xlat9;
        let x_2726 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_2723.w, x_2723.x, x_2723.y, x_2723.z) * vec4<f32>(x_2726.x, x_2726.x, x_2726.x, x_2726.x));
        let x_2729 : vec4<f32> = u_xlat11;
        let x_2732 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_2729.x, x_2729.w, x_2729.y, x_2729.z) * vec4<f32>(x_2732.y, x_2732.y, x_2732.y, x_2732.y));
        let x_2735 : vec4<f32> = u_xlat9;
        let x_2736 : vec3<f32> = vec3<f32>(x_2735.y, x_2735.z, x_2735.w);
        let x_2737 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2736.x, x_2737.y, x_2736.y, x_2736.z);
        let x_2740 : f32 = u_xlat11.x;
        u_xlat12.y = x_2740;
        let x_2742 : vec2<f32> = u_xlat58;
        let x_2745 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2748 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_2742.x, x_2742.y, x_2742.x, x_2742.y) * vec4<f32>(x_2745.x, x_2745.y, x_2745.x, x_2745.y)) + vec4<f32>(x_2748.x, x_2748.y, x_2748.z, x_2748.y));
        let x_2751 : vec2<f32> = u_xlat58;
        let x_2753 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2756 : vec4<f32> = u_xlat12;
        let x_2758 : vec2<f32> = ((x_2751 * vec2<f32>(x_2753.x, x_2753.y)) + vec2<f32>(x_2756.w, x_2756.y));
        let x_2759 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_2758.x, x_2758.y, x_2759.z, x_2759.w);
        let x_2762 : f32 = u_xlat12.y;
        u_xlat9.y = x_2762;
        let x_2765 : f32 = u_xlat11.z;
        u_xlat12.y = x_2765;
        let x_2767 : vec2<f32> = u_xlat58;
        let x_2770 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2773 : vec4<f32> = u_xlat12;
        u_xlat15 = ((vec4<f32>(x_2767.x, x_2767.y, x_2767.x, x_2767.y) * vec4<f32>(x_2770.x, x_2770.y, x_2770.x, x_2770.y)) + vec4<f32>(x_2773.x, x_2773.y, x_2773.z, x_2773.y));
        let x_2776 : vec2<f32> = u_xlat58;
        let x_2778 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2781 : vec4<f32> = u_xlat12;
        u_xlat66 = ((x_2776 * vec2<f32>(x_2778.x, x_2778.y)) + vec2<f32>(x_2781.w, x_2781.y));
        let x_2785 : f32 = u_xlat12.y;
        u_xlat9.z = x_2785;
        let x_2787 : vec2<f32> = u_xlat58;
        let x_2790 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2793 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_2787.x, x_2787.y, x_2787.x, x_2787.y) * vec4<f32>(x_2790.x, x_2790.y, x_2790.x, x_2790.y)) + vec4<f32>(x_2793.x, x_2793.y, x_2793.x, x_2793.z));
        let x_2797 : f32 = u_xlat11.w;
        u_xlat12.y = x_2797;
        let x_2799 : vec2<f32> = u_xlat58;
        let x_2802 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2805 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_2799.x, x_2799.y, x_2799.x, x_2799.y) * vec4<f32>(x_2802.x, x_2802.y, x_2802.x, x_2802.y)) + vec4<f32>(x_2805.x, x_2805.y, x_2805.z, x_2805.y));
        let x_2809 : vec2<f32> = u_xlat58;
        let x_2811 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2814 : vec4<f32> = u_xlat12;
        u_xlat35 = ((x_2809 * vec2<f32>(x_2811.x, x_2811.y)) + vec2<f32>(x_2814.w, x_2814.y));
        let x_2818 : f32 = u_xlat12.y;
        u_xlat9.w = x_2818;
        let x_2820 : vec2<f32> = u_xlat58;
        let x_2822 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2825 : vec4<f32> = u_xlat9;
        let x_2827 : vec2<f32> = ((x_2820 * vec2<f32>(x_2822.x, x_2822.y)) + vec2<f32>(x_2825.x, x_2825.w));
        let x_2828 : vec4<f32> = u_xlat18;
        u_xlat18 = vec4<f32>(x_2827.x, x_2827.y, x_2828.z, x_2828.w);
        let x_2830 : vec4<f32> = u_xlat12;
        let x_2831 : vec3<f32> = vec3<f32>(x_2830.x, x_2830.z, x_2830.w);
        let x_2832 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2831.x, x_2832.y, x_2831.y, x_2831.z);
        let x_2834 : vec2<f32> = u_xlat58;
        let x_2837 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2840 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2834.x, x_2834.y, x_2834.x, x_2834.y) * vec4<f32>(x_2837.x, x_2837.y, x_2837.x, x_2837.y)) + vec4<f32>(x_2840.x, x_2840.y, x_2840.z, x_2840.y));
        let x_2844 : vec2<f32> = u_xlat58;
        let x_2846 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2849 : vec4<f32> = u_xlat11;
        u_xlat63 = ((x_2844 * vec2<f32>(x_2846.x, x_2846.y)) + vec2<f32>(x_2849.w, x_2849.y));
        let x_2853 : f32 = u_xlat9.x;
        u_xlat11.x = x_2853;
        let x_2855 : vec2<f32> = u_xlat58;
        let x_2857 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2860 : vec4<f32> = u_xlat11;
        u_xlat58 = ((x_2855 * vec2<f32>(x_2857.x, x_2857.y)) + vec2<f32>(x_2860.x, x_2860.y));
        let x_2863 : vec4<f32> = u_xlat8;
        let x_2865 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_2863.x, x_2863.x, x_2863.x, x_2863.x) * x_2865);
        let x_2868 : vec4<f32> = u_xlat8;
        let x_2870 : vec4<f32> = u_xlat10;
        u_xlat20 = (vec4<f32>(x_2868.y, x_2868.y, x_2868.y, x_2868.y) * x_2870);
        let x_2873 : vec4<f32> = u_xlat8;
        let x_2875 : vec4<f32> = u_xlat10;
        u_xlat21 = (vec4<f32>(x_2873.z, x_2873.z, x_2873.z, x_2873.z) * x_2875);
        let x_2877 : vec4<f32> = u_xlat8;
        let x_2879 : vec4<f32> = u_xlat10;
        u_xlat8 = (vec4<f32>(x_2877.w, x_2877.w, x_2877.w, x_2877.w) * x_2879);
        let x_2882 : vec4<f32> = u_xlat13;
        let x_2883 : vec2<f32> = vec2<f32>(x_2882.x, x_2882.y);
        let x_2885 : f32 = u_xlat2.z;
        txVec43 = vec3<f32>(x_2883.x, x_2883.y, x_2885);
        let x_2892 : vec3<f32> = txVec43;
        let x_2894 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2892.xy, x_2892.z);
        u_xlat85 = x_2894;
        let x_2896 : vec4<f32> = u_xlat13;
        let x_2897 : vec2<f32> = vec2<f32>(x_2896.z, x_2896.w);
        let x_2899 : f32 = u_xlat2.z;
        txVec44 = vec3<f32>(x_2897.x, x_2897.y, x_2899);
        let x_2906 : vec3<f32> = txVec44;
        let x_2908 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2906.xy, x_2906.z);
        u_xlat9.x = x_2908;
        let x_2911 : f32 = u_xlat9.x;
        let x_2913 : f32 = u_xlat19.y;
        u_xlat9.x = (x_2911 * x_2913);
        let x_2917 : f32 = u_xlat19.x;
        let x_2918 : f32 = u_xlat85;
        let x_2921 : f32 = u_xlat9.x;
        u_xlat85 = ((x_2917 * x_2918) + x_2921);
        let x_2924 : vec4<f32> = u_xlat14;
        let x_2925 : vec2<f32> = vec2<f32>(x_2924.x, x_2924.y);
        let x_2927 : f32 = u_xlat2.z;
        txVec45 = vec3<f32>(x_2925.x, x_2925.y, x_2927);
        let x_2934 : vec3<f32> = txVec45;
        let x_2936 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2934.xy, x_2934.z);
        u_xlat9.x = x_2936;
        let x_2939 : f32 = u_xlat19.z;
        let x_2941 : f32 = u_xlat9.x;
        let x_2943 : f32 = u_xlat85;
        u_xlat85 = ((x_2939 * x_2941) + x_2943);
        let x_2946 : vec4<f32> = u_xlat16;
        let x_2947 : vec2<f32> = vec2<f32>(x_2946.x, x_2946.y);
        let x_2949 : f32 = u_xlat2.z;
        txVec46 = vec3<f32>(x_2947.x, x_2947.y, x_2949);
        let x_2956 : vec3<f32> = txVec46;
        let x_2958 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2956.xy, x_2956.z);
        u_xlat9.x = x_2958;
        let x_2961 : f32 = u_xlat19.w;
        let x_2963 : f32 = u_xlat9.x;
        let x_2965 : f32 = u_xlat85;
        u_xlat85 = ((x_2961 * x_2963) + x_2965);
        let x_2968 : vec4<f32> = u_xlat15;
        let x_2969 : vec2<f32> = vec2<f32>(x_2968.x, x_2968.y);
        let x_2971 : f32 = u_xlat2.z;
        txVec47 = vec3<f32>(x_2969.x, x_2969.y, x_2971);
        let x_2978 : vec3<f32> = txVec47;
        let x_2980 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2978.xy, x_2978.z);
        u_xlat9.x = x_2980;
        let x_2983 : f32 = u_xlat20.x;
        let x_2985 : f32 = u_xlat9.x;
        let x_2987 : f32 = u_xlat85;
        u_xlat85 = ((x_2983 * x_2985) + x_2987);
        let x_2990 : vec4<f32> = u_xlat15;
        let x_2991 : vec2<f32> = vec2<f32>(x_2990.z, x_2990.w);
        let x_2993 : f32 = u_xlat2.z;
        txVec48 = vec3<f32>(x_2991.x, x_2991.y, x_2993);
        let x_3000 : vec3<f32> = txVec48;
        let x_3002 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3000.xy, x_3000.z);
        u_xlat9.x = x_3002;
        let x_3005 : f32 = u_xlat20.y;
        let x_3007 : f32 = u_xlat9.x;
        let x_3009 : f32 = u_xlat85;
        u_xlat85 = ((x_3005 * x_3007) + x_3009);
        let x_3012 : vec2<f32> = u_xlat66;
        let x_3014 : f32 = u_xlat2.z;
        txVec49 = vec3<f32>(x_3012.x, x_3012.y, x_3014);
        let x_3021 : vec3<f32> = txVec49;
        let x_3023 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3021.xy, x_3021.z);
        u_xlat9.x = x_3023;
        let x_3026 : f32 = u_xlat20.z;
        let x_3028 : f32 = u_xlat9.x;
        let x_3030 : f32 = u_xlat85;
        u_xlat85 = ((x_3026 * x_3028) + x_3030);
        let x_3033 : vec4<f32> = u_xlat16;
        let x_3034 : vec2<f32> = vec2<f32>(x_3033.z, x_3033.w);
        let x_3036 : f32 = u_xlat2.z;
        txVec50 = vec3<f32>(x_3034.x, x_3034.y, x_3036);
        let x_3043 : vec3<f32> = txVec50;
        let x_3045 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3043.xy, x_3043.z);
        u_xlat9.x = x_3045;
        let x_3048 : f32 = u_xlat20.w;
        let x_3050 : f32 = u_xlat9.x;
        let x_3052 : f32 = u_xlat85;
        u_xlat85 = ((x_3048 * x_3050) + x_3052);
        let x_3055 : vec4<f32> = u_xlat17;
        let x_3056 : vec2<f32> = vec2<f32>(x_3055.x, x_3055.y);
        let x_3058 : f32 = u_xlat2.z;
        txVec51 = vec3<f32>(x_3056.x, x_3056.y, x_3058);
        let x_3065 : vec3<f32> = txVec51;
        let x_3067 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3065.xy, x_3065.z);
        u_xlat9.x = x_3067;
        let x_3070 : f32 = u_xlat21.x;
        let x_3072 : f32 = u_xlat9.x;
        let x_3074 : f32 = u_xlat85;
        u_xlat85 = ((x_3070 * x_3072) + x_3074);
        let x_3077 : vec4<f32> = u_xlat17;
        let x_3078 : vec2<f32> = vec2<f32>(x_3077.z, x_3077.w);
        let x_3080 : f32 = u_xlat2.z;
        txVec52 = vec3<f32>(x_3078.x, x_3078.y, x_3080);
        let x_3087 : vec3<f32> = txVec52;
        let x_3089 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3087.xy, x_3087.z);
        u_xlat9.x = x_3089;
        let x_3092 : f32 = u_xlat21.y;
        let x_3094 : f32 = u_xlat9.x;
        let x_3096 : f32 = u_xlat85;
        u_xlat85 = ((x_3092 * x_3094) + x_3096);
        let x_3099 : vec2<f32> = u_xlat35;
        let x_3101 : f32 = u_xlat2.z;
        txVec53 = vec3<f32>(x_3099.x, x_3099.y, x_3101);
        let x_3108 : vec3<f32> = txVec53;
        let x_3110 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3108.xy, x_3108.z);
        u_xlat9.x = x_3110;
        let x_3113 : f32 = u_xlat21.z;
        let x_3115 : f32 = u_xlat9.x;
        let x_3117 : f32 = u_xlat85;
        u_xlat85 = ((x_3113 * x_3115) + x_3117);
        let x_3120 : vec4<f32> = u_xlat18;
        let x_3121 : vec2<f32> = vec2<f32>(x_3120.x, x_3120.y);
        let x_3123 : f32 = u_xlat2.z;
        txVec54 = vec3<f32>(x_3121.x, x_3121.y, x_3123);
        let x_3130 : vec3<f32> = txVec54;
        let x_3132 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3130.xy, x_3130.z);
        u_xlat9.x = x_3132;
        let x_3135 : f32 = u_xlat21.w;
        let x_3137 : f32 = u_xlat9.x;
        let x_3139 : f32 = u_xlat85;
        u_xlat85 = ((x_3135 * x_3137) + x_3139);
        let x_3142 : vec4<f32> = u_xlat12;
        let x_3143 : vec2<f32> = vec2<f32>(x_3142.x, x_3142.y);
        let x_3145 : f32 = u_xlat2.z;
        txVec55 = vec3<f32>(x_3143.x, x_3143.y, x_3145);
        let x_3152 : vec3<f32> = txVec55;
        let x_3154 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3152.xy, x_3152.z);
        u_xlat9.x = x_3154;
        let x_3157 : f32 = u_xlat8.x;
        let x_3159 : f32 = u_xlat9.x;
        let x_3161 : f32 = u_xlat85;
        u_xlat85 = ((x_3157 * x_3159) + x_3161);
        let x_3164 : vec4<f32> = u_xlat12;
        let x_3165 : vec2<f32> = vec2<f32>(x_3164.z, x_3164.w);
        let x_3167 : f32 = u_xlat2.z;
        txVec56 = vec3<f32>(x_3165.x, x_3165.y, x_3167);
        let x_3174 : vec3<f32> = txVec56;
        let x_3176 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3174.xy, x_3174.z);
        u_xlat8.x = x_3176;
        let x_3179 : f32 = u_xlat8.y;
        let x_3181 : f32 = u_xlat8.x;
        let x_3183 : f32 = u_xlat85;
        u_xlat85 = ((x_3179 * x_3181) + x_3183);
        let x_3186 : vec2<f32> = u_xlat63;
        let x_3188 : f32 = u_xlat2.z;
        txVec57 = vec3<f32>(x_3186.x, x_3186.y, x_3188);
        let x_3195 : vec3<f32> = txVec57;
        let x_3197 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3195.xy, x_3195.z);
        u_xlat8.x = x_3197;
        let x_3200 : f32 = u_xlat8.z;
        let x_3202 : f32 = u_xlat8.x;
        let x_3204 : f32 = u_xlat85;
        u_xlat85 = ((x_3200 * x_3202) + x_3204);
        let x_3207 : vec2<f32> = u_xlat58;
        let x_3209 : f32 = u_xlat2.z;
        txVec58 = vec3<f32>(x_3207.x, x_3207.y, x_3209);
        let x_3216 : vec3<f32> = txVec58;
        let x_3218 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3216.xy, x_3216.z);
        u_xlat58.x = x_3218;
        let x_3221 : f32 = u_xlat8.w;
        let x_3223 : f32 = u_xlat58.x;
        let x_3225 : f32 = u_xlat85;
        u_xlat0.x = ((x_3221 * x_3223) + x_3225);
      }
    }
  } else {
    let x_3230 : vec4<f32> = u_xlat2;
    let x_3231 : vec2<f32> = vec2<f32>(x_3230.x, x_3230.y);
    let x_3233 : f32 = u_xlat2.z;
    txVec59 = vec3<f32>(x_3231.x, x_3231.y, x_3233);
    let x_3240 : vec3<f32> = txVec59;
    let x_3242 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3240.xy, x_3240.z);
    u_xlat0.x = x_3242;
  }
  let x_3245 : f32 = u_xlat0.x;
  let x_3247 : f32 = x_246.x_MainLightShadowParams.x;
  let x_3249 : f32 = u_xlat80;
  u_xlat0.x = ((x_3245 * x_3247) + x_3249);
  let x_3253 : bool = u_xlatb3.x;
  if (x_3253) {
    x_3254 = 1.0f;
  } else {
    let x_3259 : f32 = u_xlat0.x;
    x_3254 = x_3259;
  }
  let x_3260 : f32 = x_3254;
  u_xlat0.x = x_3260;
  let x_3262 : vec3<f32> = vs_INTERP8;
  let x_3264 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  let x_3266 : vec3<f32> = (x_3262 + -(x_3264));
  let x_3267 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_3266.x, x_3266.y, x_3266.z, x_3267.w);
  let x_3269 : vec4<f32> = u_xlat2;
  let x_3271 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_3269.x, x_3269.y, x_3269.z), vec3<f32>(x_3271.x, x_3271.y, x_3271.z));
  let x_3277 : f32 = u_xlat2.x;
  let x_3279 : f32 = x_246.x_MainLightShadowParams.z;
  let x_3282 : f32 = x_246.x_MainLightShadowParams.w;
  u_xlat28.x = ((x_3277 * x_3279) + x_3282);
  let x_3286 : f32 = u_xlat28.x;
  u_xlat28.x = clamp(x_3286, 0.0f, 1.0f);
  let x_3291 : f32 = u_xlat0.x;
  u_xlat54 = (-(x_3291) + 1.0f);
  let x_3295 : f32 = u_xlat28.x;
  let x_3296 : f32 = u_xlat54;
  let x_3299 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_3295 * x_3296) + x_3299);
  let x_3310 : f32 = x_3308.x_MainLightCookieTextureFormat;
  u_xlatb28.x = !((x_3310 == -1.0f));
  let x_3314 : bool = u_xlatb28.x;
  if (x_3314) {
    let x_3317 : vec3<f32> = vs_INTERP8;
    let x_3320 : vec4<f32> = x_3308.x_MainLightWorldToLight[1i];
    let x_3322 : vec2<f32> = (vec2<f32>(x_3317.y, x_3317.y) * vec2<f32>(x_3320.x, x_3320.y));
    let x_3323 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_3322.x, x_3322.y, x_3323.z);
    let x_3326 : vec4<f32> = x_3308.x_MainLightWorldToLight[0i];
    let x_3328 : vec3<f32> = vs_INTERP8;
    let x_3331 : vec3<f32> = u_xlat28;
    let x_3333 : vec2<f32> = ((vec2<f32>(x_3326.x, x_3326.y) * vec2<f32>(x_3328.x, x_3328.x)) + vec2<f32>(x_3331.x, x_3331.y));
    let x_3334 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_3333.x, x_3333.y, x_3334.z);
    let x_3337 : vec4<f32> = x_3308.x_MainLightWorldToLight[2i];
    let x_3339 : vec3<f32> = vs_INTERP8;
    let x_3342 : vec3<f32> = u_xlat28;
    let x_3344 : vec2<f32> = ((vec2<f32>(x_3337.x, x_3337.y) * vec2<f32>(x_3339.z, x_3339.z)) + vec2<f32>(x_3342.x, x_3342.y));
    let x_3345 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_3344.x, x_3344.y, x_3345.z);
    let x_3347 : vec3<f32> = u_xlat28;
    let x_3350 : vec4<f32> = x_3308.x_MainLightWorldToLight[3i];
    let x_3352 : vec2<f32> = (vec2<f32>(x_3347.x, x_3347.y) + vec2<f32>(x_3350.x, x_3350.y));
    let x_3353 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_3352.x, x_3352.y, x_3353.z);
    let x_3355 : vec3<f32> = u_xlat28;
    let x_3358 : vec2<f32> = ((vec2<f32>(x_3355.x, x_3355.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_3359 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_3358.x, x_3358.y, x_3359.z);
    let x_3366 : vec3<f32> = u_xlat28;
    let x_3369 : f32 = x_128.x_GlobalMipBias.x;
    let x_3370 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_3366.x, x_3366.y), x_3369);
    u_xlat8 = x_3370;
    let x_3372 : f32 = x_3308.x_MainLightCookieTextureFormat;
    let x_3374 : f32 = x_3308.x_MainLightCookieTextureFormat;
    let x_3376 : f32 = x_3308.x_MainLightCookieTextureFormat;
    let x_3378 : f32 = x_3308.x_MainLightCookieTextureFormat;
    let x_3379 : vec4<f32> = vec4<f32>(x_3372, x_3374, x_3376, x_3378);
    let x_3386 : vec4<bool> = (vec4<f32>(x_3379.x, x_3379.y, x_3379.z, x_3379.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb28 = vec2<bool>(x_3386.x, x_3386.y);
    let x_3389 : bool = u_xlatb28.y;
    if (x_3389) {
      let x_3394 : f32 = u_xlat8.w;
      x_3390 = x_3394;
    } else {
      let x_3397 : f32 = u_xlat8.x;
      x_3390 = x_3397;
    }
    let x_3398 : f32 = x_3390;
    u_xlat54 = x_3398;
    let x_3400 : bool = u_xlatb28.x;
    if (x_3400) {
      let x_3404 : vec4<f32> = u_xlat8;
      x_3401 = vec3<f32>(x_3404.x, x_3404.y, x_3404.z);
    } else {
      let x_3407 : f32 = u_xlat54;
      x_3401 = vec3<f32>(x_3407, x_3407, x_3407);
    }
    let x_3409 : vec3<f32> = x_3401;
    u_xlat28 = x_3409;
  } else {
    u_xlat28.x = 1.0f;
    u_xlat28.y = 1.0f;
    u_xlat28.z = 1.0f;
  }
  let x_3414 : vec3<f32> = u_xlat28;
  let x_3416 : vec4<f32> = x_128.x_MainLightColor;
  u_xlat28 = (x_3414 * vec3<f32>(x_3416.x, x_3416.y, x_3416.z));
  let x_3419 : vec4<f32> = u_xlat7;
  let x_3422 : vec4<f32> = u_xlat4;
  u_xlat3.x = dot(-(vec3<f32>(x_3419.x, x_3419.y, x_3419.z)), vec3<f32>(x_3422.x, x_3422.y, x_3422.z));
  let x_3427 : f32 = u_xlat3.x;
  let x_3429 : f32 = u_xlat3.x;
  u_xlat3.x = (x_3427 + x_3429);
  let x_3432 : vec4<f32> = u_xlat4;
  let x_3434 : vec4<f32> = u_xlat3;
  let x_3438 : vec4<f32> = u_xlat7;
  let x_3441 : vec3<f32> = ((vec3<f32>(x_3432.x, x_3432.y, x_3432.z) * -(vec3<f32>(x_3434.x, x_3434.x, x_3434.x))) + -(vec3<f32>(x_3438.x, x_3438.y, x_3438.z)));
  let x_3442 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3441.x, x_3441.y, x_3441.z, x_3442.w);
  let x_3444 : vec4<f32> = u_xlat4;
  let x_3446 : vec4<f32> = u_xlat7;
  u_xlat3.x = dot(vec3<f32>(x_3444.x, x_3444.y, x_3444.z), vec3<f32>(x_3446.x, x_3446.y, x_3446.z));
  let x_3451 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_3451, 0.0f, 1.0f);
  let x_3455 : f32 = u_xlat3.x;
  u_xlat3.x = (-(x_3455) + 1.0f);
  let x_3460 : f32 = u_xlat3.x;
  let x_3462 : f32 = u_xlat3.x;
  u_xlat3.x = (x_3460 * x_3462);
  let x_3466 : f32 = u_xlat3.x;
  let x_3468 : f32 = u_xlat3.x;
  u_xlat3.x = (x_3466 * x_3468);
  let x_3472 : f32 = u_xlat29.x;
  u_xlat58.x = ((-(x_3472) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3480 : f32 = u_xlat29.x;
  let x_3482 : f32 = u_xlat58.x;
  u_xlat29.x = (x_3480 * x_3482);
  let x_3486 : f32 = u_xlat29.x;
  u_xlat29.x = (x_3486 * 6.0f);
  let x_3498 : vec4<f32> = u_xlat8;
  let x_3501 : f32 = u_xlat29.x;
  let x_3502 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_3498.x, x_3498.y, x_3498.z), x_3501);
  u_xlat8 = x_3502;
  let x_3504 : f32 = u_xlat8.w;
  u_xlat29.x = (x_3504 + -1.0f);
  let x_3508 : f32 = x_48.unity_SpecCube0_HDR.w;
  let x_3510 : f32 = u_xlat29.x;
  u_xlat29.x = ((x_3508 * x_3510) + 1.0f);
  let x_3515 : f32 = u_xlat29.x;
  u_xlat29.x = max(x_3515, 0.0f);
  let x_3519 : f32 = u_xlat29.x;
  u_xlat29.x = log2(x_3519);
  let x_3523 : f32 = u_xlat29.x;
  let x_3525 : f32 = x_48.unity_SpecCube0_HDR.y;
  u_xlat29.x = (x_3523 * x_3525);
  let x_3529 : f32 = u_xlat29.x;
  u_xlat29.x = exp2(x_3529);
  let x_3533 : f32 = u_xlat29.x;
  let x_3535 : f32 = x_48.unity_SpecCube0_HDR.x;
  u_xlat29.x = (x_3533 * x_3535);
  let x_3538 : vec4<f32> = u_xlat8;
  let x_3540 : vec3<f32> = u_xlat29;
  let x_3542 : vec3<f32> = (vec3<f32>(x_3538.x, x_3538.y, x_3538.z) * vec3<f32>(x_3540.x, x_3540.x, x_3540.x));
  let x_3543 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3542.x, x_3542.y, x_3542.z, x_3543.w);
  let x_3545 : f32 = u_xlat81;
  let x_3547 : f32 = u_xlat81;
  let x_3551 : vec2<f32> = ((vec2<f32>(x_3545, x_3545) * vec2<f32>(x_3547, x_3547)) + vec2<f32>(-1.0f, 1.0f));
  let x_3552 : vec3<f32> = u_xlat29;
  u_xlat29 = vec3<f32>(x_3551.x, x_3552.y, x_3551.y);
  let x_3555 : f32 = u_xlat29.z;
  u_xlat81 = (1.0f / x_3555);
  let x_3557 : f32 = u_xlat83;
  u_xlat83 = (x_3557 + -0.03999999910593032837f);
  let x_3561 : f32 = u_xlat3.x;
  let x_3562 : f32 = u_xlat83;
  u_xlat3.x = ((x_3561 * x_3562) + 0.03999999910593032837f);
  let x_3568 : f32 = u_xlat3.x;
  let x_3569 : f32 = u_xlat81;
  u_xlat3.x = (x_3568 * x_3569);
  let x_3572 : vec4<f32> = u_xlat3;
  let x_3574 : vec4<f32> = u_xlat8;
  let x_3576 : vec3<f32> = (vec3<f32>(x_3572.x, x_3572.x, x_3572.x) * vec3<f32>(x_3574.x, x_3574.y, x_3574.z));
  let x_3577 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3576.x, x_3576.y, x_3576.z, x_3577.w);
  let x_3579 : vec3<f32> = u_xlat26;
  let x_3580 : vec3<f32> = u_xlat5;
  let x_3582 : vec4<f32> = u_xlat8;
  u_xlat26 = ((x_3579 * x_3580) + vec3<f32>(x_3582.x, x_3582.y, x_3582.z));
  let x_3586 : f32 = u_xlat0.x;
  let x_3588 : f32 = x_48.unity_LightData.z;
  u_xlat0.x = (x_3586 * x_3588);
  let x_3591 : vec4<f32> = u_xlat4;
  let x_3594 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_3591.x, x_3591.y, x_3591.z), vec3<f32>(x_3594.x, x_3594.y, x_3594.z));
  let x_3599 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_3599, 0.0f, 1.0f);
  let x_3603 : f32 = u_xlat0.x;
  let x_3605 : f32 = u_xlat3.x;
  u_xlat0.x = (x_3603 * x_3605);
  let x_3608 : vec3<f32> = u_xlat0;
  let x_3610 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_3608.x, x_3608.x, x_3608.x) * x_3610);
  let x_3612 : vec4<f32> = u_xlat7;
  let x_3615 : vec4<f32> = x_128.x_MainLightPosition;
  let x_3617 : vec3<f32> = (vec3<f32>(x_3612.x, x_3612.y, x_3612.z) + vec3<f32>(x_3615.x, x_3615.y, x_3615.z));
  let x_3618 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3617.x, x_3617.y, x_3617.z, x_3618.w);
  let x_3620 : vec4<f32> = u_xlat8;
  let x_3622 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_3620.x, x_3620.y, x_3620.z), vec3<f32>(x_3622.x, x_3622.y, x_3622.z));
  let x_3627 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_3627, 1.17549435e-38f);
  let x_3631 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_3631);
  let x_3634 : vec3<f32> = u_xlat0;
  let x_3636 : vec4<f32> = u_xlat8;
  let x_3638 : vec3<f32> = (vec3<f32>(x_3634.x, x_3634.x, x_3634.x) * vec3<f32>(x_3636.x, x_3636.y, x_3636.z));
  let x_3639 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3638.x, x_3638.y, x_3638.z, x_3639.w);
  let x_3641 : vec4<f32> = u_xlat4;
  let x_3643 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_3641.x, x_3641.y, x_3641.z), vec3<f32>(x_3643.x, x_3643.y, x_3643.z));
  let x_3648 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_3648, 0.0f, 1.0f);
  let x_3652 : vec4<f32> = x_128.x_MainLightPosition;
  let x_3654 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_3652.x, x_3652.y, x_3652.z), vec3<f32>(x_3654.x, x_3654.y, x_3654.z));
  let x_3659 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_3659, 0.0f, 1.0f);
  let x_3663 : f32 = u_xlat0.x;
  let x_3665 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3663 * x_3665);
  let x_3669 : f32 = u_xlat0.x;
  let x_3671 : f32 = u_xlat29.x;
  u_xlat0.x = ((x_3669 * x_3671) + 1.00001001358032226562f);
  let x_3677 : f32 = u_xlat3.x;
  let x_3679 : f32 = u_xlat3.x;
  u_xlat3.x = (x_3677 * x_3679);
  let x_3683 : f32 = u_xlat0.x;
  let x_3685 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3683 * x_3685);
  let x_3689 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_3689, 0.10000000149011611938f);
  let x_3694 : f32 = u_xlat0.x;
  let x_3696 : f32 = u_xlat3.x;
  u_xlat0.x = (x_3694 * x_3696);
  let x_3700 : f32 = u_xlat6.x;
  let x_3702 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3700 * x_3702);
  let x_3705 : f32 = u_xlat82;
  let x_3707 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3705 / x_3707);
  let x_3710 : vec3<f32> = u_xlat0;
  let x_3714 : vec3<f32> = u_xlat5;
  let x_3715 : vec3<f32> = ((vec3<f32>(x_3710.x, x_3710.x, x_3710.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3714);
  let x_3716 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3715.x, x_3715.y, x_3715.z, x_3716.w);
  let x_3718 : vec3<f32> = u_xlat28;
  let x_3719 : vec4<f32> = u_xlat8;
  u_xlat28 = (x_3718 * vec3<f32>(x_3719.x, x_3719.y, x_3719.z));
  let x_3723 : f32 = x_128.x_AdditionalLightsCount.x;
  let x_3725 : f32 = x_48.unity_LightData.y;
  u_xlat0.x = min(x_3723, x_3725);
  let x_3729 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_3729));
  let x_3733 : f32 = u_xlat2.x;
  let x_3736 : f32 = x_246.x_AdditionalShadowFadeParams.x;
  let x_3739 : f32 = x_246.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_3733 * x_3736) + x_3739);
  let x_3743 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_3743, 0.0f, 1.0f);
  let x_3747 : f32 = x_3308.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3749 : f32 = x_3308.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3751 : f32 = x_3308.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3753 : f32 = x_3308.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3754 : vec4<f32> = vec4<f32>(x_3747, x_3749, x_3751, x_3753);
  let x_3761 : vec4<bool> = (vec4<f32>(x_3754.x, x_3754.y, x_3754.z, x_3754.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_3762 : vec2<bool> = vec2<bool>(x_3761.x, x_3761.w);
  let x_3763 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_3762.x, x_3763.y, x_3763.z, x_3762.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3775 : u32 = u_xlatu_loop_1;
    let x_3776 : u32 = u_xlatu0;
    if ((x_3775 < x_3776)) {
    } else {
      break;
    }
    let x_3779 : u32 = u_xlatu_loop_1;
    u_xlatu58 = (x_3779 >> 2u);
    let x_3782 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_3782 & 3u));
    let x_3785 : u32 = u_xlatu58;
    let x_3788 : vec4<f32> = x_48.unity_LightIndices[bitcast<i32>(x_3785)];
    let x_3798 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3803 : vec4<u32> = indexable[x_3798];
    u_xlat58.x = dot(x_3788, bitcast<vec4<f32>>(x_3803));
    let x_3809 : f32 = u_xlat58.x;
    u_xlati58 = i32(x_3809);
    let x_3811 : vec3<f32> = vs_INTERP8;
    let x_3822 : i32 = u_xlati58;
    let x_3824 : vec4<f32> = x_3821.x_AdditionalLightsPosition[x_3822];
    let x_3827 : i32 = u_xlati58;
    let x_3829 : vec4<f32> = x_3821.x_AdditionalLightsPosition[x_3827];
    let x_3831 : vec3<f32> = ((-(x_3811) * vec3<f32>(x_3824.w, x_3824.w, x_3824.w)) + vec3<f32>(x_3829.x, x_3829.y, x_3829.z));
    let x_3832 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3831.x, x_3831.y, x_3831.z, x_3832.w);
    let x_3834 : vec4<f32> = u_xlat9;
    let x_3836 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_3834.x, x_3834.y, x_3834.z), vec3<f32>(x_3836.x, x_3836.y, x_3836.z));
    let x_3839 : f32 = u_xlat84;
    u_xlat84 = max(x_3839, 0.00006103515625f);
    let x_3842 : f32 = u_xlat84;
    u_xlat85 = inverseSqrt(x_3842);
    let x_3844 : f32 = u_xlat85;
    let x_3846 : vec4<f32> = u_xlat9;
    let x_3848 : vec3<f32> = (vec3<f32>(x_3844, x_3844, x_3844) * vec3<f32>(x_3846.x, x_3846.y, x_3846.z));
    let x_3849 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3848.x, x_3848.y, x_3848.z, x_3849.w);
    let x_3852 : f32 = u_xlat84;
    u_xlat86 = (1.0f / x_3852);
    let x_3854 : f32 = u_xlat84;
    let x_3855 : i32 = u_xlati58;
    let x_3857 : f32 = x_3821.x_AdditionalLightsAttenuation[x_3855].x;
    u_xlat84 = (x_3854 * x_3857);
    let x_3859 : f32 = u_xlat84;
    let x_3861 : f32 = u_xlat84;
    u_xlat84 = ((-(x_3859) * x_3861) + 1.0f);
    let x_3864 : f32 = u_xlat84;
    u_xlat84 = max(x_3864, 0.0f);
    let x_3866 : f32 = u_xlat84;
    let x_3867 : f32 = u_xlat84;
    u_xlat84 = (x_3866 * x_3867);
    let x_3869 : f32 = u_xlat84;
    let x_3870 : f32 = u_xlat86;
    u_xlat84 = (x_3869 * x_3870);
    let x_3872 : i32 = u_xlati58;
    let x_3874 : vec4<f32> = x_3821.x_AdditionalLightsSpotDir[x_3872];
    let x_3876 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_3874.x, x_3874.y, x_3874.z), vec3<f32>(x_3876.x, x_3876.y, x_3876.z));
    let x_3879 : f32 = u_xlat86;
    let x_3880 : i32 = u_xlati58;
    let x_3882 : f32 = x_3821.x_AdditionalLightsAttenuation[x_3880].z;
    let x_3884 : i32 = u_xlati58;
    let x_3886 : f32 = x_3821.x_AdditionalLightsAttenuation[x_3884].w;
    u_xlat86 = ((x_3879 * x_3882) + x_3886);
    let x_3888 : f32 = u_xlat86;
    u_xlat86 = clamp(x_3888, 0.0f, 1.0f);
    let x_3890 : f32 = u_xlat86;
    let x_3891 : f32 = u_xlat86;
    u_xlat86 = (x_3890 * x_3891);
    let x_3893 : f32 = u_xlat84;
    let x_3894 : f32 = u_xlat86;
    u_xlat84 = (x_3893 * x_3894);
    let x_3898 : i32 = u_xlati58;
    let x_3900 : f32 = x_246.x_AdditionalShadowParams[x_3898].w;
    u_xlati86 = i32(x_3900);
    let x_3903 : i32 = u_xlati86;
    u_xlatb87 = (x_3903 >= 0i);
    let x_3905 : bool = u_xlatb87;
    if (x_3905) {
      let x_3909 : i32 = u_xlati58;
      let x_3911 : f32 = x_246.x_AdditionalShadowParams[x_3909].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3911, x_3911, x_3911, x_3911))));
      let x_3915 : bool = u_xlatb87;
      if (x_3915) {
        let x_3919 : vec4<f32> = u_xlat10;
        let x_3922 : vec4<f32> = u_xlat10;
        let x_3925 : vec4<bool> = (abs(vec4<f32>(x_3919.z, x_3919.z, x_3919.y, x_3919.z)) >= abs(vec4<f32>(x_3922.x, x_3922.y, x_3922.x, x_3922.x)));
        let x_3927 : vec3<bool> = vec3<bool>(x_3925.x, x_3925.y, x_3925.z);
        let x_3928 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3927.x, x_3927.y, x_3927.z, x_3928.w);
        let x_3931 : bool = u_xlatb11.y;
        let x_3933 : bool = u_xlatb11.x;
        u_xlatb87 = (x_3931 & x_3933);
        let x_3935 : vec4<f32> = u_xlat10;
        let x_3938 : vec4<bool> = (-(vec4<f32>(x_3935.z, x_3935.y, x_3935.z, x_3935.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3939 : vec3<bool> = vec3<bool>(x_3938.x, x_3938.y, x_3938.w);
        let x_3940 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3939.x, x_3939.y, x_3940.z, x_3939.z);
        let x_3943 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3943);
        let x_3948 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3948);
        let x_3953 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_3953);
        let x_3956 : bool = u_xlatb11.z;
        if (x_3956) {
          let x_3961 : f32 = u_xlat11.y;
          x_3957 = x_3961;
        } else {
          let x_3963 : f32 = u_xlat88;
          x_3957 = x_3963;
        }
        let x_3964 : f32 = x_3957;
        u_xlat88 = x_3964;
        let x_3966 : bool = u_xlatb87;
        if (x_3966) {
          let x_3971 : f32 = u_xlat11.x;
          x_3967 = x_3971;
        } else {
          let x_3973 : f32 = u_xlat88;
          x_3967 = x_3973;
        }
        let x_3974 : f32 = x_3967;
        u_xlat87 = x_3974;
        let x_3975 : i32 = u_xlati58;
        let x_3977 : f32 = x_246.x_AdditionalShadowParams[x_3975].w;
        u_xlat88 = trunc(x_3977);
        let x_3979 : f32 = u_xlat87;
        let x_3980 : f32 = u_xlat88;
        u_xlat87 = (x_3979 + x_3980);
        let x_3982 : f32 = u_xlat87;
        u_xlati86 = i32(x_3982);
      }
      let x_3984 : i32 = u_xlati86;
      u_xlati86 = (x_3984 << bitcast<u32>(2i));
      let x_3986 : vec3<f32> = vs_INTERP8;
      let x_3989 : i32 = u_xlati86;
      let x_3992 : i32 = u_xlati86;
      let x_3996 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[((x_3989 + 1i) / 4i)][((x_3992 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3986.y, x_3986.y, x_3986.y, x_3986.y) * x_3996);
      let x_3998 : i32 = u_xlati86;
      let x_4000 : i32 = u_xlati86;
      let x_4003 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[(x_3998 / 4i)][(x_4000 % 4i)];
      let x_4004 : vec3<f32> = vs_INTERP8;
      let x_4007 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_4003 * vec4<f32>(x_4004.x, x_4004.x, x_4004.x, x_4004.x)) + x_4007);
      let x_4009 : i32 = u_xlati86;
      let x_4012 : i32 = u_xlati86;
      let x_4016 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[((x_4009 + 2i) / 4i)][((x_4012 + 2i) % 4i)];
      let x_4017 : vec3<f32> = vs_INTERP8;
      let x_4020 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_4016 * vec4<f32>(x_4017.z, x_4017.z, x_4017.z, x_4017.z)) + x_4020);
      let x_4022 : vec4<f32> = u_xlat11;
      let x_4023 : i32 = u_xlati86;
      let x_4026 : i32 = u_xlati86;
      let x_4030 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[((x_4023 + 3i) / 4i)][((x_4026 + 3i) % 4i)];
      u_xlat11 = (x_4022 + x_4030);
      let x_4032 : vec4<f32> = u_xlat11;
      let x_4034 : vec4<f32> = u_xlat11;
      let x_4036 : vec3<f32> = (vec3<f32>(x_4032.x, x_4032.y, x_4032.z) / vec3<f32>(x_4034.w, x_4034.w, x_4034.w));
      let x_4037 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4036.x, x_4036.y, x_4036.z, x_4037.w);
      let x_4040 : i32 = u_xlati58;
      let x_4042 : f32 = x_246.x_AdditionalShadowParams[x_4040].y;
      u_xlatb86 = (0.0f < x_4042);
      let x_4044 : bool = u_xlatb86;
      if (x_4044) {
        let x_4047 : i32 = u_xlati58;
        let x_4049 : f32 = x_246.x_AdditionalShadowParams[x_4047].y;
        u_xlatb86 = (1.0f == x_4049);
        let x_4051 : bool = u_xlatb86;
        if (x_4051) {
          let x_4054 : vec4<f32> = u_xlat11;
          let x_4058 : vec4<f32> = x_246.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_4054.x, x_4054.y, x_4054.x, x_4054.y) + x_4058);
          let x_4061 : vec4<f32> = u_xlat12;
          let x_4062 : vec2<f32> = vec2<f32>(x_4061.x, x_4061.y);
          let x_4064 : f32 = u_xlat11.z;
          txVec60 = vec3<f32>(x_4062.x, x_4062.y, x_4064);
          let x_4072 : vec3<f32> = txVec60;
          let x_4074 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4072.xy, x_4072.z);
          u_xlat13.x = x_4074;
          let x_4077 : vec4<f32> = u_xlat12;
          let x_4078 : vec2<f32> = vec2<f32>(x_4077.z, x_4077.w);
          let x_4080 : f32 = u_xlat11.z;
          txVec61 = vec3<f32>(x_4078.x, x_4078.y, x_4080);
          let x_4087 : vec3<f32> = txVec61;
          let x_4089 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4087.xy, x_4087.z);
          u_xlat13.y = x_4089;
          let x_4091 : vec4<f32> = u_xlat11;
          let x_4095 : vec4<f32> = x_246.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_4091.x, x_4091.y, x_4091.x, x_4091.y) + x_4095);
          let x_4098 : vec4<f32> = u_xlat12;
          let x_4099 : vec2<f32> = vec2<f32>(x_4098.x, x_4098.y);
          let x_4101 : f32 = u_xlat11.z;
          txVec62 = vec3<f32>(x_4099.x, x_4099.y, x_4101);
          let x_4108 : vec3<f32> = txVec62;
          let x_4110 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4108.xy, x_4108.z);
          u_xlat13.z = x_4110;
          let x_4113 : vec4<f32> = u_xlat12;
          let x_4114 : vec2<f32> = vec2<f32>(x_4113.z, x_4113.w);
          let x_4116 : f32 = u_xlat11.z;
          txVec63 = vec3<f32>(x_4114.x, x_4114.y, x_4116);
          let x_4123 : vec3<f32> = txVec63;
          let x_4125 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4123.xy, x_4123.z);
          u_xlat13.w = x_4125;
          let x_4127 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_4127, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_4130 : i32 = u_xlati58;
          let x_4132 : f32 = x_246.x_AdditionalShadowParams[x_4130].y;
          u_xlatb87 = (2.0f == x_4132);
          let x_4134 : bool = u_xlatb87;
          if (x_4134) {
            let x_4137 : vec4<f32> = u_xlat11;
            let x_4141 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4144 : vec2<f32> = ((vec2<f32>(x_4137.x, x_4137.y) * vec2<f32>(x_4141.z, x_4141.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4145 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4144.x, x_4144.y, x_4145.z, x_4145.w);
            let x_4147 : vec4<f32> = u_xlat12;
            let x_4149 : vec2<f32> = floor(vec2<f32>(x_4147.x, x_4147.y));
            let x_4150 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4149.x, x_4149.y, x_4150.z, x_4150.w);
            let x_4153 : vec4<f32> = u_xlat11;
            let x_4156 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4159 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4153.x, x_4153.y) * vec2<f32>(x_4156.z, x_4156.w)) + -(vec2<f32>(x_4159.x, x_4159.y)));
            let x_4163 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4163.x, x_4163.x, x_4163.y, x_4163.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4166 : vec4<f32> = u_xlat13;
            let x_4168 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4166.x, x_4166.x, x_4166.z, x_4166.z) * vec4<f32>(x_4168.x, x_4168.x, x_4168.z, x_4168.z));
            let x_4171 : vec4<f32> = u_xlat14;
            let x_4173 : vec2<f32> = (vec2<f32>(x_4171.y, x_4171.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_4174 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4173.x, x_4174.y, x_4173.y, x_4174.w);
            let x_4176 : vec4<f32> = u_xlat14;
            let x_4179 : vec2<f32> = u_xlat64;
            let x_4181 : vec2<f32> = ((vec2<f32>(x_4176.x, x_4176.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4179));
            let x_4182 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4181.x, x_4181.y, x_4182.z, x_4182.w);
            let x_4184 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_4184) + vec2<f32>(1.0f, 1.0f));
            let x_4187 : vec2<f32> = u_xlat64;
            let x_4188 : vec2<f32> = min(x_4187, vec2<f32>(0.0f, 0.0f));
            let x_4189 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4188.x, x_4188.y, x_4189.z, x_4189.w);
            let x_4191 : vec4<f32> = u_xlat15;
            let x_4194 : vec4<f32> = u_xlat15;
            let x_4197 : vec2<f32> = u_xlat66;
            let x_4198 : vec2<f32> = ((-(vec2<f32>(x_4191.x, x_4191.y)) * vec2<f32>(x_4194.x, x_4194.y)) + x_4197);
            let x_4199 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4198.x, x_4198.y, x_4199.z, x_4199.w);
            let x_4201 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_4201, vec2<f32>(0.0f, 0.0f));
            let x_4203 : vec2<f32> = u_xlat64;
            let x_4205 : vec2<f32> = u_xlat64;
            let x_4207 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_4203) * x_4205) + vec2<f32>(x_4207.y, x_4207.w));
            let x_4210 : vec4<f32> = u_xlat15;
            let x_4212 : vec2<f32> = (vec2<f32>(x_4210.x, x_4210.y) + vec2<f32>(1.0f, 1.0f));
            let x_4213 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4212.x, x_4212.y, x_4213.z, x_4213.w);
            let x_4215 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_4215 + vec2<f32>(1.0f, 1.0f));
            let x_4217 : vec4<f32> = u_xlat14;
            let x_4219 : vec2<f32> = (vec2<f32>(x_4217.x, x_4217.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4220 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4219.x, x_4219.y, x_4220.z, x_4220.w);
            let x_4222 : vec2<f32> = u_xlat66;
            let x_4223 : vec2<f32> = (x_4222 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4224 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4223.x, x_4223.y, x_4224.z, x_4224.w);
            let x_4226 : vec4<f32> = u_xlat15;
            let x_4228 : vec2<f32> = (vec2<f32>(x_4226.x, x_4226.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4229 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4228.x, x_4228.y, x_4229.z, x_4229.w);
            let x_4231 : vec2<f32> = u_xlat64;
            let x_4232 : vec2<f32> = (x_4231 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4233 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4232.x, x_4232.y, x_4233.z, x_4233.w);
            let x_4235 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_4235.y, x_4235.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4239 : f32 = u_xlat15.x;
            u_xlat16.z = x_4239;
            let x_4242 : f32 = u_xlat64.x;
            u_xlat16.w = x_4242;
            let x_4245 : f32 = u_xlat17.x;
            u_xlat14.z = x_4245;
            let x_4248 : f32 = u_xlat13.x;
            u_xlat14.w = x_4248;
            let x_4250 : vec4<f32> = u_xlat14;
            let x_4252 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_4250.z, x_4250.w, x_4250.x, x_4250.z) + vec4<f32>(x_4252.z, x_4252.w, x_4252.x, x_4252.z));
            let x_4256 : f32 = u_xlat16.y;
            u_xlat15.z = x_4256;
            let x_4259 : f32 = u_xlat64.y;
            u_xlat15.w = x_4259;
            let x_4262 : f32 = u_xlat14.y;
            u_xlat17.z = x_4262;
            let x_4265 : f32 = u_xlat13.z;
            u_xlat17.w = x_4265;
            let x_4267 : vec4<f32> = u_xlat15;
            let x_4269 : vec4<f32> = u_xlat17;
            let x_4271 : vec3<f32> = (vec3<f32>(x_4267.z, x_4267.y, x_4267.w) + vec3<f32>(x_4269.z, x_4269.y, x_4269.w));
            let x_4272 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4271.x, x_4271.y, x_4271.z, x_4272.w);
            let x_4274 : vec4<f32> = u_xlat14;
            let x_4276 : vec4<f32> = u_xlat18;
            let x_4278 : vec3<f32> = (vec3<f32>(x_4274.x, x_4274.z, x_4274.w) / vec3<f32>(x_4276.z, x_4276.w, x_4276.y));
            let x_4279 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4278.x, x_4278.y, x_4278.z, x_4279.w);
            let x_4281 : vec4<f32> = u_xlat14;
            let x_4283 : vec3<f32> = (vec3<f32>(x_4281.x, x_4281.y, x_4281.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4284 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4283.x, x_4283.y, x_4283.z, x_4284.w);
            let x_4286 : vec4<f32> = u_xlat17;
            let x_4288 : vec4<f32> = u_xlat13;
            let x_4290 : vec3<f32> = (vec3<f32>(x_4286.z, x_4286.y, x_4286.w) / vec3<f32>(x_4288.x, x_4288.y, x_4288.z));
            let x_4291 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4290.x, x_4290.y, x_4290.z, x_4291.w);
            let x_4293 : vec4<f32> = u_xlat15;
            let x_4295 : vec3<f32> = (vec3<f32>(x_4293.x, x_4293.y, x_4293.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4296 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4295.x, x_4295.y, x_4295.z, x_4296.w);
            let x_4298 : vec4<f32> = u_xlat14;
            let x_4301 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4303 : vec3<f32> = (vec3<f32>(x_4298.y, x_4298.x, x_4298.z) * vec3<f32>(x_4301.x, x_4301.x, x_4301.x));
            let x_4304 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4303.x, x_4303.y, x_4303.z, x_4304.w);
            let x_4306 : vec4<f32> = u_xlat15;
            let x_4309 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4311 : vec3<f32> = (vec3<f32>(x_4306.x, x_4306.y, x_4306.z) * vec3<f32>(x_4309.y, x_4309.y, x_4309.y));
            let x_4312 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4311.x, x_4311.y, x_4311.z, x_4312.w);
            let x_4315 : f32 = u_xlat15.x;
            u_xlat14.w = x_4315;
            let x_4317 : vec4<f32> = u_xlat12;
            let x_4320 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4323 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4317.x, x_4317.y, x_4317.x, x_4317.y) * vec4<f32>(x_4320.x, x_4320.y, x_4320.x, x_4320.y)) + vec4<f32>(x_4323.y, x_4323.w, x_4323.x, x_4323.w));
            let x_4326 : vec4<f32> = u_xlat12;
            let x_4329 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4332 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4326.x, x_4326.y) * vec2<f32>(x_4329.x, x_4329.y)) + vec2<f32>(x_4332.z, x_4332.w));
            let x_4336 : f32 = u_xlat14.y;
            u_xlat15.w = x_4336;
            let x_4338 : vec4<f32> = u_xlat15;
            let x_4339 : vec2<f32> = vec2<f32>(x_4338.y, x_4338.z);
            let x_4340 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4340.x, x_4339.x, x_4340.z, x_4339.y);
            let x_4342 : vec4<f32> = u_xlat12;
            let x_4345 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4348 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_4342.x, x_4342.y, x_4342.x, x_4342.y) * vec4<f32>(x_4345.x, x_4345.y, x_4345.x, x_4345.y)) + vec4<f32>(x_4348.x, x_4348.y, x_4348.z, x_4348.y));
            let x_4351 : vec4<f32> = u_xlat12;
            let x_4354 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4357 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4351.x, x_4351.y, x_4351.x, x_4351.y) * vec4<f32>(x_4354.x, x_4354.y, x_4354.x, x_4354.y)) + vec4<f32>(x_4357.w, x_4357.y, x_4357.w, x_4357.z));
            let x_4360 : vec4<f32> = u_xlat12;
            let x_4363 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4366 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4360.x, x_4360.y, x_4360.x, x_4360.y) * vec4<f32>(x_4363.x, x_4363.y, x_4363.x, x_4363.y)) + vec4<f32>(x_4366.x, x_4366.w, x_4366.z, x_4366.w));
            let x_4369 : vec4<f32> = u_xlat13;
            let x_4371 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_4369.x, x_4369.x, x_4369.x, x_4369.y) * vec4<f32>(x_4371.z, x_4371.w, x_4371.y, x_4371.z));
            let x_4374 : vec4<f32> = u_xlat13;
            let x_4376 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_4374.y, x_4374.y, x_4374.z, x_4374.z) * x_4376);
            let x_4379 : f32 = u_xlat13.z;
            let x_4381 : f32 = u_xlat18.y;
            u_xlat87 = (x_4379 * x_4381);
            let x_4384 : vec4<f32> = u_xlat16;
            let x_4385 : vec2<f32> = vec2<f32>(x_4384.x, x_4384.y);
            let x_4387 : f32 = u_xlat11.z;
            txVec64 = vec3<f32>(x_4385.x, x_4385.y, x_4387);
            let x_4394 : vec3<f32> = txVec64;
            let x_4396 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4394.xy, x_4394.z);
            u_xlat88 = x_4396;
            let x_4398 : vec4<f32> = u_xlat16;
            let x_4399 : vec2<f32> = vec2<f32>(x_4398.z, x_4398.w);
            let x_4401 : f32 = u_xlat11.z;
            txVec65 = vec3<f32>(x_4399.x, x_4399.y, x_4401);
            let x_4409 : vec3<f32> = txVec65;
            let x_4411 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4409.xy, x_4409.z);
            u_xlat89 = x_4411;
            let x_4412 : f32 = u_xlat89;
            let x_4414 : f32 = u_xlat19.y;
            u_xlat89 = (x_4412 * x_4414);
            let x_4417 : f32 = u_xlat19.x;
            let x_4418 : f32 = u_xlat88;
            let x_4420 : f32 = u_xlat89;
            u_xlat88 = ((x_4417 * x_4418) + x_4420);
            let x_4423 : vec2<f32> = u_xlat64;
            let x_4425 : f32 = u_xlat11.z;
            txVec66 = vec3<f32>(x_4423.x, x_4423.y, x_4425);
            let x_4432 : vec3<f32> = txVec66;
            let x_4434 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4432.xy, x_4432.z);
            u_xlat89 = x_4434;
            let x_4436 : f32 = u_xlat19.z;
            let x_4437 : f32 = u_xlat89;
            let x_4439 : f32 = u_xlat88;
            u_xlat88 = ((x_4436 * x_4437) + x_4439);
            let x_4442 : vec4<f32> = u_xlat15;
            let x_4443 : vec2<f32> = vec2<f32>(x_4442.x, x_4442.y);
            let x_4445 : f32 = u_xlat11.z;
            txVec67 = vec3<f32>(x_4443.x, x_4443.y, x_4445);
            let x_4452 : vec3<f32> = txVec67;
            let x_4454 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4452.xy, x_4452.z);
            u_xlat89 = x_4454;
            let x_4456 : f32 = u_xlat19.w;
            let x_4457 : f32 = u_xlat89;
            let x_4459 : f32 = u_xlat88;
            u_xlat88 = ((x_4456 * x_4457) + x_4459);
            let x_4462 : vec4<f32> = u_xlat17;
            let x_4463 : vec2<f32> = vec2<f32>(x_4462.x, x_4462.y);
            let x_4465 : f32 = u_xlat11.z;
            txVec68 = vec3<f32>(x_4463.x, x_4463.y, x_4465);
            let x_4472 : vec3<f32> = txVec68;
            let x_4474 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4472.xy, x_4472.z);
            u_xlat89 = x_4474;
            let x_4476 : f32 = u_xlat20.x;
            let x_4477 : f32 = u_xlat89;
            let x_4479 : f32 = u_xlat88;
            u_xlat88 = ((x_4476 * x_4477) + x_4479);
            let x_4482 : vec4<f32> = u_xlat17;
            let x_4483 : vec2<f32> = vec2<f32>(x_4482.z, x_4482.w);
            let x_4485 : f32 = u_xlat11.z;
            txVec69 = vec3<f32>(x_4483.x, x_4483.y, x_4485);
            let x_4492 : vec3<f32> = txVec69;
            let x_4494 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4492.xy, x_4492.z);
            u_xlat89 = x_4494;
            let x_4496 : f32 = u_xlat20.y;
            let x_4497 : f32 = u_xlat89;
            let x_4499 : f32 = u_xlat88;
            u_xlat88 = ((x_4496 * x_4497) + x_4499);
            let x_4502 : vec4<f32> = u_xlat15;
            let x_4503 : vec2<f32> = vec2<f32>(x_4502.z, x_4502.w);
            let x_4505 : f32 = u_xlat11.z;
            txVec70 = vec3<f32>(x_4503.x, x_4503.y, x_4505);
            let x_4512 : vec3<f32> = txVec70;
            let x_4514 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4512.xy, x_4512.z);
            u_xlat89 = x_4514;
            let x_4516 : f32 = u_xlat20.z;
            let x_4517 : f32 = u_xlat89;
            let x_4519 : f32 = u_xlat88;
            u_xlat88 = ((x_4516 * x_4517) + x_4519);
            let x_4522 : vec4<f32> = u_xlat14;
            let x_4523 : vec2<f32> = vec2<f32>(x_4522.x, x_4522.y);
            let x_4525 : f32 = u_xlat11.z;
            txVec71 = vec3<f32>(x_4523.x, x_4523.y, x_4525);
            let x_4532 : vec3<f32> = txVec71;
            let x_4534 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4532.xy, x_4532.z);
            u_xlat89 = x_4534;
            let x_4536 : f32 = u_xlat20.w;
            let x_4537 : f32 = u_xlat89;
            let x_4539 : f32 = u_xlat88;
            u_xlat88 = ((x_4536 * x_4537) + x_4539);
            let x_4542 : vec4<f32> = u_xlat14;
            let x_4543 : vec2<f32> = vec2<f32>(x_4542.z, x_4542.w);
            let x_4545 : f32 = u_xlat11.z;
            txVec72 = vec3<f32>(x_4543.x, x_4543.y, x_4545);
            let x_4552 : vec3<f32> = txVec72;
            let x_4554 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4552.xy, x_4552.z);
            u_xlat89 = x_4554;
            let x_4555 : f32 = u_xlat87;
            let x_4556 : f32 = u_xlat89;
            let x_4558 : f32 = u_xlat88;
            u_xlat86 = ((x_4555 * x_4556) + x_4558);
          } else {
            let x_4561 : vec4<f32> = u_xlat11;
            let x_4564 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4567 : vec2<f32> = ((vec2<f32>(x_4561.x, x_4561.y) * vec2<f32>(x_4564.z, x_4564.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4568 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4567.x, x_4567.y, x_4568.z, x_4568.w);
            let x_4570 : vec4<f32> = u_xlat12;
            let x_4572 : vec2<f32> = floor(vec2<f32>(x_4570.x, x_4570.y));
            let x_4573 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4572.x, x_4572.y, x_4573.z, x_4573.w);
            let x_4575 : vec4<f32> = u_xlat11;
            let x_4578 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4581 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4575.x, x_4575.y) * vec2<f32>(x_4578.z, x_4578.w)) + -(vec2<f32>(x_4581.x, x_4581.y)));
            let x_4585 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4585.x, x_4585.x, x_4585.y, x_4585.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4588 : vec4<f32> = u_xlat13;
            let x_4590 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4588.x, x_4588.x, x_4588.z, x_4588.z) * vec4<f32>(x_4590.x, x_4590.x, x_4590.z, x_4590.z));
            let x_4593 : vec4<f32> = u_xlat14;
            let x_4595 : vec2<f32> = (vec2<f32>(x_4593.y, x_4593.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4596 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4596.x, x_4595.x, x_4596.z, x_4595.y);
            let x_4598 : vec4<f32> = u_xlat14;
            let x_4601 : vec2<f32> = u_xlat64;
            let x_4603 : vec2<f32> = ((vec2<f32>(x_4598.x, x_4598.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4601));
            let x_4604 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4603.x, x_4604.y, x_4603.y, x_4604.w);
            let x_4606 : vec2<f32> = u_xlat64;
            let x_4608 : vec2<f32> = (-(x_4606) + vec2<f32>(1.0f, 1.0f));
            let x_4609 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4608.x, x_4608.y, x_4609.z, x_4609.w);
            let x_4611 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_4611, vec2<f32>(0.0f, 0.0f));
            let x_4613 : vec2<f32> = u_xlat66;
            let x_4615 : vec2<f32> = u_xlat66;
            let x_4617 : vec4<f32> = u_xlat14;
            let x_4619 : vec2<f32> = ((-(x_4613) * x_4615) + vec2<f32>(x_4617.x, x_4617.y));
            let x_4620 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4619.x, x_4619.y, x_4620.z, x_4620.w);
            let x_4622 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_4622, vec2<f32>(0.0f, 0.0f));
            let x_4625 : vec2<f32> = u_xlat66;
            let x_4627 : vec2<f32> = u_xlat66;
            let x_4629 : vec4<f32> = u_xlat13;
            let x_4631 : vec2<f32> = ((-(x_4625) * x_4627) + vec2<f32>(x_4629.y, x_4629.w));
            let x_4632 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_4631.x, x_4632.y, x_4631.y);
            let x_4634 : vec4<f32> = u_xlat14;
            let x_4636 : vec2<f32> = (vec2<f32>(x_4634.x, x_4634.y) + vec2<f32>(2.0f, 2.0f));
            let x_4637 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4636.x, x_4636.y, x_4637.z, x_4637.w);
            let x_4639 : vec3<f32> = u_xlat39;
            let x_4641 : vec2<f32> = (vec2<f32>(x_4639.x, x_4639.z) + vec2<f32>(2.0f, 2.0f));
            let x_4642 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4642.x, x_4641.x, x_4642.z, x_4641.y);
            let x_4645 : f32 = u_xlat13.y;
            u_xlat16.z = (x_4645 * 0.08163200318813323975f);
            let x_4648 : vec4<f32> = u_xlat13;
            let x_4650 : vec3<f32> = (vec3<f32>(x_4648.z, x_4648.x, x_4648.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4651 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4650.x, x_4650.y, x_4650.z, x_4651.w);
            let x_4653 : vec4<f32> = u_xlat14;
            let x_4655 : vec2<f32> = (vec2<f32>(x_4653.x, x_4653.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4656 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4655.x, x_4655.y, x_4656.z, x_4656.w);
            let x_4659 : f32 = u_xlat17.y;
            u_xlat16.x = x_4659;
            let x_4661 : vec2<f32> = u_xlat64;
            let x_4664 : vec2<f32> = ((vec2<f32>(x_4661.x, x_4661.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4665 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4665.x, x_4664.x, x_4665.z, x_4664.y);
            let x_4667 : vec2<f32> = u_xlat64;
            let x_4670 : vec2<f32> = ((vec2<f32>(x_4667.x, x_4667.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4671 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4670.x, x_4671.y, x_4670.y, x_4671.w);
            let x_4674 : f32 = u_xlat13.x;
            u_xlat14.y = x_4674;
            let x_4677 : f32 = u_xlat15.y;
            u_xlat14.w = x_4677;
            let x_4679 : vec4<f32> = u_xlat14;
            let x_4680 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4679 + x_4680);
            let x_4682 : vec2<f32> = u_xlat64;
            let x_4685 : vec2<f32> = ((vec2<f32>(x_4682.y, x_4682.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4686 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4686.x, x_4685.x, x_4686.z, x_4685.y);
            let x_4688 : vec2<f32> = u_xlat64;
            let x_4691 : vec2<f32> = ((vec2<f32>(x_4688.y, x_4688.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4692 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4691.x, x_4692.y, x_4691.y, x_4692.w);
            let x_4695 : f32 = u_xlat13.y;
            u_xlat15.y = x_4695;
            let x_4697 : vec4<f32> = u_xlat15;
            let x_4698 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4697 + x_4698);
            let x_4700 : vec4<f32> = u_xlat14;
            let x_4701 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_4700 / x_4701);
            let x_4703 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4703 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4705 : vec4<f32> = u_xlat15;
            let x_4706 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_4705 / x_4706);
            let x_4708 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4708 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4710 : vec4<f32> = u_xlat14;
            let x_4713 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4710.w, x_4710.x, x_4710.y, x_4710.z) * vec4<f32>(x_4713.x, x_4713.x, x_4713.x, x_4713.x));
            let x_4716 : vec4<f32> = u_xlat15;
            let x_4719 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_4716.x, x_4716.w, x_4716.y, x_4716.z) * vec4<f32>(x_4719.y, x_4719.y, x_4719.y, x_4719.y));
            let x_4722 : vec4<f32> = u_xlat14;
            let x_4723 : vec3<f32> = vec3<f32>(x_4722.y, x_4722.z, x_4722.w);
            let x_4724 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4723.x, x_4724.y, x_4723.y, x_4723.z);
            let x_4727 : f32 = u_xlat15.x;
            u_xlat17.y = x_4727;
            let x_4729 : vec4<f32> = u_xlat12;
            let x_4732 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4735 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4729.x, x_4729.y, x_4729.x, x_4729.y) * vec4<f32>(x_4732.x, x_4732.y, x_4732.x, x_4732.y)) + vec4<f32>(x_4735.x, x_4735.y, x_4735.z, x_4735.y));
            let x_4738 : vec4<f32> = u_xlat12;
            let x_4741 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4744 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_4738.x, x_4738.y) * vec2<f32>(x_4741.x, x_4741.y)) + vec2<f32>(x_4744.w, x_4744.y));
            let x_4748 : f32 = u_xlat17.y;
            u_xlat14.y = x_4748;
            let x_4751 : f32 = u_xlat15.z;
            u_xlat17.y = x_4751;
            let x_4753 : vec4<f32> = u_xlat12;
            let x_4756 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4759 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_4753.x, x_4753.y, x_4753.x, x_4753.y) * vec4<f32>(x_4756.x, x_4756.y, x_4756.x, x_4756.y)) + vec4<f32>(x_4759.x, x_4759.y, x_4759.z, x_4759.y));
            let x_4762 : vec4<f32> = u_xlat12;
            let x_4765 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4768 : vec4<f32> = u_xlat17;
            let x_4770 : vec2<f32> = ((vec2<f32>(x_4762.x, x_4762.y) * vec2<f32>(x_4765.x, x_4765.y)) + vec2<f32>(x_4768.w, x_4768.y));
            let x_4771 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_4770.x, x_4770.y, x_4771.z, x_4771.w);
            let x_4774 : f32 = u_xlat17.y;
            u_xlat14.z = x_4774;
            let x_4776 : vec4<f32> = u_xlat12;
            let x_4779 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4782 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4776.x, x_4776.y, x_4776.x, x_4776.y) * vec4<f32>(x_4779.x, x_4779.y, x_4779.x, x_4779.y)) + vec4<f32>(x_4782.x, x_4782.y, x_4782.x, x_4782.z));
            let x_4786 : f32 = u_xlat15.w;
            u_xlat17.y = x_4786;
            let x_4789 : vec4<f32> = u_xlat12;
            let x_4792 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4795 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4789.x, x_4789.y, x_4789.x, x_4789.y) * vec4<f32>(x_4792.x, x_4792.y, x_4792.x, x_4792.y)) + vec4<f32>(x_4795.x, x_4795.y, x_4795.z, x_4795.y));
            let x_4799 : vec4<f32> = u_xlat12;
            let x_4802 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4805 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_4799.x, x_4799.y) * vec2<f32>(x_4802.x, x_4802.y)) + vec2<f32>(x_4805.w, x_4805.y));
            let x_4809 : f32 = u_xlat17.y;
            u_xlat14.w = x_4809;
            let x_4812 : vec4<f32> = u_xlat12;
            let x_4815 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4818 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4812.x, x_4812.y) * vec2<f32>(x_4815.x, x_4815.y)) + vec2<f32>(x_4818.x, x_4818.w));
            let x_4821 : vec4<f32> = u_xlat17;
            let x_4822 : vec3<f32> = vec3<f32>(x_4821.x, x_4821.z, x_4821.w);
            let x_4823 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4822.x, x_4823.y, x_4822.y, x_4822.z);
            let x_4825 : vec4<f32> = u_xlat12;
            let x_4828 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4831 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4825.x, x_4825.y, x_4825.x, x_4825.y) * vec4<f32>(x_4828.x, x_4828.y, x_4828.x, x_4828.y)) + vec4<f32>(x_4831.x, x_4831.y, x_4831.z, x_4831.y));
            let x_4835 : vec4<f32> = u_xlat12;
            let x_4838 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4841 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4835.x, x_4835.y) * vec2<f32>(x_4838.x, x_4838.y)) + vec2<f32>(x_4841.w, x_4841.y));
            let x_4845 : f32 = u_xlat14.x;
            u_xlat15.x = x_4845;
            let x_4847 : vec4<f32> = u_xlat12;
            let x_4850 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4853 : vec4<f32> = u_xlat15;
            let x_4855 : vec2<f32> = ((vec2<f32>(x_4847.x, x_4847.y) * vec2<f32>(x_4850.x, x_4850.y)) + vec2<f32>(x_4853.x, x_4853.y));
            let x_4856 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4855.x, x_4855.y, x_4856.z, x_4856.w);
            let x_4859 : vec4<f32> = u_xlat13;
            let x_4861 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4859.x, x_4859.x, x_4859.x, x_4859.x) * x_4861);
            let x_4864 : vec4<f32> = u_xlat13;
            let x_4866 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4864.y, x_4864.y, x_4864.y, x_4864.y) * x_4866);
            let x_4869 : vec4<f32> = u_xlat13;
            let x_4871 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4869.z, x_4869.z, x_4869.z, x_4869.z) * x_4871);
            let x_4873 : vec4<f32> = u_xlat13;
            let x_4875 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4873.w, x_4873.w, x_4873.w, x_4873.w) * x_4875);
            let x_4878 : vec4<f32> = u_xlat18;
            let x_4879 : vec2<f32> = vec2<f32>(x_4878.x, x_4878.y);
            let x_4881 : f32 = u_xlat11.z;
            txVec73 = vec3<f32>(x_4879.x, x_4879.y, x_4881);
            let x_4888 : vec3<f32> = txVec73;
            let x_4890 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4888.xy, x_4888.z);
            u_xlat87 = x_4890;
            let x_4892 : vec4<f32> = u_xlat18;
            let x_4893 : vec2<f32> = vec2<f32>(x_4892.z, x_4892.w);
            let x_4895 : f32 = u_xlat11.z;
            txVec74 = vec3<f32>(x_4893.x, x_4893.y, x_4895);
            let x_4902 : vec3<f32> = txVec74;
            let x_4904 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4902.xy, x_4902.z);
            u_xlat88 = x_4904;
            let x_4905 : f32 = u_xlat88;
            let x_4907 : f32 = u_xlat23.y;
            u_xlat88 = (x_4905 * x_4907);
            let x_4910 : f32 = u_xlat23.x;
            let x_4911 : f32 = u_xlat87;
            let x_4913 : f32 = u_xlat88;
            u_xlat87 = ((x_4910 * x_4911) + x_4913);
            let x_4916 : vec2<f32> = u_xlat64;
            let x_4918 : f32 = u_xlat11.z;
            txVec75 = vec3<f32>(x_4916.x, x_4916.y, x_4918);
            let x_4925 : vec3<f32> = txVec75;
            let x_4927 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4925.xy, x_4925.z);
            u_xlat88 = x_4927;
            let x_4929 : f32 = u_xlat23.z;
            let x_4930 : f32 = u_xlat88;
            let x_4932 : f32 = u_xlat87;
            u_xlat87 = ((x_4929 * x_4930) + x_4932);
            let x_4935 : vec4<f32> = u_xlat21;
            let x_4936 : vec2<f32> = vec2<f32>(x_4935.x, x_4935.y);
            let x_4938 : f32 = u_xlat11.z;
            txVec76 = vec3<f32>(x_4936.x, x_4936.y, x_4938);
            let x_4945 : vec3<f32> = txVec76;
            let x_4947 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4945.xy, x_4945.z);
            u_xlat88 = x_4947;
            let x_4949 : f32 = u_xlat23.w;
            let x_4950 : f32 = u_xlat88;
            let x_4952 : f32 = u_xlat87;
            u_xlat87 = ((x_4949 * x_4950) + x_4952);
            let x_4955 : vec4<f32> = u_xlat19;
            let x_4956 : vec2<f32> = vec2<f32>(x_4955.x, x_4955.y);
            let x_4958 : f32 = u_xlat11.z;
            txVec77 = vec3<f32>(x_4956.x, x_4956.y, x_4958);
            let x_4965 : vec3<f32> = txVec77;
            let x_4967 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4965.xy, x_4965.z);
            u_xlat88 = x_4967;
            let x_4969 : f32 = u_xlat24.x;
            let x_4970 : f32 = u_xlat88;
            let x_4972 : f32 = u_xlat87;
            u_xlat87 = ((x_4969 * x_4970) + x_4972);
            let x_4975 : vec4<f32> = u_xlat19;
            let x_4976 : vec2<f32> = vec2<f32>(x_4975.z, x_4975.w);
            let x_4978 : f32 = u_xlat11.z;
            txVec78 = vec3<f32>(x_4976.x, x_4976.y, x_4978);
            let x_4985 : vec3<f32> = txVec78;
            let x_4987 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4985.xy, x_4985.z);
            u_xlat88 = x_4987;
            let x_4989 : f32 = u_xlat24.y;
            let x_4990 : f32 = u_xlat88;
            let x_4992 : f32 = u_xlat87;
            u_xlat87 = ((x_4989 * x_4990) + x_4992);
            let x_4995 : vec4<f32> = u_xlat20;
            let x_4996 : vec2<f32> = vec2<f32>(x_4995.x, x_4995.y);
            let x_4998 : f32 = u_xlat11.z;
            txVec79 = vec3<f32>(x_4996.x, x_4996.y, x_4998);
            let x_5005 : vec3<f32> = txVec79;
            let x_5007 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5005.xy, x_5005.z);
            u_xlat88 = x_5007;
            let x_5009 : f32 = u_xlat24.z;
            let x_5010 : f32 = u_xlat88;
            let x_5012 : f32 = u_xlat87;
            u_xlat87 = ((x_5009 * x_5010) + x_5012);
            let x_5015 : vec4<f32> = u_xlat21;
            let x_5016 : vec2<f32> = vec2<f32>(x_5015.z, x_5015.w);
            let x_5018 : f32 = u_xlat11.z;
            txVec80 = vec3<f32>(x_5016.x, x_5016.y, x_5018);
            let x_5025 : vec3<f32> = txVec80;
            let x_5027 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5025.xy, x_5025.z);
            u_xlat88 = x_5027;
            let x_5029 : f32 = u_xlat24.w;
            let x_5030 : f32 = u_xlat88;
            let x_5032 : f32 = u_xlat87;
            u_xlat87 = ((x_5029 * x_5030) + x_5032);
            let x_5035 : vec4<f32> = u_xlat22;
            let x_5036 : vec2<f32> = vec2<f32>(x_5035.x, x_5035.y);
            let x_5038 : f32 = u_xlat11.z;
            txVec81 = vec3<f32>(x_5036.x, x_5036.y, x_5038);
            let x_5045 : vec3<f32> = txVec81;
            let x_5047 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5045.xy, x_5045.z);
            u_xlat88 = x_5047;
            let x_5049 : f32 = u_xlat25.x;
            let x_5050 : f32 = u_xlat88;
            let x_5052 : f32 = u_xlat87;
            u_xlat87 = ((x_5049 * x_5050) + x_5052);
            let x_5055 : vec4<f32> = u_xlat22;
            let x_5056 : vec2<f32> = vec2<f32>(x_5055.z, x_5055.w);
            let x_5058 : f32 = u_xlat11.z;
            txVec82 = vec3<f32>(x_5056.x, x_5056.y, x_5058);
            let x_5065 : vec3<f32> = txVec82;
            let x_5067 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5065.xy, x_5065.z);
            u_xlat88 = x_5067;
            let x_5069 : f32 = u_xlat25.y;
            let x_5070 : f32 = u_xlat88;
            let x_5072 : f32 = u_xlat87;
            u_xlat87 = ((x_5069 * x_5070) + x_5072);
            let x_5075 : vec2<f32> = u_xlat40;
            let x_5077 : f32 = u_xlat11.z;
            txVec83 = vec3<f32>(x_5075.x, x_5075.y, x_5077);
            let x_5084 : vec3<f32> = txVec83;
            let x_5086 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5084.xy, x_5084.z);
            u_xlat88 = x_5086;
            let x_5088 : f32 = u_xlat25.z;
            let x_5089 : f32 = u_xlat88;
            let x_5091 : f32 = u_xlat87;
            u_xlat87 = ((x_5088 * x_5089) + x_5091);
            let x_5094 : vec2<f32> = u_xlat72;
            let x_5096 : f32 = u_xlat11.z;
            txVec84 = vec3<f32>(x_5094.x, x_5094.y, x_5096);
            let x_5103 : vec3<f32> = txVec84;
            let x_5105 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5103.xy, x_5103.z);
            u_xlat88 = x_5105;
            let x_5107 : f32 = u_xlat25.w;
            let x_5108 : f32 = u_xlat88;
            let x_5110 : f32 = u_xlat87;
            u_xlat87 = ((x_5107 * x_5108) + x_5110);
            let x_5113 : vec4<f32> = u_xlat17;
            let x_5114 : vec2<f32> = vec2<f32>(x_5113.x, x_5113.y);
            let x_5116 : f32 = u_xlat11.z;
            txVec85 = vec3<f32>(x_5114.x, x_5114.y, x_5116);
            let x_5123 : vec3<f32> = txVec85;
            let x_5125 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5123.xy, x_5123.z);
            u_xlat88 = x_5125;
            let x_5127 : f32 = u_xlat13.x;
            let x_5128 : f32 = u_xlat88;
            let x_5130 : f32 = u_xlat87;
            u_xlat87 = ((x_5127 * x_5128) + x_5130);
            let x_5133 : vec4<f32> = u_xlat17;
            let x_5134 : vec2<f32> = vec2<f32>(x_5133.z, x_5133.w);
            let x_5136 : f32 = u_xlat11.z;
            txVec86 = vec3<f32>(x_5134.x, x_5134.y, x_5136);
            let x_5143 : vec3<f32> = txVec86;
            let x_5145 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5143.xy, x_5143.z);
            u_xlat88 = x_5145;
            let x_5147 : f32 = u_xlat13.y;
            let x_5148 : f32 = u_xlat88;
            let x_5150 : f32 = u_xlat87;
            u_xlat87 = ((x_5147 * x_5148) + x_5150);
            let x_5153 : vec2<f32> = u_xlat67;
            let x_5155 : f32 = u_xlat11.z;
            txVec87 = vec3<f32>(x_5153.x, x_5153.y, x_5155);
            let x_5162 : vec3<f32> = txVec87;
            let x_5164 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5162.xy, x_5162.z);
            u_xlat88 = x_5164;
            let x_5166 : f32 = u_xlat13.z;
            let x_5167 : f32 = u_xlat88;
            let x_5169 : f32 = u_xlat87;
            u_xlat87 = ((x_5166 * x_5167) + x_5169);
            let x_5172 : vec4<f32> = u_xlat12;
            let x_5173 : vec2<f32> = vec2<f32>(x_5172.x, x_5172.y);
            let x_5175 : f32 = u_xlat11.z;
            txVec88 = vec3<f32>(x_5173.x, x_5173.y, x_5175);
            let x_5182 : vec3<f32> = txVec88;
            let x_5184 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5182.xy, x_5182.z);
            u_xlat88 = x_5184;
            let x_5186 : f32 = u_xlat13.w;
            let x_5187 : f32 = u_xlat88;
            let x_5189 : f32 = u_xlat87;
            u_xlat86 = ((x_5186 * x_5187) + x_5189);
          }
        }
      } else {
        let x_5193 : vec4<f32> = u_xlat11;
        let x_5194 : vec2<f32> = vec2<f32>(x_5193.x, x_5193.y);
        let x_5196 : f32 = u_xlat11.z;
        txVec89 = vec3<f32>(x_5194.x, x_5194.y, x_5196);
        let x_5203 : vec3<f32> = txVec89;
        let x_5205 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5203.xy, x_5203.z);
        u_xlat86 = x_5205;
      }
      let x_5206 : i32 = u_xlati58;
      let x_5208 : f32 = x_246.x_AdditionalShadowParams[x_5206].x;
      u_xlat87 = (1.0f + -(x_5208));
      let x_5211 : f32 = u_xlat86;
      let x_5212 : i32 = u_xlati58;
      let x_5214 : f32 = x_246.x_AdditionalShadowParams[x_5212].x;
      let x_5216 : f32 = u_xlat87;
      u_xlat86 = ((x_5211 * x_5214) + x_5216);
      let x_5219 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_5219);
      let x_5223 : f32 = u_xlat11.z;
      u_xlatb88 = (x_5223 >= 1.0f);
      let x_5225 : bool = u_xlatb87;
      let x_5226 : bool = u_xlatb88;
      u_xlatb87 = (x_5225 | x_5226);
      let x_5228 : bool = u_xlatb87;
      let x_5229 : f32 = u_xlat86;
      u_xlat86 = select(x_5229, 1.0f, x_5228);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_5232 : f32 = u_xlat86;
    u_xlat87 = (-(x_5232) + 1.0f);
    let x_5236 : f32 = u_xlat2.x;
    let x_5237 : f32 = u_xlat87;
    let x_5239 : f32 = u_xlat86;
    u_xlat86 = ((x_5236 * x_5237) + x_5239);
    let x_5242 : i32 = u_xlati58;
    u_xlati87 = (1i << bitcast<u32>((x_5242 & 31i)));
    let x_5246 : i32 = u_xlati87;
    let x_5249 : f32 = x_3308.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_5246) & bitcast<u32>(x_5249)));
    let x_5253 : i32 = u_xlati87;
    if ((x_5253 != 0i)) {
      let x_5257 : i32 = u_xlati58;
      let x_5259 : f32 = x_3308.x_AdditionalLightsLightTypes[x_5257].el;
      u_xlati87 = i32(x_5259);
      let x_5262 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_5262 != 0i));
      let x_5266 : i32 = u_xlati58;
      u_xlati11 = (x_5266 << bitcast<u32>(2i));
      let x_5268 : i32 = u_xlati88;
      if ((x_5268 != 0i)) {
        let x_5273 : vec3<f32> = vs_INTERP8;
        let x_5275 : i32 = u_xlati11;
        let x_5278 : i32 = u_xlati11;
        let x_5282 : vec4<f32> = x_3308.x_AdditionalLightsWorldToLights[((x_5275 + 1i) / 4i)][((x_5278 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_5273.y, x_5273.y, x_5273.y) * vec3<f32>(x_5282.x, x_5282.y, x_5282.w));
        let x_5285 : i32 = u_xlati11;
        let x_5287 : i32 = u_xlati11;
        let x_5290 : vec4<f32> = x_3308.x_AdditionalLightsWorldToLights[(x_5285 / 4i)][(x_5287 % 4i)];
        let x_5292 : vec3<f32> = vs_INTERP8;
        let x_5295 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_5290.x, x_5290.y, x_5290.w) * vec3<f32>(x_5292.x, x_5292.x, x_5292.x)) + x_5295);
        let x_5297 : i32 = u_xlati11;
        let x_5300 : i32 = u_xlati11;
        let x_5304 : vec4<f32> = x_3308.x_AdditionalLightsWorldToLights[((x_5297 + 2i) / 4i)][((x_5300 + 2i) % 4i)];
        let x_5306 : vec3<f32> = vs_INTERP8;
        let x_5309 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_5304.x, x_5304.y, x_5304.w) * vec3<f32>(x_5306.z, x_5306.z, x_5306.z)) + x_5309);
        let x_5311 : vec3<f32> = u_xlat37;
        let x_5312 : i32 = u_xlati11;
        let x_5315 : i32 = u_xlati11;
        let x_5319 : vec4<f32> = x_3308.x_AdditionalLightsWorldToLights[((x_5312 + 3i) / 4i)][((x_5315 + 3i) % 4i)];
        u_xlat37 = (x_5311 + vec3<f32>(x_5319.x, x_5319.y, x_5319.w));
        let x_5322 : vec3<f32> = u_xlat37;
        let x_5324 : vec3<f32> = u_xlat37;
        let x_5326 : vec2<f32> = (vec2<f32>(x_5322.x, x_5322.y) / vec2<f32>(x_5324.z, x_5324.z));
        let x_5327 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5326.x, x_5326.y, x_5327.z);
        let x_5329 : vec3<f32> = u_xlat37;
        let x_5332 : vec2<f32> = ((vec2<f32>(x_5329.x, x_5329.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_5333 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5332.x, x_5332.y, x_5333.z);
        let x_5335 : vec3<f32> = u_xlat37;
        let x_5339 : vec2<f32> = clamp(vec2<f32>(x_5335.x, x_5335.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_5340 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5339.x, x_5339.y, x_5340.z);
        let x_5342 : i32 = u_xlati58;
        let x_5344 : vec4<f32> = x_3308.x_AdditionalLightsCookieAtlasUVRects[x_5342];
        let x_5346 : vec3<f32> = u_xlat37;
        let x_5349 : i32 = u_xlati58;
        let x_5351 : vec4<f32> = x_3308.x_AdditionalLightsCookieAtlasUVRects[x_5349];
        let x_5353 : vec2<f32> = ((vec2<f32>(x_5344.x, x_5344.y) * vec2<f32>(x_5346.x, x_5346.y)) + vec2<f32>(x_5351.z, x_5351.w));
        let x_5354 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5353.x, x_5353.y, x_5354.z);
      } else {
        let x_5357 : i32 = u_xlati87;
        u_xlatb87 = (x_5357 == 1i);
        let x_5359 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_5359);
        let x_5361 : i32 = u_xlati87;
        if ((x_5361 != 0i)) {
          let x_5365 : vec3<f32> = vs_INTERP8;
          let x_5367 : i32 = u_xlati11;
          let x_5370 : i32 = u_xlati11;
          let x_5374 : vec4<f32> = x_3308.x_AdditionalLightsWorldToLights[((x_5367 + 1i) / 4i)][((x_5370 + 1i) % 4i)];
          let x_5376 : vec2<f32> = (vec2<f32>(x_5365.y, x_5365.y) * vec2<f32>(x_5374.x, x_5374.y));
          let x_5377 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5376.x, x_5376.y, x_5377.z, x_5377.w);
          let x_5379 : i32 = u_xlati11;
          let x_5381 : i32 = u_xlati11;
          let x_5384 : vec4<f32> = x_3308.x_AdditionalLightsWorldToLights[(x_5379 / 4i)][(x_5381 % 4i)];
          let x_5386 : vec3<f32> = vs_INTERP8;
          let x_5389 : vec4<f32> = u_xlat12;
          let x_5391 : vec2<f32> = ((vec2<f32>(x_5384.x, x_5384.y) * vec2<f32>(x_5386.x, x_5386.x)) + vec2<f32>(x_5389.x, x_5389.y));
          let x_5392 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5391.x, x_5391.y, x_5392.z, x_5392.w);
          let x_5394 : i32 = u_xlati11;
          let x_5397 : i32 = u_xlati11;
          let x_5401 : vec4<f32> = x_3308.x_AdditionalLightsWorldToLights[((x_5394 + 2i) / 4i)][((x_5397 + 2i) % 4i)];
          let x_5403 : vec3<f32> = vs_INTERP8;
          let x_5406 : vec4<f32> = u_xlat12;
          let x_5408 : vec2<f32> = ((vec2<f32>(x_5401.x, x_5401.y) * vec2<f32>(x_5403.z, x_5403.z)) + vec2<f32>(x_5406.x, x_5406.y));
          let x_5409 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5408.x, x_5408.y, x_5409.z, x_5409.w);
          let x_5411 : vec4<f32> = u_xlat12;
          let x_5413 : i32 = u_xlati11;
          let x_5416 : i32 = u_xlati11;
          let x_5420 : vec4<f32> = x_3308.x_AdditionalLightsWorldToLights[((x_5413 + 3i) / 4i)][((x_5416 + 3i) % 4i)];
          let x_5422 : vec2<f32> = (vec2<f32>(x_5411.x, x_5411.y) + vec2<f32>(x_5420.x, x_5420.y));
          let x_5423 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5422.x, x_5422.y, x_5423.z, x_5423.w);
          let x_5425 : vec4<f32> = u_xlat12;
          let x_5428 : vec2<f32> = ((vec2<f32>(x_5425.x, x_5425.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5429 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5428.x, x_5428.y, x_5429.z, x_5429.w);
          let x_5431 : vec4<f32> = u_xlat12;
          let x_5433 : vec2<f32> = fract(vec2<f32>(x_5431.x, x_5431.y));
          let x_5434 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5433.x, x_5433.y, x_5434.z, x_5434.w);
          let x_5436 : i32 = u_xlati58;
          let x_5438 : vec4<f32> = x_3308.x_AdditionalLightsCookieAtlasUVRects[x_5436];
          let x_5440 : vec4<f32> = u_xlat12;
          let x_5443 : i32 = u_xlati58;
          let x_5445 : vec4<f32> = x_3308.x_AdditionalLightsCookieAtlasUVRects[x_5443];
          let x_5447 : vec2<f32> = ((vec2<f32>(x_5438.x, x_5438.y) * vec2<f32>(x_5440.x, x_5440.y)) + vec2<f32>(x_5445.z, x_5445.w));
          let x_5448 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5447.x, x_5447.y, x_5448.z);
        } else {
          let x_5451 : vec3<f32> = vs_INTERP8;
          let x_5453 : i32 = u_xlati11;
          let x_5456 : i32 = u_xlati11;
          let x_5460 : vec4<f32> = x_3308.x_AdditionalLightsWorldToLights[((x_5453 + 1i) / 4i)][((x_5456 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_5451.y, x_5451.y, x_5451.y, x_5451.y) * x_5460);
          let x_5462 : i32 = u_xlati11;
          let x_5464 : i32 = u_xlati11;
          let x_5467 : vec4<f32> = x_3308.x_AdditionalLightsWorldToLights[(x_5462 / 4i)][(x_5464 % 4i)];
          let x_5468 : vec3<f32> = vs_INTERP8;
          let x_5471 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5467 * vec4<f32>(x_5468.x, x_5468.x, x_5468.x, x_5468.x)) + x_5471);
          let x_5473 : i32 = u_xlati11;
          let x_5476 : i32 = u_xlati11;
          let x_5480 : vec4<f32> = x_3308.x_AdditionalLightsWorldToLights[((x_5473 + 2i) / 4i)][((x_5476 + 2i) % 4i)];
          let x_5481 : vec3<f32> = vs_INTERP8;
          let x_5484 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5480 * vec4<f32>(x_5481.z, x_5481.z, x_5481.z, x_5481.z)) + x_5484);
          let x_5486 : vec4<f32> = u_xlat12;
          let x_5487 : i32 = u_xlati11;
          let x_5490 : i32 = u_xlati11;
          let x_5494 : vec4<f32> = x_3308.x_AdditionalLightsWorldToLights[((x_5487 + 3i) / 4i)][((x_5490 + 3i) % 4i)];
          u_xlat12 = (x_5486 + x_5494);
          let x_5496 : vec4<f32> = u_xlat12;
          let x_5498 : vec4<f32> = u_xlat12;
          let x_5500 : vec3<f32> = (vec3<f32>(x_5496.x, x_5496.y, x_5496.z) / vec3<f32>(x_5498.w, x_5498.w, x_5498.w));
          let x_5501 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5500.x, x_5500.y, x_5500.z, x_5501.w);
          let x_5503 : vec4<f32> = u_xlat12;
          let x_5505 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_5503.x, x_5503.y, x_5503.z), vec3<f32>(x_5505.x, x_5505.y, x_5505.z));
          let x_5508 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_5508);
          let x_5510 : f32 = u_xlat87;
          let x_5512 : vec4<f32> = u_xlat12;
          let x_5514 : vec3<f32> = (vec3<f32>(x_5510, x_5510, x_5510) * vec3<f32>(x_5512.x, x_5512.y, x_5512.z));
          let x_5515 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5514.x, x_5514.y, x_5514.z, x_5515.w);
          let x_5517 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_5517.x, x_5517.y, x_5517.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_5522 : f32 = u_xlat87;
          u_xlat87 = max(x_5522, 0.00000099999999747524f);
          let x_5525 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_5525);
          let x_5527 : f32 = u_xlat87;
          let x_5529 : vec4<f32> = u_xlat12;
          let x_5531 : vec3<f32> = (vec3<f32>(x_5527, x_5527, x_5527) * vec3<f32>(x_5529.z, x_5529.x, x_5529.y));
          let x_5532 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_5531.x, x_5531.y, x_5531.z, x_5532.w);
          let x_5535 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_5535);
          let x_5539 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_5539, 0.0f, 1.0f);
          let x_5542 : vec4<f32> = u_xlat13;
          let x_5544 : vec4<bool> = (vec4<f32>(x_5542.y, x_5542.y, x_5542.y, x_5542.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_5545 : vec2<bool> = vec2<bool>(x_5544.x, x_5544.w);
          let x_5546 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_5545.x, x_5546.y, x_5546.z, x_5545.y);
          let x_5549 : bool = u_xlatb11.x;
          if (x_5549) {
            let x_5554 : f32 = u_xlat13.x;
            x_5550 = x_5554;
          } else {
            let x_5557 : f32 = u_xlat13.x;
            x_5550 = -(x_5557);
          }
          let x_5559 : f32 = x_5550;
          u_xlat11.x = x_5559;
          let x_5562 : bool = u_xlatb11.w;
          if (x_5562) {
            let x_5567 : f32 = u_xlat13.x;
            x_5563 = x_5567;
          } else {
            let x_5570 : f32 = u_xlat13.x;
            x_5563 = -(x_5570);
          }
          let x_5572 : f32 = x_5563;
          u_xlat11.w = x_5572;
          let x_5574 : vec4<f32> = u_xlat12;
          let x_5576 : f32 = u_xlat87;
          let x_5579 : vec4<f32> = u_xlat11;
          let x_5581 : vec2<f32> = ((vec2<f32>(x_5574.x, x_5574.y) * vec2<f32>(x_5576, x_5576)) + vec2<f32>(x_5579.x, x_5579.w));
          let x_5582 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5581.x, x_5582.y, x_5582.z, x_5581.y);
          let x_5584 : vec4<f32> = u_xlat11;
          let x_5587 : vec2<f32> = ((vec2<f32>(x_5584.x, x_5584.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5588 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5587.x, x_5588.y, x_5588.z, x_5587.y);
          let x_5590 : vec4<f32> = u_xlat11;
          let x_5594 : vec2<f32> = clamp(vec2<f32>(x_5590.x, x_5590.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_5595 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5594.x, x_5595.y, x_5595.z, x_5594.y);
          let x_5597 : i32 = u_xlati58;
          let x_5599 : vec4<f32> = x_3308.x_AdditionalLightsCookieAtlasUVRects[x_5597];
          let x_5601 : vec4<f32> = u_xlat11;
          let x_5604 : i32 = u_xlati58;
          let x_5606 : vec4<f32> = x_3308.x_AdditionalLightsCookieAtlasUVRects[x_5604];
          let x_5608 : vec2<f32> = ((vec2<f32>(x_5599.x, x_5599.y) * vec2<f32>(x_5601.x, x_5601.w)) + vec2<f32>(x_5606.z, x_5606.w));
          let x_5609 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5608.x, x_5608.y, x_5609.z);
        }
      }
      let x_5616 : vec3<f32> = u_xlat37;
      let x_5618 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_5616.x, x_5616.y), 0.0f);
      u_xlat11 = x_5618;
      let x_5620 : bool = u_xlatb3.w;
      if (x_5620) {
        let x_5625 : f32 = u_xlat11.w;
        x_5621 = x_5625;
      } else {
        let x_5628 : f32 = u_xlat11.x;
        x_5621 = x_5628;
      }
      let x_5629 : f32 = x_5621;
      u_xlat87 = x_5629;
      let x_5631 : bool = u_xlatb3.x;
      if (x_5631) {
        let x_5635 : vec4<f32> = u_xlat11;
        x_5632 = vec3<f32>(x_5635.x, x_5635.y, x_5635.z);
      } else {
        let x_5638 : f32 = u_xlat87;
        x_5632 = vec3<f32>(x_5638, x_5638, x_5638);
      }
      let x_5640 : vec3<f32> = x_5632;
      let x_5641 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_5640.x, x_5640.y, x_5640.z, x_5641.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_5647 : vec4<f32> = u_xlat11;
    let x_5649 : i32 = u_xlati58;
    let x_5651 : vec4<f32> = x_3821.x_AdditionalLightsColor[x_5649];
    let x_5653 : vec3<f32> = (vec3<f32>(x_5647.x, x_5647.y, x_5647.z) * vec3<f32>(x_5651.x, x_5651.y, x_5651.z));
    let x_5654 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5653.x, x_5653.y, x_5653.z, x_5654.w);
    let x_5656 : f32 = u_xlat84;
    let x_5657 : f32 = u_xlat86;
    u_xlat58.x = (x_5656 * x_5657);
    let x_5660 : vec4<f32> = u_xlat4;
    let x_5662 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_5660.x, x_5660.y, x_5660.z), vec3<f32>(x_5662.x, x_5662.y, x_5662.z));
    let x_5665 : f32 = u_xlat84;
    u_xlat84 = clamp(x_5665, 0.0f, 1.0f);
    let x_5667 : f32 = u_xlat84;
    let x_5669 : f32 = u_xlat58.x;
    u_xlat58.x = (x_5667 * x_5669);
    let x_5672 : vec2<f32> = u_xlat58;
    let x_5674 : vec4<f32> = u_xlat11;
    let x_5676 : vec3<f32> = (vec3<f32>(x_5672.x, x_5672.x, x_5672.x) * vec3<f32>(x_5674.x, x_5674.y, x_5674.z));
    let x_5677 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5676.x, x_5676.y, x_5676.z, x_5677.w);
    let x_5679 : vec4<f32> = u_xlat9;
    let x_5681 : f32 = u_xlat85;
    let x_5684 : vec4<f32> = u_xlat7;
    let x_5686 : vec3<f32> = ((vec3<f32>(x_5679.x, x_5679.y, x_5679.z) * vec3<f32>(x_5681, x_5681, x_5681)) + vec3<f32>(x_5684.x, x_5684.y, x_5684.z));
    let x_5687 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5686.x, x_5686.y, x_5686.z, x_5687.w);
    let x_5689 : vec4<f32> = u_xlat9;
    let x_5691 : vec4<f32> = u_xlat9;
    u_xlat58.x = dot(vec3<f32>(x_5689.x, x_5689.y, x_5689.z), vec3<f32>(x_5691.x, x_5691.y, x_5691.z));
    let x_5696 : f32 = u_xlat58.x;
    u_xlat58.x = max(x_5696, 1.17549435e-38f);
    let x_5700 : f32 = u_xlat58.x;
    u_xlat58.x = inverseSqrt(x_5700);
    let x_5703 : vec2<f32> = u_xlat58;
    let x_5705 : vec4<f32> = u_xlat9;
    let x_5707 : vec3<f32> = (vec3<f32>(x_5703.x, x_5703.x, x_5703.x) * vec3<f32>(x_5705.x, x_5705.y, x_5705.z));
    let x_5708 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5707.x, x_5707.y, x_5707.z, x_5708.w);
    let x_5710 : vec4<f32> = u_xlat4;
    let x_5712 : vec4<f32> = u_xlat9;
    u_xlat58.x = dot(vec3<f32>(x_5710.x, x_5710.y, x_5710.z), vec3<f32>(x_5712.x, x_5712.y, x_5712.z));
    let x_5717 : f32 = u_xlat58.x;
    u_xlat58.x = clamp(x_5717, 0.0f, 1.0f);
    let x_5720 : vec4<f32> = u_xlat10;
    let x_5722 : vec4<f32> = u_xlat9;
    u_xlat58.y = dot(vec3<f32>(x_5720.x, x_5720.y, x_5720.z), vec3<f32>(x_5722.x, x_5722.y, x_5722.z));
    let x_5727 : f32 = u_xlat58.y;
    u_xlat58.y = clamp(x_5727, 0.0f, 1.0f);
    let x_5730 : vec2<f32> = u_xlat58;
    let x_5731 : vec2<f32> = u_xlat58;
    u_xlat58 = (x_5730 * x_5731);
    let x_5734 : f32 = u_xlat58.x;
    let x_5736 : f32 = u_xlat29.x;
    u_xlat58.x = ((x_5734 * x_5736) + 1.00001001358032226562f);
    let x_5741 : f32 = u_xlat58.x;
    let x_5743 : f32 = u_xlat58.x;
    u_xlat58.x = (x_5741 * x_5743);
    let x_5747 : f32 = u_xlat58.y;
    u_xlat84 = max(x_5747, 0.10000000149011611938f);
    let x_5749 : f32 = u_xlat84;
    let x_5751 : f32 = u_xlat58.x;
    u_xlat58.x = (x_5749 * x_5751);
    let x_5755 : f32 = u_xlat6.x;
    let x_5757 : f32 = u_xlat58.x;
    u_xlat58.x = (x_5755 * x_5757);
    let x_5760 : f32 = u_xlat82;
    let x_5762 : f32 = u_xlat58.x;
    u_xlat58.x = (x_5760 / x_5762);
    let x_5765 : vec2<f32> = u_xlat58;
    let x_5768 : vec3<f32> = u_xlat5;
    let x_5769 : vec3<f32> = ((vec3<f32>(x_5765.x, x_5765.x, x_5765.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5768);
    let x_5770 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5769.x, x_5769.y, x_5769.z, x_5770.w);
    let x_5772 : vec4<f32> = u_xlat9;
    let x_5774 : vec4<f32> = u_xlat11;
    let x_5777 : vec4<f32> = u_xlat8;
    let x_5779 : vec3<f32> = ((vec3<f32>(x_5772.x, x_5772.y, x_5772.z) * vec3<f32>(x_5774.x, x_5774.y, x_5774.z)) + vec3<f32>(x_5777.x, x_5777.y, x_5777.z));
    let x_5780 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5779.x, x_5779.y, x_5779.z, x_5780.w);

    continuing {
      let x_5782 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5782 + bitcast<u32>(1i));
    }
  }
  let x_5784 : vec3<f32> = u_xlat26;
  let x_5785 : vec3<f32> = u_xlat32;
  let x_5788 : vec3<f32> = u_xlat28;
  u_xlat0 = ((x_5784 * vec3<f32>(x_5785.x, x_5785.x, x_5785.x)) + x_5788);
  let x_5790 : vec4<f32> = u_xlat8;
  let x_5792 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_5790.x, x_5790.y, x_5790.z) + x_5792);
  let x_5796 : vec4<f32> = vs_INTERP6;
  let x_5798 : vec3<f32> = u_xlat1;
  let x_5800 : vec3<f32> = u_xlat0;
  let x_5801 : vec3<f32> = ((vec3<f32>(x_5796.w, x_5796.w, x_5796.w) * x_5798) + x_5800);
  let x_5802 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5801.x, x_5801.y, x_5801.z, x_5802.w);
  let x_5804 : bool = u_xlatb55;
  let x_5805 : f32 = u_xlat79;
  SV_Target0.w = select(1.0f, x_5805, x_5804);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_INTERP9_param : vec3<f32>, @location(0) vs_INTERP4_param : vec4<f32>, @location(1) vs_INTERP5_param : vec4<f32>, @location(2) vs_INTERP6_param : vec4<f32>, @location(3) vs_INTERP8_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP8 = vs_INTERP8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


