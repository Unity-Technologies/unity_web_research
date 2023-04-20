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

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

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

@group(1) @binding(4) var<uniform> x_3266 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb8 : vec2<bool>;

var<private> u_xlatu3 : u32;

var<private> u_xlati4 : i32;

var<private> u_xlati3 : i32;

@group(1) @binding(1) var<uniform> x_3705 : AdditionalLights;

var<private> u_xlati88 : i32;

var<private> u_xlatb62 : bool;

var<private> u_xlatb12 : vec4<bool>;

var<private> u_xlat89 : f32;

var<private> u_xlatb88 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_LinearClamp : sampler;

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
  var x_1842 : vec3<f32>;
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
  var x_3348 : f32;
  var x_3359 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3859 : f32;
  var x_3868 : f32;
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
  var x_5458 : f32;
  var x_5471 : f32;
  var x_5519 : f32;
  var x_5531 : vec3<f32>;
  var x_5740 : f32;
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
  u_xlat30 = (vec3<f32>(x_1807.x, x_1807.x, x_1807.x) * x_1809);
  let x_1812 : f32 = x_53.unity_OrthoParams.w;
  u_xlatb28.x = (x_1812 == 0.0f);
  let x_1815 : vec3<f32> = vs_INTERP8;
  let x_1819 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  u_xlat32 = (-(x_1815) + x_1819);
  let x_1821 : vec3<f32> = u_xlat32;
  let x_1822 : vec3<f32> = u_xlat32;
  u_xlat82 = dot(x_1821, x_1822);
  let x_1824 : f32 = u_xlat82;
  u_xlat82 = inverseSqrt(x_1824);
  let x_1826 : f32 = u_xlat82;
  let x_1828 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1826, x_1826, x_1826) * x_1828);
  let x_1832 : f32 = x_53.unity_MatrixV[0i].z;
  u_xlat6.x = x_1832;
  let x_1835 : f32 = x_53.unity_MatrixV[1i].z;
  u_xlat6.y = x_1835;
  let x_1838 : f32 = x_53.unity_MatrixV[2i].z;
  u_xlat6.z = x_1838;
  let x_1841 : bool = u_xlatb28.x;
  if (x_1841) {
    let x_1845 : vec3<f32> = u_xlat32;
    x_1842 = x_1845;
  } else {
    let x_1847 : vec4<f32> = u_xlat6;
    x_1842 = vec3<f32>(x_1847.x, x_1847.y, x_1847.z);
  }
  let x_1849 : vec3<f32> = x_1842;
  u_xlat32 = x_1849;
  let x_1851 : f32 = vs_INTERP8.y;
  let x_1853 : f32 = x_53.unity_MatrixV[1i].z;
  u_xlat28.x = (x_1851 * x_1853);
  let x_1857 : f32 = x_53.unity_MatrixV[0i].z;
  let x_1859 : f32 = vs_INTERP8.x;
  let x_1862 : f32 = u_xlat28.x;
  u_xlat28.x = ((x_1857 * x_1859) + x_1862);
  let x_1866 : f32 = x_53.unity_MatrixV[2i].z;
  let x_1868 : f32 = vs_INTERP8.z;
  let x_1871 : f32 = u_xlat28.x;
  u_xlat28.x = ((x_1866 * x_1868) + x_1871);
  let x_1875 : f32 = u_xlat28.x;
  let x_1877 : f32 = x_53.unity_MatrixV[3i].z;
  u_xlat28.x = (x_1875 + x_1877);
  let x_1881 : f32 = u_xlat28.x;
  let x_1884 : f32 = x_53.x_ProjectionParams.y;
  u_xlat28.x = (-(x_1881) + -(x_1884));
  let x_1889 : f32 = u_xlat28.x;
  u_xlat28.x = max(x_1889, 0.0f);
  let x_1893 : f32 = u_xlat28.x;
  let x_1895 : f32 = x_53.unity_FogParams.x;
  u_xlat28.x = (x_1893 * x_1895);
  let x_1905 : vec2<f32> = vs_INTERP0;
  let x_1907 : f32 = x_53.x_GlobalMipBias.x;
  let x_1908 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_1905, x_1907);
  u_xlat6 = x_1908;
  let x_1913 : vec2<f32> = vs_INTERP0;
  let x_1915 : f32 = x_53.x_GlobalMipBias.x;
  let x_1916 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_1913, x_1915);
  let x_1917 : vec3<f32> = vec3<f32>(x_1916.x, x_1916.y, x_1916.z);
  let x_1918 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1917.x, x_1917.y, x_1917.z, x_1918.w);
  let x_1920 : vec4<f32> = u_xlat6;
  let x_1923 : vec3<f32> = (vec3<f32>(x_1920.x, x_1920.y, x_1920.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1924 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1923.x, x_1923.y, x_1923.z, x_1924.w);
  let x_1926 : vec3<f32> = u_xlat30;
  let x_1927 : vec4<f32> = u_xlat6;
  u_xlat82 = dot(x_1926, vec3<f32>(x_1927.x, x_1927.y, x_1927.z));
  let x_1930 : f32 = u_xlat82;
  u_xlat82 = (x_1930 + 0.5f);
  let x_1932 : f32 = u_xlat82;
  let x_1934 : vec4<f32> = u_xlat7;
  let x_1936 : vec3<f32> = (vec3<f32>(x_1932, x_1932, x_1932) * vec3<f32>(x_1934.x, x_1934.y, x_1934.z));
  let x_1937 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1936.x, x_1936.y, x_1936.z, x_1937.w);
  let x_1940 : f32 = u_xlat6.w;
  u_xlat82 = max(x_1940, 0.00009999999747378752f);
  let x_1942 : vec4<f32> = u_xlat6;
  let x_1944 : f32 = u_xlat82;
  let x_1946 : vec3<f32> = (vec3<f32>(x_1942.x, x_1942.y, x_1942.z) / vec3<f32>(x_1944, x_1944, x_1944));
  let x_1947 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1946.x, x_1946.y, x_1946.z, x_1947.w);
  let x_1950 : f32 = u_xlat3.x;
  u_xlat3.x = x_1950;
  let x_1953 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1953, 0.0f, 1.0f);
  let x_1957 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_1957, 1.0f);
  let x_1960 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1960 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_1965 : f32 = u_xlat3.x;
  u_xlat82 = (-(x_1965) + 1.0f);
  let x_1968 : f32 = u_xlat82;
  let x_1969 : f32 = u_xlat82;
  u_xlat83 = (x_1968 * x_1969);
  let x_1971 : f32 = u_xlat83;
  u_xlat83 = max(x_1971, 0.0078125f);
  let x_1975 : f32 = u_xlat83;
  let x_1976 : f32 = u_xlat83;
  u_xlat87 = (x_1975 * x_1976);
  let x_1979 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1979 + 0.04000002145767211914f);
  let x_1984 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_1984, 1.0f);
  let x_1987 : f32 = u_xlat83;
  u_xlat7.x = ((x_1987 * 4.0f) + 2.0f);
  let x_1992 : f32 = vs_INTERP6.w;
  u_xlat34.x = min(x_1992, 1.0f);
  let x_1995 : bool = u_xlatb81;
  if (x_1995) {
    let x_1999 : f32 = x_130.x_MainLightShadowParams.y;
    u_xlatb81 = (x_1999 == 1.0f);
    let x_2001 : bool = u_xlatb81;
    if (x_2001) {
      let x_2004 : vec4<f32> = u_xlat4;
      let x_2007 : vec4<f32> = x_130.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_2004.x, x_2004.y, x_2004.x, x_2004.y) + x_2007);
      let x_2010 : vec4<f32> = u_xlat8;
      let x_2011 : vec2<f32> = vec2<f32>(x_2010.x, x_2010.y);
      let x_2013 : f32 = u_xlat4.z;
      txVec30 = vec3<f32>(x_2011.x, x_2011.y, x_2013);
      let x_2020 : vec3<f32> = txVec30;
      let x_2022 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2020.xy, x_2020.z);
      u_xlat9.x = x_2022;
      let x_2025 : vec4<f32> = u_xlat8;
      let x_2026 : vec2<f32> = vec2<f32>(x_2025.z, x_2025.w);
      let x_2028 : f32 = u_xlat4.z;
      txVec31 = vec3<f32>(x_2026.x, x_2026.y, x_2028);
      let x_2035 : vec3<f32> = txVec31;
      let x_2037 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2035.xy, x_2035.z);
      u_xlat9.y = x_2037;
      let x_2039 : vec4<f32> = u_xlat4;
      let x_2042 : vec4<f32> = x_130.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_2039.x, x_2039.y, x_2039.x, x_2039.y) + x_2042);
      let x_2045 : vec4<f32> = u_xlat8;
      let x_2046 : vec2<f32> = vec2<f32>(x_2045.x, x_2045.y);
      let x_2048 : f32 = u_xlat4.z;
      txVec32 = vec3<f32>(x_2046.x, x_2046.y, x_2048);
      let x_2055 : vec3<f32> = txVec32;
      let x_2057 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2055.xy, x_2055.z);
      u_xlat9.z = x_2057;
      let x_2060 : vec4<f32> = u_xlat8;
      let x_2061 : vec2<f32> = vec2<f32>(x_2060.z, x_2060.w);
      let x_2063 : f32 = u_xlat4.z;
      txVec33 = vec3<f32>(x_2061.x, x_2061.y, x_2063);
      let x_2070 : vec3<f32> = txVec33;
      let x_2072 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2070.xy, x_2070.z);
      u_xlat9.w = x_2072;
      let x_2074 : vec4<f32> = u_xlat9;
      u_xlat81 = dot(x_2074, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_2079 : f32 = x_130.x_MainLightShadowParams.y;
      u_xlatb61 = (x_2079 == 2.0f);
      let x_2081 : bool = u_xlatb61;
      if (x_2081) {
        let x_2084 : vec4<f32> = u_xlat4;
        let x_2087 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        u_xlat61 = ((vec2<f32>(x_2084.x, x_2084.y) * vec2<f32>(x_2087.z, x_2087.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2091 : vec2<f32> = u_xlat61;
        u_xlat61 = floor(x_2091);
        let x_2093 : vec4<f32> = u_xlat4;
        let x_2096 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2099 : vec2<f32> = u_xlat61;
        let x_2101 : vec2<f32> = ((vec2<f32>(x_2093.x, x_2093.y) * vec2<f32>(x_2096.z, x_2096.w)) + -(x_2099));
        let x_2102 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2101.x, x_2101.y, x_2102.z, x_2102.w);
        let x_2104 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2104.x, x_2104.x, x_2104.y, x_2104.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2107 : vec4<f32> = u_xlat9;
        let x_2109 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2107.x, x_2107.x, x_2107.z, x_2107.z) * vec4<f32>(x_2109.x, x_2109.x, x_2109.z, x_2109.z));
        let x_2112 : vec4<f32> = u_xlat10;
        u_xlat62 = (vec2<f32>(x_2112.y, x_2112.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_2115 : vec4<f32> = u_xlat10;
        let x_2118 : vec4<f32> = u_xlat8;
        let x_2121 : vec2<f32> = ((vec2<f32>(x_2115.x, x_2115.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2118.x, x_2118.y)));
        let x_2122 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2121.x, x_2122.y, x_2121.y, x_2122.w);
        let x_2124 : vec4<f32> = u_xlat8;
        let x_2127 : vec2<f32> = (-(vec2<f32>(x_2124.x, x_2124.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2128 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2127.x, x_2127.y, x_2128.z, x_2128.w);
        let x_2131 : vec4<f32> = u_xlat8;
        u_xlat64 = min(vec2<f32>(x_2131.x, x_2131.y), vec2<f32>(0.0f, 0.0f));
        let x_2134 : vec2<f32> = u_xlat64;
        let x_2136 : vec2<f32> = u_xlat64;
        let x_2138 : vec4<f32> = u_xlat10;
        u_xlat64 = ((-(x_2134) * x_2136) + vec2<f32>(x_2138.x, x_2138.y));
        let x_2141 : vec4<f32> = u_xlat8;
        let x_2143 : vec2<f32> = max(vec2<f32>(x_2141.x, x_2141.y), vec2<f32>(0.0f, 0.0f));
        let x_2144 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2143.x, x_2143.y, x_2144.z, x_2144.w);
        let x_2146 : vec4<f32> = u_xlat8;
        let x_2149 : vec4<f32> = u_xlat8;
        let x_2152 : vec4<f32> = u_xlat9;
        let x_2154 : vec2<f32> = ((-(vec2<f32>(x_2146.x, x_2146.y)) * vec2<f32>(x_2149.x, x_2149.y)) + vec2<f32>(x_2152.y, x_2152.w));
        let x_2155 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2154.x, x_2154.y, x_2155.z, x_2155.w);
        let x_2157 : vec2<f32> = u_xlat64;
        u_xlat64 = (x_2157 + vec2<f32>(1.0f, 1.0f));
        let x_2159 : vec4<f32> = u_xlat8;
        let x_2161 : vec2<f32> = (vec2<f32>(x_2159.x, x_2159.y) + vec2<f32>(1.0f, 1.0f));
        let x_2162 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2161.x, x_2161.y, x_2162.z, x_2162.w);
        let x_2164 : vec4<f32> = u_xlat9;
        let x_2166 : vec2<f32> = (vec2<f32>(x_2164.x, x_2164.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2167 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2166.x, x_2166.y, x_2167.z, x_2167.w);
        let x_2169 : vec4<f32> = u_xlat10;
        let x_2171 : vec2<f32> = (vec2<f32>(x_2169.x, x_2169.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2172 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2171.x, x_2171.y, x_2172.z, x_2172.w);
        let x_2174 : vec2<f32> = u_xlat64;
        let x_2175 : vec2<f32> = (x_2174 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2176 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2175.x, x_2175.y, x_2176.z, x_2176.w);
        let x_2178 : vec4<f32> = u_xlat8;
        let x_2180 : vec2<f32> = (vec2<f32>(x_2178.x, x_2178.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2181 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2180.x, x_2180.y, x_2181.z, x_2181.w);
        let x_2183 : vec4<f32> = u_xlat9;
        let x_2185 : vec2<f32> = (vec2<f32>(x_2183.y, x_2183.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2186 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2185.x, x_2185.y, x_2186.z, x_2186.w);
        let x_2189 : f32 = u_xlat10.x;
        u_xlat11.z = x_2189;
        let x_2192 : f32 = u_xlat8.x;
        u_xlat11.w = x_2192;
        let x_2195 : f32 = u_xlat13.x;
        u_xlat12.z = x_2195;
        let x_2198 : f32 = u_xlat62.x;
        u_xlat12.w = x_2198;
        let x_2200 : vec4<f32> = u_xlat11;
        let x_2202 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_2200.z, x_2200.w, x_2200.x, x_2200.z) + vec4<f32>(x_2202.z, x_2202.w, x_2202.x, x_2202.z));
        let x_2206 : f32 = u_xlat11.y;
        u_xlat10.z = x_2206;
        let x_2209 : f32 = u_xlat8.y;
        u_xlat10.w = x_2209;
        let x_2212 : f32 = u_xlat12.y;
        u_xlat13.z = x_2212;
        let x_2215 : f32 = u_xlat62.y;
        u_xlat13.w = x_2215;
        let x_2217 : vec4<f32> = u_xlat10;
        let x_2219 : vec4<f32> = u_xlat13;
        let x_2221 : vec3<f32> = (vec3<f32>(x_2217.z, x_2217.y, x_2217.w) + vec3<f32>(x_2219.z, x_2219.y, x_2219.w));
        let x_2222 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2221.x, x_2221.y, x_2221.z, x_2222.w);
        let x_2224 : vec4<f32> = u_xlat12;
        let x_2226 : vec4<f32> = u_xlat9;
        let x_2228 : vec3<f32> = (vec3<f32>(x_2224.x, x_2224.z, x_2224.w) / vec3<f32>(x_2226.z, x_2226.w, x_2226.y));
        let x_2229 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2228.x, x_2228.y, x_2228.z, x_2229.w);
        let x_2231 : vec4<f32> = u_xlat10;
        let x_2233 : vec3<f32> = (vec3<f32>(x_2231.x, x_2231.y, x_2231.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2234 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2233.x, x_2233.y, x_2233.z, x_2234.w);
        let x_2236 : vec4<f32> = u_xlat13;
        let x_2238 : vec4<f32> = u_xlat8;
        let x_2240 : vec3<f32> = (vec3<f32>(x_2236.z, x_2236.y, x_2236.w) / vec3<f32>(x_2238.x, x_2238.y, x_2238.z));
        let x_2241 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2240.x, x_2240.y, x_2240.z, x_2241.w);
        let x_2243 : vec4<f32> = u_xlat11;
        let x_2245 : vec3<f32> = (vec3<f32>(x_2243.x, x_2243.y, x_2243.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2246 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2245.x, x_2245.y, x_2245.z, x_2246.w);
        let x_2248 : vec4<f32> = u_xlat10;
        let x_2251 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2253 : vec3<f32> = (vec3<f32>(x_2248.y, x_2248.x, x_2248.z) * vec3<f32>(x_2251.x, x_2251.x, x_2251.x));
        let x_2254 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2253.x, x_2253.y, x_2253.z, x_2254.w);
        let x_2256 : vec4<f32> = u_xlat11;
        let x_2259 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2261 : vec3<f32> = (vec3<f32>(x_2256.x, x_2256.y, x_2256.z) * vec3<f32>(x_2259.y, x_2259.y, x_2259.y));
        let x_2262 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2261.x, x_2261.y, x_2261.z, x_2262.w);
        let x_2265 : f32 = u_xlat11.x;
        u_xlat10.w = x_2265;
        let x_2267 : vec2<f32> = u_xlat61;
        let x_2270 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2273 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_2267.x, x_2267.y, x_2267.x, x_2267.y) * vec4<f32>(x_2270.x, x_2270.y, x_2270.x, x_2270.y)) + vec4<f32>(x_2273.y, x_2273.w, x_2273.x, x_2273.w));
        let x_2276 : vec2<f32> = u_xlat61;
        let x_2278 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2281 : vec4<f32> = u_xlat10;
        let x_2283 : vec2<f32> = ((x_2276 * vec2<f32>(x_2278.x, x_2278.y)) + vec2<f32>(x_2281.z, x_2281.w));
        let x_2284 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2283.x, x_2283.y, x_2284.z, x_2284.w);
        let x_2287 : f32 = u_xlat10.y;
        u_xlat11.w = x_2287;
        let x_2289 : vec4<f32> = u_xlat11;
        let x_2290 : vec2<f32> = vec2<f32>(x_2289.y, x_2289.z);
        let x_2291 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2291.x, x_2290.x, x_2291.z, x_2290.y);
        let x_2293 : vec2<f32> = u_xlat61;
        let x_2296 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2299 : vec4<f32> = u_xlat10;
        u_xlat14 = ((vec4<f32>(x_2293.x, x_2293.y, x_2293.x, x_2293.y) * vec4<f32>(x_2296.x, x_2296.y, x_2296.x, x_2296.y)) + vec4<f32>(x_2299.x, x_2299.y, x_2299.z, x_2299.y));
        let x_2302 : vec2<f32> = u_xlat61;
        let x_2305 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2308 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_2302.x, x_2302.y, x_2302.x, x_2302.y) * vec4<f32>(x_2305.x, x_2305.y, x_2305.x, x_2305.y)) + vec4<f32>(x_2308.w, x_2308.y, x_2308.w, x_2308.z));
        let x_2311 : vec2<f32> = u_xlat61;
        let x_2314 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2317 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2311.x, x_2311.y, x_2311.x, x_2311.y) * vec4<f32>(x_2314.x, x_2314.y, x_2314.x, x_2314.y)) + vec4<f32>(x_2317.x, x_2317.w, x_2317.z, x_2317.w));
        let x_2320 : vec4<f32> = u_xlat8;
        let x_2322 : vec4<f32> = u_xlat9;
        u_xlat15 = (vec4<f32>(x_2320.x, x_2320.x, x_2320.x, x_2320.y) * vec4<f32>(x_2322.z, x_2322.w, x_2322.y, x_2322.z));
        let x_2325 : vec4<f32> = u_xlat8;
        let x_2327 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_2325.y, x_2325.y, x_2325.z, x_2325.z) * x_2327);
        let x_2330 : f32 = u_xlat8.z;
        let x_2332 : f32 = u_xlat9.y;
        u_xlat61.x = (x_2330 * x_2332);
        let x_2336 : vec4<f32> = u_xlat12;
        let x_2337 : vec2<f32> = vec2<f32>(x_2336.x, x_2336.y);
        let x_2339 : f32 = u_xlat4.z;
        txVec34 = vec3<f32>(x_2337.x, x_2337.y, x_2339);
        let x_2347 : vec3<f32> = txVec34;
        let x_2349 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2347.xy, x_2347.z);
        u_xlat88 = x_2349;
        let x_2351 : vec4<f32> = u_xlat12;
        let x_2352 : vec2<f32> = vec2<f32>(x_2351.z, x_2351.w);
        let x_2354 : f32 = u_xlat4.z;
        txVec35 = vec3<f32>(x_2352.x, x_2352.y, x_2354);
        let x_2361 : vec3<f32> = txVec35;
        let x_2363 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2361.xy, x_2361.z);
        u_xlat8.x = x_2363;
        let x_2366 : f32 = u_xlat8.x;
        let x_2368 : f32 = u_xlat15.y;
        u_xlat8.x = (x_2366 * x_2368);
        let x_2372 : f32 = u_xlat15.x;
        let x_2373 : f32 = u_xlat88;
        let x_2376 : f32 = u_xlat8.x;
        u_xlat88 = ((x_2372 * x_2373) + x_2376);
        let x_2379 : vec4<f32> = u_xlat13;
        let x_2380 : vec2<f32> = vec2<f32>(x_2379.x, x_2379.y);
        let x_2382 : f32 = u_xlat4.z;
        txVec36 = vec3<f32>(x_2380.x, x_2380.y, x_2382);
        let x_2389 : vec3<f32> = txVec36;
        let x_2391 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2389.xy, x_2389.z);
        u_xlat8.x = x_2391;
        let x_2394 : f32 = u_xlat15.z;
        let x_2396 : f32 = u_xlat8.x;
        let x_2398 : f32 = u_xlat88;
        u_xlat88 = ((x_2394 * x_2396) + x_2398);
        let x_2401 : vec4<f32> = u_xlat11;
        let x_2402 : vec2<f32> = vec2<f32>(x_2401.x, x_2401.y);
        let x_2404 : f32 = u_xlat4.z;
        txVec37 = vec3<f32>(x_2402.x, x_2402.y, x_2404);
        let x_2411 : vec3<f32> = txVec37;
        let x_2413 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2411.xy, x_2411.z);
        u_xlat8.x = x_2413;
        let x_2416 : f32 = u_xlat15.w;
        let x_2418 : f32 = u_xlat8.x;
        let x_2420 : f32 = u_xlat88;
        u_xlat88 = ((x_2416 * x_2418) + x_2420);
        let x_2423 : vec4<f32> = u_xlat14;
        let x_2424 : vec2<f32> = vec2<f32>(x_2423.x, x_2423.y);
        let x_2426 : f32 = u_xlat4.z;
        txVec38 = vec3<f32>(x_2424.x, x_2424.y, x_2426);
        let x_2433 : vec3<f32> = txVec38;
        let x_2435 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2433.xy, x_2433.z);
        u_xlat8.x = x_2435;
        let x_2438 : f32 = u_xlat16.x;
        let x_2440 : f32 = u_xlat8.x;
        let x_2442 : f32 = u_xlat88;
        u_xlat88 = ((x_2438 * x_2440) + x_2442);
        let x_2445 : vec4<f32> = u_xlat14;
        let x_2446 : vec2<f32> = vec2<f32>(x_2445.z, x_2445.w);
        let x_2448 : f32 = u_xlat4.z;
        txVec39 = vec3<f32>(x_2446.x, x_2446.y, x_2448);
        let x_2455 : vec3<f32> = txVec39;
        let x_2457 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2455.xy, x_2455.z);
        u_xlat8.x = x_2457;
        let x_2460 : f32 = u_xlat16.y;
        let x_2462 : f32 = u_xlat8.x;
        let x_2464 : f32 = u_xlat88;
        u_xlat88 = ((x_2460 * x_2462) + x_2464);
        let x_2467 : vec4<f32> = u_xlat11;
        let x_2468 : vec2<f32> = vec2<f32>(x_2467.z, x_2467.w);
        let x_2470 : f32 = u_xlat4.z;
        txVec40 = vec3<f32>(x_2468.x, x_2468.y, x_2470);
        let x_2477 : vec3<f32> = txVec40;
        let x_2479 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2477.xy, x_2477.z);
        u_xlat8.x = x_2479;
        let x_2482 : f32 = u_xlat16.z;
        let x_2484 : f32 = u_xlat8.x;
        let x_2486 : f32 = u_xlat88;
        u_xlat88 = ((x_2482 * x_2484) + x_2486);
        let x_2489 : vec4<f32> = u_xlat10;
        let x_2490 : vec2<f32> = vec2<f32>(x_2489.x, x_2489.y);
        let x_2492 : f32 = u_xlat4.z;
        txVec41 = vec3<f32>(x_2490.x, x_2490.y, x_2492);
        let x_2499 : vec3<f32> = txVec41;
        let x_2501 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2499.xy, x_2499.z);
        u_xlat8.x = x_2501;
        let x_2504 : f32 = u_xlat16.w;
        let x_2506 : f32 = u_xlat8.x;
        let x_2508 : f32 = u_xlat88;
        u_xlat88 = ((x_2504 * x_2506) + x_2508);
        let x_2511 : vec4<f32> = u_xlat10;
        let x_2512 : vec2<f32> = vec2<f32>(x_2511.z, x_2511.w);
        let x_2514 : f32 = u_xlat4.z;
        txVec42 = vec3<f32>(x_2512.x, x_2512.y, x_2514);
        let x_2521 : vec3<f32> = txVec42;
        let x_2523 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2521.xy, x_2521.z);
        u_xlat8.x = x_2523;
        let x_2526 : f32 = u_xlat61.x;
        let x_2528 : f32 = u_xlat8.x;
        let x_2530 : f32 = u_xlat88;
        u_xlat81 = ((x_2526 * x_2528) + x_2530);
      } else {
        let x_2533 : vec4<f32> = u_xlat4;
        let x_2536 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        u_xlat61 = ((vec2<f32>(x_2533.x, x_2533.y) * vec2<f32>(x_2536.z, x_2536.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2540 : vec2<f32> = u_xlat61;
        u_xlat61 = floor(x_2540);
        let x_2542 : vec4<f32> = u_xlat4;
        let x_2545 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2548 : vec2<f32> = u_xlat61;
        let x_2550 : vec2<f32> = ((vec2<f32>(x_2542.x, x_2542.y) * vec2<f32>(x_2545.z, x_2545.w)) + -(x_2548));
        let x_2551 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2550.x, x_2550.y, x_2551.z, x_2551.w);
        let x_2553 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2553.x, x_2553.x, x_2553.y, x_2553.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2556 : vec4<f32> = u_xlat9;
        let x_2558 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2556.x, x_2556.x, x_2556.z, x_2556.z) * vec4<f32>(x_2558.x, x_2558.x, x_2558.z, x_2558.z));
        let x_2561 : vec4<f32> = u_xlat10;
        let x_2563 : vec2<f32> = (vec2<f32>(x_2561.y, x_2561.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2564 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2564.x, x_2563.x, x_2564.z, x_2563.y);
        let x_2566 : vec4<f32> = u_xlat10;
        let x_2569 : vec4<f32> = u_xlat8;
        u_xlat62 = ((vec2<f32>(x_2566.x, x_2566.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2569.x, x_2569.y)));
        let x_2573 : vec4<f32> = u_xlat8;
        let x_2576 : vec2<f32> = (-(vec2<f32>(x_2573.x, x_2573.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2577 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2576.x, x_2577.y, x_2576.y, x_2577.w);
        let x_2579 : vec4<f32> = u_xlat8;
        let x_2581 : vec2<f32> = min(vec2<f32>(x_2579.x, x_2579.y), vec2<f32>(0.0f, 0.0f));
        let x_2582 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2581.x, x_2581.y, x_2582.z, x_2582.w);
        let x_2584 : vec4<f32> = u_xlat10;
        let x_2587 : vec4<f32> = u_xlat10;
        let x_2590 : vec4<f32> = u_xlat9;
        let x_2592 : vec2<f32> = ((-(vec2<f32>(x_2584.x, x_2584.y)) * vec2<f32>(x_2587.x, x_2587.y)) + vec2<f32>(x_2590.x, x_2590.z));
        let x_2593 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2592.x, x_2593.y, x_2592.y, x_2593.w);
        let x_2595 : vec4<f32> = u_xlat8;
        let x_2597 : vec2<f32> = max(vec2<f32>(x_2595.x, x_2595.y), vec2<f32>(0.0f, 0.0f));
        let x_2598 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2597.x, x_2597.y, x_2598.z, x_2598.w);
        let x_2600 : vec4<f32> = u_xlat10;
        let x_2603 : vec4<f32> = u_xlat10;
        let x_2606 : vec4<f32> = u_xlat9;
        let x_2608 : vec2<f32> = ((-(vec2<f32>(x_2600.x, x_2600.y)) * vec2<f32>(x_2603.x, x_2603.y)) + vec2<f32>(x_2606.y, x_2606.w));
        let x_2609 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2609.x, x_2608.x, x_2609.z, x_2608.y);
        let x_2611 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2611 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2614 : f32 = u_xlat9.y;
        u_xlat10.z = (x_2614 * 0.08163200318813323975f);
        let x_2617 : vec2<f32> = u_xlat62;
        let x_2619 : vec2<f32> = (vec2<f32>(x_2617.y, x_2617.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2620 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2619.x, x_2619.y, x_2620.z, x_2620.w);
        let x_2622 : vec4<f32> = u_xlat9;
        u_xlat62 = (vec2<f32>(x_2622.x, x_2622.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2626 : f32 = u_xlat9.w;
        u_xlat12.z = (x_2626 * 0.08163200318813323975f);
        let x_2630 : f32 = u_xlat12.y;
        u_xlat10.x = x_2630;
        let x_2632 : vec4<f32> = u_xlat8;
        let x_2635 : vec2<f32> = ((vec2<f32>(x_2632.x, x_2632.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2636 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2636.x, x_2635.x, x_2636.z, x_2635.y);
        let x_2638 : vec4<f32> = u_xlat8;
        let x_2641 : vec2<f32> = ((vec2<f32>(x_2638.x, x_2638.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2642 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2641.x, x_2642.y, x_2641.y, x_2642.w);
        let x_2645 : f32 = u_xlat62.x;
        u_xlat9.y = x_2645;
        let x_2648 : f32 = u_xlat11.y;
        u_xlat9.w = x_2648;
        let x_2650 : vec4<f32> = u_xlat9;
        let x_2651 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2650 + x_2651);
        let x_2653 : vec4<f32> = u_xlat8;
        let x_2656 : vec2<f32> = ((vec2<f32>(x_2653.y, x_2653.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2657 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2657.x, x_2656.x, x_2657.z, x_2656.y);
        let x_2659 : vec4<f32> = u_xlat8;
        let x_2662 : vec2<f32> = ((vec2<f32>(x_2659.y, x_2659.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2663 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2662.x, x_2663.y, x_2662.y, x_2663.w);
        let x_2666 : f32 = u_xlat62.y;
        u_xlat11.y = x_2666;
        let x_2668 : vec4<f32> = u_xlat11;
        let x_2669 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_2668 + x_2669);
        let x_2671 : vec4<f32> = u_xlat9;
        let x_2672 : vec4<f32> = u_xlat10;
        u_xlat9 = (x_2671 / x_2672);
        let x_2674 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2674 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2676 : vec4<f32> = u_xlat11;
        let x_2677 : vec4<f32> = u_xlat8;
        u_xlat11 = (x_2676 / x_2677);
        let x_2679 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_2679 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2681 : vec4<f32> = u_xlat9;
        let x_2684 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_2681.w, x_2681.x, x_2681.y, x_2681.z) * vec4<f32>(x_2684.x, x_2684.x, x_2684.x, x_2684.x));
        let x_2687 : vec4<f32> = u_xlat11;
        let x_2690 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_2687.x, x_2687.w, x_2687.y, x_2687.z) * vec4<f32>(x_2690.y, x_2690.y, x_2690.y, x_2690.y));
        let x_2693 : vec4<f32> = u_xlat9;
        let x_2694 : vec3<f32> = vec3<f32>(x_2693.y, x_2693.z, x_2693.w);
        let x_2695 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2694.x, x_2695.y, x_2694.y, x_2694.z);
        let x_2698 : f32 = u_xlat11.x;
        u_xlat12.y = x_2698;
        let x_2700 : vec2<f32> = u_xlat61;
        let x_2703 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2706 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_2700.x, x_2700.y, x_2700.x, x_2700.y) * vec4<f32>(x_2703.x, x_2703.y, x_2703.x, x_2703.y)) + vec4<f32>(x_2706.x, x_2706.y, x_2706.z, x_2706.y));
        let x_2709 : vec2<f32> = u_xlat61;
        let x_2711 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2714 : vec4<f32> = u_xlat12;
        let x_2716 : vec2<f32> = ((x_2709 * vec2<f32>(x_2711.x, x_2711.y)) + vec2<f32>(x_2714.w, x_2714.y));
        let x_2717 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_2716.x, x_2716.y, x_2717.z, x_2717.w);
        let x_2720 : f32 = u_xlat12.y;
        u_xlat9.y = x_2720;
        let x_2723 : f32 = u_xlat11.z;
        u_xlat12.y = x_2723;
        let x_2725 : vec2<f32> = u_xlat61;
        let x_2728 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2731 : vec4<f32> = u_xlat12;
        u_xlat15 = ((vec4<f32>(x_2725.x, x_2725.y, x_2725.x, x_2725.y) * vec4<f32>(x_2728.x, x_2728.y, x_2728.x, x_2728.y)) + vec4<f32>(x_2731.x, x_2731.y, x_2731.z, x_2731.y));
        let x_2735 : vec2<f32> = u_xlat61;
        let x_2737 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2740 : vec4<f32> = u_xlat12;
        u_xlat68 = ((x_2735 * vec2<f32>(x_2737.x, x_2737.y)) + vec2<f32>(x_2740.w, x_2740.y));
        let x_2744 : f32 = u_xlat12.y;
        u_xlat9.z = x_2744;
        let x_2746 : vec2<f32> = u_xlat61;
        let x_2749 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2752 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_2746.x, x_2746.y, x_2746.x, x_2746.y) * vec4<f32>(x_2749.x, x_2749.y, x_2749.x, x_2749.y)) + vec4<f32>(x_2752.x, x_2752.y, x_2752.x, x_2752.z));
        let x_2756 : f32 = u_xlat11.w;
        u_xlat12.y = x_2756;
        let x_2758 : vec2<f32> = u_xlat61;
        let x_2761 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2764 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_2758.x, x_2758.y, x_2758.x, x_2758.y) * vec4<f32>(x_2761.x, x_2761.y, x_2761.x, x_2761.y)) + vec4<f32>(x_2764.x, x_2764.y, x_2764.z, x_2764.y));
        let x_2768 : vec2<f32> = u_xlat61;
        let x_2770 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2773 : vec4<f32> = u_xlat12;
        u_xlat36 = ((x_2768 * vec2<f32>(x_2770.x, x_2770.y)) + vec2<f32>(x_2773.w, x_2773.y));
        let x_2777 : f32 = u_xlat12.y;
        u_xlat9.w = x_2777;
        let x_2779 : vec2<f32> = u_xlat61;
        let x_2781 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2784 : vec4<f32> = u_xlat9;
        let x_2786 : vec2<f32> = ((x_2779 * vec2<f32>(x_2781.x, x_2781.y)) + vec2<f32>(x_2784.x, x_2784.w));
        let x_2787 : vec4<f32> = u_xlat18;
        u_xlat18 = vec4<f32>(x_2786.x, x_2786.y, x_2787.z, x_2787.w);
        let x_2789 : vec4<f32> = u_xlat12;
        let x_2790 : vec3<f32> = vec3<f32>(x_2789.x, x_2789.z, x_2789.w);
        let x_2791 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2790.x, x_2791.y, x_2790.y, x_2790.z);
        let x_2793 : vec2<f32> = u_xlat61;
        let x_2796 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2799 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2793.x, x_2793.y, x_2793.x, x_2793.y) * vec4<f32>(x_2796.x, x_2796.y, x_2796.x, x_2796.y)) + vec4<f32>(x_2799.x, x_2799.y, x_2799.z, x_2799.y));
        let x_2803 : vec2<f32> = u_xlat61;
        let x_2805 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2808 : vec4<f32> = u_xlat11;
        u_xlat65 = ((x_2803 * vec2<f32>(x_2805.x, x_2805.y)) + vec2<f32>(x_2808.w, x_2808.y));
        let x_2812 : f32 = u_xlat9.x;
        u_xlat11.x = x_2812;
        let x_2814 : vec2<f32> = u_xlat61;
        let x_2816 : vec4<f32> = x_130.x_MainLightShadowmapSize;
        let x_2819 : vec4<f32> = u_xlat11;
        u_xlat61 = ((x_2814 * vec2<f32>(x_2816.x, x_2816.y)) + vec2<f32>(x_2819.x, x_2819.y));
        let x_2823 : vec4<f32> = u_xlat8;
        let x_2825 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_2823.x, x_2823.x, x_2823.x, x_2823.x) * x_2825);
        let x_2828 : vec4<f32> = u_xlat8;
        let x_2830 : vec4<f32> = u_xlat10;
        u_xlat20 = (vec4<f32>(x_2828.y, x_2828.y, x_2828.y, x_2828.y) * x_2830);
        let x_2833 : vec4<f32> = u_xlat8;
        let x_2835 : vec4<f32> = u_xlat10;
        u_xlat21 = (vec4<f32>(x_2833.z, x_2833.z, x_2833.z, x_2833.z) * x_2835);
        let x_2837 : vec4<f32> = u_xlat8;
        let x_2839 : vec4<f32> = u_xlat10;
        u_xlat8 = (vec4<f32>(x_2837.w, x_2837.w, x_2837.w, x_2837.w) * x_2839);
        let x_2842 : vec4<f32> = u_xlat13;
        let x_2843 : vec2<f32> = vec2<f32>(x_2842.x, x_2842.y);
        let x_2845 : f32 = u_xlat4.z;
        txVec43 = vec3<f32>(x_2843.x, x_2843.y, x_2845);
        let x_2852 : vec3<f32> = txVec43;
        let x_2854 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2852.xy, x_2852.z);
        u_xlat9.x = x_2854;
        let x_2857 : vec4<f32> = u_xlat13;
        let x_2858 : vec2<f32> = vec2<f32>(x_2857.z, x_2857.w);
        let x_2860 : f32 = u_xlat4.z;
        txVec44 = vec3<f32>(x_2858.x, x_2858.y, x_2860);
        let x_2868 : vec3<f32> = txVec44;
        let x_2870 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2868.xy, x_2868.z);
        u_xlat90 = x_2870;
        let x_2871 : f32 = u_xlat90;
        let x_2873 : f32 = u_xlat19.y;
        u_xlat90 = (x_2871 * x_2873);
        let x_2876 : f32 = u_xlat19.x;
        let x_2878 : f32 = u_xlat9.x;
        let x_2880 : f32 = u_xlat90;
        u_xlat9.x = ((x_2876 * x_2878) + x_2880);
        let x_2884 : vec4<f32> = u_xlat14;
        let x_2885 : vec2<f32> = vec2<f32>(x_2884.x, x_2884.y);
        let x_2887 : f32 = u_xlat4.z;
        txVec45 = vec3<f32>(x_2885.x, x_2885.y, x_2887);
        let x_2894 : vec3<f32> = txVec45;
        let x_2896 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2894.xy, x_2894.z);
        u_xlat90 = x_2896;
        let x_2898 : f32 = u_xlat19.z;
        let x_2899 : f32 = u_xlat90;
        let x_2902 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_2898 * x_2899) + x_2902);
        let x_2906 : vec4<f32> = u_xlat16;
        let x_2907 : vec2<f32> = vec2<f32>(x_2906.x, x_2906.y);
        let x_2909 : f32 = u_xlat4.z;
        txVec46 = vec3<f32>(x_2907.x, x_2907.y, x_2909);
        let x_2916 : vec3<f32> = txVec46;
        let x_2918 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2916.xy, x_2916.z);
        u_xlat90 = x_2918;
        let x_2920 : f32 = u_xlat19.w;
        let x_2921 : f32 = u_xlat90;
        let x_2924 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_2920 * x_2921) + x_2924);
        let x_2928 : vec4<f32> = u_xlat15;
        let x_2929 : vec2<f32> = vec2<f32>(x_2928.x, x_2928.y);
        let x_2931 : f32 = u_xlat4.z;
        txVec47 = vec3<f32>(x_2929.x, x_2929.y, x_2931);
        let x_2938 : vec3<f32> = txVec47;
        let x_2940 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2938.xy, x_2938.z);
        u_xlat90 = x_2940;
        let x_2942 : f32 = u_xlat20.x;
        let x_2943 : f32 = u_xlat90;
        let x_2946 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_2942 * x_2943) + x_2946);
        let x_2950 : vec4<f32> = u_xlat15;
        let x_2951 : vec2<f32> = vec2<f32>(x_2950.z, x_2950.w);
        let x_2953 : f32 = u_xlat4.z;
        txVec48 = vec3<f32>(x_2951.x, x_2951.y, x_2953);
        let x_2960 : vec3<f32> = txVec48;
        let x_2962 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2960.xy, x_2960.z);
        u_xlat90 = x_2962;
        let x_2964 : f32 = u_xlat20.y;
        let x_2965 : f32 = u_xlat90;
        let x_2968 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_2964 * x_2965) + x_2968);
        let x_2972 : vec2<f32> = u_xlat68;
        let x_2974 : f32 = u_xlat4.z;
        txVec49 = vec3<f32>(x_2972.x, x_2972.y, x_2974);
        let x_2981 : vec3<f32> = txVec49;
        let x_2983 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2981.xy, x_2981.z);
        u_xlat90 = x_2983;
        let x_2985 : f32 = u_xlat20.z;
        let x_2986 : f32 = u_xlat90;
        let x_2989 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_2985 * x_2986) + x_2989);
        let x_2993 : vec4<f32> = u_xlat16;
        let x_2994 : vec2<f32> = vec2<f32>(x_2993.z, x_2993.w);
        let x_2996 : f32 = u_xlat4.z;
        txVec50 = vec3<f32>(x_2994.x, x_2994.y, x_2996);
        let x_3003 : vec3<f32> = txVec50;
        let x_3005 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3003.xy, x_3003.z);
        u_xlat90 = x_3005;
        let x_3007 : f32 = u_xlat20.w;
        let x_3008 : f32 = u_xlat90;
        let x_3011 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3007 * x_3008) + x_3011);
        let x_3015 : vec4<f32> = u_xlat17;
        let x_3016 : vec2<f32> = vec2<f32>(x_3015.x, x_3015.y);
        let x_3018 : f32 = u_xlat4.z;
        txVec51 = vec3<f32>(x_3016.x, x_3016.y, x_3018);
        let x_3025 : vec3<f32> = txVec51;
        let x_3027 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3025.xy, x_3025.z);
        u_xlat90 = x_3027;
        let x_3029 : f32 = u_xlat21.x;
        let x_3030 : f32 = u_xlat90;
        let x_3033 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3029 * x_3030) + x_3033);
        let x_3037 : vec4<f32> = u_xlat17;
        let x_3038 : vec2<f32> = vec2<f32>(x_3037.z, x_3037.w);
        let x_3040 : f32 = u_xlat4.z;
        txVec52 = vec3<f32>(x_3038.x, x_3038.y, x_3040);
        let x_3047 : vec3<f32> = txVec52;
        let x_3049 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3047.xy, x_3047.z);
        u_xlat90 = x_3049;
        let x_3051 : f32 = u_xlat21.y;
        let x_3052 : f32 = u_xlat90;
        let x_3055 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3051 * x_3052) + x_3055);
        let x_3059 : vec2<f32> = u_xlat36;
        let x_3061 : f32 = u_xlat4.z;
        txVec53 = vec3<f32>(x_3059.x, x_3059.y, x_3061);
        let x_3068 : vec3<f32> = txVec53;
        let x_3070 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3068.xy, x_3068.z);
        u_xlat36.x = x_3070;
        let x_3073 : f32 = u_xlat21.z;
        let x_3075 : f32 = u_xlat36.x;
        let x_3078 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3073 * x_3075) + x_3078);
        let x_3082 : vec4<f32> = u_xlat18;
        let x_3083 : vec2<f32> = vec2<f32>(x_3082.x, x_3082.y);
        let x_3085 : f32 = u_xlat4.z;
        txVec54 = vec3<f32>(x_3083.x, x_3083.y, x_3085);
        let x_3092 : vec3<f32> = txVec54;
        let x_3094 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3092.xy, x_3092.z);
        u_xlat36.x = x_3094;
        let x_3097 : f32 = u_xlat21.w;
        let x_3099 : f32 = u_xlat36.x;
        let x_3102 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3097 * x_3099) + x_3102);
        let x_3106 : vec4<f32> = u_xlat12;
        let x_3107 : vec2<f32> = vec2<f32>(x_3106.x, x_3106.y);
        let x_3109 : f32 = u_xlat4.z;
        txVec55 = vec3<f32>(x_3107.x, x_3107.y, x_3109);
        let x_3116 : vec3<f32> = txVec55;
        let x_3118 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3116.xy, x_3116.z);
        u_xlat36.x = x_3118;
        let x_3121 : f32 = u_xlat8.x;
        let x_3123 : f32 = u_xlat36.x;
        let x_3126 : f32 = u_xlat9.x;
        u_xlat8.x = ((x_3121 * x_3123) + x_3126);
        let x_3130 : vec4<f32> = u_xlat12;
        let x_3131 : vec2<f32> = vec2<f32>(x_3130.z, x_3130.w);
        let x_3133 : f32 = u_xlat4.z;
        txVec56 = vec3<f32>(x_3131.x, x_3131.y, x_3133);
        let x_3140 : vec3<f32> = txVec56;
        let x_3142 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3140.xy, x_3140.z);
        u_xlat9.x = x_3142;
        let x_3145 : f32 = u_xlat8.y;
        let x_3147 : f32 = u_xlat9.x;
        let x_3150 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3145 * x_3147) + x_3150);
        let x_3154 : vec2<f32> = u_xlat65;
        let x_3156 : f32 = u_xlat4.z;
        txVec57 = vec3<f32>(x_3154.x, x_3154.y, x_3156);
        let x_3164 : vec3<f32> = txVec57;
        let x_3166 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3164.xy, x_3164.z);
        u_xlat35 = x_3166;
        let x_3168 : f32 = u_xlat8.z;
        let x_3169 : f32 = u_xlat35;
        let x_3172 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3168 * x_3169) + x_3172);
        let x_3176 : vec2<f32> = u_xlat61;
        let x_3178 : f32 = u_xlat4.z;
        txVec58 = vec3<f32>(x_3176.x, x_3176.y, x_3178);
        let x_3185 : vec3<f32> = txVec58;
        let x_3187 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3185.xy, x_3185.z);
        u_xlat61.x = x_3187;
        let x_3190 : f32 = u_xlat8.w;
        let x_3192 : f32 = u_xlat61.x;
        let x_3195 : f32 = u_xlat8.x;
        u_xlat81 = ((x_3190 * x_3192) + x_3195);
      }
    }
  } else {
    let x_3199 : vec4<f32> = u_xlat4;
    let x_3200 : vec2<f32> = vec2<f32>(x_3199.x, x_3199.y);
    let x_3202 : f32 = u_xlat4.z;
    txVec59 = vec3<f32>(x_3200.x, x_3200.y, x_3202);
    let x_3209 : vec3<f32> = txVec59;
    let x_3211 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3209.xy, x_3209.z);
    u_xlat81 = x_3211;
  }
  let x_3212 : f32 = u_xlat81;
  let x_3214 : f32 = x_130.x_MainLightShadowParams.x;
  let x_3216 : f32 = u_xlat85;
  u_xlat81 = ((x_3212 * x_3214) + x_3216);
  let x_3218 : bool = u_xlatb5;
  let x_3219 : f32 = u_xlat81;
  u_xlat81 = select(x_3219, 1.0f, x_3218);
  let x_3221 : vec3<f32> = vs_INTERP8;
  let x_3223 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  let x_3225 : vec3<f32> = (x_3221 + -(x_3223));
  let x_3226 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_3225.x, x_3225.y, x_3225.z, x_3226.w);
  let x_3228 : vec4<f32> = u_xlat4;
  let x_3230 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_3228.x, x_3228.y, x_3228.z), vec3<f32>(x_3230.x, x_3230.y, x_3230.z));
  let x_3236 : f32 = u_xlat4.x;
  let x_3238 : f32 = x_130.x_MainLightShadowParams.z;
  let x_3241 : f32 = x_130.x_MainLightShadowParams.w;
  u_xlat31.x = ((x_3236 * x_3238) + x_3241);
  let x_3245 : f32 = u_xlat31.x;
  u_xlat31.x = clamp(x_3245, 0.0f, 1.0f);
  let x_3249 : f32 = u_xlat81;
  u_xlat58 = (-(x_3249) + 1.0f);
  let x_3253 : f32 = u_xlat31.x;
  let x_3254 : f32 = u_xlat58;
  let x_3256 : f32 = u_xlat81;
  u_xlat81 = ((x_3253 * x_3254) + x_3256);
  let x_3268 : f32 = x_3266.x_MainLightCookieTextureFormat;
  u_xlatb31.x = !((x_3268 == -1.0f));
  let x_3272 : bool = u_xlatb31.x;
  if (x_3272) {
    let x_3275 : vec3<f32> = vs_INTERP8;
    let x_3278 : vec4<f32> = x_3266.x_MainLightWorldToLight[1i];
    let x_3280 : vec2<f32> = (vec2<f32>(x_3275.y, x_3275.y) * vec2<f32>(x_3278.x, x_3278.y));
    let x_3281 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_3280.x, x_3280.y, x_3281.z);
    let x_3284 : vec4<f32> = x_3266.x_MainLightWorldToLight[0i];
    let x_3286 : vec3<f32> = vs_INTERP8;
    let x_3289 : vec3<f32> = u_xlat31;
    let x_3291 : vec2<f32> = ((vec2<f32>(x_3284.x, x_3284.y) * vec2<f32>(x_3286.x, x_3286.x)) + vec2<f32>(x_3289.x, x_3289.y));
    let x_3292 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_3291.x, x_3291.y, x_3292.z);
    let x_3295 : vec4<f32> = x_3266.x_MainLightWorldToLight[2i];
    let x_3297 : vec3<f32> = vs_INTERP8;
    let x_3300 : vec3<f32> = u_xlat31;
    let x_3302 : vec2<f32> = ((vec2<f32>(x_3295.x, x_3295.y) * vec2<f32>(x_3297.z, x_3297.z)) + vec2<f32>(x_3300.x, x_3300.y));
    let x_3303 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_3302.x, x_3302.y, x_3303.z);
    let x_3305 : vec3<f32> = u_xlat31;
    let x_3308 : vec4<f32> = x_3266.x_MainLightWorldToLight[3i];
    let x_3310 : vec2<f32> = (vec2<f32>(x_3305.x, x_3305.y) + vec2<f32>(x_3308.x, x_3308.y));
    let x_3311 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_3310.x, x_3310.y, x_3311.z);
    let x_3313 : vec3<f32> = u_xlat31;
    let x_3316 : vec2<f32> = ((vec2<f32>(x_3313.x, x_3313.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_3317 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_3316.x, x_3316.y, x_3317.z);
    let x_3324 : vec3<f32> = u_xlat31;
    let x_3327 : f32 = x_53.x_GlobalMipBias.x;
    let x_3328 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_3324.x, x_3324.y), x_3327);
    u_xlat8 = x_3328;
    let x_3330 : f32 = x_3266.x_MainLightCookieTextureFormat;
    let x_3332 : f32 = x_3266.x_MainLightCookieTextureFormat;
    let x_3334 : f32 = x_3266.x_MainLightCookieTextureFormat;
    let x_3336 : f32 = x_3266.x_MainLightCookieTextureFormat;
    let x_3337 : vec4<f32> = vec4<f32>(x_3330, x_3332, x_3334, x_3336);
    let x_3344 : vec4<bool> = (vec4<f32>(x_3337.x, x_3337.y, x_3337.z, x_3337.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb31 = vec2<bool>(x_3344.x, x_3344.y);
    let x_3347 : bool = u_xlatb31.y;
    if (x_3347) {
      let x_3352 : f32 = u_xlat8.w;
      x_3348 = x_3352;
    } else {
      let x_3355 : f32 = u_xlat8.x;
      x_3348 = x_3355;
    }
    let x_3356 : f32 = x_3348;
    u_xlat58 = x_3356;
    let x_3358 : bool = u_xlatb31.x;
    if (x_3358) {
      let x_3362 : vec4<f32> = u_xlat8;
      x_3359 = vec3<f32>(x_3362.x, x_3362.y, x_3362.z);
    } else {
      let x_3365 : f32 = u_xlat58;
      x_3359 = vec3<f32>(x_3365, x_3365, x_3365);
    }
    let x_3367 : vec3<f32> = x_3359;
    u_xlat31 = x_3367;
  } else {
    u_xlat31.x = 1.0f;
    u_xlat31.y = 1.0f;
    u_xlat31.z = 1.0f;
  }
  let x_3372 : vec3<f32> = u_xlat31;
  let x_3374 : vec4<f32> = x_53.x_MainLightColor;
  u_xlat31 = (x_3372 * vec3<f32>(x_3374.x, x_3374.y, x_3374.z));
  let x_3377 : vec3<f32> = u_xlat32;
  let x_3379 : vec3<f32> = u_xlat30;
  u_xlat5.x = dot(-(x_3377), x_3379);
  let x_3383 : f32 = u_xlat5.x;
  let x_3385 : f32 = u_xlat5.x;
  u_xlat5.x = (x_3383 + x_3385);
  let x_3388 : vec3<f32> = u_xlat30;
  let x_3389 : vec4<f32> = u_xlat5;
  let x_3393 : vec3<f32> = u_xlat32;
  let x_3395 : vec3<f32> = ((x_3388 * -(vec3<f32>(x_3389.x, x_3389.x, x_3389.x))) + -(x_3393));
  let x_3396 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3395.x, x_3395.y, x_3395.z, x_3396.w);
  let x_3398 : vec3<f32> = u_xlat30;
  let x_3399 : vec3<f32> = u_xlat32;
  u_xlat5.x = dot(x_3398, x_3399);
  let x_3403 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_3403, 0.0f, 1.0f);
  let x_3407 : f32 = u_xlat5.x;
  u_xlat5.x = (-(x_3407) + 1.0f);
  let x_3412 : f32 = u_xlat5.x;
  let x_3414 : f32 = u_xlat5.x;
  u_xlat5.x = (x_3412 * x_3414);
  let x_3418 : f32 = u_xlat5.x;
  let x_3420 : f32 = u_xlat5.x;
  u_xlat5.x = (x_3418 * x_3420);
  let x_3423 : f32 = u_xlat82;
  u_xlat61.x = ((-(x_3423) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3430 : f32 = u_xlat82;
  let x_3432 : f32 = u_xlat61.x;
  u_xlat82 = (x_3430 * x_3432);
  let x_3434 : f32 = u_xlat82;
  u_xlat82 = (x_3434 * 6.0f);
  let x_3445 : vec4<f32> = u_xlat8;
  let x_3447 : f32 = u_xlat82;
  let x_3448 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_3445.x, x_3445.y, x_3445.z), x_3447);
  u_xlat8 = x_3448;
  let x_3450 : f32 = u_xlat8.w;
  u_xlat82 = (x_3450 + -1.0f);
  let x_3453 : f32 = x_1746.unity_SpecCube0_HDR.w;
  let x_3454 : f32 = u_xlat82;
  u_xlat82 = ((x_3453 * x_3454) + 1.0f);
  let x_3457 : f32 = u_xlat82;
  u_xlat82 = max(x_3457, 0.0f);
  let x_3459 : f32 = u_xlat82;
  u_xlat82 = log2(x_3459);
  let x_3461 : f32 = u_xlat82;
  let x_3463 : f32 = x_1746.unity_SpecCube0_HDR.y;
  u_xlat82 = (x_3461 * x_3463);
  let x_3465 : f32 = u_xlat82;
  u_xlat82 = exp2(x_3465);
  let x_3467 : f32 = u_xlat82;
  let x_3469 : f32 = x_1746.unity_SpecCube0_HDR.x;
  u_xlat82 = (x_3467 * x_3469);
  let x_3471 : vec4<f32> = u_xlat8;
  let x_3473 : f32 = u_xlat82;
  let x_3475 : vec3<f32> = (vec3<f32>(x_3471.x, x_3471.y, x_3471.z) * vec3<f32>(x_3473, x_3473, x_3473));
  let x_3476 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3475.x, x_3475.y, x_3475.z, x_3476.w);
  let x_3478 : f32 = u_xlat83;
  let x_3480 : f32 = u_xlat83;
  u_xlat61 = ((vec2<f32>(x_3478, x_3478) * vec2<f32>(x_3480, x_3480)) + vec2<f32>(-1.0f, 1.0f));
  let x_3486 : f32 = u_xlat61.y;
  u_xlat82 = (1.0f / x_3486);
  let x_3489 : f32 = u_xlat3.x;
  u_xlat83 = (x_3489 + -0.03999999910593032837f);
  let x_3493 : f32 = u_xlat5.x;
  let x_3494 : f32 = u_xlat83;
  u_xlat83 = ((x_3493 * x_3494) + 0.03999999910593032837f);
  let x_3498 : f32 = u_xlat82;
  let x_3499 : f32 = u_xlat83;
  u_xlat82 = (x_3498 * x_3499);
  let x_3501 : f32 = u_xlat82;
  let x_3503 : vec4<f32> = u_xlat8;
  let x_3505 : vec3<f32> = (vec3<f32>(x_3501, x_3501, x_3501) * vec3<f32>(x_3503.x, x_3503.y, x_3503.z));
  let x_3506 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3505.x, x_3505.y, x_3505.z, x_3506.w);
  let x_3508 : vec4<f32> = u_xlat6;
  let x_3510 : vec3<f32> = u_xlat2;
  let x_3512 : vec4<f32> = u_xlat8;
  let x_3514 : vec3<f32> = ((vec3<f32>(x_3508.x, x_3508.y, x_3508.z) * x_3510) + vec3<f32>(x_3512.x, x_3512.y, x_3512.z));
  let x_3515 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3514.x, x_3514.y, x_3514.z, x_3515.w);
  let x_3517 : f32 = u_xlat81;
  let x_3519 : f32 = x_1746.unity_LightData.z;
  u_xlat81 = (x_3517 * x_3519);
  let x_3521 : vec3<f32> = u_xlat30;
  let x_3523 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat82 = dot(x_3521, vec3<f32>(x_3523.x, x_3523.y, x_3523.z));
  let x_3526 : f32 = u_xlat82;
  u_xlat82 = clamp(x_3526, 0.0f, 1.0f);
  let x_3528 : f32 = u_xlat81;
  let x_3529 : f32 = u_xlat82;
  u_xlat81 = (x_3528 * x_3529);
  let x_3531 : f32 = u_xlat81;
  let x_3533 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_3531, x_3531, x_3531) * x_3533);
  let x_3535 : vec3<f32> = u_xlat32;
  let x_3537 : vec4<f32> = x_53.x_MainLightPosition;
  let x_3539 : vec3<f32> = (x_3535 + vec3<f32>(x_3537.x, x_3537.y, x_3537.z));
  let x_3540 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3539.x, x_3539.y, x_3539.z, x_3540.w);
  let x_3542 : vec4<f32> = u_xlat8;
  let x_3544 : vec4<f32> = u_xlat8;
  u_xlat81 = dot(vec3<f32>(x_3542.x, x_3542.y, x_3542.z), vec3<f32>(x_3544.x, x_3544.y, x_3544.z));
  let x_3547 : f32 = u_xlat81;
  u_xlat81 = max(x_3547, 1.17549435e-38f);
  let x_3550 : f32 = u_xlat81;
  u_xlat81 = inverseSqrt(x_3550);
  let x_3552 : f32 = u_xlat81;
  let x_3554 : vec4<f32> = u_xlat8;
  let x_3556 : vec3<f32> = (vec3<f32>(x_3552, x_3552, x_3552) * vec3<f32>(x_3554.x, x_3554.y, x_3554.z));
  let x_3557 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3556.x, x_3556.y, x_3556.z, x_3557.w);
  let x_3559 : vec3<f32> = u_xlat30;
  let x_3560 : vec4<f32> = u_xlat8;
  u_xlat81 = dot(x_3559, vec3<f32>(x_3560.x, x_3560.y, x_3560.z));
  let x_3563 : f32 = u_xlat81;
  u_xlat81 = clamp(x_3563, 0.0f, 1.0f);
  let x_3566 : vec4<f32> = x_53.x_MainLightPosition;
  let x_3568 : vec4<f32> = u_xlat8;
  u_xlat82 = dot(vec3<f32>(x_3566.x, x_3566.y, x_3566.z), vec3<f32>(x_3568.x, x_3568.y, x_3568.z));
  let x_3571 : f32 = u_xlat82;
  u_xlat82 = clamp(x_3571, 0.0f, 1.0f);
  let x_3573 : f32 = u_xlat81;
  let x_3574 : f32 = u_xlat81;
  u_xlat81 = (x_3573 * x_3574);
  let x_3576 : f32 = u_xlat81;
  let x_3578 : f32 = u_xlat61.x;
  u_xlat81 = ((x_3576 * x_3578) + 1.00001001358032226562f);
  let x_3582 : f32 = u_xlat82;
  let x_3583 : f32 = u_xlat82;
  u_xlat82 = (x_3582 * x_3583);
  let x_3585 : f32 = u_xlat81;
  let x_3586 : f32 = u_xlat81;
  u_xlat81 = (x_3585 * x_3586);
  let x_3588 : f32 = u_xlat82;
  u_xlat82 = max(x_3588, 0.10000000149011611938f);
  let x_3591 : f32 = u_xlat81;
  let x_3592 : f32 = u_xlat82;
  u_xlat81 = (x_3591 * x_3592);
  let x_3595 : f32 = u_xlat7.x;
  let x_3596 : f32 = u_xlat81;
  u_xlat81 = (x_3595 * x_3596);
  let x_3598 : f32 = u_xlat87;
  let x_3599 : f32 = u_xlat81;
  u_xlat81 = (x_3598 / x_3599);
  let x_3601 : f32 = u_xlat81;
  let x_3605 : vec3<f32> = u_xlat2;
  let x_3606 : vec3<f32> = ((vec3<f32>(x_3601, x_3601, x_3601) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3605);
  let x_3607 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3606.x, x_3606.y, x_3606.z, x_3607.w);
  let x_3609 : vec3<f32> = u_xlat31;
  let x_3610 : vec4<f32> = u_xlat8;
  u_xlat31 = (x_3609 * vec3<f32>(x_3610.x, x_3610.y, x_3610.z));
  let x_3614 : f32 = x_53.x_AdditionalLightsCount.x;
  let x_3616 : f32 = x_1746.unity_LightData.y;
  u_xlat81 = min(x_3614, x_3616);
  let x_3618 : f32 = u_xlat81;
  u_xlatu81 = bitcast<u32>(i32(x_3618));
  let x_3622 : f32 = u_xlat4.x;
  let x_3625 : f32 = x_130.x_AdditionalShadowFadeParams.x;
  let x_3628 : f32 = x_130.x_AdditionalShadowFadeParams.y;
  u_xlat82 = ((x_3622 * x_3625) + x_3628);
  let x_3630 : f32 = u_xlat82;
  u_xlat82 = clamp(x_3630, 0.0f, 1.0f);
  let x_3634 : f32 = x_3266.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3636 : f32 = x_3266.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3638 : f32 = x_3266.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3640 : f32 = x_3266.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3641 : vec4<f32> = vec4<f32>(x_3634, x_3636, x_3638, x_3640);
  let x_3647 : vec4<bool> = (vec4<f32>(x_3641.x, x_3641.y, x_3641.z, x_3641.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb8 = vec2<bool>(x_3647.x, x_3647.y);
  u_xlat9.x = 0.0f;
  u_xlat9.y = 0.0f;
  u_xlat9.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3659 : u32 = u_xlatu_loop_1;
    let x_3660 : u32 = u_xlatu81;
    if ((x_3659 < x_3660)) {
    } else {
      break;
    }
    let x_3663 : u32 = u_xlatu_loop_1;
    u_xlatu3 = (x_3663 >> 2u);
    let x_3666 : u32 = u_xlatu_loop_1;
    u_xlati4 = bitcast<i32>((x_3666 & 3u));
    let x_3669 : u32 = u_xlatu3;
    let x_3672 : vec4<f32> = x_1746.unity_LightIndices[bitcast<i32>(x_3669)];
    let x_3682 : i32 = u_xlati4;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3687 : vec4<u32> = indexable[x_3682];
    u_xlat3.x = dot(x_3672, bitcast<vec4<f32>>(x_3687));
    let x_3693 : f32 = u_xlat3.x;
    u_xlati3 = i32(x_3693);
    let x_3695 : vec3<f32> = vs_INTERP8;
    let x_3706 : i32 = u_xlati3;
    let x_3708 : vec4<f32> = x_3705.x_AdditionalLightsPosition[x_3706];
    let x_3711 : i32 = u_xlati3;
    let x_3713 : vec4<f32> = x_3705.x_AdditionalLightsPosition[x_3711];
    let x_3715 : vec3<f32> = ((-(x_3695) * vec3<f32>(x_3708.w, x_3708.w, x_3708.w)) + vec3<f32>(x_3713.x, x_3713.y, x_3713.z));
    let x_3716 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3715.x, x_3715.y, x_3715.z, x_3716.w);
    let x_3718 : vec4<f32> = u_xlat10;
    let x_3720 : vec4<f32> = u_xlat10;
    u_xlat4.x = dot(vec3<f32>(x_3718.x, x_3718.y, x_3718.z), vec3<f32>(x_3720.x, x_3720.y, x_3720.z));
    let x_3725 : f32 = u_xlat4.x;
    u_xlat4.x = max(x_3725, 0.00006103515625f);
    let x_3730 : f32 = u_xlat4.x;
    u_xlat5.x = inverseSqrt(x_3730);
    let x_3733 : vec4<f32> = u_xlat5;
    let x_3735 : vec4<f32> = u_xlat10;
    let x_3737 : vec3<f32> = (vec3<f32>(x_3733.x, x_3733.x, x_3733.x) * vec3<f32>(x_3735.x, x_3735.y, x_3735.z));
    let x_3738 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3737.x, x_3737.y, x_3737.z, x_3738.w);
    let x_3741 : f32 = u_xlat4.x;
    u_xlat88 = (1.0f / x_3741);
    let x_3744 : f32 = u_xlat4.x;
    let x_3745 : i32 = u_xlati3;
    let x_3747 : f32 = x_3705.x_AdditionalLightsAttenuation[x_3745].x;
    u_xlat4.x = (x_3744 * x_3747);
    let x_3751 : f32 = u_xlat4.x;
    let x_3754 : f32 = u_xlat4.x;
    u_xlat4.x = ((-(x_3751) * x_3754) + 1.0f);
    let x_3759 : f32 = u_xlat4.x;
    u_xlat4.x = max(x_3759, 0.0f);
    let x_3763 : f32 = u_xlat4.x;
    let x_3765 : f32 = u_xlat4.x;
    u_xlat4.x = (x_3763 * x_3765);
    let x_3769 : f32 = u_xlat4.x;
    let x_3770 : f32 = u_xlat88;
    u_xlat4.x = (x_3769 * x_3770);
    let x_3773 : i32 = u_xlati3;
    let x_3775 : vec4<f32> = x_3705.x_AdditionalLightsSpotDir[x_3773];
    let x_3777 : vec4<f32> = u_xlat11;
    u_xlat88 = dot(vec3<f32>(x_3775.x, x_3775.y, x_3775.z), vec3<f32>(x_3777.x, x_3777.y, x_3777.z));
    let x_3780 : f32 = u_xlat88;
    let x_3781 : i32 = u_xlati3;
    let x_3783 : f32 = x_3705.x_AdditionalLightsAttenuation[x_3781].z;
    let x_3785 : i32 = u_xlati3;
    let x_3787 : f32 = x_3705.x_AdditionalLightsAttenuation[x_3785].w;
    u_xlat88 = ((x_3780 * x_3783) + x_3787);
    let x_3789 : f32 = u_xlat88;
    u_xlat88 = clamp(x_3789, 0.0f, 1.0f);
    let x_3791 : f32 = u_xlat88;
    let x_3792 : f32 = u_xlat88;
    u_xlat88 = (x_3791 * x_3792);
    let x_3795 : f32 = u_xlat4.x;
    let x_3796 : f32 = u_xlat88;
    u_xlat4.x = (x_3795 * x_3796);
    let x_3801 : i32 = u_xlati3;
    let x_3803 : f32 = x_130.x_AdditionalShadowParams[x_3801].w;
    u_xlati88 = i32(x_3803);
    let x_3806 : i32 = u_xlati88;
    u_xlatb62 = (x_3806 >= 0i);
    let x_3808 : bool = u_xlatb62;
    if (x_3808) {
      let x_3812 : i32 = u_xlati3;
      let x_3814 : f32 = x_130.x_AdditionalShadowParams[x_3812].z;
      u_xlatb62 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3814, x_3814, x_3814, x_3814))));
      let x_3818 : bool = u_xlatb62;
      if (x_3818) {
        let x_3822 : vec4<f32> = u_xlat11;
        let x_3825 : vec4<f32> = u_xlat11;
        let x_3828 : vec4<bool> = (abs(vec4<f32>(x_3822.z, x_3822.z, x_3822.y, x_3822.z)) >= abs(vec4<f32>(x_3825.x, x_3825.y, x_3825.x, x_3825.x)));
        let x_3829 : vec3<bool> = vec3<bool>(x_3828.x, x_3828.y, x_3828.z);
        let x_3830 : vec4<bool> = u_xlatb12;
        u_xlatb12 = vec4<bool>(x_3829.x, x_3829.y, x_3829.z, x_3830.w);
        let x_3833 : bool = u_xlatb12.y;
        let x_3835 : bool = u_xlatb12.x;
        u_xlatb62 = (x_3833 & x_3835);
        let x_3837 : vec4<f32> = u_xlat11;
        let x_3840 : vec4<bool> = (-(vec4<f32>(x_3837.z, x_3837.y, x_3837.z, x_3837.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3841 : vec3<bool> = vec3<bool>(x_3840.x, x_3840.y, x_3840.w);
        let x_3842 : vec4<bool> = u_xlatb12;
        u_xlatb12 = vec4<bool>(x_3841.x, x_3841.y, x_3842.z, x_3841.z);
        let x_3845 : bool = u_xlatb12.x;
        u_xlat12.x = select(4.0f, 5.0f, x_3845);
        let x_3850 : bool = u_xlatb12.y;
        u_xlat12.y = select(2.0f, 3.0f, x_3850);
        let x_3855 : bool = u_xlatb12.w;
        u_xlat89 = select(0.0f, 1.0f, x_3855);
        let x_3858 : bool = u_xlatb12.z;
        if (x_3858) {
          let x_3863 : f32 = u_xlat12.y;
          x_3859 = x_3863;
        } else {
          let x_3865 : f32 = u_xlat89;
          x_3859 = x_3865;
        }
        let x_3866 : f32 = x_3859;
        u_xlat89 = x_3866;
        let x_3867 : bool = u_xlatb62;
        if (x_3867) {
          let x_3872 : f32 = u_xlat12.x;
          x_3868 = x_3872;
        } else {
          let x_3874 : f32 = u_xlat89;
          x_3868 = x_3874;
        }
        let x_3875 : f32 = x_3868;
        u_xlat62.x = x_3875;
        let x_3877 : i32 = u_xlati3;
        let x_3879 : f32 = x_130.x_AdditionalShadowParams[x_3877].w;
        u_xlat89 = trunc(x_3879);
        let x_3882 : f32 = u_xlat62.x;
        let x_3883 : f32 = u_xlat89;
        u_xlat62.x = (x_3882 + x_3883);
        let x_3887 : f32 = u_xlat62.x;
        u_xlati88 = i32(x_3887);
      }
      let x_3889 : i32 = u_xlati88;
      u_xlati88 = (x_3889 << bitcast<u32>(2i));
      let x_3891 : vec3<f32> = vs_INTERP8;
      let x_3894 : i32 = u_xlati88;
      let x_3897 : i32 = u_xlati88;
      let x_3901 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_3894 + 1i) / 4i)][((x_3897 + 1i) % 4i)];
      u_xlat12 = (vec4<f32>(x_3891.y, x_3891.y, x_3891.y, x_3891.y) * x_3901);
      let x_3903 : i32 = u_xlati88;
      let x_3905 : i32 = u_xlati88;
      let x_3908 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[(x_3903 / 4i)][(x_3905 % 4i)];
      let x_3909 : vec3<f32> = vs_INTERP8;
      let x_3912 : vec4<f32> = u_xlat12;
      u_xlat12 = ((x_3908 * vec4<f32>(x_3909.x, x_3909.x, x_3909.x, x_3909.x)) + x_3912);
      let x_3914 : i32 = u_xlati88;
      let x_3917 : i32 = u_xlati88;
      let x_3921 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_3914 + 2i) / 4i)][((x_3917 + 2i) % 4i)];
      let x_3922 : vec3<f32> = vs_INTERP8;
      let x_3925 : vec4<f32> = u_xlat12;
      u_xlat12 = ((x_3921 * vec4<f32>(x_3922.z, x_3922.z, x_3922.z, x_3922.z)) + x_3925);
      let x_3927 : vec4<f32> = u_xlat12;
      let x_3928 : i32 = u_xlati88;
      let x_3931 : i32 = u_xlati88;
      let x_3935 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_3928 + 3i) / 4i)][((x_3931 + 3i) % 4i)];
      u_xlat12 = (x_3927 + x_3935);
      let x_3937 : vec4<f32> = u_xlat12;
      let x_3939 : vec4<f32> = u_xlat12;
      let x_3941 : vec3<f32> = (vec3<f32>(x_3937.x, x_3937.y, x_3937.z) / vec3<f32>(x_3939.w, x_3939.w, x_3939.w));
      let x_3942 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_3941.x, x_3941.y, x_3941.z, x_3942.w);
      let x_3945 : i32 = u_xlati3;
      let x_3947 : f32 = x_130.x_AdditionalShadowParams[x_3945].y;
      u_xlatb88 = (0.0f < x_3947);
      let x_3949 : bool = u_xlatb88;
      if (x_3949) {
        let x_3952 : i32 = u_xlati3;
        let x_3954 : f32 = x_130.x_AdditionalShadowParams[x_3952].y;
        u_xlatb88 = (1.0f == x_3954);
        let x_3956 : bool = u_xlatb88;
        if (x_3956) {
          let x_3959 : vec4<f32> = u_xlat12;
          let x_3962 : vec4<f32> = x_130.x_AdditionalShadowOffset0;
          u_xlat13 = (vec4<f32>(x_3959.x, x_3959.y, x_3959.x, x_3959.y) + x_3962);
          let x_3965 : vec4<f32> = u_xlat13;
          let x_3966 : vec2<f32> = vec2<f32>(x_3965.x, x_3965.y);
          let x_3968 : f32 = u_xlat12.z;
          txVec60 = vec3<f32>(x_3966.x, x_3966.y, x_3968);
          let x_3976 : vec3<f32> = txVec60;
          let x_3978 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3976.xy, x_3976.z);
          u_xlat14.x = x_3978;
          let x_3981 : vec4<f32> = u_xlat13;
          let x_3982 : vec2<f32> = vec2<f32>(x_3981.z, x_3981.w);
          let x_3984 : f32 = u_xlat12.z;
          txVec61 = vec3<f32>(x_3982.x, x_3982.y, x_3984);
          let x_3991 : vec3<f32> = txVec61;
          let x_3993 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3991.xy, x_3991.z);
          u_xlat14.y = x_3993;
          let x_3995 : vec4<f32> = u_xlat12;
          let x_3999 : vec4<f32> = x_130.x_AdditionalShadowOffset1;
          u_xlat13 = (vec4<f32>(x_3995.x, x_3995.y, x_3995.x, x_3995.y) + x_3999);
          let x_4002 : vec4<f32> = u_xlat13;
          let x_4003 : vec2<f32> = vec2<f32>(x_4002.x, x_4002.y);
          let x_4005 : f32 = u_xlat12.z;
          txVec62 = vec3<f32>(x_4003.x, x_4003.y, x_4005);
          let x_4012 : vec3<f32> = txVec62;
          let x_4014 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4012.xy, x_4012.z);
          u_xlat14.z = x_4014;
          let x_4017 : vec4<f32> = u_xlat13;
          let x_4018 : vec2<f32> = vec2<f32>(x_4017.z, x_4017.w);
          let x_4020 : f32 = u_xlat12.z;
          txVec63 = vec3<f32>(x_4018.x, x_4018.y, x_4020);
          let x_4027 : vec3<f32> = txVec63;
          let x_4029 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4027.xy, x_4027.z);
          u_xlat14.w = x_4029;
          let x_4031 : vec4<f32> = u_xlat14;
          u_xlat88 = dot(x_4031, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_4034 : i32 = u_xlati3;
          let x_4036 : f32 = x_130.x_AdditionalShadowParams[x_4034].y;
          u_xlatb62 = (2.0f == x_4036);
          let x_4038 : bool = u_xlatb62;
          if (x_4038) {
            let x_4041 : vec4<f32> = u_xlat12;
            let x_4045 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            u_xlat62 = ((vec2<f32>(x_4041.x, x_4041.y) * vec2<f32>(x_4045.z, x_4045.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4049 : vec2<f32> = u_xlat62;
            u_xlat62 = floor(x_4049);
            let x_4051 : vec4<f32> = u_xlat12;
            let x_4054 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4057 : vec2<f32> = u_xlat62;
            let x_4059 : vec2<f32> = ((vec2<f32>(x_4051.x, x_4051.y) * vec2<f32>(x_4054.z, x_4054.w)) + -(x_4057));
            let x_4060 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4059.x, x_4059.y, x_4060.z, x_4060.w);
            let x_4062 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4062.x, x_4062.x, x_4062.y, x_4062.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4065 : vec4<f32> = u_xlat14;
            let x_4067 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_4065.x, x_4065.x, x_4065.z, x_4065.z) * vec4<f32>(x_4067.x, x_4067.x, x_4067.z, x_4067.z));
            let x_4070 : vec4<f32> = u_xlat15;
            u_xlat67 = (vec2<f32>(x_4070.y, x_4070.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_4073 : vec4<f32> = u_xlat15;
            let x_4076 : vec4<f32> = u_xlat13;
            let x_4079 : vec2<f32> = ((vec2<f32>(x_4073.x, x_4073.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_4076.x, x_4076.y)));
            let x_4080 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4079.x, x_4080.y, x_4079.y, x_4080.w);
            let x_4082 : vec4<f32> = u_xlat13;
            let x_4085 : vec2<f32> = (-(vec2<f32>(x_4082.x, x_4082.y)) + vec2<f32>(1.0f, 1.0f));
            let x_4086 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4085.x, x_4085.y, x_4086.z, x_4086.w);
            let x_4089 : vec4<f32> = u_xlat13;
            u_xlat69 = min(vec2<f32>(x_4089.x, x_4089.y), vec2<f32>(0.0f, 0.0f));
            let x_4092 : vec2<f32> = u_xlat69;
            let x_4094 : vec2<f32> = u_xlat69;
            let x_4096 : vec4<f32> = u_xlat15;
            u_xlat69 = ((-(x_4092) * x_4094) + vec2<f32>(x_4096.x, x_4096.y));
            let x_4099 : vec4<f32> = u_xlat13;
            let x_4101 : vec2<f32> = max(vec2<f32>(x_4099.x, x_4099.y), vec2<f32>(0.0f, 0.0f));
            let x_4102 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4101.x, x_4101.y, x_4102.z, x_4102.w);
            let x_4104 : vec4<f32> = u_xlat13;
            let x_4107 : vec4<f32> = u_xlat13;
            let x_4110 : vec4<f32> = u_xlat14;
            let x_4112 : vec2<f32> = ((-(vec2<f32>(x_4104.x, x_4104.y)) * vec2<f32>(x_4107.x, x_4107.y)) + vec2<f32>(x_4110.y, x_4110.w));
            let x_4113 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4112.x, x_4112.y, x_4113.z, x_4113.w);
            let x_4115 : vec2<f32> = u_xlat69;
            u_xlat69 = (x_4115 + vec2<f32>(1.0f, 1.0f));
            let x_4117 : vec4<f32> = u_xlat13;
            let x_4119 : vec2<f32> = (vec2<f32>(x_4117.x, x_4117.y) + vec2<f32>(1.0f, 1.0f));
            let x_4120 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4119.x, x_4119.y, x_4120.z, x_4120.w);
            let x_4122 : vec4<f32> = u_xlat14;
            let x_4124 : vec2<f32> = (vec2<f32>(x_4122.x, x_4122.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4125 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4124.x, x_4124.y, x_4125.z, x_4125.w);
            let x_4127 : vec4<f32> = u_xlat15;
            let x_4129 : vec2<f32> = (vec2<f32>(x_4127.x, x_4127.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4130 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4129.x, x_4129.y, x_4130.z, x_4130.w);
            let x_4132 : vec2<f32> = u_xlat69;
            let x_4133 : vec2<f32> = (x_4132 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4134 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4133.x, x_4133.y, x_4134.z, x_4134.w);
            let x_4136 : vec4<f32> = u_xlat13;
            let x_4138 : vec2<f32> = (vec2<f32>(x_4136.x, x_4136.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4139 : vec4<f32> = u_xlat18;
            u_xlat18 = vec4<f32>(x_4138.x, x_4138.y, x_4139.z, x_4139.w);
            let x_4141 : vec4<f32> = u_xlat14;
            let x_4143 : vec2<f32> = (vec2<f32>(x_4141.y, x_4141.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4144 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4143.x, x_4143.y, x_4144.z, x_4144.w);
            let x_4147 : f32 = u_xlat15.x;
            u_xlat16.z = x_4147;
            let x_4150 : f32 = u_xlat13.x;
            u_xlat16.w = x_4150;
            let x_4153 : f32 = u_xlat18.x;
            u_xlat17.z = x_4153;
            let x_4156 : f32 = u_xlat67.x;
            u_xlat17.w = x_4156;
            let x_4158 : vec4<f32> = u_xlat16;
            let x_4160 : vec4<f32> = u_xlat17;
            u_xlat14 = (vec4<f32>(x_4158.z, x_4158.w, x_4158.x, x_4158.z) + vec4<f32>(x_4160.z, x_4160.w, x_4160.x, x_4160.z));
            let x_4164 : f32 = u_xlat16.y;
            u_xlat15.z = x_4164;
            let x_4167 : f32 = u_xlat13.y;
            u_xlat15.w = x_4167;
            let x_4170 : f32 = u_xlat17.y;
            u_xlat18.z = x_4170;
            let x_4173 : f32 = u_xlat67.y;
            u_xlat18.w = x_4173;
            let x_4175 : vec4<f32> = u_xlat15;
            let x_4177 : vec4<f32> = u_xlat18;
            let x_4179 : vec3<f32> = (vec3<f32>(x_4175.z, x_4175.y, x_4175.w) + vec3<f32>(x_4177.z, x_4177.y, x_4177.w));
            let x_4180 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4179.x, x_4179.y, x_4179.z, x_4180.w);
            let x_4182 : vec4<f32> = u_xlat17;
            let x_4184 : vec4<f32> = u_xlat14;
            let x_4186 : vec3<f32> = (vec3<f32>(x_4182.x, x_4182.z, x_4182.w) / vec3<f32>(x_4184.z, x_4184.w, x_4184.y));
            let x_4187 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4186.x, x_4186.y, x_4186.z, x_4187.w);
            let x_4189 : vec4<f32> = u_xlat15;
            let x_4191 : vec3<f32> = (vec3<f32>(x_4189.x, x_4189.y, x_4189.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4192 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4191.x, x_4191.y, x_4191.z, x_4192.w);
            let x_4194 : vec4<f32> = u_xlat18;
            let x_4196 : vec4<f32> = u_xlat13;
            let x_4198 : vec3<f32> = (vec3<f32>(x_4194.z, x_4194.y, x_4194.w) / vec3<f32>(x_4196.x, x_4196.y, x_4196.z));
            let x_4199 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4198.x, x_4198.y, x_4198.z, x_4199.w);
            let x_4201 : vec4<f32> = u_xlat16;
            let x_4203 : vec3<f32> = (vec3<f32>(x_4201.x, x_4201.y, x_4201.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4204 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4203.x, x_4203.y, x_4203.z, x_4204.w);
            let x_4206 : vec4<f32> = u_xlat15;
            let x_4209 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4211 : vec3<f32> = (vec3<f32>(x_4206.y, x_4206.x, x_4206.z) * vec3<f32>(x_4209.x, x_4209.x, x_4209.x));
            let x_4212 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4211.x, x_4211.y, x_4211.z, x_4212.w);
            let x_4214 : vec4<f32> = u_xlat16;
            let x_4217 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4219 : vec3<f32> = (vec3<f32>(x_4214.x, x_4214.y, x_4214.z) * vec3<f32>(x_4217.y, x_4217.y, x_4217.y));
            let x_4220 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4219.x, x_4219.y, x_4219.z, x_4220.w);
            let x_4223 : f32 = u_xlat16.x;
            u_xlat15.w = x_4223;
            let x_4225 : vec2<f32> = u_xlat62;
            let x_4228 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4231 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4225.x, x_4225.y, x_4225.x, x_4225.y) * vec4<f32>(x_4228.x, x_4228.y, x_4228.x, x_4228.y)) + vec4<f32>(x_4231.y, x_4231.w, x_4231.x, x_4231.w));
            let x_4234 : vec2<f32> = u_xlat62;
            let x_4236 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4239 : vec4<f32> = u_xlat15;
            let x_4241 : vec2<f32> = ((x_4234 * vec2<f32>(x_4236.x, x_4236.y)) + vec2<f32>(x_4239.z, x_4239.w));
            let x_4242 : vec4<f32> = u_xlat18;
            u_xlat18 = vec4<f32>(x_4241.x, x_4241.y, x_4242.z, x_4242.w);
            let x_4245 : f32 = u_xlat15.y;
            u_xlat16.w = x_4245;
            let x_4247 : vec4<f32> = u_xlat16;
            let x_4248 : vec2<f32> = vec2<f32>(x_4247.y, x_4247.z);
            let x_4249 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4249.x, x_4248.x, x_4249.z, x_4248.y);
            let x_4251 : vec2<f32> = u_xlat62;
            let x_4254 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4257 : vec4<f32> = u_xlat15;
            u_xlat19 = ((vec4<f32>(x_4251.x, x_4251.y, x_4251.x, x_4251.y) * vec4<f32>(x_4254.x, x_4254.y, x_4254.x, x_4254.y)) + vec4<f32>(x_4257.x, x_4257.y, x_4257.z, x_4257.y));
            let x_4260 : vec2<f32> = u_xlat62;
            let x_4263 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4266 : vec4<f32> = u_xlat16;
            u_xlat16 = ((vec4<f32>(x_4260.x, x_4260.y, x_4260.x, x_4260.y) * vec4<f32>(x_4263.x, x_4263.y, x_4263.x, x_4263.y)) + vec4<f32>(x_4266.w, x_4266.y, x_4266.w, x_4266.z));
            let x_4269 : vec2<f32> = u_xlat62;
            let x_4272 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4275 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4269.x, x_4269.y, x_4269.x, x_4269.y) * vec4<f32>(x_4272.x, x_4272.y, x_4272.x, x_4272.y)) + vec4<f32>(x_4275.x, x_4275.w, x_4275.z, x_4275.w));
            let x_4278 : vec4<f32> = u_xlat13;
            let x_4280 : vec4<f32> = u_xlat14;
            u_xlat20 = (vec4<f32>(x_4278.x, x_4278.x, x_4278.x, x_4278.y) * vec4<f32>(x_4280.z, x_4280.w, x_4280.y, x_4280.z));
            let x_4283 : vec4<f32> = u_xlat13;
            let x_4285 : vec4<f32> = u_xlat14;
            u_xlat21 = (vec4<f32>(x_4283.y, x_4283.y, x_4283.z, x_4283.z) * x_4285);
            let x_4288 : f32 = u_xlat13.z;
            let x_4290 : f32 = u_xlat14.y;
            u_xlat62.x = (x_4288 * x_4290);
            let x_4294 : vec4<f32> = u_xlat17;
            let x_4295 : vec2<f32> = vec2<f32>(x_4294.x, x_4294.y);
            let x_4297 : f32 = u_xlat12.z;
            txVec64 = vec3<f32>(x_4295.x, x_4295.y, x_4297);
            let x_4304 : vec3<f32> = txVec64;
            let x_4306 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4304.xy, x_4304.z);
            u_xlat89 = x_4306;
            let x_4308 : vec4<f32> = u_xlat17;
            let x_4309 : vec2<f32> = vec2<f32>(x_4308.z, x_4308.w);
            let x_4311 : f32 = u_xlat12.z;
            txVec65 = vec3<f32>(x_4309.x, x_4309.y, x_4311);
            let x_4318 : vec3<f32> = txVec65;
            let x_4320 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4318.xy, x_4318.z);
            u_xlat90 = x_4320;
            let x_4321 : f32 = u_xlat90;
            let x_4323 : f32 = u_xlat20.y;
            u_xlat90 = (x_4321 * x_4323);
            let x_4326 : f32 = u_xlat20.x;
            let x_4327 : f32 = u_xlat89;
            let x_4329 : f32 = u_xlat90;
            u_xlat89 = ((x_4326 * x_4327) + x_4329);
            let x_4332 : vec4<f32> = u_xlat18;
            let x_4333 : vec2<f32> = vec2<f32>(x_4332.x, x_4332.y);
            let x_4335 : f32 = u_xlat12.z;
            txVec66 = vec3<f32>(x_4333.x, x_4333.y, x_4335);
            let x_4342 : vec3<f32> = txVec66;
            let x_4344 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4342.xy, x_4342.z);
            u_xlat90 = x_4344;
            let x_4346 : f32 = u_xlat20.z;
            let x_4347 : f32 = u_xlat90;
            let x_4349 : f32 = u_xlat89;
            u_xlat89 = ((x_4346 * x_4347) + x_4349);
            let x_4352 : vec4<f32> = u_xlat16;
            let x_4353 : vec2<f32> = vec2<f32>(x_4352.x, x_4352.y);
            let x_4355 : f32 = u_xlat12.z;
            txVec67 = vec3<f32>(x_4353.x, x_4353.y, x_4355);
            let x_4362 : vec3<f32> = txVec67;
            let x_4364 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4362.xy, x_4362.z);
            u_xlat90 = x_4364;
            let x_4366 : f32 = u_xlat20.w;
            let x_4367 : f32 = u_xlat90;
            let x_4369 : f32 = u_xlat89;
            u_xlat89 = ((x_4366 * x_4367) + x_4369);
            let x_4372 : vec4<f32> = u_xlat19;
            let x_4373 : vec2<f32> = vec2<f32>(x_4372.x, x_4372.y);
            let x_4375 : f32 = u_xlat12.z;
            txVec68 = vec3<f32>(x_4373.x, x_4373.y, x_4375);
            let x_4382 : vec3<f32> = txVec68;
            let x_4384 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4382.xy, x_4382.z);
            u_xlat90 = x_4384;
            let x_4386 : f32 = u_xlat21.x;
            let x_4387 : f32 = u_xlat90;
            let x_4389 : f32 = u_xlat89;
            u_xlat89 = ((x_4386 * x_4387) + x_4389);
            let x_4392 : vec4<f32> = u_xlat19;
            let x_4393 : vec2<f32> = vec2<f32>(x_4392.z, x_4392.w);
            let x_4395 : f32 = u_xlat12.z;
            txVec69 = vec3<f32>(x_4393.x, x_4393.y, x_4395);
            let x_4402 : vec3<f32> = txVec69;
            let x_4404 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4402.xy, x_4402.z);
            u_xlat90 = x_4404;
            let x_4406 : f32 = u_xlat21.y;
            let x_4407 : f32 = u_xlat90;
            let x_4409 : f32 = u_xlat89;
            u_xlat89 = ((x_4406 * x_4407) + x_4409);
            let x_4412 : vec4<f32> = u_xlat16;
            let x_4413 : vec2<f32> = vec2<f32>(x_4412.z, x_4412.w);
            let x_4415 : f32 = u_xlat12.z;
            txVec70 = vec3<f32>(x_4413.x, x_4413.y, x_4415);
            let x_4422 : vec3<f32> = txVec70;
            let x_4424 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4422.xy, x_4422.z);
            u_xlat90 = x_4424;
            let x_4426 : f32 = u_xlat21.z;
            let x_4427 : f32 = u_xlat90;
            let x_4429 : f32 = u_xlat89;
            u_xlat89 = ((x_4426 * x_4427) + x_4429);
            let x_4432 : vec4<f32> = u_xlat15;
            let x_4433 : vec2<f32> = vec2<f32>(x_4432.x, x_4432.y);
            let x_4435 : f32 = u_xlat12.z;
            txVec71 = vec3<f32>(x_4433.x, x_4433.y, x_4435);
            let x_4442 : vec3<f32> = txVec71;
            let x_4444 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4442.xy, x_4442.z);
            u_xlat90 = x_4444;
            let x_4446 : f32 = u_xlat21.w;
            let x_4447 : f32 = u_xlat90;
            let x_4449 : f32 = u_xlat89;
            u_xlat89 = ((x_4446 * x_4447) + x_4449);
            let x_4452 : vec4<f32> = u_xlat15;
            let x_4453 : vec2<f32> = vec2<f32>(x_4452.z, x_4452.w);
            let x_4455 : f32 = u_xlat12.z;
            txVec72 = vec3<f32>(x_4453.x, x_4453.y, x_4455);
            let x_4462 : vec3<f32> = txVec72;
            let x_4464 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4462.xy, x_4462.z);
            u_xlat90 = x_4464;
            let x_4466 : f32 = u_xlat62.x;
            let x_4467 : f32 = u_xlat90;
            let x_4469 : f32 = u_xlat89;
            u_xlat88 = ((x_4466 * x_4467) + x_4469);
          } else {
            let x_4472 : vec4<f32> = u_xlat12;
            let x_4475 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            u_xlat62 = ((vec2<f32>(x_4472.x, x_4472.y) * vec2<f32>(x_4475.z, x_4475.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4479 : vec2<f32> = u_xlat62;
            u_xlat62 = floor(x_4479);
            let x_4481 : vec4<f32> = u_xlat12;
            let x_4484 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4487 : vec2<f32> = u_xlat62;
            let x_4489 : vec2<f32> = ((vec2<f32>(x_4481.x, x_4481.y) * vec2<f32>(x_4484.z, x_4484.w)) + -(x_4487));
            let x_4490 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4489.x, x_4489.y, x_4490.z, x_4490.w);
            let x_4492 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4492.x, x_4492.x, x_4492.y, x_4492.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4495 : vec4<f32> = u_xlat14;
            let x_4497 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_4495.x, x_4495.x, x_4495.z, x_4495.z) * vec4<f32>(x_4497.x, x_4497.x, x_4497.z, x_4497.z));
            let x_4500 : vec4<f32> = u_xlat15;
            let x_4502 : vec2<f32> = (vec2<f32>(x_4500.y, x_4500.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4503 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4503.x, x_4502.x, x_4503.z, x_4502.y);
            let x_4505 : vec4<f32> = u_xlat15;
            let x_4508 : vec4<f32> = u_xlat13;
            u_xlat67 = ((vec2<f32>(x_4505.x, x_4505.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_4508.x, x_4508.y)));
            let x_4512 : vec4<f32> = u_xlat13;
            let x_4515 : vec2<f32> = (-(vec2<f32>(x_4512.x, x_4512.y)) + vec2<f32>(1.0f, 1.0f));
            let x_4516 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4515.x, x_4516.y, x_4515.y, x_4516.w);
            let x_4518 : vec4<f32> = u_xlat13;
            let x_4520 : vec2<f32> = min(vec2<f32>(x_4518.x, x_4518.y), vec2<f32>(0.0f, 0.0f));
            let x_4521 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4520.x, x_4520.y, x_4521.z, x_4521.w);
            let x_4523 : vec4<f32> = u_xlat15;
            let x_4526 : vec4<f32> = u_xlat15;
            let x_4529 : vec4<f32> = u_xlat14;
            let x_4531 : vec2<f32> = ((-(vec2<f32>(x_4523.x, x_4523.y)) * vec2<f32>(x_4526.x, x_4526.y)) + vec2<f32>(x_4529.x, x_4529.z));
            let x_4532 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4531.x, x_4532.y, x_4531.y, x_4532.w);
            let x_4534 : vec4<f32> = u_xlat13;
            let x_4536 : vec2<f32> = max(vec2<f32>(x_4534.x, x_4534.y), vec2<f32>(0.0f, 0.0f));
            let x_4537 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4536.x, x_4536.y, x_4537.z, x_4537.w);
            let x_4539 : vec4<f32> = u_xlat15;
            let x_4542 : vec4<f32> = u_xlat15;
            let x_4545 : vec4<f32> = u_xlat14;
            let x_4547 : vec2<f32> = ((-(vec2<f32>(x_4539.x, x_4539.y)) * vec2<f32>(x_4542.x, x_4542.y)) + vec2<f32>(x_4545.y, x_4545.w));
            let x_4548 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4548.x, x_4547.x, x_4548.z, x_4547.y);
            let x_4550 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4550 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
            let x_4553 : f32 = u_xlat14.y;
            u_xlat15.z = (x_4553 * 0.08163200318813323975f);
            let x_4556 : vec2<f32> = u_xlat67;
            let x_4558 : vec2<f32> = (vec2<f32>(x_4556.y, x_4556.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4559 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4558.x, x_4558.y, x_4559.z, x_4559.w);
            let x_4561 : vec4<f32> = u_xlat14;
            u_xlat67 = (vec2<f32>(x_4561.x, x_4561.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4565 : f32 = u_xlat14.w;
            u_xlat17.z = (x_4565 * 0.08163200318813323975f);
            let x_4569 : f32 = u_xlat17.y;
            u_xlat15.x = x_4569;
            let x_4571 : vec4<f32> = u_xlat13;
            let x_4574 : vec2<f32> = ((vec2<f32>(x_4571.x, x_4571.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4575 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4575.x, x_4574.x, x_4575.z, x_4574.y);
            let x_4577 : vec4<f32> = u_xlat13;
            let x_4580 : vec2<f32> = ((vec2<f32>(x_4577.x, x_4577.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4581 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4580.x, x_4581.y, x_4580.y, x_4581.w);
            let x_4584 : f32 = u_xlat67.x;
            u_xlat14.y = x_4584;
            let x_4587 : f32 = u_xlat16.y;
            u_xlat14.w = x_4587;
            let x_4589 : vec4<f32> = u_xlat14;
            let x_4590 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4589 + x_4590);
            let x_4592 : vec4<f32> = u_xlat13;
            let x_4595 : vec2<f32> = ((vec2<f32>(x_4592.y, x_4592.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4596 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4596.x, x_4595.x, x_4596.z, x_4595.y);
            let x_4598 : vec4<f32> = u_xlat13;
            let x_4601 : vec2<f32> = ((vec2<f32>(x_4598.y, x_4598.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4602 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4601.x, x_4602.y, x_4601.y, x_4602.w);
            let x_4605 : f32 = u_xlat67.y;
            u_xlat16.y = x_4605;
            let x_4607 : vec4<f32> = u_xlat16;
            let x_4608 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4607 + x_4608);
            let x_4610 : vec4<f32> = u_xlat14;
            let x_4611 : vec4<f32> = u_xlat15;
            u_xlat14 = (x_4610 / x_4611);
            let x_4613 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4613 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4615 : vec4<f32> = u_xlat16;
            let x_4616 : vec4<f32> = u_xlat13;
            u_xlat16 = (x_4615 / x_4616);
            let x_4618 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4618 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4620 : vec4<f32> = u_xlat14;
            let x_4623 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4620.w, x_4620.x, x_4620.y, x_4620.z) * vec4<f32>(x_4623.x, x_4623.x, x_4623.x, x_4623.x));
            let x_4626 : vec4<f32> = u_xlat16;
            let x_4629 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            u_xlat16 = (vec4<f32>(x_4626.x, x_4626.w, x_4626.y, x_4626.z) * vec4<f32>(x_4629.y, x_4629.y, x_4629.y, x_4629.y));
            let x_4632 : vec4<f32> = u_xlat14;
            let x_4633 : vec3<f32> = vec3<f32>(x_4632.y, x_4632.z, x_4632.w);
            let x_4634 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4633.x, x_4634.y, x_4633.y, x_4633.z);
            let x_4637 : f32 = u_xlat16.x;
            u_xlat17.y = x_4637;
            let x_4639 : vec2<f32> = u_xlat62;
            let x_4642 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4645 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4639.x, x_4639.y, x_4639.x, x_4639.y) * vec4<f32>(x_4642.x, x_4642.y, x_4642.x, x_4642.y)) + vec4<f32>(x_4645.x, x_4645.y, x_4645.z, x_4645.y));
            let x_4648 : vec2<f32> = u_xlat62;
            let x_4650 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4653 : vec4<f32> = u_xlat17;
            let x_4655 : vec2<f32> = ((x_4648 * vec2<f32>(x_4650.x, x_4650.y)) + vec2<f32>(x_4653.w, x_4653.y));
            let x_4656 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_4655.x, x_4655.y, x_4656.z, x_4656.w);
            let x_4659 : f32 = u_xlat17.y;
            u_xlat14.y = x_4659;
            let x_4662 : f32 = u_xlat16.z;
            u_xlat17.y = x_4662;
            let x_4664 : vec2<f32> = u_xlat62;
            let x_4667 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4670 : vec4<f32> = u_xlat17;
            u_xlat20 = ((vec4<f32>(x_4664.x, x_4664.y, x_4664.x, x_4664.y) * vec4<f32>(x_4667.x, x_4667.y, x_4667.x, x_4667.y)) + vec4<f32>(x_4670.x, x_4670.y, x_4670.z, x_4670.y));
            let x_4674 : vec2<f32> = u_xlat62;
            let x_4676 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4679 : vec4<f32> = u_xlat17;
            u_xlat73 = ((x_4674 * vec2<f32>(x_4676.x, x_4676.y)) + vec2<f32>(x_4679.w, x_4679.y));
            let x_4683 : f32 = u_xlat17.y;
            u_xlat14.z = x_4683;
            let x_4685 : vec2<f32> = u_xlat62;
            let x_4688 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4691 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4685.x, x_4685.y, x_4685.x, x_4685.y) * vec4<f32>(x_4688.x, x_4688.y, x_4688.x, x_4688.y)) + vec4<f32>(x_4691.x, x_4691.y, x_4691.x, x_4691.z));
            let x_4695 : f32 = u_xlat16.w;
            u_xlat17.y = x_4695;
            let x_4698 : vec2<f32> = u_xlat62;
            let x_4701 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4704 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4698.x, x_4698.y, x_4698.x, x_4698.y) * vec4<f32>(x_4701.x, x_4701.y, x_4701.x, x_4701.y)) + vec4<f32>(x_4704.x, x_4704.y, x_4704.z, x_4704.y));
            let x_4708 : vec2<f32> = u_xlat62;
            let x_4710 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4713 : vec4<f32> = u_xlat17;
            u_xlat41 = ((x_4708 * vec2<f32>(x_4710.x, x_4710.y)) + vec2<f32>(x_4713.w, x_4713.y));
            let x_4717 : f32 = u_xlat17.y;
            u_xlat14.w = x_4717;
            let x_4720 : vec2<f32> = u_xlat62;
            let x_4722 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4725 : vec4<f32> = u_xlat14;
            u_xlat23 = ((x_4720 * vec2<f32>(x_4722.x, x_4722.y)) + vec2<f32>(x_4725.x, x_4725.w));
            let x_4728 : vec4<f32> = u_xlat17;
            let x_4729 : vec3<f32> = vec3<f32>(x_4728.x, x_4728.z, x_4728.w);
            let x_4730 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4729.x, x_4730.y, x_4729.y, x_4729.z);
            let x_4732 : vec2<f32> = u_xlat62;
            let x_4735 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4738 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_4732.x, x_4732.y, x_4732.x, x_4732.y) * vec4<f32>(x_4735.x, x_4735.y, x_4735.x, x_4735.y)) + vec4<f32>(x_4738.x, x_4738.y, x_4738.z, x_4738.y));
            let x_4742 : vec2<f32> = u_xlat62;
            let x_4744 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4747 : vec4<f32> = u_xlat16;
            u_xlat70 = ((x_4742 * vec2<f32>(x_4744.x, x_4744.y)) + vec2<f32>(x_4747.w, x_4747.y));
            let x_4751 : f32 = u_xlat14.x;
            u_xlat16.x = x_4751;
            let x_4753 : vec2<f32> = u_xlat62;
            let x_4755 : vec4<f32> = x_130.x_AdditionalShadowmapSize;
            let x_4758 : vec4<f32> = u_xlat16;
            u_xlat62 = ((x_4753 * vec2<f32>(x_4755.x, x_4755.y)) + vec2<f32>(x_4758.x, x_4758.y));
            let x_4762 : vec4<f32> = u_xlat13;
            let x_4764 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_4762.x, x_4762.x, x_4762.x, x_4762.x) * x_4764);
            let x_4767 : vec4<f32> = u_xlat13;
            let x_4769 : vec4<f32> = u_xlat15;
            u_xlat25 = (vec4<f32>(x_4767.y, x_4767.y, x_4767.y, x_4767.y) * x_4769);
            let x_4772 : vec4<f32> = u_xlat13;
            let x_4774 : vec4<f32> = u_xlat15;
            u_xlat26 = (vec4<f32>(x_4772.z, x_4772.z, x_4772.z, x_4772.z) * x_4774);
            let x_4776 : vec4<f32> = u_xlat13;
            let x_4778 : vec4<f32> = u_xlat15;
            u_xlat13 = (vec4<f32>(x_4776.w, x_4776.w, x_4776.w, x_4776.w) * x_4778);
            let x_4781 : vec4<f32> = u_xlat18;
            let x_4782 : vec2<f32> = vec2<f32>(x_4781.x, x_4781.y);
            let x_4784 : f32 = u_xlat12.z;
            txVec73 = vec3<f32>(x_4782.x, x_4782.y, x_4784);
            let x_4791 : vec3<f32> = txVec73;
            let x_4793 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4791.xy, x_4791.z);
            u_xlat90 = x_4793;
            let x_4795 : vec4<f32> = u_xlat18;
            let x_4796 : vec2<f32> = vec2<f32>(x_4795.z, x_4795.w);
            let x_4798 : f32 = u_xlat12.z;
            txVec74 = vec3<f32>(x_4796.x, x_4796.y, x_4798);
            let x_4806 : vec3<f32> = txVec74;
            let x_4808 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4806.xy, x_4806.z);
            u_xlat91 = x_4808;
            let x_4809 : f32 = u_xlat91;
            let x_4811 : f32 = u_xlat24.y;
            u_xlat91 = (x_4809 * x_4811);
            let x_4814 : f32 = u_xlat24.x;
            let x_4815 : f32 = u_xlat90;
            let x_4817 : f32 = u_xlat91;
            u_xlat90 = ((x_4814 * x_4815) + x_4817);
            let x_4820 : vec4<f32> = u_xlat19;
            let x_4821 : vec2<f32> = vec2<f32>(x_4820.x, x_4820.y);
            let x_4823 : f32 = u_xlat12.z;
            txVec75 = vec3<f32>(x_4821.x, x_4821.y, x_4823);
            let x_4830 : vec3<f32> = txVec75;
            let x_4832 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4830.xy, x_4830.z);
            u_xlat91 = x_4832;
            let x_4834 : f32 = u_xlat24.z;
            let x_4835 : f32 = u_xlat91;
            let x_4837 : f32 = u_xlat90;
            u_xlat90 = ((x_4834 * x_4835) + x_4837);
            let x_4840 : vec4<f32> = u_xlat21;
            let x_4841 : vec2<f32> = vec2<f32>(x_4840.x, x_4840.y);
            let x_4843 : f32 = u_xlat12.z;
            txVec76 = vec3<f32>(x_4841.x, x_4841.y, x_4843);
            let x_4850 : vec3<f32> = txVec76;
            let x_4852 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4850.xy, x_4850.z);
            u_xlat91 = x_4852;
            let x_4854 : f32 = u_xlat24.w;
            let x_4855 : f32 = u_xlat91;
            let x_4857 : f32 = u_xlat90;
            u_xlat90 = ((x_4854 * x_4855) + x_4857);
            let x_4860 : vec4<f32> = u_xlat20;
            let x_4861 : vec2<f32> = vec2<f32>(x_4860.x, x_4860.y);
            let x_4863 : f32 = u_xlat12.z;
            txVec77 = vec3<f32>(x_4861.x, x_4861.y, x_4863);
            let x_4870 : vec3<f32> = txVec77;
            let x_4872 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4870.xy, x_4870.z);
            u_xlat91 = x_4872;
            let x_4874 : f32 = u_xlat25.x;
            let x_4875 : f32 = u_xlat91;
            let x_4877 : f32 = u_xlat90;
            u_xlat90 = ((x_4874 * x_4875) + x_4877);
            let x_4880 : vec4<f32> = u_xlat20;
            let x_4881 : vec2<f32> = vec2<f32>(x_4880.z, x_4880.w);
            let x_4883 : f32 = u_xlat12.z;
            txVec78 = vec3<f32>(x_4881.x, x_4881.y, x_4883);
            let x_4890 : vec3<f32> = txVec78;
            let x_4892 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4890.xy, x_4890.z);
            u_xlat91 = x_4892;
            let x_4894 : f32 = u_xlat25.y;
            let x_4895 : f32 = u_xlat91;
            let x_4897 : f32 = u_xlat90;
            u_xlat90 = ((x_4894 * x_4895) + x_4897);
            let x_4900 : vec2<f32> = u_xlat73;
            let x_4902 : f32 = u_xlat12.z;
            txVec79 = vec3<f32>(x_4900.x, x_4900.y, x_4902);
            let x_4909 : vec3<f32> = txVec79;
            let x_4911 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4909.xy, x_4909.z);
            u_xlat91 = x_4911;
            let x_4913 : f32 = u_xlat25.z;
            let x_4914 : f32 = u_xlat91;
            let x_4916 : f32 = u_xlat90;
            u_xlat90 = ((x_4913 * x_4914) + x_4916);
            let x_4919 : vec4<f32> = u_xlat21;
            let x_4920 : vec2<f32> = vec2<f32>(x_4919.z, x_4919.w);
            let x_4922 : f32 = u_xlat12.z;
            txVec80 = vec3<f32>(x_4920.x, x_4920.y, x_4922);
            let x_4929 : vec3<f32> = txVec80;
            let x_4931 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4929.xy, x_4929.z);
            u_xlat91 = x_4931;
            let x_4933 : f32 = u_xlat25.w;
            let x_4934 : f32 = u_xlat91;
            let x_4936 : f32 = u_xlat90;
            u_xlat90 = ((x_4933 * x_4934) + x_4936);
            let x_4939 : vec4<f32> = u_xlat22;
            let x_4940 : vec2<f32> = vec2<f32>(x_4939.x, x_4939.y);
            let x_4942 : f32 = u_xlat12.z;
            txVec81 = vec3<f32>(x_4940.x, x_4940.y, x_4942);
            let x_4949 : vec3<f32> = txVec81;
            let x_4951 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4949.xy, x_4949.z);
            u_xlat91 = x_4951;
            let x_4953 : f32 = u_xlat26.x;
            let x_4954 : f32 = u_xlat91;
            let x_4956 : f32 = u_xlat90;
            u_xlat90 = ((x_4953 * x_4954) + x_4956);
            let x_4959 : vec4<f32> = u_xlat22;
            let x_4960 : vec2<f32> = vec2<f32>(x_4959.z, x_4959.w);
            let x_4962 : f32 = u_xlat12.z;
            txVec82 = vec3<f32>(x_4960.x, x_4960.y, x_4962);
            let x_4969 : vec3<f32> = txVec82;
            let x_4971 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4969.xy, x_4969.z);
            u_xlat91 = x_4971;
            let x_4973 : f32 = u_xlat26.y;
            let x_4974 : f32 = u_xlat91;
            let x_4976 : f32 = u_xlat90;
            u_xlat90 = ((x_4973 * x_4974) + x_4976);
            let x_4979 : vec2<f32> = u_xlat41;
            let x_4981 : f32 = u_xlat12.z;
            txVec83 = vec3<f32>(x_4979.x, x_4979.y, x_4981);
            let x_4988 : vec3<f32> = txVec83;
            let x_4990 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4988.xy, x_4988.z);
            u_xlat91 = x_4990;
            let x_4992 : f32 = u_xlat26.z;
            let x_4993 : f32 = u_xlat91;
            let x_4995 : f32 = u_xlat90;
            u_xlat90 = ((x_4992 * x_4993) + x_4995);
            let x_4998 : vec2<f32> = u_xlat23;
            let x_5000 : f32 = u_xlat12.z;
            txVec84 = vec3<f32>(x_4998.x, x_4998.y, x_5000);
            let x_5007 : vec3<f32> = txVec84;
            let x_5009 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5007.xy, x_5007.z);
            u_xlat91 = x_5009;
            let x_5011 : f32 = u_xlat26.w;
            let x_5012 : f32 = u_xlat91;
            let x_5014 : f32 = u_xlat90;
            u_xlat90 = ((x_5011 * x_5012) + x_5014);
            let x_5017 : vec4<f32> = u_xlat17;
            let x_5018 : vec2<f32> = vec2<f32>(x_5017.x, x_5017.y);
            let x_5020 : f32 = u_xlat12.z;
            txVec85 = vec3<f32>(x_5018.x, x_5018.y, x_5020);
            let x_5027 : vec3<f32> = txVec85;
            let x_5029 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5027.xy, x_5027.z);
            u_xlat91 = x_5029;
            let x_5031 : f32 = u_xlat13.x;
            let x_5032 : f32 = u_xlat91;
            let x_5034 : f32 = u_xlat90;
            u_xlat90 = ((x_5031 * x_5032) + x_5034);
            let x_5037 : vec4<f32> = u_xlat17;
            let x_5038 : vec2<f32> = vec2<f32>(x_5037.z, x_5037.w);
            let x_5040 : f32 = u_xlat12.z;
            txVec86 = vec3<f32>(x_5038.x, x_5038.y, x_5040);
            let x_5047 : vec3<f32> = txVec86;
            let x_5049 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5047.xy, x_5047.z);
            u_xlat91 = x_5049;
            let x_5051 : f32 = u_xlat13.y;
            let x_5052 : f32 = u_xlat91;
            let x_5054 : f32 = u_xlat90;
            u_xlat90 = ((x_5051 * x_5052) + x_5054);
            let x_5057 : vec2<f32> = u_xlat70;
            let x_5059 : f32 = u_xlat12.z;
            txVec87 = vec3<f32>(x_5057.x, x_5057.y, x_5059);
            let x_5066 : vec3<f32> = txVec87;
            let x_5068 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5066.xy, x_5066.z);
            u_xlat91 = x_5068;
            let x_5070 : f32 = u_xlat13.z;
            let x_5071 : f32 = u_xlat91;
            let x_5073 : f32 = u_xlat90;
            u_xlat90 = ((x_5070 * x_5071) + x_5073);
            let x_5076 : vec2<f32> = u_xlat62;
            let x_5078 : f32 = u_xlat12.z;
            txVec88 = vec3<f32>(x_5076.x, x_5076.y, x_5078);
            let x_5085 : vec3<f32> = txVec88;
            let x_5087 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5085.xy, x_5085.z);
            u_xlat62.x = x_5087;
            let x_5090 : f32 = u_xlat13.w;
            let x_5092 : f32 = u_xlat62.x;
            let x_5094 : f32 = u_xlat90;
            u_xlat88 = ((x_5090 * x_5092) + x_5094);
          }
        }
      } else {
        let x_5098 : vec4<f32> = u_xlat12;
        let x_5099 : vec2<f32> = vec2<f32>(x_5098.x, x_5098.y);
        let x_5101 : f32 = u_xlat12.z;
        txVec89 = vec3<f32>(x_5099.x, x_5099.y, x_5101);
        let x_5108 : vec3<f32> = txVec89;
        let x_5110 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5108.xy, x_5108.z);
        u_xlat88 = x_5110;
      }
      let x_5111 : i32 = u_xlati3;
      let x_5113 : f32 = x_130.x_AdditionalShadowParams[x_5111].x;
      u_xlat62.x = (1.0f + -(x_5113));
      let x_5117 : f32 = u_xlat88;
      let x_5118 : i32 = u_xlati3;
      let x_5120 : f32 = x_130.x_AdditionalShadowParams[x_5118].x;
      let x_5123 : f32 = u_xlat62.x;
      u_xlat88 = ((x_5117 * x_5120) + x_5123);
      let x_5126 : f32 = u_xlat12.z;
      u_xlatb62 = (0.0f >= x_5126);
      let x_5130 : f32 = u_xlat12.z;
      u_xlatb89 = (x_5130 >= 1.0f);
      let x_5132 : bool = u_xlatb89;
      let x_5133 : bool = u_xlatb62;
      u_xlatb62 = (x_5132 | x_5133);
      let x_5135 : bool = u_xlatb62;
      let x_5136 : f32 = u_xlat88;
      u_xlat88 = select(x_5136, 1.0f, x_5135);
    } else {
      u_xlat88 = 1.0f;
    }
    let x_5139 : f32 = u_xlat88;
    u_xlat62.x = (-(x_5139) + 1.0f);
    let x_5143 : f32 = u_xlat82;
    let x_5145 : f32 = u_xlat62.x;
    let x_5147 : f32 = u_xlat88;
    u_xlat88 = ((x_5143 * x_5145) + x_5147);
    let x_5150 : i32 = u_xlati3;
    u_xlati62 = (1i << bitcast<u32>((x_5150 & 31i)));
    let x_5154 : i32 = u_xlati62;
    let x_5157 : f32 = x_3266.x_AdditionalLightsCookieEnableBits;
    u_xlati62 = bitcast<i32>((bitcast<u32>(x_5154) & bitcast<u32>(x_5157)));
    let x_5161 : i32 = u_xlati62;
    if ((x_5161 != 0i)) {
      let x_5165 : i32 = u_xlati3;
      let x_5167 : f32 = x_3266.x_AdditionalLightsLightTypes[x_5165].el;
      u_xlati62 = i32(x_5167);
      let x_5170 : i32 = u_xlati62;
      u_xlati89 = select(1i, 0i, (x_5170 != 0i));
      let x_5174 : i32 = u_xlati3;
      u_xlati90 = (x_5174 << bitcast<u32>(2i));
      let x_5176 : i32 = u_xlati89;
      if ((x_5176 != 0i)) {
        let x_5180 : vec3<f32> = vs_INTERP8;
        let x_5182 : i32 = u_xlati90;
        let x_5185 : i32 = u_xlati90;
        let x_5189 : vec4<f32> = x_3266.x_AdditionalLightsWorldToLights[((x_5182 + 1i) / 4i)][((x_5185 + 1i) % 4i)];
        let x_5191 : vec3<f32> = (vec3<f32>(x_5180.y, x_5180.y, x_5180.y) * vec3<f32>(x_5189.x, x_5189.y, x_5189.w));
        let x_5192 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_5191.x, x_5191.y, x_5191.z, x_5192.w);
        let x_5194 : i32 = u_xlati90;
        let x_5196 : i32 = u_xlati90;
        let x_5199 : vec4<f32> = x_3266.x_AdditionalLightsWorldToLights[(x_5194 / 4i)][(x_5196 % 4i)];
        let x_5201 : vec3<f32> = vs_INTERP8;
        let x_5204 : vec4<f32> = u_xlat12;
        let x_5206 : vec3<f32> = ((vec3<f32>(x_5199.x, x_5199.y, x_5199.w) * vec3<f32>(x_5201.x, x_5201.x, x_5201.x)) + vec3<f32>(x_5204.x, x_5204.y, x_5204.z));
        let x_5207 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_5206.x, x_5206.y, x_5206.z, x_5207.w);
        let x_5209 : i32 = u_xlati90;
        let x_5212 : i32 = u_xlati90;
        let x_5216 : vec4<f32> = x_3266.x_AdditionalLightsWorldToLights[((x_5209 + 2i) / 4i)][((x_5212 + 2i) % 4i)];
        let x_5218 : vec3<f32> = vs_INTERP8;
        let x_5221 : vec4<f32> = u_xlat12;
        let x_5223 : vec3<f32> = ((vec3<f32>(x_5216.x, x_5216.y, x_5216.w) * vec3<f32>(x_5218.z, x_5218.z, x_5218.z)) + vec3<f32>(x_5221.x, x_5221.y, x_5221.z));
        let x_5224 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_5223.x, x_5223.y, x_5223.z, x_5224.w);
        let x_5226 : vec4<f32> = u_xlat12;
        let x_5228 : i32 = u_xlati90;
        let x_5231 : i32 = u_xlati90;
        let x_5235 : vec4<f32> = x_3266.x_AdditionalLightsWorldToLights[((x_5228 + 3i) / 4i)][((x_5231 + 3i) % 4i)];
        let x_5237 : vec3<f32> = (vec3<f32>(x_5226.x, x_5226.y, x_5226.z) + vec3<f32>(x_5235.x, x_5235.y, x_5235.w));
        let x_5238 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_5237.x, x_5237.y, x_5237.z, x_5238.w);
        let x_5240 : vec4<f32> = u_xlat12;
        let x_5242 : vec4<f32> = u_xlat12;
        let x_5244 : vec2<f32> = (vec2<f32>(x_5240.x, x_5240.y) / vec2<f32>(x_5242.z, x_5242.z));
        let x_5245 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_5244.x, x_5244.y, x_5245.z, x_5245.w);
        let x_5247 : vec4<f32> = u_xlat12;
        let x_5250 : vec2<f32> = ((vec2<f32>(x_5247.x, x_5247.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_5251 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_5250.x, x_5250.y, x_5251.z, x_5251.w);
        let x_5253 : vec4<f32> = u_xlat12;
        let x_5257 : vec2<f32> = clamp(vec2<f32>(x_5253.x, x_5253.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_5258 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_5257.x, x_5257.y, x_5258.z, x_5258.w);
        let x_5260 : i32 = u_xlati3;
        let x_5262 : vec4<f32> = x_3266.x_AdditionalLightsCookieAtlasUVRects[x_5260];
        let x_5264 : vec4<f32> = u_xlat12;
        let x_5267 : i32 = u_xlati3;
        let x_5269 : vec4<f32> = x_3266.x_AdditionalLightsCookieAtlasUVRects[x_5267];
        let x_5271 : vec2<f32> = ((vec2<f32>(x_5262.x, x_5262.y) * vec2<f32>(x_5264.x, x_5264.y)) + vec2<f32>(x_5269.z, x_5269.w));
        let x_5272 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_5271.x, x_5271.y, x_5272.z, x_5272.w);
      } else {
        let x_5275 : i32 = u_xlati62;
        u_xlatb62 = (x_5275 == 1i);
        let x_5277 : bool = u_xlatb62;
        u_xlati62 = select(0i, 1i, x_5277);
        let x_5279 : i32 = u_xlati62;
        if ((x_5279 != 0i)) {
          let x_5283 : vec3<f32> = vs_INTERP8;
          let x_5285 : i32 = u_xlati90;
          let x_5288 : i32 = u_xlati90;
          let x_5292 : vec4<f32> = x_3266.x_AdditionalLightsWorldToLights[((x_5285 + 1i) / 4i)][((x_5288 + 1i) % 4i)];
          u_xlat62 = (vec2<f32>(x_5283.y, x_5283.y) * vec2<f32>(x_5292.x, x_5292.y));
          let x_5295 : i32 = u_xlati90;
          let x_5297 : i32 = u_xlati90;
          let x_5300 : vec4<f32> = x_3266.x_AdditionalLightsWorldToLights[(x_5295 / 4i)][(x_5297 % 4i)];
          let x_5302 : vec3<f32> = vs_INTERP8;
          let x_5305 : vec2<f32> = u_xlat62;
          u_xlat62 = ((vec2<f32>(x_5300.x, x_5300.y) * vec2<f32>(x_5302.x, x_5302.x)) + x_5305);
          let x_5307 : i32 = u_xlati90;
          let x_5310 : i32 = u_xlati90;
          let x_5314 : vec4<f32> = x_3266.x_AdditionalLightsWorldToLights[((x_5307 + 2i) / 4i)][((x_5310 + 2i) % 4i)];
          let x_5316 : vec3<f32> = vs_INTERP8;
          let x_5319 : vec2<f32> = u_xlat62;
          u_xlat62 = ((vec2<f32>(x_5314.x, x_5314.y) * vec2<f32>(x_5316.z, x_5316.z)) + x_5319);
          let x_5321 : vec2<f32> = u_xlat62;
          let x_5322 : i32 = u_xlati90;
          let x_5325 : i32 = u_xlati90;
          let x_5329 : vec4<f32> = x_3266.x_AdditionalLightsWorldToLights[((x_5322 + 3i) / 4i)][((x_5325 + 3i) % 4i)];
          u_xlat62 = (x_5321 + vec2<f32>(x_5329.x, x_5329.y));
          let x_5332 : vec2<f32> = u_xlat62;
          u_xlat62 = ((x_5332 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5335 : vec2<f32> = u_xlat62;
          u_xlat62 = fract(x_5335);
          let x_5337 : i32 = u_xlati3;
          let x_5339 : vec4<f32> = x_3266.x_AdditionalLightsCookieAtlasUVRects[x_5337];
          let x_5341 : vec2<f32> = u_xlat62;
          let x_5343 : i32 = u_xlati3;
          let x_5345 : vec4<f32> = x_3266.x_AdditionalLightsCookieAtlasUVRects[x_5343];
          let x_5347 : vec2<f32> = ((vec2<f32>(x_5339.x, x_5339.y) * x_5341) + vec2<f32>(x_5345.z, x_5345.w));
          let x_5348 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5347.x, x_5347.y, x_5348.z, x_5348.w);
        } else {
          let x_5351 : vec3<f32> = vs_INTERP8;
          let x_5353 : i32 = u_xlati90;
          let x_5356 : i32 = u_xlati90;
          let x_5360 : vec4<f32> = x_3266.x_AdditionalLightsWorldToLights[((x_5353 + 1i) / 4i)][((x_5356 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_5351.y, x_5351.y, x_5351.y, x_5351.y) * x_5360);
          let x_5362 : i32 = u_xlati90;
          let x_5364 : i32 = u_xlati90;
          let x_5367 : vec4<f32> = x_3266.x_AdditionalLightsWorldToLights[(x_5362 / 4i)][(x_5364 % 4i)];
          let x_5368 : vec3<f32> = vs_INTERP8;
          let x_5371 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_5367 * vec4<f32>(x_5368.x, x_5368.x, x_5368.x, x_5368.x)) + x_5371);
          let x_5373 : i32 = u_xlati90;
          let x_5376 : i32 = u_xlati90;
          let x_5380 : vec4<f32> = x_3266.x_AdditionalLightsWorldToLights[((x_5373 + 2i) / 4i)][((x_5376 + 2i) % 4i)];
          let x_5381 : vec3<f32> = vs_INTERP8;
          let x_5384 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_5380 * vec4<f32>(x_5381.z, x_5381.z, x_5381.z, x_5381.z)) + x_5384);
          let x_5386 : vec4<f32> = u_xlat13;
          let x_5387 : i32 = u_xlati90;
          let x_5390 : i32 = u_xlati90;
          let x_5394 : vec4<f32> = x_3266.x_AdditionalLightsWorldToLights[((x_5387 + 3i) / 4i)][((x_5390 + 3i) % 4i)];
          u_xlat13 = (x_5386 + x_5394);
          let x_5396 : vec4<f32> = u_xlat13;
          let x_5398 : vec4<f32> = u_xlat13;
          let x_5400 : vec3<f32> = (vec3<f32>(x_5396.x, x_5396.y, x_5396.z) / vec3<f32>(x_5398.w, x_5398.w, x_5398.w));
          let x_5401 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_5400.x, x_5400.y, x_5400.z, x_5401.w);
          let x_5403 : vec4<f32> = u_xlat13;
          let x_5405 : vec4<f32> = u_xlat13;
          u_xlat62.x = dot(vec3<f32>(x_5403.x, x_5403.y, x_5403.z), vec3<f32>(x_5405.x, x_5405.y, x_5405.z));
          let x_5410 : f32 = u_xlat62.x;
          u_xlat62.x = inverseSqrt(x_5410);
          let x_5413 : vec2<f32> = u_xlat62;
          let x_5415 : vec4<f32> = u_xlat13;
          let x_5417 : vec3<f32> = (vec3<f32>(x_5413.x, x_5413.x, x_5413.x) * vec3<f32>(x_5415.x, x_5415.y, x_5415.z));
          let x_5418 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_5417.x, x_5417.y, x_5417.z, x_5418.w);
          let x_5420 : vec4<f32> = u_xlat13;
          u_xlat62.x = dot(abs(vec3<f32>(x_5420.x, x_5420.y, x_5420.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_5427 : f32 = u_xlat62.x;
          u_xlat62.x = max(x_5427, 0.00000099999999747524f);
          let x_5432 : f32 = u_xlat62.x;
          u_xlat62.x = (1.0f / x_5432);
          let x_5435 : vec2<f32> = u_xlat62;
          let x_5437 : vec4<f32> = u_xlat13;
          let x_5439 : vec3<f32> = (vec3<f32>(x_5435.x, x_5435.x, x_5435.x) * vec3<f32>(x_5437.z, x_5437.x, x_5437.y));
          let x_5440 : vec4<f32> = u_xlat14;
          u_xlat14 = vec4<f32>(x_5439.x, x_5439.y, x_5439.z, x_5440.w);
          let x_5443 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_5443);
          let x_5447 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_5447, 0.0f, 1.0f);
          let x_5451 : vec4<f32> = u_xlat14;
          let x_5453 : vec4<bool> = (vec4<f32>(x_5451.y, x_5451.z, x_5451.y, x_5451.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb66 = vec2<bool>(x_5453.x, x_5453.y);
          let x_5457 : bool = u_xlatb66.x;
          if (x_5457) {
            let x_5462 : f32 = u_xlat14.x;
            x_5458 = x_5462;
          } else {
            let x_5465 : f32 = u_xlat14.x;
            x_5458 = -(x_5465);
          }
          let x_5467 : f32 = x_5458;
          u_xlat66.x = x_5467;
          let x_5470 : bool = u_xlatb66.y;
          if (x_5470) {
            let x_5475 : f32 = u_xlat14.x;
            x_5471 = x_5475;
          } else {
            let x_5478 : f32 = u_xlat14.x;
            x_5471 = -(x_5478);
          }
          let x_5480 : f32 = x_5471;
          u_xlat66.y = x_5480;
          let x_5482 : vec4<f32> = u_xlat13;
          let x_5484 : vec2<f32> = u_xlat62;
          let x_5487 : vec2<f32> = u_xlat66;
          u_xlat62 = ((vec2<f32>(x_5482.x, x_5482.y) * vec2<f32>(x_5484.x, x_5484.x)) + x_5487);
          let x_5489 : vec2<f32> = u_xlat62;
          u_xlat62 = ((x_5489 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5492 : vec2<f32> = u_xlat62;
          u_xlat62 = clamp(x_5492, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_5496 : i32 = u_xlati3;
          let x_5498 : vec4<f32> = x_3266.x_AdditionalLightsCookieAtlasUVRects[x_5496];
          let x_5500 : vec2<f32> = u_xlat62;
          let x_5502 : i32 = u_xlati3;
          let x_5504 : vec4<f32> = x_3266.x_AdditionalLightsCookieAtlasUVRects[x_5502];
          let x_5506 : vec2<f32> = ((vec2<f32>(x_5498.x, x_5498.y) * x_5500) + vec2<f32>(x_5504.z, x_5504.w));
          let x_5507 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5506.x, x_5506.y, x_5507.z, x_5507.w);
        }
      }
      let x_5514 : vec4<f32> = u_xlat12;
      let x_5516 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_5514.x, x_5514.y), 0.0f);
      u_xlat12 = x_5516;
      let x_5518 : bool = u_xlatb8.y;
      if (x_5518) {
        let x_5523 : f32 = u_xlat12.w;
        x_5519 = x_5523;
      } else {
        let x_5526 : f32 = u_xlat12.x;
        x_5519 = x_5526;
      }
      let x_5527 : f32 = x_5519;
      u_xlat62.x = x_5527;
      let x_5530 : bool = u_xlatb8.x;
      if (x_5530) {
        let x_5534 : vec4<f32> = u_xlat12;
        x_5531 = vec3<f32>(x_5534.x, x_5534.y, x_5534.z);
      } else {
        let x_5537 : vec2<f32> = u_xlat62;
        x_5531 = vec3<f32>(x_5537.x, x_5537.x, x_5537.x);
      }
      let x_5539 : vec3<f32> = x_5531;
      let x_5540 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_5539.x, x_5539.y, x_5539.z, x_5540.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_5546 : vec4<f32> = u_xlat12;
    let x_5548 : i32 = u_xlati3;
    let x_5550 : vec4<f32> = x_3705.x_AdditionalLightsColor[x_5548];
    let x_5552 : vec3<f32> = (vec3<f32>(x_5546.x, x_5546.y, x_5546.z) * vec3<f32>(x_5550.x, x_5550.y, x_5550.z));
    let x_5553 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_5552.x, x_5552.y, x_5552.z, x_5553.w);
    let x_5556 : f32 = u_xlat4.x;
    let x_5557 : f32 = u_xlat88;
    u_xlat3.x = (x_5556 * x_5557);
    let x_5560 : vec3<f32> = u_xlat30;
    let x_5561 : vec4<f32> = u_xlat11;
    u_xlat4.x = dot(x_5560, vec3<f32>(x_5561.x, x_5561.y, x_5561.z));
    let x_5566 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_5566, 0.0f, 1.0f);
    let x_5570 : f32 = u_xlat3.x;
    let x_5572 : f32 = u_xlat4.x;
    u_xlat3.x = (x_5570 * x_5572);
    let x_5575 : vec4<f32> = u_xlat3;
    let x_5577 : vec4<f32> = u_xlat12;
    let x_5579 : vec3<f32> = (vec3<f32>(x_5575.x, x_5575.x, x_5575.x) * vec3<f32>(x_5577.x, x_5577.y, x_5577.z));
    let x_5580 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_5579.x, x_5579.y, x_5579.z, x_5580.w);
    let x_5582 : vec4<f32> = u_xlat10;
    let x_5584 : vec4<f32> = u_xlat5;
    let x_5587 : vec3<f32> = u_xlat32;
    let x_5588 : vec3<f32> = ((vec3<f32>(x_5582.x, x_5582.y, x_5582.z) * vec3<f32>(x_5584.x, x_5584.x, x_5584.x)) + x_5587);
    let x_5589 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_5588.x, x_5588.y, x_5588.z, x_5589.w);
    let x_5591 : vec4<f32> = u_xlat10;
    let x_5593 : vec4<f32> = u_xlat10;
    u_xlat3.x = dot(vec3<f32>(x_5591.x, x_5591.y, x_5591.z), vec3<f32>(x_5593.x, x_5593.y, x_5593.z));
    let x_5598 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_5598, 1.17549435e-38f);
    let x_5602 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_5602);
    let x_5605 : vec4<f32> = u_xlat3;
    let x_5607 : vec4<f32> = u_xlat10;
    let x_5609 : vec3<f32> = (vec3<f32>(x_5605.x, x_5605.x, x_5605.x) * vec3<f32>(x_5607.x, x_5607.y, x_5607.z));
    let x_5610 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_5609.x, x_5609.y, x_5609.z, x_5610.w);
    let x_5612 : vec3<f32> = u_xlat30;
    let x_5613 : vec4<f32> = u_xlat10;
    u_xlat3.x = dot(x_5612, vec3<f32>(x_5613.x, x_5613.y, x_5613.z));
    let x_5618 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_5618, 0.0f, 1.0f);
    let x_5621 : vec4<f32> = u_xlat11;
    let x_5623 : vec4<f32> = u_xlat10;
    u_xlat4.x = dot(vec3<f32>(x_5621.x, x_5621.y, x_5621.z), vec3<f32>(x_5623.x, x_5623.y, x_5623.z));
    let x_5628 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_5628, 0.0f, 1.0f);
    let x_5632 : f32 = u_xlat3.x;
    let x_5634 : f32 = u_xlat3.x;
    u_xlat3.x = (x_5632 * x_5634);
    let x_5638 : f32 = u_xlat3.x;
    let x_5640 : f32 = u_xlat61.x;
    u_xlat3.x = ((x_5638 * x_5640) + 1.00001001358032226562f);
    let x_5645 : f32 = u_xlat4.x;
    let x_5647 : f32 = u_xlat4.x;
    u_xlat4.x = (x_5645 * x_5647);
    let x_5651 : f32 = u_xlat3.x;
    let x_5653 : f32 = u_xlat3.x;
    u_xlat3.x = (x_5651 * x_5653);
    let x_5657 : f32 = u_xlat4.x;
    u_xlat4.x = max(x_5657, 0.10000000149011611938f);
    let x_5661 : f32 = u_xlat3.x;
    let x_5663 : f32 = u_xlat4.x;
    u_xlat3.x = (x_5661 * x_5663);
    let x_5667 : f32 = u_xlat7.x;
    let x_5669 : f32 = u_xlat3.x;
    u_xlat3.x = (x_5667 * x_5669);
    let x_5672 : f32 = u_xlat87;
    let x_5674 : f32 = u_xlat3.x;
    u_xlat3.x = (x_5672 / x_5674);
    let x_5677 : vec4<f32> = u_xlat3;
    let x_5680 : vec3<f32> = u_xlat2;
    let x_5681 : vec3<f32> = ((vec3<f32>(x_5677.x, x_5677.x, x_5677.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5680);
    let x_5682 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_5681.x, x_5681.y, x_5681.z, x_5682.w);
    let x_5684 : vec4<f32> = u_xlat10;
    let x_5686 : vec4<f32> = u_xlat12;
    let x_5689 : vec4<f32> = u_xlat9;
    let x_5691 : vec3<f32> = ((vec3<f32>(x_5684.x, x_5684.y, x_5684.z) * vec3<f32>(x_5686.x, x_5686.y, x_5686.z)) + vec3<f32>(x_5689.x, x_5689.y, x_5689.z));
    let x_5692 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5691.x, x_5691.y, x_5691.z, x_5692.w);

    continuing {
      let x_5694 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5694 + bitcast<u32>(1i));
    }
  }
  let x_5696 : vec4<f32> = u_xlat6;
  let x_5698 : vec2<f32> = u_xlat34;
  let x_5701 : vec3<f32> = u_xlat31;
  u_xlat2 = ((vec3<f32>(x_5696.x, x_5696.y, x_5696.z) * vec3<f32>(x_5698.x, x_5698.x, x_5698.x)) + x_5701);
  let x_5703 : vec4<f32> = u_xlat9;
  let x_5705 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_5703.x, x_5703.y, x_5703.z) + x_5705);
  let x_5707 : vec4<f32> = vs_INTERP6;
  let x_5709 : vec3<f32> = u_xlat0;
  let x_5711 : vec3<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_5707.w, x_5707.w, x_5707.w) * x_5709) + x_5711);
  let x_5714 : f32 = u_xlat28.x;
  let x_5716 : f32 = u_xlat28.x;
  u_xlat81 = (x_5714 * -(x_5716));
  let x_5719 : f32 = u_xlat81;
  u_xlat81 = exp2(x_5719);
  let x_5721 : vec3<f32> = u_xlat0;
  let x_5723 : vec4<f32> = x_53.unity_FogColor;
  u_xlat0 = (x_5721 + -(vec3<f32>(x_5723.x, x_5723.y, x_5723.z)));
  let x_5729 : f32 = u_xlat81;
  let x_5731 : vec3<f32> = u_xlat0;
  let x_5734 : vec4<f32> = x_53.unity_FogColor;
  let x_5736 : vec3<f32> = ((vec3<f32>(x_5729, x_5729, x_5729) * x_5731) + vec3<f32>(x_5734.x, x_5734.y, x_5734.z));
  let x_5737 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5736.x, x_5736.y, x_5736.z, x_5737.w);
  let x_5739 : bool = u_xlatb55;
  if (x_5739) {
    let x_5744 : f32 = u_xlat1.x;
    x_5740 = x_5744;
  } else {
    x_5740 = 1.0f;
  }
  let x_5746 : f32 = x_5740;
  SV_Target0.w = x_5746;
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


