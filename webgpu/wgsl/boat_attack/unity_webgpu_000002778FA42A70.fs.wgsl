diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
}

struct x_Terrain {
  /* @offset(0) */
  x_NormalScale0 : f32,
  /* @offset(4) */
  x_NormalScale1 : f32,
  /* @offset(8) */
  x_NormalScale2 : f32,
  /* @offset(12) */
  x_NormalScale3 : f32,
  /* @offset(16) */
  x_Metallic0 : f32,
  /* @offset(20) */
  x_Metallic1 : f32,
  /* @offset(24) */
  x_Metallic2 : f32,
  /* @offset(28) */
  x_Metallic3 : f32,
  /* @offset(32) */
  x_Smoothness0 : f32,
  /* @offset(36) */
  x_Smoothness1 : f32,
  /* @offset(40) */
  x_Smoothness2 : f32,
  /* @offset(44) */
  x_Smoothness3 : f32,
  /* @offset(48) */
  x_DiffuseRemapScale0 : vec4<f32>,
  /* @offset(64) */
  x_DiffuseRemapScale1 : vec4<f32>,
  /* @offset(80) */
  x_DiffuseRemapScale2 : vec4<f32>,
  /* @offset(96) */
  x_DiffuseRemapScale3 : vec4<f32>,
  /* @offset(112) */
  x_MaskMapRemapOffset0 : vec4<f32>,
  /* @offset(128) */
  x_MaskMapRemapOffset1 : vec4<f32>,
  /* @offset(144) */
  x_MaskMapRemapOffset2 : vec4<f32>,
  /* @offset(160) */
  x_MaskMapRemapOffset3 : vec4<f32>,
  /* @offset(176) */
  x_MaskMapRemapScale0 : vec4<f32>,
  /* @offset(192) */
  x_MaskMapRemapScale1 : vec4<f32>,
  /* @offset(208) */
  x_MaskMapRemapScale2 : vec4<f32>,
  /* @offset(224) */
  x_MaskMapRemapScale3 : vec4<f32>,
  /* @offset(240) */
  x_Control_ST : vec4<f32>,
  /* @offset(256) */
  x_Control_TexelSize : vec4<f32>,
  /* @offset(272) */
  x_DiffuseHasAlpha0 : f32,
  /* @offset(276) */
  x_DiffuseHasAlpha1 : f32,
  /* @offset(280) */
  x_DiffuseHasAlpha2 : f32,
  /* @offset(284) */
  x_DiffuseHasAlpha3 : f32,
  /* @offset(288) */
  x_LayerHasMask0 : f32,
  /* @offset(292) */
  x_LayerHasMask1 : f32,
  /* @offset(296) */
  x_LayerHasMask2 : f32,
  /* @offset(300) */
  x_LayerHasMask3 : f32,
  /* @offset(304) */
  x_Splat0_ST : vec4<f32>,
  /* @offset(320) */
  x_Splat1_ST : vec4<f32>,
  /* @offset(336) */
  x_Splat2_ST : vec4<f32>,
  /* @offset(352) */
  x_Splat3_ST : vec4<f32>,
  /* @offset(368) */
  x_HeightTransition : f32,
  /* @offset(372) */
  x_NumLayersCount : f32,
  /* @offset(384) */
  x_TerrainHeightmapRecipSize : vec4<f32>,
  /* @offset(400) */
  x_TerrainHeightmapScale : vec4<f32>,
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

alias Arr_5 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_6 = array<strided_arr, 32u>;

alias Arr_7 = array<strided_arr, 32u>;

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
  x_AdditionalLightsLightTypes : Arr_7,
}

alias Arr_8 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_8,
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
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(12) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(22) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_58 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(19) var sampler_Control : sampler;

var<private> u_xlat78 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(20) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(5) var x_Splat1 : texture_2d<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(6) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(7) var x_Splat3 : texture_2d<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlatb79 : bool;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlatb80 : bool;

@group(0) @binding(8) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(21) var sampler_Normal0 : sampler;

@group(0) @binding(9) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(10) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(11) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat26 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_868 : LightShadows;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu79 : u32;

var<private> u_xlati79 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(18) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlatb82 : bool;

@group(0) @binding(13) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(24) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat82 : f32;

var<private> u_xlatb83 : bool;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat32 : f32;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb28 : bool;

var<private> u_xlatb54 : bool;

var<private> u_xlat28 : f32;

var<private> u_xlat54 : f32;

@group(1) @binding(5) var<uniform> x_2483 : LightCookies;

@group(0) @binding(15) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(25) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(17) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2684 : UnityPerDraw;

var<private> u_xlatu52 : u32;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlatu83 : u32;

var<private> u_xlati58 : i32;

var<private> u_xlati83 : i32;

@group(1) @binding(1) var<uniform> x_2977 : AdditionalLights;

var<private> u_xlat84 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlati85 : i32;

var<private> u_xlatb86 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat87 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(14) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb87 : bool;

var<private> u_xlati86 : i32;

var<private> u_xlati87 : i32;

var<private> u_xlati88 : i32;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlatb63 : vec2<bool>;

@group(0) @binding(16) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu82 : u32;

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
  var x_2435 : f32;
  var x_2566 : f32;
  var x_2577 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3131 : f32;
  var x_3141 : f32;
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
  var x_4712 : f32;
  var x_4725 : f32;
  var x_4773 : f32;
  var x_4784 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_24.x, x_24.y), x_35);
  u_xlat0.x = x_36.x;
  let x_44 : f32 = u_xlat0.x;
  u_xlatb0 = (x_44 == 0.0f);
  let x_47 : bool = u_xlatb0;
  if (((select(0i, 1i, x_47) * -1i) != 0i)) {
    discard;
  }
  let x_62 : vec4<f32> = x_58.x_MaskMapRemapScale0;
  let x_69 : vec4<f32> = x_58.x_MaskMapRemapOffset0;
  u_xlat0 = ((vec3<f32>(x_62.x, x_62.y, x_62.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_69.x, x_69.y, x_69.w));
  let x_76 : vec4<f32> = x_58.x_MaskMapRemapScale1;
  let x_81 : vec4<f32> = x_58.x_MaskMapRemapOffset1;
  let x_83 : vec3<f32> = ((vec3<f32>(x_76.x, x_76.y, x_76.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_81.x, x_81.y, x_81.w));
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_89 : vec4<f32> = x_58.x_MaskMapRemapScale2;
  let x_94 : vec4<f32> = x_58.x_MaskMapRemapOffset2;
  let x_96 : vec3<f32> = ((vec3<f32>(x_89.x, x_89.y, x_89.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_94.x, x_94.y, x_94.w));
  let x_97 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_96.x, x_96.y, x_96.z, x_97.w);
  let x_102 : vec4<f32> = x_58.x_MaskMapRemapScale3;
  let x_107 : vec4<f32> = x_58.x_MaskMapRemapOffset3;
  let x_109 : vec3<f32> = ((vec3<f32>(x_102.x, x_102.w, x_102.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_107.x, x_107.w, x_107.y));
  let x_110 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_109.x, x_109.y, x_110.z, x_109.z);
  let x_115 : vec4<f32> = x_58.x_Control_TexelSize;
  let x_119 : vec2<f32> = (vec2<f32>(x_115.z, x_115.w) + vec2<f32>(-1.0f, -1.0f));
  let x_120 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_119.x, x_119.y, x_120.z, x_120.w);
  let x_122 : vec4<f32> = vs_TEXCOORD0;
  let x_124 : vec4<f32> = u_xlat4;
  let x_128 : vec2<f32> = ((vec2<f32>(x_122.x, x_122.y) * vec2<f32>(x_124.x, x_124.y)) + vec2<f32>(0.5f, 0.5f));
  let x_129 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_128.x, x_128.y, x_129.z, x_129.w);
  let x_131 : vec4<f32> = u_xlat4;
  let x_134 : vec4<f32> = x_58.x_Control_TexelSize;
  let x_136 : vec2<f32> = (vec2<f32>(x_131.x, x_131.y) * vec2<f32>(x_134.x, x_134.y));
  let x_137 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_136.x, x_136.y, x_137.z, x_137.w);
  let x_144 : vec4<f32> = u_xlat4;
  let x_147 : f32 = x_28.x_GlobalMipBias.x;
  let x_148 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_144.x, x_144.y), x_147);
  u_xlat4 = x_148;
  let x_150 : vec4<f32> = u_xlat4;
  u_xlat78 = dot(x_150, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_161 : vec4<f32> = vs_TEXCOORD1;
  let x_164 : f32 = x_28.x_GlobalMipBias.x;
  let x_165 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_161.x, x_161.y), x_164);
  u_xlat5 = x_165;
  let x_171 : vec4<f32> = vs_TEXCOORD1;
  let x_174 : f32 = x_28.x_GlobalMipBias.x;
  let x_175 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_171.z, x_171.w), x_174);
  u_xlat6 = x_175;
  let x_182 : vec4<f32> = vs_TEXCOORD2;
  let x_185 : f32 = x_28.x_GlobalMipBias.x;
  let x_186 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_182.x, x_182.y), x_185);
  u_xlat7 = x_186;
  let x_192 : vec4<f32> = vs_TEXCOORD2;
  let x_195 : f32 = x_28.x_GlobalMipBias.x;
  let x_196 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_192.z, x_192.w), x_195);
  u_xlat8 = x_196;
  let x_200 : f32 = u_xlat5.w;
  u_xlat9.x = x_200;
  let x_203 : f32 = u_xlat6.w;
  u_xlat9.y = x_203;
  let x_207 : f32 = u_xlat7.w;
  u_xlat9.z = x_207;
  let x_211 : f32 = u_xlat8.w;
  u_xlat9.w = x_211;
  let x_214 : vec4<f32> = u_xlat9;
  let x_217 : f32 = x_58.x_Smoothness0;
  let x_220 : f32 = x_58.x_Smoothness1;
  let x_223 : f32 = x_58.x_Smoothness2;
  let x_226 : f32 = x_58.x_Smoothness3;
  u_xlat10 = (x_214 * vec4<f32>(x_217, x_220, x_223, x_226));
  let x_233 : f32 = x_58.x_NumLayersCount;
  u_xlatb79 = (4.0f >= x_233);
  let x_236 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_236) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_239 : vec4<f32> = u_xlat9;
  let x_240 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_239 + -(x_240));
  let x_243 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_243 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_247 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_247, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_251 : vec4<f32> = u_xlat4;
  let x_255 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_251 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_255);
  let x_258 : vec4<f32> = u_xlat4;
  let x_259 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_258 + -(x_259));
  let x_264 : f32 = u_xlat12.x;
  let x_267 : f32 = x_58.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_264 * x_267);
  let x_271 : f32 = u_xlat12.y;
  let x_274 : f32 = x_58.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_271 * x_274);
  let x_278 : f32 = u_xlat12.z;
  let x_281 : f32 = x_58.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_278 * x_281);
  let x_285 : f32 = u_xlat12.w;
  let x_288 : f32 = x_58.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_285 * x_288);
  let x_291 : vec4<f32> = u_xlat11;
  let x_292 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_291 + x_292);
  let x_294 : bool = u_xlatb79;
  let x_295 : vec4<f32> = u_xlat11;
  let x_296 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_296, x_295, vec4<bool>(x_294, x_294, x_294, x_294));
  let x_301 : vec4<f32> = u_xlat4;
  u_xlat79 = dot(x_301, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_305 : f32 = u_xlat79;
  u_xlatb80 = (0.00499999988824129105f >= x_305);
  let x_307 : bool = u_xlatb80;
  if (((select(0i, 1i, x_307) * -1i) != 0i)) {
    discard;
  }
  let x_314 : f32 = u_xlat79;
  u_xlat79 = (x_314 + 0.00006103515625f);
  let x_317 : vec4<f32> = u_xlat4;
  let x_318 : f32 = u_xlat79;
  u_xlat4 = (x_317 / vec4<f32>(x_318, x_318, x_318, x_318));
  let x_321 : vec4<f32> = u_xlat4;
  let x_324 : vec4<f32> = x_58.x_DiffuseRemapScale0;
  let x_326 : vec3<f32> = (vec3<f32>(x_321.x, x_321.x, x_321.x) * vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec4<f32> = u_xlat4;
  let x_332 : vec4<f32> = x_58.x_DiffuseRemapScale1;
  let x_334 : vec3<f32> = (vec3<f32>(x_329.y, x_329.y, x_329.y) * vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat6;
  let x_339 : vec4<f32> = u_xlat12;
  let x_341 : vec3<f32> = (vec3<f32>(x_337.x, x_337.y, x_337.z) * vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_344 : vec4<f32> = u_xlat5;
  let x_346 : vec4<f32> = u_xlat11;
  let x_349 : vec4<f32> = u_xlat6;
  let x_351 : vec3<f32> = ((vec3<f32>(x_344.x, x_344.y, x_344.z) * vec3<f32>(x_346.x, x_346.y, x_346.z)) + vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_354 : vec4<f32> = u_xlat4;
  let x_357 : vec4<f32> = x_58.x_DiffuseRemapScale2;
  let x_359 : vec3<f32> = (vec3<f32>(x_354.z, x_354.z, x_354.z) * vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_360 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_362 : vec4<f32> = u_xlat7;
  let x_364 : vec4<f32> = u_xlat6;
  let x_367 : vec4<f32> = u_xlat5;
  let x_369 : vec3<f32> = ((vec3<f32>(x_362.x, x_362.y, x_362.z) * vec3<f32>(x_364.x, x_364.y, x_364.z)) + vec3<f32>(x_367.x, x_367.y, x_367.z));
  let x_370 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_372 : vec4<f32> = u_xlat4;
  let x_375 : vec4<f32> = x_58.x_DiffuseRemapScale3;
  let x_377 : vec3<f32> = (vec3<f32>(x_372.w, x_372.w, x_372.w) * vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_378 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_380 : vec4<f32> = u_xlat8;
  let x_382 : vec4<f32> = u_xlat6;
  let x_385 : vec4<f32> = u_xlat5;
  let x_387 : vec3<f32> = ((vec3<f32>(x_380.x, x_380.y, x_380.z) * vec3<f32>(x_382.x, x_382.y, x_382.z)) + vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_388 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_395 : vec4<f32> = vs_TEXCOORD1;
  let x_398 : f32 = x_28.x_GlobalMipBias.x;
  let x_399 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_395.x, x_395.y), x_398);
  let x_400 : vec3<f32> = vec3<f32>(x_399.x, x_399.y, x_399.w);
  let x_401 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_404 : f32 = u_xlat6.x;
  let x_406 : f32 = u_xlat6.z;
  u_xlat6.x = (x_404 * x_406);
  let x_409 : vec4<f32> = u_xlat6;
  let x_414 : vec2<f32> = ((vec2<f32>(x_409.x, x_409.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_415 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_414.x, x_414.y, x_415.z, x_415.w);
  let x_417 : vec4<f32> = u_xlat6;
  let x_419 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec2<f32>(x_417.x, x_417.y), vec2<f32>(x_419.x, x_419.y));
  let x_422 : f32 = u_xlat79;
  u_xlat79 = min(x_422, 1.0f);
  let x_424 : f32 = u_xlat79;
  u_xlat79 = (-(x_424) + 1.0f);
  let x_427 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_427);
  let x_429 : f32 = u_xlat79;
  u_xlat7.z = max(x_429, 0.0000000000000001f);
  let x_433 : vec4<f32> = u_xlat6;
  let x_436 : f32 = x_58.x_NormalScale0;
  let x_438 : vec2<f32> = (vec2<f32>(x_433.x, x_433.y) * vec2<f32>(x_436, x_436));
  let x_439 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_438.x, x_438.y, x_439.z, x_439.w);
  let x_445 : vec4<f32> = vs_TEXCOORD1;
  let x_448 : f32 = x_28.x_GlobalMipBias.x;
  let x_449 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_445.z, x_445.w), x_448);
  let x_450 : vec3<f32> = vec3<f32>(x_449.x, x_449.y, x_449.w);
  let x_451 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_454 : f32 = u_xlat6.x;
  let x_456 : f32 = u_xlat6.z;
  u_xlat6.x = (x_454 * x_456);
  let x_459 : vec4<f32> = u_xlat6;
  let x_462 : vec2<f32> = ((vec2<f32>(x_459.x, x_459.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_463 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_462.x, x_462.y, x_463.z, x_463.w);
  let x_465 : vec4<f32> = u_xlat6;
  let x_467 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec2<f32>(x_465.x, x_465.y), vec2<f32>(x_467.x, x_467.y));
  let x_470 : f32 = u_xlat79;
  u_xlat79 = min(x_470, 1.0f);
  let x_472 : f32 = u_xlat79;
  u_xlat79 = (-(x_472) + 1.0f);
  let x_475 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_475);
  let x_477 : f32 = u_xlat79;
  u_xlat8.z = max(x_477, 0.0000000000000001f);
  let x_480 : vec4<f32> = u_xlat6;
  let x_483 : f32 = x_58.x_NormalScale1;
  let x_485 : f32 = x_58.x_NormalScale1;
  let x_486 : vec2<f32> = vec2<f32>(x_483, x_485);
  let x_490 : vec2<f32> = (vec2<f32>(x_480.x, x_480.y) * vec2<f32>(x_486.x, x_486.y));
  let x_491 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_490.x, x_490.y, x_491.z, x_491.w);
  let x_493 : vec4<f32> = u_xlat4;
  let x_495 : vec4<f32> = u_xlat8;
  let x_497 : vec3<f32> = (vec3<f32>(x_493.y, x_493.y, x_493.y) * vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_498 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_500 : vec4<f32> = u_xlat4;
  let x_502 : vec4<f32> = u_xlat7;
  let x_505 : vec4<f32> = u_xlat6;
  let x_507 : vec3<f32> = ((vec3<f32>(x_500.x, x_500.x, x_500.x) * vec3<f32>(x_502.x, x_502.y, x_502.z)) + vec3<f32>(x_505.x, x_505.y, x_505.z));
  let x_508 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_514 : vec4<f32> = vs_TEXCOORD2;
  let x_517 : f32 = x_28.x_GlobalMipBias.x;
  let x_518 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_514.x, x_514.y), x_517);
  let x_519 : vec3<f32> = vec3<f32>(x_518.x, x_518.y, x_518.w);
  let x_520 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_523 : f32 = u_xlat7.x;
  let x_525 : f32 = u_xlat7.z;
  u_xlat7.x = (x_523 * x_525);
  let x_528 : vec4<f32> = u_xlat7;
  let x_531 : vec2<f32> = ((vec2<f32>(x_528.x, x_528.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_532 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_531.x, x_531.y, x_532.z, x_532.w);
  let x_534 : vec4<f32> = u_xlat7;
  let x_536 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec2<f32>(x_534.x, x_534.y), vec2<f32>(x_536.x, x_536.y));
  let x_539 : f32 = u_xlat79;
  u_xlat79 = min(x_539, 1.0f);
  let x_541 : f32 = u_xlat79;
  u_xlat79 = (-(x_541) + 1.0f);
  let x_544 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_544);
  let x_546 : f32 = u_xlat79;
  u_xlat8.z = max(x_546, 0.0000000000000001f);
  let x_549 : vec4<f32> = u_xlat7;
  let x_553 : f32 = x_58.x_NormalScale2;
  let x_555 : f32 = x_58.x_NormalScale2;
  let x_556 : vec2<f32> = vec2<f32>(x_553, x_555);
  let x_560 : vec2<f32> = (vec2<f32>(x_549.x, x_549.y) * vec2<f32>(x_556.x, x_556.y));
  let x_561 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_560.x, x_560.y, x_561.z, x_561.w);
  let x_563 : vec4<f32> = u_xlat4;
  let x_565 : vec4<f32> = u_xlat8;
  let x_568 : vec4<f32> = u_xlat6;
  let x_570 : vec3<f32> = ((vec3<f32>(x_563.z, x_563.z, x_563.z) * vec3<f32>(x_565.x, x_565.y, x_565.z)) + vec3<f32>(x_568.x, x_568.y, x_568.z));
  let x_571 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
  let x_577 : vec4<f32> = vs_TEXCOORD2;
  let x_580 : f32 = x_28.x_GlobalMipBias.x;
  let x_581 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_577.z, x_577.w), x_580);
  let x_582 : vec3<f32> = vec3<f32>(x_581.x, x_581.y, x_581.w);
  let x_583 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
  let x_586 : f32 = u_xlat7.x;
  let x_588 : f32 = u_xlat7.z;
  u_xlat7.x = (x_586 * x_588);
  let x_591 : vec4<f32> = u_xlat7;
  let x_594 : vec2<f32> = ((vec2<f32>(x_591.x, x_591.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_595 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_594.x, x_594.y, x_595.z, x_595.w);
  let x_597 : vec4<f32> = u_xlat7;
  let x_599 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec2<f32>(x_597.x, x_597.y), vec2<f32>(x_599.x, x_599.y));
  let x_602 : f32 = u_xlat79;
  u_xlat79 = min(x_602, 1.0f);
  let x_604 : f32 = u_xlat79;
  u_xlat79 = (-(x_604) + 1.0f);
  let x_607 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_607);
  let x_609 : f32 = u_xlat79;
  u_xlat8.z = max(x_609, 0.0000000000000001f);
  let x_612 : vec4<f32> = u_xlat7;
  let x_616 : f32 = x_58.x_NormalScale3;
  let x_618 : f32 = x_58.x_NormalScale3;
  let x_619 : vec2<f32> = vec2<f32>(x_616, x_618);
  let x_623 : vec2<f32> = (vec2<f32>(x_612.x, x_612.y) * vec2<f32>(x_619.x, x_619.y));
  let x_624 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_623.x, x_623.y, x_624.z, x_624.w);
  let x_626 : vec4<f32> = u_xlat4;
  let x_628 : vec4<f32> = u_xlat8;
  let x_631 : vec4<f32> = u_xlat6;
  let x_633 : vec3<f32> = ((vec3<f32>(x_626.w, x_626.w, x_626.w) * vec3<f32>(x_628.x, x_628.y, x_628.z)) + vec3<f32>(x_631.x, x_631.y, x_631.z));
  let x_634 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
  let x_637 : f32 = u_xlat6.z;
  u_xlat6.w = (x_637 + 0.00000999999974737875f);
  let x_641 : vec4<f32> = u_xlat6;
  let x_643 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec3<f32>(x_641.x, x_641.y, x_641.w), vec3<f32>(x_643.x, x_643.y, x_643.w));
  let x_646 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_646);
  let x_648 : f32 = u_xlat79;
  let x_650 : vec4<f32> = u_xlat6;
  let x_652 : vec3<f32> = (vec3<f32>(x_648, x_648, x_648) * vec3<f32>(x_650.x, x_650.y, x_650.w));
  let x_653 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
  let x_656 : f32 = x_58.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_656;
  let x_659 : f32 = x_58.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_659;
  let x_662 : f32 = x_58.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_662;
  let x_665 : f32 = x_58.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_665;
  let x_668 : f32 = x_58.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_668;
  let x_671 : f32 = x_58.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_671;
  let x_674 : f32 = x_58.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_674;
  let x_677 : f32 = x_58.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_677;
  let x_679 : vec4<f32> = u_xlat7;
  let x_680 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_679 + x_680);
  let x_683 : f32 = u_xlat0.z;
  u_xlat8.x = x_683;
  let x_686 : f32 = u_xlat1.z;
  u_xlat8.y = x_686;
  let x_689 : f32 = u_xlat2.z;
  u_xlat8.z = x_689;
  let x_692 : f32 = u_xlat3.y;
  u_xlat8.w = x_692;
  let x_694 : vec4<f32> = u_xlat9;
  let x_697 : f32 = x_58.x_Smoothness0;
  let x_699 : f32 = x_58.x_Smoothness1;
  let x_701 : f32 = x_58.x_Smoothness2;
  let x_703 : f32 = x_58.x_Smoothness3;
  let x_706 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_694) * vec4<f32>(x_697, x_699, x_701, x_703)) + x_706);
  let x_710 : f32 = x_58.x_LayerHasMask0;
  let x_713 : f32 = x_58.x_LayerHasMask1;
  let x_716 : f32 = x_58.x_LayerHasMask2;
  let x_719 : f32 = x_58.x_LayerHasMask3;
  let x_721 : vec4<f32> = u_xlat8;
  let x_723 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_710, x_713, x_716, x_719) * x_721) + x_723);
  let x_726 : vec4<f32> = u_xlat4;
  let x_727 : vec4<f32> = u_xlat8;
  u_xlat52 = dot(x_726, x_727);
  let x_730 : f32 = u_xlat0.x;
  u_xlat8.x = x_730;
  let x_733 : f32 = u_xlat1.x;
  u_xlat8.y = x_733;
  let x_736 : f32 = u_xlat2.x;
  u_xlat8.z = x_736;
  let x_739 : f32 = u_xlat3.x;
  u_xlat8.w = x_739;
  let x_741 : vec4<f32> = u_xlat8;
  let x_744 : f32 = x_58.x_Metallic0;
  let x_747 : f32 = x_58.x_Metallic1;
  let x_750 : f32 = x_58.x_Metallic2;
  let x_753 : f32 = x_58.x_Metallic3;
  u_xlat8 = (x_741 + -(vec4<f32>(x_744, x_747, x_750, x_753)));
  let x_758 : f32 = x_58.x_LayerHasMask0;
  let x_760 : f32 = x_58.x_LayerHasMask1;
  let x_762 : f32 = x_58.x_LayerHasMask2;
  let x_764 : f32 = x_58.x_LayerHasMask3;
  let x_766 : vec4<f32> = u_xlat8;
  let x_769 : f32 = x_58.x_Metallic0;
  let x_771 : f32 = x_58.x_Metallic1;
  let x_773 : f32 = x_58.x_Metallic2;
  let x_775 : f32 = x_58.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_758, x_760, x_762, x_764) * x_766) + vec4<f32>(x_769, x_771, x_773, x_775));
  let x_778 : vec4<f32> = u_xlat4;
  let x_779 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_778, x_779);
  let x_783 : f32 = u_xlat0.y;
  u_xlat3.x = x_783;
  let x_786 : f32 = u_xlat1.y;
  u_xlat3.y = x_786;
  let x_789 : f32 = u_xlat2.y;
  u_xlat3.z = x_789;
  let x_791 : vec4<f32> = u_xlat7;
  let x_793 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_791) + x_793);
  let x_796 : f32 = x_58.x_LayerHasMask0;
  let x_798 : f32 = x_58.x_LayerHasMask1;
  let x_800 : f32 = x_58.x_LayerHasMask2;
  let x_802 : f32 = x_58.x_LayerHasMask3;
  let x_804 : vec4<f32> = u_xlat1;
  let x_806 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_796, x_798, x_800, x_802) * x_804) + x_806);
  let x_809 : vec4<f32> = u_xlat4;
  let x_810 : vec4<f32> = u_xlat1;
  u_xlat26 = dot(x_809, x_810);
  let x_812 : vec4<f32> = u_xlat6;
  let x_815 : vec4<f32> = vs_TEXCOORD5;
  let x_817 : vec3<f32> = (vec3<f32>(x_812.y, x_812.y, x_812.y) * vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_818 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  let x_820 : vec4<f32> = u_xlat6;
  let x_823 : vec4<f32> = vs_TEXCOORD4;
  let x_827 : vec4<f32> = u_xlat1;
  let x_829 : vec3<f32> = ((vec3<f32>(x_820.x, x_820.x, x_820.x) * -(vec3<f32>(x_823.x, x_823.y, x_823.z))) + vec3<f32>(x_827.x, x_827.y, x_827.z));
  let x_830 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  let x_832 : vec4<f32> = u_xlat6;
  let x_835 : vec4<f32> = vs_TEXCOORD3;
  let x_838 : vec4<f32> = u_xlat1;
  let x_840 : vec3<f32> = ((vec3<f32>(x_832.z, x_832.z, x_832.z) * vec3<f32>(x_835.x, x_835.y, x_835.z)) + vec3<f32>(x_838.x, x_838.y, x_838.z));
  let x_841 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
  let x_843 : vec4<f32> = u_xlat1;
  let x_845 : vec4<f32> = u_xlat1;
  u_xlat79 = dot(vec3<f32>(x_843.x, x_843.y, x_843.z), vec3<f32>(x_845.x, x_845.y, x_845.z));
  let x_848 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_848);
  let x_850 : f32 = u_xlat79;
  let x_852 : vec4<f32> = u_xlat1;
  let x_854 : vec3<f32> = (vec3<f32>(x_850, x_850, x_850) * vec3<f32>(x_852.x, x_852.y, x_852.z));
  let x_855 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
  let x_859 : vec3<f32> = vs_TEXCOORD7;
  let x_870 : vec4<f32> = x_868.x_CascadeShadowSplitSpheres0;
  let x_873 : vec3<f32> = (x_859 + -(vec3<f32>(x_870.x, x_870.y, x_870.z)));
  let x_874 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  let x_876 : vec3<f32> = vs_TEXCOORD7;
  let x_878 : vec4<f32> = x_868.x_CascadeShadowSplitSpheres1;
  let x_881 : vec3<f32> = (x_876 + -(vec3<f32>(x_878.x, x_878.y, x_878.z)));
  let x_882 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_881.x, x_881.y, x_881.z, x_882.w);
  let x_884 : vec3<f32> = vs_TEXCOORD7;
  let x_886 : vec4<f32> = x_868.x_CascadeShadowSplitSpheres2;
  let x_889 : vec3<f32> = (x_884 + -(vec3<f32>(x_886.x, x_886.y, x_886.z)));
  let x_890 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_889.x, x_889.y, x_889.z, x_890.w);
  let x_892 : vec3<f32> = vs_TEXCOORD7;
  let x_894 : vec4<f32> = x_868.x_CascadeShadowSplitSpheres3;
  let x_897 : vec3<f32> = (x_892 + -(vec3<f32>(x_894.x, x_894.y, x_894.z)));
  let x_898 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
  let x_900 : vec4<f32> = u_xlat2;
  let x_902 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_900.x, x_900.y, x_900.z), vec3<f32>(x_902.x, x_902.y, x_902.z));
  let x_906 : vec4<f32> = u_xlat3;
  let x_908 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_906.x, x_906.y, x_906.z), vec3<f32>(x_908.x, x_908.y, x_908.z));
  let x_912 : vec4<f32> = u_xlat4;
  let x_914 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_912.x, x_912.y, x_912.z), vec3<f32>(x_914.x, x_914.y, x_914.z));
  let x_918 : vec4<f32> = u_xlat6;
  let x_920 : vec4<f32> = u_xlat6;
  u_xlat2.w = dot(vec3<f32>(x_918.x, x_918.y, x_918.z), vec3<f32>(x_920.x, x_920.y, x_920.z));
  let x_926 : vec4<f32> = u_xlat2;
  let x_928 : vec4<f32> = x_868.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_926 < x_928);
  let x_931 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_931);
  let x_935 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_935);
  let x_939 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_939);
  let x_943 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_943);
  let x_947 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_947);
  let x_952 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_952);
  let x_956 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_956);
  let x_959 : vec4<f32> = u_xlat2;
  let x_961 : vec4<f32> = u_xlat3;
  let x_963 : vec3<f32> = (vec3<f32>(x_959.x, x_959.y, x_959.z) + vec3<f32>(x_961.y, x_961.z, x_961.w));
  let x_964 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_963.x, x_963.y, x_963.z, x_964.w);
  let x_966 : vec4<f32> = u_xlat2;
  let x_969 : vec3<f32> = max(vec3<f32>(x_966.x, x_966.y, x_966.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_970 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_970.x, x_969.x, x_969.y, x_969.z);
  let x_972 : vec4<f32> = u_xlat3;
  u_xlat79 = dot(x_972, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_976 : f32 = u_xlat79;
  u_xlat79 = (-(x_976) + 4.0f);
  let x_981 : f32 = u_xlat79;
  u_xlatu79 = u32(x_981);
  let x_985 : u32 = u_xlatu79;
  u_xlati79 = (bitcast<i32>(x_985) << bitcast<u32>(2i));
  let x_988 : vec3<f32> = vs_TEXCOORD7;
  let x_990 : i32 = u_xlati79;
  let x_993 : i32 = u_xlati79;
  let x_997 : vec4<f32> = x_868.x_MainLightWorldToShadow[((x_990 + 1i) / 4i)][((x_993 + 1i) % 4i)];
  let x_999 : vec3<f32> = (vec3<f32>(x_988.y, x_988.y, x_988.y) * vec3<f32>(x_997.x, x_997.y, x_997.z));
  let x_1000 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_999.x, x_999.y, x_999.z, x_1000.w);
  let x_1002 : i32 = u_xlati79;
  let x_1004 : i32 = u_xlati79;
  let x_1007 : vec4<f32> = x_868.x_MainLightWorldToShadow[(x_1002 / 4i)][(x_1004 % 4i)];
  let x_1009 : vec3<f32> = vs_TEXCOORD7;
  let x_1012 : vec4<f32> = u_xlat2;
  let x_1014 : vec3<f32> = ((vec3<f32>(x_1007.x, x_1007.y, x_1007.z) * vec3<f32>(x_1009.x, x_1009.x, x_1009.x)) + vec3<f32>(x_1012.x, x_1012.y, x_1012.z));
  let x_1015 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1014.x, x_1014.y, x_1014.z, x_1015.w);
  let x_1017 : i32 = u_xlati79;
  let x_1020 : i32 = u_xlati79;
  let x_1024 : vec4<f32> = x_868.x_MainLightWorldToShadow[((x_1017 + 2i) / 4i)][((x_1020 + 2i) % 4i)];
  let x_1026 : vec3<f32> = vs_TEXCOORD7;
  let x_1029 : vec4<f32> = u_xlat2;
  let x_1031 : vec3<f32> = ((vec3<f32>(x_1024.x, x_1024.y, x_1024.z) * vec3<f32>(x_1026.z, x_1026.z, x_1026.z)) + vec3<f32>(x_1029.x, x_1029.y, x_1029.z));
  let x_1032 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1031.x, x_1031.y, x_1031.z, x_1032.w);
  let x_1034 : vec4<f32> = u_xlat2;
  let x_1036 : i32 = u_xlati79;
  let x_1039 : i32 = u_xlati79;
  let x_1043 : vec4<f32> = x_868.x_MainLightWorldToShadow[((x_1036 + 3i) / 4i)][((x_1039 + 3i) % 4i)];
  let x_1045 : vec3<f32> = (vec3<f32>(x_1034.x, x_1034.y, x_1034.z) + vec3<f32>(x_1043.x, x_1043.y, x_1043.z));
  let x_1046 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1045.x, x_1045.y, x_1045.z, x_1046.w);
  let x_1053 : vec4<f32> = vs_TEXCOORD0;
  let x_1056 : f32 = x_28.x_GlobalMipBias.x;
  let x_1057 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_1053.z, x_1053.w), x_1056);
  u_xlat3 = x_1057;
  let x_1062 : vec4<f32> = vs_TEXCOORD0;
  let x_1065 : f32 = x_28.x_GlobalMipBias.x;
  let x_1066 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_1062.z, x_1062.w), x_1065);
  let x_1067 : vec3<f32> = vec3<f32>(x_1066.x, x_1066.y, x_1066.z);
  let x_1068 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1067.x, x_1067.y, x_1067.z, x_1068.w);
  let x_1070 : vec4<f32> = u_xlat3;
  let x_1074 : vec3<f32> = (vec3<f32>(x_1070.x, x_1070.y, x_1070.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1075 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1074.x, x_1074.y, x_1074.z, x_1075.w);
  let x_1077 : vec4<f32> = u_xlat1;
  let x_1079 : vec4<f32> = u_xlat3;
  u_xlat79 = dot(vec3<f32>(x_1077.x, x_1077.y, x_1077.z), vec3<f32>(x_1079.x, x_1079.y, x_1079.z));
  let x_1082 : f32 = u_xlat79;
  u_xlat79 = (x_1082 + 0.5f);
  let x_1084 : f32 = u_xlat79;
  let x_1086 : vec4<f32> = u_xlat4;
  let x_1088 : vec3<f32> = (vec3<f32>(x_1084, x_1084, x_1084) * vec3<f32>(x_1086.x, x_1086.y, x_1086.z));
  let x_1089 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1088.x, x_1088.y, x_1088.z, x_1089.w);
  let x_1092 : f32 = u_xlat3.w;
  u_xlat79 = max(x_1092, 0.00009999999747378752f);
  let x_1095 : vec4<f32> = u_xlat3;
  let x_1097 : f32 = u_xlat79;
  let x_1099 : vec3<f32> = (vec3<f32>(x_1095.x, x_1095.y, x_1095.z) / vec3<f32>(x_1097, x_1097, x_1097));
  let x_1100 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1099.x, x_1099.y, x_1099.z, x_1100.w);
  let x_1103 : f32 = u_xlat0.x;
  u_xlat79 = ((-(x_1103) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_1109 : f32 = u_xlat52;
  let x_1110 : f32 = u_xlat79;
  u_xlat80 = (x_1109 + -(x_1110));
  let x_1113 : f32 = u_xlat79;
  let x_1115 : vec4<f32> = u_xlat5;
  let x_1117 : vec3<f32> = (vec3<f32>(x_1113, x_1113, x_1113) * vec3<f32>(x_1115.x, x_1115.y, x_1115.z));
  let x_1118 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1117.x, x_1117.y, x_1117.z, x_1118.w);
  let x_1120 : vec4<f32> = u_xlat5;
  let x_1124 : vec3<f32> = (vec3<f32>(x_1120.x, x_1120.y, x_1120.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_1125 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1124.x, x_1124.y, x_1124.z, x_1125.w);
  let x_1127 : vec3<f32> = u_xlat0;
  let x_1129 : vec4<f32> = u_xlat5;
  let x_1134 : vec3<f32> = ((vec3<f32>(x_1127.x, x_1127.x, x_1127.x) * vec3<f32>(x_1129.x, x_1129.y, x_1129.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_1135 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1134.x, x_1134.y, x_1134.z, x_1135.w);
  let x_1137 : f32 = u_xlat52;
  u_xlat0.x = (-(x_1137) + 1.0f);
  let x_1142 : f32 = u_xlat0.x;
  let x_1144 : f32 = u_xlat0.x;
  u_xlat52 = (x_1142 * x_1144);
  let x_1146 : f32 = u_xlat52;
  u_xlat52 = max(x_1146, 0.0078125f);
  let x_1149 : f32 = u_xlat52;
  let x_1150 : f32 = u_xlat52;
  u_xlat79 = (x_1149 * x_1150);
  let x_1152 : f32 = u_xlat80;
  u_xlat80 = (x_1152 + 1.0f);
  let x_1154 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1154, 0.0f, 1.0f);
  let x_1157 : f32 = u_xlat52;
  u_xlat81 = ((x_1157 * 4.0f) + 2.0f);
  let x_1160 : f32 = u_xlat26;
  u_xlat26 = min(x_1160, 1.0f);
  let x_1164 : f32 = x_868.x_MainLightShadowParams.y;
  u_xlatb82 = (0.0f < x_1164);
  let x_1166 : bool = u_xlatb82;
  if (x_1166) {
    let x_1170 : f32 = x_868.x_MainLightShadowParams.y;
    u_xlatb82 = (x_1170 == 1.0f);
    let x_1172 : bool = u_xlatb82;
    if (x_1172) {
      let x_1175 : vec4<f32> = u_xlat2;
      let x_1178 : vec4<f32> = x_868.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_1175.x, x_1175.y, x_1175.x, x_1175.y) + x_1178);
      let x_1182 : vec4<f32> = u_xlat6;
      let x_1183 : vec2<f32> = vec2<f32>(x_1182.x, x_1182.y);
      let x_1185 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_1183.x, x_1183.y, x_1185);
      let x_1197 : vec3<f32> = txVec0;
      let x_1199 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1197.xy, x_1197.z);
      u_xlat7.x = x_1199;
      let x_1202 : vec4<f32> = u_xlat6;
      let x_1203 : vec2<f32> = vec2<f32>(x_1202.z, x_1202.w);
      let x_1205 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_1203.x, x_1203.y, x_1205);
      let x_1212 : vec3<f32> = txVec1;
      let x_1214 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1212.xy, x_1212.z);
      u_xlat7.y = x_1214;
      let x_1216 : vec4<f32> = u_xlat2;
      let x_1219 : vec4<f32> = x_868.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1216.x, x_1216.y, x_1216.x, x_1216.y) + x_1219);
      let x_1222 : vec4<f32> = u_xlat6;
      let x_1223 : vec2<f32> = vec2<f32>(x_1222.x, x_1222.y);
      let x_1225 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_1223.x, x_1223.y, x_1225);
      let x_1232 : vec3<f32> = txVec2;
      let x_1234 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1232.xy, x_1232.z);
      u_xlat7.z = x_1234;
      let x_1237 : vec4<f32> = u_xlat6;
      let x_1238 : vec2<f32> = vec2<f32>(x_1237.z, x_1237.w);
      let x_1240 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_1238.x, x_1238.y, x_1240);
      let x_1247 : vec3<f32> = txVec3;
      let x_1249 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1247.xy, x_1247.z);
      u_xlat7.w = x_1249;
      let x_1252 : vec4<f32> = u_xlat7;
      u_xlat82 = dot(x_1252, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1259 : f32 = x_868.x_MainLightShadowParams.y;
      u_xlatb83 = (x_1259 == 2.0f);
      let x_1261 : bool = u_xlatb83;
      if (x_1261) {
        let x_1264 : vec4<f32> = u_xlat2;
        let x_1267 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1270 : vec2<f32> = ((vec2<f32>(x_1264.x, x_1264.y) * vec2<f32>(x_1267.z, x_1267.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1271 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1270.x, x_1270.y, x_1271.z, x_1271.w);
        let x_1273 : vec4<f32> = u_xlat6;
        let x_1275 : vec2<f32> = floor(vec2<f32>(x_1273.x, x_1273.y));
        let x_1276 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1275.x, x_1275.y, x_1276.z, x_1276.w);
        let x_1280 : vec4<f32> = u_xlat2;
        let x_1283 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1286 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1280.x, x_1280.y) * vec2<f32>(x_1283.z, x_1283.w)) + -(vec2<f32>(x_1286.x, x_1286.y)));
        let x_1290 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1290.x, x_1290.x, x_1290.y, x_1290.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1294 : vec4<f32> = u_xlat7;
        let x_1296 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1294.x, x_1294.x, x_1294.z, x_1294.z) * vec4<f32>(x_1296.x, x_1296.x, x_1296.z, x_1296.z));
        let x_1299 : vec4<f32> = u_xlat8;
        let x_1303 : vec2<f32> = (vec2<f32>(x_1299.y, x_1299.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1304 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1303.x, x_1304.y, x_1303.y, x_1304.w);
        let x_1306 : vec4<f32> = u_xlat8;
        let x_1309 : vec2<f32> = u_xlat58;
        let x_1311 : vec2<f32> = ((vec2<f32>(x_1306.x, x_1306.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1309));
        let x_1312 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1311.x, x_1311.y, x_1312.z, x_1312.w);
        let x_1315 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_1315) + vec2<f32>(1.0f, 1.0f));
        let x_1319 : vec2<f32> = u_xlat58;
        let x_1321 : vec2<f32> = min(x_1319, vec2<f32>(0.0f, 0.0f));
        let x_1322 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1321.x, x_1321.y, x_1322.z, x_1322.w);
        let x_1324 : vec4<f32> = u_xlat9;
        let x_1327 : vec4<f32> = u_xlat9;
        let x_1330 : vec2<f32> = u_xlat60;
        let x_1331 : vec2<f32> = ((-(vec2<f32>(x_1324.x, x_1324.y)) * vec2<f32>(x_1327.x, x_1327.y)) + x_1330);
        let x_1332 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1331.x, x_1331.y, x_1332.z, x_1332.w);
        let x_1334 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_1334, vec2<f32>(0.0f, 0.0f));
        let x_1336 : vec2<f32> = u_xlat58;
        let x_1338 : vec2<f32> = u_xlat58;
        let x_1340 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_1336) * x_1338) + vec2<f32>(x_1340.y, x_1340.w));
        let x_1343 : vec4<f32> = u_xlat9;
        let x_1345 : vec2<f32> = (vec2<f32>(x_1343.x, x_1343.y) + vec2<f32>(1.0f, 1.0f));
        let x_1346 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1345.x, x_1345.y, x_1346.z, x_1346.w);
        let x_1348 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_1348 + vec2<f32>(1.0f, 1.0f));
        let x_1350 : vec4<f32> = u_xlat8;
        let x_1354 : vec2<f32> = (vec2<f32>(x_1350.x, x_1350.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1355 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1354.x, x_1354.y, x_1355.z, x_1355.w);
        let x_1357 : vec2<f32> = u_xlat60;
        let x_1358 : vec2<f32> = (x_1357 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1359 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1358.x, x_1358.y, x_1359.z, x_1359.w);
        let x_1361 : vec4<f32> = u_xlat9;
        let x_1363 : vec2<f32> = (vec2<f32>(x_1361.x, x_1361.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1364 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1363.x, x_1363.y, x_1364.z, x_1364.w);
        let x_1366 : vec2<f32> = u_xlat58;
        let x_1367 : vec2<f32> = (x_1366 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1368 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1367.x, x_1367.y, x_1368.z, x_1368.w);
        let x_1370 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_1370.y, x_1370.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1374 : f32 = u_xlat9.x;
        u_xlat10.z = x_1374;
        let x_1377 : f32 = u_xlat58.x;
        u_xlat10.w = x_1377;
        let x_1380 : f32 = u_xlat11.x;
        u_xlat8.z = x_1380;
        let x_1383 : f32 = u_xlat7.x;
        u_xlat8.w = x_1383;
        let x_1385 : vec4<f32> = u_xlat8;
        let x_1387 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1385.z, x_1385.w, x_1385.x, x_1385.z) + vec4<f32>(x_1387.z, x_1387.w, x_1387.x, x_1387.z));
        let x_1391 : f32 = u_xlat10.y;
        u_xlat9.z = x_1391;
        let x_1394 : f32 = u_xlat58.y;
        u_xlat9.w = x_1394;
        let x_1397 : f32 = u_xlat8.y;
        u_xlat11.z = x_1397;
        let x_1400 : f32 = u_xlat7.z;
        u_xlat11.w = x_1400;
        let x_1402 : vec4<f32> = u_xlat9;
        let x_1404 : vec4<f32> = u_xlat11;
        let x_1406 : vec3<f32> = (vec3<f32>(x_1402.z, x_1402.y, x_1402.w) + vec3<f32>(x_1404.z, x_1404.y, x_1404.w));
        let x_1407 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1406.x, x_1406.y, x_1406.z, x_1407.w);
        let x_1409 : vec4<f32> = u_xlat8;
        let x_1411 : vec4<f32> = u_xlat12;
        let x_1413 : vec3<f32> = (vec3<f32>(x_1409.x, x_1409.z, x_1409.w) / vec3<f32>(x_1411.z, x_1411.w, x_1411.y));
        let x_1414 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1413.x, x_1413.y, x_1413.z, x_1414.w);
        let x_1416 : vec4<f32> = u_xlat8;
        let x_1421 : vec3<f32> = (vec3<f32>(x_1416.x, x_1416.y, x_1416.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1422 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1421.x, x_1421.y, x_1421.z, x_1422.w);
        let x_1424 : vec4<f32> = u_xlat11;
        let x_1426 : vec4<f32> = u_xlat7;
        let x_1428 : vec3<f32> = (vec3<f32>(x_1424.z, x_1424.y, x_1424.w) / vec3<f32>(x_1426.x, x_1426.y, x_1426.z));
        let x_1429 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1428.x, x_1428.y, x_1428.z, x_1429.w);
        let x_1431 : vec4<f32> = u_xlat9;
        let x_1433 : vec3<f32> = (vec3<f32>(x_1431.x, x_1431.y, x_1431.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1434 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1433.x, x_1433.y, x_1433.z, x_1434.w);
        let x_1436 : vec4<f32> = u_xlat8;
        let x_1439 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1441 : vec3<f32> = (vec3<f32>(x_1436.y, x_1436.x, x_1436.z) * vec3<f32>(x_1439.x, x_1439.x, x_1439.x));
        let x_1442 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1441.x, x_1441.y, x_1441.z, x_1442.w);
        let x_1444 : vec4<f32> = u_xlat9;
        let x_1447 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1449 : vec3<f32> = (vec3<f32>(x_1444.x, x_1444.y, x_1444.z) * vec3<f32>(x_1447.y, x_1447.y, x_1447.y));
        let x_1450 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1449.x, x_1449.y, x_1449.z, x_1450.w);
        let x_1453 : f32 = u_xlat9.x;
        u_xlat8.w = x_1453;
        let x_1455 : vec4<f32> = u_xlat6;
        let x_1458 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1461 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1455.x, x_1455.y, x_1455.x, x_1455.y) * vec4<f32>(x_1458.x, x_1458.y, x_1458.x, x_1458.y)) + vec4<f32>(x_1461.y, x_1461.w, x_1461.x, x_1461.w));
        let x_1464 : vec4<f32> = u_xlat6;
        let x_1467 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1470 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_1464.x, x_1464.y) * vec2<f32>(x_1467.x, x_1467.y)) + vec2<f32>(x_1470.z, x_1470.w));
        let x_1474 : f32 = u_xlat8.y;
        u_xlat9.w = x_1474;
        let x_1476 : vec4<f32> = u_xlat9;
        let x_1477 : vec2<f32> = vec2<f32>(x_1476.y, x_1476.z);
        let x_1478 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1478.x, x_1477.x, x_1478.z, x_1477.y);
        let x_1480 : vec4<f32> = u_xlat6;
        let x_1483 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1486 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1480.x, x_1480.y, x_1480.x, x_1480.y) * vec4<f32>(x_1483.x, x_1483.y, x_1483.x, x_1483.y)) + vec4<f32>(x_1486.x, x_1486.y, x_1486.z, x_1486.y));
        let x_1489 : vec4<f32> = u_xlat6;
        let x_1492 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1495 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1489.x, x_1489.y, x_1489.x, x_1489.y) * vec4<f32>(x_1492.x, x_1492.y, x_1492.x, x_1492.y)) + vec4<f32>(x_1495.w, x_1495.y, x_1495.w, x_1495.z));
        let x_1498 : vec4<f32> = u_xlat6;
        let x_1501 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1504 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1498.x, x_1498.y, x_1498.x, x_1498.y) * vec4<f32>(x_1501.x, x_1501.y, x_1501.x, x_1501.y)) + vec4<f32>(x_1504.x, x_1504.w, x_1504.z, x_1504.w));
        let x_1507 : vec4<f32> = u_xlat7;
        let x_1509 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1507.x, x_1507.x, x_1507.x, x_1507.y) * vec4<f32>(x_1509.z, x_1509.w, x_1509.y, x_1509.z));
        let x_1513 : vec4<f32> = u_xlat7;
        let x_1515 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1513.y, x_1513.y, x_1513.z, x_1513.z) * x_1515);
        let x_1519 : f32 = u_xlat7.z;
        let x_1521 : f32 = u_xlat12.y;
        u_xlat83 = (x_1519 * x_1521);
        let x_1524 : vec4<f32> = u_xlat10;
        let x_1525 : vec2<f32> = vec2<f32>(x_1524.x, x_1524.y);
        let x_1527 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_1525.x, x_1525.y, x_1527);
        let x_1534 : vec3<f32> = txVec4;
        let x_1536 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1534.xy, x_1534.z);
        u_xlat6.x = x_1536;
        let x_1539 : vec4<f32> = u_xlat10;
        let x_1540 : vec2<f32> = vec2<f32>(x_1539.z, x_1539.w);
        let x_1542 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_1540.x, x_1540.y, x_1542);
        let x_1550 : vec3<f32> = txVec5;
        let x_1552 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1550.xy, x_1550.z);
        u_xlat32 = x_1552;
        let x_1553 : f32 = u_xlat32;
        let x_1555 : f32 = u_xlat13.y;
        u_xlat32 = (x_1553 * x_1555);
        let x_1558 : f32 = u_xlat13.x;
        let x_1560 : f32 = u_xlat6.x;
        let x_1562 : f32 = u_xlat32;
        u_xlat6.x = ((x_1558 * x_1560) + x_1562);
        let x_1566 : vec2<f32> = u_xlat58;
        let x_1568 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_1566.x, x_1566.y, x_1568);
        let x_1575 : vec3<f32> = txVec6;
        let x_1577 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1575.xy, x_1575.z);
        u_xlat32 = x_1577;
        let x_1579 : f32 = u_xlat13.z;
        let x_1580 : f32 = u_xlat32;
        let x_1583 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1579 * x_1580) + x_1583);
        let x_1587 : vec4<f32> = u_xlat9;
        let x_1588 : vec2<f32> = vec2<f32>(x_1587.x, x_1587.y);
        let x_1590 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_1588.x, x_1588.y, x_1590);
        let x_1597 : vec3<f32> = txVec7;
        let x_1599 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1597.xy, x_1597.z);
        u_xlat32 = x_1599;
        let x_1601 : f32 = u_xlat13.w;
        let x_1602 : f32 = u_xlat32;
        let x_1605 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1601 * x_1602) + x_1605);
        let x_1609 : vec4<f32> = u_xlat11;
        let x_1610 : vec2<f32> = vec2<f32>(x_1609.x, x_1609.y);
        let x_1612 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_1610.x, x_1610.y, x_1612);
        let x_1619 : vec3<f32> = txVec8;
        let x_1621 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1619.xy, x_1619.z);
        u_xlat32 = x_1621;
        let x_1623 : f32 = u_xlat14.x;
        let x_1624 : f32 = u_xlat32;
        let x_1627 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1623 * x_1624) + x_1627);
        let x_1631 : vec4<f32> = u_xlat11;
        let x_1632 : vec2<f32> = vec2<f32>(x_1631.z, x_1631.w);
        let x_1634 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_1632.x, x_1632.y, x_1634);
        let x_1641 : vec3<f32> = txVec9;
        let x_1643 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1641.xy, x_1641.z);
        u_xlat32 = x_1643;
        let x_1645 : f32 = u_xlat14.y;
        let x_1646 : f32 = u_xlat32;
        let x_1649 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1645 * x_1646) + x_1649);
        let x_1653 : vec4<f32> = u_xlat9;
        let x_1654 : vec2<f32> = vec2<f32>(x_1653.z, x_1653.w);
        let x_1656 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_1654.x, x_1654.y, x_1656);
        let x_1663 : vec3<f32> = txVec10;
        let x_1665 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1663.xy, x_1663.z);
        u_xlat32 = x_1665;
        let x_1667 : f32 = u_xlat14.z;
        let x_1668 : f32 = u_xlat32;
        let x_1671 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1667 * x_1668) + x_1671);
        let x_1675 : vec4<f32> = u_xlat8;
        let x_1676 : vec2<f32> = vec2<f32>(x_1675.x, x_1675.y);
        let x_1678 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_1676.x, x_1676.y, x_1678);
        let x_1685 : vec3<f32> = txVec11;
        let x_1687 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1685.xy, x_1685.z);
        u_xlat32 = x_1687;
        let x_1689 : f32 = u_xlat14.w;
        let x_1690 : f32 = u_xlat32;
        let x_1693 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1689 * x_1690) + x_1693);
        let x_1697 : vec4<f32> = u_xlat8;
        let x_1698 : vec2<f32> = vec2<f32>(x_1697.z, x_1697.w);
        let x_1700 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_1698.x, x_1698.y, x_1700);
        let x_1707 : vec3<f32> = txVec12;
        let x_1709 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1707.xy, x_1707.z);
        u_xlat32 = x_1709;
        let x_1710 : f32 = u_xlat83;
        let x_1711 : f32 = u_xlat32;
        let x_1714 : f32 = u_xlat6.x;
        u_xlat82 = ((x_1710 * x_1711) + x_1714);
      } else {
        let x_1717 : vec4<f32> = u_xlat2;
        let x_1720 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1723 : vec2<f32> = ((vec2<f32>(x_1717.x, x_1717.y) * vec2<f32>(x_1720.z, x_1720.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1724 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1723.x, x_1723.y, x_1724.z, x_1724.w);
        let x_1726 : vec4<f32> = u_xlat6;
        let x_1728 : vec2<f32> = floor(vec2<f32>(x_1726.x, x_1726.y));
        let x_1729 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1728.x, x_1728.y, x_1729.z, x_1729.w);
        let x_1731 : vec4<f32> = u_xlat2;
        let x_1734 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1737 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1731.x, x_1731.y) * vec2<f32>(x_1734.z, x_1734.w)) + -(vec2<f32>(x_1737.x, x_1737.y)));
        let x_1741 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1741.x, x_1741.x, x_1741.y, x_1741.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1744 : vec4<f32> = u_xlat7;
        let x_1746 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1744.x, x_1744.x, x_1744.z, x_1744.z) * vec4<f32>(x_1746.x, x_1746.x, x_1746.z, x_1746.z));
        let x_1749 : vec4<f32> = u_xlat8;
        let x_1753 : vec2<f32> = (vec2<f32>(x_1749.y, x_1749.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1754 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1754.x, x_1753.x, x_1754.z, x_1753.y);
        let x_1756 : vec4<f32> = u_xlat8;
        let x_1759 : vec2<f32> = u_xlat58;
        let x_1761 : vec2<f32> = ((vec2<f32>(x_1756.x, x_1756.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1759));
        let x_1762 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1761.x, x_1762.y, x_1761.y, x_1762.w);
        let x_1764 : vec2<f32> = u_xlat58;
        let x_1766 : vec2<f32> = (-(x_1764) + vec2<f32>(1.0f, 1.0f));
        let x_1767 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1766.x, x_1766.y, x_1767.z, x_1767.w);
        let x_1769 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1769, vec2<f32>(0.0f, 0.0f));
        let x_1771 : vec2<f32> = u_xlat60;
        let x_1773 : vec2<f32> = u_xlat60;
        let x_1775 : vec4<f32> = u_xlat8;
        let x_1777 : vec2<f32> = ((-(x_1771) * x_1773) + vec2<f32>(x_1775.x, x_1775.y));
        let x_1778 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1777.x, x_1777.y, x_1778.z, x_1778.w);
        let x_1780 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1780, vec2<f32>(0.0f, 0.0f));
        let x_1783 : vec2<f32> = u_xlat60;
        let x_1785 : vec2<f32> = u_xlat60;
        let x_1787 : vec4<f32> = u_xlat7;
        let x_1789 : vec2<f32> = ((-(x_1783) * x_1785) + vec2<f32>(x_1787.y, x_1787.w));
        let x_1790 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1789.x, x_1790.y, x_1789.y);
        let x_1792 : vec4<f32> = u_xlat8;
        let x_1794 : vec2<f32> = (vec2<f32>(x_1792.x, x_1792.y) + vec2<f32>(2.0f, 2.0f));
        let x_1795 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1794.x, x_1794.y, x_1795.z, x_1795.w);
        let x_1797 : vec3<f32> = u_xlat33;
        let x_1799 : vec2<f32> = (vec2<f32>(x_1797.x, x_1797.z) + vec2<f32>(2.0f, 2.0f));
        let x_1800 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1800.x, x_1799.x, x_1800.z, x_1799.y);
        let x_1803 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1803 * 0.08163200318813323975f);
        let x_1807 : vec4<f32> = u_xlat7;
        let x_1810 : vec3<f32> = (vec3<f32>(x_1807.z, x_1807.x, x_1807.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1811 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1810.x, x_1810.y, x_1810.z, x_1811.w);
        let x_1813 : vec4<f32> = u_xlat8;
        let x_1816 : vec2<f32> = (vec2<f32>(x_1813.x, x_1813.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1817 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1816.x, x_1816.y, x_1817.z, x_1817.w);
        let x_1820 : f32 = u_xlat11.y;
        u_xlat10.x = x_1820;
        let x_1822 : vec2<f32> = u_xlat58;
        let x_1829 : vec2<f32> = ((vec2<f32>(x_1822.x, x_1822.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1830 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1830.x, x_1829.x, x_1830.z, x_1829.y);
        let x_1832 : vec2<f32> = u_xlat58;
        let x_1836 : vec2<f32> = ((vec2<f32>(x_1832.x, x_1832.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1837 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1836.x, x_1837.y, x_1836.y, x_1837.w);
        let x_1840 : f32 = u_xlat7.x;
        u_xlat8.y = x_1840;
        let x_1843 : f32 = u_xlat9.y;
        u_xlat8.w = x_1843;
        let x_1845 : vec4<f32> = u_xlat8;
        let x_1846 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1845 + x_1846);
        let x_1848 : vec2<f32> = u_xlat58;
        let x_1851 : vec2<f32> = ((vec2<f32>(x_1848.y, x_1848.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1852 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1852.x, x_1851.x, x_1852.z, x_1851.y);
        let x_1854 : vec2<f32> = u_xlat58;
        let x_1857 : vec2<f32> = ((vec2<f32>(x_1854.y, x_1854.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1858 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1857.x, x_1858.y, x_1857.y, x_1858.w);
        let x_1861 : f32 = u_xlat7.y;
        u_xlat9.y = x_1861;
        let x_1863 : vec4<f32> = u_xlat9;
        let x_1864 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1863 + x_1864);
        let x_1866 : vec4<f32> = u_xlat8;
        let x_1867 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1866 / x_1867);
        let x_1869 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1869 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1875 : vec4<f32> = u_xlat9;
        let x_1876 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1875 / x_1876);
        let x_1878 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1878 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1880 : vec4<f32> = u_xlat8;
        let x_1883 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1880.w, x_1880.x, x_1880.y, x_1880.z) * vec4<f32>(x_1883.x, x_1883.x, x_1883.x, x_1883.x));
        let x_1886 : vec4<f32> = u_xlat9;
        let x_1889 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1886.x, x_1886.w, x_1886.y, x_1886.z) * vec4<f32>(x_1889.y, x_1889.y, x_1889.y, x_1889.y));
        let x_1892 : vec4<f32> = u_xlat8;
        let x_1893 : vec3<f32> = vec3<f32>(x_1892.y, x_1892.z, x_1892.w);
        let x_1894 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1893.x, x_1894.y, x_1893.y, x_1893.z);
        let x_1897 : f32 = u_xlat9.x;
        u_xlat11.y = x_1897;
        let x_1899 : vec4<f32> = u_xlat6;
        let x_1902 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1905 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1899.x, x_1899.y, x_1899.x, x_1899.y) * vec4<f32>(x_1902.x, x_1902.y, x_1902.x, x_1902.y)) + vec4<f32>(x_1905.x, x_1905.y, x_1905.z, x_1905.y));
        let x_1908 : vec4<f32> = u_xlat6;
        let x_1911 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1914 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1908.x, x_1908.y) * vec2<f32>(x_1911.x, x_1911.y)) + vec2<f32>(x_1914.w, x_1914.y));
        let x_1918 : f32 = u_xlat11.y;
        u_xlat8.y = x_1918;
        let x_1921 : f32 = u_xlat9.z;
        u_xlat11.y = x_1921;
        let x_1923 : vec4<f32> = u_xlat6;
        let x_1926 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1929 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1923.x, x_1923.y, x_1923.x, x_1923.y) * vec4<f32>(x_1926.x, x_1926.y, x_1926.x, x_1926.y)) + vec4<f32>(x_1929.x, x_1929.y, x_1929.z, x_1929.y));
        let x_1932 : vec4<f32> = u_xlat6;
        let x_1935 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1938 : vec4<f32> = u_xlat11;
        let x_1940 : vec2<f32> = ((vec2<f32>(x_1932.x, x_1932.y) * vec2<f32>(x_1935.x, x_1935.y)) + vec2<f32>(x_1938.w, x_1938.y));
        let x_1941 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1940.x, x_1940.y, x_1941.z, x_1941.w);
        let x_1944 : f32 = u_xlat11.y;
        u_xlat8.z = x_1944;
        let x_1947 : vec4<f32> = u_xlat6;
        let x_1950 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1953 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1947.x, x_1947.y, x_1947.x, x_1947.y) * vec4<f32>(x_1950.x, x_1950.y, x_1950.x, x_1950.y)) + vec4<f32>(x_1953.x, x_1953.y, x_1953.x, x_1953.z));
        let x_1957 : f32 = u_xlat9.w;
        u_xlat11.y = x_1957;
        let x_1960 : vec4<f32> = u_xlat6;
        let x_1963 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1966 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1960.x, x_1960.y, x_1960.x, x_1960.y) * vec4<f32>(x_1963.x, x_1963.y, x_1963.x, x_1963.y)) + vec4<f32>(x_1966.x, x_1966.y, x_1966.z, x_1966.y));
        let x_1970 : vec4<f32> = u_xlat6;
        let x_1973 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1976 : vec4<f32> = u_xlat11;
        u_xlat34 = ((vec2<f32>(x_1970.x, x_1970.y) * vec2<f32>(x_1973.x, x_1973.y)) + vec2<f32>(x_1976.w, x_1976.y));
        let x_1980 : f32 = u_xlat11.y;
        u_xlat8.w = x_1980;
        let x_1983 : vec4<f32> = u_xlat6;
        let x_1986 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1989 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1983.x, x_1983.y) * vec2<f32>(x_1986.x, x_1986.y)) + vec2<f32>(x_1989.x, x_1989.w));
        let x_1992 : vec4<f32> = u_xlat11;
        let x_1993 : vec3<f32> = vec3<f32>(x_1992.x, x_1992.z, x_1992.w);
        let x_1994 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1993.x, x_1994.y, x_1993.y, x_1993.z);
        let x_1996 : vec4<f32> = u_xlat6;
        let x_1999 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_2002 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1996.x, x_1996.y, x_1996.x, x_1996.y) * vec4<f32>(x_1999.x, x_1999.y, x_1999.x, x_1999.y)) + vec4<f32>(x_2002.x, x_2002.y, x_2002.z, x_2002.y));
        let x_2006 : vec4<f32> = u_xlat6;
        let x_2009 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_2012 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_2006.x, x_2006.y) * vec2<f32>(x_2009.x, x_2009.y)) + vec2<f32>(x_2012.w, x_2012.y));
        let x_2016 : f32 = u_xlat8.x;
        u_xlat9.x = x_2016;
        let x_2018 : vec4<f32> = u_xlat6;
        let x_2021 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_2024 : vec4<f32> = u_xlat9;
        let x_2026 : vec2<f32> = ((vec2<f32>(x_2018.x, x_2018.y) * vec2<f32>(x_2021.x, x_2021.y)) + vec2<f32>(x_2024.x, x_2024.y));
        let x_2027 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_2026.x, x_2026.y, x_2027.z, x_2027.w);
        let x_2030 : vec4<f32> = u_xlat7;
        let x_2032 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_2030.x, x_2030.x, x_2030.x, x_2030.x) * x_2032);
        let x_2035 : vec4<f32> = u_xlat7;
        let x_2037 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_2035.y, x_2035.y, x_2035.y, x_2035.y) * x_2037);
        let x_2040 : vec4<f32> = u_xlat7;
        let x_2042 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_2040.z, x_2040.z, x_2040.z, x_2040.z) * x_2042);
        let x_2044 : vec4<f32> = u_xlat7;
        let x_2046 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_2044.w, x_2044.w, x_2044.w, x_2044.w) * x_2046);
        let x_2049 : vec4<f32> = u_xlat12;
        let x_2050 : vec2<f32> = vec2<f32>(x_2049.x, x_2049.y);
        let x_2052 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_2050.x, x_2050.y, x_2052);
        let x_2059 : vec3<f32> = txVec13;
        let x_2061 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2059.xy, x_2059.z);
        u_xlat83 = x_2061;
        let x_2063 : vec4<f32> = u_xlat12;
        let x_2064 : vec2<f32> = vec2<f32>(x_2063.z, x_2063.w);
        let x_2066 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_2064.x, x_2064.y, x_2066);
        let x_2073 : vec3<f32> = txVec14;
        let x_2075 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2073.xy, x_2073.z);
        u_xlat8.x = x_2075;
        let x_2078 : f32 = u_xlat8.x;
        let x_2080 : f32 = u_xlat17.y;
        u_xlat8.x = (x_2078 * x_2080);
        let x_2084 : f32 = u_xlat17.x;
        let x_2085 : f32 = u_xlat83;
        let x_2088 : f32 = u_xlat8.x;
        u_xlat83 = ((x_2084 * x_2085) + x_2088);
        let x_2091 : vec2<f32> = u_xlat58;
        let x_2093 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_2091.x, x_2091.y, x_2093);
        let x_2100 : vec3<f32> = txVec15;
        let x_2102 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2100.xy, x_2100.z);
        u_xlat58.x = x_2102;
        let x_2105 : f32 = u_xlat17.z;
        let x_2107 : f32 = u_xlat58.x;
        let x_2109 : f32 = u_xlat83;
        u_xlat83 = ((x_2105 * x_2107) + x_2109);
        let x_2112 : vec4<f32> = u_xlat15;
        let x_2113 : vec2<f32> = vec2<f32>(x_2112.x, x_2112.y);
        let x_2115 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_2113.x, x_2113.y, x_2115);
        let x_2122 : vec3<f32> = txVec16;
        let x_2124 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2122.xy, x_2122.z);
        u_xlat58.x = x_2124;
        let x_2127 : f32 = u_xlat17.w;
        let x_2129 : f32 = u_xlat58.x;
        let x_2131 : f32 = u_xlat83;
        u_xlat83 = ((x_2127 * x_2129) + x_2131);
        let x_2134 : vec4<f32> = u_xlat13;
        let x_2135 : vec2<f32> = vec2<f32>(x_2134.x, x_2134.y);
        let x_2137 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_2135.x, x_2135.y, x_2137);
        let x_2144 : vec3<f32> = txVec17;
        let x_2146 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2144.xy, x_2144.z);
        u_xlat58.x = x_2146;
        let x_2149 : f32 = u_xlat18.x;
        let x_2151 : f32 = u_xlat58.x;
        let x_2153 : f32 = u_xlat83;
        u_xlat83 = ((x_2149 * x_2151) + x_2153);
        let x_2156 : vec4<f32> = u_xlat13;
        let x_2157 : vec2<f32> = vec2<f32>(x_2156.z, x_2156.w);
        let x_2159 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_2157.x, x_2157.y, x_2159);
        let x_2166 : vec3<f32> = txVec18;
        let x_2168 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2166.xy, x_2166.z);
        u_xlat58.x = x_2168;
        let x_2171 : f32 = u_xlat18.y;
        let x_2173 : f32 = u_xlat58.x;
        let x_2175 : f32 = u_xlat83;
        u_xlat83 = ((x_2171 * x_2173) + x_2175);
        let x_2178 : vec4<f32> = u_xlat14;
        let x_2179 : vec2<f32> = vec2<f32>(x_2178.x, x_2178.y);
        let x_2181 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_2179.x, x_2179.y, x_2181);
        let x_2188 : vec3<f32> = txVec19;
        let x_2190 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2188.xy, x_2188.z);
        u_xlat58.x = x_2190;
        let x_2193 : f32 = u_xlat18.z;
        let x_2195 : f32 = u_xlat58.x;
        let x_2197 : f32 = u_xlat83;
        u_xlat83 = ((x_2193 * x_2195) + x_2197);
        let x_2200 : vec4<f32> = u_xlat15;
        let x_2201 : vec2<f32> = vec2<f32>(x_2200.z, x_2200.w);
        let x_2203 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_2201.x, x_2201.y, x_2203);
        let x_2210 : vec3<f32> = txVec20;
        let x_2212 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2210.xy, x_2210.z);
        u_xlat58.x = x_2212;
        let x_2215 : f32 = u_xlat18.w;
        let x_2217 : f32 = u_xlat58.x;
        let x_2219 : f32 = u_xlat83;
        u_xlat83 = ((x_2215 * x_2217) + x_2219);
        let x_2222 : vec4<f32> = u_xlat16;
        let x_2223 : vec2<f32> = vec2<f32>(x_2222.x, x_2222.y);
        let x_2225 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_2223.x, x_2223.y, x_2225);
        let x_2232 : vec3<f32> = txVec21;
        let x_2234 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2232.xy, x_2232.z);
        u_xlat58.x = x_2234;
        let x_2237 : f32 = u_xlat19.x;
        let x_2239 : f32 = u_xlat58.x;
        let x_2241 : f32 = u_xlat83;
        u_xlat83 = ((x_2237 * x_2239) + x_2241);
        let x_2244 : vec4<f32> = u_xlat16;
        let x_2245 : vec2<f32> = vec2<f32>(x_2244.z, x_2244.w);
        let x_2247 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_2245.x, x_2245.y, x_2247);
        let x_2254 : vec3<f32> = txVec22;
        let x_2256 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2254.xy, x_2254.z);
        u_xlat58.x = x_2256;
        let x_2259 : f32 = u_xlat19.y;
        let x_2261 : f32 = u_xlat58.x;
        let x_2263 : f32 = u_xlat83;
        u_xlat83 = ((x_2259 * x_2261) + x_2263);
        let x_2266 : vec2<f32> = u_xlat34;
        let x_2268 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_2266.x, x_2266.y, x_2268);
        let x_2275 : vec3<f32> = txVec23;
        let x_2277 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2275.xy, x_2275.z);
        u_xlat58.x = x_2277;
        let x_2280 : f32 = u_xlat19.z;
        let x_2282 : f32 = u_xlat58.x;
        let x_2284 : f32 = u_xlat83;
        u_xlat83 = ((x_2280 * x_2282) + x_2284);
        let x_2287 : vec2<f32> = u_xlat66;
        let x_2289 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_2287.x, x_2287.y, x_2289);
        let x_2296 : vec3<f32> = txVec24;
        let x_2298 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2296.xy, x_2296.z);
        u_xlat58.x = x_2298;
        let x_2301 : f32 = u_xlat19.w;
        let x_2303 : f32 = u_xlat58.x;
        let x_2305 : f32 = u_xlat83;
        u_xlat83 = ((x_2301 * x_2303) + x_2305);
        let x_2308 : vec4<f32> = u_xlat11;
        let x_2309 : vec2<f32> = vec2<f32>(x_2308.x, x_2308.y);
        let x_2311 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_2309.x, x_2309.y, x_2311);
        let x_2318 : vec3<f32> = txVec25;
        let x_2320 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2318.xy, x_2318.z);
        u_xlat58.x = x_2320;
        let x_2323 : f32 = u_xlat7.x;
        let x_2325 : f32 = u_xlat58.x;
        let x_2327 : f32 = u_xlat83;
        u_xlat83 = ((x_2323 * x_2325) + x_2327);
        let x_2330 : vec4<f32> = u_xlat11;
        let x_2331 : vec2<f32> = vec2<f32>(x_2330.z, x_2330.w);
        let x_2333 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_2331.x, x_2331.y, x_2333);
        let x_2340 : vec3<f32> = txVec26;
        let x_2342 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2340.xy, x_2340.z);
        u_xlat58.x = x_2342;
        let x_2345 : f32 = u_xlat7.y;
        let x_2347 : f32 = u_xlat58.x;
        let x_2349 : f32 = u_xlat83;
        u_xlat83 = ((x_2345 * x_2347) + x_2349);
        let x_2352 : vec2<f32> = u_xlat61;
        let x_2354 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_2352.x, x_2352.y, x_2354);
        let x_2361 : vec3<f32> = txVec27;
        let x_2363 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2361.xy, x_2361.z);
        u_xlat58.x = x_2363;
        let x_2366 : f32 = u_xlat7.z;
        let x_2368 : f32 = u_xlat58.x;
        let x_2370 : f32 = u_xlat83;
        u_xlat83 = ((x_2366 * x_2368) + x_2370);
        let x_2373 : vec4<f32> = u_xlat6;
        let x_2374 : vec2<f32> = vec2<f32>(x_2373.x, x_2373.y);
        let x_2376 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_2374.x, x_2374.y, x_2376);
        let x_2383 : vec3<f32> = txVec28;
        let x_2385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2383.xy, x_2383.z);
        u_xlat6.x = x_2385;
        let x_2388 : f32 = u_xlat7.w;
        let x_2390 : f32 = u_xlat6.x;
        let x_2392 : f32 = u_xlat83;
        u_xlat82 = ((x_2388 * x_2390) + x_2392);
      }
    }
  } else {
    let x_2396 : vec4<f32> = u_xlat2;
    let x_2397 : vec2<f32> = vec2<f32>(x_2396.x, x_2396.y);
    let x_2399 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_2397.x, x_2397.y, x_2399);
    let x_2406 : vec3<f32> = txVec29;
    let x_2408 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2406.xy, x_2406.z);
    u_xlat82 = x_2408;
  }
  let x_2410 : f32 = x_868.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_2410) + 1.0f);
  let x_2414 : f32 = u_xlat82;
  let x_2416 : f32 = x_868.x_MainLightShadowParams.x;
  let x_2419 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2414 * x_2416) + x_2419);
  let x_2424 : f32 = u_xlat2.z;
  u_xlatb28 = (0.0f >= x_2424);
  let x_2428 : f32 = u_xlat2.z;
  u_xlatb54 = (x_2428 >= 1.0f);
  let x_2430 : bool = u_xlatb54;
  let x_2431 : bool = u_xlatb28;
  u_xlatb28 = (x_2430 | x_2431);
  let x_2433 : bool = u_xlatb28;
  if (x_2433) {
    x_2435 = 1.0f;
  } else {
    let x_2440 : f32 = u_xlat2.x;
    x_2435 = x_2440;
  }
  let x_2441 : f32 = x_2435;
  u_xlat2.x = x_2441;
  let x_2443 : vec3<f32> = vs_TEXCOORD7;
  let x_2446 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_2448 : vec3<f32> = (x_2443 + -(x_2446));
  let x_2449 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2448.x, x_2448.y, x_2448.z, x_2449.w);
  let x_2452 : vec4<f32> = u_xlat6;
  let x_2454 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_2452.x, x_2452.y, x_2452.z), vec3<f32>(x_2454.x, x_2454.y, x_2454.z));
  let x_2458 : f32 = u_xlat28;
  let x_2460 : f32 = x_868.x_MainLightShadowParams.z;
  let x_2463 : f32 = x_868.x_MainLightShadowParams.w;
  u_xlat54 = ((x_2458 * x_2460) + x_2463);
  let x_2465 : f32 = u_xlat54;
  u_xlat54 = clamp(x_2465, 0.0f, 1.0f);
  let x_2468 : f32 = u_xlat2.x;
  u_xlat82 = (-(x_2468) + 1.0f);
  let x_2471 : f32 = u_xlat54;
  let x_2472 : f32 = u_xlat82;
  let x_2475 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2471 * x_2472) + x_2475);
  let x_2485 : f32 = x_2483.x_MainLightCookieTextureFormat;
  u_xlatb54 = !((x_2485 == -1.0f));
  let x_2487 : bool = u_xlatb54;
  if (x_2487) {
    let x_2490 : vec3<f32> = vs_TEXCOORD7;
    let x_2493 : vec4<f32> = x_2483.x_MainLightWorldToLight[1i];
    let x_2495 : vec2<f32> = (vec2<f32>(x_2490.y, x_2490.y) * vec2<f32>(x_2493.x, x_2493.y));
    let x_2496 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2495.x, x_2495.y, x_2496.z, x_2496.w);
    let x_2499 : vec4<f32> = x_2483.x_MainLightWorldToLight[0i];
    let x_2501 : vec3<f32> = vs_TEXCOORD7;
    let x_2504 : vec4<f32> = u_xlat6;
    let x_2506 : vec2<f32> = ((vec2<f32>(x_2499.x, x_2499.y) * vec2<f32>(x_2501.x, x_2501.x)) + vec2<f32>(x_2504.x, x_2504.y));
    let x_2507 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2506.x, x_2506.y, x_2507.z, x_2507.w);
    let x_2510 : vec4<f32> = x_2483.x_MainLightWorldToLight[2i];
    let x_2512 : vec3<f32> = vs_TEXCOORD7;
    let x_2515 : vec4<f32> = u_xlat6;
    let x_2517 : vec2<f32> = ((vec2<f32>(x_2510.x, x_2510.y) * vec2<f32>(x_2512.z, x_2512.z)) + vec2<f32>(x_2515.x, x_2515.y));
    let x_2518 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2517.x, x_2517.y, x_2518.z, x_2518.w);
    let x_2520 : vec4<f32> = u_xlat6;
    let x_2523 : vec4<f32> = x_2483.x_MainLightWorldToLight[3i];
    let x_2525 : vec2<f32> = (vec2<f32>(x_2520.x, x_2520.y) + vec2<f32>(x_2523.x, x_2523.y));
    let x_2526 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2525.x, x_2525.y, x_2526.z, x_2526.w);
    let x_2528 : vec4<f32> = u_xlat6;
    let x_2531 : vec2<f32> = ((vec2<f32>(x_2528.x, x_2528.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2532 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2531.x, x_2531.y, x_2532.z, x_2532.w);
    let x_2539 : vec4<f32> = u_xlat6;
    let x_2542 : f32 = x_28.x_GlobalMipBias.x;
    let x_2543 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2539.x, x_2539.y), x_2542);
    u_xlat6 = x_2543;
    let x_2548 : f32 = x_2483.x_MainLightCookieTextureFormat;
    let x_2550 : f32 = x_2483.x_MainLightCookieTextureFormat;
    let x_2552 : f32 = x_2483.x_MainLightCookieTextureFormat;
    let x_2554 : f32 = x_2483.x_MainLightCookieTextureFormat;
    let x_2555 : vec4<f32> = vec4<f32>(x_2548, x_2550, x_2552, x_2554);
    let x_2562 : vec4<bool> = (vec4<f32>(x_2555.x, x_2555.y, x_2555.z, x_2555.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2562.x, x_2562.y);
    let x_2565 : bool = u_xlatb7.y;
    if (x_2565) {
      let x_2570 : f32 = u_xlat6.w;
      x_2566 = x_2570;
    } else {
      let x_2573 : f32 = u_xlat6.x;
      x_2566 = x_2573;
    }
    let x_2574 : f32 = x_2566;
    u_xlat54 = x_2574;
    let x_2576 : bool = u_xlatb7.x;
    if (x_2576) {
      let x_2580 : vec4<f32> = u_xlat6;
      x_2577 = vec3<f32>(x_2580.x, x_2580.y, x_2580.z);
    } else {
      let x_2583 : f32 = u_xlat54;
      x_2577 = vec3<f32>(x_2583, x_2583, x_2583);
    }
    let x_2585 : vec3<f32> = x_2577;
    let x_2586 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2585.x, x_2585.y, x_2585.z, x_2586.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2592 : vec4<f32> = u_xlat6;
  let x_2595 : vec4<f32> = x_28.x_MainLightColor;
  let x_2597 : vec3<f32> = (vec3<f32>(x_2592.x, x_2592.y, x_2592.z) * vec3<f32>(x_2595.x, x_2595.y, x_2595.z));
  let x_2598 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2597.x, x_2597.y, x_2597.z, x_2598.w);
  let x_2602 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_2602;
  let x_2605 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_2605;
  let x_2608 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_2608;
  let x_2610 : vec4<f32> = u_xlat7;
  let x_2613 : vec4<f32> = u_xlat1;
  u_xlat54 = dot(-(vec3<f32>(x_2610.x, x_2610.y, x_2610.z)), vec3<f32>(x_2613.x, x_2613.y, x_2613.z));
  let x_2616 : f32 = u_xlat54;
  let x_2617 : f32 = u_xlat54;
  u_xlat54 = (x_2616 + x_2617);
  let x_2619 : vec4<f32> = u_xlat1;
  let x_2621 : f32 = u_xlat54;
  let x_2625 : vec4<f32> = u_xlat7;
  let x_2628 : vec3<f32> = ((vec3<f32>(x_2619.x, x_2619.y, x_2619.z) * -(vec3<f32>(x_2621, x_2621, x_2621))) + -(vec3<f32>(x_2625.x, x_2625.y, x_2625.z)));
  let x_2629 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2628.x, x_2628.y, x_2628.z, x_2629.w);
  let x_2631 : vec4<f32> = u_xlat1;
  let x_2633 : vec4<f32> = u_xlat7;
  u_xlat54 = dot(vec3<f32>(x_2631.x, x_2631.y, x_2631.z), vec3<f32>(x_2633.x, x_2633.y, x_2633.z));
  let x_2636 : f32 = u_xlat54;
  u_xlat54 = clamp(x_2636, 0.0f, 1.0f);
  let x_2638 : f32 = u_xlat54;
  u_xlat54 = (-(x_2638) + 1.0f);
  let x_2641 : f32 = u_xlat54;
  let x_2642 : f32 = u_xlat54;
  u_xlat54 = (x_2641 * x_2642);
  let x_2644 : f32 = u_xlat54;
  let x_2645 : f32 = u_xlat54;
  u_xlat54 = (x_2644 * x_2645);
  let x_2648 : f32 = u_xlat0.x;
  u_xlat82 = ((-(x_2648) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2655 : f32 = u_xlat0.x;
  let x_2656 : f32 = u_xlat82;
  u_xlat0.x = (x_2655 * x_2656);
  let x_2660 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2660 * 6.0f);
  let x_2672 : vec4<f32> = u_xlat8;
  let x_2675 : f32 = u_xlat0.x;
  let x_2676 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2672.x, x_2672.y, x_2672.z), x_2675);
  u_xlat8 = x_2676;
  let x_2678 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2678 + -1.0f);
  let x_2686 : f32 = x_2684.unity_SpecCube0_HDR.w;
  let x_2688 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2686 * x_2688) + 1.0f);
  let x_2693 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2693, 0.0f);
  let x_2697 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2697);
  let x_2701 : f32 = u_xlat0.x;
  let x_2703 : f32 = x_2684.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2701 * x_2703);
  let x_2707 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2707);
  let x_2711 : f32 = u_xlat0.x;
  let x_2713 : f32 = x_2684.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2711 * x_2713);
  let x_2716 : vec4<f32> = u_xlat8;
  let x_2718 : vec3<f32> = u_xlat0;
  let x_2720 : vec3<f32> = (vec3<f32>(x_2716.x, x_2716.y, x_2716.z) * vec3<f32>(x_2718.x, x_2718.x, x_2718.x));
  let x_2721 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2720.x, x_2720.y, x_2720.z, x_2721.w);
  let x_2723 : f32 = u_xlat52;
  let x_2725 : f32 = u_xlat52;
  let x_2729 : vec2<f32> = ((vec2<f32>(x_2723, x_2723) * vec2<f32>(x_2725, x_2725)) + vec2<f32>(-1.0f, 1.0f));
  let x_2730 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2729.x, x_2730.y, x_2729.y);
  let x_2733 : f32 = u_xlat0.z;
  u_xlat52 = (1.0f / x_2733);
  let x_2735 : vec4<f32> = u_xlat5;
  let x_2738 : f32 = u_xlat80;
  let x_2740 : vec3<f32> = (-(vec3<f32>(x_2735.x, x_2735.y, x_2735.z)) + vec3<f32>(x_2738, x_2738, x_2738));
  let x_2741 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2740.x, x_2740.y, x_2740.z, x_2741.w);
  let x_2743 : f32 = u_xlat54;
  let x_2745 : vec4<f32> = u_xlat9;
  let x_2748 : vec4<f32> = u_xlat5;
  let x_2750 : vec3<f32> = ((vec3<f32>(x_2743, x_2743, x_2743) * vec3<f32>(x_2745.x, x_2745.y, x_2745.z)) + vec3<f32>(x_2748.x, x_2748.y, x_2748.z));
  let x_2751 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2750.x, x_2750.y, x_2750.z, x_2751.w);
  let x_2753 : f32 = u_xlat52;
  let x_2755 : vec4<f32> = u_xlat9;
  let x_2757 : vec3<f32> = (vec3<f32>(x_2753, x_2753, x_2753) * vec3<f32>(x_2755.x, x_2755.y, x_2755.z));
  let x_2758 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2757.x, x_2757.y, x_2757.z, x_2758.w);
  let x_2760 : vec4<f32> = u_xlat8;
  let x_2762 : vec4<f32> = u_xlat9;
  let x_2764 : vec3<f32> = (vec3<f32>(x_2760.x, x_2760.y, x_2760.z) * vec3<f32>(x_2762.x, x_2762.y, x_2762.z));
  let x_2765 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2764.x, x_2764.y, x_2764.z, x_2765.w);
  let x_2767 : vec4<f32> = u_xlat3;
  let x_2769 : vec4<f32> = u_xlat4;
  let x_2772 : vec4<f32> = u_xlat8;
  let x_2774 : vec3<f32> = ((vec3<f32>(x_2767.x, x_2767.y, x_2767.z) * vec3<f32>(x_2769.x, x_2769.y, x_2769.z)) + vec3<f32>(x_2772.x, x_2772.y, x_2772.z));
  let x_2775 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2774.x, x_2774.y, x_2774.z, x_2775.w);
  let x_2778 : f32 = u_xlat2.x;
  let x_2780 : f32 = x_2684.unity_LightData.z;
  u_xlat52 = (x_2778 * x_2780);
  let x_2782 : vec4<f32> = u_xlat1;
  let x_2785 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_2782.x, x_2782.y, x_2782.z), vec3<f32>(x_2785.x, x_2785.y, x_2785.z));
  let x_2790 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2790, 0.0f, 1.0f);
  let x_2793 : f32 = u_xlat52;
  let x_2795 : f32 = u_xlat2.x;
  u_xlat52 = (x_2793 * x_2795);
  let x_2797 : f32 = u_xlat52;
  let x_2799 : vec4<f32> = u_xlat6;
  let x_2801 : vec3<f32> = (vec3<f32>(x_2797, x_2797, x_2797) * vec3<f32>(x_2799.x, x_2799.y, x_2799.z));
  let x_2802 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2801.x, x_2802.y, x_2801.y, x_2801.z);
  let x_2804 : vec4<f32> = u_xlat7;
  let x_2807 : vec4<f32> = x_28.x_MainLightPosition;
  let x_2809 : vec3<f32> = (vec3<f32>(x_2804.x, x_2804.y, x_2804.z) + vec3<f32>(x_2807.x, x_2807.y, x_2807.z));
  let x_2810 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2809.x, x_2809.y, x_2809.z, x_2810.w);
  let x_2812 : vec4<f32> = u_xlat6;
  let x_2814 : vec4<f32> = u_xlat6;
  u_xlat52 = dot(vec3<f32>(x_2812.x, x_2812.y, x_2812.z), vec3<f32>(x_2814.x, x_2814.y, x_2814.z));
  let x_2817 : f32 = u_xlat52;
  u_xlat52 = max(x_2817, 1.17549435e-38f);
  let x_2820 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_2820);
  let x_2822 : f32 = u_xlat52;
  let x_2824 : vec4<f32> = u_xlat6;
  let x_2826 : vec3<f32> = (vec3<f32>(x_2822, x_2822, x_2822) * vec3<f32>(x_2824.x, x_2824.y, x_2824.z));
  let x_2827 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2826.x, x_2826.y, x_2826.z, x_2827.w);
  let x_2829 : vec4<f32> = u_xlat1;
  let x_2831 : vec4<f32> = u_xlat6;
  u_xlat52 = dot(vec3<f32>(x_2829.x, x_2829.y, x_2829.z), vec3<f32>(x_2831.x, x_2831.y, x_2831.z));
  let x_2834 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2834, 0.0f, 1.0f);
  let x_2837 : vec4<f32> = x_28.x_MainLightPosition;
  let x_2839 : vec4<f32> = u_xlat6;
  u_xlat82 = dot(vec3<f32>(x_2837.x, x_2837.y, x_2837.z), vec3<f32>(x_2839.x, x_2839.y, x_2839.z));
  let x_2842 : f32 = u_xlat82;
  u_xlat82 = clamp(x_2842, 0.0f, 1.0f);
  let x_2844 : f32 = u_xlat52;
  let x_2845 : f32 = u_xlat52;
  u_xlat52 = (x_2844 * x_2845);
  let x_2847 : f32 = u_xlat52;
  let x_2849 : f32 = u_xlat0.x;
  u_xlat52 = ((x_2847 * x_2849) + 1.00001001358032226562f);
  let x_2853 : f32 = u_xlat82;
  let x_2854 : f32 = u_xlat82;
  u_xlat82 = (x_2853 * x_2854);
  let x_2856 : f32 = u_xlat52;
  let x_2857 : f32 = u_xlat52;
  u_xlat52 = (x_2856 * x_2857);
  let x_2859 : f32 = u_xlat82;
  u_xlat82 = max(x_2859, 0.10000000149011611938f);
  let x_2862 : f32 = u_xlat52;
  let x_2863 : f32 = u_xlat82;
  u_xlat52 = (x_2862 * x_2863);
  let x_2865 : f32 = u_xlat81;
  let x_2866 : f32 = u_xlat52;
  u_xlat52 = (x_2865 * x_2866);
  let x_2868 : f32 = u_xlat79;
  let x_2869 : f32 = u_xlat52;
  u_xlat52 = (x_2868 / x_2869);
  let x_2871 : vec4<f32> = u_xlat5;
  let x_2873 : f32 = u_xlat52;
  let x_2876 : vec4<f32> = u_xlat4;
  let x_2878 : vec3<f32> = ((vec3<f32>(x_2871.x, x_2871.y, x_2871.z) * vec3<f32>(x_2873, x_2873, x_2873)) + vec3<f32>(x_2876.x, x_2876.y, x_2876.z));
  let x_2879 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2878.x, x_2878.y, x_2878.z, x_2879.w);
  let x_2881 : vec4<f32> = u_xlat2;
  let x_2883 : vec4<f32> = u_xlat6;
  let x_2885 : vec3<f32> = (vec3<f32>(x_2881.x, x_2881.z, x_2881.w) * vec3<f32>(x_2883.x, x_2883.y, x_2883.z));
  let x_2886 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2885.x, x_2886.y, x_2885.y, x_2885.z);
  let x_2889 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_2891 : f32 = x_2684.unity_LightData.y;
  u_xlat52 = min(x_2889, x_2891);
  let x_2894 : f32 = u_xlat52;
  u_xlatu52 = bitcast<u32>(i32(x_2894));
  let x_2897 : f32 = u_xlat28;
  let x_2899 : f32 = x_868.x_AdditionalShadowFadeParams.x;
  let x_2902 : f32 = x_868.x_AdditionalShadowFadeParams.y;
  u_xlat28 = ((x_2897 * x_2899) + x_2902);
  let x_2904 : f32 = u_xlat28;
  u_xlat28 = clamp(x_2904, 0.0f, 1.0f);
  let x_2908 : f32 = x_2483.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2910 : f32 = x_2483.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2912 : f32 = x_2483.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2914 : f32 = x_2483.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2915 : vec4<f32> = vec4<f32>(x_2908, x_2910, x_2912, x_2914);
  let x_2921 : vec4<bool> = (vec4<f32>(x_2915.x, x_2915.y, x_2915.z, x_2915.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2921.x, x_2921.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2933 : u32 = u_xlatu_loop_1;
    let x_2934 : u32 = u_xlatu52;
    if ((x_2933 < x_2934)) {
    } else {
      break;
    }
    let x_2937 : u32 = u_xlatu_loop_1;
    u_xlatu83 = (x_2937 >> 2u);
    let x_2940 : u32 = u_xlatu_loop_1;
    u_xlati58 = bitcast<i32>((x_2940 & 3u));
    let x_2943 : u32 = u_xlatu83;
    let x_2946 : vec4<f32> = x_2684.unity_LightIndices[bitcast<i32>(x_2943)];
    let x_2956 : i32 = u_xlati58;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2961 : vec4<u32> = indexable[x_2956];
    u_xlat83 = dot(x_2946, bitcast<vec4<f32>>(x_2961));
    let x_2965 : f32 = u_xlat83;
    u_xlati83 = i32(x_2965);
    let x_2967 : vec3<f32> = vs_TEXCOORD7;
    let x_2978 : i32 = u_xlati83;
    let x_2980 : vec4<f32> = x_2977.x_AdditionalLightsPosition[x_2978];
    let x_2983 : i32 = u_xlati83;
    let x_2985 : vec4<f32> = x_2977.x_AdditionalLightsPosition[x_2983];
    let x_2987 : vec3<f32> = ((-(x_2967) * vec3<f32>(x_2980.w, x_2980.w, x_2980.w)) + vec3<f32>(x_2985.x, x_2985.y, x_2985.z));
    let x_2988 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2987.x, x_2987.y, x_2987.z, x_2988.w);
    let x_2990 : vec4<f32> = u_xlat9;
    let x_2992 : vec4<f32> = u_xlat9;
    u_xlat58.x = dot(vec3<f32>(x_2990.x, x_2990.y, x_2990.z), vec3<f32>(x_2992.x, x_2992.y, x_2992.z));
    let x_2997 : f32 = u_xlat58.x;
    u_xlat58.x = max(x_2997, 0.00006103515625f);
    let x_3002 : f32 = u_xlat58.x;
    u_xlat84 = inverseSqrt(x_3002);
    let x_3004 : f32 = u_xlat84;
    let x_3006 : vec4<f32> = u_xlat9;
    let x_3008 : vec3<f32> = (vec3<f32>(x_3004, x_3004, x_3004) * vec3<f32>(x_3006.x, x_3006.y, x_3006.z));
    let x_3009 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3008.x, x_3008.y, x_3008.z, x_3009.w);
    let x_3013 : f32 = u_xlat58.x;
    u_xlat85 = (1.0f / x_3013);
    let x_3016 : f32 = u_xlat58.x;
    let x_3017 : i32 = u_xlati83;
    let x_3019 : f32 = x_2977.x_AdditionalLightsAttenuation[x_3017].x;
    u_xlat58.x = (x_3016 * x_3019);
    let x_3023 : f32 = u_xlat58.x;
    let x_3026 : f32 = u_xlat58.x;
    u_xlat58.x = ((-(x_3023) * x_3026) + 1.0f);
    let x_3031 : f32 = u_xlat58.x;
    u_xlat58.x = max(x_3031, 0.0f);
    let x_3035 : f32 = u_xlat58.x;
    let x_3037 : f32 = u_xlat58.x;
    u_xlat58.x = (x_3035 * x_3037);
    let x_3041 : f32 = u_xlat58.x;
    let x_3042 : f32 = u_xlat85;
    u_xlat58.x = (x_3041 * x_3042);
    let x_3045 : i32 = u_xlati83;
    let x_3047 : vec4<f32> = x_2977.x_AdditionalLightsSpotDir[x_3045];
    let x_3049 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_3047.x, x_3047.y, x_3047.z), vec3<f32>(x_3049.x, x_3049.y, x_3049.z));
    let x_3052 : f32 = u_xlat85;
    let x_3053 : i32 = u_xlati83;
    let x_3055 : f32 = x_2977.x_AdditionalLightsAttenuation[x_3053].z;
    let x_3057 : i32 = u_xlati83;
    let x_3059 : f32 = x_2977.x_AdditionalLightsAttenuation[x_3057].w;
    u_xlat85 = ((x_3052 * x_3055) + x_3059);
    let x_3061 : f32 = u_xlat85;
    u_xlat85 = clamp(x_3061, 0.0f, 1.0f);
    let x_3063 : f32 = u_xlat85;
    let x_3064 : f32 = u_xlat85;
    u_xlat85 = (x_3063 * x_3064);
    let x_3067 : f32 = u_xlat58.x;
    let x_3068 : f32 = u_xlat85;
    u_xlat58.x = (x_3067 * x_3068);
    let x_3072 : i32 = u_xlati83;
    let x_3074 : f32 = x_868.x_AdditionalShadowParams[x_3072].w;
    u_xlati85 = i32(x_3074);
    let x_3077 : i32 = u_xlati85;
    u_xlatb86 = (x_3077 >= 0i);
    let x_3079 : bool = u_xlatb86;
    if (x_3079) {
      let x_3083 : i32 = u_xlati83;
      let x_3085 : f32 = x_868.x_AdditionalShadowParams[x_3083].z;
      u_xlatb86 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3085, x_3085, x_3085, x_3085))));
      let x_3089 : bool = u_xlatb86;
      if (x_3089) {
        let x_3093 : vec4<f32> = u_xlat10;
        let x_3096 : vec4<f32> = u_xlat10;
        let x_3099 : vec4<bool> = (abs(vec4<f32>(x_3093.z, x_3093.z, x_3093.y, x_3093.z)) >= abs(vec4<f32>(x_3096.x, x_3096.y, x_3096.x, x_3096.x)));
        let x_3101 : vec3<bool> = vec3<bool>(x_3099.x, x_3099.y, x_3099.z);
        let x_3102 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3101.x, x_3101.y, x_3101.z, x_3102.w);
        let x_3105 : bool = u_xlatb11.y;
        let x_3107 : bool = u_xlatb11.x;
        u_xlatb86 = (x_3105 & x_3107);
        let x_3109 : vec4<f32> = u_xlat10;
        let x_3112 : vec4<bool> = (-(vec4<f32>(x_3109.z, x_3109.y, x_3109.z, x_3109.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3113 : vec3<bool> = vec3<bool>(x_3112.x, x_3112.y, x_3112.w);
        let x_3114 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3113.x, x_3113.y, x_3114.z, x_3113.z);
        let x_3117 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3117);
        let x_3122 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3122);
        let x_3127 : bool = u_xlatb11.w;
        u_xlat87 = select(0.0f, 1.0f, x_3127);
        let x_3130 : bool = u_xlatb11.z;
        if (x_3130) {
          let x_3135 : f32 = u_xlat11.y;
          x_3131 = x_3135;
        } else {
          let x_3137 : f32 = u_xlat87;
          x_3131 = x_3137;
        }
        let x_3138 : f32 = x_3131;
        u_xlat87 = x_3138;
        let x_3140 : bool = u_xlatb86;
        if (x_3140) {
          let x_3145 : f32 = u_xlat11.x;
          x_3141 = x_3145;
        } else {
          let x_3147 : f32 = u_xlat87;
          x_3141 = x_3147;
        }
        let x_3148 : f32 = x_3141;
        u_xlat86 = x_3148;
        let x_3149 : i32 = u_xlati83;
        let x_3151 : f32 = x_868.x_AdditionalShadowParams[x_3149].w;
        u_xlat87 = trunc(x_3151);
        let x_3153 : f32 = u_xlat86;
        let x_3154 : f32 = u_xlat87;
        u_xlat86 = (x_3153 + x_3154);
        let x_3156 : f32 = u_xlat86;
        u_xlati85 = i32(x_3156);
      }
      let x_3158 : i32 = u_xlati85;
      u_xlati85 = (x_3158 << bitcast<u32>(2i));
      let x_3160 : vec3<f32> = vs_TEXCOORD7;
      let x_3162 : i32 = u_xlati85;
      let x_3165 : i32 = u_xlati85;
      let x_3169 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[((x_3162 + 1i) / 4i)][((x_3165 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3160.y, x_3160.y, x_3160.y, x_3160.y) * x_3169);
      let x_3171 : i32 = u_xlati85;
      let x_3173 : i32 = u_xlati85;
      let x_3176 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[(x_3171 / 4i)][(x_3173 % 4i)];
      let x_3177 : vec3<f32> = vs_TEXCOORD7;
      let x_3180 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3176 * vec4<f32>(x_3177.x, x_3177.x, x_3177.x, x_3177.x)) + x_3180);
      let x_3182 : i32 = u_xlati85;
      let x_3185 : i32 = u_xlati85;
      let x_3189 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[((x_3182 + 2i) / 4i)][((x_3185 + 2i) % 4i)];
      let x_3190 : vec3<f32> = vs_TEXCOORD7;
      let x_3193 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3189 * vec4<f32>(x_3190.z, x_3190.z, x_3190.z, x_3190.z)) + x_3193);
      let x_3195 : vec4<f32> = u_xlat11;
      let x_3196 : i32 = u_xlati85;
      let x_3199 : i32 = u_xlati85;
      let x_3203 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[((x_3196 + 3i) / 4i)][((x_3199 + 3i) % 4i)];
      u_xlat11 = (x_3195 + x_3203);
      let x_3205 : vec4<f32> = u_xlat11;
      let x_3207 : vec4<f32> = u_xlat11;
      let x_3209 : vec3<f32> = (vec3<f32>(x_3205.x, x_3205.y, x_3205.z) / vec3<f32>(x_3207.w, x_3207.w, x_3207.w));
      let x_3210 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3209.x, x_3209.y, x_3209.z, x_3210.w);
      let x_3213 : i32 = u_xlati83;
      let x_3215 : f32 = x_868.x_AdditionalShadowParams[x_3213].y;
      u_xlatb85 = (0.0f < x_3215);
      let x_3217 : bool = u_xlatb85;
      if (x_3217) {
        let x_3220 : i32 = u_xlati83;
        let x_3222 : f32 = x_868.x_AdditionalShadowParams[x_3220].y;
        u_xlatb85 = (1.0f == x_3222);
        let x_3224 : bool = u_xlatb85;
        if (x_3224) {
          let x_3227 : vec4<f32> = u_xlat11;
          let x_3230 : vec4<f32> = x_868.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3227.x, x_3227.y, x_3227.x, x_3227.y) + x_3230);
          let x_3233 : vec4<f32> = u_xlat12;
          let x_3234 : vec2<f32> = vec2<f32>(x_3233.x, x_3233.y);
          let x_3236 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_3234.x, x_3234.y, x_3236);
          let x_3244 : vec3<f32> = txVec30;
          let x_3246 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3244.xy, x_3244.z);
          u_xlat13.x = x_3246;
          let x_3249 : vec4<f32> = u_xlat12;
          let x_3250 : vec2<f32> = vec2<f32>(x_3249.z, x_3249.w);
          let x_3252 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_3250.x, x_3250.y, x_3252);
          let x_3259 : vec3<f32> = txVec31;
          let x_3261 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3259.xy, x_3259.z);
          u_xlat13.y = x_3261;
          let x_3263 : vec4<f32> = u_xlat11;
          let x_3266 : vec4<f32> = x_868.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3263.x, x_3263.y, x_3263.x, x_3263.y) + x_3266);
          let x_3269 : vec4<f32> = u_xlat12;
          let x_3270 : vec2<f32> = vec2<f32>(x_3269.x, x_3269.y);
          let x_3272 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_3270.x, x_3270.y, x_3272);
          let x_3279 : vec3<f32> = txVec32;
          let x_3281 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3279.xy, x_3279.z);
          u_xlat13.z = x_3281;
          let x_3284 : vec4<f32> = u_xlat12;
          let x_3285 : vec2<f32> = vec2<f32>(x_3284.z, x_3284.w);
          let x_3287 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_3285.x, x_3285.y, x_3287);
          let x_3294 : vec3<f32> = txVec33;
          let x_3296 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3294.xy, x_3294.z);
          u_xlat13.w = x_3296;
          let x_3298 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_3298, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3301 : i32 = u_xlati83;
          let x_3303 : f32 = x_868.x_AdditionalShadowParams[x_3301].y;
          u_xlatb86 = (2.0f == x_3303);
          let x_3305 : bool = u_xlatb86;
          if (x_3305) {
            let x_3308 : vec4<f32> = u_xlat11;
            let x_3311 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3314 : vec2<f32> = ((vec2<f32>(x_3308.x, x_3308.y) * vec2<f32>(x_3311.z, x_3311.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3315 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3314.x, x_3314.y, x_3315.z, x_3315.w);
            let x_3317 : vec4<f32> = u_xlat12;
            let x_3319 : vec2<f32> = floor(vec2<f32>(x_3317.x, x_3317.y));
            let x_3320 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3319.x, x_3319.y, x_3320.z, x_3320.w);
            let x_3323 : vec4<f32> = u_xlat11;
            let x_3326 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3329 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3323.x, x_3323.y) * vec2<f32>(x_3326.z, x_3326.w)) + -(vec2<f32>(x_3329.x, x_3329.y)));
            let x_3333 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3333.x, x_3333.x, x_3333.y, x_3333.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3336 : vec4<f32> = u_xlat13;
            let x_3338 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3336.x, x_3336.x, x_3336.z, x_3336.z) * vec4<f32>(x_3338.x, x_3338.x, x_3338.z, x_3338.z));
            let x_3341 : vec4<f32> = u_xlat14;
            let x_3343 : vec2<f32> = (vec2<f32>(x_3341.y, x_3341.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3344 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3343.x, x_3344.y, x_3343.y, x_3344.w);
            let x_3346 : vec4<f32> = u_xlat14;
            let x_3349 : vec2<f32> = u_xlat64;
            let x_3351 : vec2<f32> = ((vec2<f32>(x_3346.x, x_3346.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3349));
            let x_3352 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3351.x, x_3351.y, x_3352.z, x_3352.w);
            let x_3354 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3354) + vec2<f32>(1.0f, 1.0f));
            let x_3357 : vec2<f32> = u_xlat64;
            let x_3358 : vec2<f32> = min(x_3357, vec2<f32>(0.0f, 0.0f));
            let x_3359 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3358.x, x_3358.y, x_3359.z, x_3359.w);
            let x_3361 : vec4<f32> = u_xlat15;
            let x_3364 : vec4<f32> = u_xlat15;
            let x_3367 : vec2<f32> = u_xlat66;
            let x_3368 : vec2<f32> = ((-(vec2<f32>(x_3361.x, x_3361.y)) * vec2<f32>(x_3364.x, x_3364.y)) + x_3367);
            let x_3369 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3368.x, x_3368.y, x_3369.z, x_3369.w);
            let x_3371 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3371, vec2<f32>(0.0f, 0.0f));
            let x_3373 : vec2<f32> = u_xlat64;
            let x_3375 : vec2<f32> = u_xlat64;
            let x_3377 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3373) * x_3375) + vec2<f32>(x_3377.y, x_3377.w));
            let x_3380 : vec4<f32> = u_xlat15;
            let x_3382 : vec2<f32> = (vec2<f32>(x_3380.x, x_3380.y) + vec2<f32>(1.0f, 1.0f));
            let x_3383 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3382.x, x_3382.y, x_3383.z, x_3383.w);
            let x_3385 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3385 + vec2<f32>(1.0f, 1.0f));
            let x_3387 : vec4<f32> = u_xlat14;
            let x_3389 : vec2<f32> = (vec2<f32>(x_3387.x, x_3387.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3390 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3389.x, x_3389.y, x_3390.z, x_3390.w);
            let x_3392 : vec2<f32> = u_xlat66;
            let x_3393 : vec2<f32> = (x_3392 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3394 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3393.x, x_3393.y, x_3394.z, x_3394.w);
            let x_3396 : vec4<f32> = u_xlat15;
            let x_3398 : vec2<f32> = (vec2<f32>(x_3396.x, x_3396.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3399 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3398.x, x_3398.y, x_3399.z, x_3399.w);
            let x_3401 : vec2<f32> = u_xlat64;
            let x_3402 : vec2<f32> = (x_3401 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3403 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3402.x, x_3402.y, x_3403.z, x_3403.w);
            let x_3405 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3405.y, x_3405.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3409 : f32 = u_xlat15.x;
            u_xlat16.z = x_3409;
            let x_3412 : f32 = u_xlat64.x;
            u_xlat16.w = x_3412;
            let x_3415 : f32 = u_xlat17.x;
            u_xlat14.z = x_3415;
            let x_3418 : f32 = u_xlat13.x;
            u_xlat14.w = x_3418;
            let x_3420 : vec4<f32> = u_xlat14;
            let x_3422 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3420.z, x_3420.w, x_3420.x, x_3420.z) + vec4<f32>(x_3422.z, x_3422.w, x_3422.x, x_3422.z));
            let x_3426 : f32 = u_xlat16.y;
            u_xlat15.z = x_3426;
            let x_3429 : f32 = u_xlat64.y;
            u_xlat15.w = x_3429;
            let x_3432 : f32 = u_xlat14.y;
            u_xlat17.z = x_3432;
            let x_3435 : f32 = u_xlat13.z;
            u_xlat17.w = x_3435;
            let x_3437 : vec4<f32> = u_xlat15;
            let x_3439 : vec4<f32> = u_xlat17;
            let x_3441 : vec3<f32> = (vec3<f32>(x_3437.z, x_3437.y, x_3437.w) + vec3<f32>(x_3439.z, x_3439.y, x_3439.w));
            let x_3442 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3441.x, x_3441.y, x_3441.z, x_3442.w);
            let x_3444 : vec4<f32> = u_xlat14;
            let x_3446 : vec4<f32> = u_xlat18;
            let x_3448 : vec3<f32> = (vec3<f32>(x_3444.x, x_3444.z, x_3444.w) / vec3<f32>(x_3446.z, x_3446.w, x_3446.y));
            let x_3449 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3448.x, x_3448.y, x_3448.z, x_3449.w);
            let x_3451 : vec4<f32> = u_xlat14;
            let x_3453 : vec3<f32> = (vec3<f32>(x_3451.x, x_3451.y, x_3451.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3454 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3453.x, x_3453.y, x_3453.z, x_3454.w);
            let x_3456 : vec4<f32> = u_xlat17;
            let x_3458 : vec4<f32> = u_xlat13;
            let x_3460 : vec3<f32> = (vec3<f32>(x_3456.z, x_3456.y, x_3456.w) / vec3<f32>(x_3458.x, x_3458.y, x_3458.z));
            let x_3461 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3460.x, x_3460.y, x_3460.z, x_3461.w);
            let x_3463 : vec4<f32> = u_xlat15;
            let x_3465 : vec3<f32> = (vec3<f32>(x_3463.x, x_3463.y, x_3463.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3466 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3465.x, x_3465.y, x_3465.z, x_3466.w);
            let x_3468 : vec4<f32> = u_xlat14;
            let x_3471 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3473 : vec3<f32> = (vec3<f32>(x_3468.y, x_3468.x, x_3468.z) * vec3<f32>(x_3471.x, x_3471.x, x_3471.x));
            let x_3474 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3473.x, x_3473.y, x_3473.z, x_3474.w);
            let x_3476 : vec4<f32> = u_xlat15;
            let x_3479 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3481 : vec3<f32> = (vec3<f32>(x_3476.x, x_3476.y, x_3476.z) * vec3<f32>(x_3479.y, x_3479.y, x_3479.y));
            let x_3482 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3481.x, x_3481.y, x_3481.z, x_3482.w);
            let x_3485 : f32 = u_xlat15.x;
            u_xlat14.w = x_3485;
            let x_3487 : vec4<f32> = u_xlat12;
            let x_3490 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3493 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3487.x, x_3487.y, x_3487.x, x_3487.y) * vec4<f32>(x_3490.x, x_3490.y, x_3490.x, x_3490.y)) + vec4<f32>(x_3493.y, x_3493.w, x_3493.x, x_3493.w));
            let x_3496 : vec4<f32> = u_xlat12;
            let x_3499 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3502 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3496.x, x_3496.y) * vec2<f32>(x_3499.x, x_3499.y)) + vec2<f32>(x_3502.z, x_3502.w));
            let x_3506 : f32 = u_xlat14.y;
            u_xlat15.w = x_3506;
            let x_3508 : vec4<f32> = u_xlat15;
            let x_3509 : vec2<f32> = vec2<f32>(x_3508.y, x_3508.z);
            let x_3510 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3510.x, x_3509.x, x_3510.z, x_3509.y);
            let x_3512 : vec4<f32> = u_xlat12;
            let x_3515 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3518 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3512.x, x_3512.y, x_3512.x, x_3512.y) * vec4<f32>(x_3515.x, x_3515.y, x_3515.x, x_3515.y)) + vec4<f32>(x_3518.x, x_3518.y, x_3518.z, x_3518.y));
            let x_3521 : vec4<f32> = u_xlat12;
            let x_3524 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3527 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3521.x, x_3521.y, x_3521.x, x_3521.y) * vec4<f32>(x_3524.x, x_3524.y, x_3524.x, x_3524.y)) + vec4<f32>(x_3527.w, x_3527.y, x_3527.w, x_3527.z));
            let x_3530 : vec4<f32> = u_xlat12;
            let x_3533 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3536 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3530.x, x_3530.y, x_3530.x, x_3530.y) * vec4<f32>(x_3533.x, x_3533.y, x_3533.x, x_3533.y)) + vec4<f32>(x_3536.x, x_3536.w, x_3536.z, x_3536.w));
            let x_3539 : vec4<f32> = u_xlat13;
            let x_3541 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3539.x, x_3539.x, x_3539.x, x_3539.y) * vec4<f32>(x_3541.z, x_3541.w, x_3541.y, x_3541.z));
            let x_3545 : vec4<f32> = u_xlat13;
            let x_3547 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3545.y, x_3545.y, x_3545.z, x_3545.z) * x_3547);
            let x_3550 : f32 = u_xlat13.z;
            let x_3552 : f32 = u_xlat18.y;
            u_xlat86 = (x_3550 * x_3552);
            let x_3555 : vec4<f32> = u_xlat16;
            let x_3556 : vec2<f32> = vec2<f32>(x_3555.x, x_3555.y);
            let x_3558 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3556.x, x_3556.y, x_3558);
            let x_3565 : vec3<f32> = txVec34;
            let x_3567 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3565.xy, x_3565.z);
            u_xlat87 = x_3567;
            let x_3569 : vec4<f32> = u_xlat16;
            let x_3570 : vec2<f32> = vec2<f32>(x_3569.z, x_3569.w);
            let x_3572 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3570.x, x_3570.y, x_3572);
            let x_3580 : vec3<f32> = txVec35;
            let x_3582 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3580.xy, x_3580.z);
            u_xlat88 = x_3582;
            let x_3583 : f32 = u_xlat88;
            let x_3585 : f32 = u_xlat19.y;
            u_xlat88 = (x_3583 * x_3585);
            let x_3588 : f32 = u_xlat19.x;
            let x_3589 : f32 = u_xlat87;
            let x_3591 : f32 = u_xlat88;
            u_xlat87 = ((x_3588 * x_3589) + x_3591);
            let x_3594 : vec2<f32> = u_xlat64;
            let x_3596 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3594.x, x_3594.y, x_3596);
            let x_3603 : vec3<f32> = txVec36;
            let x_3605 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3603.xy, x_3603.z);
            u_xlat88 = x_3605;
            let x_3607 : f32 = u_xlat19.z;
            let x_3608 : f32 = u_xlat88;
            let x_3610 : f32 = u_xlat87;
            u_xlat87 = ((x_3607 * x_3608) + x_3610);
            let x_3613 : vec4<f32> = u_xlat15;
            let x_3614 : vec2<f32> = vec2<f32>(x_3613.x, x_3613.y);
            let x_3616 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3614.x, x_3614.y, x_3616);
            let x_3623 : vec3<f32> = txVec37;
            let x_3625 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3623.xy, x_3623.z);
            u_xlat88 = x_3625;
            let x_3627 : f32 = u_xlat19.w;
            let x_3628 : f32 = u_xlat88;
            let x_3630 : f32 = u_xlat87;
            u_xlat87 = ((x_3627 * x_3628) + x_3630);
            let x_3633 : vec4<f32> = u_xlat17;
            let x_3634 : vec2<f32> = vec2<f32>(x_3633.x, x_3633.y);
            let x_3636 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3634.x, x_3634.y, x_3636);
            let x_3643 : vec3<f32> = txVec38;
            let x_3645 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3643.xy, x_3643.z);
            u_xlat88 = x_3645;
            let x_3647 : f32 = u_xlat20.x;
            let x_3648 : f32 = u_xlat88;
            let x_3650 : f32 = u_xlat87;
            u_xlat87 = ((x_3647 * x_3648) + x_3650);
            let x_3653 : vec4<f32> = u_xlat17;
            let x_3654 : vec2<f32> = vec2<f32>(x_3653.z, x_3653.w);
            let x_3656 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3654.x, x_3654.y, x_3656);
            let x_3663 : vec3<f32> = txVec39;
            let x_3665 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3663.xy, x_3663.z);
            u_xlat88 = x_3665;
            let x_3667 : f32 = u_xlat20.y;
            let x_3668 : f32 = u_xlat88;
            let x_3670 : f32 = u_xlat87;
            u_xlat87 = ((x_3667 * x_3668) + x_3670);
            let x_3673 : vec4<f32> = u_xlat15;
            let x_3674 : vec2<f32> = vec2<f32>(x_3673.z, x_3673.w);
            let x_3676 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3674.x, x_3674.y, x_3676);
            let x_3683 : vec3<f32> = txVec40;
            let x_3685 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3683.xy, x_3683.z);
            u_xlat88 = x_3685;
            let x_3687 : f32 = u_xlat20.z;
            let x_3688 : f32 = u_xlat88;
            let x_3690 : f32 = u_xlat87;
            u_xlat87 = ((x_3687 * x_3688) + x_3690);
            let x_3693 : vec4<f32> = u_xlat14;
            let x_3694 : vec2<f32> = vec2<f32>(x_3693.x, x_3693.y);
            let x_3696 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3694.x, x_3694.y, x_3696);
            let x_3703 : vec3<f32> = txVec41;
            let x_3705 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3703.xy, x_3703.z);
            u_xlat88 = x_3705;
            let x_3707 : f32 = u_xlat20.w;
            let x_3708 : f32 = u_xlat88;
            let x_3710 : f32 = u_xlat87;
            u_xlat87 = ((x_3707 * x_3708) + x_3710);
            let x_3713 : vec4<f32> = u_xlat14;
            let x_3714 : vec2<f32> = vec2<f32>(x_3713.z, x_3713.w);
            let x_3716 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3714.x, x_3714.y, x_3716);
            let x_3723 : vec3<f32> = txVec42;
            let x_3725 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3723.xy, x_3723.z);
            u_xlat88 = x_3725;
            let x_3726 : f32 = u_xlat86;
            let x_3727 : f32 = u_xlat88;
            let x_3729 : f32 = u_xlat87;
            u_xlat85 = ((x_3726 * x_3727) + x_3729);
          } else {
            let x_3732 : vec4<f32> = u_xlat11;
            let x_3735 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3738 : vec2<f32> = ((vec2<f32>(x_3732.x, x_3732.y) * vec2<f32>(x_3735.z, x_3735.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3739 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3738.x, x_3738.y, x_3739.z, x_3739.w);
            let x_3741 : vec4<f32> = u_xlat12;
            let x_3743 : vec2<f32> = floor(vec2<f32>(x_3741.x, x_3741.y));
            let x_3744 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3743.x, x_3743.y, x_3744.z, x_3744.w);
            let x_3746 : vec4<f32> = u_xlat11;
            let x_3749 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3752 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3746.x, x_3746.y) * vec2<f32>(x_3749.z, x_3749.w)) + -(vec2<f32>(x_3752.x, x_3752.y)));
            let x_3756 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3756.x, x_3756.x, x_3756.y, x_3756.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3759 : vec4<f32> = u_xlat13;
            let x_3761 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3759.x, x_3759.x, x_3759.z, x_3759.z) * vec4<f32>(x_3761.x, x_3761.x, x_3761.z, x_3761.z));
            let x_3764 : vec4<f32> = u_xlat14;
            let x_3766 : vec2<f32> = (vec2<f32>(x_3764.y, x_3764.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3767 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3767.x, x_3766.x, x_3767.z, x_3766.y);
            let x_3769 : vec4<f32> = u_xlat14;
            let x_3772 : vec2<f32> = u_xlat64;
            let x_3774 : vec2<f32> = ((vec2<f32>(x_3769.x, x_3769.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3772));
            let x_3775 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3774.x, x_3775.y, x_3774.y, x_3775.w);
            let x_3777 : vec2<f32> = u_xlat64;
            let x_3779 : vec2<f32> = (-(x_3777) + vec2<f32>(1.0f, 1.0f));
            let x_3780 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3779.x, x_3779.y, x_3780.z, x_3780.w);
            let x_3782 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3782, vec2<f32>(0.0f, 0.0f));
            let x_3784 : vec2<f32> = u_xlat66;
            let x_3786 : vec2<f32> = u_xlat66;
            let x_3788 : vec4<f32> = u_xlat14;
            let x_3790 : vec2<f32> = ((-(x_3784) * x_3786) + vec2<f32>(x_3788.x, x_3788.y));
            let x_3791 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3790.x, x_3790.y, x_3791.z, x_3791.w);
            let x_3793 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3793, vec2<f32>(0.0f, 0.0f));
            let x_3796 : vec2<f32> = u_xlat66;
            let x_3798 : vec2<f32> = u_xlat66;
            let x_3800 : vec4<f32> = u_xlat13;
            let x_3802 : vec2<f32> = ((-(x_3796) * x_3798) + vec2<f32>(x_3800.y, x_3800.w));
            let x_3803 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3802.x, x_3803.y, x_3802.y);
            let x_3805 : vec4<f32> = u_xlat14;
            let x_3807 : vec2<f32> = (vec2<f32>(x_3805.x, x_3805.y) + vec2<f32>(2.0f, 2.0f));
            let x_3808 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3807.x, x_3807.y, x_3808.z, x_3808.w);
            let x_3810 : vec3<f32> = u_xlat39;
            let x_3812 : vec2<f32> = (vec2<f32>(x_3810.x, x_3810.z) + vec2<f32>(2.0f, 2.0f));
            let x_3813 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3813.x, x_3812.x, x_3813.z, x_3812.y);
            let x_3816 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3816 * 0.08163200318813323975f);
            let x_3819 : vec4<f32> = u_xlat13;
            let x_3821 : vec3<f32> = (vec3<f32>(x_3819.z, x_3819.x, x_3819.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3822 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3821.x, x_3821.y, x_3821.z, x_3822.w);
            let x_3824 : vec4<f32> = u_xlat14;
            let x_3826 : vec2<f32> = (vec2<f32>(x_3824.x, x_3824.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3827 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3826.x, x_3826.y, x_3827.z, x_3827.w);
            let x_3830 : f32 = u_xlat17.y;
            u_xlat16.x = x_3830;
            let x_3832 : vec2<f32> = u_xlat64;
            let x_3835 : vec2<f32> = ((vec2<f32>(x_3832.x, x_3832.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3836 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3836.x, x_3835.x, x_3836.z, x_3835.y);
            let x_3838 : vec2<f32> = u_xlat64;
            let x_3841 : vec2<f32> = ((vec2<f32>(x_3838.x, x_3838.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3842 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3841.x, x_3842.y, x_3841.y, x_3842.w);
            let x_3845 : f32 = u_xlat13.x;
            u_xlat14.y = x_3845;
            let x_3848 : f32 = u_xlat15.y;
            u_xlat14.w = x_3848;
            let x_3850 : vec4<f32> = u_xlat14;
            let x_3851 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3850 + x_3851);
            let x_3853 : vec2<f32> = u_xlat64;
            let x_3856 : vec2<f32> = ((vec2<f32>(x_3853.y, x_3853.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3857 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3857.x, x_3856.x, x_3857.z, x_3856.y);
            let x_3859 : vec2<f32> = u_xlat64;
            let x_3862 : vec2<f32> = ((vec2<f32>(x_3859.y, x_3859.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3863 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3862.x, x_3863.y, x_3862.y, x_3863.w);
            let x_3866 : f32 = u_xlat13.y;
            u_xlat15.y = x_3866;
            let x_3868 : vec4<f32> = u_xlat15;
            let x_3869 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3868 + x_3869);
            let x_3871 : vec4<f32> = u_xlat14;
            let x_3872 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3871 / x_3872);
            let x_3874 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3874 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3876 : vec4<f32> = u_xlat15;
            let x_3877 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3876 / x_3877);
            let x_3879 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3879 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3881 : vec4<f32> = u_xlat14;
            let x_3884 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3881.w, x_3881.x, x_3881.y, x_3881.z) * vec4<f32>(x_3884.x, x_3884.x, x_3884.x, x_3884.x));
            let x_3887 : vec4<f32> = u_xlat15;
            let x_3890 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3887.x, x_3887.w, x_3887.y, x_3887.z) * vec4<f32>(x_3890.y, x_3890.y, x_3890.y, x_3890.y));
            let x_3893 : vec4<f32> = u_xlat14;
            let x_3894 : vec3<f32> = vec3<f32>(x_3893.y, x_3893.z, x_3893.w);
            let x_3895 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3894.x, x_3895.y, x_3894.y, x_3894.z);
            let x_3898 : f32 = u_xlat15.x;
            u_xlat17.y = x_3898;
            let x_3900 : vec4<f32> = u_xlat12;
            let x_3903 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3906 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3900.x, x_3900.y, x_3900.x, x_3900.y) * vec4<f32>(x_3903.x, x_3903.y, x_3903.x, x_3903.y)) + vec4<f32>(x_3906.x, x_3906.y, x_3906.z, x_3906.y));
            let x_3909 : vec4<f32> = u_xlat12;
            let x_3912 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3915 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3909.x, x_3909.y) * vec2<f32>(x_3912.x, x_3912.y)) + vec2<f32>(x_3915.w, x_3915.y));
            let x_3919 : f32 = u_xlat17.y;
            u_xlat14.y = x_3919;
            let x_3922 : f32 = u_xlat15.z;
            u_xlat17.y = x_3922;
            let x_3924 : vec4<f32> = u_xlat12;
            let x_3927 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3930 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3924.x, x_3924.y, x_3924.x, x_3924.y) * vec4<f32>(x_3927.x, x_3927.y, x_3927.x, x_3927.y)) + vec4<f32>(x_3930.x, x_3930.y, x_3930.z, x_3930.y));
            let x_3933 : vec4<f32> = u_xlat12;
            let x_3936 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3939 : vec4<f32> = u_xlat17;
            let x_3941 : vec2<f32> = ((vec2<f32>(x_3933.x, x_3933.y) * vec2<f32>(x_3936.x, x_3936.y)) + vec2<f32>(x_3939.w, x_3939.y));
            let x_3942 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3941.x, x_3941.y, x_3942.z, x_3942.w);
            let x_3945 : f32 = u_xlat17.y;
            u_xlat14.z = x_3945;
            let x_3948 : vec4<f32> = u_xlat12;
            let x_3951 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3954 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3948.x, x_3948.y, x_3948.x, x_3948.y) * vec4<f32>(x_3951.x, x_3951.y, x_3951.x, x_3951.y)) + vec4<f32>(x_3954.x, x_3954.y, x_3954.x, x_3954.z));
            let x_3958 : f32 = u_xlat15.w;
            u_xlat17.y = x_3958;
            let x_3961 : vec4<f32> = u_xlat12;
            let x_3964 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3967 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3961.x, x_3961.y, x_3961.x, x_3961.y) * vec4<f32>(x_3964.x, x_3964.y, x_3964.x, x_3964.y)) + vec4<f32>(x_3967.x, x_3967.y, x_3967.z, x_3967.y));
            let x_3971 : vec4<f32> = u_xlat12;
            let x_3974 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3977 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3971.x, x_3971.y) * vec2<f32>(x_3974.x, x_3974.y)) + vec2<f32>(x_3977.w, x_3977.y));
            let x_3981 : f32 = u_xlat17.y;
            u_xlat14.w = x_3981;
            let x_3984 : vec4<f32> = u_xlat12;
            let x_3987 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3990 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3984.x, x_3984.y) * vec2<f32>(x_3987.x, x_3987.y)) + vec2<f32>(x_3990.x, x_3990.w));
            let x_3993 : vec4<f32> = u_xlat17;
            let x_3994 : vec3<f32> = vec3<f32>(x_3993.x, x_3993.z, x_3993.w);
            let x_3995 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3994.x, x_3995.y, x_3994.y, x_3994.z);
            let x_3997 : vec4<f32> = u_xlat12;
            let x_4000 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_4003 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3997.x, x_3997.y, x_3997.x, x_3997.y) * vec4<f32>(x_4000.x, x_4000.y, x_4000.x, x_4000.y)) + vec4<f32>(x_4003.x, x_4003.y, x_4003.z, x_4003.y));
            let x_4007 : vec4<f32> = u_xlat12;
            let x_4010 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_4013 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4007.x, x_4007.y) * vec2<f32>(x_4010.x, x_4010.y)) + vec2<f32>(x_4013.w, x_4013.y));
            let x_4017 : f32 = u_xlat14.x;
            u_xlat15.x = x_4017;
            let x_4019 : vec4<f32> = u_xlat12;
            let x_4022 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_4025 : vec4<f32> = u_xlat15;
            let x_4027 : vec2<f32> = ((vec2<f32>(x_4019.x, x_4019.y) * vec2<f32>(x_4022.x, x_4022.y)) + vec2<f32>(x_4025.x, x_4025.y));
            let x_4028 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4027.x, x_4027.y, x_4028.z, x_4028.w);
            let x_4031 : vec4<f32> = u_xlat13;
            let x_4033 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4031.x, x_4031.x, x_4031.x, x_4031.x) * x_4033);
            let x_4036 : vec4<f32> = u_xlat13;
            let x_4038 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4036.y, x_4036.y, x_4036.y, x_4036.y) * x_4038);
            let x_4041 : vec4<f32> = u_xlat13;
            let x_4043 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4041.z, x_4041.z, x_4041.z, x_4041.z) * x_4043);
            let x_4045 : vec4<f32> = u_xlat13;
            let x_4047 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4045.w, x_4045.w, x_4045.w, x_4045.w) * x_4047);
            let x_4050 : vec4<f32> = u_xlat18;
            let x_4051 : vec2<f32> = vec2<f32>(x_4050.x, x_4050.y);
            let x_4053 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_4051.x, x_4051.y, x_4053);
            let x_4060 : vec3<f32> = txVec43;
            let x_4062 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4060.xy, x_4060.z);
            u_xlat86 = x_4062;
            let x_4064 : vec4<f32> = u_xlat18;
            let x_4065 : vec2<f32> = vec2<f32>(x_4064.z, x_4064.w);
            let x_4067 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_4065.x, x_4065.y, x_4067);
            let x_4074 : vec3<f32> = txVec44;
            let x_4076 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4074.xy, x_4074.z);
            u_xlat87 = x_4076;
            let x_4077 : f32 = u_xlat87;
            let x_4079 : f32 = u_xlat23.y;
            u_xlat87 = (x_4077 * x_4079);
            let x_4082 : f32 = u_xlat23.x;
            let x_4083 : f32 = u_xlat86;
            let x_4085 : f32 = u_xlat87;
            u_xlat86 = ((x_4082 * x_4083) + x_4085);
            let x_4088 : vec2<f32> = u_xlat64;
            let x_4090 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_4088.x, x_4088.y, x_4090);
            let x_4097 : vec3<f32> = txVec45;
            let x_4099 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4097.xy, x_4097.z);
            u_xlat87 = x_4099;
            let x_4101 : f32 = u_xlat23.z;
            let x_4102 : f32 = u_xlat87;
            let x_4104 : f32 = u_xlat86;
            u_xlat86 = ((x_4101 * x_4102) + x_4104);
            let x_4107 : vec4<f32> = u_xlat21;
            let x_4108 : vec2<f32> = vec2<f32>(x_4107.x, x_4107.y);
            let x_4110 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_4108.x, x_4108.y, x_4110);
            let x_4117 : vec3<f32> = txVec46;
            let x_4119 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4117.xy, x_4117.z);
            u_xlat87 = x_4119;
            let x_4121 : f32 = u_xlat23.w;
            let x_4122 : f32 = u_xlat87;
            let x_4124 : f32 = u_xlat86;
            u_xlat86 = ((x_4121 * x_4122) + x_4124);
            let x_4127 : vec4<f32> = u_xlat19;
            let x_4128 : vec2<f32> = vec2<f32>(x_4127.x, x_4127.y);
            let x_4130 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_4128.x, x_4128.y, x_4130);
            let x_4137 : vec3<f32> = txVec47;
            let x_4139 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4137.xy, x_4137.z);
            u_xlat87 = x_4139;
            let x_4141 : f32 = u_xlat24.x;
            let x_4142 : f32 = u_xlat87;
            let x_4144 : f32 = u_xlat86;
            u_xlat86 = ((x_4141 * x_4142) + x_4144);
            let x_4147 : vec4<f32> = u_xlat19;
            let x_4148 : vec2<f32> = vec2<f32>(x_4147.z, x_4147.w);
            let x_4150 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_4148.x, x_4148.y, x_4150);
            let x_4157 : vec3<f32> = txVec48;
            let x_4159 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4157.xy, x_4157.z);
            u_xlat87 = x_4159;
            let x_4161 : f32 = u_xlat24.y;
            let x_4162 : f32 = u_xlat87;
            let x_4164 : f32 = u_xlat86;
            u_xlat86 = ((x_4161 * x_4162) + x_4164);
            let x_4167 : vec4<f32> = u_xlat20;
            let x_4168 : vec2<f32> = vec2<f32>(x_4167.x, x_4167.y);
            let x_4170 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_4168.x, x_4168.y, x_4170);
            let x_4177 : vec3<f32> = txVec49;
            let x_4179 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4177.xy, x_4177.z);
            u_xlat87 = x_4179;
            let x_4181 : f32 = u_xlat24.z;
            let x_4182 : f32 = u_xlat87;
            let x_4184 : f32 = u_xlat86;
            u_xlat86 = ((x_4181 * x_4182) + x_4184);
            let x_4187 : vec4<f32> = u_xlat21;
            let x_4188 : vec2<f32> = vec2<f32>(x_4187.z, x_4187.w);
            let x_4190 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_4188.x, x_4188.y, x_4190);
            let x_4197 : vec3<f32> = txVec50;
            let x_4199 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4197.xy, x_4197.z);
            u_xlat87 = x_4199;
            let x_4201 : f32 = u_xlat24.w;
            let x_4202 : f32 = u_xlat87;
            let x_4204 : f32 = u_xlat86;
            u_xlat86 = ((x_4201 * x_4202) + x_4204);
            let x_4207 : vec4<f32> = u_xlat22;
            let x_4208 : vec2<f32> = vec2<f32>(x_4207.x, x_4207.y);
            let x_4210 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_4208.x, x_4208.y, x_4210);
            let x_4217 : vec3<f32> = txVec51;
            let x_4219 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4217.xy, x_4217.z);
            u_xlat87 = x_4219;
            let x_4221 : f32 = u_xlat25.x;
            let x_4222 : f32 = u_xlat87;
            let x_4224 : f32 = u_xlat86;
            u_xlat86 = ((x_4221 * x_4222) + x_4224);
            let x_4227 : vec4<f32> = u_xlat22;
            let x_4228 : vec2<f32> = vec2<f32>(x_4227.z, x_4227.w);
            let x_4230 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_4228.x, x_4228.y, x_4230);
            let x_4237 : vec3<f32> = txVec52;
            let x_4239 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4237.xy, x_4237.z);
            u_xlat87 = x_4239;
            let x_4241 : f32 = u_xlat25.y;
            let x_4242 : f32 = u_xlat87;
            let x_4244 : f32 = u_xlat86;
            u_xlat86 = ((x_4241 * x_4242) + x_4244);
            let x_4247 : vec2<f32> = u_xlat40;
            let x_4249 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_4247.x, x_4247.y, x_4249);
            let x_4256 : vec3<f32> = txVec53;
            let x_4258 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4256.xy, x_4256.z);
            u_xlat87 = x_4258;
            let x_4260 : f32 = u_xlat25.z;
            let x_4261 : f32 = u_xlat87;
            let x_4263 : f32 = u_xlat86;
            u_xlat86 = ((x_4260 * x_4261) + x_4263);
            let x_4266 : vec2<f32> = u_xlat72;
            let x_4268 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_4266.x, x_4266.y, x_4268);
            let x_4275 : vec3<f32> = txVec54;
            let x_4277 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4275.xy, x_4275.z);
            u_xlat87 = x_4277;
            let x_4279 : f32 = u_xlat25.w;
            let x_4280 : f32 = u_xlat87;
            let x_4282 : f32 = u_xlat86;
            u_xlat86 = ((x_4279 * x_4280) + x_4282);
            let x_4285 : vec4<f32> = u_xlat17;
            let x_4286 : vec2<f32> = vec2<f32>(x_4285.x, x_4285.y);
            let x_4288 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_4286.x, x_4286.y, x_4288);
            let x_4295 : vec3<f32> = txVec55;
            let x_4297 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4295.xy, x_4295.z);
            u_xlat87 = x_4297;
            let x_4299 : f32 = u_xlat13.x;
            let x_4300 : f32 = u_xlat87;
            let x_4302 : f32 = u_xlat86;
            u_xlat86 = ((x_4299 * x_4300) + x_4302);
            let x_4305 : vec4<f32> = u_xlat17;
            let x_4306 : vec2<f32> = vec2<f32>(x_4305.z, x_4305.w);
            let x_4308 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_4306.x, x_4306.y, x_4308);
            let x_4315 : vec3<f32> = txVec56;
            let x_4317 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4315.xy, x_4315.z);
            u_xlat87 = x_4317;
            let x_4319 : f32 = u_xlat13.y;
            let x_4320 : f32 = u_xlat87;
            let x_4322 : f32 = u_xlat86;
            u_xlat86 = ((x_4319 * x_4320) + x_4322);
            let x_4325 : vec2<f32> = u_xlat67;
            let x_4327 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_4325.x, x_4325.y, x_4327);
            let x_4334 : vec3<f32> = txVec57;
            let x_4336 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4334.xy, x_4334.z);
            u_xlat87 = x_4336;
            let x_4338 : f32 = u_xlat13.z;
            let x_4339 : f32 = u_xlat87;
            let x_4341 : f32 = u_xlat86;
            u_xlat86 = ((x_4338 * x_4339) + x_4341);
            let x_4344 : vec4<f32> = u_xlat12;
            let x_4345 : vec2<f32> = vec2<f32>(x_4344.x, x_4344.y);
            let x_4347 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_4345.x, x_4345.y, x_4347);
            let x_4354 : vec3<f32> = txVec58;
            let x_4356 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4354.xy, x_4354.z);
            u_xlat87 = x_4356;
            let x_4358 : f32 = u_xlat13.w;
            let x_4359 : f32 = u_xlat87;
            let x_4361 : f32 = u_xlat86;
            u_xlat85 = ((x_4358 * x_4359) + x_4361);
          }
        }
      } else {
        let x_4365 : vec4<f32> = u_xlat11;
        let x_4366 : vec2<f32> = vec2<f32>(x_4365.x, x_4365.y);
        let x_4368 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_4366.x, x_4366.y, x_4368);
        let x_4375 : vec3<f32> = txVec59;
        let x_4377 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4375.xy, x_4375.z);
        u_xlat85 = x_4377;
      }
      let x_4378 : i32 = u_xlati83;
      let x_4380 : f32 = x_868.x_AdditionalShadowParams[x_4378].x;
      u_xlat86 = (1.0f + -(x_4380));
      let x_4383 : f32 = u_xlat85;
      let x_4384 : i32 = u_xlati83;
      let x_4386 : f32 = x_868.x_AdditionalShadowParams[x_4384].x;
      let x_4388 : f32 = u_xlat86;
      u_xlat85 = ((x_4383 * x_4386) + x_4388);
      let x_4391 : f32 = u_xlat11.z;
      u_xlatb86 = (0.0f >= x_4391);
      let x_4395 : f32 = u_xlat11.z;
      u_xlatb87 = (x_4395 >= 1.0f);
      let x_4397 : bool = u_xlatb86;
      let x_4398 : bool = u_xlatb87;
      u_xlatb86 = (x_4397 | x_4398);
      let x_4400 : bool = u_xlatb86;
      let x_4401 : f32 = u_xlat85;
      u_xlat85 = select(x_4401, 1.0f, x_4400);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_4404 : f32 = u_xlat85;
    u_xlat86 = (-(x_4404) + 1.0f);
    let x_4407 : f32 = u_xlat28;
    let x_4408 : f32 = u_xlat86;
    let x_4410 : f32 = u_xlat85;
    u_xlat85 = ((x_4407 * x_4408) + x_4410);
    let x_4413 : i32 = u_xlati83;
    u_xlati86 = (1i << bitcast<u32>((x_4413 & 31i)));
    let x_4416 : i32 = u_xlati86;
    let x_4419 : f32 = x_2483.x_AdditionalLightsCookieEnableBits;
    u_xlati86 = bitcast<i32>((bitcast<u32>(x_4416) & bitcast<u32>(x_4419)));
    let x_4423 : i32 = u_xlati86;
    if ((x_4423 != 0i)) {
      let x_4427 : i32 = u_xlati83;
      let x_4429 : f32 = x_2483.x_AdditionalLightsLightTypes[x_4427].el;
      u_xlati86 = i32(x_4429);
      let x_4432 : i32 = u_xlati86;
      u_xlati87 = select(1i, 0i, (x_4432 != 0i));
      let x_4436 : i32 = u_xlati83;
      u_xlati88 = (x_4436 << bitcast<u32>(2i));
      let x_4438 : i32 = u_xlati87;
      if ((x_4438 != 0i)) {
        let x_4442 : vec3<f32> = vs_TEXCOORD7;
        let x_4444 : i32 = u_xlati88;
        let x_4447 : i32 = u_xlati88;
        let x_4451 : vec4<f32> = x_2483.x_AdditionalLightsWorldToLights[((x_4444 + 1i) / 4i)][((x_4447 + 1i) % 4i)];
        let x_4453 : vec3<f32> = (vec3<f32>(x_4442.y, x_4442.y, x_4442.y) * vec3<f32>(x_4451.x, x_4451.y, x_4451.w));
        let x_4454 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4453.x, x_4453.y, x_4453.z, x_4454.w);
        let x_4456 : i32 = u_xlati88;
        let x_4458 : i32 = u_xlati88;
        let x_4461 : vec4<f32> = x_2483.x_AdditionalLightsWorldToLights[(x_4456 / 4i)][(x_4458 % 4i)];
        let x_4463 : vec3<f32> = vs_TEXCOORD7;
        let x_4466 : vec4<f32> = u_xlat11;
        let x_4468 : vec3<f32> = ((vec3<f32>(x_4461.x, x_4461.y, x_4461.w) * vec3<f32>(x_4463.x, x_4463.x, x_4463.x)) + vec3<f32>(x_4466.x, x_4466.y, x_4466.z));
        let x_4469 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4468.x, x_4468.y, x_4468.z, x_4469.w);
        let x_4471 : i32 = u_xlati88;
        let x_4474 : i32 = u_xlati88;
        let x_4478 : vec4<f32> = x_2483.x_AdditionalLightsWorldToLights[((x_4471 + 2i) / 4i)][((x_4474 + 2i) % 4i)];
        let x_4480 : vec3<f32> = vs_TEXCOORD7;
        let x_4483 : vec4<f32> = u_xlat11;
        let x_4485 : vec3<f32> = ((vec3<f32>(x_4478.x, x_4478.y, x_4478.w) * vec3<f32>(x_4480.z, x_4480.z, x_4480.z)) + vec3<f32>(x_4483.x, x_4483.y, x_4483.z));
        let x_4486 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4485.x, x_4485.y, x_4485.z, x_4486.w);
        let x_4488 : vec4<f32> = u_xlat11;
        let x_4490 : i32 = u_xlati88;
        let x_4493 : i32 = u_xlati88;
        let x_4497 : vec4<f32> = x_2483.x_AdditionalLightsWorldToLights[((x_4490 + 3i) / 4i)][((x_4493 + 3i) % 4i)];
        let x_4499 : vec3<f32> = (vec3<f32>(x_4488.x, x_4488.y, x_4488.z) + vec3<f32>(x_4497.x, x_4497.y, x_4497.w));
        let x_4500 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4499.x, x_4499.y, x_4499.z, x_4500.w);
        let x_4502 : vec4<f32> = u_xlat11;
        let x_4504 : vec4<f32> = u_xlat11;
        let x_4506 : vec2<f32> = (vec2<f32>(x_4502.x, x_4502.y) / vec2<f32>(x_4504.z, x_4504.z));
        let x_4507 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4506.x, x_4506.y, x_4507.z, x_4507.w);
        let x_4509 : vec4<f32> = u_xlat11;
        let x_4512 : vec2<f32> = ((vec2<f32>(x_4509.x, x_4509.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4513 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4512.x, x_4512.y, x_4513.z, x_4513.w);
        let x_4515 : vec4<f32> = u_xlat11;
        let x_4519 : vec2<f32> = clamp(vec2<f32>(x_4515.x, x_4515.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4520 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4519.x, x_4519.y, x_4520.z, x_4520.w);
        let x_4522 : i32 = u_xlati83;
        let x_4524 : vec4<f32> = x_2483.x_AdditionalLightsCookieAtlasUVRects[x_4522];
        let x_4526 : vec4<f32> = u_xlat11;
        let x_4529 : i32 = u_xlati83;
        let x_4531 : vec4<f32> = x_2483.x_AdditionalLightsCookieAtlasUVRects[x_4529];
        let x_4533 : vec2<f32> = ((vec2<f32>(x_4524.x, x_4524.y) * vec2<f32>(x_4526.x, x_4526.y)) + vec2<f32>(x_4531.z, x_4531.w));
        let x_4534 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4533.x, x_4533.y, x_4534.z, x_4534.w);
      } else {
        let x_4537 : i32 = u_xlati86;
        u_xlatb86 = (x_4537 == 1i);
        let x_4539 : bool = u_xlatb86;
        u_xlati86 = select(0i, 1i, x_4539);
        let x_4541 : i32 = u_xlati86;
        if ((x_4541 != 0i)) {
          let x_4546 : vec3<f32> = vs_TEXCOORD7;
          let x_4548 : i32 = u_xlati88;
          let x_4551 : i32 = u_xlati88;
          let x_4555 : vec4<f32> = x_2483.x_AdditionalLightsWorldToLights[((x_4548 + 1i) / 4i)][((x_4551 + 1i) % 4i)];
          u_xlat63 = (vec2<f32>(x_4546.y, x_4546.y) * vec2<f32>(x_4555.x, x_4555.y));
          let x_4558 : i32 = u_xlati88;
          let x_4560 : i32 = u_xlati88;
          let x_4563 : vec4<f32> = x_2483.x_AdditionalLightsWorldToLights[(x_4558 / 4i)][(x_4560 % 4i)];
          let x_4565 : vec3<f32> = vs_TEXCOORD7;
          let x_4568 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4563.x, x_4563.y) * vec2<f32>(x_4565.x, x_4565.x)) + x_4568);
          let x_4570 : i32 = u_xlati88;
          let x_4573 : i32 = u_xlati88;
          let x_4577 : vec4<f32> = x_2483.x_AdditionalLightsWorldToLights[((x_4570 + 2i) / 4i)][((x_4573 + 2i) % 4i)];
          let x_4579 : vec3<f32> = vs_TEXCOORD7;
          let x_4582 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4577.x, x_4577.y) * vec2<f32>(x_4579.z, x_4579.z)) + x_4582);
          let x_4584 : vec2<f32> = u_xlat63;
          let x_4585 : i32 = u_xlati88;
          let x_4588 : i32 = u_xlati88;
          let x_4592 : vec4<f32> = x_2483.x_AdditionalLightsWorldToLights[((x_4585 + 3i) / 4i)][((x_4588 + 3i) % 4i)];
          u_xlat63 = (x_4584 + vec2<f32>(x_4592.x, x_4592.y));
          let x_4595 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4595 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4598 : vec2<f32> = u_xlat63;
          u_xlat63 = fract(x_4598);
          let x_4600 : i32 = u_xlati83;
          let x_4602 : vec4<f32> = x_2483.x_AdditionalLightsCookieAtlasUVRects[x_4600];
          let x_4604 : vec2<f32> = u_xlat63;
          let x_4606 : i32 = u_xlati83;
          let x_4608 : vec4<f32> = x_2483.x_AdditionalLightsCookieAtlasUVRects[x_4606];
          let x_4610 : vec2<f32> = ((vec2<f32>(x_4602.x, x_4602.y) * x_4604) + vec2<f32>(x_4608.z, x_4608.w));
          let x_4611 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4610.x, x_4610.y, x_4611.z, x_4611.w);
        } else {
          let x_4614 : vec3<f32> = vs_TEXCOORD7;
          let x_4616 : i32 = u_xlati88;
          let x_4619 : i32 = u_xlati88;
          let x_4623 : vec4<f32> = x_2483.x_AdditionalLightsWorldToLights[((x_4616 + 1i) / 4i)][((x_4619 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4614.y, x_4614.y, x_4614.y, x_4614.y) * x_4623);
          let x_4625 : i32 = u_xlati88;
          let x_4627 : i32 = u_xlati88;
          let x_4630 : vec4<f32> = x_2483.x_AdditionalLightsWorldToLights[(x_4625 / 4i)][(x_4627 % 4i)];
          let x_4631 : vec3<f32> = vs_TEXCOORD7;
          let x_4634 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4630 * vec4<f32>(x_4631.x, x_4631.x, x_4631.x, x_4631.x)) + x_4634);
          let x_4636 : i32 = u_xlati88;
          let x_4639 : i32 = u_xlati88;
          let x_4643 : vec4<f32> = x_2483.x_AdditionalLightsWorldToLights[((x_4636 + 2i) / 4i)][((x_4639 + 2i) % 4i)];
          let x_4644 : vec3<f32> = vs_TEXCOORD7;
          let x_4647 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4643 * vec4<f32>(x_4644.z, x_4644.z, x_4644.z, x_4644.z)) + x_4647);
          let x_4649 : vec4<f32> = u_xlat12;
          let x_4650 : i32 = u_xlati88;
          let x_4653 : i32 = u_xlati88;
          let x_4657 : vec4<f32> = x_2483.x_AdditionalLightsWorldToLights[((x_4650 + 3i) / 4i)][((x_4653 + 3i) % 4i)];
          u_xlat12 = (x_4649 + x_4657);
          let x_4659 : vec4<f32> = u_xlat12;
          let x_4661 : vec4<f32> = u_xlat12;
          let x_4663 : vec3<f32> = (vec3<f32>(x_4659.x, x_4659.y, x_4659.z) / vec3<f32>(x_4661.w, x_4661.w, x_4661.w));
          let x_4664 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4663.x, x_4663.y, x_4663.z, x_4664.w);
          let x_4666 : vec4<f32> = u_xlat12;
          let x_4668 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(vec3<f32>(x_4666.x, x_4666.y, x_4666.z), vec3<f32>(x_4668.x, x_4668.y, x_4668.z));
          let x_4671 : f32 = u_xlat86;
          u_xlat86 = inverseSqrt(x_4671);
          let x_4673 : f32 = u_xlat86;
          let x_4675 : vec4<f32> = u_xlat12;
          let x_4677 : vec3<f32> = (vec3<f32>(x_4673, x_4673, x_4673) * vec3<f32>(x_4675.x, x_4675.y, x_4675.z));
          let x_4678 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4677.x, x_4677.y, x_4677.z, x_4678.w);
          let x_4680 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(abs(vec3<f32>(x_4680.x, x_4680.y, x_4680.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4685 : f32 = u_xlat86;
          u_xlat86 = max(x_4685, 0.00000099999999747524f);
          let x_4688 : f32 = u_xlat86;
          u_xlat86 = (1.0f / x_4688);
          let x_4690 : f32 = u_xlat86;
          let x_4692 : vec4<f32> = u_xlat12;
          let x_4694 : vec3<f32> = (vec3<f32>(x_4690, x_4690, x_4690) * vec3<f32>(x_4692.z, x_4692.x, x_4692.y));
          let x_4695 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4694.x, x_4694.y, x_4694.z, x_4695.w);
          let x_4698 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4698);
          let x_4702 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4702, 0.0f, 1.0f);
          let x_4706 : vec4<f32> = u_xlat13;
          let x_4708 : vec4<bool> = (vec4<f32>(x_4706.y, x_4706.z, x_4706.y, x_4706.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_4708.x, x_4708.y);
          let x_4711 : bool = u_xlatb63.x;
          if (x_4711) {
            let x_4716 : f32 = u_xlat13.x;
            x_4712 = x_4716;
          } else {
            let x_4719 : f32 = u_xlat13.x;
            x_4712 = -(x_4719);
          }
          let x_4721 : f32 = x_4712;
          u_xlat63.x = x_4721;
          let x_4724 : bool = u_xlatb63.y;
          if (x_4724) {
            let x_4729 : f32 = u_xlat13.x;
            x_4725 = x_4729;
          } else {
            let x_4732 : f32 = u_xlat13.x;
            x_4725 = -(x_4732);
          }
          let x_4734 : f32 = x_4725;
          u_xlat63.y = x_4734;
          let x_4736 : vec4<f32> = u_xlat12;
          let x_4738 : f32 = u_xlat86;
          let x_4741 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4736.x, x_4736.y) * vec2<f32>(x_4738, x_4738)) + x_4741);
          let x_4743 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4743 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4746 : vec2<f32> = u_xlat63;
          u_xlat63 = clamp(x_4746, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4750 : i32 = u_xlati83;
          let x_4752 : vec4<f32> = x_2483.x_AdditionalLightsCookieAtlasUVRects[x_4750];
          let x_4754 : vec2<f32> = u_xlat63;
          let x_4756 : i32 = u_xlati83;
          let x_4758 : vec4<f32> = x_2483.x_AdditionalLightsCookieAtlasUVRects[x_4756];
          let x_4760 : vec2<f32> = ((vec2<f32>(x_4752.x, x_4752.y) * x_4754) + vec2<f32>(x_4758.z, x_4758.w));
          let x_4761 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4760.x, x_4760.y, x_4761.z, x_4761.w);
        }
      }
      let x_4768 : vec4<f32> = u_xlat11;
      let x_4770 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4768.x, x_4768.y), 0.0f);
      u_xlat11 = x_4770;
      let x_4772 : bool = u_xlatb6.y;
      if (x_4772) {
        let x_4777 : f32 = u_xlat11.w;
        x_4773 = x_4777;
      } else {
        let x_4780 : f32 = u_xlat11.x;
        x_4773 = x_4780;
      }
      let x_4781 : f32 = x_4773;
      u_xlat86 = x_4781;
      let x_4783 : bool = u_xlatb6.x;
      if (x_4783) {
        let x_4787 : vec4<f32> = u_xlat11;
        x_4784 = vec3<f32>(x_4787.x, x_4787.y, x_4787.z);
      } else {
        let x_4790 : f32 = u_xlat86;
        x_4784 = vec3<f32>(x_4790, x_4790, x_4790);
      }
      let x_4792 : vec3<f32> = x_4784;
      let x_4793 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4792.x, x_4792.y, x_4792.z, x_4793.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4799 : vec4<f32> = u_xlat11;
    let x_4801 : i32 = u_xlati83;
    let x_4803 : vec4<f32> = x_2977.x_AdditionalLightsColor[x_4801];
    let x_4805 : vec3<f32> = (vec3<f32>(x_4799.x, x_4799.y, x_4799.z) * vec3<f32>(x_4803.x, x_4803.y, x_4803.z));
    let x_4806 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4805.x, x_4805.y, x_4805.z, x_4806.w);
    let x_4809 : f32 = u_xlat58.x;
    let x_4810 : f32 = u_xlat85;
    u_xlat83 = (x_4809 * x_4810);
    let x_4812 : vec4<f32> = u_xlat1;
    let x_4814 : vec4<f32> = u_xlat10;
    u_xlat58.x = dot(vec3<f32>(x_4812.x, x_4812.y, x_4812.z), vec3<f32>(x_4814.x, x_4814.y, x_4814.z));
    let x_4819 : f32 = u_xlat58.x;
    u_xlat58.x = clamp(x_4819, 0.0f, 1.0f);
    let x_4822 : f32 = u_xlat83;
    let x_4824 : f32 = u_xlat58.x;
    u_xlat83 = (x_4822 * x_4824);
    let x_4826 : f32 = u_xlat83;
    let x_4828 : vec4<f32> = u_xlat11;
    let x_4830 : vec3<f32> = (vec3<f32>(x_4826, x_4826, x_4826) * vec3<f32>(x_4828.x, x_4828.y, x_4828.z));
    let x_4831 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4830.x, x_4830.y, x_4830.z, x_4831.w);
    let x_4833 : vec4<f32> = u_xlat9;
    let x_4835 : f32 = u_xlat84;
    let x_4838 : vec4<f32> = u_xlat7;
    let x_4840 : vec3<f32> = ((vec3<f32>(x_4833.x, x_4833.y, x_4833.z) * vec3<f32>(x_4835, x_4835, x_4835)) + vec3<f32>(x_4838.x, x_4838.y, x_4838.z));
    let x_4841 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4840.x, x_4840.y, x_4840.z, x_4841.w);
    let x_4843 : vec4<f32> = u_xlat9;
    let x_4845 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4843.x, x_4843.y, x_4843.z), vec3<f32>(x_4845.x, x_4845.y, x_4845.z));
    let x_4848 : f32 = u_xlat83;
    u_xlat83 = max(x_4848, 1.17549435e-38f);
    let x_4850 : f32 = u_xlat83;
    u_xlat83 = inverseSqrt(x_4850);
    let x_4852 : f32 = u_xlat83;
    let x_4854 : vec4<f32> = u_xlat9;
    let x_4856 : vec3<f32> = (vec3<f32>(x_4852, x_4852, x_4852) * vec3<f32>(x_4854.x, x_4854.y, x_4854.z));
    let x_4857 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4856.x, x_4856.y, x_4856.z, x_4857.w);
    let x_4859 : vec4<f32> = u_xlat1;
    let x_4861 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4859.x, x_4859.y, x_4859.z), vec3<f32>(x_4861.x, x_4861.y, x_4861.z));
    let x_4864 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4864, 0.0f, 1.0f);
    let x_4866 : vec4<f32> = u_xlat10;
    let x_4868 : vec4<f32> = u_xlat9;
    u_xlat58.x = dot(vec3<f32>(x_4866.x, x_4866.y, x_4866.z), vec3<f32>(x_4868.x, x_4868.y, x_4868.z));
    let x_4873 : f32 = u_xlat58.x;
    u_xlat58.x = clamp(x_4873, 0.0f, 1.0f);
    let x_4876 : f32 = u_xlat83;
    let x_4877 : f32 = u_xlat83;
    u_xlat83 = (x_4876 * x_4877);
    let x_4879 : f32 = u_xlat83;
    let x_4881 : f32 = u_xlat0.x;
    u_xlat83 = ((x_4879 * x_4881) + 1.00001001358032226562f);
    let x_4885 : f32 = u_xlat58.x;
    let x_4887 : f32 = u_xlat58.x;
    u_xlat58.x = (x_4885 * x_4887);
    let x_4890 : f32 = u_xlat83;
    let x_4891 : f32 = u_xlat83;
    u_xlat83 = (x_4890 * x_4891);
    let x_4894 : f32 = u_xlat58.x;
    u_xlat58.x = max(x_4894, 0.10000000149011611938f);
    let x_4897 : f32 = u_xlat83;
    let x_4899 : f32 = u_xlat58.x;
    u_xlat83 = (x_4897 * x_4899);
    let x_4901 : f32 = u_xlat81;
    let x_4902 : f32 = u_xlat83;
    u_xlat83 = (x_4901 * x_4902);
    let x_4904 : f32 = u_xlat79;
    let x_4905 : f32 = u_xlat83;
    u_xlat83 = (x_4904 / x_4905);
    let x_4907 : vec4<f32> = u_xlat5;
    let x_4909 : f32 = u_xlat83;
    let x_4912 : vec4<f32> = u_xlat4;
    let x_4914 : vec3<f32> = ((vec3<f32>(x_4907.x, x_4907.y, x_4907.z) * vec3<f32>(x_4909, x_4909, x_4909)) + vec3<f32>(x_4912.x, x_4912.y, x_4912.z));
    let x_4915 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4914.x, x_4914.y, x_4914.z, x_4915.w);
    let x_4917 : vec4<f32> = u_xlat9;
    let x_4919 : vec4<f32> = u_xlat11;
    let x_4922 : vec4<f32> = u_xlat8;
    let x_4924 : vec3<f32> = ((vec3<f32>(x_4917.x, x_4917.y, x_4917.z) * vec3<f32>(x_4919.x, x_4919.y, x_4919.z)) + vec3<f32>(x_4922.x, x_4922.y, x_4922.z));
    let x_4925 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4924.x, x_4924.y, x_4924.z, x_4925.w);

    continuing {
      let x_4927 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4927 + bitcast<u32>(1i));
    }
  }
  let x_4929 : vec4<f32> = u_xlat3;
  let x_4931 : f32 = u_xlat26;
  let x_4934 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_4929.x, x_4929.y, x_4929.z) * vec3<f32>(x_4931, x_4931, x_4931)) + vec3<f32>(x_4934.x, x_4934.z, x_4934.w));
  let x_4937 : vec4<f32> = u_xlat8;
  let x_4939 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4937.x, x_4937.y, x_4937.z) + x_4939);
  let x_4943 : f32 = u_xlat78;
  let x_4945 : vec3<f32> = u_xlat0;
  let x_4946 : vec3<f32> = (vec3<f32>(x_4943, x_4943, x_4943) * x_4945);
  let x_4947 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4946.x, x_4946.y, x_4946.z, x_4947.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


