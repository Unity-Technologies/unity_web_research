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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

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

@group(1) @binding(4) var<uniform> x_3294 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu84 : u32;

var<private> u_xlati85 : i32;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

@group(1) @binding(1) var<uniform> x_3783 : AdditionalLights;

var<private> u_xlat86 : f32;

var<private> u_xlati87 : i32;

var<private> u_xlatb88 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat89 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlatb87 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_LinearClamp : sampler;

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
  var x_1876 : vec3<f32>;
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
  var x_3240 : f32;
  var x_3376 : f32;
  var x_3387 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3920 : f32;
  var x_3931 : f32;
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
  var x_5546 : f32;
  var x_5559 : f32;
  var x_5617 : f32;
  var x_5628 : vec3<f32>;
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
  u_xlat26 = (x_1836 * vec3<f32>(x_1837, x_1837, x_1837));
  let x_1841 : f32 = x_128.unity_OrthoParams.w;
  u_xlatb29 = (x_1841 == 0.0f);
  let x_1843 : vec3<f32> = vs_INTERP8;
  let x_1847 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  let x_1848 : vec3<f32> = (-(x_1843) + x_1847);
  let x_1849 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1848.x, x_1848.y, x_1848.z, x_1849.w);
  let x_1851 : vec4<f32> = u_xlat4;
  let x_1853 : vec4<f32> = u_xlat4;
  u_xlat81 = dot(vec3<f32>(x_1851.x, x_1851.y, x_1851.z), vec3<f32>(x_1853.x, x_1853.y, x_1853.z));
  let x_1856 : f32 = u_xlat81;
  u_xlat81 = inverseSqrt(x_1856);
  let x_1858 : f32 = u_xlat81;
  let x_1860 : vec4<f32> = u_xlat4;
  let x_1862 : vec3<f32> = (vec3<f32>(x_1858, x_1858, x_1858) * vec3<f32>(x_1860.x, x_1860.y, x_1860.z));
  let x_1863 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1862.x, x_1862.y, x_1862.z, x_1863.w);
  let x_1867 : f32 = x_128.unity_MatrixV[0i].z;
  u_xlat7.x = x_1867;
  let x_1870 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat7.y = x_1870;
  let x_1873 : f32 = x_128.unity_MatrixV[2i].z;
  u_xlat7.z = x_1873;
  let x_1875 : bool = u_xlatb29;
  if (x_1875) {
    let x_1879 : vec4<f32> = u_xlat4;
    x_1876 = vec3<f32>(x_1879.x, x_1879.y, x_1879.z);
  } else {
    let x_1882 : vec4<f32> = u_xlat7;
    x_1876 = vec3<f32>(x_1882.x, x_1882.y, x_1882.z);
  }
  let x_1884 : vec3<f32> = x_1876;
  let x_1885 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1884.x, x_1884.y, x_1884.z, x_1885.w);
  let x_1888 : f32 = vs_INTERP8.y;
  let x_1890 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat29 = (x_1888 * x_1890);
  let x_1893 : f32 = x_128.unity_MatrixV[0i].z;
  let x_1895 : f32 = vs_INTERP8.x;
  let x_1897 : f32 = u_xlat29;
  u_xlat29 = ((x_1893 * x_1895) + x_1897);
  let x_1900 : f32 = x_128.unity_MatrixV[2i].z;
  let x_1902 : f32 = vs_INTERP8.z;
  let x_1904 : f32 = u_xlat29;
  u_xlat29 = ((x_1900 * x_1902) + x_1904);
  let x_1906 : f32 = u_xlat29;
  let x_1908 : f32 = x_128.unity_MatrixV[3i].z;
  u_xlat29 = (x_1906 + x_1908);
  let x_1910 : f32 = u_xlat29;
  let x_1913 : f32 = x_128.x_ProjectionParams.y;
  u_xlat29 = (-(x_1910) + -(x_1913));
  let x_1916 : f32 = u_xlat29;
  u_xlat29 = max(x_1916, 0.0f);
  let x_1918 : f32 = u_xlat29;
  let x_1920 : f32 = x_128.unity_FogParams.x;
  u_xlat29 = (x_1918 * x_1920);
  let x_1929 : vec2<f32> = vs_INTERP0;
  let x_1931 : f32 = x_128.x_GlobalMipBias.x;
  let x_1932 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_1929, x_1931);
  u_xlat7 = x_1932;
  let x_1937 : vec2<f32> = vs_INTERP0;
  let x_1939 : f32 = x_128.x_GlobalMipBias.x;
  let x_1940 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_1937, x_1939);
  u_xlat32 = vec3<f32>(x_1940.x, x_1940.y, x_1940.z);
  let x_1942 : vec4<f32> = u_xlat7;
  let x_1945 : vec3<f32> = (vec3<f32>(x_1942.x, x_1942.y, x_1942.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1946 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1945.x, x_1945.y, x_1945.z, x_1946.w);
  let x_1948 : vec3<f32> = u_xlat26;
  let x_1949 : vec4<f32> = u_xlat7;
  u_xlat81 = dot(x_1948, vec3<f32>(x_1949.x, x_1949.y, x_1949.z));
  let x_1952 : f32 = u_xlat81;
  u_xlat81 = (x_1952 + 0.5f);
  let x_1954 : f32 = u_xlat81;
  let x_1956 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1954, x_1954, x_1954) * x_1956);
  let x_1959 : f32 = u_xlat7.w;
  u_xlat81 = max(x_1959, 0.00009999999747378752f);
  let x_1961 : vec3<f32> = u_xlat32;
  let x_1962 : f32 = u_xlat81;
  u_xlat32 = (x_1961 / vec3<f32>(x_1962, x_1962, x_1962));
  let x_1966 : f32 = u_xlat6.x;
  u_xlat6.x = x_1966;
  let x_1969 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1969, 0.0f, 1.0f);
  let x_1972 : f32 = u_xlat79;
  u_xlat79 = min(x_1972, 1.0f);
  let x_1974 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_1974 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_1979 : f32 = u_xlat6.x;
  u_xlat81 = (-(x_1979) + 1.0f);
  let x_1983 : f32 = u_xlat81;
  let x_1984 : f32 = u_xlat81;
  u_xlat82 = (x_1983 * x_1984);
  let x_1986 : f32 = u_xlat82;
  u_xlat82 = max(x_1986, 0.0078125f);
  let x_1989 : f32 = u_xlat82;
  let x_1990 : f32 = u_xlat82;
  u_xlat83 = (x_1989 * x_1990);
  let x_1993 : f32 = u_xlat6.x;
  u_xlat6.x = (x_1993 + 0.04000002145767211914f);
  let x_1998 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_1998, 1.0f);
  let x_2001 : f32 = u_xlat82;
  u_xlat7.x = ((x_2001 * 4.0f) + 2.0f);
  let x_2006 : f32 = vs_INTERP6.w;
  u_xlat33.x = min(x_2006, 1.0f);
  let x_2009 : bool = u_xlatb0;
  if (x_2009) {
    let x_2013 : f32 = x_246.x_MainLightShadowParams.y;
    u_xlatb0 = (x_2013 == 1.0f);
    let x_2015 : bool = u_xlatb0;
    if (x_2015) {
      let x_2018 : vec4<f32> = u_xlat2;
      let x_2021 : vec4<f32> = x_246.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_2018.x, x_2018.y, x_2018.x, x_2018.y) + x_2021);
      let x_2024 : vec4<f32> = u_xlat8;
      let x_2025 : vec2<f32> = vec2<f32>(x_2024.x, x_2024.y);
      let x_2027 : f32 = u_xlat2.z;
      txVec30 = vec3<f32>(x_2025.x, x_2025.y, x_2027);
      let x_2034 : vec3<f32> = txVec30;
      let x_2036 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2034.xy, x_2034.z);
      u_xlat9.x = x_2036;
      let x_2039 : vec4<f32> = u_xlat8;
      let x_2040 : vec2<f32> = vec2<f32>(x_2039.z, x_2039.w);
      let x_2042 : f32 = u_xlat2.z;
      txVec31 = vec3<f32>(x_2040.x, x_2040.y, x_2042);
      let x_2049 : vec3<f32> = txVec31;
      let x_2051 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2049.xy, x_2049.z);
      u_xlat9.y = x_2051;
      let x_2053 : vec4<f32> = u_xlat2;
      let x_2056 : vec4<f32> = x_246.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_2053.x, x_2053.y, x_2053.x, x_2053.y) + x_2056);
      let x_2059 : vec4<f32> = u_xlat8;
      let x_2060 : vec2<f32> = vec2<f32>(x_2059.x, x_2059.y);
      let x_2062 : f32 = u_xlat2.z;
      txVec32 = vec3<f32>(x_2060.x, x_2060.y, x_2062);
      let x_2069 : vec3<f32> = txVec32;
      let x_2071 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2069.xy, x_2069.z);
      u_xlat9.z = x_2071;
      let x_2074 : vec4<f32> = u_xlat8;
      let x_2075 : vec2<f32> = vec2<f32>(x_2074.z, x_2074.w);
      let x_2077 : f32 = u_xlat2.z;
      txVec33 = vec3<f32>(x_2075.x, x_2075.y, x_2077);
      let x_2084 : vec3<f32> = txVec33;
      let x_2086 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2084.xy, x_2084.z);
      u_xlat9.w = x_2086;
      let x_2088 : vec4<f32> = u_xlat9;
      u_xlat0.x = dot(x_2088, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_2094 : f32 = x_246.x_MainLightShadowParams.y;
      u_xlatb59 = (x_2094 == 2.0f);
      let x_2096 : bool = u_xlatb59;
      if (x_2096) {
        let x_2100 : vec4<f32> = u_xlat2;
        let x_2103 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        u_xlat59 = ((vec2<f32>(x_2100.x, x_2100.y) * vec2<f32>(x_2103.z, x_2103.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2107 : vec2<f32> = u_xlat59;
        u_xlat59 = floor(x_2107);
        let x_2109 : vec4<f32> = u_xlat2;
        let x_2112 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2115 : vec2<f32> = u_xlat59;
        let x_2117 : vec2<f32> = ((vec2<f32>(x_2109.x, x_2109.y) * vec2<f32>(x_2112.z, x_2112.w)) + -(x_2115));
        let x_2118 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2117.x, x_2117.y, x_2118.z, x_2118.w);
        let x_2120 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2120.x, x_2120.x, x_2120.y, x_2120.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2123 : vec4<f32> = u_xlat9;
        let x_2125 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2123.x, x_2123.x, x_2123.z, x_2123.z) * vec4<f32>(x_2125.x, x_2125.x, x_2125.z, x_2125.z));
        let x_2128 : vec4<f32> = u_xlat10;
        u_xlat60 = (vec2<f32>(x_2128.y, x_2128.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_2131 : vec4<f32> = u_xlat10;
        let x_2134 : vec4<f32> = u_xlat8;
        let x_2137 : vec2<f32> = ((vec2<f32>(x_2131.x, x_2131.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2134.x, x_2134.y)));
        let x_2138 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2137.x, x_2138.y, x_2137.y, x_2138.w);
        let x_2140 : vec4<f32> = u_xlat8;
        let x_2143 : vec2<f32> = (-(vec2<f32>(x_2140.x, x_2140.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2144 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2143.x, x_2143.y, x_2144.z, x_2144.w);
        let x_2147 : vec4<f32> = u_xlat8;
        u_xlat62 = min(vec2<f32>(x_2147.x, x_2147.y), vec2<f32>(0.0f, 0.0f));
        let x_2150 : vec2<f32> = u_xlat62;
        let x_2152 : vec2<f32> = u_xlat62;
        let x_2154 : vec4<f32> = u_xlat10;
        u_xlat62 = ((-(x_2150) * x_2152) + vec2<f32>(x_2154.x, x_2154.y));
        let x_2157 : vec4<f32> = u_xlat8;
        let x_2159 : vec2<f32> = max(vec2<f32>(x_2157.x, x_2157.y), vec2<f32>(0.0f, 0.0f));
        let x_2160 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2159.x, x_2159.y, x_2160.z, x_2160.w);
        let x_2162 : vec4<f32> = u_xlat8;
        let x_2165 : vec4<f32> = u_xlat8;
        let x_2168 : vec4<f32> = u_xlat9;
        let x_2170 : vec2<f32> = ((-(vec2<f32>(x_2162.x, x_2162.y)) * vec2<f32>(x_2165.x, x_2165.y)) + vec2<f32>(x_2168.y, x_2168.w));
        let x_2171 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2170.x, x_2170.y, x_2171.z, x_2171.w);
        let x_2173 : vec2<f32> = u_xlat62;
        u_xlat62 = (x_2173 + vec2<f32>(1.0f, 1.0f));
        let x_2175 : vec4<f32> = u_xlat8;
        let x_2177 : vec2<f32> = (vec2<f32>(x_2175.x, x_2175.y) + vec2<f32>(1.0f, 1.0f));
        let x_2178 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2177.x, x_2177.y, x_2178.z, x_2178.w);
        let x_2180 : vec4<f32> = u_xlat9;
        let x_2182 : vec2<f32> = (vec2<f32>(x_2180.x, x_2180.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2183 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2182.x, x_2182.y, x_2183.z, x_2183.w);
        let x_2185 : vec4<f32> = u_xlat10;
        let x_2187 : vec2<f32> = (vec2<f32>(x_2185.x, x_2185.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2188 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2187.x, x_2187.y, x_2188.z, x_2188.w);
        let x_2190 : vec2<f32> = u_xlat62;
        let x_2191 : vec2<f32> = (x_2190 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2192 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2191.x, x_2191.y, x_2192.z, x_2192.w);
        let x_2194 : vec4<f32> = u_xlat8;
        let x_2196 : vec2<f32> = (vec2<f32>(x_2194.x, x_2194.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2197 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2196.x, x_2196.y, x_2197.z, x_2197.w);
        let x_2199 : vec4<f32> = u_xlat9;
        let x_2201 : vec2<f32> = (vec2<f32>(x_2199.y, x_2199.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2202 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2201.x, x_2201.y, x_2202.z, x_2202.w);
        let x_2205 : f32 = u_xlat10.x;
        u_xlat11.z = x_2205;
        let x_2208 : f32 = u_xlat8.x;
        u_xlat11.w = x_2208;
        let x_2211 : f32 = u_xlat13.x;
        u_xlat12.z = x_2211;
        let x_2214 : f32 = u_xlat60.x;
        u_xlat12.w = x_2214;
        let x_2216 : vec4<f32> = u_xlat11;
        let x_2218 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_2216.z, x_2216.w, x_2216.x, x_2216.z) + vec4<f32>(x_2218.z, x_2218.w, x_2218.x, x_2218.z));
        let x_2222 : f32 = u_xlat11.y;
        u_xlat10.z = x_2222;
        let x_2225 : f32 = u_xlat8.y;
        u_xlat10.w = x_2225;
        let x_2228 : f32 = u_xlat12.y;
        u_xlat13.z = x_2228;
        let x_2231 : f32 = u_xlat60.y;
        u_xlat13.w = x_2231;
        let x_2233 : vec4<f32> = u_xlat10;
        let x_2235 : vec4<f32> = u_xlat13;
        let x_2237 : vec3<f32> = (vec3<f32>(x_2233.z, x_2233.y, x_2233.w) + vec3<f32>(x_2235.z, x_2235.y, x_2235.w));
        let x_2238 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2237.x, x_2237.y, x_2237.z, x_2238.w);
        let x_2240 : vec4<f32> = u_xlat12;
        let x_2242 : vec4<f32> = u_xlat9;
        let x_2244 : vec3<f32> = (vec3<f32>(x_2240.x, x_2240.z, x_2240.w) / vec3<f32>(x_2242.z, x_2242.w, x_2242.y));
        let x_2245 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2244.x, x_2244.y, x_2244.z, x_2245.w);
        let x_2247 : vec4<f32> = u_xlat10;
        let x_2249 : vec3<f32> = (vec3<f32>(x_2247.x, x_2247.y, x_2247.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2250 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2249.x, x_2249.y, x_2249.z, x_2250.w);
        let x_2252 : vec4<f32> = u_xlat13;
        let x_2254 : vec4<f32> = u_xlat8;
        let x_2256 : vec3<f32> = (vec3<f32>(x_2252.z, x_2252.y, x_2252.w) / vec3<f32>(x_2254.x, x_2254.y, x_2254.z));
        let x_2257 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2256.x, x_2256.y, x_2256.z, x_2257.w);
        let x_2259 : vec4<f32> = u_xlat11;
        let x_2261 : vec3<f32> = (vec3<f32>(x_2259.x, x_2259.y, x_2259.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2262 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2261.x, x_2261.y, x_2261.z, x_2262.w);
        let x_2264 : vec4<f32> = u_xlat10;
        let x_2267 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2269 : vec3<f32> = (vec3<f32>(x_2264.y, x_2264.x, x_2264.z) * vec3<f32>(x_2267.x, x_2267.x, x_2267.x));
        let x_2270 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2269.x, x_2269.y, x_2269.z, x_2270.w);
        let x_2272 : vec4<f32> = u_xlat11;
        let x_2275 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2277 : vec3<f32> = (vec3<f32>(x_2272.x, x_2272.y, x_2272.z) * vec3<f32>(x_2275.y, x_2275.y, x_2275.y));
        let x_2278 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2277.x, x_2277.y, x_2277.z, x_2278.w);
        let x_2281 : f32 = u_xlat11.x;
        u_xlat10.w = x_2281;
        let x_2283 : vec2<f32> = u_xlat59;
        let x_2286 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2289 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_2283.x, x_2283.y, x_2283.x, x_2283.y) * vec4<f32>(x_2286.x, x_2286.y, x_2286.x, x_2286.y)) + vec4<f32>(x_2289.y, x_2289.w, x_2289.x, x_2289.w));
        let x_2292 : vec2<f32> = u_xlat59;
        let x_2294 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2297 : vec4<f32> = u_xlat10;
        let x_2299 : vec2<f32> = ((x_2292 * vec2<f32>(x_2294.x, x_2294.y)) + vec2<f32>(x_2297.z, x_2297.w));
        let x_2300 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2299.x, x_2299.y, x_2300.z, x_2300.w);
        let x_2303 : f32 = u_xlat10.y;
        u_xlat11.w = x_2303;
        let x_2305 : vec4<f32> = u_xlat11;
        let x_2306 : vec2<f32> = vec2<f32>(x_2305.y, x_2305.z);
        let x_2307 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2307.x, x_2306.x, x_2307.z, x_2306.y);
        let x_2309 : vec2<f32> = u_xlat59;
        let x_2312 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2315 : vec4<f32> = u_xlat10;
        u_xlat14 = ((vec4<f32>(x_2309.x, x_2309.y, x_2309.x, x_2309.y) * vec4<f32>(x_2312.x, x_2312.y, x_2312.x, x_2312.y)) + vec4<f32>(x_2315.x, x_2315.y, x_2315.z, x_2315.y));
        let x_2318 : vec2<f32> = u_xlat59;
        let x_2321 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2324 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_2318.x, x_2318.y, x_2318.x, x_2318.y) * vec4<f32>(x_2321.x, x_2321.y, x_2321.x, x_2321.y)) + vec4<f32>(x_2324.w, x_2324.y, x_2324.w, x_2324.z));
        let x_2327 : vec2<f32> = u_xlat59;
        let x_2330 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2333 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2327.x, x_2327.y, x_2327.x, x_2327.y) * vec4<f32>(x_2330.x, x_2330.y, x_2330.x, x_2330.y)) + vec4<f32>(x_2333.x, x_2333.w, x_2333.z, x_2333.w));
        let x_2336 : vec4<f32> = u_xlat8;
        let x_2338 : vec4<f32> = u_xlat9;
        u_xlat15 = (vec4<f32>(x_2336.x, x_2336.x, x_2336.x, x_2336.y) * vec4<f32>(x_2338.z, x_2338.w, x_2338.y, x_2338.z));
        let x_2341 : vec4<f32> = u_xlat8;
        let x_2343 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_2341.y, x_2341.y, x_2341.z, x_2341.z) * x_2343);
        let x_2346 : f32 = u_xlat8.z;
        let x_2348 : f32 = u_xlat9.y;
        u_xlat59.x = (x_2346 * x_2348);
        let x_2352 : vec4<f32> = u_xlat12;
        let x_2353 : vec2<f32> = vec2<f32>(x_2352.x, x_2352.y);
        let x_2355 : f32 = u_xlat2.z;
        txVec34 = vec3<f32>(x_2353.x, x_2353.y, x_2355);
        let x_2363 : vec3<f32> = txVec34;
        let x_2365 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2363.xy, x_2363.z);
        u_xlat85 = x_2365;
        let x_2367 : vec4<f32> = u_xlat12;
        let x_2368 : vec2<f32> = vec2<f32>(x_2367.z, x_2367.w);
        let x_2370 : f32 = u_xlat2.z;
        txVec35 = vec3<f32>(x_2368.x, x_2368.y, x_2370);
        let x_2377 : vec3<f32> = txVec35;
        let x_2379 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2377.xy, x_2377.z);
        u_xlat8.x = x_2379;
        let x_2382 : f32 = u_xlat8.x;
        let x_2384 : f32 = u_xlat15.y;
        u_xlat8.x = (x_2382 * x_2384);
        let x_2388 : f32 = u_xlat15.x;
        let x_2389 : f32 = u_xlat85;
        let x_2392 : f32 = u_xlat8.x;
        u_xlat85 = ((x_2388 * x_2389) + x_2392);
        let x_2395 : vec4<f32> = u_xlat13;
        let x_2396 : vec2<f32> = vec2<f32>(x_2395.x, x_2395.y);
        let x_2398 : f32 = u_xlat2.z;
        txVec36 = vec3<f32>(x_2396.x, x_2396.y, x_2398);
        let x_2405 : vec3<f32> = txVec36;
        let x_2407 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2405.xy, x_2405.z);
        u_xlat8.x = x_2407;
        let x_2410 : f32 = u_xlat15.z;
        let x_2412 : f32 = u_xlat8.x;
        let x_2414 : f32 = u_xlat85;
        u_xlat85 = ((x_2410 * x_2412) + x_2414);
        let x_2417 : vec4<f32> = u_xlat11;
        let x_2418 : vec2<f32> = vec2<f32>(x_2417.x, x_2417.y);
        let x_2420 : f32 = u_xlat2.z;
        txVec37 = vec3<f32>(x_2418.x, x_2418.y, x_2420);
        let x_2427 : vec3<f32> = txVec37;
        let x_2429 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2427.xy, x_2427.z);
        u_xlat8.x = x_2429;
        let x_2432 : f32 = u_xlat15.w;
        let x_2434 : f32 = u_xlat8.x;
        let x_2436 : f32 = u_xlat85;
        u_xlat85 = ((x_2432 * x_2434) + x_2436);
        let x_2439 : vec4<f32> = u_xlat14;
        let x_2440 : vec2<f32> = vec2<f32>(x_2439.x, x_2439.y);
        let x_2442 : f32 = u_xlat2.z;
        txVec38 = vec3<f32>(x_2440.x, x_2440.y, x_2442);
        let x_2449 : vec3<f32> = txVec38;
        let x_2451 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2449.xy, x_2449.z);
        u_xlat8.x = x_2451;
        let x_2454 : f32 = u_xlat16.x;
        let x_2456 : f32 = u_xlat8.x;
        let x_2458 : f32 = u_xlat85;
        u_xlat85 = ((x_2454 * x_2456) + x_2458);
        let x_2461 : vec4<f32> = u_xlat14;
        let x_2462 : vec2<f32> = vec2<f32>(x_2461.z, x_2461.w);
        let x_2464 : f32 = u_xlat2.z;
        txVec39 = vec3<f32>(x_2462.x, x_2462.y, x_2464);
        let x_2471 : vec3<f32> = txVec39;
        let x_2473 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2471.xy, x_2471.z);
        u_xlat8.x = x_2473;
        let x_2476 : f32 = u_xlat16.y;
        let x_2478 : f32 = u_xlat8.x;
        let x_2480 : f32 = u_xlat85;
        u_xlat85 = ((x_2476 * x_2478) + x_2480);
        let x_2483 : vec4<f32> = u_xlat11;
        let x_2484 : vec2<f32> = vec2<f32>(x_2483.z, x_2483.w);
        let x_2486 : f32 = u_xlat2.z;
        txVec40 = vec3<f32>(x_2484.x, x_2484.y, x_2486);
        let x_2493 : vec3<f32> = txVec40;
        let x_2495 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2493.xy, x_2493.z);
        u_xlat8.x = x_2495;
        let x_2498 : f32 = u_xlat16.z;
        let x_2500 : f32 = u_xlat8.x;
        let x_2502 : f32 = u_xlat85;
        u_xlat85 = ((x_2498 * x_2500) + x_2502);
        let x_2505 : vec4<f32> = u_xlat10;
        let x_2506 : vec2<f32> = vec2<f32>(x_2505.x, x_2505.y);
        let x_2508 : f32 = u_xlat2.z;
        txVec41 = vec3<f32>(x_2506.x, x_2506.y, x_2508);
        let x_2515 : vec3<f32> = txVec41;
        let x_2517 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2515.xy, x_2515.z);
        u_xlat8.x = x_2517;
        let x_2520 : f32 = u_xlat16.w;
        let x_2522 : f32 = u_xlat8.x;
        let x_2524 : f32 = u_xlat85;
        u_xlat85 = ((x_2520 * x_2522) + x_2524);
        let x_2527 : vec4<f32> = u_xlat10;
        let x_2528 : vec2<f32> = vec2<f32>(x_2527.z, x_2527.w);
        let x_2530 : f32 = u_xlat2.z;
        txVec42 = vec3<f32>(x_2528.x, x_2528.y, x_2530);
        let x_2537 : vec3<f32> = txVec42;
        let x_2539 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2537.xy, x_2537.z);
        u_xlat8.x = x_2539;
        let x_2542 : f32 = u_xlat59.x;
        let x_2544 : f32 = u_xlat8.x;
        let x_2546 : f32 = u_xlat85;
        u_xlat0.x = ((x_2542 * x_2544) + x_2546);
      } else {
        let x_2550 : vec4<f32> = u_xlat2;
        let x_2553 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        u_xlat59 = ((vec2<f32>(x_2550.x, x_2550.y) * vec2<f32>(x_2553.z, x_2553.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2557 : vec2<f32> = u_xlat59;
        u_xlat59 = floor(x_2557);
        let x_2559 : vec4<f32> = u_xlat2;
        let x_2562 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2565 : vec2<f32> = u_xlat59;
        let x_2567 : vec2<f32> = ((vec2<f32>(x_2559.x, x_2559.y) * vec2<f32>(x_2562.z, x_2562.w)) + -(x_2565));
        let x_2568 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2567.x, x_2567.y, x_2568.z, x_2568.w);
        let x_2570 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2570.x, x_2570.x, x_2570.y, x_2570.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2573 : vec4<f32> = u_xlat9;
        let x_2575 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2573.x, x_2573.x, x_2573.z, x_2573.z) * vec4<f32>(x_2575.x, x_2575.x, x_2575.z, x_2575.z));
        let x_2578 : vec4<f32> = u_xlat10;
        let x_2580 : vec2<f32> = (vec2<f32>(x_2578.y, x_2578.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2581 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2581.x, x_2580.x, x_2581.z, x_2580.y);
        let x_2583 : vec4<f32> = u_xlat10;
        let x_2586 : vec4<f32> = u_xlat8;
        u_xlat60 = ((vec2<f32>(x_2583.x, x_2583.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2586.x, x_2586.y)));
        let x_2590 : vec4<f32> = u_xlat8;
        let x_2593 : vec2<f32> = (-(vec2<f32>(x_2590.x, x_2590.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2594 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2593.x, x_2594.y, x_2593.y, x_2594.w);
        let x_2596 : vec4<f32> = u_xlat8;
        let x_2598 : vec2<f32> = min(vec2<f32>(x_2596.x, x_2596.y), vec2<f32>(0.0f, 0.0f));
        let x_2599 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2598.x, x_2598.y, x_2599.z, x_2599.w);
        let x_2601 : vec4<f32> = u_xlat10;
        let x_2604 : vec4<f32> = u_xlat10;
        let x_2607 : vec4<f32> = u_xlat9;
        let x_2609 : vec2<f32> = ((-(vec2<f32>(x_2601.x, x_2601.y)) * vec2<f32>(x_2604.x, x_2604.y)) + vec2<f32>(x_2607.x, x_2607.z));
        let x_2610 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2609.x, x_2610.y, x_2609.y, x_2610.w);
        let x_2612 : vec4<f32> = u_xlat8;
        let x_2614 : vec2<f32> = max(vec2<f32>(x_2612.x, x_2612.y), vec2<f32>(0.0f, 0.0f));
        let x_2615 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2614.x, x_2614.y, x_2615.z, x_2615.w);
        let x_2617 : vec4<f32> = u_xlat10;
        let x_2620 : vec4<f32> = u_xlat10;
        let x_2623 : vec4<f32> = u_xlat9;
        let x_2625 : vec2<f32> = ((-(vec2<f32>(x_2617.x, x_2617.y)) * vec2<f32>(x_2620.x, x_2620.y)) + vec2<f32>(x_2623.y, x_2623.w));
        let x_2626 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2626.x, x_2625.x, x_2626.z, x_2625.y);
        let x_2628 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2628 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2631 : f32 = u_xlat9.y;
        u_xlat10.z = (x_2631 * 0.08163200318813323975f);
        let x_2634 : vec2<f32> = u_xlat60;
        let x_2636 : vec2<f32> = (vec2<f32>(x_2634.y, x_2634.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2637 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2636.x, x_2636.y, x_2637.z, x_2637.w);
        let x_2639 : vec4<f32> = u_xlat9;
        u_xlat60 = (vec2<f32>(x_2639.x, x_2639.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2643 : f32 = u_xlat9.w;
        u_xlat12.z = (x_2643 * 0.08163200318813323975f);
        let x_2647 : f32 = u_xlat12.y;
        u_xlat10.x = x_2647;
        let x_2649 : vec4<f32> = u_xlat8;
        let x_2652 : vec2<f32> = ((vec2<f32>(x_2649.x, x_2649.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2653 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2653.x, x_2652.x, x_2653.z, x_2652.y);
        let x_2655 : vec4<f32> = u_xlat8;
        let x_2658 : vec2<f32> = ((vec2<f32>(x_2655.x, x_2655.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2659 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2658.x, x_2659.y, x_2658.y, x_2659.w);
        let x_2662 : f32 = u_xlat60.x;
        u_xlat9.y = x_2662;
        let x_2665 : f32 = u_xlat11.y;
        u_xlat9.w = x_2665;
        let x_2667 : vec4<f32> = u_xlat9;
        let x_2668 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2667 + x_2668);
        let x_2670 : vec4<f32> = u_xlat8;
        let x_2673 : vec2<f32> = ((vec2<f32>(x_2670.y, x_2670.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2674 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2674.x, x_2673.x, x_2674.z, x_2673.y);
        let x_2676 : vec4<f32> = u_xlat8;
        let x_2679 : vec2<f32> = ((vec2<f32>(x_2676.y, x_2676.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2680 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2679.x, x_2680.y, x_2679.y, x_2680.w);
        let x_2683 : f32 = u_xlat60.y;
        u_xlat11.y = x_2683;
        let x_2685 : vec4<f32> = u_xlat11;
        let x_2686 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_2685 + x_2686);
        let x_2688 : vec4<f32> = u_xlat9;
        let x_2689 : vec4<f32> = u_xlat10;
        u_xlat9 = (x_2688 / x_2689);
        let x_2691 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2691 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2693 : vec4<f32> = u_xlat11;
        let x_2694 : vec4<f32> = u_xlat8;
        u_xlat11 = (x_2693 / x_2694);
        let x_2696 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_2696 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2698 : vec4<f32> = u_xlat9;
        let x_2701 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_2698.w, x_2698.x, x_2698.y, x_2698.z) * vec4<f32>(x_2701.x, x_2701.x, x_2701.x, x_2701.x));
        let x_2704 : vec4<f32> = u_xlat11;
        let x_2707 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_2704.x, x_2704.w, x_2704.y, x_2704.z) * vec4<f32>(x_2707.y, x_2707.y, x_2707.y, x_2707.y));
        let x_2710 : vec4<f32> = u_xlat9;
        let x_2711 : vec3<f32> = vec3<f32>(x_2710.y, x_2710.z, x_2710.w);
        let x_2712 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2711.x, x_2712.y, x_2711.y, x_2711.z);
        let x_2715 : f32 = u_xlat11.x;
        u_xlat12.y = x_2715;
        let x_2717 : vec2<f32> = u_xlat59;
        let x_2720 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2723 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_2717.x, x_2717.y, x_2717.x, x_2717.y) * vec4<f32>(x_2720.x, x_2720.y, x_2720.x, x_2720.y)) + vec4<f32>(x_2723.x, x_2723.y, x_2723.z, x_2723.y));
        let x_2726 : vec2<f32> = u_xlat59;
        let x_2728 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2731 : vec4<f32> = u_xlat12;
        let x_2733 : vec2<f32> = ((x_2726 * vec2<f32>(x_2728.x, x_2728.y)) + vec2<f32>(x_2731.w, x_2731.y));
        let x_2734 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_2733.x, x_2733.y, x_2734.z, x_2734.w);
        let x_2737 : f32 = u_xlat12.y;
        u_xlat9.y = x_2737;
        let x_2740 : f32 = u_xlat11.z;
        u_xlat12.y = x_2740;
        let x_2742 : vec2<f32> = u_xlat59;
        let x_2745 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2748 : vec4<f32> = u_xlat12;
        u_xlat15 = ((vec4<f32>(x_2742.x, x_2742.y, x_2742.x, x_2742.y) * vec4<f32>(x_2745.x, x_2745.y, x_2745.x, x_2745.y)) + vec4<f32>(x_2748.x, x_2748.y, x_2748.z, x_2748.y));
        let x_2751 : vec2<f32> = u_xlat59;
        let x_2753 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2756 : vec4<f32> = u_xlat12;
        u_xlat66 = ((x_2751 * vec2<f32>(x_2753.x, x_2753.y)) + vec2<f32>(x_2756.w, x_2756.y));
        let x_2760 : f32 = u_xlat12.y;
        u_xlat9.z = x_2760;
        let x_2762 : vec2<f32> = u_xlat59;
        let x_2765 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2768 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_2762.x, x_2762.y, x_2762.x, x_2762.y) * vec4<f32>(x_2765.x, x_2765.y, x_2765.x, x_2765.y)) + vec4<f32>(x_2768.x, x_2768.y, x_2768.x, x_2768.z));
        let x_2772 : f32 = u_xlat11.w;
        u_xlat12.y = x_2772;
        let x_2774 : vec2<f32> = u_xlat59;
        let x_2777 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2780 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_2774.x, x_2774.y, x_2774.x, x_2774.y) * vec4<f32>(x_2777.x, x_2777.y, x_2777.x, x_2777.y)) + vec4<f32>(x_2780.x, x_2780.y, x_2780.z, x_2780.y));
        let x_2784 : vec2<f32> = u_xlat59;
        let x_2786 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2789 : vec4<f32> = u_xlat12;
        u_xlat35 = ((x_2784 * vec2<f32>(x_2786.x, x_2786.y)) + vec2<f32>(x_2789.w, x_2789.y));
        let x_2793 : f32 = u_xlat12.y;
        u_xlat9.w = x_2793;
        let x_2795 : vec2<f32> = u_xlat59;
        let x_2797 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2800 : vec4<f32> = u_xlat9;
        let x_2802 : vec2<f32> = ((x_2795 * vec2<f32>(x_2797.x, x_2797.y)) + vec2<f32>(x_2800.x, x_2800.w));
        let x_2803 : vec4<f32> = u_xlat18;
        u_xlat18 = vec4<f32>(x_2802.x, x_2802.y, x_2803.z, x_2803.w);
        let x_2805 : vec4<f32> = u_xlat12;
        let x_2806 : vec3<f32> = vec3<f32>(x_2805.x, x_2805.z, x_2805.w);
        let x_2807 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2806.x, x_2807.y, x_2806.y, x_2806.z);
        let x_2809 : vec2<f32> = u_xlat59;
        let x_2812 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2815 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2809.x, x_2809.y, x_2809.x, x_2809.y) * vec4<f32>(x_2812.x, x_2812.y, x_2812.x, x_2812.y)) + vec4<f32>(x_2815.x, x_2815.y, x_2815.z, x_2815.y));
        let x_2819 : vec2<f32> = u_xlat59;
        let x_2821 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2824 : vec4<f32> = u_xlat11;
        u_xlat63 = ((x_2819 * vec2<f32>(x_2821.x, x_2821.y)) + vec2<f32>(x_2824.w, x_2824.y));
        let x_2828 : f32 = u_xlat9.x;
        u_xlat11.x = x_2828;
        let x_2830 : vec2<f32> = u_xlat59;
        let x_2832 : vec4<f32> = x_246.x_MainLightShadowmapSize;
        let x_2835 : vec4<f32> = u_xlat11;
        u_xlat59 = ((x_2830 * vec2<f32>(x_2832.x, x_2832.y)) + vec2<f32>(x_2835.x, x_2835.y));
        let x_2838 : vec4<f32> = u_xlat8;
        let x_2840 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_2838.x, x_2838.x, x_2838.x, x_2838.x) * x_2840);
        let x_2843 : vec4<f32> = u_xlat8;
        let x_2845 : vec4<f32> = u_xlat10;
        u_xlat20 = (vec4<f32>(x_2843.y, x_2843.y, x_2843.y, x_2843.y) * x_2845);
        let x_2848 : vec4<f32> = u_xlat8;
        let x_2850 : vec4<f32> = u_xlat10;
        u_xlat21 = (vec4<f32>(x_2848.z, x_2848.z, x_2848.z, x_2848.z) * x_2850);
        let x_2852 : vec4<f32> = u_xlat8;
        let x_2854 : vec4<f32> = u_xlat10;
        u_xlat8 = (vec4<f32>(x_2852.w, x_2852.w, x_2852.w, x_2852.w) * x_2854);
        let x_2857 : vec4<f32> = u_xlat13;
        let x_2858 : vec2<f32> = vec2<f32>(x_2857.x, x_2857.y);
        let x_2860 : f32 = u_xlat2.z;
        txVec43 = vec3<f32>(x_2858.x, x_2858.y, x_2860);
        let x_2867 : vec3<f32> = txVec43;
        let x_2869 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2867.xy, x_2867.z);
        u_xlat9.x = x_2869;
        let x_2872 : vec4<f32> = u_xlat13;
        let x_2873 : vec2<f32> = vec2<f32>(x_2872.z, x_2872.w);
        let x_2875 : f32 = u_xlat2.z;
        txVec44 = vec3<f32>(x_2873.x, x_2873.y, x_2875);
        let x_2883 : vec3<f32> = txVec44;
        let x_2885 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2883.xy, x_2883.z);
        u_xlat87 = x_2885;
        let x_2886 : f32 = u_xlat87;
        let x_2888 : f32 = u_xlat19.y;
        u_xlat87 = (x_2886 * x_2888);
        let x_2891 : f32 = u_xlat19.x;
        let x_2893 : f32 = u_xlat9.x;
        let x_2895 : f32 = u_xlat87;
        u_xlat9.x = ((x_2891 * x_2893) + x_2895);
        let x_2899 : vec4<f32> = u_xlat14;
        let x_2900 : vec2<f32> = vec2<f32>(x_2899.x, x_2899.y);
        let x_2902 : f32 = u_xlat2.z;
        txVec45 = vec3<f32>(x_2900.x, x_2900.y, x_2902);
        let x_2909 : vec3<f32> = txVec45;
        let x_2911 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2909.xy, x_2909.z);
        u_xlat87 = x_2911;
        let x_2913 : f32 = u_xlat19.z;
        let x_2914 : f32 = u_xlat87;
        let x_2917 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_2913 * x_2914) + x_2917);
        let x_2921 : vec4<f32> = u_xlat16;
        let x_2922 : vec2<f32> = vec2<f32>(x_2921.x, x_2921.y);
        let x_2924 : f32 = u_xlat2.z;
        txVec46 = vec3<f32>(x_2922.x, x_2922.y, x_2924);
        let x_2931 : vec3<f32> = txVec46;
        let x_2933 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2931.xy, x_2931.z);
        u_xlat87 = x_2933;
        let x_2935 : f32 = u_xlat19.w;
        let x_2936 : f32 = u_xlat87;
        let x_2939 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_2935 * x_2936) + x_2939);
        let x_2943 : vec4<f32> = u_xlat15;
        let x_2944 : vec2<f32> = vec2<f32>(x_2943.x, x_2943.y);
        let x_2946 : f32 = u_xlat2.z;
        txVec47 = vec3<f32>(x_2944.x, x_2944.y, x_2946);
        let x_2953 : vec3<f32> = txVec47;
        let x_2955 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2953.xy, x_2953.z);
        u_xlat87 = x_2955;
        let x_2957 : f32 = u_xlat20.x;
        let x_2958 : f32 = u_xlat87;
        let x_2961 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_2957 * x_2958) + x_2961);
        let x_2965 : vec4<f32> = u_xlat15;
        let x_2966 : vec2<f32> = vec2<f32>(x_2965.z, x_2965.w);
        let x_2968 : f32 = u_xlat2.z;
        txVec48 = vec3<f32>(x_2966.x, x_2966.y, x_2968);
        let x_2975 : vec3<f32> = txVec48;
        let x_2977 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2975.xy, x_2975.z);
        u_xlat87 = x_2977;
        let x_2979 : f32 = u_xlat20.y;
        let x_2980 : f32 = u_xlat87;
        let x_2983 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_2979 * x_2980) + x_2983);
        let x_2987 : vec2<f32> = u_xlat66;
        let x_2989 : f32 = u_xlat2.z;
        txVec49 = vec3<f32>(x_2987.x, x_2987.y, x_2989);
        let x_2996 : vec3<f32> = txVec49;
        let x_2998 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2996.xy, x_2996.z);
        u_xlat87 = x_2998;
        let x_3000 : f32 = u_xlat20.z;
        let x_3001 : f32 = u_xlat87;
        let x_3004 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3000 * x_3001) + x_3004);
        let x_3008 : vec4<f32> = u_xlat16;
        let x_3009 : vec2<f32> = vec2<f32>(x_3008.z, x_3008.w);
        let x_3011 : f32 = u_xlat2.z;
        txVec50 = vec3<f32>(x_3009.x, x_3009.y, x_3011);
        let x_3018 : vec3<f32> = txVec50;
        let x_3020 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3018.xy, x_3018.z);
        u_xlat87 = x_3020;
        let x_3022 : f32 = u_xlat20.w;
        let x_3023 : f32 = u_xlat87;
        let x_3026 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3022 * x_3023) + x_3026);
        let x_3030 : vec4<f32> = u_xlat17;
        let x_3031 : vec2<f32> = vec2<f32>(x_3030.x, x_3030.y);
        let x_3033 : f32 = u_xlat2.z;
        txVec51 = vec3<f32>(x_3031.x, x_3031.y, x_3033);
        let x_3040 : vec3<f32> = txVec51;
        let x_3042 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3040.xy, x_3040.z);
        u_xlat87 = x_3042;
        let x_3044 : f32 = u_xlat21.x;
        let x_3045 : f32 = u_xlat87;
        let x_3048 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3044 * x_3045) + x_3048);
        let x_3052 : vec4<f32> = u_xlat17;
        let x_3053 : vec2<f32> = vec2<f32>(x_3052.z, x_3052.w);
        let x_3055 : f32 = u_xlat2.z;
        txVec52 = vec3<f32>(x_3053.x, x_3053.y, x_3055);
        let x_3062 : vec3<f32> = txVec52;
        let x_3064 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3062.xy, x_3062.z);
        u_xlat87 = x_3064;
        let x_3066 : f32 = u_xlat21.y;
        let x_3067 : f32 = u_xlat87;
        let x_3070 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3066 * x_3067) + x_3070);
        let x_3074 : vec2<f32> = u_xlat35;
        let x_3076 : f32 = u_xlat2.z;
        txVec53 = vec3<f32>(x_3074.x, x_3074.y, x_3076);
        let x_3083 : vec3<f32> = txVec53;
        let x_3085 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3083.xy, x_3083.z);
        u_xlat35.x = x_3085;
        let x_3088 : f32 = u_xlat21.z;
        let x_3090 : f32 = u_xlat35.x;
        let x_3093 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3088 * x_3090) + x_3093);
        let x_3097 : vec4<f32> = u_xlat18;
        let x_3098 : vec2<f32> = vec2<f32>(x_3097.x, x_3097.y);
        let x_3100 : f32 = u_xlat2.z;
        txVec54 = vec3<f32>(x_3098.x, x_3098.y, x_3100);
        let x_3107 : vec3<f32> = txVec54;
        let x_3109 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3107.xy, x_3107.z);
        u_xlat35.x = x_3109;
        let x_3112 : f32 = u_xlat21.w;
        let x_3114 : f32 = u_xlat35.x;
        let x_3117 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3112 * x_3114) + x_3117);
        let x_3121 : vec4<f32> = u_xlat12;
        let x_3122 : vec2<f32> = vec2<f32>(x_3121.x, x_3121.y);
        let x_3124 : f32 = u_xlat2.z;
        txVec55 = vec3<f32>(x_3122.x, x_3122.y, x_3124);
        let x_3131 : vec3<f32> = txVec55;
        let x_3133 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3131.xy, x_3131.z);
        u_xlat35.x = x_3133;
        let x_3136 : f32 = u_xlat8.x;
        let x_3138 : f32 = u_xlat35.x;
        let x_3141 : f32 = u_xlat9.x;
        u_xlat8.x = ((x_3136 * x_3138) + x_3141);
        let x_3145 : vec4<f32> = u_xlat12;
        let x_3146 : vec2<f32> = vec2<f32>(x_3145.z, x_3145.w);
        let x_3148 : f32 = u_xlat2.z;
        txVec56 = vec3<f32>(x_3146.x, x_3146.y, x_3148);
        let x_3155 : vec3<f32> = txVec56;
        let x_3157 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3155.xy, x_3155.z);
        u_xlat9.x = x_3157;
        let x_3160 : f32 = u_xlat8.y;
        let x_3162 : f32 = u_xlat9.x;
        let x_3165 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3160 * x_3162) + x_3165);
        let x_3169 : vec2<f32> = u_xlat63;
        let x_3171 : f32 = u_xlat2.z;
        txVec57 = vec3<f32>(x_3169.x, x_3169.y, x_3171);
        let x_3178 : vec3<f32> = txVec57;
        let x_3180 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3178.xy, x_3178.z);
        u_xlat34.x = x_3180;
        let x_3183 : f32 = u_xlat8.z;
        let x_3185 : f32 = u_xlat34.x;
        let x_3188 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3183 * x_3185) + x_3188);
        let x_3192 : vec2<f32> = u_xlat59;
        let x_3194 : f32 = u_xlat2.z;
        txVec58 = vec3<f32>(x_3192.x, x_3192.y, x_3194);
        let x_3201 : vec3<f32> = txVec58;
        let x_3203 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3201.xy, x_3201.z);
        u_xlat59.x = x_3203;
        let x_3206 : f32 = u_xlat8.w;
        let x_3208 : f32 = u_xlat59.x;
        let x_3211 : f32 = u_xlat8.x;
        u_xlat0.x = ((x_3206 * x_3208) + x_3211);
      }
    }
  } else {
    let x_3216 : vec4<f32> = u_xlat2;
    let x_3217 : vec2<f32> = vec2<f32>(x_3216.x, x_3216.y);
    let x_3219 : f32 = u_xlat2.z;
    txVec59 = vec3<f32>(x_3217.x, x_3217.y, x_3219);
    let x_3226 : vec3<f32> = txVec59;
    let x_3228 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3226.xy, x_3226.z);
    u_xlat0.x = x_3228;
  }
  let x_3231 : f32 = u_xlat0.x;
  let x_3233 : f32 = x_246.x_MainLightShadowParams.x;
  let x_3235 : f32 = u_xlat80;
  u_xlat0.x = ((x_3231 * x_3233) + x_3235);
  let x_3239 : bool = u_xlatb3.x;
  if (x_3239) {
    x_3240 = 1.0f;
  } else {
    let x_3245 : f32 = u_xlat0.x;
    x_3240 = x_3245;
  }
  let x_3246 : f32 = x_3240;
  u_xlat0.x = x_3246;
  let x_3248 : vec3<f32> = vs_INTERP8;
  let x_3250 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  let x_3252 : vec3<f32> = (x_3248 + -(x_3250));
  let x_3253 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_3252.x, x_3252.y, x_3252.z, x_3253.w);
  let x_3255 : vec4<f32> = u_xlat2;
  let x_3257 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_3255.x, x_3255.y, x_3255.z), vec3<f32>(x_3257.x, x_3257.y, x_3257.z));
  let x_3263 : f32 = u_xlat2.x;
  let x_3265 : f32 = x_246.x_MainLightShadowParams.z;
  let x_3268 : f32 = x_246.x_MainLightShadowParams.w;
  u_xlat28.x = ((x_3263 * x_3265) + x_3268);
  let x_3272 : f32 = u_xlat28.x;
  u_xlat28.x = clamp(x_3272, 0.0f, 1.0f);
  let x_3277 : f32 = u_xlat0.x;
  u_xlat54 = (-(x_3277) + 1.0f);
  let x_3281 : f32 = u_xlat28.x;
  let x_3282 : f32 = u_xlat54;
  let x_3285 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_3281 * x_3282) + x_3285);
  let x_3296 : f32 = x_3294.x_MainLightCookieTextureFormat;
  u_xlatb28.x = !((x_3296 == -1.0f));
  let x_3300 : bool = u_xlatb28.x;
  if (x_3300) {
    let x_3303 : vec3<f32> = vs_INTERP8;
    let x_3306 : vec4<f32> = x_3294.x_MainLightWorldToLight[1i];
    let x_3308 : vec2<f32> = (vec2<f32>(x_3303.y, x_3303.y) * vec2<f32>(x_3306.x, x_3306.y));
    let x_3309 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_3308.x, x_3308.y, x_3309.z);
    let x_3312 : vec4<f32> = x_3294.x_MainLightWorldToLight[0i];
    let x_3314 : vec3<f32> = vs_INTERP8;
    let x_3317 : vec3<f32> = u_xlat28;
    let x_3319 : vec2<f32> = ((vec2<f32>(x_3312.x, x_3312.y) * vec2<f32>(x_3314.x, x_3314.x)) + vec2<f32>(x_3317.x, x_3317.y));
    let x_3320 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_3319.x, x_3319.y, x_3320.z);
    let x_3323 : vec4<f32> = x_3294.x_MainLightWorldToLight[2i];
    let x_3325 : vec3<f32> = vs_INTERP8;
    let x_3328 : vec3<f32> = u_xlat28;
    let x_3330 : vec2<f32> = ((vec2<f32>(x_3323.x, x_3323.y) * vec2<f32>(x_3325.z, x_3325.z)) + vec2<f32>(x_3328.x, x_3328.y));
    let x_3331 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_3330.x, x_3330.y, x_3331.z);
    let x_3333 : vec3<f32> = u_xlat28;
    let x_3336 : vec4<f32> = x_3294.x_MainLightWorldToLight[3i];
    let x_3338 : vec2<f32> = (vec2<f32>(x_3333.x, x_3333.y) + vec2<f32>(x_3336.x, x_3336.y));
    let x_3339 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_3338.x, x_3338.y, x_3339.z);
    let x_3341 : vec3<f32> = u_xlat28;
    let x_3344 : vec2<f32> = ((vec2<f32>(x_3341.x, x_3341.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_3345 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_3344.x, x_3344.y, x_3345.z);
    let x_3352 : vec3<f32> = u_xlat28;
    let x_3355 : f32 = x_128.x_GlobalMipBias.x;
    let x_3356 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_3352.x, x_3352.y), x_3355);
    u_xlat8 = x_3356;
    let x_3358 : f32 = x_3294.x_MainLightCookieTextureFormat;
    let x_3360 : f32 = x_3294.x_MainLightCookieTextureFormat;
    let x_3362 : f32 = x_3294.x_MainLightCookieTextureFormat;
    let x_3364 : f32 = x_3294.x_MainLightCookieTextureFormat;
    let x_3365 : vec4<f32> = vec4<f32>(x_3358, x_3360, x_3362, x_3364);
    let x_3372 : vec4<bool> = (vec4<f32>(x_3365.x, x_3365.y, x_3365.z, x_3365.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb28 = vec2<bool>(x_3372.x, x_3372.y);
    let x_3375 : bool = u_xlatb28.y;
    if (x_3375) {
      let x_3380 : f32 = u_xlat8.w;
      x_3376 = x_3380;
    } else {
      let x_3383 : f32 = u_xlat8.x;
      x_3376 = x_3383;
    }
    let x_3384 : f32 = x_3376;
    u_xlat54 = x_3384;
    let x_3386 : bool = u_xlatb28.x;
    if (x_3386) {
      let x_3390 : vec4<f32> = u_xlat8;
      x_3387 = vec3<f32>(x_3390.x, x_3390.y, x_3390.z);
    } else {
      let x_3393 : f32 = u_xlat54;
      x_3387 = vec3<f32>(x_3393, x_3393, x_3393);
    }
    let x_3395 : vec3<f32> = x_3387;
    u_xlat28 = x_3395;
  } else {
    u_xlat28.x = 1.0f;
    u_xlat28.y = 1.0f;
    u_xlat28.z = 1.0f;
  }
  let x_3400 : vec3<f32> = u_xlat28;
  let x_3402 : vec4<f32> = x_128.x_MainLightColor;
  u_xlat28 = (x_3400 * vec3<f32>(x_3402.x, x_3402.y, x_3402.z));
  let x_3405 : vec4<f32> = u_xlat4;
  let x_3408 : vec3<f32> = u_xlat26;
  u_xlat3.x = dot(-(vec3<f32>(x_3405.x, x_3405.y, x_3405.z)), x_3408);
  let x_3412 : f32 = u_xlat3.x;
  let x_3414 : f32 = u_xlat3.x;
  u_xlat3.x = (x_3412 + x_3414);
  let x_3417 : vec3<f32> = u_xlat26;
  let x_3418 : vec4<f32> = u_xlat3;
  let x_3422 : vec4<f32> = u_xlat4;
  let x_3425 : vec3<f32> = ((x_3417 * -(vec3<f32>(x_3418.x, x_3418.x, x_3418.x))) + -(vec3<f32>(x_3422.x, x_3422.y, x_3422.z)));
  let x_3426 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3425.x, x_3425.y, x_3425.z, x_3426.w);
  let x_3428 : vec3<f32> = u_xlat26;
  let x_3429 : vec4<f32> = u_xlat4;
  u_xlat3.x = dot(x_3428, vec3<f32>(x_3429.x, x_3429.y, x_3429.z));
  let x_3434 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_3434, 0.0f, 1.0f);
  let x_3438 : f32 = u_xlat3.x;
  u_xlat3.x = (-(x_3438) + 1.0f);
  let x_3443 : f32 = u_xlat3.x;
  let x_3445 : f32 = u_xlat3.x;
  u_xlat3.x = (x_3443 * x_3445);
  let x_3449 : f32 = u_xlat3.x;
  let x_3451 : f32 = u_xlat3.x;
  u_xlat3.x = (x_3449 * x_3451);
  let x_3454 : f32 = u_xlat81;
  u_xlat59.x = ((-(x_3454) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3461 : f32 = u_xlat81;
  let x_3463 : f32 = u_xlat59.x;
  u_xlat81 = (x_3461 * x_3463);
  let x_3465 : f32 = u_xlat81;
  u_xlat81 = (x_3465 * 6.0f);
  let x_3476 : vec4<f32> = u_xlat8;
  let x_3478 : f32 = u_xlat81;
  let x_3479 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_3476.x, x_3476.y, x_3476.z), x_3478);
  u_xlat8 = x_3479;
  let x_3481 : f32 = u_xlat8.w;
  u_xlat81 = (x_3481 + -1.0f);
  let x_3484 : f32 = x_48.unity_SpecCube0_HDR.w;
  let x_3485 : f32 = u_xlat81;
  u_xlat81 = ((x_3484 * x_3485) + 1.0f);
  let x_3488 : f32 = u_xlat81;
  u_xlat81 = max(x_3488, 0.0f);
  let x_3490 : f32 = u_xlat81;
  u_xlat81 = log2(x_3490);
  let x_3492 : f32 = u_xlat81;
  let x_3494 : f32 = x_48.unity_SpecCube0_HDR.y;
  u_xlat81 = (x_3492 * x_3494);
  let x_3496 : f32 = u_xlat81;
  u_xlat81 = exp2(x_3496);
  let x_3498 : f32 = u_xlat81;
  let x_3500 : f32 = x_48.unity_SpecCube0_HDR.x;
  u_xlat81 = (x_3498 * x_3500);
  let x_3502 : vec4<f32> = u_xlat8;
  let x_3504 : f32 = u_xlat81;
  let x_3506 : vec3<f32> = (vec3<f32>(x_3502.x, x_3502.y, x_3502.z) * vec3<f32>(x_3504, x_3504, x_3504));
  let x_3507 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3506.x, x_3506.y, x_3506.z, x_3507.w);
  let x_3509 : f32 = u_xlat82;
  let x_3511 : f32 = u_xlat82;
  u_xlat59 = ((vec2<f32>(x_3509, x_3509) * vec2<f32>(x_3511, x_3511)) + vec2<f32>(-1.0f, 1.0f));
  let x_3517 : f32 = u_xlat59.y;
  u_xlat81 = (1.0f / x_3517);
  let x_3520 : f32 = u_xlat6.x;
  u_xlat82 = (x_3520 + -0.03999999910593032837f);
  let x_3524 : f32 = u_xlat3.x;
  let x_3525 : f32 = u_xlat82;
  u_xlat3.x = ((x_3524 * x_3525) + 0.03999999910593032837f);
  let x_3531 : f32 = u_xlat3.x;
  let x_3532 : f32 = u_xlat81;
  u_xlat3.x = (x_3531 * x_3532);
  let x_3535 : vec4<f32> = u_xlat3;
  let x_3537 : vec4<f32> = u_xlat8;
  let x_3539 : vec3<f32> = (vec3<f32>(x_3535.x, x_3535.x, x_3535.x) * vec3<f32>(x_3537.x, x_3537.y, x_3537.z));
  let x_3540 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3539.x, x_3539.y, x_3539.z, x_3540.w);
  let x_3542 : vec3<f32> = u_xlat32;
  let x_3543 : vec3<f32> = u_xlat5;
  let x_3545 : vec4<f32> = u_xlat8;
  let x_3547 : vec3<f32> = ((x_3542 * x_3543) + vec3<f32>(x_3545.x, x_3545.y, x_3545.z));
  let x_3548 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3547.x, x_3547.y, x_3547.z, x_3548.w);
  let x_3551 : f32 = u_xlat0.x;
  let x_3553 : f32 = x_48.unity_LightData.z;
  u_xlat0.x = (x_3551 * x_3553);
  let x_3556 : vec3<f32> = u_xlat26;
  let x_3558 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat3.x = dot(x_3556, vec3<f32>(x_3558.x, x_3558.y, x_3558.z));
  let x_3563 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_3563, 0.0f, 1.0f);
  let x_3567 : f32 = u_xlat0.x;
  let x_3569 : f32 = u_xlat3.x;
  u_xlat0.x = (x_3567 * x_3569);
  let x_3572 : vec3<f32> = u_xlat0;
  let x_3574 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_3572.x, x_3572.x, x_3572.x) * x_3574);
  let x_3576 : vec4<f32> = u_xlat4;
  let x_3579 : vec4<f32> = x_128.x_MainLightPosition;
  let x_3581 : vec3<f32> = (vec3<f32>(x_3576.x, x_3576.y, x_3576.z) + vec3<f32>(x_3579.x, x_3579.y, x_3579.z));
  let x_3582 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3581.x, x_3581.y, x_3581.z, x_3582.w);
  let x_3584 : vec4<f32> = u_xlat8;
  let x_3586 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_3584.x, x_3584.y, x_3584.z), vec3<f32>(x_3586.x, x_3586.y, x_3586.z));
  let x_3591 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_3591, 1.17549435e-38f);
  let x_3595 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_3595);
  let x_3598 : vec3<f32> = u_xlat0;
  let x_3600 : vec4<f32> = u_xlat8;
  let x_3602 : vec3<f32> = (vec3<f32>(x_3598.x, x_3598.x, x_3598.x) * vec3<f32>(x_3600.x, x_3600.y, x_3600.z));
  let x_3603 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3602.x, x_3602.y, x_3602.z, x_3603.w);
  let x_3605 : vec3<f32> = u_xlat26;
  let x_3606 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_3605, vec3<f32>(x_3606.x, x_3606.y, x_3606.z));
  let x_3611 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_3611, 0.0f, 1.0f);
  let x_3615 : vec4<f32> = x_128.x_MainLightPosition;
  let x_3617 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_3615.x, x_3615.y, x_3615.z), vec3<f32>(x_3617.x, x_3617.y, x_3617.z));
  let x_3622 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_3622, 0.0f, 1.0f);
  let x_3626 : f32 = u_xlat0.x;
  let x_3628 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3626 * x_3628);
  let x_3632 : f32 = u_xlat0.x;
  let x_3634 : f32 = u_xlat59.x;
  u_xlat0.x = ((x_3632 * x_3634) + 1.00001001358032226562f);
  let x_3640 : f32 = u_xlat3.x;
  let x_3642 : f32 = u_xlat3.x;
  u_xlat3.x = (x_3640 * x_3642);
  let x_3646 : f32 = u_xlat0.x;
  let x_3648 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3646 * x_3648);
  let x_3652 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_3652, 0.10000000149011611938f);
  let x_3657 : f32 = u_xlat0.x;
  let x_3659 : f32 = u_xlat3.x;
  u_xlat0.x = (x_3657 * x_3659);
  let x_3663 : f32 = u_xlat7.x;
  let x_3665 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3663 * x_3665);
  let x_3668 : f32 = u_xlat83;
  let x_3670 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3668 / x_3670);
  let x_3673 : vec3<f32> = u_xlat0;
  let x_3677 : vec3<f32> = u_xlat5;
  let x_3678 : vec3<f32> = ((vec3<f32>(x_3673.x, x_3673.x, x_3673.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3677);
  let x_3679 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3678.x, x_3678.y, x_3678.z, x_3679.w);
  let x_3681 : vec3<f32> = u_xlat28;
  let x_3682 : vec4<f32> = u_xlat8;
  u_xlat28 = (x_3681 * vec3<f32>(x_3682.x, x_3682.y, x_3682.z));
  let x_3686 : f32 = x_128.x_AdditionalLightsCount.x;
  let x_3688 : f32 = x_48.unity_LightData.y;
  u_xlat0.x = min(x_3686, x_3688);
  let x_3692 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_3692));
  let x_3696 : f32 = u_xlat2.x;
  let x_3699 : f32 = x_246.x_AdditionalShadowFadeParams.x;
  let x_3702 : f32 = x_246.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_3696 * x_3699) + x_3702);
  let x_3706 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_3706, 0.0f, 1.0f);
  let x_3710 : f32 = x_3294.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3712 : f32 = x_3294.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3714 : f32 = x_3294.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3716 : f32 = x_3294.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3717 : vec4<f32> = vec4<f32>(x_3710, x_3712, x_3714, x_3716);
  let x_3724 : vec4<bool> = (vec4<f32>(x_3717.x, x_3717.y, x_3717.z, x_3717.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_3725 : vec2<bool> = vec2<bool>(x_3724.x, x_3724.w);
  let x_3726 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_3725.x, x_3726.y, x_3726.z, x_3725.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3738 : u32 = u_xlatu_loop_1;
    let x_3739 : u32 = u_xlatu0;
    if ((x_3738 < x_3739)) {
    } else {
      break;
    }
    let x_3742 : u32 = u_xlatu_loop_1;
    u_xlatu84 = (x_3742 >> 2u);
    let x_3745 : u32 = u_xlatu_loop_1;
    u_xlati85 = bitcast<i32>((x_3745 & 3u));
    let x_3749 : u32 = u_xlatu84;
    let x_3752 : vec4<f32> = x_48.unity_LightIndices[bitcast<i32>(x_3749)];
    let x_3762 : i32 = u_xlati85;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3767 : vec4<u32> = indexable[x_3762];
    u_xlat84 = dot(x_3752, bitcast<vec4<f32>>(x_3767));
    let x_3771 : f32 = u_xlat84;
    u_xlati84 = i32(x_3771);
    let x_3773 : vec3<f32> = vs_INTERP8;
    let x_3784 : i32 = u_xlati84;
    let x_3786 : vec4<f32> = x_3783.x_AdditionalLightsPosition[x_3784];
    let x_3789 : i32 = u_xlati84;
    let x_3791 : vec4<f32> = x_3783.x_AdditionalLightsPosition[x_3789];
    let x_3793 : vec3<f32> = ((-(x_3773) * vec3<f32>(x_3786.w, x_3786.w, x_3786.w)) + vec3<f32>(x_3791.x, x_3791.y, x_3791.z));
    let x_3794 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3793.x, x_3793.y, x_3793.z, x_3794.w);
    let x_3796 : vec4<f32> = u_xlat9;
    let x_3798 : vec4<f32> = u_xlat9;
    u_xlat85 = dot(vec3<f32>(x_3796.x, x_3796.y, x_3796.z), vec3<f32>(x_3798.x, x_3798.y, x_3798.z));
    let x_3801 : f32 = u_xlat85;
    u_xlat85 = max(x_3801, 0.00006103515625f);
    let x_3805 : f32 = u_xlat85;
    u_xlat86 = inverseSqrt(x_3805);
    let x_3807 : f32 = u_xlat86;
    let x_3809 : vec4<f32> = u_xlat9;
    let x_3811 : vec3<f32> = (vec3<f32>(x_3807, x_3807, x_3807) * vec3<f32>(x_3809.x, x_3809.y, x_3809.z));
    let x_3812 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3811.x, x_3811.y, x_3811.z, x_3812.w);
    let x_3814 : f32 = u_xlat85;
    u_xlat87 = (1.0f / x_3814);
    let x_3816 : f32 = u_xlat85;
    let x_3817 : i32 = u_xlati84;
    let x_3819 : f32 = x_3783.x_AdditionalLightsAttenuation[x_3817].x;
    u_xlat85 = (x_3816 * x_3819);
    let x_3821 : f32 = u_xlat85;
    let x_3823 : f32 = u_xlat85;
    u_xlat85 = ((-(x_3821) * x_3823) + 1.0f);
    let x_3826 : f32 = u_xlat85;
    u_xlat85 = max(x_3826, 0.0f);
    let x_3828 : f32 = u_xlat85;
    let x_3829 : f32 = u_xlat85;
    u_xlat85 = (x_3828 * x_3829);
    let x_3831 : f32 = u_xlat85;
    let x_3832 : f32 = u_xlat87;
    u_xlat85 = (x_3831 * x_3832);
    let x_3834 : i32 = u_xlati84;
    let x_3836 : vec4<f32> = x_3783.x_AdditionalLightsSpotDir[x_3834];
    let x_3838 : vec4<f32> = u_xlat10;
    u_xlat87 = dot(vec3<f32>(x_3836.x, x_3836.y, x_3836.z), vec3<f32>(x_3838.x, x_3838.y, x_3838.z));
    let x_3841 : f32 = u_xlat87;
    let x_3842 : i32 = u_xlati84;
    let x_3844 : f32 = x_3783.x_AdditionalLightsAttenuation[x_3842].z;
    let x_3846 : i32 = u_xlati84;
    let x_3848 : f32 = x_3783.x_AdditionalLightsAttenuation[x_3846].w;
    u_xlat87 = ((x_3841 * x_3844) + x_3848);
    let x_3850 : f32 = u_xlat87;
    u_xlat87 = clamp(x_3850, 0.0f, 1.0f);
    let x_3852 : f32 = u_xlat87;
    let x_3853 : f32 = u_xlat87;
    u_xlat87 = (x_3852 * x_3853);
    let x_3855 : f32 = u_xlat85;
    let x_3856 : f32 = u_xlat87;
    u_xlat85 = (x_3855 * x_3856);
    let x_3860 : i32 = u_xlati84;
    let x_3862 : f32 = x_246.x_AdditionalShadowParams[x_3860].w;
    u_xlati87 = i32(x_3862);
    let x_3865 : i32 = u_xlati87;
    u_xlatb88 = (x_3865 >= 0i);
    let x_3867 : bool = u_xlatb88;
    if (x_3867) {
      let x_3871 : i32 = u_xlati84;
      let x_3873 : f32 = x_246.x_AdditionalShadowParams[x_3871].z;
      u_xlatb88 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3873, x_3873, x_3873, x_3873))));
      let x_3877 : bool = u_xlatb88;
      if (x_3877) {
        let x_3881 : vec4<f32> = u_xlat10;
        let x_3884 : vec4<f32> = u_xlat10;
        let x_3887 : vec4<bool> = (abs(vec4<f32>(x_3881.z, x_3881.z, x_3881.y, x_3881.z)) >= abs(vec4<f32>(x_3884.x, x_3884.y, x_3884.x, x_3884.x)));
        let x_3889 : vec3<bool> = vec3<bool>(x_3887.x, x_3887.y, x_3887.z);
        let x_3890 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3889.x, x_3889.y, x_3889.z, x_3890.w);
        let x_3893 : bool = u_xlatb11.y;
        let x_3895 : bool = u_xlatb11.x;
        u_xlatb88 = (x_3893 & x_3895);
        let x_3897 : vec4<f32> = u_xlat10;
        let x_3900 : vec4<bool> = (-(vec4<f32>(x_3897.z, x_3897.y, x_3897.z, x_3897.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3901 : vec3<bool> = vec3<bool>(x_3900.x, x_3900.y, x_3900.w);
        let x_3902 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3901.x, x_3901.y, x_3902.z, x_3901.z);
        let x_3905 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3905);
        let x_3910 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3910);
        let x_3915 : bool = u_xlatb11.w;
        u_xlat89 = select(0.0f, 1.0f, x_3915);
        let x_3919 : bool = u_xlatb11.z;
        if (x_3919) {
          let x_3924 : f32 = u_xlat11.y;
          x_3920 = x_3924;
        } else {
          let x_3926 : f32 = u_xlat89;
          x_3920 = x_3926;
        }
        let x_3927 : f32 = x_3920;
        u_xlat37.x = x_3927;
        let x_3930 : bool = u_xlatb88;
        if (x_3930) {
          let x_3935 : f32 = u_xlat11.x;
          x_3931 = x_3935;
        } else {
          let x_3938 : f32 = u_xlat37.x;
          x_3931 = x_3938;
        }
        let x_3939 : f32 = x_3931;
        u_xlat88 = x_3939;
        let x_3940 : i32 = u_xlati84;
        let x_3942 : f32 = x_246.x_AdditionalShadowParams[x_3940].w;
        u_xlat11.x = trunc(x_3942);
        let x_3945 : f32 = u_xlat88;
        let x_3947 : f32 = u_xlat11.x;
        u_xlat88 = (x_3945 + x_3947);
        let x_3949 : f32 = u_xlat88;
        u_xlati87 = i32(x_3949);
      }
      let x_3951 : i32 = u_xlati87;
      u_xlati87 = (x_3951 << bitcast<u32>(2i));
      let x_3953 : vec3<f32> = vs_INTERP8;
      let x_3956 : i32 = u_xlati87;
      let x_3959 : i32 = u_xlati87;
      let x_3963 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[((x_3956 + 1i) / 4i)][((x_3959 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3953.y, x_3953.y, x_3953.y, x_3953.y) * x_3963);
      let x_3965 : i32 = u_xlati87;
      let x_3967 : i32 = u_xlati87;
      let x_3970 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[(x_3965 / 4i)][(x_3967 % 4i)];
      let x_3971 : vec3<f32> = vs_INTERP8;
      let x_3974 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3970 * vec4<f32>(x_3971.x, x_3971.x, x_3971.x, x_3971.x)) + x_3974);
      let x_3976 : i32 = u_xlati87;
      let x_3979 : i32 = u_xlati87;
      let x_3983 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[((x_3976 + 2i) / 4i)][((x_3979 + 2i) % 4i)];
      let x_3984 : vec3<f32> = vs_INTERP8;
      let x_3987 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3983 * vec4<f32>(x_3984.z, x_3984.z, x_3984.z, x_3984.z)) + x_3987);
      let x_3989 : vec4<f32> = u_xlat11;
      let x_3990 : i32 = u_xlati87;
      let x_3993 : i32 = u_xlati87;
      let x_3997 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[((x_3990 + 3i) / 4i)][((x_3993 + 3i) % 4i)];
      u_xlat11 = (x_3989 + x_3997);
      let x_3999 : vec4<f32> = u_xlat11;
      let x_4001 : vec4<f32> = u_xlat11;
      let x_4003 : vec3<f32> = (vec3<f32>(x_3999.x, x_3999.y, x_3999.z) / vec3<f32>(x_4001.w, x_4001.w, x_4001.w));
      let x_4004 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4003.x, x_4003.y, x_4003.z, x_4004.w);
      let x_4007 : i32 = u_xlati84;
      let x_4009 : f32 = x_246.x_AdditionalShadowParams[x_4007].y;
      u_xlatb87 = (0.0f < x_4009);
      let x_4011 : bool = u_xlatb87;
      if (x_4011) {
        let x_4014 : i32 = u_xlati84;
        let x_4016 : f32 = x_246.x_AdditionalShadowParams[x_4014].y;
        u_xlatb87 = (1.0f == x_4016);
        let x_4018 : bool = u_xlatb87;
        if (x_4018) {
          let x_4021 : vec4<f32> = u_xlat11;
          let x_4024 : vec4<f32> = x_246.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_4021.x, x_4021.y, x_4021.x, x_4021.y) + x_4024);
          let x_4027 : vec4<f32> = u_xlat12;
          let x_4028 : vec2<f32> = vec2<f32>(x_4027.x, x_4027.y);
          let x_4030 : f32 = u_xlat11.z;
          txVec60 = vec3<f32>(x_4028.x, x_4028.y, x_4030);
          let x_4038 : vec3<f32> = txVec60;
          let x_4040 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4038.xy, x_4038.z);
          u_xlat13.x = x_4040;
          let x_4043 : vec4<f32> = u_xlat12;
          let x_4044 : vec2<f32> = vec2<f32>(x_4043.z, x_4043.w);
          let x_4046 : f32 = u_xlat11.z;
          txVec61 = vec3<f32>(x_4044.x, x_4044.y, x_4046);
          let x_4053 : vec3<f32> = txVec61;
          let x_4055 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4053.xy, x_4053.z);
          u_xlat13.y = x_4055;
          let x_4057 : vec4<f32> = u_xlat11;
          let x_4061 : vec4<f32> = x_246.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_4057.x, x_4057.y, x_4057.x, x_4057.y) + x_4061);
          let x_4064 : vec4<f32> = u_xlat12;
          let x_4065 : vec2<f32> = vec2<f32>(x_4064.x, x_4064.y);
          let x_4067 : f32 = u_xlat11.z;
          txVec62 = vec3<f32>(x_4065.x, x_4065.y, x_4067);
          let x_4074 : vec3<f32> = txVec62;
          let x_4076 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4074.xy, x_4074.z);
          u_xlat13.z = x_4076;
          let x_4079 : vec4<f32> = u_xlat12;
          let x_4080 : vec2<f32> = vec2<f32>(x_4079.z, x_4079.w);
          let x_4082 : f32 = u_xlat11.z;
          txVec63 = vec3<f32>(x_4080.x, x_4080.y, x_4082);
          let x_4089 : vec3<f32> = txVec63;
          let x_4091 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4089.xy, x_4089.z);
          u_xlat13.w = x_4091;
          let x_4093 : vec4<f32> = u_xlat13;
          u_xlat87 = dot(x_4093, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_4096 : i32 = u_xlati84;
          let x_4098 : f32 = x_246.x_AdditionalShadowParams[x_4096].y;
          u_xlatb88 = (2.0f == x_4098);
          let x_4100 : bool = u_xlatb88;
          if (x_4100) {
            let x_4103 : vec4<f32> = u_xlat11;
            let x_4107 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4110 : vec2<f32> = ((vec2<f32>(x_4103.x, x_4103.y) * vec2<f32>(x_4107.z, x_4107.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4111 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4110.x, x_4110.y, x_4111.z, x_4111.w);
            let x_4113 : vec4<f32> = u_xlat12;
            let x_4115 : vec2<f32> = floor(vec2<f32>(x_4113.x, x_4113.y));
            let x_4116 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4115.x, x_4115.y, x_4116.z, x_4116.w);
            let x_4119 : vec4<f32> = u_xlat11;
            let x_4122 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4125 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4119.x, x_4119.y) * vec2<f32>(x_4122.z, x_4122.w)) + -(vec2<f32>(x_4125.x, x_4125.y)));
            let x_4129 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4129.x, x_4129.x, x_4129.y, x_4129.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4132 : vec4<f32> = u_xlat13;
            let x_4134 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4132.x, x_4132.x, x_4132.z, x_4132.z) * vec4<f32>(x_4134.x, x_4134.x, x_4134.z, x_4134.z));
            let x_4137 : vec4<f32> = u_xlat14;
            let x_4139 : vec2<f32> = (vec2<f32>(x_4137.y, x_4137.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_4140 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4139.x, x_4140.y, x_4139.y, x_4140.w);
            let x_4142 : vec4<f32> = u_xlat14;
            let x_4145 : vec2<f32> = u_xlat64;
            let x_4147 : vec2<f32> = ((vec2<f32>(x_4142.x, x_4142.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4145));
            let x_4148 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4147.x, x_4147.y, x_4148.z, x_4148.w);
            let x_4150 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_4150) + vec2<f32>(1.0f, 1.0f));
            let x_4153 : vec2<f32> = u_xlat64;
            let x_4154 : vec2<f32> = min(x_4153, vec2<f32>(0.0f, 0.0f));
            let x_4155 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4154.x, x_4154.y, x_4155.z, x_4155.w);
            let x_4157 : vec4<f32> = u_xlat15;
            let x_4160 : vec4<f32> = u_xlat15;
            let x_4163 : vec2<f32> = u_xlat66;
            let x_4164 : vec2<f32> = ((-(vec2<f32>(x_4157.x, x_4157.y)) * vec2<f32>(x_4160.x, x_4160.y)) + x_4163);
            let x_4165 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4164.x, x_4164.y, x_4165.z, x_4165.w);
            let x_4167 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_4167, vec2<f32>(0.0f, 0.0f));
            let x_4169 : vec2<f32> = u_xlat64;
            let x_4171 : vec2<f32> = u_xlat64;
            let x_4173 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_4169) * x_4171) + vec2<f32>(x_4173.y, x_4173.w));
            let x_4176 : vec4<f32> = u_xlat15;
            let x_4178 : vec2<f32> = (vec2<f32>(x_4176.x, x_4176.y) + vec2<f32>(1.0f, 1.0f));
            let x_4179 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4178.x, x_4178.y, x_4179.z, x_4179.w);
            let x_4181 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_4181 + vec2<f32>(1.0f, 1.0f));
            let x_4183 : vec4<f32> = u_xlat14;
            let x_4185 : vec2<f32> = (vec2<f32>(x_4183.x, x_4183.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4186 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4185.x, x_4185.y, x_4186.z, x_4186.w);
            let x_4188 : vec2<f32> = u_xlat66;
            let x_4189 : vec2<f32> = (x_4188 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4190 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4189.x, x_4189.y, x_4190.z, x_4190.w);
            let x_4192 : vec4<f32> = u_xlat15;
            let x_4194 : vec2<f32> = (vec2<f32>(x_4192.x, x_4192.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4195 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4194.x, x_4194.y, x_4195.z, x_4195.w);
            let x_4197 : vec2<f32> = u_xlat64;
            let x_4198 : vec2<f32> = (x_4197 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4199 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4198.x, x_4198.y, x_4199.z, x_4199.w);
            let x_4201 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_4201.y, x_4201.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4205 : f32 = u_xlat15.x;
            u_xlat16.z = x_4205;
            let x_4208 : f32 = u_xlat64.x;
            u_xlat16.w = x_4208;
            let x_4211 : f32 = u_xlat17.x;
            u_xlat14.z = x_4211;
            let x_4214 : f32 = u_xlat13.x;
            u_xlat14.w = x_4214;
            let x_4216 : vec4<f32> = u_xlat14;
            let x_4218 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_4216.z, x_4216.w, x_4216.x, x_4216.z) + vec4<f32>(x_4218.z, x_4218.w, x_4218.x, x_4218.z));
            let x_4222 : f32 = u_xlat16.y;
            u_xlat15.z = x_4222;
            let x_4225 : f32 = u_xlat64.y;
            u_xlat15.w = x_4225;
            let x_4228 : f32 = u_xlat14.y;
            u_xlat17.z = x_4228;
            let x_4231 : f32 = u_xlat13.z;
            u_xlat17.w = x_4231;
            let x_4233 : vec4<f32> = u_xlat15;
            let x_4235 : vec4<f32> = u_xlat17;
            let x_4237 : vec3<f32> = (vec3<f32>(x_4233.z, x_4233.y, x_4233.w) + vec3<f32>(x_4235.z, x_4235.y, x_4235.w));
            let x_4238 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4237.x, x_4237.y, x_4237.z, x_4238.w);
            let x_4240 : vec4<f32> = u_xlat14;
            let x_4242 : vec4<f32> = u_xlat18;
            let x_4244 : vec3<f32> = (vec3<f32>(x_4240.x, x_4240.z, x_4240.w) / vec3<f32>(x_4242.z, x_4242.w, x_4242.y));
            let x_4245 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4244.x, x_4244.y, x_4244.z, x_4245.w);
            let x_4247 : vec4<f32> = u_xlat14;
            let x_4249 : vec3<f32> = (vec3<f32>(x_4247.x, x_4247.y, x_4247.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4250 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4249.x, x_4249.y, x_4249.z, x_4250.w);
            let x_4252 : vec4<f32> = u_xlat17;
            let x_4254 : vec4<f32> = u_xlat13;
            let x_4256 : vec3<f32> = (vec3<f32>(x_4252.z, x_4252.y, x_4252.w) / vec3<f32>(x_4254.x, x_4254.y, x_4254.z));
            let x_4257 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4256.x, x_4256.y, x_4256.z, x_4257.w);
            let x_4259 : vec4<f32> = u_xlat15;
            let x_4261 : vec3<f32> = (vec3<f32>(x_4259.x, x_4259.y, x_4259.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4262 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4261.x, x_4261.y, x_4261.z, x_4262.w);
            let x_4264 : vec4<f32> = u_xlat14;
            let x_4267 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4269 : vec3<f32> = (vec3<f32>(x_4264.y, x_4264.x, x_4264.z) * vec3<f32>(x_4267.x, x_4267.x, x_4267.x));
            let x_4270 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4269.x, x_4269.y, x_4269.z, x_4270.w);
            let x_4272 : vec4<f32> = u_xlat15;
            let x_4275 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4277 : vec3<f32> = (vec3<f32>(x_4272.x, x_4272.y, x_4272.z) * vec3<f32>(x_4275.y, x_4275.y, x_4275.y));
            let x_4278 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4277.x, x_4277.y, x_4277.z, x_4278.w);
            let x_4281 : f32 = u_xlat15.x;
            u_xlat14.w = x_4281;
            let x_4283 : vec4<f32> = u_xlat12;
            let x_4286 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4289 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4283.x, x_4283.y, x_4283.x, x_4283.y) * vec4<f32>(x_4286.x, x_4286.y, x_4286.x, x_4286.y)) + vec4<f32>(x_4289.y, x_4289.w, x_4289.x, x_4289.w));
            let x_4292 : vec4<f32> = u_xlat12;
            let x_4295 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4298 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4292.x, x_4292.y) * vec2<f32>(x_4295.x, x_4295.y)) + vec2<f32>(x_4298.z, x_4298.w));
            let x_4302 : f32 = u_xlat14.y;
            u_xlat15.w = x_4302;
            let x_4304 : vec4<f32> = u_xlat15;
            let x_4305 : vec2<f32> = vec2<f32>(x_4304.y, x_4304.z);
            let x_4306 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4306.x, x_4305.x, x_4306.z, x_4305.y);
            let x_4308 : vec4<f32> = u_xlat12;
            let x_4311 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4314 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_4308.x, x_4308.y, x_4308.x, x_4308.y) * vec4<f32>(x_4311.x, x_4311.y, x_4311.x, x_4311.y)) + vec4<f32>(x_4314.x, x_4314.y, x_4314.z, x_4314.y));
            let x_4317 : vec4<f32> = u_xlat12;
            let x_4320 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4323 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4317.x, x_4317.y, x_4317.x, x_4317.y) * vec4<f32>(x_4320.x, x_4320.y, x_4320.x, x_4320.y)) + vec4<f32>(x_4323.w, x_4323.y, x_4323.w, x_4323.z));
            let x_4326 : vec4<f32> = u_xlat12;
            let x_4329 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4332 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4326.x, x_4326.y, x_4326.x, x_4326.y) * vec4<f32>(x_4329.x, x_4329.y, x_4329.x, x_4329.y)) + vec4<f32>(x_4332.x, x_4332.w, x_4332.z, x_4332.w));
            let x_4335 : vec4<f32> = u_xlat13;
            let x_4337 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_4335.x, x_4335.x, x_4335.x, x_4335.y) * vec4<f32>(x_4337.z, x_4337.w, x_4337.y, x_4337.z));
            let x_4340 : vec4<f32> = u_xlat13;
            let x_4342 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_4340.y, x_4340.y, x_4340.z, x_4340.z) * x_4342);
            let x_4345 : f32 = u_xlat13.z;
            let x_4347 : f32 = u_xlat18.y;
            u_xlat88 = (x_4345 * x_4347);
            let x_4350 : vec4<f32> = u_xlat16;
            let x_4351 : vec2<f32> = vec2<f32>(x_4350.x, x_4350.y);
            let x_4353 : f32 = u_xlat11.z;
            txVec64 = vec3<f32>(x_4351.x, x_4351.y, x_4353);
            let x_4360 : vec3<f32> = txVec64;
            let x_4362 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4360.xy, x_4360.z);
            u_xlat89 = x_4362;
            let x_4364 : vec4<f32> = u_xlat16;
            let x_4365 : vec2<f32> = vec2<f32>(x_4364.z, x_4364.w);
            let x_4367 : f32 = u_xlat11.z;
            txVec65 = vec3<f32>(x_4365.x, x_4365.y, x_4367);
            let x_4374 : vec3<f32> = txVec65;
            let x_4376 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4374.xy, x_4374.z);
            u_xlat12.x = x_4376;
            let x_4379 : f32 = u_xlat12.x;
            let x_4381 : f32 = u_xlat19.y;
            u_xlat12.x = (x_4379 * x_4381);
            let x_4385 : f32 = u_xlat19.x;
            let x_4386 : f32 = u_xlat89;
            let x_4389 : f32 = u_xlat12.x;
            u_xlat89 = ((x_4385 * x_4386) + x_4389);
            let x_4392 : vec2<f32> = u_xlat64;
            let x_4394 : f32 = u_xlat11.z;
            txVec66 = vec3<f32>(x_4392.x, x_4392.y, x_4394);
            let x_4401 : vec3<f32> = txVec66;
            let x_4403 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4401.xy, x_4401.z);
            u_xlat12.x = x_4403;
            let x_4406 : f32 = u_xlat19.z;
            let x_4408 : f32 = u_xlat12.x;
            let x_4410 : f32 = u_xlat89;
            u_xlat89 = ((x_4406 * x_4408) + x_4410);
            let x_4413 : vec4<f32> = u_xlat15;
            let x_4414 : vec2<f32> = vec2<f32>(x_4413.x, x_4413.y);
            let x_4416 : f32 = u_xlat11.z;
            txVec67 = vec3<f32>(x_4414.x, x_4414.y, x_4416);
            let x_4423 : vec3<f32> = txVec67;
            let x_4425 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4423.xy, x_4423.z);
            u_xlat12.x = x_4425;
            let x_4428 : f32 = u_xlat19.w;
            let x_4430 : f32 = u_xlat12.x;
            let x_4432 : f32 = u_xlat89;
            u_xlat89 = ((x_4428 * x_4430) + x_4432);
            let x_4435 : vec4<f32> = u_xlat17;
            let x_4436 : vec2<f32> = vec2<f32>(x_4435.x, x_4435.y);
            let x_4438 : f32 = u_xlat11.z;
            txVec68 = vec3<f32>(x_4436.x, x_4436.y, x_4438);
            let x_4445 : vec3<f32> = txVec68;
            let x_4447 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4445.xy, x_4445.z);
            u_xlat12.x = x_4447;
            let x_4450 : f32 = u_xlat20.x;
            let x_4452 : f32 = u_xlat12.x;
            let x_4454 : f32 = u_xlat89;
            u_xlat89 = ((x_4450 * x_4452) + x_4454);
            let x_4457 : vec4<f32> = u_xlat17;
            let x_4458 : vec2<f32> = vec2<f32>(x_4457.z, x_4457.w);
            let x_4460 : f32 = u_xlat11.z;
            txVec69 = vec3<f32>(x_4458.x, x_4458.y, x_4460);
            let x_4467 : vec3<f32> = txVec69;
            let x_4469 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4467.xy, x_4467.z);
            u_xlat12.x = x_4469;
            let x_4472 : f32 = u_xlat20.y;
            let x_4474 : f32 = u_xlat12.x;
            let x_4476 : f32 = u_xlat89;
            u_xlat89 = ((x_4472 * x_4474) + x_4476);
            let x_4479 : vec4<f32> = u_xlat15;
            let x_4480 : vec2<f32> = vec2<f32>(x_4479.z, x_4479.w);
            let x_4482 : f32 = u_xlat11.z;
            txVec70 = vec3<f32>(x_4480.x, x_4480.y, x_4482);
            let x_4489 : vec3<f32> = txVec70;
            let x_4491 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4489.xy, x_4489.z);
            u_xlat12.x = x_4491;
            let x_4494 : f32 = u_xlat20.z;
            let x_4496 : f32 = u_xlat12.x;
            let x_4498 : f32 = u_xlat89;
            u_xlat89 = ((x_4494 * x_4496) + x_4498);
            let x_4501 : vec4<f32> = u_xlat14;
            let x_4502 : vec2<f32> = vec2<f32>(x_4501.x, x_4501.y);
            let x_4504 : f32 = u_xlat11.z;
            txVec71 = vec3<f32>(x_4502.x, x_4502.y, x_4504);
            let x_4511 : vec3<f32> = txVec71;
            let x_4513 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4511.xy, x_4511.z);
            u_xlat12.x = x_4513;
            let x_4516 : f32 = u_xlat20.w;
            let x_4518 : f32 = u_xlat12.x;
            let x_4520 : f32 = u_xlat89;
            u_xlat89 = ((x_4516 * x_4518) + x_4520);
            let x_4523 : vec4<f32> = u_xlat14;
            let x_4524 : vec2<f32> = vec2<f32>(x_4523.z, x_4523.w);
            let x_4526 : f32 = u_xlat11.z;
            txVec72 = vec3<f32>(x_4524.x, x_4524.y, x_4526);
            let x_4533 : vec3<f32> = txVec72;
            let x_4535 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4533.xy, x_4533.z);
            u_xlat12.x = x_4535;
            let x_4537 : f32 = u_xlat88;
            let x_4539 : f32 = u_xlat12.x;
            let x_4541 : f32 = u_xlat89;
            u_xlat87 = ((x_4537 * x_4539) + x_4541);
          } else {
            let x_4544 : vec4<f32> = u_xlat11;
            let x_4547 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4550 : vec2<f32> = ((vec2<f32>(x_4544.x, x_4544.y) * vec2<f32>(x_4547.z, x_4547.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4551 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4550.x, x_4550.y, x_4551.z, x_4551.w);
            let x_4553 : vec4<f32> = u_xlat12;
            let x_4555 : vec2<f32> = floor(vec2<f32>(x_4553.x, x_4553.y));
            let x_4556 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4555.x, x_4555.y, x_4556.z, x_4556.w);
            let x_4558 : vec4<f32> = u_xlat11;
            let x_4561 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4564 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4558.x, x_4558.y) * vec2<f32>(x_4561.z, x_4561.w)) + -(vec2<f32>(x_4564.x, x_4564.y)));
            let x_4568 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4568.x, x_4568.x, x_4568.y, x_4568.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4571 : vec4<f32> = u_xlat13;
            let x_4573 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4571.x, x_4571.x, x_4571.z, x_4571.z) * vec4<f32>(x_4573.x, x_4573.x, x_4573.z, x_4573.z));
            let x_4576 : vec4<f32> = u_xlat14;
            let x_4578 : vec2<f32> = (vec2<f32>(x_4576.y, x_4576.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4579 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4579.x, x_4578.x, x_4579.z, x_4578.y);
            let x_4581 : vec4<f32> = u_xlat14;
            let x_4584 : vec2<f32> = u_xlat64;
            let x_4586 : vec2<f32> = ((vec2<f32>(x_4581.x, x_4581.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4584));
            let x_4587 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4586.x, x_4587.y, x_4586.y, x_4587.w);
            let x_4589 : vec2<f32> = u_xlat64;
            let x_4591 : vec2<f32> = (-(x_4589) + vec2<f32>(1.0f, 1.0f));
            let x_4592 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4591.x, x_4591.y, x_4592.z, x_4592.w);
            let x_4594 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_4594, vec2<f32>(0.0f, 0.0f));
            let x_4596 : vec2<f32> = u_xlat66;
            let x_4598 : vec2<f32> = u_xlat66;
            let x_4600 : vec4<f32> = u_xlat14;
            let x_4602 : vec2<f32> = ((-(x_4596) * x_4598) + vec2<f32>(x_4600.x, x_4600.y));
            let x_4603 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4602.x, x_4602.y, x_4603.z, x_4603.w);
            let x_4605 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_4605, vec2<f32>(0.0f, 0.0f));
            let x_4608 : vec2<f32> = u_xlat66;
            let x_4610 : vec2<f32> = u_xlat66;
            let x_4612 : vec4<f32> = u_xlat13;
            let x_4614 : vec2<f32> = ((-(x_4608) * x_4610) + vec2<f32>(x_4612.y, x_4612.w));
            let x_4615 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_4614.x, x_4615.y, x_4614.y);
            let x_4617 : vec4<f32> = u_xlat14;
            let x_4619 : vec2<f32> = (vec2<f32>(x_4617.x, x_4617.y) + vec2<f32>(2.0f, 2.0f));
            let x_4620 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4619.x, x_4619.y, x_4620.z, x_4620.w);
            let x_4622 : vec3<f32> = u_xlat39;
            let x_4624 : vec2<f32> = (vec2<f32>(x_4622.x, x_4622.z) + vec2<f32>(2.0f, 2.0f));
            let x_4625 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4625.x, x_4624.x, x_4625.z, x_4624.y);
            let x_4628 : f32 = u_xlat13.y;
            u_xlat16.z = (x_4628 * 0.08163200318813323975f);
            let x_4631 : vec4<f32> = u_xlat13;
            let x_4633 : vec3<f32> = (vec3<f32>(x_4631.z, x_4631.x, x_4631.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4634 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4633.x, x_4633.y, x_4633.z, x_4634.w);
            let x_4636 : vec4<f32> = u_xlat14;
            let x_4638 : vec2<f32> = (vec2<f32>(x_4636.x, x_4636.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4639 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4638.x, x_4638.y, x_4639.z, x_4639.w);
            let x_4642 : f32 = u_xlat17.y;
            u_xlat16.x = x_4642;
            let x_4644 : vec2<f32> = u_xlat64;
            let x_4647 : vec2<f32> = ((vec2<f32>(x_4644.x, x_4644.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4648 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4648.x, x_4647.x, x_4648.z, x_4647.y);
            let x_4650 : vec2<f32> = u_xlat64;
            let x_4653 : vec2<f32> = ((vec2<f32>(x_4650.x, x_4650.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4654 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4653.x, x_4654.y, x_4653.y, x_4654.w);
            let x_4657 : f32 = u_xlat13.x;
            u_xlat14.y = x_4657;
            let x_4660 : f32 = u_xlat15.y;
            u_xlat14.w = x_4660;
            let x_4662 : vec4<f32> = u_xlat14;
            let x_4663 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4662 + x_4663);
            let x_4665 : vec2<f32> = u_xlat64;
            let x_4668 : vec2<f32> = ((vec2<f32>(x_4665.y, x_4665.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4669 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4669.x, x_4668.x, x_4669.z, x_4668.y);
            let x_4671 : vec2<f32> = u_xlat64;
            let x_4674 : vec2<f32> = ((vec2<f32>(x_4671.y, x_4671.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4675 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4674.x, x_4675.y, x_4674.y, x_4675.w);
            let x_4678 : f32 = u_xlat13.y;
            u_xlat15.y = x_4678;
            let x_4680 : vec4<f32> = u_xlat15;
            let x_4681 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4680 + x_4681);
            let x_4683 : vec4<f32> = u_xlat14;
            let x_4684 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_4683 / x_4684);
            let x_4686 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4686 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4688 : vec4<f32> = u_xlat15;
            let x_4689 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_4688 / x_4689);
            let x_4691 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4691 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4693 : vec4<f32> = u_xlat14;
            let x_4696 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4693.w, x_4693.x, x_4693.y, x_4693.z) * vec4<f32>(x_4696.x, x_4696.x, x_4696.x, x_4696.x));
            let x_4699 : vec4<f32> = u_xlat15;
            let x_4702 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_4699.x, x_4699.w, x_4699.y, x_4699.z) * vec4<f32>(x_4702.y, x_4702.y, x_4702.y, x_4702.y));
            let x_4705 : vec4<f32> = u_xlat14;
            let x_4706 : vec3<f32> = vec3<f32>(x_4705.y, x_4705.z, x_4705.w);
            let x_4707 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4706.x, x_4707.y, x_4706.y, x_4706.z);
            let x_4710 : f32 = u_xlat15.x;
            u_xlat17.y = x_4710;
            let x_4712 : vec4<f32> = u_xlat12;
            let x_4715 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4718 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4712.x, x_4712.y, x_4712.x, x_4712.y) * vec4<f32>(x_4715.x, x_4715.y, x_4715.x, x_4715.y)) + vec4<f32>(x_4718.x, x_4718.y, x_4718.z, x_4718.y));
            let x_4721 : vec4<f32> = u_xlat12;
            let x_4724 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4727 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_4721.x, x_4721.y) * vec2<f32>(x_4724.x, x_4724.y)) + vec2<f32>(x_4727.w, x_4727.y));
            let x_4731 : f32 = u_xlat17.y;
            u_xlat14.y = x_4731;
            let x_4734 : f32 = u_xlat15.z;
            u_xlat17.y = x_4734;
            let x_4736 : vec4<f32> = u_xlat12;
            let x_4739 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4742 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_4736.x, x_4736.y, x_4736.x, x_4736.y) * vec4<f32>(x_4739.x, x_4739.y, x_4739.x, x_4739.y)) + vec4<f32>(x_4742.x, x_4742.y, x_4742.z, x_4742.y));
            let x_4745 : vec4<f32> = u_xlat12;
            let x_4748 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4751 : vec4<f32> = u_xlat17;
            let x_4753 : vec2<f32> = ((vec2<f32>(x_4745.x, x_4745.y) * vec2<f32>(x_4748.x, x_4748.y)) + vec2<f32>(x_4751.w, x_4751.y));
            let x_4754 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_4753.x, x_4753.y, x_4754.z, x_4754.w);
            let x_4757 : f32 = u_xlat17.y;
            u_xlat14.z = x_4757;
            let x_4759 : vec4<f32> = u_xlat12;
            let x_4762 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4765 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4759.x, x_4759.y, x_4759.x, x_4759.y) * vec4<f32>(x_4762.x, x_4762.y, x_4762.x, x_4762.y)) + vec4<f32>(x_4765.x, x_4765.y, x_4765.x, x_4765.z));
            let x_4769 : f32 = u_xlat15.w;
            u_xlat17.y = x_4769;
            let x_4772 : vec4<f32> = u_xlat12;
            let x_4775 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4778 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4772.x, x_4772.y, x_4772.x, x_4772.y) * vec4<f32>(x_4775.x, x_4775.y, x_4775.x, x_4775.y)) + vec4<f32>(x_4778.x, x_4778.y, x_4778.z, x_4778.y));
            let x_4782 : vec4<f32> = u_xlat12;
            let x_4785 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4788 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_4782.x, x_4782.y) * vec2<f32>(x_4785.x, x_4785.y)) + vec2<f32>(x_4788.w, x_4788.y));
            let x_4792 : f32 = u_xlat17.y;
            u_xlat14.w = x_4792;
            let x_4795 : vec4<f32> = u_xlat12;
            let x_4798 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4801 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4795.x, x_4795.y) * vec2<f32>(x_4798.x, x_4798.y)) + vec2<f32>(x_4801.x, x_4801.w));
            let x_4804 : vec4<f32> = u_xlat17;
            let x_4805 : vec3<f32> = vec3<f32>(x_4804.x, x_4804.z, x_4804.w);
            let x_4806 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4805.x, x_4806.y, x_4805.y, x_4805.z);
            let x_4808 : vec4<f32> = u_xlat12;
            let x_4811 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4814 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4808.x, x_4808.y, x_4808.x, x_4808.y) * vec4<f32>(x_4811.x, x_4811.y, x_4811.x, x_4811.y)) + vec4<f32>(x_4814.x, x_4814.y, x_4814.z, x_4814.y));
            let x_4818 : vec4<f32> = u_xlat12;
            let x_4821 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4824 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4818.x, x_4818.y) * vec2<f32>(x_4821.x, x_4821.y)) + vec2<f32>(x_4824.w, x_4824.y));
            let x_4828 : f32 = u_xlat14.x;
            u_xlat15.x = x_4828;
            let x_4830 : vec4<f32> = u_xlat12;
            let x_4833 : vec4<f32> = x_246.x_AdditionalShadowmapSize;
            let x_4836 : vec4<f32> = u_xlat15;
            let x_4838 : vec2<f32> = ((vec2<f32>(x_4830.x, x_4830.y) * vec2<f32>(x_4833.x, x_4833.y)) + vec2<f32>(x_4836.x, x_4836.y));
            let x_4839 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4838.x, x_4838.y, x_4839.z, x_4839.w);
            let x_4842 : vec4<f32> = u_xlat13;
            let x_4844 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4842.x, x_4842.x, x_4842.x, x_4842.x) * x_4844);
            let x_4847 : vec4<f32> = u_xlat13;
            let x_4849 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4847.y, x_4847.y, x_4847.y, x_4847.y) * x_4849);
            let x_4852 : vec4<f32> = u_xlat13;
            let x_4854 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4852.z, x_4852.z, x_4852.z, x_4852.z) * x_4854);
            let x_4856 : vec4<f32> = u_xlat13;
            let x_4858 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4856.w, x_4856.w, x_4856.w, x_4856.w) * x_4858);
            let x_4861 : vec4<f32> = u_xlat18;
            let x_4862 : vec2<f32> = vec2<f32>(x_4861.x, x_4861.y);
            let x_4864 : f32 = u_xlat11.z;
            txVec73 = vec3<f32>(x_4862.x, x_4862.y, x_4864);
            let x_4871 : vec3<f32> = txVec73;
            let x_4873 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4871.xy, x_4871.z);
            u_xlat88 = x_4873;
            let x_4875 : vec4<f32> = u_xlat18;
            let x_4876 : vec2<f32> = vec2<f32>(x_4875.z, x_4875.w);
            let x_4878 : f32 = u_xlat11.z;
            txVec74 = vec3<f32>(x_4876.x, x_4876.y, x_4878);
            let x_4885 : vec3<f32> = txVec74;
            let x_4887 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4885.xy, x_4885.z);
            u_xlat89 = x_4887;
            let x_4888 : f32 = u_xlat89;
            let x_4890 : f32 = u_xlat23.y;
            u_xlat89 = (x_4888 * x_4890);
            let x_4893 : f32 = u_xlat23.x;
            let x_4894 : f32 = u_xlat88;
            let x_4896 : f32 = u_xlat89;
            u_xlat88 = ((x_4893 * x_4894) + x_4896);
            let x_4899 : vec2<f32> = u_xlat64;
            let x_4901 : f32 = u_xlat11.z;
            txVec75 = vec3<f32>(x_4899.x, x_4899.y, x_4901);
            let x_4908 : vec3<f32> = txVec75;
            let x_4910 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4908.xy, x_4908.z);
            u_xlat89 = x_4910;
            let x_4912 : f32 = u_xlat23.z;
            let x_4913 : f32 = u_xlat89;
            let x_4915 : f32 = u_xlat88;
            u_xlat88 = ((x_4912 * x_4913) + x_4915);
            let x_4918 : vec4<f32> = u_xlat21;
            let x_4919 : vec2<f32> = vec2<f32>(x_4918.x, x_4918.y);
            let x_4921 : f32 = u_xlat11.z;
            txVec76 = vec3<f32>(x_4919.x, x_4919.y, x_4921);
            let x_4928 : vec3<f32> = txVec76;
            let x_4930 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4928.xy, x_4928.z);
            u_xlat89 = x_4930;
            let x_4932 : f32 = u_xlat23.w;
            let x_4933 : f32 = u_xlat89;
            let x_4935 : f32 = u_xlat88;
            u_xlat88 = ((x_4932 * x_4933) + x_4935);
            let x_4938 : vec4<f32> = u_xlat19;
            let x_4939 : vec2<f32> = vec2<f32>(x_4938.x, x_4938.y);
            let x_4941 : f32 = u_xlat11.z;
            txVec77 = vec3<f32>(x_4939.x, x_4939.y, x_4941);
            let x_4948 : vec3<f32> = txVec77;
            let x_4950 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4948.xy, x_4948.z);
            u_xlat89 = x_4950;
            let x_4952 : f32 = u_xlat24.x;
            let x_4953 : f32 = u_xlat89;
            let x_4955 : f32 = u_xlat88;
            u_xlat88 = ((x_4952 * x_4953) + x_4955);
            let x_4958 : vec4<f32> = u_xlat19;
            let x_4959 : vec2<f32> = vec2<f32>(x_4958.z, x_4958.w);
            let x_4961 : f32 = u_xlat11.z;
            txVec78 = vec3<f32>(x_4959.x, x_4959.y, x_4961);
            let x_4968 : vec3<f32> = txVec78;
            let x_4970 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4968.xy, x_4968.z);
            u_xlat89 = x_4970;
            let x_4972 : f32 = u_xlat24.y;
            let x_4973 : f32 = u_xlat89;
            let x_4975 : f32 = u_xlat88;
            u_xlat88 = ((x_4972 * x_4973) + x_4975);
            let x_4978 : vec4<f32> = u_xlat20;
            let x_4979 : vec2<f32> = vec2<f32>(x_4978.x, x_4978.y);
            let x_4981 : f32 = u_xlat11.z;
            txVec79 = vec3<f32>(x_4979.x, x_4979.y, x_4981);
            let x_4988 : vec3<f32> = txVec79;
            let x_4990 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4988.xy, x_4988.z);
            u_xlat89 = x_4990;
            let x_4992 : f32 = u_xlat24.z;
            let x_4993 : f32 = u_xlat89;
            let x_4995 : f32 = u_xlat88;
            u_xlat88 = ((x_4992 * x_4993) + x_4995);
            let x_4998 : vec4<f32> = u_xlat21;
            let x_4999 : vec2<f32> = vec2<f32>(x_4998.z, x_4998.w);
            let x_5001 : f32 = u_xlat11.z;
            txVec80 = vec3<f32>(x_4999.x, x_4999.y, x_5001);
            let x_5008 : vec3<f32> = txVec80;
            let x_5010 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5008.xy, x_5008.z);
            u_xlat89 = x_5010;
            let x_5012 : f32 = u_xlat24.w;
            let x_5013 : f32 = u_xlat89;
            let x_5015 : f32 = u_xlat88;
            u_xlat88 = ((x_5012 * x_5013) + x_5015);
            let x_5018 : vec4<f32> = u_xlat22;
            let x_5019 : vec2<f32> = vec2<f32>(x_5018.x, x_5018.y);
            let x_5021 : f32 = u_xlat11.z;
            txVec81 = vec3<f32>(x_5019.x, x_5019.y, x_5021);
            let x_5028 : vec3<f32> = txVec81;
            let x_5030 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5028.xy, x_5028.z);
            u_xlat89 = x_5030;
            let x_5032 : f32 = u_xlat25.x;
            let x_5033 : f32 = u_xlat89;
            let x_5035 : f32 = u_xlat88;
            u_xlat88 = ((x_5032 * x_5033) + x_5035);
            let x_5038 : vec4<f32> = u_xlat22;
            let x_5039 : vec2<f32> = vec2<f32>(x_5038.z, x_5038.w);
            let x_5041 : f32 = u_xlat11.z;
            txVec82 = vec3<f32>(x_5039.x, x_5039.y, x_5041);
            let x_5048 : vec3<f32> = txVec82;
            let x_5050 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5048.xy, x_5048.z);
            u_xlat89 = x_5050;
            let x_5052 : f32 = u_xlat25.y;
            let x_5053 : f32 = u_xlat89;
            let x_5055 : f32 = u_xlat88;
            u_xlat88 = ((x_5052 * x_5053) + x_5055);
            let x_5058 : vec2<f32> = u_xlat40;
            let x_5060 : f32 = u_xlat11.z;
            txVec83 = vec3<f32>(x_5058.x, x_5058.y, x_5060);
            let x_5067 : vec3<f32> = txVec83;
            let x_5069 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5067.xy, x_5067.z);
            u_xlat89 = x_5069;
            let x_5071 : f32 = u_xlat25.z;
            let x_5072 : f32 = u_xlat89;
            let x_5074 : f32 = u_xlat88;
            u_xlat88 = ((x_5071 * x_5072) + x_5074);
            let x_5077 : vec2<f32> = u_xlat72;
            let x_5079 : f32 = u_xlat11.z;
            txVec84 = vec3<f32>(x_5077.x, x_5077.y, x_5079);
            let x_5086 : vec3<f32> = txVec84;
            let x_5088 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5086.xy, x_5086.z);
            u_xlat89 = x_5088;
            let x_5090 : f32 = u_xlat25.w;
            let x_5091 : f32 = u_xlat89;
            let x_5093 : f32 = u_xlat88;
            u_xlat88 = ((x_5090 * x_5091) + x_5093);
            let x_5096 : vec4<f32> = u_xlat17;
            let x_5097 : vec2<f32> = vec2<f32>(x_5096.x, x_5096.y);
            let x_5099 : f32 = u_xlat11.z;
            txVec85 = vec3<f32>(x_5097.x, x_5097.y, x_5099);
            let x_5106 : vec3<f32> = txVec85;
            let x_5108 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5106.xy, x_5106.z);
            u_xlat89 = x_5108;
            let x_5110 : f32 = u_xlat13.x;
            let x_5111 : f32 = u_xlat89;
            let x_5113 : f32 = u_xlat88;
            u_xlat88 = ((x_5110 * x_5111) + x_5113);
            let x_5116 : vec4<f32> = u_xlat17;
            let x_5117 : vec2<f32> = vec2<f32>(x_5116.z, x_5116.w);
            let x_5119 : f32 = u_xlat11.z;
            txVec86 = vec3<f32>(x_5117.x, x_5117.y, x_5119);
            let x_5126 : vec3<f32> = txVec86;
            let x_5128 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5126.xy, x_5126.z);
            u_xlat89 = x_5128;
            let x_5130 : f32 = u_xlat13.y;
            let x_5131 : f32 = u_xlat89;
            let x_5133 : f32 = u_xlat88;
            u_xlat88 = ((x_5130 * x_5131) + x_5133);
            let x_5136 : vec2<f32> = u_xlat67;
            let x_5138 : f32 = u_xlat11.z;
            txVec87 = vec3<f32>(x_5136.x, x_5136.y, x_5138);
            let x_5145 : vec3<f32> = txVec87;
            let x_5147 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5145.xy, x_5145.z);
            u_xlat89 = x_5147;
            let x_5149 : f32 = u_xlat13.z;
            let x_5150 : f32 = u_xlat89;
            let x_5152 : f32 = u_xlat88;
            u_xlat88 = ((x_5149 * x_5150) + x_5152);
            let x_5155 : vec4<f32> = u_xlat12;
            let x_5156 : vec2<f32> = vec2<f32>(x_5155.x, x_5155.y);
            let x_5158 : f32 = u_xlat11.z;
            txVec88 = vec3<f32>(x_5156.x, x_5156.y, x_5158);
            let x_5165 : vec3<f32> = txVec88;
            let x_5167 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5165.xy, x_5165.z);
            u_xlat89 = x_5167;
            let x_5169 : f32 = u_xlat13.w;
            let x_5170 : f32 = u_xlat89;
            let x_5172 : f32 = u_xlat88;
            u_xlat87 = ((x_5169 * x_5170) + x_5172);
          }
        }
      } else {
        let x_5176 : vec4<f32> = u_xlat11;
        let x_5177 : vec2<f32> = vec2<f32>(x_5176.x, x_5176.y);
        let x_5179 : f32 = u_xlat11.z;
        txVec89 = vec3<f32>(x_5177.x, x_5177.y, x_5179);
        let x_5186 : vec3<f32> = txVec89;
        let x_5188 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5186.xy, x_5186.z);
        u_xlat87 = x_5188;
      }
      let x_5189 : i32 = u_xlati84;
      let x_5191 : f32 = x_246.x_AdditionalShadowParams[x_5189].x;
      u_xlat88 = (1.0f + -(x_5191));
      let x_5194 : f32 = u_xlat87;
      let x_5195 : i32 = u_xlati84;
      let x_5197 : f32 = x_246.x_AdditionalShadowParams[x_5195].x;
      let x_5199 : f32 = u_xlat88;
      u_xlat87 = ((x_5194 * x_5197) + x_5199);
      let x_5202 : f32 = u_xlat11.z;
      u_xlatb88 = (0.0f >= x_5202);
      let x_5205 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_5205 >= 1.0f);
      let x_5208 : bool = u_xlatb88;
      let x_5210 : bool = u_xlatb11.x;
      u_xlatb88 = (x_5208 | x_5210);
      let x_5212 : bool = u_xlatb88;
      let x_5213 : f32 = u_xlat87;
      u_xlat87 = select(x_5213, 1.0f, x_5212);
    } else {
      u_xlat87 = 1.0f;
    }
    let x_5216 : f32 = u_xlat87;
    u_xlat88 = (-(x_5216) + 1.0f);
    let x_5220 : f32 = u_xlat2.x;
    let x_5221 : f32 = u_xlat88;
    let x_5223 : f32 = u_xlat87;
    u_xlat87 = ((x_5220 * x_5221) + x_5223);
    let x_5226 : i32 = u_xlati84;
    u_xlati88 = (1i << bitcast<u32>((x_5226 & 31i)));
    let x_5230 : i32 = u_xlati88;
    let x_5233 : f32 = x_3294.x_AdditionalLightsCookieEnableBits;
    u_xlati88 = bitcast<i32>((bitcast<u32>(x_5230) & bitcast<u32>(x_5233)));
    let x_5237 : i32 = u_xlati88;
    if ((x_5237 != 0i)) {
      let x_5241 : i32 = u_xlati84;
      let x_5243 : f32 = x_3294.x_AdditionalLightsLightTypes[x_5241].el;
      u_xlati88 = i32(x_5243);
      let x_5246 : i32 = u_xlati88;
      u_xlati11 = select(1i, 0i, (x_5246 != 0i));
      let x_5250 : i32 = u_xlati84;
      u_xlati37 = (x_5250 << bitcast<u32>(2i));
      let x_5252 : i32 = u_xlati11;
      if ((x_5252 != 0i)) {
        let x_5256 : vec3<f32> = vs_INTERP8;
        let x_5258 : i32 = u_xlati37;
        let x_5261 : i32 = u_xlati37;
        let x_5265 : vec4<f32> = x_3294.x_AdditionalLightsWorldToLights[((x_5258 + 1i) / 4i)][((x_5261 + 1i) % 4i)];
        let x_5267 : vec3<f32> = (vec3<f32>(x_5256.y, x_5256.y, x_5256.y) * vec3<f32>(x_5265.x, x_5265.y, x_5265.w));
        let x_5268 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5267.x, x_5268.y, x_5267.y, x_5267.z);
        let x_5270 : i32 = u_xlati37;
        let x_5272 : i32 = u_xlati37;
        let x_5275 : vec4<f32> = x_3294.x_AdditionalLightsWorldToLights[(x_5270 / 4i)][(x_5272 % 4i)];
        let x_5277 : vec3<f32> = vs_INTERP8;
        let x_5280 : vec4<f32> = u_xlat11;
        let x_5282 : vec3<f32> = ((vec3<f32>(x_5275.x, x_5275.y, x_5275.w) * vec3<f32>(x_5277.x, x_5277.x, x_5277.x)) + vec3<f32>(x_5280.x, x_5280.z, x_5280.w));
        let x_5283 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5282.x, x_5283.y, x_5282.y, x_5282.z);
        let x_5285 : i32 = u_xlati37;
        let x_5288 : i32 = u_xlati37;
        let x_5292 : vec4<f32> = x_3294.x_AdditionalLightsWorldToLights[((x_5285 + 2i) / 4i)][((x_5288 + 2i) % 4i)];
        let x_5294 : vec3<f32> = vs_INTERP8;
        let x_5297 : vec4<f32> = u_xlat11;
        let x_5299 : vec3<f32> = ((vec3<f32>(x_5292.x, x_5292.y, x_5292.w) * vec3<f32>(x_5294.z, x_5294.z, x_5294.z)) + vec3<f32>(x_5297.x, x_5297.z, x_5297.w));
        let x_5300 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5299.x, x_5300.y, x_5299.y, x_5299.z);
        let x_5302 : vec4<f32> = u_xlat11;
        let x_5304 : i32 = u_xlati37;
        let x_5307 : i32 = u_xlati37;
        let x_5311 : vec4<f32> = x_3294.x_AdditionalLightsWorldToLights[((x_5304 + 3i) / 4i)][((x_5307 + 3i) % 4i)];
        let x_5313 : vec3<f32> = (vec3<f32>(x_5302.x, x_5302.z, x_5302.w) + vec3<f32>(x_5311.x, x_5311.y, x_5311.w));
        let x_5314 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5313.x, x_5314.y, x_5313.y, x_5313.z);
        let x_5316 : vec4<f32> = u_xlat11;
        let x_5318 : vec4<f32> = u_xlat11;
        let x_5320 : vec2<f32> = (vec2<f32>(x_5316.x, x_5316.z) / vec2<f32>(x_5318.w, x_5318.w));
        let x_5321 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5320.x, x_5321.y, x_5320.y, x_5321.w);
        let x_5323 : vec4<f32> = u_xlat11;
        let x_5326 : vec2<f32> = ((vec2<f32>(x_5323.x, x_5323.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_5327 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5326.x, x_5327.y, x_5326.y, x_5327.w);
        let x_5329 : vec4<f32> = u_xlat11;
        let x_5333 : vec2<f32> = clamp(vec2<f32>(x_5329.x, x_5329.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_5334 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5333.x, x_5334.y, x_5333.y, x_5334.w);
        let x_5336 : i32 = u_xlati84;
        let x_5338 : vec4<f32> = x_3294.x_AdditionalLightsCookieAtlasUVRects[x_5336];
        let x_5340 : vec4<f32> = u_xlat11;
        let x_5343 : i32 = u_xlati84;
        let x_5345 : vec4<f32> = x_3294.x_AdditionalLightsCookieAtlasUVRects[x_5343];
        let x_5347 : vec2<f32> = ((vec2<f32>(x_5338.x, x_5338.y) * vec2<f32>(x_5340.x, x_5340.z)) + vec2<f32>(x_5345.z, x_5345.w));
        let x_5348 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5347.x, x_5348.y, x_5347.y, x_5348.w);
      } else {
        let x_5351 : i32 = u_xlati88;
        u_xlatb88 = (x_5351 == 1i);
        let x_5353 : bool = u_xlatb88;
        u_xlati88 = select(0i, 1i, x_5353);
        let x_5355 : i32 = u_xlati88;
        if ((x_5355 != 0i)) {
          let x_5359 : vec3<f32> = vs_INTERP8;
          let x_5361 : i32 = u_xlati37;
          let x_5364 : i32 = u_xlati37;
          let x_5368 : vec4<f32> = x_3294.x_AdditionalLightsWorldToLights[((x_5361 + 1i) / 4i)][((x_5364 + 1i) % 4i)];
          let x_5370 : vec2<f32> = (vec2<f32>(x_5359.y, x_5359.y) * vec2<f32>(x_5368.x, x_5368.y));
          let x_5371 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5370.x, x_5370.y, x_5371.z, x_5371.w);
          let x_5373 : i32 = u_xlati37;
          let x_5375 : i32 = u_xlati37;
          let x_5378 : vec4<f32> = x_3294.x_AdditionalLightsWorldToLights[(x_5373 / 4i)][(x_5375 % 4i)];
          let x_5380 : vec3<f32> = vs_INTERP8;
          let x_5383 : vec4<f32> = u_xlat12;
          let x_5385 : vec2<f32> = ((vec2<f32>(x_5378.x, x_5378.y) * vec2<f32>(x_5380.x, x_5380.x)) + vec2<f32>(x_5383.x, x_5383.y));
          let x_5386 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5385.x, x_5385.y, x_5386.z, x_5386.w);
          let x_5388 : i32 = u_xlati37;
          let x_5391 : i32 = u_xlati37;
          let x_5395 : vec4<f32> = x_3294.x_AdditionalLightsWorldToLights[((x_5388 + 2i) / 4i)][((x_5391 + 2i) % 4i)];
          let x_5397 : vec3<f32> = vs_INTERP8;
          let x_5400 : vec4<f32> = u_xlat12;
          let x_5402 : vec2<f32> = ((vec2<f32>(x_5395.x, x_5395.y) * vec2<f32>(x_5397.z, x_5397.z)) + vec2<f32>(x_5400.x, x_5400.y));
          let x_5403 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5402.x, x_5402.y, x_5403.z, x_5403.w);
          let x_5405 : vec4<f32> = u_xlat12;
          let x_5407 : i32 = u_xlati37;
          let x_5410 : i32 = u_xlati37;
          let x_5414 : vec4<f32> = x_3294.x_AdditionalLightsWorldToLights[((x_5407 + 3i) / 4i)][((x_5410 + 3i) % 4i)];
          let x_5416 : vec2<f32> = (vec2<f32>(x_5405.x, x_5405.y) + vec2<f32>(x_5414.x, x_5414.y));
          let x_5417 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5416.x, x_5416.y, x_5417.z, x_5417.w);
          let x_5419 : vec4<f32> = u_xlat12;
          let x_5422 : vec2<f32> = ((vec2<f32>(x_5419.x, x_5419.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5423 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5422.x, x_5422.y, x_5423.z, x_5423.w);
          let x_5425 : vec4<f32> = u_xlat12;
          let x_5427 : vec2<f32> = fract(vec2<f32>(x_5425.x, x_5425.y));
          let x_5428 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5427.x, x_5427.y, x_5428.z, x_5428.w);
          let x_5430 : i32 = u_xlati84;
          let x_5432 : vec4<f32> = x_3294.x_AdditionalLightsCookieAtlasUVRects[x_5430];
          let x_5434 : vec4<f32> = u_xlat12;
          let x_5437 : i32 = u_xlati84;
          let x_5439 : vec4<f32> = x_3294.x_AdditionalLightsCookieAtlasUVRects[x_5437];
          let x_5441 : vec2<f32> = ((vec2<f32>(x_5432.x, x_5432.y) * vec2<f32>(x_5434.x, x_5434.y)) + vec2<f32>(x_5439.z, x_5439.w));
          let x_5442 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5441.x, x_5442.y, x_5441.y, x_5442.w);
        } else {
          let x_5445 : vec3<f32> = vs_INTERP8;
          let x_5447 : i32 = u_xlati37;
          let x_5450 : i32 = u_xlati37;
          let x_5454 : vec4<f32> = x_3294.x_AdditionalLightsWorldToLights[((x_5447 + 1i) / 4i)][((x_5450 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_5445.y, x_5445.y, x_5445.y, x_5445.y) * x_5454);
          let x_5456 : i32 = u_xlati37;
          let x_5458 : i32 = u_xlati37;
          let x_5461 : vec4<f32> = x_3294.x_AdditionalLightsWorldToLights[(x_5456 / 4i)][(x_5458 % 4i)];
          let x_5462 : vec3<f32> = vs_INTERP8;
          let x_5465 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5461 * vec4<f32>(x_5462.x, x_5462.x, x_5462.x, x_5462.x)) + x_5465);
          let x_5467 : i32 = u_xlati37;
          let x_5470 : i32 = u_xlati37;
          let x_5474 : vec4<f32> = x_3294.x_AdditionalLightsWorldToLights[((x_5467 + 2i) / 4i)][((x_5470 + 2i) % 4i)];
          let x_5475 : vec3<f32> = vs_INTERP8;
          let x_5478 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5474 * vec4<f32>(x_5475.z, x_5475.z, x_5475.z, x_5475.z)) + x_5478);
          let x_5480 : vec4<f32> = u_xlat12;
          let x_5481 : i32 = u_xlati37;
          let x_5484 : i32 = u_xlati37;
          let x_5488 : vec4<f32> = x_3294.x_AdditionalLightsWorldToLights[((x_5481 + 3i) / 4i)][((x_5484 + 3i) % 4i)];
          u_xlat12 = (x_5480 + x_5488);
          let x_5490 : vec4<f32> = u_xlat12;
          let x_5492 : vec4<f32> = u_xlat12;
          let x_5494 : vec3<f32> = (vec3<f32>(x_5490.x, x_5490.y, x_5490.z) / vec3<f32>(x_5492.w, x_5492.w, x_5492.w));
          let x_5495 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5494.x, x_5494.y, x_5494.z, x_5495.w);
          let x_5497 : vec4<f32> = u_xlat12;
          let x_5499 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(vec3<f32>(x_5497.x, x_5497.y, x_5497.z), vec3<f32>(x_5499.x, x_5499.y, x_5499.z));
          let x_5502 : f32 = u_xlat88;
          u_xlat88 = inverseSqrt(x_5502);
          let x_5504 : f32 = u_xlat88;
          let x_5506 : vec4<f32> = u_xlat12;
          let x_5508 : vec3<f32> = (vec3<f32>(x_5504, x_5504, x_5504) * vec3<f32>(x_5506.x, x_5506.y, x_5506.z));
          let x_5509 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5508.x, x_5508.y, x_5508.z, x_5509.w);
          let x_5511 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(abs(vec3<f32>(x_5511.x, x_5511.y, x_5511.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_5516 : f32 = u_xlat88;
          u_xlat88 = max(x_5516, 0.00000099999999747524f);
          let x_5519 : f32 = u_xlat88;
          u_xlat88 = (1.0f / x_5519);
          let x_5521 : f32 = u_xlat88;
          let x_5523 : vec4<f32> = u_xlat12;
          let x_5525 : vec3<f32> = (vec3<f32>(x_5521, x_5521, x_5521) * vec3<f32>(x_5523.z, x_5523.x, x_5523.y));
          let x_5526 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_5525.x, x_5525.y, x_5525.z, x_5526.w);
          let x_5529 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_5529);
          let x_5533 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_5533, 0.0f, 1.0f);
          let x_5538 : vec4<f32> = u_xlat13;
          let x_5540 : vec4<bool> = (vec4<f32>(x_5538.y, x_5538.y, x_5538.z, x_5538.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_5541 : vec2<bool> = vec2<bool>(x_5540.x, x_5540.z);
          let x_5542 : vec3<bool> = u_xlatb37;
          u_xlatb37 = vec3<bool>(x_5541.x, x_5542.y, x_5541.y);
          let x_5545 : bool = u_xlatb37.x;
          if (x_5545) {
            let x_5550 : f32 = u_xlat13.x;
            x_5546 = x_5550;
          } else {
            let x_5553 : f32 = u_xlat13.x;
            x_5546 = -(x_5553);
          }
          let x_5555 : f32 = x_5546;
          u_xlat37.x = x_5555;
          let x_5558 : bool = u_xlatb37.z;
          if (x_5558) {
            let x_5563 : f32 = u_xlat13.x;
            x_5559 = x_5563;
          } else {
            let x_5566 : f32 = u_xlat13.x;
            x_5559 = -(x_5566);
          }
          let x_5568 : f32 = x_5559;
          u_xlat37.z = x_5568;
          let x_5570 : vec4<f32> = u_xlat12;
          let x_5572 : f32 = u_xlat88;
          let x_5575 : vec3<f32> = u_xlat37;
          let x_5577 : vec2<f32> = ((vec2<f32>(x_5570.x, x_5570.y) * vec2<f32>(x_5572, x_5572)) + vec2<f32>(x_5575.x, x_5575.z));
          let x_5578 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5577.x, x_5578.y, x_5577.y);
          let x_5580 : vec3<f32> = u_xlat37;
          let x_5583 : vec2<f32> = ((vec2<f32>(x_5580.x, x_5580.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5584 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5583.x, x_5584.y, x_5583.y);
          let x_5586 : vec3<f32> = u_xlat37;
          let x_5590 : vec2<f32> = clamp(vec2<f32>(x_5586.x, x_5586.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_5591 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5590.x, x_5591.y, x_5590.y);
          let x_5593 : i32 = u_xlati84;
          let x_5595 : vec4<f32> = x_3294.x_AdditionalLightsCookieAtlasUVRects[x_5593];
          let x_5597 : vec3<f32> = u_xlat37;
          let x_5600 : i32 = u_xlati84;
          let x_5602 : vec4<f32> = x_3294.x_AdditionalLightsCookieAtlasUVRects[x_5600];
          let x_5604 : vec2<f32> = ((vec2<f32>(x_5595.x, x_5595.y) * vec2<f32>(x_5597.x, x_5597.z)) + vec2<f32>(x_5602.z, x_5602.w));
          let x_5605 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5604.x, x_5605.y, x_5604.y, x_5605.w);
        }
      }
      let x_5612 : vec4<f32> = u_xlat11;
      let x_5614 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_5612.x, x_5612.z), 0.0f);
      u_xlat11 = x_5614;
      let x_5616 : bool = u_xlatb3.w;
      if (x_5616) {
        let x_5621 : f32 = u_xlat11.w;
        x_5617 = x_5621;
      } else {
        let x_5624 : f32 = u_xlat11.x;
        x_5617 = x_5624;
      }
      let x_5625 : f32 = x_5617;
      u_xlat88 = x_5625;
      let x_5627 : bool = u_xlatb3.x;
      if (x_5627) {
        let x_5631 : vec4<f32> = u_xlat11;
        x_5628 = vec3<f32>(x_5631.x, x_5631.y, x_5631.z);
      } else {
        let x_5634 : f32 = u_xlat88;
        x_5628 = vec3<f32>(x_5634, x_5634, x_5634);
      }
      let x_5636 : vec3<f32> = x_5628;
      let x_5637 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_5636.x, x_5636.y, x_5636.z, x_5637.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_5643 : vec4<f32> = u_xlat11;
    let x_5645 : i32 = u_xlati84;
    let x_5647 : vec4<f32> = x_3783.x_AdditionalLightsColor[x_5645];
    let x_5649 : vec3<f32> = (vec3<f32>(x_5643.x, x_5643.y, x_5643.z) * vec3<f32>(x_5647.x, x_5647.y, x_5647.z));
    let x_5650 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5649.x, x_5649.y, x_5649.z, x_5650.w);
    let x_5652 : f32 = u_xlat85;
    let x_5653 : f32 = u_xlat87;
    u_xlat84 = (x_5652 * x_5653);
    let x_5655 : vec3<f32> = u_xlat26;
    let x_5656 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(x_5655, vec3<f32>(x_5656.x, x_5656.y, x_5656.z));
    let x_5659 : f32 = u_xlat85;
    u_xlat85 = clamp(x_5659, 0.0f, 1.0f);
    let x_5661 : f32 = u_xlat84;
    let x_5662 : f32 = u_xlat85;
    u_xlat84 = (x_5661 * x_5662);
    let x_5664 : f32 = u_xlat84;
    let x_5666 : vec4<f32> = u_xlat11;
    let x_5668 : vec3<f32> = (vec3<f32>(x_5664, x_5664, x_5664) * vec3<f32>(x_5666.x, x_5666.y, x_5666.z));
    let x_5669 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5668.x, x_5668.y, x_5668.z, x_5669.w);
    let x_5671 : vec4<f32> = u_xlat9;
    let x_5673 : f32 = u_xlat86;
    let x_5676 : vec4<f32> = u_xlat4;
    let x_5678 : vec3<f32> = ((vec3<f32>(x_5671.x, x_5671.y, x_5671.z) * vec3<f32>(x_5673, x_5673, x_5673)) + vec3<f32>(x_5676.x, x_5676.y, x_5676.z));
    let x_5679 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5678.x, x_5678.y, x_5678.z, x_5679.w);
    let x_5681 : vec4<f32> = u_xlat9;
    let x_5683 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_5681.x, x_5681.y, x_5681.z), vec3<f32>(x_5683.x, x_5683.y, x_5683.z));
    let x_5686 : f32 = u_xlat84;
    u_xlat84 = max(x_5686, 1.17549435e-38f);
    let x_5688 : f32 = u_xlat84;
    u_xlat84 = inverseSqrt(x_5688);
    let x_5690 : f32 = u_xlat84;
    let x_5692 : vec4<f32> = u_xlat9;
    let x_5694 : vec3<f32> = (vec3<f32>(x_5690, x_5690, x_5690) * vec3<f32>(x_5692.x, x_5692.y, x_5692.z));
    let x_5695 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5694.x, x_5694.y, x_5694.z, x_5695.w);
    let x_5697 : vec3<f32> = u_xlat26;
    let x_5698 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(x_5697, vec3<f32>(x_5698.x, x_5698.y, x_5698.z));
    let x_5701 : f32 = u_xlat84;
    u_xlat84 = clamp(x_5701, 0.0f, 1.0f);
    let x_5703 : vec4<f32> = u_xlat10;
    let x_5705 : vec4<f32> = u_xlat9;
    u_xlat85 = dot(vec3<f32>(x_5703.x, x_5703.y, x_5703.z), vec3<f32>(x_5705.x, x_5705.y, x_5705.z));
    let x_5708 : f32 = u_xlat85;
    u_xlat85 = clamp(x_5708, 0.0f, 1.0f);
    let x_5710 : f32 = u_xlat84;
    let x_5711 : f32 = u_xlat84;
    u_xlat84 = (x_5710 * x_5711);
    let x_5713 : f32 = u_xlat84;
    let x_5715 : f32 = u_xlat59.x;
    u_xlat84 = ((x_5713 * x_5715) + 1.00001001358032226562f);
    let x_5718 : f32 = u_xlat85;
    let x_5719 : f32 = u_xlat85;
    u_xlat85 = (x_5718 * x_5719);
    let x_5721 : f32 = u_xlat84;
    let x_5722 : f32 = u_xlat84;
    u_xlat84 = (x_5721 * x_5722);
    let x_5724 : f32 = u_xlat85;
    u_xlat85 = max(x_5724, 0.10000000149011611938f);
    let x_5726 : f32 = u_xlat84;
    let x_5727 : f32 = u_xlat85;
    u_xlat84 = (x_5726 * x_5727);
    let x_5730 : f32 = u_xlat7.x;
    let x_5731 : f32 = u_xlat84;
    u_xlat84 = (x_5730 * x_5731);
    let x_5733 : f32 = u_xlat83;
    let x_5734 : f32 = u_xlat84;
    u_xlat84 = (x_5733 / x_5734);
    let x_5736 : f32 = u_xlat84;
    let x_5739 : vec3<f32> = u_xlat5;
    let x_5740 : vec3<f32> = ((vec3<f32>(x_5736, x_5736, x_5736) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5739);
    let x_5741 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5740.x, x_5740.y, x_5740.z, x_5741.w);
    let x_5743 : vec4<f32> = u_xlat9;
    let x_5745 : vec4<f32> = u_xlat11;
    let x_5748 : vec4<f32> = u_xlat8;
    let x_5750 : vec3<f32> = ((vec3<f32>(x_5743.x, x_5743.y, x_5743.z) * vec3<f32>(x_5745.x, x_5745.y, x_5745.z)) + vec3<f32>(x_5748.x, x_5748.y, x_5748.z));
    let x_5751 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5750.x, x_5750.y, x_5750.z, x_5751.w);

    continuing {
      let x_5753 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5753 + bitcast<u32>(1i));
    }
  }
  let x_5755 : vec4<f32> = u_xlat6;
  let x_5757 : vec3<f32> = u_xlat33;
  let x_5760 : vec3<f32> = u_xlat28;
  u_xlat0 = ((vec3<f32>(x_5755.x, x_5755.y, x_5755.z) * vec3<f32>(x_5757.x, x_5757.x, x_5757.x)) + x_5760);
  let x_5762 : vec4<f32> = u_xlat8;
  let x_5764 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_5762.x, x_5762.y, x_5762.z) + x_5764);
  let x_5766 : vec4<f32> = vs_INTERP6;
  let x_5768 : vec3<f32> = u_xlat1;
  let x_5770 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_5766.w, x_5766.w, x_5766.w) * x_5768) + x_5770);
  let x_5773 : f32 = u_xlat29;
  let x_5774 : f32 = u_xlat29;
  u_xlat78 = (x_5773 * -(x_5774));
  let x_5777 : f32 = u_xlat78;
  u_xlat78 = exp2(x_5777);
  let x_5779 : vec3<f32> = u_xlat0;
  let x_5781 : vec4<f32> = x_128.unity_FogColor;
  u_xlat0 = (x_5779 + -(vec3<f32>(x_5781.x, x_5781.y, x_5781.z)));
  let x_5787 : f32 = u_xlat78;
  let x_5789 : vec3<f32> = u_xlat0;
  let x_5792 : vec4<f32> = x_128.unity_FogColor;
  let x_5794 : vec3<f32> = ((vec3<f32>(x_5787, x_5787, x_5787) * x_5789) + vec3<f32>(x_5792.x, x_5792.y, x_5792.z));
  let x_5795 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5794.x, x_5794.y, x_5794.z, x_5795.w);
  let x_5797 : bool = u_xlatb55;
  let x_5798 : f32 = u_xlat79;
  SV_Target0.w = select(1.0f, x_5798, x_5797);
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


