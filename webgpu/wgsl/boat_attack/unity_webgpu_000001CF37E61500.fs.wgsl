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

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatb29 : bool;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlatb55 : bool;

var<private> u_xlat52 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlatb59 : bool;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlat35 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat87 : f32;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat54 : f32;

var<private> u_xlatb28 : vec2<bool>;

@group(1) @binding(4) var<uniform> x_3317 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu84 : u32;

var<private> u_xlati85 : i32;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

@group(1) @binding(1) var<uniform> x_3807 : AdditionalLights;

var<private> u_xlat86 : f32;

var<private> u_xlati87 : i32;

var<private> u_xlatb88 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat89 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlatb87 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat39 : vec3<f32>;

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

var<private> u_xlat78 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu82 : u32;

var<private> u_xlatb84 : bool;

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
  var x_1754 : f32;
  var x_1874 : vec3<f32>;
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
  var x_3263 : f32;
  var x_3399 : f32;
  var x_3410 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3944 : f32;
  var x_3955 : f32;
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
  var x_5570 : f32;
  var x_5583 : f32;
  var x_5641 : f32;
  var x_5652 : vec3<f32>;
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
        u_xlat29 = x_839;
        let x_840 : f32 = u_xlat29;
        let x_842 : f32 = u_xlat13.y;
        u_xlat29 = (x_840 * x_842);
        let x_845 : f32 = u_xlat13.x;
        let x_847 : f32 = u_xlat3.x;
        let x_849 : f32 = u_xlat29;
        u_xlat3.x = ((x_845 * x_847) + x_849);
        let x_853 : vec2<f32> = u_xlat55;
        let x_855 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_853.x, x_853.y, x_855);
        let x_862 : vec3<f32> = txVec6;
        let x_864 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_862.xy, x_862.z);
        u_xlat29 = x_864;
        let x_866 : f32 = u_xlat13.z;
        let x_867 : f32 = u_xlat29;
        let x_870 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_866 * x_867) + x_870);
        let x_874 : vec4<f32> = u_xlat9;
        let x_875 : vec2<f32> = vec2<f32>(x_874.x, x_874.y);
        let x_877 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_875.x, x_875.y, x_877);
        let x_884 : vec3<f32> = txVec7;
        let x_886 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_884.xy, x_884.z);
        u_xlat29 = x_886;
        let x_888 : f32 = u_xlat13.w;
        let x_889 : f32 = u_xlat29;
        let x_892 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_888 * x_889) + x_892);
        let x_896 : vec4<f32> = u_xlat11;
        let x_897 : vec2<f32> = vec2<f32>(x_896.x, x_896.y);
        let x_899 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_897.x, x_897.y, x_899);
        let x_906 : vec3<f32> = txVec8;
        let x_908 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_906.xy, x_906.z);
        u_xlat29 = x_908;
        let x_910 : f32 = u_xlat14.x;
        let x_911 : f32 = u_xlat29;
        let x_914 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_910 * x_911) + x_914);
        let x_918 : vec4<f32> = u_xlat11;
        let x_919 : vec2<f32> = vec2<f32>(x_918.z, x_918.w);
        let x_921 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_919.x, x_919.y, x_921);
        let x_928 : vec3<f32> = txVec9;
        let x_930 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_928.xy, x_928.z);
        u_xlat29 = x_930;
        let x_932 : f32 = u_xlat14.y;
        let x_933 : f32 = u_xlat29;
        let x_936 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_932 * x_933) + x_936);
        let x_940 : vec4<f32> = u_xlat9;
        let x_941 : vec2<f32> = vec2<f32>(x_940.z, x_940.w);
        let x_943 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_941.x, x_941.y, x_943);
        let x_950 : vec3<f32> = txVec10;
        let x_952 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_950.xy, x_950.z);
        u_xlat29 = x_952;
        let x_954 : f32 = u_xlat14.z;
        let x_955 : f32 = u_xlat29;
        let x_958 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_954 * x_955) + x_958);
        let x_962 : vec4<f32> = u_xlat8;
        let x_963 : vec2<f32> = vec2<f32>(x_962.x, x_962.y);
        let x_965 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_963.x, x_963.y, x_965);
        let x_972 : vec3<f32> = txVec11;
        let x_974 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_972.xy, x_972.z);
        u_xlat29 = x_974;
        let x_976 : f32 = u_xlat14.w;
        let x_977 : f32 = u_xlat29;
        let x_980 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_976 * x_977) + x_980);
        let x_984 : vec4<f32> = u_xlat8;
        let x_985 : vec2<f32> = vec2<f32>(x_984.z, x_984.w);
        let x_987 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_985.x, x_985.y, x_987);
        let x_994 : vec3<f32> = txVec12;
        let x_996 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_994.xy, x_994.z);
        u_xlat29 = x_996;
        let x_997 : f32 = u_xlat80;
        let x_998 : f32 = u_xlat29;
        let x_1001 : f32 = u_xlat3.x;
        u_xlat79 = ((x_997 * x_998) + x_1001);
      } else {
        let x_1004 : vec4<f32> = u_xlat2;
        let x_1007 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1010 : vec2<f32> = ((vec2<f32>(x_1004.x, x_1004.y) * vec2<f32>(x_1007.z, x_1007.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1011 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1010.x, x_1010.y, x_1011.z, x_1011.w);
        let x_1013 : vec4<f32> = u_xlat3;
        let x_1015 : vec2<f32> = floor(vec2<f32>(x_1013.x, x_1013.y));
        let x_1016 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1015.x, x_1015.y, x_1016.z, x_1016.w);
        let x_1018 : vec4<f32> = u_xlat2;
        let x_1021 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1024 : vec4<f32> = u_xlat3;
        u_xlat55 = ((vec2<f32>(x_1018.x, x_1018.y) * vec2<f32>(x_1021.z, x_1021.w)) + -(vec2<f32>(x_1024.x, x_1024.y)));
        let x_1028 : vec2<f32> = u_xlat55;
        u_xlat7 = (vec4<f32>(x_1028.x, x_1028.x, x_1028.y, x_1028.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1031 : vec4<f32> = u_xlat7;
        let x_1033 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1031.x, x_1031.x, x_1031.z, x_1031.z) * vec4<f32>(x_1033.x, x_1033.x, x_1033.z, x_1033.z));
        let x_1036 : vec4<f32> = u_xlat8;
        let x_1040 : vec2<f32> = (vec2<f32>(x_1036.y, x_1036.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1041 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1041.x, x_1040.x, x_1041.z, x_1040.y);
        let x_1043 : vec4<f32> = u_xlat8;
        let x_1046 : vec2<f32> = u_xlat55;
        let x_1048 : vec2<f32> = ((vec2<f32>(x_1043.x, x_1043.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1046));
        let x_1049 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1048.x, x_1049.y, x_1048.y, x_1049.w);
        let x_1051 : vec2<f32> = u_xlat55;
        let x_1053 : vec2<f32> = (-(x_1051) + vec2<f32>(1.0f, 1.0f));
        let x_1054 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1053.x, x_1053.y, x_1054.z, x_1054.w);
        let x_1056 : vec2<f32> = u_xlat55;
        u_xlat60 = min(x_1056, vec2<f32>(0.0f, 0.0f));
        let x_1058 : vec2<f32> = u_xlat60;
        let x_1060 : vec2<f32> = u_xlat60;
        let x_1062 : vec4<f32> = u_xlat8;
        let x_1064 : vec2<f32> = ((-(x_1058) * x_1060) + vec2<f32>(x_1062.x, x_1062.y));
        let x_1065 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1064.x, x_1064.y, x_1065.z, x_1065.w);
        let x_1067 : vec2<f32> = u_xlat55;
        u_xlat60 = max(x_1067, vec2<f32>(0.0f, 0.0f));
        let x_1070 : vec2<f32> = u_xlat60;
        let x_1072 : vec2<f32> = u_xlat60;
        let x_1074 : vec4<f32> = u_xlat7;
        let x_1076 : vec2<f32> = ((-(x_1070) * x_1072) + vec2<f32>(x_1074.y, x_1074.w));
        let x_1077 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1076.x, x_1077.y, x_1076.y);
        let x_1079 : vec4<f32> = u_xlat8;
        let x_1082 : vec2<f32> = (vec2<f32>(x_1079.x, x_1079.y) + vec2<f32>(2.0f, 2.0f));
        let x_1083 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1082.x, x_1082.y, x_1083.z, x_1083.w);
        let x_1085 : vec3<f32> = u_xlat33;
        let x_1087 : vec2<f32> = (vec2<f32>(x_1085.x, x_1085.z) + vec2<f32>(2.0f, 2.0f));
        let x_1088 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1088.x, x_1087.x, x_1088.z, x_1087.y);
        let x_1091 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1091 * 0.08163200318813323975f);
        let x_1095 : vec4<f32> = u_xlat7;
        let x_1098 : vec3<f32> = (vec3<f32>(x_1095.z, x_1095.x, x_1095.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1099 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1098.x, x_1098.y, x_1098.z, x_1099.w);
        let x_1101 : vec4<f32> = u_xlat8;
        let x_1104 : vec2<f32> = (vec2<f32>(x_1101.x, x_1101.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1105 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1104.x, x_1104.y, x_1105.z, x_1105.w);
        let x_1108 : f32 = u_xlat11.y;
        u_xlat10.x = x_1108;
        let x_1110 : vec2<f32> = u_xlat55;
        let x_1117 : vec2<f32> = ((vec2<f32>(x_1110.x, x_1110.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1118 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1118.x, x_1117.x, x_1118.z, x_1117.y);
        let x_1120 : vec2<f32> = u_xlat55;
        let x_1124 : vec2<f32> = ((vec2<f32>(x_1120.x, x_1120.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1125 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1124.x, x_1125.y, x_1124.y, x_1125.w);
        let x_1128 : f32 = u_xlat7.x;
        u_xlat8.y = x_1128;
        let x_1131 : f32 = u_xlat9.y;
        u_xlat8.w = x_1131;
        let x_1133 : vec4<f32> = u_xlat8;
        let x_1134 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1133 + x_1134);
        let x_1136 : vec2<f32> = u_xlat55;
        let x_1139 : vec2<f32> = ((vec2<f32>(x_1136.y, x_1136.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1140 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1140.x, x_1139.x, x_1140.z, x_1139.y);
        let x_1142 : vec2<f32> = u_xlat55;
        let x_1145 : vec2<f32> = ((vec2<f32>(x_1142.y, x_1142.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1146 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1145.x, x_1146.y, x_1145.y, x_1146.w);
        let x_1149 : f32 = u_xlat7.y;
        u_xlat9.y = x_1149;
        let x_1151 : vec4<f32> = u_xlat9;
        let x_1152 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1151 + x_1152);
        let x_1154 : vec4<f32> = u_xlat8;
        let x_1155 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1154 / x_1155);
        let x_1157 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1157 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1163 : vec4<f32> = u_xlat9;
        let x_1164 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1163 / x_1164);
        let x_1166 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1166 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1168 : vec4<f32> = u_xlat8;
        let x_1171 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1168.w, x_1168.x, x_1168.y, x_1168.z) * vec4<f32>(x_1171.x, x_1171.x, x_1171.x, x_1171.x));
        let x_1174 : vec4<f32> = u_xlat9;
        let x_1177 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1174.x, x_1174.w, x_1174.y, x_1174.z) * vec4<f32>(x_1177.y, x_1177.y, x_1177.y, x_1177.y));
        let x_1180 : vec4<f32> = u_xlat8;
        let x_1181 : vec3<f32> = vec3<f32>(x_1180.y, x_1180.z, x_1180.w);
        let x_1182 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1181.x, x_1182.y, x_1181.y, x_1181.z);
        let x_1185 : f32 = u_xlat9.x;
        u_xlat11.y = x_1185;
        let x_1187 : vec4<f32> = u_xlat3;
        let x_1190 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1193 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1187.x, x_1187.y, x_1187.x, x_1187.y) * vec4<f32>(x_1190.x, x_1190.y, x_1190.x, x_1190.y)) + vec4<f32>(x_1193.x, x_1193.y, x_1193.z, x_1193.y));
        let x_1196 : vec4<f32> = u_xlat3;
        let x_1199 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1202 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1196.x, x_1196.y) * vec2<f32>(x_1199.x, x_1199.y)) + vec2<f32>(x_1202.w, x_1202.y));
        let x_1206 : f32 = u_xlat11.y;
        u_xlat8.y = x_1206;
        let x_1209 : f32 = u_xlat9.z;
        u_xlat11.y = x_1209;
        let x_1211 : vec4<f32> = u_xlat3;
        let x_1214 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1217 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1211.x, x_1211.y, x_1211.x, x_1211.y) * vec4<f32>(x_1214.x, x_1214.y, x_1214.x, x_1214.y)) + vec4<f32>(x_1217.x, x_1217.y, x_1217.z, x_1217.y));
        let x_1220 : vec4<f32> = u_xlat3;
        let x_1223 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1226 : vec4<f32> = u_xlat11;
        let x_1228 : vec2<f32> = ((vec2<f32>(x_1220.x, x_1220.y) * vec2<f32>(x_1223.x, x_1223.y)) + vec2<f32>(x_1226.w, x_1226.y));
        let x_1229 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1228.x, x_1228.y, x_1229.z, x_1229.w);
        let x_1232 : f32 = u_xlat11.y;
        u_xlat8.z = x_1232;
        let x_1235 : vec4<f32> = u_xlat3;
        let x_1238 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1241 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1235.x, x_1235.y, x_1235.x, x_1235.y) * vec4<f32>(x_1238.x, x_1238.y, x_1238.x, x_1238.y)) + vec4<f32>(x_1241.x, x_1241.y, x_1241.x, x_1241.z));
        let x_1245 : f32 = u_xlat9.w;
        u_xlat11.y = x_1245;
        let x_1248 : vec4<f32> = u_xlat3;
        let x_1251 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1254 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1248.x, x_1248.y, x_1248.x, x_1248.y) * vec4<f32>(x_1251.x, x_1251.y, x_1251.x, x_1251.y)) + vec4<f32>(x_1254.x, x_1254.y, x_1254.z, x_1254.y));
        let x_1258 : vec4<f32> = u_xlat3;
        let x_1261 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1264 : vec4<f32> = u_xlat11;
        u_xlat34 = ((vec2<f32>(x_1258.x, x_1258.y) * vec2<f32>(x_1261.x, x_1261.y)) + vec2<f32>(x_1264.w, x_1264.y));
        let x_1268 : f32 = u_xlat11.y;
        u_xlat8.w = x_1268;
        let x_1271 : vec4<f32> = u_xlat3;
        let x_1274 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1277 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1271.x, x_1271.y) * vec2<f32>(x_1274.x, x_1274.y)) + vec2<f32>(x_1277.x, x_1277.w));
        let x_1280 : vec4<f32> = u_xlat11;
        let x_1281 : vec3<f32> = vec3<f32>(x_1280.x, x_1280.z, x_1280.w);
        let x_1282 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1281.x, x_1282.y, x_1281.y, x_1281.z);
        let x_1284 : vec4<f32> = u_xlat3;
        let x_1287 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1290 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1284.x, x_1284.y, x_1284.x, x_1284.y) * vec4<f32>(x_1287.x, x_1287.y, x_1287.x, x_1287.y)) + vec4<f32>(x_1290.x, x_1290.y, x_1290.z, x_1290.y));
        let x_1294 : vec4<f32> = u_xlat3;
        let x_1297 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1300 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1294.x, x_1294.y) * vec2<f32>(x_1297.x, x_1297.y)) + vec2<f32>(x_1300.w, x_1300.y));
        let x_1304 : f32 = u_xlat8.x;
        u_xlat9.x = x_1304;
        let x_1306 : vec4<f32> = u_xlat3;
        let x_1309 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_1312 : vec4<f32> = u_xlat9;
        let x_1314 : vec2<f32> = ((vec2<f32>(x_1306.x, x_1306.y) * vec2<f32>(x_1309.x, x_1309.y)) + vec2<f32>(x_1312.x, x_1312.y));
        let x_1315 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1314.x, x_1314.y, x_1315.z, x_1315.w);
        let x_1318 : vec4<f32> = u_xlat7;
        let x_1320 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1318.x, x_1318.x, x_1318.x, x_1318.x) * x_1320);
        let x_1323 : vec4<f32> = u_xlat7;
        let x_1325 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1323.y, x_1323.y, x_1323.y, x_1323.y) * x_1325);
        let x_1328 : vec4<f32> = u_xlat7;
        let x_1330 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1328.z, x_1328.z, x_1328.z, x_1328.z) * x_1330);
        let x_1332 : vec4<f32> = u_xlat7;
        let x_1334 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1332.w, x_1332.w, x_1332.w, x_1332.w) * x_1334);
        let x_1337 : vec4<f32> = u_xlat12;
        let x_1338 : vec2<f32> = vec2<f32>(x_1337.x, x_1337.y);
        let x_1340 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_1338.x, x_1338.y, x_1340);
        let x_1347 : vec3<f32> = txVec13;
        let x_1349 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1347.xy, x_1347.z);
        u_xlat80 = x_1349;
        let x_1351 : vec4<f32> = u_xlat12;
        let x_1352 : vec2<f32> = vec2<f32>(x_1351.z, x_1351.w);
        let x_1354 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1352.x, x_1352.y, x_1354);
        let x_1362 : vec3<f32> = txVec14;
        let x_1364 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1362.xy, x_1362.z);
        u_xlat83 = x_1364;
        let x_1365 : f32 = u_xlat83;
        let x_1367 : f32 = u_xlat17.y;
        u_xlat83 = (x_1365 * x_1367);
        let x_1370 : f32 = u_xlat17.x;
        let x_1371 : f32 = u_xlat80;
        let x_1373 : f32 = u_xlat83;
        u_xlat80 = ((x_1370 * x_1371) + x_1373);
        let x_1376 : vec2<f32> = u_xlat55;
        let x_1378 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1376.x, x_1376.y, x_1378);
        let x_1385 : vec3<f32> = txVec15;
        let x_1387 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1385.xy, x_1385.z);
        u_xlat55.x = x_1387;
        let x_1390 : f32 = u_xlat17.z;
        let x_1392 : f32 = u_xlat55.x;
        let x_1394 : f32 = u_xlat80;
        u_xlat80 = ((x_1390 * x_1392) + x_1394);
        let x_1397 : vec4<f32> = u_xlat15;
        let x_1398 : vec2<f32> = vec2<f32>(x_1397.x, x_1397.y);
        let x_1400 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1398.x, x_1398.y, x_1400);
        let x_1407 : vec3<f32> = txVec16;
        let x_1409 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1407.xy, x_1407.z);
        u_xlat55.x = x_1409;
        let x_1412 : f32 = u_xlat17.w;
        let x_1414 : f32 = u_xlat55.x;
        let x_1416 : f32 = u_xlat80;
        u_xlat80 = ((x_1412 * x_1414) + x_1416);
        let x_1419 : vec4<f32> = u_xlat13;
        let x_1420 : vec2<f32> = vec2<f32>(x_1419.x, x_1419.y);
        let x_1422 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1420.x, x_1420.y, x_1422);
        let x_1429 : vec3<f32> = txVec17;
        let x_1431 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1429.xy, x_1429.z);
        u_xlat55.x = x_1431;
        let x_1434 : f32 = u_xlat18.x;
        let x_1436 : f32 = u_xlat55.x;
        let x_1438 : f32 = u_xlat80;
        u_xlat80 = ((x_1434 * x_1436) + x_1438);
        let x_1441 : vec4<f32> = u_xlat13;
        let x_1442 : vec2<f32> = vec2<f32>(x_1441.z, x_1441.w);
        let x_1444 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1442.x, x_1442.y, x_1444);
        let x_1451 : vec3<f32> = txVec18;
        let x_1453 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1451.xy, x_1451.z);
        u_xlat55.x = x_1453;
        let x_1456 : f32 = u_xlat18.y;
        let x_1458 : f32 = u_xlat55.x;
        let x_1460 : f32 = u_xlat80;
        u_xlat80 = ((x_1456 * x_1458) + x_1460);
        let x_1463 : vec4<f32> = u_xlat14;
        let x_1464 : vec2<f32> = vec2<f32>(x_1463.x, x_1463.y);
        let x_1466 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1464.x, x_1464.y, x_1466);
        let x_1473 : vec3<f32> = txVec19;
        let x_1475 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1473.xy, x_1473.z);
        u_xlat55.x = x_1475;
        let x_1478 : f32 = u_xlat18.z;
        let x_1480 : f32 = u_xlat55.x;
        let x_1482 : f32 = u_xlat80;
        u_xlat80 = ((x_1478 * x_1480) + x_1482);
        let x_1485 : vec4<f32> = u_xlat15;
        let x_1486 : vec2<f32> = vec2<f32>(x_1485.z, x_1485.w);
        let x_1488 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1486.x, x_1486.y, x_1488);
        let x_1495 : vec3<f32> = txVec20;
        let x_1497 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1495.xy, x_1495.z);
        u_xlat55.x = x_1497;
        let x_1500 : f32 = u_xlat18.w;
        let x_1502 : f32 = u_xlat55.x;
        let x_1504 : f32 = u_xlat80;
        u_xlat80 = ((x_1500 * x_1502) + x_1504);
        let x_1507 : vec4<f32> = u_xlat16;
        let x_1508 : vec2<f32> = vec2<f32>(x_1507.x, x_1507.y);
        let x_1510 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1508.x, x_1508.y, x_1510);
        let x_1517 : vec3<f32> = txVec21;
        let x_1519 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1517.xy, x_1517.z);
        u_xlat55.x = x_1519;
        let x_1522 : f32 = u_xlat19.x;
        let x_1524 : f32 = u_xlat55.x;
        let x_1526 : f32 = u_xlat80;
        u_xlat80 = ((x_1522 * x_1524) + x_1526);
        let x_1529 : vec4<f32> = u_xlat16;
        let x_1530 : vec2<f32> = vec2<f32>(x_1529.z, x_1529.w);
        let x_1532 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1530.x, x_1530.y, x_1532);
        let x_1539 : vec3<f32> = txVec22;
        let x_1541 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1539.xy, x_1539.z);
        u_xlat55.x = x_1541;
        let x_1544 : f32 = u_xlat19.y;
        let x_1546 : f32 = u_xlat55.x;
        let x_1548 : f32 = u_xlat80;
        u_xlat80 = ((x_1544 * x_1546) + x_1548);
        let x_1551 : vec2<f32> = u_xlat34;
        let x_1553 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1551.x, x_1551.y, x_1553);
        let x_1560 : vec3<f32> = txVec23;
        let x_1562 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1560.xy, x_1560.z);
        u_xlat55.x = x_1562;
        let x_1565 : f32 = u_xlat19.z;
        let x_1567 : f32 = u_xlat55.x;
        let x_1569 : f32 = u_xlat80;
        u_xlat80 = ((x_1565 * x_1567) + x_1569);
        let x_1572 : vec2<f32> = u_xlat66;
        let x_1574 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1572.x, x_1572.y, x_1574);
        let x_1581 : vec3<f32> = txVec24;
        let x_1583 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1581.xy, x_1581.z);
        u_xlat55.x = x_1583;
        let x_1586 : f32 = u_xlat19.w;
        let x_1588 : f32 = u_xlat55.x;
        let x_1590 : f32 = u_xlat80;
        u_xlat80 = ((x_1586 * x_1588) + x_1590);
        let x_1593 : vec4<f32> = u_xlat11;
        let x_1594 : vec2<f32> = vec2<f32>(x_1593.x, x_1593.y);
        let x_1596 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1594.x, x_1594.y, x_1596);
        let x_1603 : vec3<f32> = txVec25;
        let x_1605 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1603.xy, x_1603.z);
        u_xlat55.x = x_1605;
        let x_1608 : f32 = u_xlat7.x;
        let x_1610 : f32 = u_xlat55.x;
        let x_1612 : f32 = u_xlat80;
        u_xlat80 = ((x_1608 * x_1610) + x_1612);
        let x_1615 : vec4<f32> = u_xlat11;
        let x_1616 : vec2<f32> = vec2<f32>(x_1615.z, x_1615.w);
        let x_1618 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1616.x, x_1616.y, x_1618);
        let x_1625 : vec3<f32> = txVec26;
        let x_1627 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1625.xy, x_1625.z);
        u_xlat55.x = x_1627;
        let x_1630 : f32 = u_xlat7.y;
        let x_1632 : f32 = u_xlat55.x;
        let x_1634 : f32 = u_xlat80;
        u_xlat80 = ((x_1630 * x_1632) + x_1634);
        let x_1637 : vec2<f32> = u_xlat61;
        let x_1639 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1637.x, x_1637.y, x_1639);
        let x_1646 : vec3<f32> = txVec27;
        let x_1648 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1646.xy, x_1646.z);
        u_xlat55.x = x_1648;
        let x_1651 : f32 = u_xlat7.z;
        let x_1653 : f32 = u_xlat55.x;
        let x_1655 : f32 = u_xlat80;
        u_xlat80 = ((x_1651 * x_1653) + x_1655);
        let x_1658 : vec4<f32> = u_xlat3;
        let x_1659 : vec2<f32> = vec2<f32>(x_1658.x, x_1658.y);
        let x_1661 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1659.x, x_1659.y, x_1661);
        let x_1668 : vec3<f32> = txVec28;
        let x_1670 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1668.xy, x_1668.z);
        u_xlat3.x = x_1670;
        let x_1673 : f32 = u_xlat7.w;
        let x_1675 : f32 = u_xlat3.x;
        let x_1677 : f32 = u_xlat80;
        u_xlat79 = ((x_1673 * x_1675) + x_1677);
      }
    }
  } else {
    let x_1681 : vec4<f32> = u_xlat2;
    let x_1682 : vec2<f32> = vec2<f32>(x_1681.x, x_1681.y);
    let x_1684 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1682.x, x_1682.y, x_1684);
    let x_1691 : vec3<f32> = txVec29;
    let x_1693 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1691.xy, x_1691.z);
    u_xlat79 = x_1693;
  }
  let x_1695 : f32 = x_246.x_MainLightShadowParams.x;
  u_xlat80 = (-(x_1695) + 1.0f);
  let x_1698 : f32 = u_xlat79;
  let x_1700 : f32 = x_246.x_MainLightShadowParams.x;
  let x_1702 : f32 = u_xlat80;
  u_xlat79 = ((x_1698 * x_1700) + x_1702);
  let x_1706 : f32 = u_xlat2.z;
  u_xlatb3.x = (0.0f >= x_1706);
  let x_1711 : f32 = u_xlat2.z;
  u_xlatb29 = (x_1711 >= 1.0f);
  let x_1713 : bool = u_xlatb29;
  let x_1715 : bool = u_xlatb3.x;
  u_xlatb3.x = (x_1713 | x_1715);
  let x_1719 : bool = u_xlatb3.x;
  let x_1720 : f32 = u_xlat79;
  u_xlat79 = select(x_1720, 1.0f, x_1719);
  let x_1722 : vec3<f32> = u_xlat1;
  let x_1724 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat1.x = dot(x_1722, -(vec3<f32>(x_1724.x, x_1724.y, x_1724.z)));
  let x_1730 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1730, 0.0f, 1.0f);
  let x_1734 : f32 = u_xlat79;
  let x_1737 : vec4<f32> = x_128.x_MainLightColor;
  u_xlat27 = (vec3<f32>(x_1734, x_1734, x_1734) * vec3<f32>(x_1737.x, x_1737.y, x_1737.z));
  let x_1740 : vec3<f32> = u_xlat27;
  let x_1741 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_1740 * vec3<f32>(x_1741.x, x_1741.x, x_1741.x));
  let x_1744 : vec3<f32> = u_xlat1;
  let x_1745 : vec4<f32> = u_xlat4;
  u_xlat1 = (x_1744 * vec3<f32>(x_1745.x, x_1745.y, x_1745.z));
  let x_1749 : f32 = u_xlat4.w;
  u_xlatb79 = (x_1749 >= 0.40000000596046447754f);
  let x_1752 : bool = u_xlatb79;
  if (x_1752) {
    let x_1758 : f32 = u_xlat4.w;
    x_1754 = x_1758;
  } else {
    x_1754 = 0.0f;
  }
  let x_1760 : f32 = x_1754;
  u_xlat79 = x_1760;
  let x_1762 : f32 = u_xlat4.w;
  u_xlat29 = (x_1762 + -0.40000000596046447754f);
  let x_1766 : f32 = u_xlat4.w;
  u_xlat55.x = dpdxCoarse(x_1766);
  let x_1771 : f32 = u_xlat4.w;
  u_xlat81 = dpdyCoarse(x_1771);
  let x_1773 : f32 = u_xlat81;
  let x_1776 : f32 = u_xlat55.x;
  u_xlat55.x = (abs(x_1773) + abs(x_1776));
  let x_1781 : f32 = u_xlat55.x;
  u_xlat55.x = max(x_1781, 0.00009999999747378752f);
  let x_1785 : f32 = u_xlat29;
  let x_1787 : f32 = u_xlat55.x;
  u_xlat29 = (x_1785 / x_1787);
  let x_1789 : f32 = u_xlat29;
  u_xlat29 = (x_1789 + 0.5f);
  let x_1791 : f32 = u_xlat29;
  u_xlat29 = clamp(x_1791, 0.0f, 1.0f);
  let x_1795 : f32 = x_128.x_AlphaToMaskAvailable;
  u_xlatb55 = !((x_1795 == 0.0f));
  let x_1797 : bool = u_xlatb55;
  let x_1798 : f32 = u_xlat29;
  let x_1799 : f32 = u_xlat79;
  u_xlat79 = select(x_1799, x_1798, x_1797);
  let x_1801 : f32 = u_xlat79;
  u_xlat29 = (x_1801 + -0.00009999999747378752f);
  let x_1804 : f32 = u_xlat29;
  u_xlatb29 = (x_1804 < 0.0f);
  let x_1806 : bool = u_xlatb29;
  if (((select(0i, 1i, x_1806) * -1i) != 0i)) {
    discard;
  }
  let x_1814 : vec3<f32> = u_xlat26;
  let x_1815 : vec3<f32> = u_xlat32;
  u_xlat26 = (x_1814 * vec3<f32>(x_1815.y, x_1815.y, x_1815.y));
  let x_1818 : vec3<f32> = u_xlat32;
  let x_1820 : vec4<f32> = vs_INTERP4;
  let x_1823 : vec3<f32> = u_xlat26;
  u_xlat26 = ((vec3<f32>(x_1818.x, x_1818.x, x_1818.x) * vec3<f32>(x_1820.x, x_1820.y, x_1820.z)) + x_1823);
  let x_1825 : vec3<f32> = u_xlat32;
  let x_1827 : vec3<f32> = vs_INTERP9;
  let x_1829 : vec3<f32> = u_xlat26;
  u_xlat26 = ((vec3<f32>(x_1825.z, x_1825.z, x_1825.z) * x_1827) + x_1829);
  let x_1831 : vec3<f32> = u_xlat26;
  let x_1832 : vec3<f32> = u_xlat26;
  u_xlat29 = dot(x_1831, x_1832);
  let x_1834 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_1834);
  let x_1836 : vec3<f32> = u_xlat26;
  let x_1837 : f32 = u_xlat29;
  let x_1839 : vec3<f32> = (x_1836 * vec3<f32>(x_1837, x_1837, x_1837));
  let x_1840 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1839.x, x_1839.y, x_1839.z, x_1840.w);
  let x_1843 : f32 = x_128.unity_OrthoParams.w;
  u_xlatb26.x = (x_1843 == 0.0f);
  let x_1846 : vec3<f32> = vs_INTERP8;
  let x_1850 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  u_xlat32 = (-(x_1846) + x_1850);
  let x_1853 : vec3<f32> = u_xlat32;
  let x_1854 : vec3<f32> = u_xlat32;
  u_xlat52 = dot(x_1853, x_1854);
  let x_1856 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_1856);
  let x_1858 : f32 = u_xlat52;
  let x_1860 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1858, x_1858, x_1858) * x_1860);
  let x_1864 : f32 = x_128.unity_MatrixV[0i].z;
  u_xlat7.x = x_1864;
  let x_1867 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat7.y = x_1867;
  let x_1870 : f32 = x_128.unity_MatrixV[2i].z;
  u_xlat7.z = x_1870;
  let x_1873 : bool = u_xlatb26.x;
  if (x_1873) {
    let x_1877 : vec3<f32> = u_xlat32;
    x_1874 = x_1877;
  } else {
    let x_1879 : vec4<f32> = u_xlat7;
    x_1874 = vec3<f32>(x_1879.x, x_1879.y, x_1879.z);
  }
  let x_1881 : vec3<f32> = x_1874;
  u_xlat26 = x_1881;
  let x_1883 : f32 = vs_INTERP8.y;
  let x_1885 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat29 = (x_1883 * x_1885);
  let x_1888 : f32 = x_128.unity_MatrixV[0i].z;
  let x_1890 : f32 = vs_INTERP8.x;
  let x_1892 : f32 = u_xlat29;
  u_xlat29 = ((x_1888 * x_1890) + x_1892);
  let x_1895 : f32 = x_128.unity_MatrixV[2i].z;
  let x_1897 : f32 = vs_INTERP8.z;
  let x_1899 : f32 = u_xlat29;
  u_xlat29 = ((x_1895 * x_1897) + x_1899);
  let x_1901 : f32 = u_xlat29;
  let x_1903 : f32 = x_128.unity_MatrixV[3i].z;
  u_xlat29 = (x_1901 + x_1903);
  let x_1905 : f32 = u_xlat29;
  let x_1908 : f32 = x_128.x_ProjectionParams.y;
  u_xlat29 = (-(x_1905) + -(x_1908));
  let x_1911 : f32 = u_xlat29;
  u_xlat29 = max(x_1911, 0.0f);
  let x_1913 : f32 = u_xlat29;
  let x_1915 : f32 = x_128.unity_FogParams.x;
  u_xlat29 = (x_1913 * x_1915);
  u_xlat4.w = 1.0f;
  let x_1920 : vec4<f32> = x_48.unity_SHAr;
  let x_1921 : vec4<f32> = u_xlat4;
  u_xlat7.x = dot(x_1920, x_1921);
  let x_1926 : vec4<f32> = x_48.unity_SHAg;
  let x_1927 : vec4<f32> = u_xlat4;
  u_xlat7.y = dot(x_1926, x_1927);
  let x_1932 : vec4<f32> = x_48.unity_SHAb;
  let x_1933 : vec4<f32> = u_xlat4;
  u_xlat7.z = dot(x_1932, x_1933);
  let x_1936 : vec4<f32> = u_xlat4;
  let x_1938 : vec4<f32> = u_xlat4;
  u_xlat8 = (vec4<f32>(x_1936.y, x_1936.z, x_1936.z, x_1936.x) * vec4<f32>(x_1938.x, x_1938.y, x_1938.z, x_1938.z));
  let x_1943 : vec4<f32> = x_48.unity_SHBr;
  let x_1944 : vec4<f32> = u_xlat8;
  u_xlat9.x = dot(x_1943, x_1944);
  let x_1949 : vec4<f32> = x_48.unity_SHBg;
  let x_1950 : vec4<f32> = u_xlat8;
  u_xlat9.y = dot(x_1949, x_1950);
  let x_1955 : vec4<f32> = x_48.unity_SHBb;
  let x_1956 : vec4<f32> = u_xlat8;
  u_xlat9.z = dot(x_1955, x_1956);
  let x_1960 : f32 = u_xlat4.y;
  let x_1962 : f32 = u_xlat4.y;
  u_xlat81 = (x_1960 * x_1962);
  let x_1965 : f32 = u_xlat4.x;
  let x_1967 : f32 = u_xlat4.x;
  let x_1969 : f32 = u_xlat81;
  u_xlat81 = ((x_1965 * x_1967) + -(x_1969));
  let x_1974 : vec4<f32> = x_48.unity_SHC;
  let x_1976 : f32 = u_xlat81;
  let x_1979 : vec4<f32> = u_xlat9;
  u_xlat32 = ((vec3<f32>(x_1974.x, x_1974.y, x_1974.z) * vec3<f32>(x_1976, x_1976, x_1976)) + vec3<f32>(x_1979.x, x_1979.y, x_1979.z));
  let x_1982 : vec3<f32> = u_xlat32;
  let x_1983 : vec4<f32> = u_xlat7;
  u_xlat32 = (x_1982 + vec3<f32>(x_1983.x, x_1983.y, x_1983.z));
  let x_1986 : vec3<f32> = u_xlat32;
  u_xlat32 = max(x_1986, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1989 : f32 = u_xlat6.x;
  u_xlat6.x = x_1989;
  let x_1992 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1992, 0.0f, 1.0f);
  let x_1995 : f32 = u_xlat79;
  u_xlat79 = min(x_1995, 1.0f);
  let x_1997 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_1997 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_2002 : f32 = u_xlat6.x;
  u_xlat81 = (-(x_2002) + 1.0f);
  let x_2006 : f32 = u_xlat81;
  let x_2007 : f32 = u_xlat81;
  u_xlat82 = (x_2006 * x_2007);
  let x_2009 : f32 = u_xlat82;
  u_xlat82 = max(x_2009, 0.0078125f);
  let x_2012 : f32 = u_xlat82;
  let x_2013 : f32 = u_xlat82;
  u_xlat83 = (x_2012 * x_2013);
  let x_2016 : f32 = u_xlat6.x;
  u_xlat6.x = (x_2016 + 0.04000002145767211914f);
  let x_2021 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_2021, 1.0f);
  let x_2024 : f32 = u_xlat82;
  u_xlat7.x = ((x_2024 * 4.0f) + 2.0f);
  let x_2029 : f32 = vs_INTERP6.w;
  u_xlat33.x = min(x_2029, 1.0f);
  let x_2032 : bool = u_xlatb0;
  if (x_2032) {
    let x_2036 : f32 = x_246.x_MainLightShadowParams.y;
    u_xlatb0 = (x_2036 == 1.0f);
    let x_2038 : bool = u_xlatb0;
    if (x_2038) {
      let x_2041 : vec4<f32> = u_xlat2;
      let x_2044 : vec4<f32> = x_246.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_2041.x, x_2041.y, x_2041.x, x_2041.y) + x_2044);
      let x_2047 : vec4<f32> = u_xlat8;
      let x_2048 : vec2<f32> = vec2<f32>(x_2047.x, x_2047.y);
      let x_2050 : f32 = u_xlat2.z;
      txVec30 = vec3<f32>(x_2048.x, x_2048.y, x_2050);
      let x_2057 : vec3<f32> = txVec30;
      let x_2059 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2057.xy, x_2057.z);
      u_xlat9.x = x_2059;
      let x_2062 : vec4<f32> = u_xlat8;
      let x_2063 : vec2<f32> = vec2<f32>(x_2062.z, x_2062.w);
      let x_2065 : f32 = u_xlat2.z;
      txVec31 = vec3<f32>(x_2063.x, x_2063.y, x_2065);
      let x_2072 : vec3<f32> = txVec31;
      let x_2074 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2072.xy, x_2072.z);
      u_xlat9.y = x_2074;
      let x_2076 : vec4<f32> = u_xlat2;
      let x_2079 : vec4<f32> = x_246.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_2076.x, x_2076.y, x_2076.x, x_2076.y) + x_2079);
      let x_2082 : vec4<f32> = u_xlat8;
      let x_2083 : vec2<f32> = vec2<f32>(x_2082.x, x_2082.y);
      let x_2085 : f32 = u_xlat2.z;
      txVec32 = vec3<f32>(x_2083.x, x_2083.y, x_2085);
      let x_2092 : vec3<f32> = txVec32;
      let x_2094 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2092.xy, x_2092.z);
      u_xlat9.z = x_2094;
      let x_2097 : vec4<f32> = u_xlat8;
      let x_2098 : vec2<f32> = vec2<f32>(x_2097.z, x_2097.w);
      let x_2100 : f32 = u_xlat2.z;
      txVec33 = vec3<f32>(x_2098.x, x_2098.y, x_2100);
      let x_2107 : vec3<f32> = txVec33;
      let x_2109 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2107.xy, x_2107.z);
      u_xlat9.w = x_2109;
      let x_2111 : vec4<f32> = u_xlat9;
      u_xlat0.x = dot(x_2111, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_2117 : f32 = x_246.x_MainLightShadowParams.y;
      u_xlatb59 = (x_2117 == 2.0f);
      let x_2119 : bool = u_xlatb59;
      if (x_2119) {
        let x_2123 : vec4<f32> = u_xlat2;
        let x_2126 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        u_xlat59 = ((vec2<f32>(x_2123.x, x_2123.y) * vec2<f32>(x_2126.z, x_2126.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2130 : vec2<f32> = u_xlat59;
        u_xlat59 = floor(x_2130);
        let x_2132 : vec4<f32> = u_xlat2;
        let x_2135 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2138 : vec2<f32> = u_xlat59;
        let x_2140 : vec2<f32> = ((vec2<f32>(x_2132.x, x_2132.y) * vec2<f32>(x_2135.z, x_2135.w)) + -(x_2138));
        let x_2141 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2140.x, x_2140.y, x_2141.z, x_2141.w);
        let x_2143 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2143.x, x_2143.x, x_2143.y, x_2143.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2146 : vec4<f32> = u_xlat9;
        let x_2148 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2146.x, x_2146.x, x_2146.z, x_2146.z) * vec4<f32>(x_2148.x, x_2148.x, x_2148.z, x_2148.z));
        let x_2151 : vec4<f32> = u_xlat10;
        u_xlat60 = (vec2<f32>(x_2151.y, x_2151.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_2154 : vec4<f32> = u_xlat10;
        let x_2157 : vec4<f32> = u_xlat8;
        let x_2160 : vec2<f32> = ((vec2<f32>(x_2154.x, x_2154.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2157.x, x_2157.y)));
        let x_2161 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2160.x, x_2161.y, x_2160.y, x_2161.w);
        let x_2163 : vec4<f32> = u_xlat8;
        let x_2166 : vec2<f32> = (-(vec2<f32>(x_2163.x, x_2163.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2167 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2166.x, x_2166.y, x_2167.z, x_2167.w);
        let x_2170 : vec4<f32> = u_xlat8;
        u_xlat62 = min(vec2<f32>(x_2170.x, x_2170.y), vec2<f32>(0.0f, 0.0f));
        let x_2173 : vec2<f32> = u_xlat62;
        let x_2175 : vec2<f32> = u_xlat62;
        let x_2177 : vec4<f32> = u_xlat10;
        u_xlat62 = ((-(x_2173) * x_2175) + vec2<f32>(x_2177.x, x_2177.y));
        let x_2180 : vec4<f32> = u_xlat8;
        let x_2182 : vec2<f32> = max(vec2<f32>(x_2180.x, x_2180.y), vec2<f32>(0.0f, 0.0f));
        let x_2183 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2182.x, x_2182.y, x_2183.z, x_2183.w);
        let x_2185 : vec4<f32> = u_xlat8;
        let x_2188 : vec4<f32> = u_xlat8;
        let x_2191 : vec4<f32> = u_xlat9;
        let x_2193 : vec2<f32> = ((-(vec2<f32>(x_2185.x, x_2185.y)) * vec2<f32>(x_2188.x, x_2188.y)) + vec2<f32>(x_2191.y, x_2191.w));
        let x_2194 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2193.x, x_2193.y, x_2194.z, x_2194.w);
        let x_2196 : vec2<f32> = u_xlat62;
        u_xlat62 = (x_2196 + vec2<f32>(1.0f, 1.0f));
        let x_2198 : vec4<f32> = u_xlat8;
        let x_2200 : vec2<f32> = (vec2<f32>(x_2198.x, x_2198.y) + vec2<f32>(1.0f, 1.0f));
        let x_2201 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2200.x, x_2200.y, x_2201.z, x_2201.w);
        let x_2203 : vec4<f32> = u_xlat9;
        let x_2205 : vec2<f32> = (vec2<f32>(x_2203.x, x_2203.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2206 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2205.x, x_2205.y, x_2206.z, x_2206.w);
        let x_2208 : vec4<f32> = u_xlat10;
        let x_2210 : vec2<f32> = (vec2<f32>(x_2208.x, x_2208.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2211 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2210.x, x_2210.y, x_2211.z, x_2211.w);
        let x_2213 : vec2<f32> = u_xlat62;
        let x_2214 : vec2<f32> = (x_2213 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2215 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2214.x, x_2214.y, x_2215.z, x_2215.w);
        let x_2217 : vec4<f32> = u_xlat8;
        let x_2219 : vec2<f32> = (vec2<f32>(x_2217.x, x_2217.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2220 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2219.x, x_2219.y, x_2220.z, x_2220.w);
        let x_2222 : vec4<f32> = u_xlat9;
        let x_2224 : vec2<f32> = (vec2<f32>(x_2222.y, x_2222.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2225 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2224.x, x_2224.y, x_2225.z, x_2225.w);
        let x_2228 : f32 = u_xlat10.x;
        u_xlat11.z = x_2228;
        let x_2231 : f32 = u_xlat8.x;
        u_xlat11.w = x_2231;
        let x_2234 : f32 = u_xlat13.x;
        u_xlat12.z = x_2234;
        let x_2237 : f32 = u_xlat60.x;
        u_xlat12.w = x_2237;
        let x_2239 : vec4<f32> = u_xlat11;
        let x_2241 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_2239.z, x_2239.w, x_2239.x, x_2239.z) + vec4<f32>(x_2241.z, x_2241.w, x_2241.x, x_2241.z));
        let x_2245 : f32 = u_xlat11.y;
        u_xlat10.z = x_2245;
        let x_2248 : f32 = u_xlat8.y;
        u_xlat10.w = x_2248;
        let x_2251 : f32 = u_xlat12.y;
        u_xlat13.z = x_2251;
        let x_2254 : f32 = u_xlat60.y;
        u_xlat13.w = x_2254;
        let x_2256 : vec4<f32> = u_xlat10;
        let x_2258 : vec4<f32> = u_xlat13;
        let x_2260 : vec3<f32> = (vec3<f32>(x_2256.z, x_2256.y, x_2256.w) + vec3<f32>(x_2258.z, x_2258.y, x_2258.w));
        let x_2261 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2260.x, x_2260.y, x_2260.z, x_2261.w);
        let x_2263 : vec4<f32> = u_xlat12;
        let x_2265 : vec4<f32> = u_xlat9;
        let x_2267 : vec3<f32> = (vec3<f32>(x_2263.x, x_2263.z, x_2263.w) / vec3<f32>(x_2265.z, x_2265.w, x_2265.y));
        let x_2268 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2267.x, x_2267.y, x_2267.z, x_2268.w);
        let x_2270 : vec4<f32> = u_xlat10;
        let x_2272 : vec3<f32> = (vec3<f32>(x_2270.x, x_2270.y, x_2270.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2273 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2272.x, x_2272.y, x_2272.z, x_2273.w);
        let x_2275 : vec4<f32> = u_xlat13;
        let x_2277 : vec4<f32> = u_xlat8;
        let x_2279 : vec3<f32> = (vec3<f32>(x_2275.z, x_2275.y, x_2275.w) / vec3<f32>(x_2277.x, x_2277.y, x_2277.z));
        let x_2280 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2279.x, x_2279.y, x_2279.z, x_2280.w);
        let x_2282 : vec4<f32> = u_xlat11;
        let x_2284 : vec3<f32> = (vec3<f32>(x_2282.x, x_2282.y, x_2282.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2285 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2284.x, x_2284.y, x_2284.z, x_2285.w);
        let x_2287 : vec4<f32> = u_xlat10;
        let x_2290 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2292 : vec3<f32> = (vec3<f32>(x_2287.y, x_2287.x, x_2287.z) * vec3<f32>(x_2290.x, x_2290.x, x_2290.x));
        let x_2293 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2292.x, x_2292.y, x_2292.z, x_2293.w);
        let x_2295 : vec4<f32> = u_xlat11;
        let x_2298 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2300 : vec3<f32> = (vec3<f32>(x_2295.x, x_2295.y, x_2295.z) * vec3<f32>(x_2298.y, x_2298.y, x_2298.y));
        let x_2301 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2300.x, x_2300.y, x_2300.z, x_2301.w);
        let x_2304 : f32 = u_xlat11.x;
        u_xlat10.w = x_2304;
        let x_2306 : vec2<f32> = u_xlat59;
        let x_2309 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2312 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_2306.x, x_2306.y, x_2306.x, x_2306.y) * vec4<f32>(x_2309.x, x_2309.y, x_2309.x, x_2309.y)) + vec4<f32>(x_2312.y, x_2312.w, x_2312.x, x_2312.w));
        let x_2315 : vec2<f32> = u_xlat59;
        let x_2317 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2320 : vec4<f32> = u_xlat10;
        let x_2322 : vec2<f32> = ((x_2315 * vec2<f32>(x_2317.x, x_2317.y)) + vec2<f32>(x_2320.z, x_2320.w));
        let x_2323 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2322.x, x_2322.y, x_2323.z, x_2323.w);
        let x_2326 : f32 = u_xlat10.y;
        u_xlat11.w = x_2326;
        let x_2328 : vec4<f32> = u_xlat11;
        let x_2329 : vec2<f32> = vec2<f32>(x_2328.y, x_2328.z);
        let x_2330 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2330.x, x_2329.x, x_2330.z, x_2329.y);
        let x_2332 : vec2<f32> = u_xlat59;
        let x_2335 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2338 : vec4<f32> = u_xlat10;
        u_xlat14 = ((vec4<f32>(x_2332.x, x_2332.y, x_2332.x, x_2332.y) * vec4<f32>(x_2335.x, x_2335.y, x_2335.x, x_2335.y)) + vec4<f32>(x_2338.x, x_2338.y, x_2338.z, x_2338.y));
        let x_2341 : vec2<f32> = u_xlat59;
        let x_2344 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2347 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_2341.x, x_2341.y, x_2341.x, x_2341.y) * vec4<f32>(x_2344.x, x_2344.y, x_2344.x, x_2344.y)) + vec4<f32>(x_2347.w, x_2347.y, x_2347.w, x_2347.z));
        let x_2350 : vec2<f32> = u_xlat59;
        let x_2353 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2356 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2350.x, x_2350.y, x_2350.x, x_2350.y) * vec4<f32>(x_2353.x, x_2353.y, x_2353.x, x_2353.y)) + vec4<f32>(x_2356.x, x_2356.w, x_2356.z, x_2356.w));
        let x_2359 : vec4<f32> = u_xlat8;
        let x_2361 : vec4<f32> = u_xlat9;
        u_xlat15 = (vec4<f32>(x_2359.x, x_2359.x, x_2359.x, x_2359.y) * vec4<f32>(x_2361.z, x_2361.w, x_2361.y, x_2361.z));
        let x_2364 : vec4<f32> = u_xlat8;
        let x_2366 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_2364.y, x_2364.y, x_2364.z, x_2364.z) * x_2366);
        let x_2369 : f32 = u_xlat8.z;
        let x_2371 : f32 = u_xlat9.y;
        u_xlat59.x = (x_2369 * x_2371);
        let x_2375 : vec4<f32> = u_xlat12;
        let x_2376 : vec2<f32> = vec2<f32>(x_2375.x, x_2375.y);
        let x_2378 : f32 = u_xlat2.z;
        txVec34 = vec3<f32>(x_2376.x, x_2376.y, x_2378);
        let x_2386 : vec3<f32> = txVec34;
        let x_2388 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2386.xy, x_2386.z);
        u_xlat85 = x_2388;
        let x_2390 : vec4<f32> = u_xlat12;
        let x_2391 : vec2<f32> = vec2<f32>(x_2390.z, x_2390.w);
        let x_2393 : f32 = u_xlat2.z;
        txVec35 = vec3<f32>(x_2391.x, x_2391.y, x_2393);
        let x_2400 : vec3<f32> = txVec35;
        let x_2402 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2400.xy, x_2400.z);
        u_xlat8.x = x_2402;
        let x_2405 : f32 = u_xlat8.x;
        let x_2407 : f32 = u_xlat15.y;
        u_xlat8.x = (x_2405 * x_2407);
        let x_2411 : f32 = u_xlat15.x;
        let x_2412 : f32 = u_xlat85;
        let x_2415 : f32 = u_xlat8.x;
        u_xlat85 = ((x_2411 * x_2412) + x_2415);
        let x_2418 : vec4<f32> = u_xlat13;
        let x_2419 : vec2<f32> = vec2<f32>(x_2418.x, x_2418.y);
        let x_2421 : f32 = u_xlat2.z;
        txVec36 = vec3<f32>(x_2419.x, x_2419.y, x_2421);
        let x_2428 : vec3<f32> = txVec36;
        let x_2430 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2428.xy, x_2428.z);
        u_xlat8.x = x_2430;
        let x_2433 : f32 = u_xlat15.z;
        let x_2435 : f32 = u_xlat8.x;
        let x_2437 : f32 = u_xlat85;
        u_xlat85 = ((x_2433 * x_2435) + x_2437);
        let x_2440 : vec4<f32> = u_xlat11;
        let x_2441 : vec2<f32> = vec2<f32>(x_2440.x, x_2440.y);
        let x_2443 : f32 = u_xlat2.z;
        txVec37 = vec3<f32>(x_2441.x, x_2441.y, x_2443);
        let x_2450 : vec3<f32> = txVec37;
        let x_2452 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2450.xy, x_2450.z);
        u_xlat8.x = x_2452;
        let x_2455 : f32 = u_xlat15.w;
        let x_2457 : f32 = u_xlat8.x;
        let x_2459 : f32 = u_xlat85;
        u_xlat85 = ((x_2455 * x_2457) + x_2459);
        let x_2462 : vec4<f32> = u_xlat14;
        let x_2463 : vec2<f32> = vec2<f32>(x_2462.x, x_2462.y);
        let x_2465 : f32 = u_xlat2.z;
        txVec38 = vec3<f32>(x_2463.x, x_2463.y, x_2465);
        let x_2472 : vec3<f32> = txVec38;
        let x_2474 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2472.xy, x_2472.z);
        u_xlat8.x = x_2474;
        let x_2477 : f32 = u_xlat16.x;
        let x_2479 : f32 = u_xlat8.x;
        let x_2481 : f32 = u_xlat85;
        u_xlat85 = ((x_2477 * x_2479) + x_2481);
        let x_2484 : vec4<f32> = u_xlat14;
        let x_2485 : vec2<f32> = vec2<f32>(x_2484.z, x_2484.w);
        let x_2487 : f32 = u_xlat2.z;
        txVec39 = vec3<f32>(x_2485.x, x_2485.y, x_2487);
        let x_2494 : vec3<f32> = txVec39;
        let x_2496 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2494.xy, x_2494.z);
        u_xlat8.x = x_2496;
        let x_2499 : f32 = u_xlat16.y;
        let x_2501 : f32 = u_xlat8.x;
        let x_2503 : f32 = u_xlat85;
        u_xlat85 = ((x_2499 * x_2501) + x_2503);
        let x_2506 : vec4<f32> = u_xlat11;
        let x_2507 : vec2<f32> = vec2<f32>(x_2506.z, x_2506.w);
        let x_2509 : f32 = u_xlat2.z;
        txVec40 = vec3<f32>(x_2507.x, x_2507.y, x_2509);
        let x_2516 : vec3<f32> = txVec40;
        let x_2518 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2516.xy, x_2516.z);
        u_xlat8.x = x_2518;
        let x_2521 : f32 = u_xlat16.z;
        let x_2523 : f32 = u_xlat8.x;
        let x_2525 : f32 = u_xlat85;
        u_xlat85 = ((x_2521 * x_2523) + x_2525);
        let x_2528 : vec4<f32> = u_xlat10;
        let x_2529 : vec2<f32> = vec2<f32>(x_2528.x, x_2528.y);
        let x_2531 : f32 = u_xlat2.z;
        txVec41 = vec3<f32>(x_2529.x, x_2529.y, x_2531);
        let x_2538 : vec3<f32> = txVec41;
        let x_2540 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2538.xy, x_2538.z);
        u_xlat8.x = x_2540;
        let x_2543 : f32 = u_xlat16.w;
        let x_2545 : f32 = u_xlat8.x;
        let x_2547 : f32 = u_xlat85;
        u_xlat85 = ((x_2543 * x_2545) + x_2547);
        let x_2550 : vec4<f32> = u_xlat10;
        let x_2551 : vec2<f32> = vec2<f32>(x_2550.z, x_2550.w);
        let x_2553 : f32 = u_xlat2.z;
        txVec42 = vec3<f32>(x_2551.x, x_2551.y, x_2553);
        let x_2560 : vec3<f32> = txVec42;
        let x_2562 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2560.xy, x_2560.z);
        u_xlat8.x = x_2562;
        let x_2565 : f32 = u_xlat59.x;
        let x_2567 : f32 = u_xlat8.x;
        let x_2569 : f32 = u_xlat85;
        u_xlat0.x = ((x_2565 * x_2567) + x_2569);
      } else {
        let x_2573 : vec4<f32> = u_xlat2;
        let x_2576 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        u_xlat59 = ((vec2<f32>(x_2573.x, x_2573.y) * vec2<f32>(x_2576.z, x_2576.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2580 : vec2<f32> = u_xlat59;
        u_xlat59 = floor(x_2580);
        let x_2582 : vec4<f32> = u_xlat2;
        let x_2585 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2588 : vec2<f32> = u_xlat59;
        let x_2590 : vec2<f32> = ((vec2<f32>(x_2582.x, x_2582.y) * vec2<f32>(x_2585.z, x_2585.w)) + -(x_2588));
        let x_2591 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2590.x, x_2590.y, x_2591.z, x_2591.w);
        let x_2593 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2593.x, x_2593.x, x_2593.y, x_2593.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2596 : vec4<f32> = u_xlat9;
        let x_2598 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2596.x, x_2596.x, x_2596.z, x_2596.z) * vec4<f32>(x_2598.x, x_2598.x, x_2598.z, x_2598.z));
        let x_2601 : vec4<f32> = u_xlat10;
        let x_2603 : vec2<f32> = (vec2<f32>(x_2601.y, x_2601.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2604 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2604.x, x_2603.x, x_2604.z, x_2603.y);
        let x_2606 : vec4<f32> = u_xlat10;
        let x_2609 : vec4<f32> = u_xlat8;
        u_xlat60 = ((vec2<f32>(x_2606.x, x_2606.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2609.x, x_2609.y)));
        let x_2613 : vec4<f32> = u_xlat8;
        let x_2616 : vec2<f32> = (-(vec2<f32>(x_2613.x, x_2613.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2617 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2616.x, x_2617.y, x_2616.y, x_2617.w);
        let x_2619 : vec4<f32> = u_xlat8;
        let x_2621 : vec2<f32> = min(vec2<f32>(x_2619.x, x_2619.y), vec2<f32>(0.0f, 0.0f));
        let x_2622 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2621.x, x_2621.y, x_2622.z, x_2622.w);
        let x_2624 : vec4<f32> = u_xlat10;
        let x_2627 : vec4<f32> = u_xlat10;
        let x_2630 : vec4<f32> = u_xlat9;
        let x_2632 : vec2<f32> = ((-(vec2<f32>(x_2624.x, x_2624.y)) * vec2<f32>(x_2627.x, x_2627.y)) + vec2<f32>(x_2630.x, x_2630.z));
        let x_2633 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2632.x, x_2633.y, x_2632.y, x_2633.w);
        let x_2635 : vec4<f32> = u_xlat8;
        let x_2637 : vec2<f32> = max(vec2<f32>(x_2635.x, x_2635.y), vec2<f32>(0.0f, 0.0f));
        let x_2638 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2637.x, x_2637.y, x_2638.z, x_2638.w);
        let x_2640 : vec4<f32> = u_xlat10;
        let x_2643 : vec4<f32> = u_xlat10;
        let x_2646 : vec4<f32> = u_xlat9;
        let x_2648 : vec2<f32> = ((-(vec2<f32>(x_2640.x, x_2640.y)) * vec2<f32>(x_2643.x, x_2643.y)) + vec2<f32>(x_2646.y, x_2646.w));
        let x_2649 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2649.x, x_2648.x, x_2649.z, x_2648.y);
        let x_2651 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2651 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2654 : f32 = u_xlat9.y;
        u_xlat10.z = (x_2654 * 0.08163200318813323975f);
        let x_2657 : vec2<f32> = u_xlat60;
        let x_2659 : vec2<f32> = (vec2<f32>(x_2657.y, x_2657.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2660 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2659.x, x_2659.y, x_2660.z, x_2660.w);
        let x_2662 : vec4<f32> = u_xlat9;
        u_xlat60 = (vec2<f32>(x_2662.x, x_2662.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2666 : f32 = u_xlat9.w;
        u_xlat12.z = (x_2666 * 0.08163200318813323975f);
        let x_2670 : f32 = u_xlat12.y;
        u_xlat10.x = x_2670;
        let x_2672 : vec4<f32> = u_xlat8;
        let x_2675 : vec2<f32> = ((vec2<f32>(x_2672.x, x_2672.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2676 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2676.x, x_2675.x, x_2676.z, x_2675.y);
        let x_2678 : vec4<f32> = u_xlat8;
        let x_2681 : vec2<f32> = ((vec2<f32>(x_2678.x, x_2678.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2682 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2681.x, x_2682.y, x_2681.y, x_2682.w);
        let x_2685 : f32 = u_xlat60.x;
        u_xlat9.y = x_2685;
        let x_2688 : f32 = u_xlat11.y;
        u_xlat9.w = x_2688;
        let x_2690 : vec4<f32> = u_xlat9;
        let x_2691 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2690 + x_2691);
        let x_2693 : vec4<f32> = u_xlat8;
        let x_2696 : vec2<f32> = ((vec2<f32>(x_2693.y, x_2693.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2697 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2697.x, x_2696.x, x_2697.z, x_2696.y);
        let x_2699 : vec4<f32> = u_xlat8;
        let x_2702 : vec2<f32> = ((vec2<f32>(x_2699.y, x_2699.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2703 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2702.x, x_2703.y, x_2702.y, x_2703.w);
        let x_2706 : f32 = u_xlat60.y;
        u_xlat11.y = x_2706;
        let x_2708 : vec4<f32> = u_xlat11;
        let x_2709 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_2708 + x_2709);
        let x_2711 : vec4<f32> = u_xlat9;
        let x_2712 : vec4<f32> = u_xlat10;
        u_xlat9 = (x_2711 / x_2712);
        let x_2714 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2714 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2716 : vec4<f32> = u_xlat11;
        let x_2717 : vec4<f32> = u_xlat8;
        u_xlat11 = (x_2716 / x_2717);
        let x_2719 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_2719 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2721 : vec4<f32> = u_xlat9;
        let x_2724 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_2721.w, x_2721.x, x_2721.y, x_2721.z) * vec4<f32>(x_2724.x, x_2724.x, x_2724.x, x_2724.x));
        let x_2727 : vec4<f32> = u_xlat11;
        let x_2730 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_2727.x, x_2727.w, x_2727.y, x_2727.z) * vec4<f32>(x_2730.y, x_2730.y, x_2730.y, x_2730.y));
        let x_2733 : vec4<f32> = u_xlat9;
        let x_2734 : vec3<f32> = vec3<f32>(x_2733.y, x_2733.z, x_2733.w);
        let x_2735 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2734.x, x_2735.y, x_2734.y, x_2734.z);
        let x_2738 : f32 = u_xlat11.x;
        u_xlat12.y = x_2738;
        let x_2740 : vec2<f32> = u_xlat59;
        let x_2743 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2746 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_2740.x, x_2740.y, x_2740.x, x_2740.y) * vec4<f32>(x_2743.x, x_2743.y, x_2743.x, x_2743.y)) + vec4<f32>(x_2746.x, x_2746.y, x_2746.z, x_2746.y));
        let x_2749 : vec2<f32> = u_xlat59;
        let x_2751 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2754 : vec4<f32> = u_xlat12;
        let x_2756 : vec2<f32> = ((x_2749 * vec2<f32>(x_2751.x, x_2751.y)) + vec2<f32>(x_2754.w, x_2754.y));
        let x_2757 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_2756.x, x_2756.y, x_2757.z, x_2757.w);
        let x_2760 : f32 = u_xlat12.y;
        u_xlat9.y = x_2760;
        let x_2763 : f32 = u_xlat11.z;
        u_xlat12.y = x_2763;
        let x_2765 : vec2<f32> = u_xlat59;
        let x_2768 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2771 : vec4<f32> = u_xlat12;
        u_xlat15 = ((vec4<f32>(x_2765.x, x_2765.y, x_2765.x, x_2765.y) * vec4<f32>(x_2768.x, x_2768.y, x_2768.x, x_2768.y)) + vec4<f32>(x_2771.x, x_2771.y, x_2771.z, x_2771.y));
        let x_2774 : vec2<f32> = u_xlat59;
        let x_2776 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2779 : vec4<f32> = u_xlat12;
        u_xlat66 = ((x_2774 * vec2<f32>(x_2776.x, x_2776.y)) + vec2<f32>(x_2779.w, x_2779.y));
        let x_2783 : f32 = u_xlat12.y;
        u_xlat9.z = x_2783;
        let x_2785 : vec2<f32> = u_xlat59;
        let x_2788 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2791 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_2785.x, x_2785.y, x_2785.x, x_2785.y) * vec4<f32>(x_2788.x, x_2788.y, x_2788.x, x_2788.y)) + vec4<f32>(x_2791.x, x_2791.y, x_2791.x, x_2791.z));
        let x_2795 : f32 = u_xlat11.w;
        u_xlat12.y = x_2795;
        let x_2797 : vec2<f32> = u_xlat59;
        let x_2800 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2803 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_2797.x, x_2797.y, x_2797.x, x_2797.y) * vec4<f32>(x_2800.x, x_2800.y, x_2800.x, x_2800.y)) + vec4<f32>(x_2803.x, x_2803.y, x_2803.z, x_2803.y));
        let x_2807 : vec2<f32> = u_xlat59;
        let x_2809 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2812 : vec4<f32> = u_xlat12;
        u_xlat35 = ((x_2807 * vec2<f32>(x_2809.x, x_2809.y)) + vec2<f32>(x_2812.w, x_2812.y));
        let x_2816 : f32 = u_xlat12.y;
        u_xlat9.w = x_2816;
        let x_2818 : vec2<f32> = u_xlat59;
        let x_2820 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2823 : vec4<f32> = u_xlat9;
        let x_2825 : vec2<f32> = ((x_2818 * vec2<f32>(x_2820.x, x_2820.y)) + vec2<f32>(x_2823.x, x_2823.w));
        let x_2826 : vec4<f32> = u_xlat18;
        u_xlat18 = vec4<f32>(x_2825.x, x_2825.y, x_2826.z, x_2826.w);
        let x_2828 : vec4<f32> = u_xlat12;
        let x_2829 : vec3<f32> = vec3<f32>(x_2828.x, x_2828.z, x_2828.w);
        let x_2830 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2829.x, x_2830.y, x_2829.y, x_2829.z);
        let x_2832 : vec2<f32> = u_xlat59;
        let x_2835 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2838 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2832.x, x_2832.y, x_2832.x, x_2832.y) * vec4<f32>(x_2835.x, x_2835.y, x_2835.x, x_2835.y)) + vec4<f32>(x_2838.x, x_2838.y, x_2838.z, x_2838.y));
        let x_2842 : vec2<f32> = u_xlat59;
        let x_2844 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2847 : vec4<f32> = u_xlat11;
        u_xlat63 = ((x_2842 * vec2<f32>(x_2844.x, x_2844.y)) + vec2<f32>(x_2847.w, x_2847.y));
        let x_2851 : f32 = u_xlat9.x;
        u_xlat11.x = x_2851;
        let x_2853 : vec2<f32> = u_xlat59;
        let x_2855 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2858 : vec4<f32> = u_xlat11;
        u_xlat59 = ((x_2853 * vec2<f32>(x_2855.x, x_2855.y)) + vec2<f32>(x_2858.x, x_2858.y));
        let x_2861 : vec4<f32> = u_xlat8;
        let x_2863 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_2861.x, x_2861.x, x_2861.x, x_2861.x) * x_2863);
        let x_2866 : vec4<f32> = u_xlat8;
        let x_2868 : vec4<f32> = u_xlat10;
        u_xlat20 = (vec4<f32>(x_2866.y, x_2866.y, x_2866.y, x_2866.y) * x_2868);
        let x_2871 : vec4<f32> = u_xlat8;
        let x_2873 : vec4<f32> = u_xlat10;
        u_xlat21 = (vec4<f32>(x_2871.z, x_2871.z, x_2871.z, x_2871.z) * x_2873);
        let x_2875 : vec4<f32> = u_xlat8;
        let x_2877 : vec4<f32> = u_xlat10;
        u_xlat8 = (vec4<f32>(x_2875.w, x_2875.w, x_2875.w, x_2875.w) * x_2877);
        let x_2880 : vec4<f32> = u_xlat13;
        let x_2881 : vec2<f32> = vec2<f32>(x_2880.x, x_2880.y);
        let x_2883 : f32 = u_xlat2.z;
        txVec43 = vec3<f32>(x_2881.x, x_2881.y, x_2883);
        let x_2890 : vec3<f32> = txVec43;
        let x_2892 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2890.xy, x_2890.z);
        u_xlat9.x = x_2892;
        let x_2895 : vec4<f32> = u_xlat13;
        let x_2896 : vec2<f32> = vec2<f32>(x_2895.z, x_2895.w);
        let x_2898 : f32 = u_xlat2.z;
        txVec44 = vec3<f32>(x_2896.x, x_2896.y, x_2898);
        let x_2906 : vec3<f32> = txVec44;
        let x_2908 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2906.xy, x_2906.z);
        u_xlat87 = x_2908;
        let x_2909 : f32 = u_xlat87;
        let x_2911 : f32 = u_xlat19.y;
        u_xlat87 = (x_2909 * x_2911);
        let x_2914 : f32 = u_xlat19.x;
        let x_2916 : f32 = u_xlat9.x;
        let x_2918 : f32 = u_xlat87;
        u_xlat9.x = ((x_2914 * x_2916) + x_2918);
        let x_2922 : vec4<f32> = u_xlat14;
        let x_2923 : vec2<f32> = vec2<f32>(x_2922.x, x_2922.y);
        let x_2925 : f32 = u_xlat2.z;
        txVec45 = vec3<f32>(x_2923.x, x_2923.y, x_2925);
        let x_2932 : vec3<f32> = txVec45;
        let x_2934 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2932.xy, x_2932.z);
        u_xlat87 = x_2934;
        let x_2936 : f32 = u_xlat19.z;
        let x_2937 : f32 = u_xlat87;
        let x_2940 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_2936 * x_2937) + x_2940);
        let x_2944 : vec4<f32> = u_xlat16;
        let x_2945 : vec2<f32> = vec2<f32>(x_2944.x, x_2944.y);
        let x_2947 : f32 = u_xlat2.z;
        txVec46 = vec3<f32>(x_2945.x, x_2945.y, x_2947);
        let x_2954 : vec3<f32> = txVec46;
        let x_2956 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2954.xy, x_2954.z);
        u_xlat87 = x_2956;
        let x_2958 : f32 = u_xlat19.w;
        let x_2959 : f32 = u_xlat87;
        let x_2962 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_2958 * x_2959) + x_2962);
        let x_2966 : vec4<f32> = u_xlat15;
        let x_2967 : vec2<f32> = vec2<f32>(x_2966.x, x_2966.y);
        let x_2969 : f32 = u_xlat2.z;
        txVec47 = vec3<f32>(x_2967.x, x_2967.y, x_2969);
        let x_2976 : vec3<f32> = txVec47;
        let x_2978 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2976.xy, x_2976.z);
        u_xlat87 = x_2978;
        let x_2980 : f32 = u_xlat20.x;
        let x_2981 : f32 = u_xlat87;
        let x_2984 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_2980 * x_2981) + x_2984);
        let x_2988 : vec4<f32> = u_xlat15;
        let x_2989 : vec2<f32> = vec2<f32>(x_2988.z, x_2988.w);
        let x_2991 : f32 = u_xlat2.z;
        txVec48 = vec3<f32>(x_2989.x, x_2989.y, x_2991);
        let x_2998 : vec3<f32> = txVec48;
        let x_3000 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2998.xy, x_2998.z);
        u_xlat87 = x_3000;
        let x_3002 : f32 = u_xlat20.y;
        let x_3003 : f32 = u_xlat87;
        let x_3006 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3002 * x_3003) + x_3006);
        let x_3010 : vec2<f32> = u_xlat66;
        let x_3012 : f32 = u_xlat2.z;
        txVec49 = vec3<f32>(x_3010.x, x_3010.y, x_3012);
        let x_3019 : vec3<f32> = txVec49;
        let x_3021 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3019.xy, x_3019.z);
        u_xlat87 = x_3021;
        let x_3023 : f32 = u_xlat20.z;
        let x_3024 : f32 = u_xlat87;
        let x_3027 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3023 * x_3024) + x_3027);
        let x_3031 : vec4<f32> = u_xlat16;
        let x_3032 : vec2<f32> = vec2<f32>(x_3031.z, x_3031.w);
        let x_3034 : f32 = u_xlat2.z;
        txVec50 = vec3<f32>(x_3032.x, x_3032.y, x_3034);
        let x_3041 : vec3<f32> = txVec50;
        let x_3043 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3041.xy, x_3041.z);
        u_xlat87 = x_3043;
        let x_3045 : f32 = u_xlat20.w;
        let x_3046 : f32 = u_xlat87;
        let x_3049 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3045 * x_3046) + x_3049);
        let x_3053 : vec4<f32> = u_xlat17;
        let x_3054 : vec2<f32> = vec2<f32>(x_3053.x, x_3053.y);
        let x_3056 : f32 = u_xlat2.z;
        txVec51 = vec3<f32>(x_3054.x, x_3054.y, x_3056);
        let x_3063 : vec3<f32> = txVec51;
        let x_3065 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3063.xy, x_3063.z);
        u_xlat87 = x_3065;
        let x_3067 : f32 = u_xlat21.x;
        let x_3068 : f32 = u_xlat87;
        let x_3071 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3067 * x_3068) + x_3071);
        let x_3075 : vec4<f32> = u_xlat17;
        let x_3076 : vec2<f32> = vec2<f32>(x_3075.z, x_3075.w);
        let x_3078 : f32 = u_xlat2.z;
        txVec52 = vec3<f32>(x_3076.x, x_3076.y, x_3078);
        let x_3085 : vec3<f32> = txVec52;
        let x_3087 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3085.xy, x_3085.z);
        u_xlat87 = x_3087;
        let x_3089 : f32 = u_xlat21.y;
        let x_3090 : f32 = u_xlat87;
        let x_3093 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3089 * x_3090) + x_3093);
        let x_3097 : vec2<f32> = u_xlat35;
        let x_3099 : f32 = u_xlat2.z;
        txVec53 = vec3<f32>(x_3097.x, x_3097.y, x_3099);
        let x_3106 : vec3<f32> = txVec53;
        let x_3108 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3106.xy, x_3106.z);
        u_xlat35.x = x_3108;
        let x_3111 : f32 = u_xlat21.z;
        let x_3113 : f32 = u_xlat35.x;
        let x_3116 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3111 * x_3113) + x_3116);
        let x_3120 : vec4<f32> = u_xlat18;
        let x_3121 : vec2<f32> = vec2<f32>(x_3120.x, x_3120.y);
        let x_3123 : f32 = u_xlat2.z;
        txVec54 = vec3<f32>(x_3121.x, x_3121.y, x_3123);
        let x_3130 : vec3<f32> = txVec54;
        let x_3132 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3130.xy, x_3130.z);
        u_xlat35.x = x_3132;
        let x_3135 : f32 = u_xlat21.w;
        let x_3137 : f32 = u_xlat35.x;
        let x_3140 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3135 * x_3137) + x_3140);
        let x_3144 : vec4<f32> = u_xlat12;
        let x_3145 : vec2<f32> = vec2<f32>(x_3144.x, x_3144.y);
        let x_3147 : f32 = u_xlat2.z;
        txVec55 = vec3<f32>(x_3145.x, x_3145.y, x_3147);
        let x_3154 : vec3<f32> = txVec55;
        let x_3156 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3154.xy, x_3154.z);
        u_xlat35.x = x_3156;
        let x_3159 : f32 = u_xlat8.x;
        let x_3161 : f32 = u_xlat35.x;
        let x_3164 : f32 = u_xlat9.x;
        u_xlat8.x = ((x_3159 * x_3161) + x_3164);
        let x_3168 : vec4<f32> = u_xlat12;
        let x_3169 : vec2<f32> = vec2<f32>(x_3168.z, x_3168.w);
        let x_3171 : f32 = u_xlat2.z;
        txVec56 = vec3<f32>(x_3169.x, x_3169.y, x_3171);
        let x_3178 : vec3<f32> = txVec56;
        let x_3180 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3178.xy, x_3178.z);
        u_xlat9.x = x_3180;
        let x_3183 : f32 = u_xlat8.y;
        let x_3185 : f32 = u_xlat9.x;
        let x_3188 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3183 * x_3185) + x_3188);
        let x_3192 : vec2<f32> = u_xlat63;
        let x_3194 : f32 = u_xlat2.z;
        txVec57 = vec3<f32>(x_3192.x, x_3192.y, x_3194);
        let x_3201 : vec3<f32> = txVec57;
        let x_3203 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3201.xy, x_3201.z);
        u_xlat34.x = x_3203;
        let x_3206 : f32 = u_xlat8.z;
        let x_3208 : f32 = u_xlat34.x;
        let x_3211 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3206 * x_3208) + x_3211);
        let x_3215 : vec2<f32> = u_xlat59;
        let x_3217 : f32 = u_xlat2.z;
        txVec58 = vec3<f32>(x_3215.x, x_3215.y, x_3217);
        let x_3224 : vec3<f32> = txVec58;
        let x_3226 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3224.xy, x_3224.z);
        u_xlat59.x = x_3226;
        let x_3229 : f32 = u_xlat8.w;
        let x_3231 : f32 = u_xlat59.x;
        let x_3234 : f32 = u_xlat8.x;
        u_xlat0.x = ((x_3229 * x_3231) + x_3234);
      }
    }
  } else {
    let x_3239 : vec4<f32> = u_xlat2;
    let x_3240 : vec2<f32> = vec2<f32>(x_3239.x, x_3239.y);
    let x_3242 : f32 = u_xlat2.z;
    txVec59 = vec3<f32>(x_3240.x, x_3240.y, x_3242);
    let x_3249 : vec3<f32> = txVec59;
    let x_3251 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3249.xy, x_3249.z);
    u_xlat0.x = x_3251;
  }
  let x_3254 : f32 = u_xlat0.x;
  let x_3256 : f32 = x_246.x_MainLightShadowParams.x;
  let x_3258 : f32 = u_xlat80;
  u_xlat0.x = ((x_3254 * x_3256) + x_3258);
  let x_3262 : bool = u_xlatb3.x;
  if (x_3262) {
    x_3263 = 1.0f;
  } else {
    let x_3268 : f32 = u_xlat0.x;
    x_3263 = x_3268;
  }
  let x_3269 : f32 = x_3263;
  u_xlat0.x = x_3269;
  let x_3271 : vec3<f32> = vs_INTERP8;
  let x_3273 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  let x_3275 : vec3<f32> = (x_3271 + -(x_3273));
  let x_3276 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_3275.x, x_3275.y, x_3275.z, x_3276.w);
  let x_3278 : vec4<f32> = u_xlat2;
  let x_3280 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_3278.x, x_3278.y, x_3278.z), vec3<f32>(x_3280.x, x_3280.y, x_3280.z));
  let x_3286 : f32 = u_xlat2.x;
  let x_3288 : f32 = x_246.x_MainLightShadowParams.z;
  let x_3291 : f32 = x_246.x_MainLightShadowParams.w;
  u_xlat28.x = ((x_3286 * x_3288) + x_3291);
  let x_3295 : f32 = u_xlat28.x;
  u_xlat28.x = clamp(x_3295, 0.0f, 1.0f);
  let x_3300 : f32 = u_xlat0.x;
  u_xlat54 = (-(x_3300) + 1.0f);
  let x_3304 : f32 = u_xlat28.x;
  let x_3305 : f32 = u_xlat54;
  let x_3308 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_3304 * x_3305) + x_3308);
  let x_3319 : f32 = x_3317.x_MainLightCookieTextureFormat;
  u_xlatb28.x = !((x_3319 == -1.0f));
  let x_3323 : bool = u_xlatb28.x;
  if (x_3323) {
    let x_3326 : vec3<f32> = vs_INTERP8;
    let x_3329 : vec4<f32> = x_3317.x_MainLightWorldToLight[1i];
    let x_3331 : vec2<f32> = (vec2<f32>(x_3326.y, x_3326.y) * vec2<f32>(x_3329.x, x_3329.y));
    let x_3332 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_3331.x, x_3331.y, x_3332.z);
    let x_3335 : vec4<f32> = x_3317.x_MainLightWorldToLight[0i];
    let x_3337 : vec3<f32> = vs_INTERP8;
    let x_3340 : vec3<f32> = u_xlat28;
    let x_3342 : vec2<f32> = ((vec2<f32>(x_3335.x, x_3335.y) * vec2<f32>(x_3337.x, x_3337.x)) + vec2<f32>(x_3340.x, x_3340.y));
    let x_3343 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_3342.x, x_3342.y, x_3343.z);
    let x_3346 : vec4<f32> = x_3317.x_MainLightWorldToLight[2i];
    let x_3348 : vec3<f32> = vs_INTERP8;
    let x_3351 : vec3<f32> = u_xlat28;
    let x_3353 : vec2<f32> = ((vec2<f32>(x_3346.x, x_3346.y) * vec2<f32>(x_3348.z, x_3348.z)) + vec2<f32>(x_3351.x, x_3351.y));
    let x_3354 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_3353.x, x_3353.y, x_3354.z);
    let x_3356 : vec3<f32> = u_xlat28;
    let x_3359 : vec4<f32> = x_3317.x_MainLightWorldToLight[3i];
    let x_3361 : vec2<f32> = (vec2<f32>(x_3356.x, x_3356.y) + vec2<f32>(x_3359.x, x_3359.y));
    let x_3362 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_3361.x, x_3361.y, x_3362.z);
    let x_3364 : vec3<f32> = u_xlat28;
    let x_3367 : vec2<f32> = ((vec2<f32>(x_3364.x, x_3364.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_3368 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_3367.x, x_3367.y, x_3368.z);
    let x_3375 : vec3<f32> = u_xlat28;
    let x_3378 : f32 = x_128.x_GlobalMipBias.x;
    let x_3379 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_3375.x, x_3375.y), x_3378);
    u_xlat8 = x_3379;
    let x_3381 : f32 = x_3317.x_MainLightCookieTextureFormat;
    let x_3383 : f32 = x_3317.x_MainLightCookieTextureFormat;
    let x_3385 : f32 = x_3317.x_MainLightCookieTextureFormat;
    let x_3387 : f32 = x_3317.x_MainLightCookieTextureFormat;
    let x_3388 : vec4<f32> = vec4<f32>(x_3381, x_3383, x_3385, x_3387);
    let x_3395 : vec4<bool> = (vec4<f32>(x_3388.x, x_3388.y, x_3388.z, x_3388.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb28 = vec2<bool>(x_3395.x, x_3395.y);
    let x_3398 : bool = u_xlatb28.y;
    if (x_3398) {
      let x_3403 : f32 = u_xlat8.w;
      x_3399 = x_3403;
    } else {
      let x_3406 : f32 = u_xlat8.x;
      x_3399 = x_3406;
    }
    let x_3407 : f32 = x_3399;
    u_xlat54 = x_3407;
    let x_3409 : bool = u_xlatb28.x;
    if (x_3409) {
      let x_3413 : vec4<f32> = u_xlat8;
      x_3410 = vec3<f32>(x_3413.x, x_3413.y, x_3413.z);
    } else {
      let x_3416 : f32 = u_xlat54;
      x_3410 = vec3<f32>(x_3416, x_3416, x_3416);
    }
    let x_3418 : vec3<f32> = x_3410;
    u_xlat28 = x_3418;
  } else {
    u_xlat28.x = 1.0f;
    u_xlat28.y = 1.0f;
    u_xlat28.z = 1.0f;
  }
  let x_3423 : vec3<f32> = u_xlat28;
  let x_3425 : vec4<f32> = x_128.x_MainLightColor;
  u_xlat28 = (x_3423 * vec3<f32>(x_3425.x, x_3425.y, x_3425.z));
  let x_3428 : vec3<f32> = u_xlat26;
  let x_3430 : vec4<f32> = u_xlat4;
  u_xlat3.x = dot(-(x_3428), vec3<f32>(x_3430.x, x_3430.y, x_3430.z));
  let x_3435 : f32 = u_xlat3.x;
  let x_3437 : f32 = u_xlat3.x;
  u_xlat3.x = (x_3435 + x_3437);
  let x_3440 : vec4<f32> = u_xlat4;
  let x_3442 : vec4<f32> = u_xlat3;
  let x_3446 : vec3<f32> = u_xlat26;
  let x_3448 : vec3<f32> = ((vec3<f32>(x_3440.x, x_3440.y, x_3440.z) * -(vec3<f32>(x_3442.x, x_3442.x, x_3442.x))) + -(x_3446));
  let x_3449 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3448.x, x_3448.y, x_3448.z, x_3449.w);
  let x_3451 : vec4<f32> = u_xlat4;
  let x_3453 : vec3<f32> = u_xlat26;
  u_xlat3.x = dot(vec3<f32>(x_3451.x, x_3451.y, x_3451.z), x_3453);
  let x_3457 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_3457, 0.0f, 1.0f);
  let x_3461 : f32 = u_xlat3.x;
  u_xlat3.x = (-(x_3461) + 1.0f);
  let x_3466 : f32 = u_xlat3.x;
  let x_3468 : f32 = u_xlat3.x;
  u_xlat3.x = (x_3466 * x_3468);
  let x_3472 : f32 = u_xlat3.x;
  let x_3474 : f32 = u_xlat3.x;
  u_xlat3.x = (x_3472 * x_3474);
  let x_3477 : f32 = u_xlat81;
  u_xlat59.x = ((-(x_3477) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3484 : f32 = u_xlat81;
  let x_3486 : f32 = u_xlat59.x;
  u_xlat81 = (x_3484 * x_3486);
  let x_3488 : f32 = u_xlat81;
  u_xlat81 = (x_3488 * 6.0f);
  let x_3499 : vec4<f32> = u_xlat8;
  let x_3501 : f32 = u_xlat81;
  let x_3502 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_3499.x, x_3499.y, x_3499.z), x_3501);
  u_xlat8 = x_3502;
  let x_3504 : f32 = u_xlat8.w;
  u_xlat81 = (x_3504 + -1.0f);
  let x_3507 : f32 = x_48.unity_SpecCube0_HDR.w;
  let x_3508 : f32 = u_xlat81;
  u_xlat81 = ((x_3507 * x_3508) + 1.0f);
  let x_3511 : f32 = u_xlat81;
  u_xlat81 = max(x_3511, 0.0f);
  let x_3513 : f32 = u_xlat81;
  u_xlat81 = log2(x_3513);
  let x_3515 : f32 = u_xlat81;
  let x_3517 : f32 = x_48.unity_SpecCube0_HDR.y;
  u_xlat81 = (x_3515 * x_3517);
  let x_3519 : f32 = u_xlat81;
  u_xlat81 = exp2(x_3519);
  let x_3521 : f32 = u_xlat81;
  let x_3523 : f32 = x_48.unity_SpecCube0_HDR.x;
  u_xlat81 = (x_3521 * x_3523);
  let x_3525 : vec4<f32> = u_xlat8;
  let x_3527 : f32 = u_xlat81;
  let x_3529 : vec3<f32> = (vec3<f32>(x_3525.x, x_3525.y, x_3525.z) * vec3<f32>(x_3527, x_3527, x_3527));
  let x_3530 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3529.x, x_3529.y, x_3529.z, x_3530.w);
  let x_3532 : f32 = u_xlat82;
  let x_3534 : f32 = u_xlat82;
  u_xlat59 = ((vec2<f32>(x_3532, x_3532) * vec2<f32>(x_3534, x_3534)) + vec2<f32>(-1.0f, 1.0f));
  let x_3540 : f32 = u_xlat59.y;
  u_xlat81 = (1.0f / x_3540);
  let x_3543 : f32 = u_xlat6.x;
  u_xlat82 = (x_3543 + -0.03999999910593032837f);
  let x_3547 : f32 = u_xlat3.x;
  let x_3548 : f32 = u_xlat82;
  u_xlat3.x = ((x_3547 * x_3548) + 0.03999999910593032837f);
  let x_3554 : f32 = u_xlat3.x;
  let x_3555 : f32 = u_xlat81;
  u_xlat3.x = (x_3554 * x_3555);
  let x_3558 : vec4<f32> = u_xlat3;
  let x_3560 : vec4<f32> = u_xlat8;
  let x_3562 : vec3<f32> = (vec3<f32>(x_3558.x, x_3558.x, x_3558.x) * vec3<f32>(x_3560.x, x_3560.y, x_3560.z));
  let x_3563 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3562.x, x_3562.y, x_3562.z, x_3563.w);
  let x_3565 : vec3<f32> = u_xlat32;
  let x_3566 : vec3<f32> = u_xlat5;
  let x_3568 : vec4<f32> = u_xlat8;
  let x_3570 : vec3<f32> = ((x_3565 * x_3566) + vec3<f32>(x_3568.x, x_3568.y, x_3568.z));
  let x_3571 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3570.x, x_3570.y, x_3570.z, x_3571.w);
  let x_3574 : f32 = u_xlat0.x;
  let x_3576 : f32 = x_48.unity_LightData.z;
  u_xlat0.x = (x_3574 * x_3576);
  let x_3579 : vec4<f32> = u_xlat4;
  let x_3582 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_3579.x, x_3579.y, x_3579.z), vec3<f32>(x_3582.x, x_3582.y, x_3582.z));
  let x_3587 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_3587, 0.0f, 1.0f);
  let x_3591 : f32 = u_xlat0.x;
  let x_3593 : f32 = u_xlat3.x;
  u_xlat0.x = (x_3591 * x_3593);
  let x_3596 : vec3<f32> = u_xlat0;
  let x_3598 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_3596.x, x_3596.x, x_3596.x) * x_3598);
  let x_3600 : vec3<f32> = u_xlat26;
  let x_3602 : vec4<f32> = x_128.x_MainLightPosition;
  let x_3604 : vec3<f32> = (x_3600 + vec3<f32>(x_3602.x, x_3602.y, x_3602.z));
  let x_3605 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3604.x, x_3604.y, x_3604.z, x_3605.w);
  let x_3607 : vec4<f32> = u_xlat8;
  let x_3609 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_3607.x, x_3607.y, x_3607.z), vec3<f32>(x_3609.x, x_3609.y, x_3609.z));
  let x_3614 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_3614, 1.17549435e-38f);
  let x_3618 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_3618);
  let x_3621 : vec3<f32> = u_xlat0;
  let x_3623 : vec4<f32> = u_xlat8;
  let x_3625 : vec3<f32> = (vec3<f32>(x_3621.x, x_3621.x, x_3621.x) * vec3<f32>(x_3623.x, x_3623.y, x_3623.z));
  let x_3626 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3625.x, x_3625.y, x_3625.z, x_3626.w);
  let x_3628 : vec4<f32> = u_xlat4;
  let x_3630 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_3628.x, x_3628.y, x_3628.z), vec3<f32>(x_3630.x, x_3630.y, x_3630.z));
  let x_3635 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_3635, 0.0f, 1.0f);
  let x_3639 : vec4<f32> = x_128.x_MainLightPosition;
  let x_3641 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_3639.x, x_3639.y, x_3639.z), vec3<f32>(x_3641.x, x_3641.y, x_3641.z));
  let x_3646 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_3646, 0.0f, 1.0f);
  let x_3650 : f32 = u_xlat0.x;
  let x_3652 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3650 * x_3652);
  let x_3656 : f32 = u_xlat0.x;
  let x_3658 : f32 = u_xlat59.x;
  u_xlat0.x = ((x_3656 * x_3658) + 1.00001001358032226562f);
  let x_3664 : f32 = u_xlat3.x;
  let x_3666 : f32 = u_xlat3.x;
  u_xlat3.x = (x_3664 * x_3666);
  let x_3670 : f32 = u_xlat0.x;
  let x_3672 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3670 * x_3672);
  let x_3676 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_3676, 0.10000000149011611938f);
  let x_3681 : f32 = u_xlat0.x;
  let x_3683 : f32 = u_xlat3.x;
  u_xlat0.x = (x_3681 * x_3683);
  let x_3687 : f32 = u_xlat7.x;
  let x_3689 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3687 * x_3689);
  let x_3692 : f32 = u_xlat83;
  let x_3694 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3692 / x_3694);
  let x_3697 : vec3<f32> = u_xlat0;
  let x_3701 : vec3<f32> = u_xlat5;
  let x_3702 : vec3<f32> = ((vec3<f32>(x_3697.x, x_3697.x, x_3697.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3701);
  let x_3703 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3702.x, x_3702.y, x_3702.z, x_3703.w);
  let x_3705 : vec3<f32> = u_xlat28;
  let x_3706 : vec4<f32> = u_xlat8;
  u_xlat28 = (x_3705 * vec3<f32>(x_3706.x, x_3706.y, x_3706.z));
  let x_3710 : f32 = x_128.x_AdditionalLightsCount.x;
  let x_3712 : f32 = x_48.unity_LightData.y;
  u_xlat0.x = min(x_3710, x_3712);
  let x_3716 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_3716));
  let x_3720 : f32 = u_xlat2.x;
  let x_3723 : f32 = x_246.x_AdditionalShadowFadeParams.x;
  let x_3726 : f32 = x_246.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_3720 * x_3723) + x_3726);
  let x_3730 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_3730, 0.0f, 1.0f);
  let x_3734 : f32 = x_3317.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3736 : f32 = x_3317.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3738 : f32 = x_3317.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3740 : f32 = x_3317.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3741 : vec4<f32> = vec4<f32>(x_3734, x_3736, x_3738, x_3740);
  let x_3748 : vec4<bool> = (vec4<f32>(x_3741.x, x_3741.y, x_3741.z, x_3741.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_3749 : vec2<bool> = vec2<bool>(x_3748.x, x_3748.w);
  let x_3750 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_3749.x, x_3750.y, x_3750.z, x_3749.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3762 : u32 = u_xlatu_loop_1;
    let x_3763 : u32 = u_xlatu0;
    if ((x_3762 < x_3763)) {
    } else {
      break;
    }
    let x_3766 : u32 = u_xlatu_loop_1;
    u_xlatu84 = (x_3766 >> 2u);
    let x_3769 : u32 = u_xlatu_loop_1;
    u_xlati85 = bitcast<i32>((x_3769 & 3u));
    let x_3773 : u32 = u_xlatu84;
    let x_3776 : vec4<f32> = x_48.unity_LightIndices[bitcast<i32>(x_3773)];
    let x_3786 : i32 = u_xlati85;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3791 : vec4<u32> = indexable[x_3786];
    u_xlat84 = dot(x_3776, bitcast<vec4<f32>>(x_3791));
    let x_3795 : f32 = u_xlat84;
    u_xlati84 = i32(x_3795);
    let x_3797 : vec3<f32> = vs_INTERP8;
    let x_3808 : i32 = u_xlati84;
    let x_3810 : vec4<f32> = x_3807.x_AdditionalLightsPosition[x_3808];
    let x_3813 : i32 = u_xlati84;
    let x_3815 : vec4<f32> = x_3807.x_AdditionalLightsPosition[x_3813];
    let x_3817 : vec3<f32> = ((-(x_3797) * vec3<f32>(x_3810.w, x_3810.w, x_3810.w)) + vec3<f32>(x_3815.x, x_3815.y, x_3815.z));
    let x_3818 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3817.x, x_3817.y, x_3817.z, x_3818.w);
    let x_3820 : vec4<f32> = u_xlat9;
    let x_3822 : vec4<f32> = u_xlat9;
    u_xlat85 = dot(vec3<f32>(x_3820.x, x_3820.y, x_3820.z), vec3<f32>(x_3822.x, x_3822.y, x_3822.z));
    let x_3825 : f32 = u_xlat85;
    u_xlat85 = max(x_3825, 0.00006103515625f);
    let x_3829 : f32 = u_xlat85;
    u_xlat86 = inverseSqrt(x_3829);
    let x_3831 : f32 = u_xlat86;
    let x_3833 : vec4<f32> = u_xlat9;
    let x_3835 : vec3<f32> = (vec3<f32>(x_3831, x_3831, x_3831) * vec3<f32>(x_3833.x, x_3833.y, x_3833.z));
    let x_3836 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3835.x, x_3835.y, x_3835.z, x_3836.w);
    let x_3838 : f32 = u_xlat85;
    u_xlat87 = (1.0f / x_3838);
    let x_3840 : f32 = u_xlat85;
    let x_3841 : i32 = u_xlati84;
    let x_3843 : f32 = x_3807.x_AdditionalLightsAttenuation[x_3841].x;
    u_xlat85 = (x_3840 * x_3843);
    let x_3845 : f32 = u_xlat85;
    let x_3847 : f32 = u_xlat85;
    u_xlat85 = ((-(x_3845) * x_3847) + 1.0f);
    let x_3850 : f32 = u_xlat85;
    u_xlat85 = max(x_3850, 0.0f);
    let x_3852 : f32 = u_xlat85;
    let x_3853 : f32 = u_xlat85;
    u_xlat85 = (x_3852 * x_3853);
    let x_3855 : f32 = u_xlat85;
    let x_3856 : f32 = u_xlat87;
    u_xlat85 = (x_3855 * x_3856);
    let x_3858 : i32 = u_xlati84;
    let x_3860 : vec4<f32> = x_3807.x_AdditionalLightsSpotDir[x_3858];
    let x_3862 : vec4<f32> = u_xlat10;
    u_xlat87 = dot(vec3<f32>(x_3860.x, x_3860.y, x_3860.z), vec3<f32>(x_3862.x, x_3862.y, x_3862.z));
    let x_3865 : f32 = u_xlat87;
    let x_3866 : i32 = u_xlati84;
    let x_3868 : f32 = x_3807.x_AdditionalLightsAttenuation[x_3866].z;
    let x_3870 : i32 = u_xlati84;
    let x_3872 : f32 = x_3807.x_AdditionalLightsAttenuation[x_3870].w;
    u_xlat87 = ((x_3865 * x_3868) + x_3872);
    let x_3874 : f32 = u_xlat87;
    u_xlat87 = clamp(x_3874, 0.0f, 1.0f);
    let x_3876 : f32 = u_xlat87;
    let x_3877 : f32 = u_xlat87;
    u_xlat87 = (x_3876 * x_3877);
    let x_3879 : f32 = u_xlat85;
    let x_3880 : f32 = u_xlat87;
    u_xlat85 = (x_3879 * x_3880);
    let x_3884 : i32 = u_xlati84;
    let x_3886 : f32 = x_246.x_AdditionalShadowParams[x_3884].w;
    u_xlati87 = i32(x_3886);
    let x_3889 : i32 = u_xlati87;
    u_xlatb88 = (x_3889 >= 0i);
    let x_3891 : bool = u_xlatb88;
    if (x_3891) {
      let x_3895 : i32 = u_xlati84;
      let x_3897 : f32 = x_246.x_AdditionalShadowParams[x_3895].z;
      u_xlatb88 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3897, x_3897, x_3897, x_3897))));
      let x_3901 : bool = u_xlatb88;
      if (x_3901) {
        let x_3905 : vec4<f32> = u_xlat10;
        let x_3908 : vec4<f32> = u_xlat10;
        let x_3911 : vec4<bool> = (abs(vec4<f32>(x_3905.z, x_3905.z, x_3905.y, x_3905.z)) >= abs(vec4<f32>(x_3908.x, x_3908.y, x_3908.x, x_3908.x)));
        let x_3913 : vec3<bool> = vec3<bool>(x_3911.x, x_3911.y, x_3911.z);
        let x_3914 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3913.x, x_3913.y, x_3913.z, x_3914.w);
        let x_3917 : bool = u_xlatb11.y;
        let x_3919 : bool = u_xlatb11.x;
        u_xlatb88 = (x_3917 & x_3919);
        let x_3921 : vec4<f32> = u_xlat10;
        let x_3924 : vec4<bool> = (-(vec4<f32>(x_3921.z, x_3921.y, x_3921.z, x_3921.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3925 : vec3<bool> = vec3<bool>(x_3924.x, x_3924.y, x_3924.w);
        let x_3926 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3925.x, x_3925.y, x_3926.z, x_3925.z);
        let x_3929 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3929);
        let x_3934 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3934);
        let x_3939 : bool = u_xlatb11.w;
        u_xlat89 = select(0.0f, 1.0f, x_3939);
        let x_3943 : bool = u_xlatb11.z;
        if (x_3943) {
          let x_3948 : f32 = u_xlat11.y;
          x_3944 = x_3948;
        } else {
          let x_3950 : f32 = u_xlat89;
          x_3944 = x_3950;
        }
        let x_3951 : f32 = x_3944;
        u_xlat37.x = x_3951;
        let x_3954 : bool = u_xlatb88;
        if (x_3954) {
          let x_3959 : f32 = u_xlat11.x;
          x_3955 = x_3959;
        } else {
          let x_3962 : f32 = u_xlat37.x;
          x_3955 = x_3962;
        }
        let x_3963 : f32 = x_3955;
        u_xlat88 = x_3963;
        let x_3964 : i32 = u_xlati84;
        let x_3966 : f32 = x_246.x_AdditionalShadowParams[x_3964].w;
        u_xlat11.x = trunc(x_3966);
        let x_3969 : f32 = u_xlat88;
        let x_3971 : f32 = u_xlat11.x;
        u_xlat88 = (x_3969 + x_3971);
        let x_3973 : f32 = u_xlat88;
        u_xlati87 = i32(x_3973);
      }
      let x_3975 : i32 = u_xlati87;
      u_xlati87 = (x_3975 << bitcast<u32>(2i));
      let x_3977 : vec3<f32> = vs_INTERP8;
      let x_3980 : i32 = u_xlati87;
      let x_3983 : i32 = u_xlati87;
      let x_3987 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[((x_3980 + 1i) / 4i)][((x_3983 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3977.y, x_3977.y, x_3977.y, x_3977.y) * x_3987);
      let x_3989 : i32 = u_xlati87;
      let x_3991 : i32 = u_xlati87;
      let x_3994 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[(x_3989 / 4i)][(x_3991 % 4i)];
      let x_3995 : vec3<f32> = vs_INTERP8;
      let x_3998 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3994 * vec4<f32>(x_3995.x, x_3995.x, x_3995.x, x_3995.x)) + x_3998);
      let x_4000 : i32 = u_xlati87;
      let x_4003 : i32 = u_xlati87;
      let x_4007 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[((x_4000 + 2i) / 4i)][((x_4003 + 2i) % 4i)];
      let x_4008 : vec3<f32> = vs_INTERP8;
      let x_4011 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_4007 * vec4<f32>(x_4008.z, x_4008.z, x_4008.z, x_4008.z)) + x_4011);
      let x_4013 : vec4<f32> = u_xlat11;
      let x_4014 : i32 = u_xlati87;
      let x_4017 : i32 = u_xlati87;
      let x_4021 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[((x_4014 + 3i) / 4i)][((x_4017 + 3i) % 4i)];
      u_xlat11 = (x_4013 + x_4021);
      let x_4023 : vec4<f32> = u_xlat11;
      let x_4025 : vec4<f32> = u_xlat11;
      let x_4027 : vec3<f32> = (vec3<f32>(x_4023.x, x_4023.y, x_4023.z) / vec3<f32>(x_4025.w, x_4025.w, x_4025.w));
      let x_4028 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4027.x, x_4027.y, x_4027.z, x_4028.w);
      let x_4031 : i32 = u_xlati84;
      let x_4033 : f32 = x_246.x_AdditionalShadowParams[x_4031].y;
      u_xlatb87 = (0.0f < x_4033);
      let x_4035 : bool = u_xlatb87;
      if (x_4035) {
        let x_4038 : i32 = u_xlati84;
        let x_4040 : f32 = x_246.x_AdditionalShadowParams[x_4038].y;
        u_xlatb87 = (1.0f == x_4040);
        let x_4042 : bool = u_xlatb87;
        if (x_4042) {
          let x_4045 : vec4<f32> = u_xlat11;
          let x_4048 : vec4<f32> = x_246.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_4045.x, x_4045.y, x_4045.x, x_4045.y) + x_4048);
          let x_4051 : vec4<f32> = u_xlat12;
          let x_4052 : vec2<f32> = vec2<f32>(x_4051.x, x_4051.y);
          let x_4054 : f32 = u_xlat11.z;
          txVec60 = vec3<f32>(x_4052.x, x_4052.y, x_4054);
          let x_4062 : vec3<f32> = txVec60;
          let x_4064 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4062.xy, x_4062.z);
          u_xlat13.x = x_4064;
          let x_4067 : vec4<f32> = u_xlat12;
          let x_4068 : vec2<f32> = vec2<f32>(x_4067.z, x_4067.w);
          let x_4070 : f32 = u_xlat11.z;
          txVec61 = vec3<f32>(x_4068.x, x_4068.y, x_4070);
          let x_4077 : vec3<f32> = txVec61;
          let x_4079 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4077.xy, x_4077.z);
          u_xlat13.y = x_4079;
          let x_4081 : vec4<f32> = u_xlat11;
          let x_4085 : vec4<f32> = x_246.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_4081.x, x_4081.y, x_4081.x, x_4081.y) + x_4085);
          let x_4088 : vec4<f32> = u_xlat12;
          let x_4089 : vec2<f32> = vec2<f32>(x_4088.x, x_4088.y);
          let x_4091 : f32 = u_xlat11.z;
          txVec62 = vec3<f32>(x_4089.x, x_4089.y, x_4091);
          let x_4098 : vec3<f32> = txVec62;
          let x_4100 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4098.xy, x_4098.z);
          u_xlat13.z = x_4100;
          let x_4103 : vec4<f32> = u_xlat12;
          let x_4104 : vec2<f32> = vec2<f32>(x_4103.z, x_4103.w);
          let x_4106 : f32 = u_xlat11.z;
          txVec63 = vec3<f32>(x_4104.x, x_4104.y, x_4106);
          let x_4113 : vec3<f32> = txVec63;
          let x_4115 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4113.xy, x_4113.z);
          u_xlat13.w = x_4115;
          let x_4117 : vec4<f32> = u_xlat13;
          u_xlat87 = dot(x_4117, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_4120 : i32 = u_xlati84;
          let x_4122 : f32 = x_246.x_AdditionalShadowParams[x_4120].y;
          u_xlatb88 = (2.0f == x_4122);
          let x_4124 : bool = u_xlatb88;
          if (x_4124) {
            let x_4127 : vec4<f32> = u_xlat11;
            let x_4131 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4134 : vec2<f32> = ((vec2<f32>(x_4127.x, x_4127.y) * vec2<f32>(x_4131.z, x_4131.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4135 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4134.x, x_4134.y, x_4135.z, x_4135.w);
            let x_4137 : vec4<f32> = u_xlat12;
            let x_4139 : vec2<f32> = floor(vec2<f32>(x_4137.x, x_4137.y));
            let x_4140 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4139.x, x_4139.y, x_4140.z, x_4140.w);
            let x_4143 : vec4<f32> = u_xlat11;
            let x_4146 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4149 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4143.x, x_4143.y) * vec2<f32>(x_4146.z, x_4146.w)) + -(vec2<f32>(x_4149.x, x_4149.y)));
            let x_4153 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4153.x, x_4153.x, x_4153.y, x_4153.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4156 : vec4<f32> = u_xlat13;
            let x_4158 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4156.x, x_4156.x, x_4156.z, x_4156.z) * vec4<f32>(x_4158.x, x_4158.x, x_4158.z, x_4158.z));
            let x_4161 : vec4<f32> = u_xlat14;
            let x_4163 : vec2<f32> = (vec2<f32>(x_4161.y, x_4161.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_4164 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4163.x, x_4164.y, x_4163.y, x_4164.w);
            let x_4166 : vec4<f32> = u_xlat14;
            let x_4169 : vec2<f32> = u_xlat64;
            let x_4171 : vec2<f32> = ((vec2<f32>(x_4166.x, x_4166.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4169));
            let x_4172 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4171.x, x_4171.y, x_4172.z, x_4172.w);
            let x_4174 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_4174) + vec2<f32>(1.0f, 1.0f));
            let x_4177 : vec2<f32> = u_xlat64;
            let x_4178 : vec2<f32> = min(x_4177, vec2<f32>(0.0f, 0.0f));
            let x_4179 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4178.x, x_4178.y, x_4179.z, x_4179.w);
            let x_4181 : vec4<f32> = u_xlat15;
            let x_4184 : vec4<f32> = u_xlat15;
            let x_4187 : vec2<f32> = u_xlat66;
            let x_4188 : vec2<f32> = ((-(vec2<f32>(x_4181.x, x_4181.y)) * vec2<f32>(x_4184.x, x_4184.y)) + x_4187);
            let x_4189 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4188.x, x_4188.y, x_4189.z, x_4189.w);
            let x_4191 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_4191, vec2<f32>(0.0f, 0.0f));
            let x_4193 : vec2<f32> = u_xlat64;
            let x_4195 : vec2<f32> = u_xlat64;
            let x_4197 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_4193) * x_4195) + vec2<f32>(x_4197.y, x_4197.w));
            let x_4200 : vec4<f32> = u_xlat15;
            let x_4202 : vec2<f32> = (vec2<f32>(x_4200.x, x_4200.y) + vec2<f32>(1.0f, 1.0f));
            let x_4203 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4202.x, x_4202.y, x_4203.z, x_4203.w);
            let x_4205 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_4205 + vec2<f32>(1.0f, 1.0f));
            let x_4207 : vec4<f32> = u_xlat14;
            let x_4209 : vec2<f32> = (vec2<f32>(x_4207.x, x_4207.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4210 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4209.x, x_4209.y, x_4210.z, x_4210.w);
            let x_4212 : vec2<f32> = u_xlat66;
            let x_4213 : vec2<f32> = (x_4212 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4214 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4213.x, x_4213.y, x_4214.z, x_4214.w);
            let x_4216 : vec4<f32> = u_xlat15;
            let x_4218 : vec2<f32> = (vec2<f32>(x_4216.x, x_4216.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4219 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4218.x, x_4218.y, x_4219.z, x_4219.w);
            let x_4221 : vec2<f32> = u_xlat64;
            let x_4222 : vec2<f32> = (x_4221 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4223 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4222.x, x_4222.y, x_4223.z, x_4223.w);
            let x_4225 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_4225.y, x_4225.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4229 : f32 = u_xlat15.x;
            u_xlat16.z = x_4229;
            let x_4232 : f32 = u_xlat64.x;
            u_xlat16.w = x_4232;
            let x_4235 : f32 = u_xlat17.x;
            u_xlat14.z = x_4235;
            let x_4238 : f32 = u_xlat13.x;
            u_xlat14.w = x_4238;
            let x_4240 : vec4<f32> = u_xlat14;
            let x_4242 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_4240.z, x_4240.w, x_4240.x, x_4240.z) + vec4<f32>(x_4242.z, x_4242.w, x_4242.x, x_4242.z));
            let x_4246 : f32 = u_xlat16.y;
            u_xlat15.z = x_4246;
            let x_4249 : f32 = u_xlat64.y;
            u_xlat15.w = x_4249;
            let x_4252 : f32 = u_xlat14.y;
            u_xlat17.z = x_4252;
            let x_4255 : f32 = u_xlat13.z;
            u_xlat17.w = x_4255;
            let x_4257 : vec4<f32> = u_xlat15;
            let x_4259 : vec4<f32> = u_xlat17;
            let x_4261 : vec3<f32> = (vec3<f32>(x_4257.z, x_4257.y, x_4257.w) + vec3<f32>(x_4259.z, x_4259.y, x_4259.w));
            let x_4262 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4261.x, x_4261.y, x_4261.z, x_4262.w);
            let x_4264 : vec4<f32> = u_xlat14;
            let x_4266 : vec4<f32> = u_xlat18;
            let x_4268 : vec3<f32> = (vec3<f32>(x_4264.x, x_4264.z, x_4264.w) / vec3<f32>(x_4266.z, x_4266.w, x_4266.y));
            let x_4269 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4268.x, x_4268.y, x_4268.z, x_4269.w);
            let x_4271 : vec4<f32> = u_xlat14;
            let x_4273 : vec3<f32> = (vec3<f32>(x_4271.x, x_4271.y, x_4271.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4274 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4273.x, x_4273.y, x_4273.z, x_4274.w);
            let x_4276 : vec4<f32> = u_xlat17;
            let x_4278 : vec4<f32> = u_xlat13;
            let x_4280 : vec3<f32> = (vec3<f32>(x_4276.z, x_4276.y, x_4276.w) / vec3<f32>(x_4278.x, x_4278.y, x_4278.z));
            let x_4281 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4280.x, x_4280.y, x_4280.z, x_4281.w);
            let x_4283 : vec4<f32> = u_xlat15;
            let x_4285 : vec3<f32> = (vec3<f32>(x_4283.x, x_4283.y, x_4283.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4286 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4285.x, x_4285.y, x_4285.z, x_4286.w);
            let x_4288 : vec4<f32> = u_xlat14;
            let x_4291 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4293 : vec3<f32> = (vec3<f32>(x_4288.y, x_4288.x, x_4288.z) * vec3<f32>(x_4291.x, x_4291.x, x_4291.x));
            let x_4294 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4293.x, x_4293.y, x_4293.z, x_4294.w);
            let x_4296 : vec4<f32> = u_xlat15;
            let x_4299 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4301 : vec3<f32> = (vec3<f32>(x_4296.x, x_4296.y, x_4296.z) * vec3<f32>(x_4299.y, x_4299.y, x_4299.y));
            let x_4302 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4301.x, x_4301.y, x_4301.z, x_4302.w);
            let x_4305 : f32 = u_xlat15.x;
            u_xlat14.w = x_4305;
            let x_4307 : vec4<f32> = u_xlat12;
            let x_4310 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4313 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4307.x, x_4307.y, x_4307.x, x_4307.y) * vec4<f32>(x_4310.x, x_4310.y, x_4310.x, x_4310.y)) + vec4<f32>(x_4313.y, x_4313.w, x_4313.x, x_4313.w));
            let x_4316 : vec4<f32> = u_xlat12;
            let x_4319 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4322 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4316.x, x_4316.y) * vec2<f32>(x_4319.x, x_4319.y)) + vec2<f32>(x_4322.z, x_4322.w));
            let x_4326 : f32 = u_xlat14.y;
            u_xlat15.w = x_4326;
            let x_4328 : vec4<f32> = u_xlat15;
            let x_4329 : vec2<f32> = vec2<f32>(x_4328.y, x_4328.z);
            let x_4330 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4330.x, x_4329.x, x_4330.z, x_4329.y);
            let x_4332 : vec4<f32> = u_xlat12;
            let x_4335 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4338 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_4332.x, x_4332.y, x_4332.x, x_4332.y) * vec4<f32>(x_4335.x, x_4335.y, x_4335.x, x_4335.y)) + vec4<f32>(x_4338.x, x_4338.y, x_4338.z, x_4338.y));
            let x_4341 : vec4<f32> = u_xlat12;
            let x_4344 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4347 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4341.x, x_4341.y, x_4341.x, x_4341.y) * vec4<f32>(x_4344.x, x_4344.y, x_4344.x, x_4344.y)) + vec4<f32>(x_4347.w, x_4347.y, x_4347.w, x_4347.z));
            let x_4350 : vec4<f32> = u_xlat12;
            let x_4353 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4356 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4350.x, x_4350.y, x_4350.x, x_4350.y) * vec4<f32>(x_4353.x, x_4353.y, x_4353.x, x_4353.y)) + vec4<f32>(x_4356.x, x_4356.w, x_4356.z, x_4356.w));
            let x_4359 : vec4<f32> = u_xlat13;
            let x_4361 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_4359.x, x_4359.x, x_4359.x, x_4359.y) * vec4<f32>(x_4361.z, x_4361.w, x_4361.y, x_4361.z));
            let x_4364 : vec4<f32> = u_xlat13;
            let x_4366 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_4364.y, x_4364.y, x_4364.z, x_4364.z) * x_4366);
            let x_4369 : f32 = u_xlat13.z;
            let x_4371 : f32 = u_xlat18.y;
            u_xlat88 = (x_4369 * x_4371);
            let x_4374 : vec4<f32> = u_xlat16;
            let x_4375 : vec2<f32> = vec2<f32>(x_4374.x, x_4374.y);
            let x_4377 : f32 = u_xlat11.z;
            txVec64 = vec3<f32>(x_4375.x, x_4375.y, x_4377);
            let x_4384 : vec3<f32> = txVec64;
            let x_4386 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4384.xy, x_4384.z);
            u_xlat89 = x_4386;
            let x_4388 : vec4<f32> = u_xlat16;
            let x_4389 : vec2<f32> = vec2<f32>(x_4388.z, x_4388.w);
            let x_4391 : f32 = u_xlat11.z;
            txVec65 = vec3<f32>(x_4389.x, x_4389.y, x_4391);
            let x_4398 : vec3<f32> = txVec65;
            let x_4400 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4398.xy, x_4398.z);
            u_xlat12.x = x_4400;
            let x_4403 : f32 = u_xlat12.x;
            let x_4405 : f32 = u_xlat19.y;
            u_xlat12.x = (x_4403 * x_4405);
            let x_4409 : f32 = u_xlat19.x;
            let x_4410 : f32 = u_xlat89;
            let x_4413 : f32 = u_xlat12.x;
            u_xlat89 = ((x_4409 * x_4410) + x_4413);
            let x_4416 : vec2<f32> = u_xlat64;
            let x_4418 : f32 = u_xlat11.z;
            txVec66 = vec3<f32>(x_4416.x, x_4416.y, x_4418);
            let x_4425 : vec3<f32> = txVec66;
            let x_4427 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4425.xy, x_4425.z);
            u_xlat12.x = x_4427;
            let x_4430 : f32 = u_xlat19.z;
            let x_4432 : f32 = u_xlat12.x;
            let x_4434 : f32 = u_xlat89;
            u_xlat89 = ((x_4430 * x_4432) + x_4434);
            let x_4437 : vec4<f32> = u_xlat15;
            let x_4438 : vec2<f32> = vec2<f32>(x_4437.x, x_4437.y);
            let x_4440 : f32 = u_xlat11.z;
            txVec67 = vec3<f32>(x_4438.x, x_4438.y, x_4440);
            let x_4447 : vec3<f32> = txVec67;
            let x_4449 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4447.xy, x_4447.z);
            u_xlat12.x = x_4449;
            let x_4452 : f32 = u_xlat19.w;
            let x_4454 : f32 = u_xlat12.x;
            let x_4456 : f32 = u_xlat89;
            u_xlat89 = ((x_4452 * x_4454) + x_4456);
            let x_4459 : vec4<f32> = u_xlat17;
            let x_4460 : vec2<f32> = vec2<f32>(x_4459.x, x_4459.y);
            let x_4462 : f32 = u_xlat11.z;
            txVec68 = vec3<f32>(x_4460.x, x_4460.y, x_4462);
            let x_4469 : vec3<f32> = txVec68;
            let x_4471 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4469.xy, x_4469.z);
            u_xlat12.x = x_4471;
            let x_4474 : f32 = u_xlat20.x;
            let x_4476 : f32 = u_xlat12.x;
            let x_4478 : f32 = u_xlat89;
            u_xlat89 = ((x_4474 * x_4476) + x_4478);
            let x_4481 : vec4<f32> = u_xlat17;
            let x_4482 : vec2<f32> = vec2<f32>(x_4481.z, x_4481.w);
            let x_4484 : f32 = u_xlat11.z;
            txVec69 = vec3<f32>(x_4482.x, x_4482.y, x_4484);
            let x_4491 : vec3<f32> = txVec69;
            let x_4493 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4491.xy, x_4491.z);
            u_xlat12.x = x_4493;
            let x_4496 : f32 = u_xlat20.y;
            let x_4498 : f32 = u_xlat12.x;
            let x_4500 : f32 = u_xlat89;
            u_xlat89 = ((x_4496 * x_4498) + x_4500);
            let x_4503 : vec4<f32> = u_xlat15;
            let x_4504 : vec2<f32> = vec2<f32>(x_4503.z, x_4503.w);
            let x_4506 : f32 = u_xlat11.z;
            txVec70 = vec3<f32>(x_4504.x, x_4504.y, x_4506);
            let x_4513 : vec3<f32> = txVec70;
            let x_4515 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4513.xy, x_4513.z);
            u_xlat12.x = x_4515;
            let x_4518 : f32 = u_xlat20.z;
            let x_4520 : f32 = u_xlat12.x;
            let x_4522 : f32 = u_xlat89;
            u_xlat89 = ((x_4518 * x_4520) + x_4522);
            let x_4525 : vec4<f32> = u_xlat14;
            let x_4526 : vec2<f32> = vec2<f32>(x_4525.x, x_4525.y);
            let x_4528 : f32 = u_xlat11.z;
            txVec71 = vec3<f32>(x_4526.x, x_4526.y, x_4528);
            let x_4535 : vec3<f32> = txVec71;
            let x_4537 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4535.xy, x_4535.z);
            u_xlat12.x = x_4537;
            let x_4540 : f32 = u_xlat20.w;
            let x_4542 : f32 = u_xlat12.x;
            let x_4544 : f32 = u_xlat89;
            u_xlat89 = ((x_4540 * x_4542) + x_4544);
            let x_4547 : vec4<f32> = u_xlat14;
            let x_4548 : vec2<f32> = vec2<f32>(x_4547.z, x_4547.w);
            let x_4550 : f32 = u_xlat11.z;
            txVec72 = vec3<f32>(x_4548.x, x_4548.y, x_4550);
            let x_4557 : vec3<f32> = txVec72;
            let x_4559 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4557.xy, x_4557.z);
            u_xlat12.x = x_4559;
            let x_4561 : f32 = u_xlat88;
            let x_4563 : f32 = u_xlat12.x;
            let x_4565 : f32 = u_xlat89;
            u_xlat87 = ((x_4561 * x_4563) + x_4565);
          } else {
            let x_4568 : vec4<f32> = u_xlat11;
            let x_4571 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4574 : vec2<f32> = ((vec2<f32>(x_4568.x, x_4568.y) * vec2<f32>(x_4571.z, x_4571.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4575 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4574.x, x_4574.y, x_4575.z, x_4575.w);
            let x_4577 : vec4<f32> = u_xlat12;
            let x_4579 : vec2<f32> = floor(vec2<f32>(x_4577.x, x_4577.y));
            let x_4580 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4579.x, x_4579.y, x_4580.z, x_4580.w);
            let x_4582 : vec4<f32> = u_xlat11;
            let x_4585 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4588 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4582.x, x_4582.y) * vec2<f32>(x_4585.z, x_4585.w)) + -(vec2<f32>(x_4588.x, x_4588.y)));
            let x_4592 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4592.x, x_4592.x, x_4592.y, x_4592.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4595 : vec4<f32> = u_xlat13;
            let x_4597 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4595.x, x_4595.x, x_4595.z, x_4595.z) * vec4<f32>(x_4597.x, x_4597.x, x_4597.z, x_4597.z));
            let x_4600 : vec4<f32> = u_xlat14;
            let x_4602 : vec2<f32> = (vec2<f32>(x_4600.y, x_4600.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4603 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4603.x, x_4602.x, x_4603.z, x_4602.y);
            let x_4605 : vec4<f32> = u_xlat14;
            let x_4608 : vec2<f32> = u_xlat64;
            let x_4610 : vec2<f32> = ((vec2<f32>(x_4605.x, x_4605.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4608));
            let x_4611 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4610.x, x_4611.y, x_4610.y, x_4611.w);
            let x_4613 : vec2<f32> = u_xlat64;
            let x_4615 : vec2<f32> = (-(x_4613) + vec2<f32>(1.0f, 1.0f));
            let x_4616 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4615.x, x_4615.y, x_4616.z, x_4616.w);
            let x_4618 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_4618, vec2<f32>(0.0f, 0.0f));
            let x_4620 : vec2<f32> = u_xlat66;
            let x_4622 : vec2<f32> = u_xlat66;
            let x_4624 : vec4<f32> = u_xlat14;
            let x_4626 : vec2<f32> = ((-(x_4620) * x_4622) + vec2<f32>(x_4624.x, x_4624.y));
            let x_4627 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4626.x, x_4626.y, x_4627.z, x_4627.w);
            let x_4629 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_4629, vec2<f32>(0.0f, 0.0f));
            let x_4632 : vec2<f32> = u_xlat66;
            let x_4634 : vec2<f32> = u_xlat66;
            let x_4636 : vec4<f32> = u_xlat13;
            let x_4638 : vec2<f32> = ((-(x_4632) * x_4634) + vec2<f32>(x_4636.y, x_4636.w));
            let x_4639 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_4638.x, x_4639.y, x_4638.y);
            let x_4641 : vec4<f32> = u_xlat14;
            let x_4643 : vec2<f32> = (vec2<f32>(x_4641.x, x_4641.y) + vec2<f32>(2.0f, 2.0f));
            let x_4644 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4643.x, x_4643.y, x_4644.z, x_4644.w);
            let x_4646 : vec3<f32> = u_xlat39;
            let x_4648 : vec2<f32> = (vec2<f32>(x_4646.x, x_4646.z) + vec2<f32>(2.0f, 2.0f));
            let x_4649 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4649.x, x_4648.x, x_4649.z, x_4648.y);
            let x_4652 : f32 = u_xlat13.y;
            u_xlat16.z = (x_4652 * 0.08163200318813323975f);
            let x_4655 : vec4<f32> = u_xlat13;
            let x_4657 : vec3<f32> = (vec3<f32>(x_4655.z, x_4655.x, x_4655.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4658 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4657.x, x_4657.y, x_4657.z, x_4658.w);
            let x_4660 : vec4<f32> = u_xlat14;
            let x_4662 : vec2<f32> = (vec2<f32>(x_4660.x, x_4660.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4663 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4662.x, x_4662.y, x_4663.z, x_4663.w);
            let x_4666 : f32 = u_xlat17.y;
            u_xlat16.x = x_4666;
            let x_4668 : vec2<f32> = u_xlat64;
            let x_4671 : vec2<f32> = ((vec2<f32>(x_4668.x, x_4668.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4672 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4672.x, x_4671.x, x_4672.z, x_4671.y);
            let x_4674 : vec2<f32> = u_xlat64;
            let x_4677 : vec2<f32> = ((vec2<f32>(x_4674.x, x_4674.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4678 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4677.x, x_4678.y, x_4677.y, x_4678.w);
            let x_4681 : f32 = u_xlat13.x;
            u_xlat14.y = x_4681;
            let x_4684 : f32 = u_xlat15.y;
            u_xlat14.w = x_4684;
            let x_4686 : vec4<f32> = u_xlat14;
            let x_4687 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4686 + x_4687);
            let x_4689 : vec2<f32> = u_xlat64;
            let x_4692 : vec2<f32> = ((vec2<f32>(x_4689.y, x_4689.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4693 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4693.x, x_4692.x, x_4693.z, x_4692.y);
            let x_4695 : vec2<f32> = u_xlat64;
            let x_4698 : vec2<f32> = ((vec2<f32>(x_4695.y, x_4695.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4699 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4698.x, x_4699.y, x_4698.y, x_4699.w);
            let x_4702 : f32 = u_xlat13.y;
            u_xlat15.y = x_4702;
            let x_4704 : vec4<f32> = u_xlat15;
            let x_4705 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4704 + x_4705);
            let x_4707 : vec4<f32> = u_xlat14;
            let x_4708 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_4707 / x_4708);
            let x_4710 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4710 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4712 : vec4<f32> = u_xlat15;
            let x_4713 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_4712 / x_4713);
            let x_4715 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4715 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4717 : vec4<f32> = u_xlat14;
            let x_4720 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4717.w, x_4717.x, x_4717.y, x_4717.z) * vec4<f32>(x_4720.x, x_4720.x, x_4720.x, x_4720.x));
            let x_4723 : vec4<f32> = u_xlat15;
            let x_4726 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_4723.x, x_4723.w, x_4723.y, x_4723.z) * vec4<f32>(x_4726.y, x_4726.y, x_4726.y, x_4726.y));
            let x_4729 : vec4<f32> = u_xlat14;
            let x_4730 : vec3<f32> = vec3<f32>(x_4729.y, x_4729.z, x_4729.w);
            let x_4731 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4730.x, x_4731.y, x_4730.y, x_4730.z);
            let x_4734 : f32 = u_xlat15.x;
            u_xlat17.y = x_4734;
            let x_4736 : vec4<f32> = u_xlat12;
            let x_4739 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4742 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4736.x, x_4736.y, x_4736.x, x_4736.y) * vec4<f32>(x_4739.x, x_4739.y, x_4739.x, x_4739.y)) + vec4<f32>(x_4742.x, x_4742.y, x_4742.z, x_4742.y));
            let x_4745 : vec4<f32> = u_xlat12;
            let x_4748 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4751 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_4745.x, x_4745.y) * vec2<f32>(x_4748.x, x_4748.y)) + vec2<f32>(x_4751.w, x_4751.y));
            let x_4755 : f32 = u_xlat17.y;
            u_xlat14.y = x_4755;
            let x_4758 : f32 = u_xlat15.z;
            u_xlat17.y = x_4758;
            let x_4760 : vec4<f32> = u_xlat12;
            let x_4763 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4766 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_4760.x, x_4760.y, x_4760.x, x_4760.y) * vec4<f32>(x_4763.x, x_4763.y, x_4763.x, x_4763.y)) + vec4<f32>(x_4766.x, x_4766.y, x_4766.z, x_4766.y));
            let x_4769 : vec4<f32> = u_xlat12;
            let x_4772 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4775 : vec4<f32> = u_xlat17;
            let x_4777 : vec2<f32> = ((vec2<f32>(x_4769.x, x_4769.y) * vec2<f32>(x_4772.x, x_4772.y)) + vec2<f32>(x_4775.w, x_4775.y));
            let x_4778 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_4777.x, x_4777.y, x_4778.z, x_4778.w);
            let x_4781 : f32 = u_xlat17.y;
            u_xlat14.z = x_4781;
            let x_4783 : vec4<f32> = u_xlat12;
            let x_4786 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4789 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4783.x, x_4783.y, x_4783.x, x_4783.y) * vec4<f32>(x_4786.x, x_4786.y, x_4786.x, x_4786.y)) + vec4<f32>(x_4789.x, x_4789.y, x_4789.x, x_4789.z));
            let x_4793 : f32 = u_xlat15.w;
            u_xlat17.y = x_4793;
            let x_4796 : vec4<f32> = u_xlat12;
            let x_4799 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4802 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4796.x, x_4796.y, x_4796.x, x_4796.y) * vec4<f32>(x_4799.x, x_4799.y, x_4799.x, x_4799.y)) + vec4<f32>(x_4802.x, x_4802.y, x_4802.z, x_4802.y));
            let x_4806 : vec4<f32> = u_xlat12;
            let x_4809 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4812 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_4806.x, x_4806.y) * vec2<f32>(x_4809.x, x_4809.y)) + vec2<f32>(x_4812.w, x_4812.y));
            let x_4816 : f32 = u_xlat17.y;
            u_xlat14.w = x_4816;
            let x_4819 : vec4<f32> = u_xlat12;
            let x_4822 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4825 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4819.x, x_4819.y) * vec2<f32>(x_4822.x, x_4822.y)) + vec2<f32>(x_4825.x, x_4825.w));
            let x_4828 : vec4<f32> = u_xlat17;
            let x_4829 : vec3<f32> = vec3<f32>(x_4828.x, x_4828.z, x_4828.w);
            let x_4830 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4829.x, x_4830.y, x_4829.y, x_4829.z);
            let x_4832 : vec4<f32> = u_xlat12;
            let x_4835 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4838 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4832.x, x_4832.y, x_4832.x, x_4832.y) * vec4<f32>(x_4835.x, x_4835.y, x_4835.x, x_4835.y)) + vec4<f32>(x_4838.x, x_4838.y, x_4838.z, x_4838.y));
            let x_4842 : vec4<f32> = u_xlat12;
            let x_4845 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4848 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4842.x, x_4842.y) * vec2<f32>(x_4845.x, x_4845.y)) + vec2<f32>(x_4848.w, x_4848.y));
            let x_4852 : f32 = u_xlat14.x;
            u_xlat15.x = x_4852;
            let x_4854 : vec4<f32> = u_xlat12;
            let x_4857 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4860 : vec4<f32> = u_xlat15;
            let x_4862 : vec2<f32> = ((vec2<f32>(x_4854.x, x_4854.y) * vec2<f32>(x_4857.x, x_4857.y)) + vec2<f32>(x_4860.x, x_4860.y));
            let x_4863 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4862.x, x_4862.y, x_4863.z, x_4863.w);
            let x_4866 : vec4<f32> = u_xlat13;
            let x_4868 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4866.x, x_4866.x, x_4866.x, x_4866.x) * x_4868);
            let x_4871 : vec4<f32> = u_xlat13;
            let x_4873 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4871.y, x_4871.y, x_4871.y, x_4871.y) * x_4873);
            let x_4876 : vec4<f32> = u_xlat13;
            let x_4878 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4876.z, x_4876.z, x_4876.z, x_4876.z) * x_4878);
            let x_4880 : vec4<f32> = u_xlat13;
            let x_4882 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4880.w, x_4880.w, x_4880.w, x_4880.w) * x_4882);
            let x_4885 : vec4<f32> = u_xlat18;
            let x_4886 : vec2<f32> = vec2<f32>(x_4885.x, x_4885.y);
            let x_4888 : f32 = u_xlat11.z;
            txVec73 = vec3<f32>(x_4886.x, x_4886.y, x_4888);
            let x_4895 : vec3<f32> = txVec73;
            let x_4897 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4895.xy, x_4895.z);
            u_xlat88 = x_4897;
            let x_4899 : vec4<f32> = u_xlat18;
            let x_4900 : vec2<f32> = vec2<f32>(x_4899.z, x_4899.w);
            let x_4902 : f32 = u_xlat11.z;
            txVec74 = vec3<f32>(x_4900.x, x_4900.y, x_4902);
            let x_4909 : vec3<f32> = txVec74;
            let x_4911 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4909.xy, x_4909.z);
            u_xlat89 = x_4911;
            let x_4912 : f32 = u_xlat89;
            let x_4914 : f32 = u_xlat23.y;
            u_xlat89 = (x_4912 * x_4914);
            let x_4917 : f32 = u_xlat23.x;
            let x_4918 : f32 = u_xlat88;
            let x_4920 : f32 = u_xlat89;
            u_xlat88 = ((x_4917 * x_4918) + x_4920);
            let x_4923 : vec2<f32> = u_xlat64;
            let x_4925 : f32 = u_xlat11.z;
            txVec75 = vec3<f32>(x_4923.x, x_4923.y, x_4925);
            let x_4932 : vec3<f32> = txVec75;
            let x_4934 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4932.xy, x_4932.z);
            u_xlat89 = x_4934;
            let x_4936 : f32 = u_xlat23.z;
            let x_4937 : f32 = u_xlat89;
            let x_4939 : f32 = u_xlat88;
            u_xlat88 = ((x_4936 * x_4937) + x_4939);
            let x_4942 : vec4<f32> = u_xlat21;
            let x_4943 : vec2<f32> = vec2<f32>(x_4942.x, x_4942.y);
            let x_4945 : f32 = u_xlat11.z;
            txVec76 = vec3<f32>(x_4943.x, x_4943.y, x_4945);
            let x_4952 : vec3<f32> = txVec76;
            let x_4954 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4952.xy, x_4952.z);
            u_xlat89 = x_4954;
            let x_4956 : f32 = u_xlat23.w;
            let x_4957 : f32 = u_xlat89;
            let x_4959 : f32 = u_xlat88;
            u_xlat88 = ((x_4956 * x_4957) + x_4959);
            let x_4962 : vec4<f32> = u_xlat19;
            let x_4963 : vec2<f32> = vec2<f32>(x_4962.x, x_4962.y);
            let x_4965 : f32 = u_xlat11.z;
            txVec77 = vec3<f32>(x_4963.x, x_4963.y, x_4965);
            let x_4972 : vec3<f32> = txVec77;
            let x_4974 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4972.xy, x_4972.z);
            u_xlat89 = x_4974;
            let x_4976 : f32 = u_xlat24.x;
            let x_4977 : f32 = u_xlat89;
            let x_4979 : f32 = u_xlat88;
            u_xlat88 = ((x_4976 * x_4977) + x_4979);
            let x_4982 : vec4<f32> = u_xlat19;
            let x_4983 : vec2<f32> = vec2<f32>(x_4982.z, x_4982.w);
            let x_4985 : f32 = u_xlat11.z;
            txVec78 = vec3<f32>(x_4983.x, x_4983.y, x_4985);
            let x_4992 : vec3<f32> = txVec78;
            let x_4994 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4992.xy, x_4992.z);
            u_xlat89 = x_4994;
            let x_4996 : f32 = u_xlat24.y;
            let x_4997 : f32 = u_xlat89;
            let x_4999 : f32 = u_xlat88;
            u_xlat88 = ((x_4996 * x_4997) + x_4999);
            let x_5002 : vec4<f32> = u_xlat20;
            let x_5003 : vec2<f32> = vec2<f32>(x_5002.x, x_5002.y);
            let x_5005 : f32 = u_xlat11.z;
            txVec79 = vec3<f32>(x_5003.x, x_5003.y, x_5005);
            let x_5012 : vec3<f32> = txVec79;
            let x_5014 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5012.xy, x_5012.z);
            u_xlat89 = x_5014;
            let x_5016 : f32 = u_xlat24.z;
            let x_5017 : f32 = u_xlat89;
            let x_5019 : f32 = u_xlat88;
            u_xlat88 = ((x_5016 * x_5017) + x_5019);
            let x_5022 : vec4<f32> = u_xlat21;
            let x_5023 : vec2<f32> = vec2<f32>(x_5022.z, x_5022.w);
            let x_5025 : f32 = u_xlat11.z;
            txVec80 = vec3<f32>(x_5023.x, x_5023.y, x_5025);
            let x_5032 : vec3<f32> = txVec80;
            let x_5034 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5032.xy, x_5032.z);
            u_xlat89 = x_5034;
            let x_5036 : f32 = u_xlat24.w;
            let x_5037 : f32 = u_xlat89;
            let x_5039 : f32 = u_xlat88;
            u_xlat88 = ((x_5036 * x_5037) + x_5039);
            let x_5042 : vec4<f32> = u_xlat22;
            let x_5043 : vec2<f32> = vec2<f32>(x_5042.x, x_5042.y);
            let x_5045 : f32 = u_xlat11.z;
            txVec81 = vec3<f32>(x_5043.x, x_5043.y, x_5045);
            let x_5052 : vec3<f32> = txVec81;
            let x_5054 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5052.xy, x_5052.z);
            u_xlat89 = x_5054;
            let x_5056 : f32 = u_xlat25.x;
            let x_5057 : f32 = u_xlat89;
            let x_5059 : f32 = u_xlat88;
            u_xlat88 = ((x_5056 * x_5057) + x_5059);
            let x_5062 : vec4<f32> = u_xlat22;
            let x_5063 : vec2<f32> = vec2<f32>(x_5062.z, x_5062.w);
            let x_5065 : f32 = u_xlat11.z;
            txVec82 = vec3<f32>(x_5063.x, x_5063.y, x_5065);
            let x_5072 : vec3<f32> = txVec82;
            let x_5074 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5072.xy, x_5072.z);
            u_xlat89 = x_5074;
            let x_5076 : f32 = u_xlat25.y;
            let x_5077 : f32 = u_xlat89;
            let x_5079 : f32 = u_xlat88;
            u_xlat88 = ((x_5076 * x_5077) + x_5079);
            let x_5082 : vec2<f32> = u_xlat40;
            let x_5084 : f32 = u_xlat11.z;
            txVec83 = vec3<f32>(x_5082.x, x_5082.y, x_5084);
            let x_5091 : vec3<f32> = txVec83;
            let x_5093 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5091.xy, x_5091.z);
            u_xlat89 = x_5093;
            let x_5095 : f32 = u_xlat25.z;
            let x_5096 : f32 = u_xlat89;
            let x_5098 : f32 = u_xlat88;
            u_xlat88 = ((x_5095 * x_5096) + x_5098);
            let x_5101 : vec2<f32> = u_xlat72;
            let x_5103 : f32 = u_xlat11.z;
            txVec84 = vec3<f32>(x_5101.x, x_5101.y, x_5103);
            let x_5110 : vec3<f32> = txVec84;
            let x_5112 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5110.xy, x_5110.z);
            u_xlat89 = x_5112;
            let x_5114 : f32 = u_xlat25.w;
            let x_5115 : f32 = u_xlat89;
            let x_5117 : f32 = u_xlat88;
            u_xlat88 = ((x_5114 * x_5115) + x_5117);
            let x_5120 : vec4<f32> = u_xlat17;
            let x_5121 : vec2<f32> = vec2<f32>(x_5120.x, x_5120.y);
            let x_5123 : f32 = u_xlat11.z;
            txVec85 = vec3<f32>(x_5121.x, x_5121.y, x_5123);
            let x_5130 : vec3<f32> = txVec85;
            let x_5132 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5130.xy, x_5130.z);
            u_xlat89 = x_5132;
            let x_5134 : f32 = u_xlat13.x;
            let x_5135 : f32 = u_xlat89;
            let x_5137 : f32 = u_xlat88;
            u_xlat88 = ((x_5134 * x_5135) + x_5137);
            let x_5140 : vec4<f32> = u_xlat17;
            let x_5141 : vec2<f32> = vec2<f32>(x_5140.z, x_5140.w);
            let x_5143 : f32 = u_xlat11.z;
            txVec86 = vec3<f32>(x_5141.x, x_5141.y, x_5143);
            let x_5150 : vec3<f32> = txVec86;
            let x_5152 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5150.xy, x_5150.z);
            u_xlat89 = x_5152;
            let x_5154 : f32 = u_xlat13.y;
            let x_5155 : f32 = u_xlat89;
            let x_5157 : f32 = u_xlat88;
            u_xlat88 = ((x_5154 * x_5155) + x_5157);
            let x_5160 : vec2<f32> = u_xlat67;
            let x_5162 : f32 = u_xlat11.z;
            txVec87 = vec3<f32>(x_5160.x, x_5160.y, x_5162);
            let x_5169 : vec3<f32> = txVec87;
            let x_5171 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5169.xy, x_5169.z);
            u_xlat89 = x_5171;
            let x_5173 : f32 = u_xlat13.z;
            let x_5174 : f32 = u_xlat89;
            let x_5176 : f32 = u_xlat88;
            u_xlat88 = ((x_5173 * x_5174) + x_5176);
            let x_5179 : vec4<f32> = u_xlat12;
            let x_5180 : vec2<f32> = vec2<f32>(x_5179.x, x_5179.y);
            let x_5182 : f32 = u_xlat11.z;
            txVec88 = vec3<f32>(x_5180.x, x_5180.y, x_5182);
            let x_5189 : vec3<f32> = txVec88;
            let x_5191 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5189.xy, x_5189.z);
            u_xlat89 = x_5191;
            let x_5193 : f32 = u_xlat13.w;
            let x_5194 : f32 = u_xlat89;
            let x_5196 : f32 = u_xlat88;
            u_xlat87 = ((x_5193 * x_5194) + x_5196);
          }
        }
      } else {
        let x_5200 : vec4<f32> = u_xlat11;
        let x_5201 : vec2<f32> = vec2<f32>(x_5200.x, x_5200.y);
        let x_5203 : f32 = u_xlat11.z;
        txVec89 = vec3<f32>(x_5201.x, x_5201.y, x_5203);
        let x_5210 : vec3<f32> = txVec89;
        let x_5212 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5210.xy, x_5210.z);
        u_xlat87 = x_5212;
      }
      let x_5213 : i32 = u_xlati84;
      let x_5215 : f32 = x_246.x_AdditionalShadowParams[x_5213].x;
      u_xlat88 = (1.0f + -(x_5215));
      let x_5218 : f32 = u_xlat87;
      let x_5219 : i32 = u_xlati84;
      let x_5221 : f32 = x_246.x_AdditionalShadowParams[x_5219].x;
      let x_5223 : f32 = u_xlat88;
      u_xlat87 = ((x_5218 * x_5221) + x_5223);
      let x_5226 : f32 = u_xlat11.z;
      u_xlatb88 = (0.0f >= x_5226);
      let x_5229 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_5229 >= 1.0f);
      let x_5232 : bool = u_xlatb88;
      let x_5234 : bool = u_xlatb11.x;
      u_xlatb88 = (x_5232 | x_5234);
      let x_5236 : bool = u_xlatb88;
      let x_5237 : f32 = u_xlat87;
      u_xlat87 = select(x_5237, 1.0f, x_5236);
    } else {
      u_xlat87 = 1.0f;
    }
    let x_5240 : f32 = u_xlat87;
    u_xlat88 = (-(x_5240) + 1.0f);
    let x_5244 : f32 = u_xlat2.x;
    let x_5245 : f32 = u_xlat88;
    let x_5247 : f32 = u_xlat87;
    u_xlat87 = ((x_5244 * x_5245) + x_5247);
    let x_5250 : i32 = u_xlati84;
    u_xlati88 = (1i << bitcast<u32>((x_5250 & 31i)));
    let x_5254 : i32 = u_xlati88;
    let x_5257 : f32 = x_3317.x_AdditionalLightsCookieEnableBits;
    u_xlati88 = bitcast<i32>((bitcast<u32>(x_5254) & bitcast<u32>(x_5257)));
    let x_5261 : i32 = u_xlati88;
    if ((x_5261 != 0i)) {
      let x_5265 : i32 = u_xlati84;
      let x_5267 : f32 = x_3317.x_AdditionalLightsLightTypes[x_5265].el;
      u_xlati88 = i32(x_5267);
      let x_5270 : i32 = u_xlati88;
      u_xlati11 = select(1i, 0i, (x_5270 != 0i));
      let x_5274 : i32 = u_xlati84;
      u_xlati37 = (x_5274 << bitcast<u32>(2i));
      let x_5276 : i32 = u_xlati11;
      if ((x_5276 != 0i)) {
        let x_5280 : vec3<f32> = vs_INTERP8;
        let x_5282 : i32 = u_xlati37;
        let x_5285 : i32 = u_xlati37;
        let x_5289 : vec4<f32> = x_3317.x_AdditionalLightsWorldToLights[((x_5282 + 1i) / 4i)][((x_5285 + 1i) % 4i)];
        let x_5291 : vec3<f32> = (vec3<f32>(x_5280.y, x_5280.y, x_5280.y) * vec3<f32>(x_5289.x, x_5289.y, x_5289.w));
        let x_5292 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5291.x, x_5292.y, x_5291.y, x_5291.z);
        let x_5294 : i32 = u_xlati37;
        let x_5296 : i32 = u_xlati37;
        let x_5299 : vec4<f32> = x_3317.x_AdditionalLightsWorldToLights[(x_5294 / 4i)][(x_5296 % 4i)];
        let x_5301 : vec3<f32> = vs_INTERP8;
        let x_5304 : vec4<f32> = u_xlat11;
        let x_5306 : vec3<f32> = ((vec3<f32>(x_5299.x, x_5299.y, x_5299.w) * vec3<f32>(x_5301.x, x_5301.x, x_5301.x)) + vec3<f32>(x_5304.x, x_5304.z, x_5304.w));
        let x_5307 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5306.x, x_5307.y, x_5306.y, x_5306.z);
        let x_5309 : i32 = u_xlati37;
        let x_5312 : i32 = u_xlati37;
        let x_5316 : vec4<f32> = x_3317.x_AdditionalLightsWorldToLights[((x_5309 + 2i) / 4i)][((x_5312 + 2i) % 4i)];
        let x_5318 : vec3<f32> = vs_INTERP8;
        let x_5321 : vec4<f32> = u_xlat11;
        let x_5323 : vec3<f32> = ((vec3<f32>(x_5316.x, x_5316.y, x_5316.w) * vec3<f32>(x_5318.z, x_5318.z, x_5318.z)) + vec3<f32>(x_5321.x, x_5321.z, x_5321.w));
        let x_5324 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5323.x, x_5324.y, x_5323.y, x_5323.z);
        let x_5326 : vec4<f32> = u_xlat11;
        let x_5328 : i32 = u_xlati37;
        let x_5331 : i32 = u_xlati37;
        let x_5335 : vec4<f32> = x_3317.x_AdditionalLightsWorldToLights[((x_5328 + 3i) / 4i)][((x_5331 + 3i) % 4i)];
        let x_5337 : vec3<f32> = (vec3<f32>(x_5326.x, x_5326.z, x_5326.w) + vec3<f32>(x_5335.x, x_5335.y, x_5335.w));
        let x_5338 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5337.x, x_5338.y, x_5337.y, x_5337.z);
        let x_5340 : vec4<f32> = u_xlat11;
        let x_5342 : vec4<f32> = u_xlat11;
        let x_5344 : vec2<f32> = (vec2<f32>(x_5340.x, x_5340.z) / vec2<f32>(x_5342.w, x_5342.w));
        let x_5345 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5344.x, x_5345.y, x_5344.y, x_5345.w);
        let x_5347 : vec4<f32> = u_xlat11;
        let x_5350 : vec2<f32> = ((vec2<f32>(x_5347.x, x_5347.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_5351 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5350.x, x_5351.y, x_5350.y, x_5351.w);
        let x_5353 : vec4<f32> = u_xlat11;
        let x_5357 : vec2<f32> = clamp(vec2<f32>(x_5353.x, x_5353.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_5358 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5357.x, x_5358.y, x_5357.y, x_5358.w);
        let x_5360 : i32 = u_xlati84;
        let x_5362 : vec4<f32> = x_3317.x_AdditionalLightsCookieAtlasUVRects[x_5360];
        let x_5364 : vec4<f32> = u_xlat11;
        let x_5367 : i32 = u_xlati84;
        let x_5369 : vec4<f32> = x_3317.x_AdditionalLightsCookieAtlasUVRects[x_5367];
        let x_5371 : vec2<f32> = ((vec2<f32>(x_5362.x, x_5362.y) * vec2<f32>(x_5364.x, x_5364.z)) + vec2<f32>(x_5369.z, x_5369.w));
        let x_5372 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5371.x, x_5372.y, x_5371.y, x_5372.w);
      } else {
        let x_5375 : i32 = u_xlati88;
        u_xlatb88 = (x_5375 == 1i);
        let x_5377 : bool = u_xlatb88;
        u_xlati88 = select(0i, 1i, x_5377);
        let x_5379 : i32 = u_xlati88;
        if ((x_5379 != 0i)) {
          let x_5383 : vec3<f32> = vs_INTERP8;
          let x_5385 : i32 = u_xlati37;
          let x_5388 : i32 = u_xlati37;
          let x_5392 : vec4<f32> = x_3317.x_AdditionalLightsWorldToLights[((x_5385 + 1i) / 4i)][((x_5388 + 1i) % 4i)];
          let x_5394 : vec2<f32> = (vec2<f32>(x_5383.y, x_5383.y) * vec2<f32>(x_5392.x, x_5392.y));
          let x_5395 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5394.x, x_5394.y, x_5395.z, x_5395.w);
          let x_5397 : i32 = u_xlati37;
          let x_5399 : i32 = u_xlati37;
          let x_5402 : vec4<f32> = x_3317.x_AdditionalLightsWorldToLights[(x_5397 / 4i)][(x_5399 % 4i)];
          let x_5404 : vec3<f32> = vs_INTERP8;
          let x_5407 : vec4<f32> = u_xlat12;
          let x_5409 : vec2<f32> = ((vec2<f32>(x_5402.x, x_5402.y) * vec2<f32>(x_5404.x, x_5404.x)) + vec2<f32>(x_5407.x, x_5407.y));
          let x_5410 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5409.x, x_5409.y, x_5410.z, x_5410.w);
          let x_5412 : i32 = u_xlati37;
          let x_5415 : i32 = u_xlati37;
          let x_5419 : vec4<f32> = x_3317.x_AdditionalLightsWorldToLights[((x_5412 + 2i) / 4i)][((x_5415 + 2i) % 4i)];
          let x_5421 : vec3<f32> = vs_INTERP8;
          let x_5424 : vec4<f32> = u_xlat12;
          let x_5426 : vec2<f32> = ((vec2<f32>(x_5419.x, x_5419.y) * vec2<f32>(x_5421.z, x_5421.z)) + vec2<f32>(x_5424.x, x_5424.y));
          let x_5427 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5426.x, x_5426.y, x_5427.z, x_5427.w);
          let x_5429 : vec4<f32> = u_xlat12;
          let x_5431 : i32 = u_xlati37;
          let x_5434 : i32 = u_xlati37;
          let x_5438 : vec4<f32> = x_3317.x_AdditionalLightsWorldToLights[((x_5431 + 3i) / 4i)][((x_5434 + 3i) % 4i)];
          let x_5440 : vec2<f32> = (vec2<f32>(x_5429.x, x_5429.y) + vec2<f32>(x_5438.x, x_5438.y));
          let x_5441 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5440.x, x_5440.y, x_5441.z, x_5441.w);
          let x_5443 : vec4<f32> = u_xlat12;
          let x_5446 : vec2<f32> = ((vec2<f32>(x_5443.x, x_5443.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5447 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5446.x, x_5446.y, x_5447.z, x_5447.w);
          let x_5449 : vec4<f32> = u_xlat12;
          let x_5451 : vec2<f32> = fract(vec2<f32>(x_5449.x, x_5449.y));
          let x_5452 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5451.x, x_5451.y, x_5452.z, x_5452.w);
          let x_5454 : i32 = u_xlati84;
          let x_5456 : vec4<f32> = x_3317.x_AdditionalLightsCookieAtlasUVRects[x_5454];
          let x_5458 : vec4<f32> = u_xlat12;
          let x_5461 : i32 = u_xlati84;
          let x_5463 : vec4<f32> = x_3317.x_AdditionalLightsCookieAtlasUVRects[x_5461];
          let x_5465 : vec2<f32> = ((vec2<f32>(x_5456.x, x_5456.y) * vec2<f32>(x_5458.x, x_5458.y)) + vec2<f32>(x_5463.z, x_5463.w));
          let x_5466 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5465.x, x_5466.y, x_5465.y, x_5466.w);
        } else {
          let x_5469 : vec3<f32> = vs_INTERP8;
          let x_5471 : i32 = u_xlati37;
          let x_5474 : i32 = u_xlati37;
          let x_5478 : vec4<f32> = x_3317.x_AdditionalLightsWorldToLights[((x_5471 + 1i) / 4i)][((x_5474 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_5469.y, x_5469.y, x_5469.y, x_5469.y) * x_5478);
          let x_5480 : i32 = u_xlati37;
          let x_5482 : i32 = u_xlati37;
          let x_5485 : vec4<f32> = x_3317.x_AdditionalLightsWorldToLights[(x_5480 / 4i)][(x_5482 % 4i)];
          let x_5486 : vec3<f32> = vs_INTERP8;
          let x_5489 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5485 * vec4<f32>(x_5486.x, x_5486.x, x_5486.x, x_5486.x)) + x_5489);
          let x_5491 : i32 = u_xlati37;
          let x_5494 : i32 = u_xlati37;
          let x_5498 : vec4<f32> = x_3317.x_AdditionalLightsWorldToLights[((x_5491 + 2i) / 4i)][((x_5494 + 2i) % 4i)];
          let x_5499 : vec3<f32> = vs_INTERP8;
          let x_5502 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5498 * vec4<f32>(x_5499.z, x_5499.z, x_5499.z, x_5499.z)) + x_5502);
          let x_5504 : vec4<f32> = u_xlat12;
          let x_5505 : i32 = u_xlati37;
          let x_5508 : i32 = u_xlati37;
          let x_5512 : vec4<f32> = x_3317.x_AdditionalLightsWorldToLights[((x_5505 + 3i) / 4i)][((x_5508 + 3i) % 4i)];
          u_xlat12 = (x_5504 + x_5512);
          let x_5514 : vec4<f32> = u_xlat12;
          let x_5516 : vec4<f32> = u_xlat12;
          let x_5518 : vec3<f32> = (vec3<f32>(x_5514.x, x_5514.y, x_5514.z) / vec3<f32>(x_5516.w, x_5516.w, x_5516.w));
          let x_5519 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5518.x, x_5518.y, x_5518.z, x_5519.w);
          let x_5521 : vec4<f32> = u_xlat12;
          let x_5523 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(vec3<f32>(x_5521.x, x_5521.y, x_5521.z), vec3<f32>(x_5523.x, x_5523.y, x_5523.z));
          let x_5526 : f32 = u_xlat88;
          u_xlat88 = inverseSqrt(x_5526);
          let x_5528 : f32 = u_xlat88;
          let x_5530 : vec4<f32> = u_xlat12;
          let x_5532 : vec3<f32> = (vec3<f32>(x_5528, x_5528, x_5528) * vec3<f32>(x_5530.x, x_5530.y, x_5530.z));
          let x_5533 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5532.x, x_5532.y, x_5532.z, x_5533.w);
          let x_5535 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(abs(vec3<f32>(x_5535.x, x_5535.y, x_5535.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_5540 : f32 = u_xlat88;
          u_xlat88 = max(x_5540, 0.00000099999999747524f);
          let x_5543 : f32 = u_xlat88;
          u_xlat88 = (1.0f / x_5543);
          let x_5545 : f32 = u_xlat88;
          let x_5547 : vec4<f32> = u_xlat12;
          let x_5549 : vec3<f32> = (vec3<f32>(x_5545, x_5545, x_5545) * vec3<f32>(x_5547.z, x_5547.x, x_5547.y));
          let x_5550 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_5549.x, x_5549.y, x_5549.z, x_5550.w);
          let x_5553 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_5553);
          let x_5557 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_5557, 0.0f, 1.0f);
          let x_5562 : vec4<f32> = u_xlat13;
          let x_5564 : vec4<bool> = (vec4<f32>(x_5562.y, x_5562.y, x_5562.z, x_5562.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_5565 : vec2<bool> = vec2<bool>(x_5564.x, x_5564.z);
          let x_5566 : vec3<bool> = u_xlatb37;
          u_xlatb37 = vec3<bool>(x_5565.x, x_5566.y, x_5565.y);
          let x_5569 : bool = u_xlatb37.x;
          if (x_5569) {
            let x_5574 : f32 = u_xlat13.x;
            x_5570 = x_5574;
          } else {
            let x_5577 : f32 = u_xlat13.x;
            x_5570 = -(x_5577);
          }
          let x_5579 : f32 = x_5570;
          u_xlat37.x = x_5579;
          let x_5582 : bool = u_xlatb37.z;
          if (x_5582) {
            let x_5587 : f32 = u_xlat13.x;
            x_5583 = x_5587;
          } else {
            let x_5590 : f32 = u_xlat13.x;
            x_5583 = -(x_5590);
          }
          let x_5592 : f32 = x_5583;
          u_xlat37.z = x_5592;
          let x_5594 : vec4<f32> = u_xlat12;
          let x_5596 : f32 = u_xlat88;
          let x_5599 : vec3<f32> = u_xlat37;
          let x_5601 : vec2<f32> = ((vec2<f32>(x_5594.x, x_5594.y) * vec2<f32>(x_5596, x_5596)) + vec2<f32>(x_5599.x, x_5599.z));
          let x_5602 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5601.x, x_5602.y, x_5601.y);
          let x_5604 : vec3<f32> = u_xlat37;
          let x_5607 : vec2<f32> = ((vec2<f32>(x_5604.x, x_5604.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5608 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5607.x, x_5608.y, x_5607.y);
          let x_5610 : vec3<f32> = u_xlat37;
          let x_5614 : vec2<f32> = clamp(vec2<f32>(x_5610.x, x_5610.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_5615 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5614.x, x_5615.y, x_5614.y);
          let x_5617 : i32 = u_xlati84;
          let x_5619 : vec4<f32> = x_3317.x_AdditionalLightsCookieAtlasUVRects[x_5617];
          let x_5621 : vec3<f32> = u_xlat37;
          let x_5624 : i32 = u_xlati84;
          let x_5626 : vec4<f32> = x_3317.x_AdditionalLightsCookieAtlasUVRects[x_5624];
          let x_5628 : vec2<f32> = ((vec2<f32>(x_5619.x, x_5619.y) * vec2<f32>(x_5621.x, x_5621.z)) + vec2<f32>(x_5626.z, x_5626.w));
          let x_5629 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5628.x, x_5629.y, x_5628.y, x_5629.w);
        }
      }
      let x_5636 : vec4<f32> = u_xlat11;
      let x_5638 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_5636.x, x_5636.z), 0.0f);
      u_xlat11 = x_5638;
      let x_5640 : bool = u_xlatb3.w;
      if (x_5640) {
        let x_5645 : f32 = u_xlat11.w;
        x_5641 = x_5645;
      } else {
        let x_5648 : f32 = u_xlat11.x;
        x_5641 = x_5648;
      }
      let x_5649 : f32 = x_5641;
      u_xlat88 = x_5649;
      let x_5651 : bool = u_xlatb3.x;
      if (x_5651) {
        let x_5655 : vec4<f32> = u_xlat11;
        x_5652 = vec3<f32>(x_5655.x, x_5655.y, x_5655.z);
      } else {
        let x_5658 : f32 = u_xlat88;
        x_5652 = vec3<f32>(x_5658, x_5658, x_5658);
      }
      let x_5660 : vec3<f32> = x_5652;
      let x_5661 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_5660.x, x_5660.y, x_5660.z, x_5661.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_5667 : vec4<f32> = u_xlat11;
    let x_5669 : i32 = u_xlati84;
    let x_5671 : vec4<f32> = x_3807.x_AdditionalLightsColor[x_5669];
    let x_5673 : vec3<f32> = (vec3<f32>(x_5667.x, x_5667.y, x_5667.z) * vec3<f32>(x_5671.x, x_5671.y, x_5671.z));
    let x_5674 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5673.x, x_5673.y, x_5673.z, x_5674.w);
    let x_5676 : f32 = u_xlat85;
    let x_5677 : f32 = u_xlat87;
    u_xlat84 = (x_5676 * x_5677);
    let x_5679 : vec4<f32> = u_xlat4;
    let x_5681 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_5679.x, x_5679.y, x_5679.z), vec3<f32>(x_5681.x, x_5681.y, x_5681.z));
    let x_5684 : f32 = u_xlat85;
    u_xlat85 = clamp(x_5684, 0.0f, 1.0f);
    let x_5686 : f32 = u_xlat84;
    let x_5687 : f32 = u_xlat85;
    u_xlat84 = (x_5686 * x_5687);
    let x_5689 : f32 = u_xlat84;
    let x_5691 : vec4<f32> = u_xlat11;
    let x_5693 : vec3<f32> = (vec3<f32>(x_5689, x_5689, x_5689) * vec3<f32>(x_5691.x, x_5691.y, x_5691.z));
    let x_5694 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5693.x, x_5693.y, x_5693.z, x_5694.w);
    let x_5696 : vec4<f32> = u_xlat9;
    let x_5698 : f32 = u_xlat86;
    let x_5701 : vec3<f32> = u_xlat26;
    let x_5702 : vec3<f32> = ((vec3<f32>(x_5696.x, x_5696.y, x_5696.z) * vec3<f32>(x_5698, x_5698, x_5698)) + x_5701);
    let x_5703 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5702.x, x_5702.y, x_5702.z, x_5703.w);
    let x_5705 : vec4<f32> = u_xlat9;
    let x_5707 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_5705.x, x_5705.y, x_5705.z), vec3<f32>(x_5707.x, x_5707.y, x_5707.z));
    let x_5710 : f32 = u_xlat84;
    u_xlat84 = max(x_5710, 1.17549435e-38f);
    let x_5712 : f32 = u_xlat84;
    u_xlat84 = inverseSqrt(x_5712);
    let x_5714 : f32 = u_xlat84;
    let x_5716 : vec4<f32> = u_xlat9;
    let x_5718 : vec3<f32> = (vec3<f32>(x_5714, x_5714, x_5714) * vec3<f32>(x_5716.x, x_5716.y, x_5716.z));
    let x_5719 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5718.x, x_5718.y, x_5718.z, x_5719.w);
    let x_5721 : vec4<f32> = u_xlat4;
    let x_5723 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_5721.x, x_5721.y, x_5721.z), vec3<f32>(x_5723.x, x_5723.y, x_5723.z));
    let x_5726 : f32 = u_xlat84;
    u_xlat84 = clamp(x_5726, 0.0f, 1.0f);
    let x_5728 : vec4<f32> = u_xlat10;
    let x_5730 : vec4<f32> = u_xlat9;
    u_xlat85 = dot(vec3<f32>(x_5728.x, x_5728.y, x_5728.z), vec3<f32>(x_5730.x, x_5730.y, x_5730.z));
    let x_5733 : f32 = u_xlat85;
    u_xlat85 = clamp(x_5733, 0.0f, 1.0f);
    let x_5735 : f32 = u_xlat84;
    let x_5736 : f32 = u_xlat84;
    u_xlat84 = (x_5735 * x_5736);
    let x_5738 : f32 = u_xlat84;
    let x_5740 : f32 = u_xlat59.x;
    u_xlat84 = ((x_5738 * x_5740) + 1.00001001358032226562f);
    let x_5743 : f32 = u_xlat85;
    let x_5744 : f32 = u_xlat85;
    u_xlat85 = (x_5743 * x_5744);
    let x_5746 : f32 = u_xlat84;
    let x_5747 : f32 = u_xlat84;
    u_xlat84 = (x_5746 * x_5747);
    let x_5749 : f32 = u_xlat85;
    u_xlat85 = max(x_5749, 0.10000000149011611938f);
    let x_5751 : f32 = u_xlat84;
    let x_5752 : f32 = u_xlat85;
    u_xlat84 = (x_5751 * x_5752);
    let x_5755 : f32 = u_xlat7.x;
    let x_5756 : f32 = u_xlat84;
    u_xlat84 = (x_5755 * x_5756);
    let x_5758 : f32 = u_xlat83;
    let x_5759 : f32 = u_xlat84;
    u_xlat84 = (x_5758 / x_5759);
    let x_5761 : f32 = u_xlat84;
    let x_5764 : vec3<f32> = u_xlat5;
    let x_5765 : vec3<f32> = ((vec3<f32>(x_5761, x_5761, x_5761) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5764);
    let x_5766 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5765.x, x_5765.y, x_5765.z, x_5766.w);
    let x_5768 : vec4<f32> = u_xlat9;
    let x_5770 : vec4<f32> = u_xlat11;
    let x_5773 : vec4<f32> = u_xlat8;
    let x_5775 : vec3<f32> = ((vec3<f32>(x_5768.x, x_5768.y, x_5768.z) * vec3<f32>(x_5770.x, x_5770.y, x_5770.z)) + vec3<f32>(x_5773.x, x_5773.y, x_5773.z));
    let x_5776 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5775.x, x_5775.y, x_5775.z, x_5776.w);

    continuing {
      let x_5778 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5778 + bitcast<u32>(1i));
    }
  }
  let x_5780 : vec4<f32> = u_xlat6;
  let x_5782 : vec3<f32> = u_xlat33;
  let x_5785 : vec3<f32> = u_xlat28;
  u_xlat0 = ((vec3<f32>(x_5780.x, x_5780.y, x_5780.z) * vec3<f32>(x_5782.x, x_5782.x, x_5782.x)) + x_5785);
  let x_5787 : vec4<f32> = u_xlat8;
  let x_5789 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_5787.x, x_5787.y, x_5787.z) + x_5789);
  let x_5791 : vec4<f32> = vs_INTERP6;
  let x_5793 : vec3<f32> = u_xlat1;
  let x_5795 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_5791.w, x_5791.w, x_5791.w) * x_5793) + x_5795);
  let x_5798 : f32 = u_xlat29;
  let x_5799 : f32 = u_xlat29;
  u_xlat78 = (x_5798 * -(x_5799));
  let x_5802 : f32 = u_xlat78;
  u_xlat78 = exp2(x_5802);
  let x_5804 : vec3<f32> = u_xlat0;
  let x_5806 : vec4<f32> = x_128.unity_FogColor;
  u_xlat0 = (x_5804 + -(vec3<f32>(x_5806.x, x_5806.y, x_5806.z)));
  let x_5812 : f32 = u_xlat78;
  let x_5814 : vec3<f32> = u_xlat0;
  let x_5817 : vec4<f32> = x_128.unity_FogColor;
  let x_5819 : vec3<f32> = ((vec3<f32>(x_5812, x_5812, x_5812) * x_5814) + vec3<f32>(x_5817.x, x_5817.y, x_5817.z));
  let x_5820 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5819.x, x_5819.y, x_5819.z, x_5820.w);
  let x_5822 : bool = u_xlatb55;
  let x_5823 : f32 = u_xlat79;
  SV_Target0.w = select(1.0f, x_5823, x_5822);
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


