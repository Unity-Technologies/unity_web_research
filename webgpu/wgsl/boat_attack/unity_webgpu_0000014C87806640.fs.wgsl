diagnostic(off, derivative_uniformity);

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

@group(1) @binding(3) var<uniform> x_13 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(18) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_112 : PGlobals;

var<private> u_xlat78 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(19) var sampler_Splat0 : sampler;

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

@group(0) @binding(8) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(20) var sampler_Normal0 : sampler;

@group(0) @binding(9) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(10) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(11) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat26 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_833 : LightShadows;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu79 : u32;

var<private> u_xlati79 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(17) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlatb82 : bool;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(22) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(5) var<uniform> x_2448 : LightCookies;

@group(0) @binding(14) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(16) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2649 : UnityPerDraw;

var<private> u_xlatu52 : u32;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlatu83 : u32;

var<private> u_xlati58 : i32;

var<private> u_xlati83 : i32;

@group(1) @binding(1) var<uniform> x_2942 : AdditionalLights;

var<private> u_xlat84 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlati85 : i32;

var<private> u_xlatb86 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat87 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(13) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(15) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(21) var sampler_LinearClamp : sampler;

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
  var x_2400 : f32;
  var x_2531 : f32;
  var x_2542 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3096 : f32;
  var x_3106 : f32;
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
  var x_4677 : f32;
  var x_4690 : f32;
  var x_4738 : f32;
  var x_4749 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : vec4<f32> = x_13.x_MaskMapRemapScale0;
  let x_25 : vec4<f32> = x_13.x_MaskMapRemapOffset0;
  u_xlat0 = ((vec3<f32>(x_18.x, x_18.y, x_18.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_25.x, x_25.y, x_25.w));
  let x_32 : vec4<f32> = x_13.x_MaskMapRemapScale1;
  let x_37 : vec4<f32> = x_13.x_MaskMapRemapOffset1;
  let x_39 : vec3<f32> = ((vec3<f32>(x_32.x, x_32.y, x_32.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_37.x, x_37.y, x_37.w));
  let x_40 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_39.x, x_39.y, x_39.z, x_40.w);
  let x_45 : vec4<f32> = x_13.x_MaskMapRemapScale2;
  let x_50 : vec4<f32> = x_13.x_MaskMapRemapOffset2;
  let x_52 : vec3<f32> = ((vec3<f32>(x_45.x, x_45.y, x_45.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_50.x, x_50.y, x_50.w));
  let x_53 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_52.x, x_52.y, x_52.z, x_53.w);
  let x_58 : vec4<f32> = x_13.x_MaskMapRemapScale3;
  let x_63 : vec4<f32> = x_13.x_MaskMapRemapOffset3;
  let x_65 : vec3<f32> = ((vec3<f32>(x_58.x, x_58.w, x_58.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_63.x, x_63.w, x_63.y));
  let x_66 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_65.x, x_65.y, x_66.z, x_65.z);
  let x_72 : vec4<f32> = x_13.x_Control_TexelSize;
  let x_76 : vec2<f32> = (vec2<f32>(x_72.z, x_72.w) + vec2<f32>(-1.0f, -1.0f));
  let x_77 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_76.x, x_76.y, x_77.z, x_77.w);
  let x_81 : vec4<f32> = vs_TEXCOORD0;
  let x_83 : vec4<f32> = u_xlat4;
  let x_87 : vec2<f32> = ((vec2<f32>(x_81.x, x_81.y) * vec2<f32>(x_83.x, x_83.y)) + vec2<f32>(0.5f, 0.5f));
  let x_88 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_87.x, x_87.y, x_88.z, x_88.w);
  let x_90 : vec4<f32> = u_xlat4;
  let x_93 : vec4<f32> = x_13.x_Control_TexelSize;
  let x_95 : vec2<f32> = (vec2<f32>(x_90.x, x_90.y) * vec2<f32>(x_93.x, x_93.y));
  let x_96 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_95.x, x_95.y, x_96.z, x_96.w);
  let x_108 : vec4<f32> = u_xlat4;
  let x_118 : f32 = x_112.x_GlobalMipBias.x;
  let x_119 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_108.x, x_108.y), x_118);
  u_xlat4 = x_119;
  let x_122 : vec4<f32> = u_xlat4;
  u_xlat78 = dot(x_122, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_133 : vec4<f32> = vs_TEXCOORD1;
  let x_136 : f32 = x_112.x_GlobalMipBias.x;
  let x_137 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_133.x, x_133.y), x_136);
  u_xlat5 = x_137;
  let x_143 : vec4<f32> = vs_TEXCOORD1;
  let x_146 : f32 = x_112.x_GlobalMipBias.x;
  let x_147 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_143.z, x_143.w), x_146);
  u_xlat6 = x_147;
  let x_154 : vec4<f32> = vs_TEXCOORD2;
  let x_157 : f32 = x_112.x_GlobalMipBias.x;
  let x_158 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_154.x, x_154.y), x_157);
  u_xlat7 = x_158;
  let x_164 : vec4<f32> = vs_TEXCOORD2;
  let x_167 : f32 = x_112.x_GlobalMipBias.x;
  let x_168 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_164.z, x_164.w), x_167);
  u_xlat8 = x_168;
  let x_172 : f32 = u_xlat5.w;
  u_xlat9.x = x_172;
  let x_175 : f32 = u_xlat6.w;
  u_xlat9.y = x_175;
  let x_179 : f32 = u_xlat7.w;
  u_xlat9.z = x_179;
  let x_183 : f32 = u_xlat8.w;
  u_xlat9.w = x_183;
  let x_186 : vec4<f32> = u_xlat9;
  let x_189 : f32 = x_13.x_Smoothness0;
  let x_192 : f32 = x_13.x_Smoothness1;
  let x_195 : f32 = x_13.x_Smoothness2;
  let x_198 : f32 = x_13.x_Smoothness3;
  u_xlat10 = (x_186 * vec4<f32>(x_189, x_192, x_195, x_198));
  let x_207 : f32 = x_13.x_NumLayersCount;
  u_xlatb79 = (4.0f >= x_207);
  let x_210 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_210) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_213 : vec4<f32> = u_xlat9;
  let x_214 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_213 + -(x_214));
  let x_217 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_217 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_221 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_221, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_226 : vec4<f32> = u_xlat4;
  let x_230 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_226 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_230);
  let x_233 : vec4<f32> = u_xlat4;
  let x_234 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_233 + -(x_234));
  let x_239 : f32 = u_xlat12.x;
  let x_242 : f32 = x_13.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_239 * x_242);
  let x_246 : f32 = u_xlat12.y;
  let x_249 : f32 = x_13.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_246 * x_249);
  let x_253 : f32 = u_xlat12.z;
  let x_256 : f32 = x_13.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_253 * x_256);
  let x_260 : f32 = u_xlat12.w;
  let x_263 : f32 = x_13.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_260 * x_263);
  let x_266 : vec4<f32> = u_xlat11;
  let x_267 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_266 + x_267);
  let x_269 : bool = u_xlatb79;
  let x_270 : vec4<f32> = u_xlat11;
  let x_271 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_271, x_270, vec4<bool>(x_269, x_269, x_269, x_269));
  let x_276 : vec4<f32> = u_xlat4;
  u_xlat79 = dot(x_276, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_278 : f32 = u_xlat79;
  u_xlat79 = (x_278 + 0.00006103515625f);
  let x_281 : vec4<f32> = u_xlat4;
  let x_282 : f32 = u_xlat79;
  u_xlat4 = (x_281 / vec4<f32>(x_282, x_282, x_282, x_282));
  let x_285 : vec4<f32> = u_xlat4;
  let x_288 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_290 : vec3<f32> = (vec3<f32>(x_285.x, x_285.x, x_285.x) * vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_291 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_293 : vec4<f32> = u_xlat4;
  let x_296 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_298 : vec3<f32> = (vec3<f32>(x_293.y, x_293.y, x_293.y) * vec3<f32>(x_296.x, x_296.y, x_296.z));
  let x_299 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_298.x, x_298.y, x_298.z, x_299.w);
  let x_301 : vec4<f32> = u_xlat6;
  let x_303 : vec4<f32> = u_xlat12;
  let x_305 : vec3<f32> = (vec3<f32>(x_301.x, x_301.y, x_301.z) * vec3<f32>(x_303.x, x_303.y, x_303.z));
  let x_306 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_305.x, x_305.y, x_305.z, x_306.w);
  let x_308 : vec4<f32> = u_xlat5;
  let x_310 : vec4<f32> = u_xlat11;
  let x_313 : vec4<f32> = u_xlat6;
  let x_315 : vec3<f32> = ((vec3<f32>(x_308.x, x_308.y, x_308.z) * vec3<f32>(x_310.x, x_310.y, x_310.z)) + vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_316 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_318 : vec4<f32> = u_xlat4;
  let x_321 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_323 : vec3<f32> = (vec3<f32>(x_318.z, x_318.z, x_318.z) * vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_324 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_326 : vec4<f32> = u_xlat7;
  let x_328 : vec4<f32> = u_xlat6;
  let x_331 : vec4<f32> = u_xlat5;
  let x_333 : vec3<f32> = ((vec3<f32>(x_326.x, x_326.y, x_326.z) * vec3<f32>(x_328.x, x_328.y, x_328.z)) + vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec4<f32> = u_xlat4;
  let x_339 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_341 : vec3<f32> = (vec3<f32>(x_336.w, x_336.w, x_336.w) * vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_344 : vec4<f32> = u_xlat8;
  let x_346 : vec4<f32> = u_xlat6;
  let x_349 : vec4<f32> = u_xlat5;
  let x_351 : vec3<f32> = ((vec3<f32>(x_344.x, x_344.y, x_344.z) * vec3<f32>(x_346.x, x_346.y, x_346.z)) + vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_359 : vec4<f32> = vs_TEXCOORD1;
  let x_362 : f32 = x_112.x_GlobalMipBias.x;
  let x_363 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_359.x, x_359.y), x_362);
  let x_364 : vec3<f32> = vec3<f32>(x_363.x, x_363.y, x_363.w);
  let x_365 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_368 : f32 = u_xlat6.x;
  let x_370 : f32 = u_xlat6.z;
  u_xlat6.x = (x_368 * x_370);
  let x_373 : vec4<f32> = u_xlat6;
  let x_378 : vec2<f32> = ((vec2<f32>(x_373.x, x_373.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_379 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_378.x, x_378.y, x_379.z, x_379.w);
  let x_381 : vec4<f32> = u_xlat6;
  let x_383 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec2<f32>(x_381.x, x_381.y), vec2<f32>(x_383.x, x_383.y));
  let x_386 : f32 = u_xlat79;
  u_xlat79 = min(x_386, 1.0f);
  let x_388 : f32 = u_xlat79;
  u_xlat79 = (-(x_388) + 1.0f);
  let x_391 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_391);
  let x_393 : f32 = u_xlat79;
  u_xlat7.z = max(x_393, 0.0000000000000001f);
  let x_397 : vec4<f32> = u_xlat6;
  let x_400 : f32 = x_13.x_NormalScale0;
  let x_402 : vec2<f32> = (vec2<f32>(x_397.x, x_397.y) * vec2<f32>(x_400, x_400));
  let x_403 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_402.x, x_402.y, x_403.z, x_403.w);
  let x_409 : vec4<f32> = vs_TEXCOORD1;
  let x_412 : f32 = x_112.x_GlobalMipBias.x;
  let x_413 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_409.z, x_409.w), x_412);
  let x_414 : vec3<f32> = vec3<f32>(x_413.x, x_413.y, x_413.w);
  let x_415 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
  let x_418 : f32 = u_xlat6.x;
  let x_420 : f32 = u_xlat6.z;
  u_xlat6.x = (x_418 * x_420);
  let x_423 : vec4<f32> = u_xlat6;
  let x_426 : vec2<f32> = ((vec2<f32>(x_423.x, x_423.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_427 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_426.x, x_426.y, x_427.z, x_427.w);
  let x_429 : vec4<f32> = u_xlat6;
  let x_431 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec2<f32>(x_429.x, x_429.y), vec2<f32>(x_431.x, x_431.y));
  let x_434 : f32 = u_xlat79;
  u_xlat79 = min(x_434, 1.0f);
  let x_436 : f32 = u_xlat79;
  u_xlat79 = (-(x_436) + 1.0f);
  let x_439 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_439);
  let x_441 : f32 = u_xlat79;
  u_xlat8.z = max(x_441, 0.0000000000000001f);
  let x_444 : vec4<f32> = u_xlat6;
  let x_448 : f32 = x_13.x_NormalScale1;
  let x_450 : f32 = x_13.x_NormalScale1;
  let x_451 : vec2<f32> = vec2<f32>(x_448, x_450);
  let x_455 : vec2<f32> = (vec2<f32>(x_444.x, x_444.y) * vec2<f32>(x_451.x, x_451.y));
  let x_456 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_455.x, x_455.y, x_456.z, x_456.w);
  let x_458 : vec4<f32> = u_xlat4;
  let x_460 : vec4<f32> = u_xlat8;
  let x_462 : vec3<f32> = (vec3<f32>(x_458.y, x_458.y, x_458.y) * vec3<f32>(x_460.x, x_460.y, x_460.z));
  let x_463 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_462.x, x_462.y, x_462.z, x_463.w);
  let x_465 : vec4<f32> = u_xlat4;
  let x_467 : vec4<f32> = u_xlat7;
  let x_470 : vec4<f32> = u_xlat6;
  let x_472 : vec3<f32> = ((vec3<f32>(x_465.x, x_465.x, x_465.x) * vec3<f32>(x_467.x, x_467.y, x_467.z)) + vec3<f32>(x_470.x, x_470.y, x_470.z));
  let x_473 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
  let x_479 : vec4<f32> = vs_TEXCOORD2;
  let x_482 : f32 = x_112.x_GlobalMipBias.x;
  let x_483 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_479.x, x_479.y), x_482);
  let x_484 : vec3<f32> = vec3<f32>(x_483.x, x_483.y, x_483.w);
  let x_485 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_488 : f32 = u_xlat7.x;
  let x_490 : f32 = u_xlat7.z;
  u_xlat7.x = (x_488 * x_490);
  let x_493 : vec4<f32> = u_xlat7;
  let x_496 : vec2<f32> = ((vec2<f32>(x_493.x, x_493.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_497 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_496.x, x_496.y, x_497.z, x_497.w);
  let x_499 : vec4<f32> = u_xlat7;
  let x_501 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec2<f32>(x_499.x, x_499.y), vec2<f32>(x_501.x, x_501.y));
  let x_504 : f32 = u_xlat79;
  u_xlat79 = min(x_504, 1.0f);
  let x_506 : f32 = u_xlat79;
  u_xlat79 = (-(x_506) + 1.0f);
  let x_509 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_509);
  let x_511 : f32 = u_xlat79;
  u_xlat8.z = max(x_511, 0.0000000000000001f);
  let x_514 : vec4<f32> = u_xlat7;
  let x_518 : f32 = x_13.x_NormalScale2;
  let x_520 : f32 = x_13.x_NormalScale2;
  let x_521 : vec2<f32> = vec2<f32>(x_518, x_520);
  let x_525 : vec2<f32> = (vec2<f32>(x_514.x, x_514.y) * vec2<f32>(x_521.x, x_521.y));
  let x_526 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_525.x, x_525.y, x_526.z, x_526.w);
  let x_528 : vec4<f32> = u_xlat4;
  let x_530 : vec4<f32> = u_xlat8;
  let x_533 : vec4<f32> = u_xlat6;
  let x_535 : vec3<f32> = ((vec3<f32>(x_528.z, x_528.z, x_528.z) * vec3<f32>(x_530.x, x_530.y, x_530.z)) + vec3<f32>(x_533.x, x_533.y, x_533.z));
  let x_536 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_542 : vec4<f32> = vs_TEXCOORD2;
  let x_545 : f32 = x_112.x_GlobalMipBias.x;
  let x_546 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_542.z, x_542.w), x_545);
  let x_547 : vec3<f32> = vec3<f32>(x_546.x, x_546.y, x_546.w);
  let x_548 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  let x_551 : f32 = u_xlat7.x;
  let x_553 : f32 = u_xlat7.z;
  u_xlat7.x = (x_551 * x_553);
  let x_556 : vec4<f32> = u_xlat7;
  let x_559 : vec2<f32> = ((vec2<f32>(x_556.x, x_556.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_560 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_559.x, x_559.y, x_560.z, x_560.w);
  let x_562 : vec4<f32> = u_xlat7;
  let x_564 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec2<f32>(x_562.x, x_562.y), vec2<f32>(x_564.x, x_564.y));
  let x_567 : f32 = u_xlat79;
  u_xlat79 = min(x_567, 1.0f);
  let x_569 : f32 = u_xlat79;
  u_xlat79 = (-(x_569) + 1.0f);
  let x_572 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_572);
  let x_574 : f32 = u_xlat79;
  u_xlat8.z = max(x_574, 0.0000000000000001f);
  let x_577 : vec4<f32> = u_xlat7;
  let x_581 : f32 = x_13.x_NormalScale3;
  let x_583 : f32 = x_13.x_NormalScale3;
  let x_584 : vec2<f32> = vec2<f32>(x_581, x_583);
  let x_588 : vec2<f32> = (vec2<f32>(x_577.x, x_577.y) * vec2<f32>(x_584.x, x_584.y));
  let x_589 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_588.x, x_588.y, x_589.z, x_589.w);
  let x_591 : vec4<f32> = u_xlat4;
  let x_593 : vec4<f32> = u_xlat8;
  let x_596 : vec4<f32> = u_xlat6;
  let x_598 : vec3<f32> = ((vec3<f32>(x_591.w, x_591.w, x_591.w) * vec3<f32>(x_593.x, x_593.y, x_593.z)) + vec3<f32>(x_596.x, x_596.y, x_596.z));
  let x_599 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
  let x_602 : f32 = u_xlat6.z;
  u_xlat6.w = (x_602 + 0.00000999999974737875f);
  let x_606 : vec4<f32> = u_xlat6;
  let x_608 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec3<f32>(x_606.x, x_606.y, x_606.w), vec3<f32>(x_608.x, x_608.y, x_608.w));
  let x_611 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_611);
  let x_613 : f32 = u_xlat79;
  let x_615 : vec4<f32> = u_xlat6;
  let x_617 : vec3<f32> = (vec3<f32>(x_613, x_613, x_613) * vec3<f32>(x_615.x, x_615.y, x_615.w));
  let x_618 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_621 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_621;
  let x_624 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_624;
  let x_627 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_627;
  let x_630 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_630;
  let x_633 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_633;
  let x_636 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_636;
  let x_639 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_639;
  let x_642 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_642;
  let x_644 : vec4<f32> = u_xlat7;
  let x_645 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_644 + x_645);
  let x_648 : f32 = u_xlat0.z;
  u_xlat8.x = x_648;
  let x_651 : f32 = u_xlat1.z;
  u_xlat8.y = x_651;
  let x_654 : f32 = u_xlat2.z;
  u_xlat8.z = x_654;
  let x_657 : f32 = u_xlat3.y;
  u_xlat8.w = x_657;
  let x_659 : vec4<f32> = u_xlat9;
  let x_662 : f32 = x_13.x_Smoothness0;
  let x_664 : f32 = x_13.x_Smoothness1;
  let x_666 : f32 = x_13.x_Smoothness2;
  let x_668 : f32 = x_13.x_Smoothness3;
  let x_671 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_659) * vec4<f32>(x_662, x_664, x_666, x_668)) + x_671);
  let x_675 : f32 = x_13.x_LayerHasMask0;
  let x_678 : f32 = x_13.x_LayerHasMask1;
  let x_681 : f32 = x_13.x_LayerHasMask2;
  let x_684 : f32 = x_13.x_LayerHasMask3;
  let x_686 : vec4<f32> = u_xlat8;
  let x_688 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_675, x_678, x_681, x_684) * x_686) + x_688);
  let x_691 : vec4<f32> = u_xlat4;
  let x_692 : vec4<f32> = u_xlat8;
  u_xlat52 = dot(x_691, x_692);
  let x_695 : f32 = u_xlat0.x;
  u_xlat8.x = x_695;
  let x_698 : f32 = u_xlat1.x;
  u_xlat8.y = x_698;
  let x_701 : f32 = u_xlat2.x;
  u_xlat8.z = x_701;
  let x_704 : f32 = u_xlat3.x;
  u_xlat8.w = x_704;
  let x_706 : vec4<f32> = u_xlat8;
  let x_709 : f32 = x_13.x_Metallic0;
  let x_712 : f32 = x_13.x_Metallic1;
  let x_715 : f32 = x_13.x_Metallic2;
  let x_718 : f32 = x_13.x_Metallic3;
  u_xlat8 = (x_706 + -(vec4<f32>(x_709, x_712, x_715, x_718)));
  let x_723 : f32 = x_13.x_LayerHasMask0;
  let x_725 : f32 = x_13.x_LayerHasMask1;
  let x_727 : f32 = x_13.x_LayerHasMask2;
  let x_729 : f32 = x_13.x_LayerHasMask3;
  let x_731 : vec4<f32> = u_xlat8;
  let x_734 : f32 = x_13.x_Metallic0;
  let x_736 : f32 = x_13.x_Metallic1;
  let x_738 : f32 = x_13.x_Metallic2;
  let x_740 : f32 = x_13.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_723, x_725, x_727, x_729) * x_731) + vec4<f32>(x_734, x_736, x_738, x_740));
  let x_743 : vec4<f32> = u_xlat4;
  let x_744 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_743, x_744);
  let x_748 : f32 = u_xlat0.y;
  u_xlat3.x = x_748;
  let x_751 : f32 = u_xlat1.y;
  u_xlat3.y = x_751;
  let x_754 : f32 = u_xlat2.y;
  u_xlat3.z = x_754;
  let x_756 : vec4<f32> = u_xlat7;
  let x_758 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_756) + x_758);
  let x_761 : f32 = x_13.x_LayerHasMask0;
  let x_763 : f32 = x_13.x_LayerHasMask1;
  let x_765 : f32 = x_13.x_LayerHasMask2;
  let x_767 : f32 = x_13.x_LayerHasMask3;
  let x_769 : vec4<f32> = u_xlat1;
  let x_771 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_761, x_763, x_765, x_767) * x_769) + x_771);
  let x_774 : vec4<f32> = u_xlat4;
  let x_775 : vec4<f32> = u_xlat1;
  u_xlat26 = dot(x_774, x_775);
  let x_777 : vec4<f32> = u_xlat6;
  let x_780 : vec4<f32> = vs_TEXCOORD5;
  let x_782 : vec3<f32> = (vec3<f32>(x_777.y, x_777.y, x_777.y) * vec3<f32>(x_780.x, x_780.y, x_780.z));
  let x_783 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
  let x_785 : vec4<f32> = u_xlat6;
  let x_788 : vec4<f32> = vs_TEXCOORD4;
  let x_792 : vec4<f32> = u_xlat1;
  let x_794 : vec3<f32> = ((vec3<f32>(x_785.x, x_785.x, x_785.x) * -(vec3<f32>(x_788.x, x_788.y, x_788.z))) + vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_795 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_797 : vec4<f32> = u_xlat6;
  let x_800 : vec4<f32> = vs_TEXCOORD3;
  let x_803 : vec4<f32> = u_xlat1;
  let x_805 : vec3<f32> = ((vec3<f32>(x_797.z, x_797.z, x_797.z) * vec3<f32>(x_800.x, x_800.y, x_800.z)) + vec3<f32>(x_803.x, x_803.y, x_803.z));
  let x_806 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_808 : vec4<f32> = u_xlat1;
  let x_810 : vec4<f32> = u_xlat1;
  u_xlat79 = dot(vec3<f32>(x_808.x, x_808.y, x_808.z), vec3<f32>(x_810.x, x_810.y, x_810.z));
  let x_813 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_813);
  let x_815 : f32 = u_xlat79;
  let x_817 : vec4<f32> = u_xlat1;
  let x_819 : vec3<f32> = (vec3<f32>(x_815, x_815, x_815) * vec3<f32>(x_817.x, x_817.y, x_817.z));
  let x_820 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
  let x_824 : vec3<f32> = vs_TEXCOORD7;
  let x_835 : vec4<f32> = x_833.x_CascadeShadowSplitSpheres0;
  let x_838 : vec3<f32> = (x_824 + -(vec3<f32>(x_835.x, x_835.y, x_835.z)));
  let x_839 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_838.x, x_838.y, x_838.z, x_839.w);
  let x_841 : vec3<f32> = vs_TEXCOORD7;
  let x_843 : vec4<f32> = x_833.x_CascadeShadowSplitSpheres1;
  let x_846 : vec3<f32> = (x_841 + -(vec3<f32>(x_843.x, x_843.y, x_843.z)));
  let x_847 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_846.x, x_846.y, x_846.z, x_847.w);
  let x_849 : vec3<f32> = vs_TEXCOORD7;
  let x_851 : vec4<f32> = x_833.x_CascadeShadowSplitSpheres2;
  let x_854 : vec3<f32> = (x_849 + -(vec3<f32>(x_851.x, x_851.y, x_851.z)));
  let x_855 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
  let x_857 : vec3<f32> = vs_TEXCOORD7;
  let x_859 : vec4<f32> = x_833.x_CascadeShadowSplitSpheres3;
  let x_862 : vec3<f32> = (x_857 + -(vec3<f32>(x_859.x, x_859.y, x_859.z)));
  let x_863 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_865 : vec4<f32> = u_xlat2;
  let x_867 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_865.x, x_865.y, x_865.z), vec3<f32>(x_867.x, x_867.y, x_867.z));
  let x_871 : vec4<f32> = u_xlat3;
  let x_873 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_871.x, x_871.y, x_871.z), vec3<f32>(x_873.x, x_873.y, x_873.z));
  let x_877 : vec4<f32> = u_xlat4;
  let x_879 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_877.x, x_877.y, x_877.z), vec3<f32>(x_879.x, x_879.y, x_879.z));
  let x_883 : vec4<f32> = u_xlat6;
  let x_885 : vec4<f32> = u_xlat6;
  u_xlat2.w = dot(vec3<f32>(x_883.x, x_883.y, x_883.z), vec3<f32>(x_885.x, x_885.y, x_885.z));
  let x_891 : vec4<f32> = u_xlat2;
  let x_893 : vec4<f32> = x_833.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_891 < x_893);
  let x_896 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_896);
  let x_900 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_900);
  let x_904 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_904);
  let x_908 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_908);
  let x_912 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_912);
  let x_917 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_917);
  let x_921 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_921);
  let x_924 : vec4<f32> = u_xlat2;
  let x_926 : vec4<f32> = u_xlat3;
  let x_928 : vec3<f32> = (vec3<f32>(x_924.x, x_924.y, x_924.z) + vec3<f32>(x_926.y, x_926.z, x_926.w));
  let x_929 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_928.x, x_928.y, x_928.z, x_929.w);
  let x_931 : vec4<f32> = u_xlat2;
  let x_934 : vec3<f32> = max(vec3<f32>(x_931.x, x_931.y, x_931.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_935 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_935.x, x_934.x, x_934.y, x_934.z);
  let x_937 : vec4<f32> = u_xlat3;
  u_xlat79 = dot(x_937, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_941 : f32 = u_xlat79;
  u_xlat79 = (-(x_941) + 4.0f);
  let x_946 : f32 = u_xlat79;
  u_xlatu79 = u32(x_946);
  let x_950 : u32 = u_xlatu79;
  u_xlati79 = (bitcast<i32>(x_950) << bitcast<u32>(2i));
  let x_953 : vec3<f32> = vs_TEXCOORD7;
  let x_955 : i32 = u_xlati79;
  let x_958 : i32 = u_xlati79;
  let x_962 : vec4<f32> = x_833.x_MainLightWorldToShadow[((x_955 + 1i) / 4i)][((x_958 + 1i) % 4i)];
  let x_964 : vec3<f32> = (vec3<f32>(x_953.y, x_953.y, x_953.y) * vec3<f32>(x_962.x, x_962.y, x_962.z));
  let x_965 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_964.x, x_964.y, x_964.z, x_965.w);
  let x_967 : i32 = u_xlati79;
  let x_969 : i32 = u_xlati79;
  let x_972 : vec4<f32> = x_833.x_MainLightWorldToShadow[(x_967 / 4i)][(x_969 % 4i)];
  let x_974 : vec3<f32> = vs_TEXCOORD7;
  let x_977 : vec4<f32> = u_xlat2;
  let x_979 : vec3<f32> = ((vec3<f32>(x_972.x, x_972.y, x_972.z) * vec3<f32>(x_974.x, x_974.x, x_974.x)) + vec3<f32>(x_977.x, x_977.y, x_977.z));
  let x_980 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_979.x, x_979.y, x_979.z, x_980.w);
  let x_982 : i32 = u_xlati79;
  let x_985 : i32 = u_xlati79;
  let x_989 : vec4<f32> = x_833.x_MainLightWorldToShadow[((x_982 + 2i) / 4i)][((x_985 + 2i) % 4i)];
  let x_991 : vec3<f32> = vs_TEXCOORD7;
  let x_994 : vec4<f32> = u_xlat2;
  let x_996 : vec3<f32> = ((vec3<f32>(x_989.x, x_989.y, x_989.z) * vec3<f32>(x_991.z, x_991.z, x_991.z)) + vec3<f32>(x_994.x, x_994.y, x_994.z));
  let x_997 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_996.x, x_996.y, x_996.z, x_997.w);
  let x_999 : vec4<f32> = u_xlat2;
  let x_1001 : i32 = u_xlati79;
  let x_1004 : i32 = u_xlati79;
  let x_1008 : vec4<f32> = x_833.x_MainLightWorldToShadow[((x_1001 + 3i) / 4i)][((x_1004 + 3i) % 4i)];
  let x_1010 : vec3<f32> = (vec3<f32>(x_999.x, x_999.y, x_999.z) + vec3<f32>(x_1008.x, x_1008.y, x_1008.z));
  let x_1011 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1010.x, x_1010.y, x_1010.z, x_1011.w);
  let x_1018 : vec4<f32> = vs_TEXCOORD0;
  let x_1021 : f32 = x_112.x_GlobalMipBias.x;
  let x_1022 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_1018.z, x_1018.w), x_1021);
  u_xlat3 = x_1022;
  let x_1027 : vec4<f32> = vs_TEXCOORD0;
  let x_1030 : f32 = x_112.x_GlobalMipBias.x;
  let x_1031 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_1027.z, x_1027.w), x_1030);
  let x_1032 : vec3<f32> = vec3<f32>(x_1031.x, x_1031.y, x_1031.z);
  let x_1033 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1033.w);
  let x_1035 : vec4<f32> = u_xlat3;
  let x_1039 : vec3<f32> = (vec3<f32>(x_1035.x, x_1035.y, x_1035.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1040 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1039.x, x_1039.y, x_1039.z, x_1040.w);
  let x_1042 : vec4<f32> = u_xlat1;
  let x_1044 : vec4<f32> = u_xlat3;
  u_xlat79 = dot(vec3<f32>(x_1042.x, x_1042.y, x_1042.z), vec3<f32>(x_1044.x, x_1044.y, x_1044.z));
  let x_1047 : f32 = u_xlat79;
  u_xlat79 = (x_1047 + 0.5f);
  let x_1049 : f32 = u_xlat79;
  let x_1051 : vec4<f32> = u_xlat4;
  let x_1053 : vec3<f32> = (vec3<f32>(x_1049, x_1049, x_1049) * vec3<f32>(x_1051.x, x_1051.y, x_1051.z));
  let x_1054 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1053.x, x_1053.y, x_1053.z, x_1054.w);
  let x_1057 : f32 = u_xlat3.w;
  u_xlat79 = max(x_1057, 0.00009999999747378752f);
  let x_1060 : vec4<f32> = u_xlat3;
  let x_1062 : f32 = u_xlat79;
  let x_1064 : vec3<f32> = (vec3<f32>(x_1060.x, x_1060.y, x_1060.z) / vec3<f32>(x_1062, x_1062, x_1062));
  let x_1065 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1064.x, x_1064.y, x_1064.z, x_1065.w);
  let x_1068 : f32 = u_xlat0.x;
  u_xlat79 = ((-(x_1068) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_1074 : f32 = u_xlat52;
  let x_1075 : f32 = u_xlat79;
  u_xlat80 = (x_1074 + -(x_1075));
  let x_1078 : f32 = u_xlat79;
  let x_1080 : vec4<f32> = u_xlat5;
  let x_1082 : vec3<f32> = (vec3<f32>(x_1078, x_1078, x_1078) * vec3<f32>(x_1080.x, x_1080.y, x_1080.z));
  let x_1083 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1082.x, x_1082.y, x_1082.z, x_1083.w);
  let x_1085 : vec4<f32> = u_xlat5;
  let x_1089 : vec3<f32> = (vec3<f32>(x_1085.x, x_1085.y, x_1085.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_1090 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1089.x, x_1089.y, x_1089.z, x_1090.w);
  let x_1092 : vec3<f32> = u_xlat0;
  let x_1094 : vec4<f32> = u_xlat5;
  let x_1099 : vec3<f32> = ((vec3<f32>(x_1092.x, x_1092.x, x_1092.x) * vec3<f32>(x_1094.x, x_1094.y, x_1094.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_1100 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1099.x, x_1099.y, x_1099.z, x_1100.w);
  let x_1102 : f32 = u_xlat52;
  u_xlat0.x = (-(x_1102) + 1.0f);
  let x_1107 : f32 = u_xlat0.x;
  let x_1109 : f32 = u_xlat0.x;
  u_xlat52 = (x_1107 * x_1109);
  let x_1111 : f32 = u_xlat52;
  u_xlat52 = max(x_1111, 0.0078125f);
  let x_1114 : f32 = u_xlat52;
  let x_1115 : f32 = u_xlat52;
  u_xlat79 = (x_1114 * x_1115);
  let x_1117 : f32 = u_xlat80;
  u_xlat80 = (x_1117 + 1.0f);
  let x_1119 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1119, 0.0f, 1.0f);
  let x_1122 : f32 = u_xlat52;
  u_xlat81 = ((x_1122 * 4.0f) + 2.0f);
  let x_1125 : f32 = u_xlat26;
  u_xlat26 = min(x_1125, 1.0f);
  let x_1129 : f32 = x_833.x_MainLightShadowParams.y;
  u_xlatb82 = (0.0f < x_1129);
  let x_1131 : bool = u_xlatb82;
  if (x_1131) {
    let x_1135 : f32 = x_833.x_MainLightShadowParams.y;
    u_xlatb82 = (x_1135 == 1.0f);
    let x_1137 : bool = u_xlatb82;
    if (x_1137) {
      let x_1140 : vec4<f32> = u_xlat2;
      let x_1143 : vec4<f32> = x_833.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_1140.x, x_1140.y, x_1140.x, x_1140.y) + x_1143);
      let x_1147 : vec4<f32> = u_xlat6;
      let x_1148 : vec2<f32> = vec2<f32>(x_1147.x, x_1147.y);
      let x_1150 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_1148.x, x_1148.y, x_1150);
      let x_1162 : vec3<f32> = txVec0;
      let x_1164 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1162.xy, x_1162.z);
      u_xlat7.x = x_1164;
      let x_1167 : vec4<f32> = u_xlat6;
      let x_1168 : vec2<f32> = vec2<f32>(x_1167.z, x_1167.w);
      let x_1170 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_1168.x, x_1168.y, x_1170);
      let x_1177 : vec3<f32> = txVec1;
      let x_1179 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1177.xy, x_1177.z);
      u_xlat7.y = x_1179;
      let x_1181 : vec4<f32> = u_xlat2;
      let x_1184 : vec4<f32> = x_833.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1181.x, x_1181.y, x_1181.x, x_1181.y) + x_1184);
      let x_1187 : vec4<f32> = u_xlat6;
      let x_1188 : vec2<f32> = vec2<f32>(x_1187.x, x_1187.y);
      let x_1190 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_1188.x, x_1188.y, x_1190);
      let x_1197 : vec3<f32> = txVec2;
      let x_1199 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1197.xy, x_1197.z);
      u_xlat7.z = x_1199;
      let x_1202 : vec4<f32> = u_xlat6;
      let x_1203 : vec2<f32> = vec2<f32>(x_1202.z, x_1202.w);
      let x_1205 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_1203.x, x_1203.y, x_1205);
      let x_1212 : vec3<f32> = txVec3;
      let x_1214 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1212.xy, x_1212.z);
      u_xlat7.w = x_1214;
      let x_1217 : vec4<f32> = u_xlat7;
      u_xlat82 = dot(x_1217, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1224 : f32 = x_833.x_MainLightShadowParams.y;
      u_xlatb83 = (x_1224 == 2.0f);
      let x_1226 : bool = u_xlatb83;
      if (x_1226) {
        let x_1229 : vec4<f32> = u_xlat2;
        let x_1232 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1235 : vec2<f32> = ((vec2<f32>(x_1229.x, x_1229.y) * vec2<f32>(x_1232.z, x_1232.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1236 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1235.x, x_1235.y, x_1236.z, x_1236.w);
        let x_1238 : vec4<f32> = u_xlat6;
        let x_1240 : vec2<f32> = floor(vec2<f32>(x_1238.x, x_1238.y));
        let x_1241 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1240.x, x_1240.y, x_1241.z, x_1241.w);
        let x_1245 : vec4<f32> = u_xlat2;
        let x_1248 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1251 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1245.x, x_1245.y) * vec2<f32>(x_1248.z, x_1248.w)) + -(vec2<f32>(x_1251.x, x_1251.y)));
        let x_1255 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1255.x, x_1255.x, x_1255.y, x_1255.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1259 : vec4<f32> = u_xlat7;
        let x_1261 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1259.x, x_1259.x, x_1259.z, x_1259.z) * vec4<f32>(x_1261.x, x_1261.x, x_1261.z, x_1261.z));
        let x_1264 : vec4<f32> = u_xlat8;
        let x_1268 : vec2<f32> = (vec2<f32>(x_1264.y, x_1264.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1269 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1268.x, x_1269.y, x_1268.y, x_1269.w);
        let x_1271 : vec4<f32> = u_xlat8;
        let x_1274 : vec2<f32> = u_xlat58;
        let x_1276 : vec2<f32> = ((vec2<f32>(x_1271.x, x_1271.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1274));
        let x_1277 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1276.x, x_1276.y, x_1277.z, x_1277.w);
        let x_1280 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_1280) + vec2<f32>(1.0f, 1.0f));
        let x_1284 : vec2<f32> = u_xlat58;
        let x_1286 : vec2<f32> = min(x_1284, vec2<f32>(0.0f, 0.0f));
        let x_1287 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1286.x, x_1286.y, x_1287.z, x_1287.w);
        let x_1289 : vec4<f32> = u_xlat9;
        let x_1292 : vec4<f32> = u_xlat9;
        let x_1295 : vec2<f32> = u_xlat60;
        let x_1296 : vec2<f32> = ((-(vec2<f32>(x_1289.x, x_1289.y)) * vec2<f32>(x_1292.x, x_1292.y)) + x_1295);
        let x_1297 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1296.x, x_1296.y, x_1297.z, x_1297.w);
        let x_1299 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_1299, vec2<f32>(0.0f, 0.0f));
        let x_1301 : vec2<f32> = u_xlat58;
        let x_1303 : vec2<f32> = u_xlat58;
        let x_1305 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_1301) * x_1303) + vec2<f32>(x_1305.y, x_1305.w));
        let x_1308 : vec4<f32> = u_xlat9;
        let x_1310 : vec2<f32> = (vec2<f32>(x_1308.x, x_1308.y) + vec2<f32>(1.0f, 1.0f));
        let x_1311 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1310.x, x_1310.y, x_1311.z, x_1311.w);
        let x_1313 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_1313 + vec2<f32>(1.0f, 1.0f));
        let x_1315 : vec4<f32> = u_xlat8;
        let x_1319 : vec2<f32> = (vec2<f32>(x_1315.x, x_1315.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1320 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1319.x, x_1319.y, x_1320.z, x_1320.w);
        let x_1322 : vec2<f32> = u_xlat60;
        let x_1323 : vec2<f32> = (x_1322 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1324 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1323.x, x_1323.y, x_1324.z, x_1324.w);
        let x_1326 : vec4<f32> = u_xlat9;
        let x_1328 : vec2<f32> = (vec2<f32>(x_1326.x, x_1326.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1329 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1328.x, x_1328.y, x_1329.z, x_1329.w);
        let x_1331 : vec2<f32> = u_xlat58;
        let x_1332 : vec2<f32> = (x_1331 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1333 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1332.x, x_1332.y, x_1333.z, x_1333.w);
        let x_1335 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_1335.y, x_1335.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1339 : f32 = u_xlat9.x;
        u_xlat10.z = x_1339;
        let x_1342 : f32 = u_xlat58.x;
        u_xlat10.w = x_1342;
        let x_1345 : f32 = u_xlat11.x;
        u_xlat8.z = x_1345;
        let x_1348 : f32 = u_xlat7.x;
        u_xlat8.w = x_1348;
        let x_1350 : vec4<f32> = u_xlat8;
        let x_1352 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1350.z, x_1350.w, x_1350.x, x_1350.z) + vec4<f32>(x_1352.z, x_1352.w, x_1352.x, x_1352.z));
        let x_1356 : f32 = u_xlat10.y;
        u_xlat9.z = x_1356;
        let x_1359 : f32 = u_xlat58.y;
        u_xlat9.w = x_1359;
        let x_1362 : f32 = u_xlat8.y;
        u_xlat11.z = x_1362;
        let x_1365 : f32 = u_xlat7.z;
        u_xlat11.w = x_1365;
        let x_1367 : vec4<f32> = u_xlat9;
        let x_1369 : vec4<f32> = u_xlat11;
        let x_1371 : vec3<f32> = (vec3<f32>(x_1367.z, x_1367.y, x_1367.w) + vec3<f32>(x_1369.z, x_1369.y, x_1369.w));
        let x_1372 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1371.x, x_1371.y, x_1371.z, x_1372.w);
        let x_1374 : vec4<f32> = u_xlat8;
        let x_1376 : vec4<f32> = u_xlat12;
        let x_1378 : vec3<f32> = (vec3<f32>(x_1374.x, x_1374.z, x_1374.w) / vec3<f32>(x_1376.z, x_1376.w, x_1376.y));
        let x_1379 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1378.x, x_1378.y, x_1378.z, x_1379.w);
        let x_1381 : vec4<f32> = u_xlat8;
        let x_1386 : vec3<f32> = (vec3<f32>(x_1381.x, x_1381.y, x_1381.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1387 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1386.x, x_1386.y, x_1386.z, x_1387.w);
        let x_1389 : vec4<f32> = u_xlat11;
        let x_1391 : vec4<f32> = u_xlat7;
        let x_1393 : vec3<f32> = (vec3<f32>(x_1389.z, x_1389.y, x_1389.w) / vec3<f32>(x_1391.x, x_1391.y, x_1391.z));
        let x_1394 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1393.x, x_1393.y, x_1393.z, x_1394.w);
        let x_1396 : vec4<f32> = u_xlat9;
        let x_1398 : vec3<f32> = (vec3<f32>(x_1396.x, x_1396.y, x_1396.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1399 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1398.x, x_1398.y, x_1398.z, x_1399.w);
        let x_1401 : vec4<f32> = u_xlat8;
        let x_1404 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1406 : vec3<f32> = (vec3<f32>(x_1401.y, x_1401.x, x_1401.z) * vec3<f32>(x_1404.x, x_1404.x, x_1404.x));
        let x_1407 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1406.x, x_1406.y, x_1406.z, x_1407.w);
        let x_1409 : vec4<f32> = u_xlat9;
        let x_1412 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1414 : vec3<f32> = (vec3<f32>(x_1409.x, x_1409.y, x_1409.z) * vec3<f32>(x_1412.y, x_1412.y, x_1412.y));
        let x_1415 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1414.x, x_1414.y, x_1414.z, x_1415.w);
        let x_1418 : f32 = u_xlat9.x;
        u_xlat8.w = x_1418;
        let x_1420 : vec4<f32> = u_xlat6;
        let x_1423 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1426 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1420.x, x_1420.y, x_1420.x, x_1420.y) * vec4<f32>(x_1423.x, x_1423.y, x_1423.x, x_1423.y)) + vec4<f32>(x_1426.y, x_1426.w, x_1426.x, x_1426.w));
        let x_1429 : vec4<f32> = u_xlat6;
        let x_1432 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1435 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_1429.x, x_1429.y) * vec2<f32>(x_1432.x, x_1432.y)) + vec2<f32>(x_1435.z, x_1435.w));
        let x_1439 : f32 = u_xlat8.y;
        u_xlat9.w = x_1439;
        let x_1441 : vec4<f32> = u_xlat9;
        let x_1442 : vec2<f32> = vec2<f32>(x_1441.y, x_1441.z);
        let x_1443 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1443.x, x_1442.x, x_1443.z, x_1442.y);
        let x_1445 : vec4<f32> = u_xlat6;
        let x_1448 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1451 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1445.x, x_1445.y, x_1445.x, x_1445.y) * vec4<f32>(x_1448.x, x_1448.y, x_1448.x, x_1448.y)) + vec4<f32>(x_1451.x, x_1451.y, x_1451.z, x_1451.y));
        let x_1454 : vec4<f32> = u_xlat6;
        let x_1457 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1460 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1454.x, x_1454.y, x_1454.x, x_1454.y) * vec4<f32>(x_1457.x, x_1457.y, x_1457.x, x_1457.y)) + vec4<f32>(x_1460.w, x_1460.y, x_1460.w, x_1460.z));
        let x_1463 : vec4<f32> = u_xlat6;
        let x_1466 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1469 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1463.x, x_1463.y, x_1463.x, x_1463.y) * vec4<f32>(x_1466.x, x_1466.y, x_1466.x, x_1466.y)) + vec4<f32>(x_1469.x, x_1469.w, x_1469.z, x_1469.w));
        let x_1472 : vec4<f32> = u_xlat7;
        let x_1474 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1472.x, x_1472.x, x_1472.x, x_1472.y) * vec4<f32>(x_1474.z, x_1474.w, x_1474.y, x_1474.z));
        let x_1478 : vec4<f32> = u_xlat7;
        let x_1480 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1478.y, x_1478.y, x_1478.z, x_1478.z) * x_1480);
        let x_1484 : f32 = u_xlat7.z;
        let x_1486 : f32 = u_xlat12.y;
        u_xlat83 = (x_1484 * x_1486);
        let x_1489 : vec4<f32> = u_xlat10;
        let x_1490 : vec2<f32> = vec2<f32>(x_1489.x, x_1489.y);
        let x_1492 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_1490.x, x_1490.y, x_1492);
        let x_1499 : vec3<f32> = txVec4;
        let x_1501 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1499.xy, x_1499.z);
        u_xlat6.x = x_1501;
        let x_1504 : vec4<f32> = u_xlat10;
        let x_1505 : vec2<f32> = vec2<f32>(x_1504.z, x_1504.w);
        let x_1507 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_1505.x, x_1505.y, x_1507);
        let x_1515 : vec3<f32> = txVec5;
        let x_1517 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1515.xy, x_1515.z);
        u_xlat32 = x_1517;
        let x_1518 : f32 = u_xlat32;
        let x_1520 : f32 = u_xlat13.y;
        u_xlat32 = (x_1518 * x_1520);
        let x_1523 : f32 = u_xlat13.x;
        let x_1525 : f32 = u_xlat6.x;
        let x_1527 : f32 = u_xlat32;
        u_xlat6.x = ((x_1523 * x_1525) + x_1527);
        let x_1531 : vec2<f32> = u_xlat58;
        let x_1533 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_1531.x, x_1531.y, x_1533);
        let x_1540 : vec3<f32> = txVec6;
        let x_1542 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1540.xy, x_1540.z);
        u_xlat32 = x_1542;
        let x_1544 : f32 = u_xlat13.z;
        let x_1545 : f32 = u_xlat32;
        let x_1548 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1544 * x_1545) + x_1548);
        let x_1552 : vec4<f32> = u_xlat9;
        let x_1553 : vec2<f32> = vec2<f32>(x_1552.x, x_1552.y);
        let x_1555 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_1553.x, x_1553.y, x_1555);
        let x_1562 : vec3<f32> = txVec7;
        let x_1564 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1562.xy, x_1562.z);
        u_xlat32 = x_1564;
        let x_1566 : f32 = u_xlat13.w;
        let x_1567 : f32 = u_xlat32;
        let x_1570 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1566 * x_1567) + x_1570);
        let x_1574 : vec4<f32> = u_xlat11;
        let x_1575 : vec2<f32> = vec2<f32>(x_1574.x, x_1574.y);
        let x_1577 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_1575.x, x_1575.y, x_1577);
        let x_1584 : vec3<f32> = txVec8;
        let x_1586 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1584.xy, x_1584.z);
        u_xlat32 = x_1586;
        let x_1588 : f32 = u_xlat14.x;
        let x_1589 : f32 = u_xlat32;
        let x_1592 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1588 * x_1589) + x_1592);
        let x_1596 : vec4<f32> = u_xlat11;
        let x_1597 : vec2<f32> = vec2<f32>(x_1596.z, x_1596.w);
        let x_1599 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_1597.x, x_1597.y, x_1599);
        let x_1606 : vec3<f32> = txVec9;
        let x_1608 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1606.xy, x_1606.z);
        u_xlat32 = x_1608;
        let x_1610 : f32 = u_xlat14.y;
        let x_1611 : f32 = u_xlat32;
        let x_1614 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1610 * x_1611) + x_1614);
        let x_1618 : vec4<f32> = u_xlat9;
        let x_1619 : vec2<f32> = vec2<f32>(x_1618.z, x_1618.w);
        let x_1621 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_1619.x, x_1619.y, x_1621);
        let x_1628 : vec3<f32> = txVec10;
        let x_1630 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1628.xy, x_1628.z);
        u_xlat32 = x_1630;
        let x_1632 : f32 = u_xlat14.z;
        let x_1633 : f32 = u_xlat32;
        let x_1636 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1632 * x_1633) + x_1636);
        let x_1640 : vec4<f32> = u_xlat8;
        let x_1641 : vec2<f32> = vec2<f32>(x_1640.x, x_1640.y);
        let x_1643 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_1641.x, x_1641.y, x_1643);
        let x_1650 : vec3<f32> = txVec11;
        let x_1652 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1650.xy, x_1650.z);
        u_xlat32 = x_1652;
        let x_1654 : f32 = u_xlat14.w;
        let x_1655 : f32 = u_xlat32;
        let x_1658 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1654 * x_1655) + x_1658);
        let x_1662 : vec4<f32> = u_xlat8;
        let x_1663 : vec2<f32> = vec2<f32>(x_1662.z, x_1662.w);
        let x_1665 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_1663.x, x_1663.y, x_1665);
        let x_1672 : vec3<f32> = txVec12;
        let x_1674 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1672.xy, x_1672.z);
        u_xlat32 = x_1674;
        let x_1675 : f32 = u_xlat83;
        let x_1676 : f32 = u_xlat32;
        let x_1679 : f32 = u_xlat6.x;
        u_xlat82 = ((x_1675 * x_1676) + x_1679);
      } else {
        let x_1682 : vec4<f32> = u_xlat2;
        let x_1685 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1688 : vec2<f32> = ((vec2<f32>(x_1682.x, x_1682.y) * vec2<f32>(x_1685.z, x_1685.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1689 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1688.x, x_1688.y, x_1689.z, x_1689.w);
        let x_1691 : vec4<f32> = u_xlat6;
        let x_1693 : vec2<f32> = floor(vec2<f32>(x_1691.x, x_1691.y));
        let x_1694 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1693.x, x_1693.y, x_1694.z, x_1694.w);
        let x_1696 : vec4<f32> = u_xlat2;
        let x_1699 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1702 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1696.x, x_1696.y) * vec2<f32>(x_1699.z, x_1699.w)) + -(vec2<f32>(x_1702.x, x_1702.y)));
        let x_1706 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1706.x, x_1706.x, x_1706.y, x_1706.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1709 : vec4<f32> = u_xlat7;
        let x_1711 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1709.x, x_1709.x, x_1709.z, x_1709.z) * vec4<f32>(x_1711.x, x_1711.x, x_1711.z, x_1711.z));
        let x_1714 : vec4<f32> = u_xlat8;
        let x_1718 : vec2<f32> = (vec2<f32>(x_1714.y, x_1714.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1719 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1719.x, x_1718.x, x_1719.z, x_1718.y);
        let x_1721 : vec4<f32> = u_xlat8;
        let x_1724 : vec2<f32> = u_xlat58;
        let x_1726 : vec2<f32> = ((vec2<f32>(x_1721.x, x_1721.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1724));
        let x_1727 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1726.x, x_1727.y, x_1726.y, x_1727.w);
        let x_1729 : vec2<f32> = u_xlat58;
        let x_1731 : vec2<f32> = (-(x_1729) + vec2<f32>(1.0f, 1.0f));
        let x_1732 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1731.x, x_1731.y, x_1732.z, x_1732.w);
        let x_1734 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1734, vec2<f32>(0.0f, 0.0f));
        let x_1736 : vec2<f32> = u_xlat60;
        let x_1738 : vec2<f32> = u_xlat60;
        let x_1740 : vec4<f32> = u_xlat8;
        let x_1742 : vec2<f32> = ((-(x_1736) * x_1738) + vec2<f32>(x_1740.x, x_1740.y));
        let x_1743 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1742.x, x_1742.y, x_1743.z, x_1743.w);
        let x_1745 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1745, vec2<f32>(0.0f, 0.0f));
        let x_1748 : vec2<f32> = u_xlat60;
        let x_1750 : vec2<f32> = u_xlat60;
        let x_1752 : vec4<f32> = u_xlat7;
        let x_1754 : vec2<f32> = ((-(x_1748) * x_1750) + vec2<f32>(x_1752.y, x_1752.w));
        let x_1755 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1754.x, x_1755.y, x_1754.y);
        let x_1757 : vec4<f32> = u_xlat8;
        let x_1759 : vec2<f32> = (vec2<f32>(x_1757.x, x_1757.y) + vec2<f32>(2.0f, 2.0f));
        let x_1760 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1759.x, x_1759.y, x_1760.z, x_1760.w);
        let x_1762 : vec3<f32> = u_xlat33;
        let x_1764 : vec2<f32> = (vec2<f32>(x_1762.x, x_1762.z) + vec2<f32>(2.0f, 2.0f));
        let x_1765 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1765.x, x_1764.x, x_1765.z, x_1764.y);
        let x_1768 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1768 * 0.08163200318813323975f);
        let x_1772 : vec4<f32> = u_xlat7;
        let x_1775 : vec3<f32> = (vec3<f32>(x_1772.z, x_1772.x, x_1772.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1776 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1775.x, x_1775.y, x_1775.z, x_1776.w);
        let x_1778 : vec4<f32> = u_xlat8;
        let x_1781 : vec2<f32> = (vec2<f32>(x_1778.x, x_1778.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1782 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1781.x, x_1781.y, x_1782.z, x_1782.w);
        let x_1785 : f32 = u_xlat11.y;
        u_xlat10.x = x_1785;
        let x_1787 : vec2<f32> = u_xlat58;
        let x_1794 : vec2<f32> = ((vec2<f32>(x_1787.x, x_1787.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1795 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1795.x, x_1794.x, x_1795.z, x_1794.y);
        let x_1797 : vec2<f32> = u_xlat58;
        let x_1801 : vec2<f32> = ((vec2<f32>(x_1797.x, x_1797.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1802 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1801.x, x_1802.y, x_1801.y, x_1802.w);
        let x_1805 : f32 = u_xlat7.x;
        u_xlat8.y = x_1805;
        let x_1808 : f32 = u_xlat9.y;
        u_xlat8.w = x_1808;
        let x_1810 : vec4<f32> = u_xlat8;
        let x_1811 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1810 + x_1811);
        let x_1813 : vec2<f32> = u_xlat58;
        let x_1816 : vec2<f32> = ((vec2<f32>(x_1813.y, x_1813.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1817 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1817.x, x_1816.x, x_1817.z, x_1816.y);
        let x_1819 : vec2<f32> = u_xlat58;
        let x_1822 : vec2<f32> = ((vec2<f32>(x_1819.y, x_1819.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1823 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1822.x, x_1823.y, x_1822.y, x_1823.w);
        let x_1826 : f32 = u_xlat7.y;
        u_xlat9.y = x_1826;
        let x_1828 : vec4<f32> = u_xlat9;
        let x_1829 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1828 + x_1829);
        let x_1831 : vec4<f32> = u_xlat8;
        let x_1832 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1831 / x_1832);
        let x_1834 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1834 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1840 : vec4<f32> = u_xlat9;
        let x_1841 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1840 / x_1841);
        let x_1843 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1843 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1845 : vec4<f32> = u_xlat8;
        let x_1848 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1845.w, x_1845.x, x_1845.y, x_1845.z) * vec4<f32>(x_1848.x, x_1848.x, x_1848.x, x_1848.x));
        let x_1851 : vec4<f32> = u_xlat9;
        let x_1854 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1851.x, x_1851.w, x_1851.y, x_1851.z) * vec4<f32>(x_1854.y, x_1854.y, x_1854.y, x_1854.y));
        let x_1857 : vec4<f32> = u_xlat8;
        let x_1858 : vec3<f32> = vec3<f32>(x_1857.y, x_1857.z, x_1857.w);
        let x_1859 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1858.x, x_1859.y, x_1858.y, x_1858.z);
        let x_1862 : f32 = u_xlat9.x;
        u_xlat11.y = x_1862;
        let x_1864 : vec4<f32> = u_xlat6;
        let x_1867 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1870 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1864.x, x_1864.y, x_1864.x, x_1864.y) * vec4<f32>(x_1867.x, x_1867.y, x_1867.x, x_1867.y)) + vec4<f32>(x_1870.x, x_1870.y, x_1870.z, x_1870.y));
        let x_1873 : vec4<f32> = u_xlat6;
        let x_1876 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1879 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1873.x, x_1873.y) * vec2<f32>(x_1876.x, x_1876.y)) + vec2<f32>(x_1879.w, x_1879.y));
        let x_1883 : f32 = u_xlat11.y;
        u_xlat8.y = x_1883;
        let x_1886 : f32 = u_xlat9.z;
        u_xlat11.y = x_1886;
        let x_1888 : vec4<f32> = u_xlat6;
        let x_1891 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1894 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1888.x, x_1888.y, x_1888.x, x_1888.y) * vec4<f32>(x_1891.x, x_1891.y, x_1891.x, x_1891.y)) + vec4<f32>(x_1894.x, x_1894.y, x_1894.z, x_1894.y));
        let x_1897 : vec4<f32> = u_xlat6;
        let x_1900 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1903 : vec4<f32> = u_xlat11;
        let x_1905 : vec2<f32> = ((vec2<f32>(x_1897.x, x_1897.y) * vec2<f32>(x_1900.x, x_1900.y)) + vec2<f32>(x_1903.w, x_1903.y));
        let x_1906 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1905.x, x_1905.y, x_1906.z, x_1906.w);
        let x_1909 : f32 = u_xlat11.y;
        u_xlat8.z = x_1909;
        let x_1912 : vec4<f32> = u_xlat6;
        let x_1915 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1918 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1912.x, x_1912.y, x_1912.x, x_1912.y) * vec4<f32>(x_1915.x, x_1915.y, x_1915.x, x_1915.y)) + vec4<f32>(x_1918.x, x_1918.y, x_1918.x, x_1918.z));
        let x_1922 : f32 = u_xlat9.w;
        u_xlat11.y = x_1922;
        let x_1925 : vec4<f32> = u_xlat6;
        let x_1928 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1931 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1925.x, x_1925.y, x_1925.x, x_1925.y) * vec4<f32>(x_1928.x, x_1928.y, x_1928.x, x_1928.y)) + vec4<f32>(x_1931.x, x_1931.y, x_1931.z, x_1931.y));
        let x_1935 : vec4<f32> = u_xlat6;
        let x_1938 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1941 : vec4<f32> = u_xlat11;
        u_xlat34 = ((vec2<f32>(x_1935.x, x_1935.y) * vec2<f32>(x_1938.x, x_1938.y)) + vec2<f32>(x_1941.w, x_1941.y));
        let x_1945 : f32 = u_xlat11.y;
        u_xlat8.w = x_1945;
        let x_1948 : vec4<f32> = u_xlat6;
        let x_1951 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1954 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1948.x, x_1948.y) * vec2<f32>(x_1951.x, x_1951.y)) + vec2<f32>(x_1954.x, x_1954.w));
        let x_1957 : vec4<f32> = u_xlat11;
        let x_1958 : vec3<f32> = vec3<f32>(x_1957.x, x_1957.z, x_1957.w);
        let x_1959 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1958.x, x_1959.y, x_1958.y, x_1958.z);
        let x_1961 : vec4<f32> = u_xlat6;
        let x_1964 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1967 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1961.x, x_1961.y, x_1961.x, x_1961.y) * vec4<f32>(x_1964.x, x_1964.y, x_1964.x, x_1964.y)) + vec4<f32>(x_1967.x, x_1967.y, x_1967.z, x_1967.y));
        let x_1971 : vec4<f32> = u_xlat6;
        let x_1974 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1977 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1971.x, x_1971.y) * vec2<f32>(x_1974.x, x_1974.y)) + vec2<f32>(x_1977.w, x_1977.y));
        let x_1981 : f32 = u_xlat8.x;
        u_xlat9.x = x_1981;
        let x_1983 : vec4<f32> = u_xlat6;
        let x_1986 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1989 : vec4<f32> = u_xlat9;
        let x_1991 : vec2<f32> = ((vec2<f32>(x_1983.x, x_1983.y) * vec2<f32>(x_1986.x, x_1986.y)) + vec2<f32>(x_1989.x, x_1989.y));
        let x_1992 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1991.x, x_1991.y, x_1992.z, x_1992.w);
        let x_1995 : vec4<f32> = u_xlat7;
        let x_1997 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1995.x, x_1995.x, x_1995.x, x_1995.x) * x_1997);
        let x_2000 : vec4<f32> = u_xlat7;
        let x_2002 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_2000.y, x_2000.y, x_2000.y, x_2000.y) * x_2002);
        let x_2005 : vec4<f32> = u_xlat7;
        let x_2007 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_2005.z, x_2005.z, x_2005.z, x_2005.z) * x_2007);
        let x_2009 : vec4<f32> = u_xlat7;
        let x_2011 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_2009.w, x_2009.w, x_2009.w, x_2009.w) * x_2011);
        let x_2014 : vec4<f32> = u_xlat12;
        let x_2015 : vec2<f32> = vec2<f32>(x_2014.x, x_2014.y);
        let x_2017 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_2015.x, x_2015.y, x_2017);
        let x_2024 : vec3<f32> = txVec13;
        let x_2026 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2024.xy, x_2024.z);
        u_xlat83 = x_2026;
        let x_2028 : vec4<f32> = u_xlat12;
        let x_2029 : vec2<f32> = vec2<f32>(x_2028.z, x_2028.w);
        let x_2031 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_2029.x, x_2029.y, x_2031);
        let x_2038 : vec3<f32> = txVec14;
        let x_2040 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2038.xy, x_2038.z);
        u_xlat8.x = x_2040;
        let x_2043 : f32 = u_xlat8.x;
        let x_2045 : f32 = u_xlat17.y;
        u_xlat8.x = (x_2043 * x_2045);
        let x_2049 : f32 = u_xlat17.x;
        let x_2050 : f32 = u_xlat83;
        let x_2053 : f32 = u_xlat8.x;
        u_xlat83 = ((x_2049 * x_2050) + x_2053);
        let x_2056 : vec2<f32> = u_xlat58;
        let x_2058 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_2056.x, x_2056.y, x_2058);
        let x_2065 : vec3<f32> = txVec15;
        let x_2067 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2065.xy, x_2065.z);
        u_xlat58.x = x_2067;
        let x_2070 : f32 = u_xlat17.z;
        let x_2072 : f32 = u_xlat58.x;
        let x_2074 : f32 = u_xlat83;
        u_xlat83 = ((x_2070 * x_2072) + x_2074);
        let x_2077 : vec4<f32> = u_xlat15;
        let x_2078 : vec2<f32> = vec2<f32>(x_2077.x, x_2077.y);
        let x_2080 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_2078.x, x_2078.y, x_2080);
        let x_2087 : vec3<f32> = txVec16;
        let x_2089 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2087.xy, x_2087.z);
        u_xlat58.x = x_2089;
        let x_2092 : f32 = u_xlat17.w;
        let x_2094 : f32 = u_xlat58.x;
        let x_2096 : f32 = u_xlat83;
        u_xlat83 = ((x_2092 * x_2094) + x_2096);
        let x_2099 : vec4<f32> = u_xlat13;
        let x_2100 : vec2<f32> = vec2<f32>(x_2099.x, x_2099.y);
        let x_2102 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_2100.x, x_2100.y, x_2102);
        let x_2109 : vec3<f32> = txVec17;
        let x_2111 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2109.xy, x_2109.z);
        u_xlat58.x = x_2111;
        let x_2114 : f32 = u_xlat18.x;
        let x_2116 : f32 = u_xlat58.x;
        let x_2118 : f32 = u_xlat83;
        u_xlat83 = ((x_2114 * x_2116) + x_2118);
        let x_2121 : vec4<f32> = u_xlat13;
        let x_2122 : vec2<f32> = vec2<f32>(x_2121.z, x_2121.w);
        let x_2124 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_2122.x, x_2122.y, x_2124);
        let x_2131 : vec3<f32> = txVec18;
        let x_2133 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2131.xy, x_2131.z);
        u_xlat58.x = x_2133;
        let x_2136 : f32 = u_xlat18.y;
        let x_2138 : f32 = u_xlat58.x;
        let x_2140 : f32 = u_xlat83;
        u_xlat83 = ((x_2136 * x_2138) + x_2140);
        let x_2143 : vec4<f32> = u_xlat14;
        let x_2144 : vec2<f32> = vec2<f32>(x_2143.x, x_2143.y);
        let x_2146 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_2144.x, x_2144.y, x_2146);
        let x_2153 : vec3<f32> = txVec19;
        let x_2155 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2153.xy, x_2153.z);
        u_xlat58.x = x_2155;
        let x_2158 : f32 = u_xlat18.z;
        let x_2160 : f32 = u_xlat58.x;
        let x_2162 : f32 = u_xlat83;
        u_xlat83 = ((x_2158 * x_2160) + x_2162);
        let x_2165 : vec4<f32> = u_xlat15;
        let x_2166 : vec2<f32> = vec2<f32>(x_2165.z, x_2165.w);
        let x_2168 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_2166.x, x_2166.y, x_2168);
        let x_2175 : vec3<f32> = txVec20;
        let x_2177 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2175.xy, x_2175.z);
        u_xlat58.x = x_2177;
        let x_2180 : f32 = u_xlat18.w;
        let x_2182 : f32 = u_xlat58.x;
        let x_2184 : f32 = u_xlat83;
        u_xlat83 = ((x_2180 * x_2182) + x_2184);
        let x_2187 : vec4<f32> = u_xlat16;
        let x_2188 : vec2<f32> = vec2<f32>(x_2187.x, x_2187.y);
        let x_2190 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_2188.x, x_2188.y, x_2190);
        let x_2197 : vec3<f32> = txVec21;
        let x_2199 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2197.xy, x_2197.z);
        u_xlat58.x = x_2199;
        let x_2202 : f32 = u_xlat19.x;
        let x_2204 : f32 = u_xlat58.x;
        let x_2206 : f32 = u_xlat83;
        u_xlat83 = ((x_2202 * x_2204) + x_2206);
        let x_2209 : vec4<f32> = u_xlat16;
        let x_2210 : vec2<f32> = vec2<f32>(x_2209.z, x_2209.w);
        let x_2212 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_2210.x, x_2210.y, x_2212);
        let x_2219 : vec3<f32> = txVec22;
        let x_2221 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2219.xy, x_2219.z);
        u_xlat58.x = x_2221;
        let x_2224 : f32 = u_xlat19.y;
        let x_2226 : f32 = u_xlat58.x;
        let x_2228 : f32 = u_xlat83;
        u_xlat83 = ((x_2224 * x_2226) + x_2228);
        let x_2231 : vec2<f32> = u_xlat34;
        let x_2233 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_2231.x, x_2231.y, x_2233);
        let x_2240 : vec3<f32> = txVec23;
        let x_2242 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2240.xy, x_2240.z);
        u_xlat58.x = x_2242;
        let x_2245 : f32 = u_xlat19.z;
        let x_2247 : f32 = u_xlat58.x;
        let x_2249 : f32 = u_xlat83;
        u_xlat83 = ((x_2245 * x_2247) + x_2249);
        let x_2252 : vec2<f32> = u_xlat66;
        let x_2254 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_2252.x, x_2252.y, x_2254);
        let x_2261 : vec3<f32> = txVec24;
        let x_2263 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2261.xy, x_2261.z);
        u_xlat58.x = x_2263;
        let x_2266 : f32 = u_xlat19.w;
        let x_2268 : f32 = u_xlat58.x;
        let x_2270 : f32 = u_xlat83;
        u_xlat83 = ((x_2266 * x_2268) + x_2270);
        let x_2273 : vec4<f32> = u_xlat11;
        let x_2274 : vec2<f32> = vec2<f32>(x_2273.x, x_2273.y);
        let x_2276 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_2274.x, x_2274.y, x_2276);
        let x_2283 : vec3<f32> = txVec25;
        let x_2285 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2283.xy, x_2283.z);
        u_xlat58.x = x_2285;
        let x_2288 : f32 = u_xlat7.x;
        let x_2290 : f32 = u_xlat58.x;
        let x_2292 : f32 = u_xlat83;
        u_xlat83 = ((x_2288 * x_2290) + x_2292);
        let x_2295 : vec4<f32> = u_xlat11;
        let x_2296 : vec2<f32> = vec2<f32>(x_2295.z, x_2295.w);
        let x_2298 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_2296.x, x_2296.y, x_2298);
        let x_2305 : vec3<f32> = txVec26;
        let x_2307 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2305.xy, x_2305.z);
        u_xlat58.x = x_2307;
        let x_2310 : f32 = u_xlat7.y;
        let x_2312 : f32 = u_xlat58.x;
        let x_2314 : f32 = u_xlat83;
        u_xlat83 = ((x_2310 * x_2312) + x_2314);
        let x_2317 : vec2<f32> = u_xlat61;
        let x_2319 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_2317.x, x_2317.y, x_2319);
        let x_2326 : vec3<f32> = txVec27;
        let x_2328 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2326.xy, x_2326.z);
        u_xlat58.x = x_2328;
        let x_2331 : f32 = u_xlat7.z;
        let x_2333 : f32 = u_xlat58.x;
        let x_2335 : f32 = u_xlat83;
        u_xlat83 = ((x_2331 * x_2333) + x_2335);
        let x_2338 : vec4<f32> = u_xlat6;
        let x_2339 : vec2<f32> = vec2<f32>(x_2338.x, x_2338.y);
        let x_2341 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_2339.x, x_2339.y, x_2341);
        let x_2348 : vec3<f32> = txVec28;
        let x_2350 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2348.xy, x_2348.z);
        u_xlat6.x = x_2350;
        let x_2353 : f32 = u_xlat7.w;
        let x_2355 : f32 = u_xlat6.x;
        let x_2357 : f32 = u_xlat83;
        u_xlat82 = ((x_2353 * x_2355) + x_2357);
      }
    }
  } else {
    let x_2361 : vec4<f32> = u_xlat2;
    let x_2362 : vec2<f32> = vec2<f32>(x_2361.x, x_2361.y);
    let x_2364 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_2362.x, x_2362.y, x_2364);
    let x_2371 : vec3<f32> = txVec29;
    let x_2373 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2371.xy, x_2371.z);
    u_xlat82 = x_2373;
  }
  let x_2375 : f32 = x_833.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_2375) + 1.0f);
  let x_2379 : f32 = u_xlat82;
  let x_2381 : f32 = x_833.x_MainLightShadowParams.x;
  let x_2384 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2379 * x_2381) + x_2384);
  let x_2389 : f32 = u_xlat2.z;
  u_xlatb28 = (0.0f >= x_2389);
  let x_2393 : f32 = u_xlat2.z;
  u_xlatb54 = (x_2393 >= 1.0f);
  let x_2395 : bool = u_xlatb54;
  let x_2396 : bool = u_xlatb28;
  u_xlatb28 = (x_2395 | x_2396);
  let x_2398 : bool = u_xlatb28;
  if (x_2398) {
    x_2400 = 1.0f;
  } else {
    let x_2405 : f32 = u_xlat2.x;
    x_2400 = x_2405;
  }
  let x_2406 : f32 = x_2400;
  u_xlat2.x = x_2406;
  let x_2408 : vec3<f32> = vs_TEXCOORD7;
  let x_2411 : vec3<f32> = x_112.x_WorldSpaceCameraPos;
  let x_2413 : vec3<f32> = (x_2408 + -(x_2411));
  let x_2414 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2413.x, x_2413.y, x_2413.z, x_2414.w);
  let x_2417 : vec4<f32> = u_xlat6;
  let x_2419 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_2417.x, x_2417.y, x_2417.z), vec3<f32>(x_2419.x, x_2419.y, x_2419.z));
  let x_2423 : f32 = u_xlat28;
  let x_2425 : f32 = x_833.x_MainLightShadowParams.z;
  let x_2428 : f32 = x_833.x_MainLightShadowParams.w;
  u_xlat54 = ((x_2423 * x_2425) + x_2428);
  let x_2430 : f32 = u_xlat54;
  u_xlat54 = clamp(x_2430, 0.0f, 1.0f);
  let x_2433 : f32 = u_xlat2.x;
  u_xlat82 = (-(x_2433) + 1.0f);
  let x_2436 : f32 = u_xlat54;
  let x_2437 : f32 = u_xlat82;
  let x_2440 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2436 * x_2437) + x_2440);
  let x_2450 : f32 = x_2448.x_MainLightCookieTextureFormat;
  u_xlatb54 = !((x_2450 == -1.0f));
  let x_2452 : bool = u_xlatb54;
  if (x_2452) {
    let x_2455 : vec3<f32> = vs_TEXCOORD7;
    let x_2458 : vec4<f32> = x_2448.x_MainLightWorldToLight[1i];
    let x_2460 : vec2<f32> = (vec2<f32>(x_2455.y, x_2455.y) * vec2<f32>(x_2458.x, x_2458.y));
    let x_2461 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2460.x, x_2460.y, x_2461.z, x_2461.w);
    let x_2464 : vec4<f32> = x_2448.x_MainLightWorldToLight[0i];
    let x_2466 : vec3<f32> = vs_TEXCOORD7;
    let x_2469 : vec4<f32> = u_xlat6;
    let x_2471 : vec2<f32> = ((vec2<f32>(x_2464.x, x_2464.y) * vec2<f32>(x_2466.x, x_2466.x)) + vec2<f32>(x_2469.x, x_2469.y));
    let x_2472 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2471.x, x_2471.y, x_2472.z, x_2472.w);
    let x_2475 : vec4<f32> = x_2448.x_MainLightWorldToLight[2i];
    let x_2477 : vec3<f32> = vs_TEXCOORD7;
    let x_2480 : vec4<f32> = u_xlat6;
    let x_2482 : vec2<f32> = ((vec2<f32>(x_2475.x, x_2475.y) * vec2<f32>(x_2477.z, x_2477.z)) + vec2<f32>(x_2480.x, x_2480.y));
    let x_2483 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2482.x, x_2482.y, x_2483.z, x_2483.w);
    let x_2485 : vec4<f32> = u_xlat6;
    let x_2488 : vec4<f32> = x_2448.x_MainLightWorldToLight[3i];
    let x_2490 : vec2<f32> = (vec2<f32>(x_2485.x, x_2485.y) + vec2<f32>(x_2488.x, x_2488.y));
    let x_2491 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2490.x, x_2490.y, x_2491.z, x_2491.w);
    let x_2493 : vec4<f32> = u_xlat6;
    let x_2496 : vec2<f32> = ((vec2<f32>(x_2493.x, x_2493.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2497 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2496.x, x_2496.y, x_2497.z, x_2497.w);
    let x_2504 : vec4<f32> = u_xlat6;
    let x_2507 : f32 = x_112.x_GlobalMipBias.x;
    let x_2508 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2504.x, x_2504.y), x_2507);
    u_xlat6 = x_2508;
    let x_2513 : f32 = x_2448.x_MainLightCookieTextureFormat;
    let x_2515 : f32 = x_2448.x_MainLightCookieTextureFormat;
    let x_2517 : f32 = x_2448.x_MainLightCookieTextureFormat;
    let x_2519 : f32 = x_2448.x_MainLightCookieTextureFormat;
    let x_2520 : vec4<f32> = vec4<f32>(x_2513, x_2515, x_2517, x_2519);
    let x_2527 : vec4<bool> = (vec4<f32>(x_2520.x, x_2520.y, x_2520.z, x_2520.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2527.x, x_2527.y);
    let x_2530 : bool = u_xlatb7.y;
    if (x_2530) {
      let x_2535 : f32 = u_xlat6.w;
      x_2531 = x_2535;
    } else {
      let x_2538 : f32 = u_xlat6.x;
      x_2531 = x_2538;
    }
    let x_2539 : f32 = x_2531;
    u_xlat54 = x_2539;
    let x_2541 : bool = u_xlatb7.x;
    if (x_2541) {
      let x_2545 : vec4<f32> = u_xlat6;
      x_2542 = vec3<f32>(x_2545.x, x_2545.y, x_2545.z);
    } else {
      let x_2548 : f32 = u_xlat54;
      x_2542 = vec3<f32>(x_2548, x_2548, x_2548);
    }
    let x_2550 : vec3<f32> = x_2542;
    let x_2551 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2550.x, x_2550.y, x_2550.z, x_2551.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2557 : vec4<f32> = u_xlat6;
  let x_2560 : vec4<f32> = x_112.x_MainLightColor;
  let x_2562 : vec3<f32> = (vec3<f32>(x_2557.x, x_2557.y, x_2557.z) * vec3<f32>(x_2560.x, x_2560.y, x_2560.z));
  let x_2563 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2562.x, x_2562.y, x_2562.z, x_2563.w);
  let x_2567 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_2567;
  let x_2570 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_2570;
  let x_2573 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_2573;
  let x_2575 : vec4<f32> = u_xlat7;
  let x_2578 : vec4<f32> = u_xlat1;
  u_xlat54 = dot(-(vec3<f32>(x_2575.x, x_2575.y, x_2575.z)), vec3<f32>(x_2578.x, x_2578.y, x_2578.z));
  let x_2581 : f32 = u_xlat54;
  let x_2582 : f32 = u_xlat54;
  u_xlat54 = (x_2581 + x_2582);
  let x_2584 : vec4<f32> = u_xlat1;
  let x_2586 : f32 = u_xlat54;
  let x_2590 : vec4<f32> = u_xlat7;
  let x_2593 : vec3<f32> = ((vec3<f32>(x_2584.x, x_2584.y, x_2584.z) * -(vec3<f32>(x_2586, x_2586, x_2586))) + -(vec3<f32>(x_2590.x, x_2590.y, x_2590.z)));
  let x_2594 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2593.x, x_2593.y, x_2593.z, x_2594.w);
  let x_2596 : vec4<f32> = u_xlat1;
  let x_2598 : vec4<f32> = u_xlat7;
  u_xlat54 = dot(vec3<f32>(x_2596.x, x_2596.y, x_2596.z), vec3<f32>(x_2598.x, x_2598.y, x_2598.z));
  let x_2601 : f32 = u_xlat54;
  u_xlat54 = clamp(x_2601, 0.0f, 1.0f);
  let x_2603 : f32 = u_xlat54;
  u_xlat54 = (-(x_2603) + 1.0f);
  let x_2606 : f32 = u_xlat54;
  let x_2607 : f32 = u_xlat54;
  u_xlat54 = (x_2606 * x_2607);
  let x_2609 : f32 = u_xlat54;
  let x_2610 : f32 = u_xlat54;
  u_xlat54 = (x_2609 * x_2610);
  let x_2613 : f32 = u_xlat0.x;
  u_xlat82 = ((-(x_2613) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2620 : f32 = u_xlat0.x;
  let x_2621 : f32 = u_xlat82;
  u_xlat0.x = (x_2620 * x_2621);
  let x_2625 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2625 * 6.0f);
  let x_2637 : vec4<f32> = u_xlat8;
  let x_2640 : f32 = u_xlat0.x;
  let x_2641 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2637.x, x_2637.y, x_2637.z), x_2640);
  u_xlat8 = x_2641;
  let x_2643 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2643 + -1.0f);
  let x_2651 : f32 = x_2649.unity_SpecCube0_HDR.w;
  let x_2653 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2651 * x_2653) + 1.0f);
  let x_2658 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2658, 0.0f);
  let x_2662 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2662);
  let x_2666 : f32 = u_xlat0.x;
  let x_2668 : f32 = x_2649.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2666 * x_2668);
  let x_2672 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2672);
  let x_2676 : f32 = u_xlat0.x;
  let x_2678 : f32 = x_2649.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2676 * x_2678);
  let x_2681 : vec4<f32> = u_xlat8;
  let x_2683 : vec3<f32> = u_xlat0;
  let x_2685 : vec3<f32> = (vec3<f32>(x_2681.x, x_2681.y, x_2681.z) * vec3<f32>(x_2683.x, x_2683.x, x_2683.x));
  let x_2686 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2685.x, x_2685.y, x_2685.z, x_2686.w);
  let x_2688 : f32 = u_xlat52;
  let x_2690 : f32 = u_xlat52;
  let x_2694 : vec2<f32> = ((vec2<f32>(x_2688, x_2688) * vec2<f32>(x_2690, x_2690)) + vec2<f32>(-1.0f, 1.0f));
  let x_2695 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2694.x, x_2695.y, x_2694.y);
  let x_2698 : f32 = u_xlat0.z;
  u_xlat52 = (1.0f / x_2698);
  let x_2700 : vec4<f32> = u_xlat5;
  let x_2703 : f32 = u_xlat80;
  let x_2705 : vec3<f32> = (-(vec3<f32>(x_2700.x, x_2700.y, x_2700.z)) + vec3<f32>(x_2703, x_2703, x_2703));
  let x_2706 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2705.x, x_2705.y, x_2705.z, x_2706.w);
  let x_2708 : f32 = u_xlat54;
  let x_2710 : vec4<f32> = u_xlat9;
  let x_2713 : vec4<f32> = u_xlat5;
  let x_2715 : vec3<f32> = ((vec3<f32>(x_2708, x_2708, x_2708) * vec3<f32>(x_2710.x, x_2710.y, x_2710.z)) + vec3<f32>(x_2713.x, x_2713.y, x_2713.z));
  let x_2716 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2715.x, x_2715.y, x_2715.z, x_2716.w);
  let x_2718 : f32 = u_xlat52;
  let x_2720 : vec4<f32> = u_xlat9;
  let x_2722 : vec3<f32> = (vec3<f32>(x_2718, x_2718, x_2718) * vec3<f32>(x_2720.x, x_2720.y, x_2720.z));
  let x_2723 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2722.x, x_2722.y, x_2722.z, x_2723.w);
  let x_2725 : vec4<f32> = u_xlat8;
  let x_2727 : vec4<f32> = u_xlat9;
  let x_2729 : vec3<f32> = (vec3<f32>(x_2725.x, x_2725.y, x_2725.z) * vec3<f32>(x_2727.x, x_2727.y, x_2727.z));
  let x_2730 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2729.x, x_2729.y, x_2729.z, x_2730.w);
  let x_2732 : vec4<f32> = u_xlat3;
  let x_2734 : vec4<f32> = u_xlat4;
  let x_2737 : vec4<f32> = u_xlat8;
  let x_2739 : vec3<f32> = ((vec3<f32>(x_2732.x, x_2732.y, x_2732.z) * vec3<f32>(x_2734.x, x_2734.y, x_2734.z)) + vec3<f32>(x_2737.x, x_2737.y, x_2737.z));
  let x_2740 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2739.x, x_2739.y, x_2739.z, x_2740.w);
  let x_2743 : f32 = u_xlat2.x;
  let x_2745 : f32 = x_2649.unity_LightData.z;
  u_xlat52 = (x_2743 * x_2745);
  let x_2747 : vec4<f32> = u_xlat1;
  let x_2750 : vec4<f32> = x_112.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_2747.x, x_2747.y, x_2747.z), vec3<f32>(x_2750.x, x_2750.y, x_2750.z));
  let x_2755 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2755, 0.0f, 1.0f);
  let x_2758 : f32 = u_xlat52;
  let x_2760 : f32 = u_xlat2.x;
  u_xlat52 = (x_2758 * x_2760);
  let x_2762 : f32 = u_xlat52;
  let x_2764 : vec4<f32> = u_xlat6;
  let x_2766 : vec3<f32> = (vec3<f32>(x_2762, x_2762, x_2762) * vec3<f32>(x_2764.x, x_2764.y, x_2764.z));
  let x_2767 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2766.x, x_2767.y, x_2766.y, x_2766.z);
  let x_2769 : vec4<f32> = u_xlat7;
  let x_2772 : vec4<f32> = x_112.x_MainLightPosition;
  let x_2774 : vec3<f32> = (vec3<f32>(x_2769.x, x_2769.y, x_2769.z) + vec3<f32>(x_2772.x, x_2772.y, x_2772.z));
  let x_2775 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2774.x, x_2774.y, x_2774.z, x_2775.w);
  let x_2777 : vec4<f32> = u_xlat6;
  let x_2779 : vec4<f32> = u_xlat6;
  u_xlat52 = dot(vec3<f32>(x_2777.x, x_2777.y, x_2777.z), vec3<f32>(x_2779.x, x_2779.y, x_2779.z));
  let x_2782 : f32 = u_xlat52;
  u_xlat52 = max(x_2782, 1.17549435e-38f);
  let x_2785 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_2785);
  let x_2787 : f32 = u_xlat52;
  let x_2789 : vec4<f32> = u_xlat6;
  let x_2791 : vec3<f32> = (vec3<f32>(x_2787, x_2787, x_2787) * vec3<f32>(x_2789.x, x_2789.y, x_2789.z));
  let x_2792 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2791.x, x_2791.y, x_2791.z, x_2792.w);
  let x_2794 : vec4<f32> = u_xlat1;
  let x_2796 : vec4<f32> = u_xlat6;
  u_xlat52 = dot(vec3<f32>(x_2794.x, x_2794.y, x_2794.z), vec3<f32>(x_2796.x, x_2796.y, x_2796.z));
  let x_2799 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2799, 0.0f, 1.0f);
  let x_2802 : vec4<f32> = x_112.x_MainLightPosition;
  let x_2804 : vec4<f32> = u_xlat6;
  u_xlat82 = dot(vec3<f32>(x_2802.x, x_2802.y, x_2802.z), vec3<f32>(x_2804.x, x_2804.y, x_2804.z));
  let x_2807 : f32 = u_xlat82;
  u_xlat82 = clamp(x_2807, 0.0f, 1.0f);
  let x_2809 : f32 = u_xlat52;
  let x_2810 : f32 = u_xlat52;
  u_xlat52 = (x_2809 * x_2810);
  let x_2812 : f32 = u_xlat52;
  let x_2814 : f32 = u_xlat0.x;
  u_xlat52 = ((x_2812 * x_2814) + 1.00001001358032226562f);
  let x_2818 : f32 = u_xlat82;
  let x_2819 : f32 = u_xlat82;
  u_xlat82 = (x_2818 * x_2819);
  let x_2821 : f32 = u_xlat52;
  let x_2822 : f32 = u_xlat52;
  u_xlat52 = (x_2821 * x_2822);
  let x_2824 : f32 = u_xlat82;
  u_xlat82 = max(x_2824, 0.10000000149011611938f);
  let x_2827 : f32 = u_xlat52;
  let x_2828 : f32 = u_xlat82;
  u_xlat52 = (x_2827 * x_2828);
  let x_2830 : f32 = u_xlat81;
  let x_2831 : f32 = u_xlat52;
  u_xlat52 = (x_2830 * x_2831);
  let x_2833 : f32 = u_xlat79;
  let x_2834 : f32 = u_xlat52;
  u_xlat52 = (x_2833 / x_2834);
  let x_2836 : vec4<f32> = u_xlat5;
  let x_2838 : f32 = u_xlat52;
  let x_2841 : vec4<f32> = u_xlat4;
  let x_2843 : vec3<f32> = ((vec3<f32>(x_2836.x, x_2836.y, x_2836.z) * vec3<f32>(x_2838, x_2838, x_2838)) + vec3<f32>(x_2841.x, x_2841.y, x_2841.z));
  let x_2844 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2843.x, x_2843.y, x_2843.z, x_2844.w);
  let x_2846 : vec4<f32> = u_xlat2;
  let x_2848 : vec4<f32> = u_xlat6;
  let x_2850 : vec3<f32> = (vec3<f32>(x_2846.x, x_2846.z, x_2846.w) * vec3<f32>(x_2848.x, x_2848.y, x_2848.z));
  let x_2851 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2850.x, x_2851.y, x_2850.y, x_2850.z);
  let x_2854 : f32 = x_112.x_AdditionalLightsCount.x;
  let x_2856 : f32 = x_2649.unity_LightData.y;
  u_xlat52 = min(x_2854, x_2856);
  let x_2859 : f32 = u_xlat52;
  u_xlatu52 = bitcast<u32>(i32(x_2859));
  let x_2862 : f32 = u_xlat28;
  let x_2864 : f32 = x_833.x_AdditionalShadowFadeParams.x;
  let x_2867 : f32 = x_833.x_AdditionalShadowFadeParams.y;
  u_xlat28 = ((x_2862 * x_2864) + x_2867);
  let x_2869 : f32 = u_xlat28;
  u_xlat28 = clamp(x_2869, 0.0f, 1.0f);
  let x_2873 : f32 = x_2448.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2875 : f32 = x_2448.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2877 : f32 = x_2448.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2879 : f32 = x_2448.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2880 : vec4<f32> = vec4<f32>(x_2873, x_2875, x_2877, x_2879);
  let x_2886 : vec4<bool> = (vec4<f32>(x_2880.x, x_2880.y, x_2880.z, x_2880.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2886.x, x_2886.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2898 : u32 = u_xlatu_loop_1;
    let x_2899 : u32 = u_xlatu52;
    if ((x_2898 < x_2899)) {
    } else {
      break;
    }
    let x_2902 : u32 = u_xlatu_loop_1;
    u_xlatu83 = (x_2902 >> 2u);
    let x_2905 : u32 = u_xlatu_loop_1;
    u_xlati58 = bitcast<i32>((x_2905 & 3u));
    let x_2908 : u32 = u_xlatu83;
    let x_2911 : vec4<f32> = x_2649.unity_LightIndices[bitcast<i32>(x_2908)];
    let x_2921 : i32 = u_xlati58;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2926 : vec4<u32> = indexable[x_2921];
    u_xlat83 = dot(x_2911, bitcast<vec4<f32>>(x_2926));
    let x_2930 : f32 = u_xlat83;
    u_xlati83 = i32(x_2930);
    let x_2932 : vec3<f32> = vs_TEXCOORD7;
    let x_2943 : i32 = u_xlati83;
    let x_2945 : vec4<f32> = x_2942.x_AdditionalLightsPosition[x_2943];
    let x_2948 : i32 = u_xlati83;
    let x_2950 : vec4<f32> = x_2942.x_AdditionalLightsPosition[x_2948];
    let x_2952 : vec3<f32> = ((-(x_2932) * vec3<f32>(x_2945.w, x_2945.w, x_2945.w)) + vec3<f32>(x_2950.x, x_2950.y, x_2950.z));
    let x_2953 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2952.x, x_2952.y, x_2952.z, x_2953.w);
    let x_2955 : vec4<f32> = u_xlat9;
    let x_2957 : vec4<f32> = u_xlat9;
    u_xlat58.x = dot(vec3<f32>(x_2955.x, x_2955.y, x_2955.z), vec3<f32>(x_2957.x, x_2957.y, x_2957.z));
    let x_2962 : f32 = u_xlat58.x;
    u_xlat58.x = max(x_2962, 0.00006103515625f);
    let x_2967 : f32 = u_xlat58.x;
    u_xlat84 = inverseSqrt(x_2967);
    let x_2969 : f32 = u_xlat84;
    let x_2971 : vec4<f32> = u_xlat9;
    let x_2973 : vec3<f32> = (vec3<f32>(x_2969, x_2969, x_2969) * vec3<f32>(x_2971.x, x_2971.y, x_2971.z));
    let x_2974 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2973.x, x_2973.y, x_2973.z, x_2974.w);
    let x_2978 : f32 = u_xlat58.x;
    u_xlat85 = (1.0f / x_2978);
    let x_2981 : f32 = u_xlat58.x;
    let x_2982 : i32 = u_xlati83;
    let x_2984 : f32 = x_2942.x_AdditionalLightsAttenuation[x_2982].x;
    u_xlat58.x = (x_2981 * x_2984);
    let x_2988 : f32 = u_xlat58.x;
    let x_2991 : f32 = u_xlat58.x;
    u_xlat58.x = ((-(x_2988) * x_2991) + 1.0f);
    let x_2996 : f32 = u_xlat58.x;
    u_xlat58.x = max(x_2996, 0.0f);
    let x_3000 : f32 = u_xlat58.x;
    let x_3002 : f32 = u_xlat58.x;
    u_xlat58.x = (x_3000 * x_3002);
    let x_3006 : f32 = u_xlat58.x;
    let x_3007 : f32 = u_xlat85;
    u_xlat58.x = (x_3006 * x_3007);
    let x_3010 : i32 = u_xlati83;
    let x_3012 : vec4<f32> = x_2942.x_AdditionalLightsSpotDir[x_3010];
    let x_3014 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_3012.x, x_3012.y, x_3012.z), vec3<f32>(x_3014.x, x_3014.y, x_3014.z));
    let x_3017 : f32 = u_xlat85;
    let x_3018 : i32 = u_xlati83;
    let x_3020 : f32 = x_2942.x_AdditionalLightsAttenuation[x_3018].z;
    let x_3022 : i32 = u_xlati83;
    let x_3024 : f32 = x_2942.x_AdditionalLightsAttenuation[x_3022].w;
    u_xlat85 = ((x_3017 * x_3020) + x_3024);
    let x_3026 : f32 = u_xlat85;
    u_xlat85 = clamp(x_3026, 0.0f, 1.0f);
    let x_3028 : f32 = u_xlat85;
    let x_3029 : f32 = u_xlat85;
    u_xlat85 = (x_3028 * x_3029);
    let x_3032 : f32 = u_xlat58.x;
    let x_3033 : f32 = u_xlat85;
    u_xlat58.x = (x_3032 * x_3033);
    let x_3037 : i32 = u_xlati83;
    let x_3039 : f32 = x_833.x_AdditionalShadowParams[x_3037].w;
    u_xlati85 = i32(x_3039);
    let x_3042 : i32 = u_xlati85;
    u_xlatb86 = (x_3042 >= 0i);
    let x_3044 : bool = u_xlatb86;
    if (x_3044) {
      let x_3048 : i32 = u_xlati83;
      let x_3050 : f32 = x_833.x_AdditionalShadowParams[x_3048].z;
      u_xlatb86 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3050, x_3050, x_3050, x_3050))));
      let x_3054 : bool = u_xlatb86;
      if (x_3054) {
        let x_3058 : vec4<f32> = u_xlat10;
        let x_3061 : vec4<f32> = u_xlat10;
        let x_3064 : vec4<bool> = (abs(vec4<f32>(x_3058.z, x_3058.z, x_3058.y, x_3058.z)) >= abs(vec4<f32>(x_3061.x, x_3061.y, x_3061.x, x_3061.x)));
        let x_3066 : vec3<bool> = vec3<bool>(x_3064.x, x_3064.y, x_3064.z);
        let x_3067 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3066.x, x_3066.y, x_3066.z, x_3067.w);
        let x_3070 : bool = u_xlatb11.y;
        let x_3072 : bool = u_xlatb11.x;
        u_xlatb86 = (x_3070 & x_3072);
        let x_3074 : vec4<f32> = u_xlat10;
        let x_3077 : vec4<bool> = (-(vec4<f32>(x_3074.z, x_3074.y, x_3074.z, x_3074.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3078 : vec3<bool> = vec3<bool>(x_3077.x, x_3077.y, x_3077.w);
        let x_3079 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3078.x, x_3078.y, x_3079.z, x_3078.z);
        let x_3082 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3082);
        let x_3087 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3087);
        let x_3092 : bool = u_xlatb11.w;
        u_xlat87 = select(0.0f, 1.0f, x_3092);
        let x_3095 : bool = u_xlatb11.z;
        if (x_3095) {
          let x_3100 : f32 = u_xlat11.y;
          x_3096 = x_3100;
        } else {
          let x_3102 : f32 = u_xlat87;
          x_3096 = x_3102;
        }
        let x_3103 : f32 = x_3096;
        u_xlat87 = x_3103;
        let x_3105 : bool = u_xlatb86;
        if (x_3105) {
          let x_3110 : f32 = u_xlat11.x;
          x_3106 = x_3110;
        } else {
          let x_3112 : f32 = u_xlat87;
          x_3106 = x_3112;
        }
        let x_3113 : f32 = x_3106;
        u_xlat86 = x_3113;
        let x_3114 : i32 = u_xlati83;
        let x_3116 : f32 = x_833.x_AdditionalShadowParams[x_3114].w;
        u_xlat87 = trunc(x_3116);
        let x_3118 : f32 = u_xlat86;
        let x_3119 : f32 = u_xlat87;
        u_xlat86 = (x_3118 + x_3119);
        let x_3121 : f32 = u_xlat86;
        u_xlati85 = i32(x_3121);
      }
      let x_3123 : i32 = u_xlati85;
      u_xlati85 = (x_3123 << bitcast<u32>(2i));
      let x_3125 : vec3<f32> = vs_TEXCOORD7;
      let x_3127 : i32 = u_xlati85;
      let x_3130 : i32 = u_xlati85;
      let x_3134 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[((x_3127 + 1i) / 4i)][((x_3130 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3125.y, x_3125.y, x_3125.y, x_3125.y) * x_3134);
      let x_3136 : i32 = u_xlati85;
      let x_3138 : i32 = u_xlati85;
      let x_3141 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[(x_3136 / 4i)][(x_3138 % 4i)];
      let x_3142 : vec3<f32> = vs_TEXCOORD7;
      let x_3145 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3141 * vec4<f32>(x_3142.x, x_3142.x, x_3142.x, x_3142.x)) + x_3145);
      let x_3147 : i32 = u_xlati85;
      let x_3150 : i32 = u_xlati85;
      let x_3154 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[((x_3147 + 2i) / 4i)][((x_3150 + 2i) % 4i)];
      let x_3155 : vec3<f32> = vs_TEXCOORD7;
      let x_3158 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3154 * vec4<f32>(x_3155.z, x_3155.z, x_3155.z, x_3155.z)) + x_3158);
      let x_3160 : vec4<f32> = u_xlat11;
      let x_3161 : i32 = u_xlati85;
      let x_3164 : i32 = u_xlati85;
      let x_3168 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[((x_3161 + 3i) / 4i)][((x_3164 + 3i) % 4i)];
      u_xlat11 = (x_3160 + x_3168);
      let x_3170 : vec4<f32> = u_xlat11;
      let x_3172 : vec4<f32> = u_xlat11;
      let x_3174 : vec3<f32> = (vec3<f32>(x_3170.x, x_3170.y, x_3170.z) / vec3<f32>(x_3172.w, x_3172.w, x_3172.w));
      let x_3175 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3174.x, x_3174.y, x_3174.z, x_3175.w);
      let x_3178 : i32 = u_xlati83;
      let x_3180 : f32 = x_833.x_AdditionalShadowParams[x_3178].y;
      u_xlatb85 = (0.0f < x_3180);
      let x_3182 : bool = u_xlatb85;
      if (x_3182) {
        let x_3185 : i32 = u_xlati83;
        let x_3187 : f32 = x_833.x_AdditionalShadowParams[x_3185].y;
        u_xlatb85 = (1.0f == x_3187);
        let x_3189 : bool = u_xlatb85;
        if (x_3189) {
          let x_3192 : vec4<f32> = u_xlat11;
          let x_3195 : vec4<f32> = x_833.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3192.x, x_3192.y, x_3192.x, x_3192.y) + x_3195);
          let x_3198 : vec4<f32> = u_xlat12;
          let x_3199 : vec2<f32> = vec2<f32>(x_3198.x, x_3198.y);
          let x_3201 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_3199.x, x_3199.y, x_3201);
          let x_3209 : vec3<f32> = txVec30;
          let x_3211 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3209.xy, x_3209.z);
          u_xlat13.x = x_3211;
          let x_3214 : vec4<f32> = u_xlat12;
          let x_3215 : vec2<f32> = vec2<f32>(x_3214.z, x_3214.w);
          let x_3217 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_3215.x, x_3215.y, x_3217);
          let x_3224 : vec3<f32> = txVec31;
          let x_3226 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3224.xy, x_3224.z);
          u_xlat13.y = x_3226;
          let x_3228 : vec4<f32> = u_xlat11;
          let x_3231 : vec4<f32> = x_833.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3228.x, x_3228.y, x_3228.x, x_3228.y) + x_3231);
          let x_3234 : vec4<f32> = u_xlat12;
          let x_3235 : vec2<f32> = vec2<f32>(x_3234.x, x_3234.y);
          let x_3237 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_3235.x, x_3235.y, x_3237);
          let x_3244 : vec3<f32> = txVec32;
          let x_3246 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3244.xy, x_3244.z);
          u_xlat13.z = x_3246;
          let x_3249 : vec4<f32> = u_xlat12;
          let x_3250 : vec2<f32> = vec2<f32>(x_3249.z, x_3249.w);
          let x_3252 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_3250.x, x_3250.y, x_3252);
          let x_3259 : vec3<f32> = txVec33;
          let x_3261 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3259.xy, x_3259.z);
          u_xlat13.w = x_3261;
          let x_3263 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_3263, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3266 : i32 = u_xlati83;
          let x_3268 : f32 = x_833.x_AdditionalShadowParams[x_3266].y;
          u_xlatb86 = (2.0f == x_3268);
          let x_3270 : bool = u_xlatb86;
          if (x_3270) {
            let x_3273 : vec4<f32> = u_xlat11;
            let x_3276 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3279 : vec2<f32> = ((vec2<f32>(x_3273.x, x_3273.y) * vec2<f32>(x_3276.z, x_3276.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3280 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3279.x, x_3279.y, x_3280.z, x_3280.w);
            let x_3282 : vec4<f32> = u_xlat12;
            let x_3284 : vec2<f32> = floor(vec2<f32>(x_3282.x, x_3282.y));
            let x_3285 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3284.x, x_3284.y, x_3285.z, x_3285.w);
            let x_3288 : vec4<f32> = u_xlat11;
            let x_3291 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3294 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3288.x, x_3288.y) * vec2<f32>(x_3291.z, x_3291.w)) + -(vec2<f32>(x_3294.x, x_3294.y)));
            let x_3298 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3298.x, x_3298.x, x_3298.y, x_3298.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3301 : vec4<f32> = u_xlat13;
            let x_3303 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3301.x, x_3301.x, x_3301.z, x_3301.z) * vec4<f32>(x_3303.x, x_3303.x, x_3303.z, x_3303.z));
            let x_3306 : vec4<f32> = u_xlat14;
            let x_3308 : vec2<f32> = (vec2<f32>(x_3306.y, x_3306.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3309 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3308.x, x_3309.y, x_3308.y, x_3309.w);
            let x_3311 : vec4<f32> = u_xlat14;
            let x_3314 : vec2<f32> = u_xlat64;
            let x_3316 : vec2<f32> = ((vec2<f32>(x_3311.x, x_3311.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3314));
            let x_3317 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3316.x, x_3316.y, x_3317.z, x_3317.w);
            let x_3319 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3319) + vec2<f32>(1.0f, 1.0f));
            let x_3322 : vec2<f32> = u_xlat64;
            let x_3323 : vec2<f32> = min(x_3322, vec2<f32>(0.0f, 0.0f));
            let x_3324 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3323.x, x_3323.y, x_3324.z, x_3324.w);
            let x_3326 : vec4<f32> = u_xlat15;
            let x_3329 : vec4<f32> = u_xlat15;
            let x_3332 : vec2<f32> = u_xlat66;
            let x_3333 : vec2<f32> = ((-(vec2<f32>(x_3326.x, x_3326.y)) * vec2<f32>(x_3329.x, x_3329.y)) + x_3332);
            let x_3334 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3333.x, x_3333.y, x_3334.z, x_3334.w);
            let x_3336 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3336, vec2<f32>(0.0f, 0.0f));
            let x_3338 : vec2<f32> = u_xlat64;
            let x_3340 : vec2<f32> = u_xlat64;
            let x_3342 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3338) * x_3340) + vec2<f32>(x_3342.y, x_3342.w));
            let x_3345 : vec4<f32> = u_xlat15;
            let x_3347 : vec2<f32> = (vec2<f32>(x_3345.x, x_3345.y) + vec2<f32>(1.0f, 1.0f));
            let x_3348 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3347.x, x_3347.y, x_3348.z, x_3348.w);
            let x_3350 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3350 + vec2<f32>(1.0f, 1.0f));
            let x_3352 : vec4<f32> = u_xlat14;
            let x_3354 : vec2<f32> = (vec2<f32>(x_3352.x, x_3352.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3355 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3354.x, x_3354.y, x_3355.z, x_3355.w);
            let x_3357 : vec2<f32> = u_xlat66;
            let x_3358 : vec2<f32> = (x_3357 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3359 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3358.x, x_3358.y, x_3359.z, x_3359.w);
            let x_3361 : vec4<f32> = u_xlat15;
            let x_3363 : vec2<f32> = (vec2<f32>(x_3361.x, x_3361.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3364 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3363.x, x_3363.y, x_3364.z, x_3364.w);
            let x_3366 : vec2<f32> = u_xlat64;
            let x_3367 : vec2<f32> = (x_3366 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3368 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3367.x, x_3367.y, x_3368.z, x_3368.w);
            let x_3370 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3370.y, x_3370.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3374 : f32 = u_xlat15.x;
            u_xlat16.z = x_3374;
            let x_3377 : f32 = u_xlat64.x;
            u_xlat16.w = x_3377;
            let x_3380 : f32 = u_xlat17.x;
            u_xlat14.z = x_3380;
            let x_3383 : f32 = u_xlat13.x;
            u_xlat14.w = x_3383;
            let x_3385 : vec4<f32> = u_xlat14;
            let x_3387 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3385.z, x_3385.w, x_3385.x, x_3385.z) + vec4<f32>(x_3387.z, x_3387.w, x_3387.x, x_3387.z));
            let x_3391 : f32 = u_xlat16.y;
            u_xlat15.z = x_3391;
            let x_3394 : f32 = u_xlat64.y;
            u_xlat15.w = x_3394;
            let x_3397 : f32 = u_xlat14.y;
            u_xlat17.z = x_3397;
            let x_3400 : f32 = u_xlat13.z;
            u_xlat17.w = x_3400;
            let x_3402 : vec4<f32> = u_xlat15;
            let x_3404 : vec4<f32> = u_xlat17;
            let x_3406 : vec3<f32> = (vec3<f32>(x_3402.z, x_3402.y, x_3402.w) + vec3<f32>(x_3404.z, x_3404.y, x_3404.w));
            let x_3407 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3406.x, x_3406.y, x_3406.z, x_3407.w);
            let x_3409 : vec4<f32> = u_xlat14;
            let x_3411 : vec4<f32> = u_xlat18;
            let x_3413 : vec3<f32> = (vec3<f32>(x_3409.x, x_3409.z, x_3409.w) / vec3<f32>(x_3411.z, x_3411.w, x_3411.y));
            let x_3414 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3413.x, x_3413.y, x_3413.z, x_3414.w);
            let x_3416 : vec4<f32> = u_xlat14;
            let x_3418 : vec3<f32> = (vec3<f32>(x_3416.x, x_3416.y, x_3416.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3419 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3418.x, x_3418.y, x_3418.z, x_3419.w);
            let x_3421 : vec4<f32> = u_xlat17;
            let x_3423 : vec4<f32> = u_xlat13;
            let x_3425 : vec3<f32> = (vec3<f32>(x_3421.z, x_3421.y, x_3421.w) / vec3<f32>(x_3423.x, x_3423.y, x_3423.z));
            let x_3426 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3425.x, x_3425.y, x_3425.z, x_3426.w);
            let x_3428 : vec4<f32> = u_xlat15;
            let x_3430 : vec3<f32> = (vec3<f32>(x_3428.x, x_3428.y, x_3428.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3431 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3430.x, x_3430.y, x_3430.z, x_3431.w);
            let x_3433 : vec4<f32> = u_xlat14;
            let x_3436 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3438 : vec3<f32> = (vec3<f32>(x_3433.y, x_3433.x, x_3433.z) * vec3<f32>(x_3436.x, x_3436.x, x_3436.x));
            let x_3439 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3438.x, x_3438.y, x_3438.z, x_3439.w);
            let x_3441 : vec4<f32> = u_xlat15;
            let x_3444 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3446 : vec3<f32> = (vec3<f32>(x_3441.x, x_3441.y, x_3441.z) * vec3<f32>(x_3444.y, x_3444.y, x_3444.y));
            let x_3447 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3446.x, x_3446.y, x_3446.z, x_3447.w);
            let x_3450 : f32 = u_xlat15.x;
            u_xlat14.w = x_3450;
            let x_3452 : vec4<f32> = u_xlat12;
            let x_3455 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3458 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3452.x, x_3452.y, x_3452.x, x_3452.y) * vec4<f32>(x_3455.x, x_3455.y, x_3455.x, x_3455.y)) + vec4<f32>(x_3458.y, x_3458.w, x_3458.x, x_3458.w));
            let x_3461 : vec4<f32> = u_xlat12;
            let x_3464 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3467 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3461.x, x_3461.y) * vec2<f32>(x_3464.x, x_3464.y)) + vec2<f32>(x_3467.z, x_3467.w));
            let x_3471 : f32 = u_xlat14.y;
            u_xlat15.w = x_3471;
            let x_3473 : vec4<f32> = u_xlat15;
            let x_3474 : vec2<f32> = vec2<f32>(x_3473.y, x_3473.z);
            let x_3475 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3475.x, x_3474.x, x_3475.z, x_3474.y);
            let x_3477 : vec4<f32> = u_xlat12;
            let x_3480 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3483 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3477.x, x_3477.y, x_3477.x, x_3477.y) * vec4<f32>(x_3480.x, x_3480.y, x_3480.x, x_3480.y)) + vec4<f32>(x_3483.x, x_3483.y, x_3483.z, x_3483.y));
            let x_3486 : vec4<f32> = u_xlat12;
            let x_3489 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3492 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3486.x, x_3486.y, x_3486.x, x_3486.y) * vec4<f32>(x_3489.x, x_3489.y, x_3489.x, x_3489.y)) + vec4<f32>(x_3492.w, x_3492.y, x_3492.w, x_3492.z));
            let x_3495 : vec4<f32> = u_xlat12;
            let x_3498 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3501 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3495.x, x_3495.y, x_3495.x, x_3495.y) * vec4<f32>(x_3498.x, x_3498.y, x_3498.x, x_3498.y)) + vec4<f32>(x_3501.x, x_3501.w, x_3501.z, x_3501.w));
            let x_3504 : vec4<f32> = u_xlat13;
            let x_3506 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3504.x, x_3504.x, x_3504.x, x_3504.y) * vec4<f32>(x_3506.z, x_3506.w, x_3506.y, x_3506.z));
            let x_3510 : vec4<f32> = u_xlat13;
            let x_3512 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3510.y, x_3510.y, x_3510.z, x_3510.z) * x_3512);
            let x_3515 : f32 = u_xlat13.z;
            let x_3517 : f32 = u_xlat18.y;
            u_xlat86 = (x_3515 * x_3517);
            let x_3520 : vec4<f32> = u_xlat16;
            let x_3521 : vec2<f32> = vec2<f32>(x_3520.x, x_3520.y);
            let x_3523 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3521.x, x_3521.y, x_3523);
            let x_3530 : vec3<f32> = txVec34;
            let x_3532 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3530.xy, x_3530.z);
            u_xlat87 = x_3532;
            let x_3534 : vec4<f32> = u_xlat16;
            let x_3535 : vec2<f32> = vec2<f32>(x_3534.z, x_3534.w);
            let x_3537 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3535.x, x_3535.y, x_3537);
            let x_3545 : vec3<f32> = txVec35;
            let x_3547 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3545.xy, x_3545.z);
            u_xlat88 = x_3547;
            let x_3548 : f32 = u_xlat88;
            let x_3550 : f32 = u_xlat19.y;
            u_xlat88 = (x_3548 * x_3550);
            let x_3553 : f32 = u_xlat19.x;
            let x_3554 : f32 = u_xlat87;
            let x_3556 : f32 = u_xlat88;
            u_xlat87 = ((x_3553 * x_3554) + x_3556);
            let x_3559 : vec2<f32> = u_xlat64;
            let x_3561 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3559.x, x_3559.y, x_3561);
            let x_3568 : vec3<f32> = txVec36;
            let x_3570 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3568.xy, x_3568.z);
            u_xlat88 = x_3570;
            let x_3572 : f32 = u_xlat19.z;
            let x_3573 : f32 = u_xlat88;
            let x_3575 : f32 = u_xlat87;
            u_xlat87 = ((x_3572 * x_3573) + x_3575);
            let x_3578 : vec4<f32> = u_xlat15;
            let x_3579 : vec2<f32> = vec2<f32>(x_3578.x, x_3578.y);
            let x_3581 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3579.x, x_3579.y, x_3581);
            let x_3588 : vec3<f32> = txVec37;
            let x_3590 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3588.xy, x_3588.z);
            u_xlat88 = x_3590;
            let x_3592 : f32 = u_xlat19.w;
            let x_3593 : f32 = u_xlat88;
            let x_3595 : f32 = u_xlat87;
            u_xlat87 = ((x_3592 * x_3593) + x_3595);
            let x_3598 : vec4<f32> = u_xlat17;
            let x_3599 : vec2<f32> = vec2<f32>(x_3598.x, x_3598.y);
            let x_3601 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3599.x, x_3599.y, x_3601);
            let x_3608 : vec3<f32> = txVec38;
            let x_3610 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3608.xy, x_3608.z);
            u_xlat88 = x_3610;
            let x_3612 : f32 = u_xlat20.x;
            let x_3613 : f32 = u_xlat88;
            let x_3615 : f32 = u_xlat87;
            u_xlat87 = ((x_3612 * x_3613) + x_3615);
            let x_3618 : vec4<f32> = u_xlat17;
            let x_3619 : vec2<f32> = vec2<f32>(x_3618.z, x_3618.w);
            let x_3621 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3619.x, x_3619.y, x_3621);
            let x_3628 : vec3<f32> = txVec39;
            let x_3630 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3628.xy, x_3628.z);
            u_xlat88 = x_3630;
            let x_3632 : f32 = u_xlat20.y;
            let x_3633 : f32 = u_xlat88;
            let x_3635 : f32 = u_xlat87;
            u_xlat87 = ((x_3632 * x_3633) + x_3635);
            let x_3638 : vec4<f32> = u_xlat15;
            let x_3639 : vec2<f32> = vec2<f32>(x_3638.z, x_3638.w);
            let x_3641 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3639.x, x_3639.y, x_3641);
            let x_3648 : vec3<f32> = txVec40;
            let x_3650 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3648.xy, x_3648.z);
            u_xlat88 = x_3650;
            let x_3652 : f32 = u_xlat20.z;
            let x_3653 : f32 = u_xlat88;
            let x_3655 : f32 = u_xlat87;
            u_xlat87 = ((x_3652 * x_3653) + x_3655);
            let x_3658 : vec4<f32> = u_xlat14;
            let x_3659 : vec2<f32> = vec2<f32>(x_3658.x, x_3658.y);
            let x_3661 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3659.x, x_3659.y, x_3661);
            let x_3668 : vec3<f32> = txVec41;
            let x_3670 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3668.xy, x_3668.z);
            u_xlat88 = x_3670;
            let x_3672 : f32 = u_xlat20.w;
            let x_3673 : f32 = u_xlat88;
            let x_3675 : f32 = u_xlat87;
            u_xlat87 = ((x_3672 * x_3673) + x_3675);
            let x_3678 : vec4<f32> = u_xlat14;
            let x_3679 : vec2<f32> = vec2<f32>(x_3678.z, x_3678.w);
            let x_3681 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3679.x, x_3679.y, x_3681);
            let x_3688 : vec3<f32> = txVec42;
            let x_3690 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3688.xy, x_3688.z);
            u_xlat88 = x_3690;
            let x_3691 : f32 = u_xlat86;
            let x_3692 : f32 = u_xlat88;
            let x_3694 : f32 = u_xlat87;
            u_xlat85 = ((x_3691 * x_3692) + x_3694);
          } else {
            let x_3697 : vec4<f32> = u_xlat11;
            let x_3700 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3703 : vec2<f32> = ((vec2<f32>(x_3697.x, x_3697.y) * vec2<f32>(x_3700.z, x_3700.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3704 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3703.x, x_3703.y, x_3704.z, x_3704.w);
            let x_3706 : vec4<f32> = u_xlat12;
            let x_3708 : vec2<f32> = floor(vec2<f32>(x_3706.x, x_3706.y));
            let x_3709 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3708.x, x_3708.y, x_3709.z, x_3709.w);
            let x_3711 : vec4<f32> = u_xlat11;
            let x_3714 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3717 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3711.x, x_3711.y) * vec2<f32>(x_3714.z, x_3714.w)) + -(vec2<f32>(x_3717.x, x_3717.y)));
            let x_3721 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3721.x, x_3721.x, x_3721.y, x_3721.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3724 : vec4<f32> = u_xlat13;
            let x_3726 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3724.x, x_3724.x, x_3724.z, x_3724.z) * vec4<f32>(x_3726.x, x_3726.x, x_3726.z, x_3726.z));
            let x_3729 : vec4<f32> = u_xlat14;
            let x_3731 : vec2<f32> = (vec2<f32>(x_3729.y, x_3729.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3732 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3732.x, x_3731.x, x_3732.z, x_3731.y);
            let x_3734 : vec4<f32> = u_xlat14;
            let x_3737 : vec2<f32> = u_xlat64;
            let x_3739 : vec2<f32> = ((vec2<f32>(x_3734.x, x_3734.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3737));
            let x_3740 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3739.x, x_3740.y, x_3739.y, x_3740.w);
            let x_3742 : vec2<f32> = u_xlat64;
            let x_3744 : vec2<f32> = (-(x_3742) + vec2<f32>(1.0f, 1.0f));
            let x_3745 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3744.x, x_3744.y, x_3745.z, x_3745.w);
            let x_3747 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3747, vec2<f32>(0.0f, 0.0f));
            let x_3749 : vec2<f32> = u_xlat66;
            let x_3751 : vec2<f32> = u_xlat66;
            let x_3753 : vec4<f32> = u_xlat14;
            let x_3755 : vec2<f32> = ((-(x_3749) * x_3751) + vec2<f32>(x_3753.x, x_3753.y));
            let x_3756 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3755.x, x_3755.y, x_3756.z, x_3756.w);
            let x_3758 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3758, vec2<f32>(0.0f, 0.0f));
            let x_3761 : vec2<f32> = u_xlat66;
            let x_3763 : vec2<f32> = u_xlat66;
            let x_3765 : vec4<f32> = u_xlat13;
            let x_3767 : vec2<f32> = ((-(x_3761) * x_3763) + vec2<f32>(x_3765.y, x_3765.w));
            let x_3768 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3767.x, x_3768.y, x_3767.y);
            let x_3770 : vec4<f32> = u_xlat14;
            let x_3772 : vec2<f32> = (vec2<f32>(x_3770.x, x_3770.y) + vec2<f32>(2.0f, 2.0f));
            let x_3773 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3772.x, x_3772.y, x_3773.z, x_3773.w);
            let x_3775 : vec3<f32> = u_xlat39;
            let x_3777 : vec2<f32> = (vec2<f32>(x_3775.x, x_3775.z) + vec2<f32>(2.0f, 2.0f));
            let x_3778 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3778.x, x_3777.x, x_3778.z, x_3777.y);
            let x_3781 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3781 * 0.08163200318813323975f);
            let x_3784 : vec4<f32> = u_xlat13;
            let x_3786 : vec3<f32> = (vec3<f32>(x_3784.z, x_3784.x, x_3784.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3787 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3786.x, x_3786.y, x_3786.z, x_3787.w);
            let x_3789 : vec4<f32> = u_xlat14;
            let x_3791 : vec2<f32> = (vec2<f32>(x_3789.x, x_3789.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3792 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3791.x, x_3791.y, x_3792.z, x_3792.w);
            let x_3795 : f32 = u_xlat17.y;
            u_xlat16.x = x_3795;
            let x_3797 : vec2<f32> = u_xlat64;
            let x_3800 : vec2<f32> = ((vec2<f32>(x_3797.x, x_3797.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3801 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3801.x, x_3800.x, x_3801.z, x_3800.y);
            let x_3803 : vec2<f32> = u_xlat64;
            let x_3806 : vec2<f32> = ((vec2<f32>(x_3803.x, x_3803.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3807 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3806.x, x_3807.y, x_3806.y, x_3807.w);
            let x_3810 : f32 = u_xlat13.x;
            u_xlat14.y = x_3810;
            let x_3813 : f32 = u_xlat15.y;
            u_xlat14.w = x_3813;
            let x_3815 : vec4<f32> = u_xlat14;
            let x_3816 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3815 + x_3816);
            let x_3818 : vec2<f32> = u_xlat64;
            let x_3821 : vec2<f32> = ((vec2<f32>(x_3818.y, x_3818.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3822 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3822.x, x_3821.x, x_3822.z, x_3821.y);
            let x_3824 : vec2<f32> = u_xlat64;
            let x_3827 : vec2<f32> = ((vec2<f32>(x_3824.y, x_3824.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3828 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3827.x, x_3828.y, x_3827.y, x_3828.w);
            let x_3831 : f32 = u_xlat13.y;
            u_xlat15.y = x_3831;
            let x_3833 : vec4<f32> = u_xlat15;
            let x_3834 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3833 + x_3834);
            let x_3836 : vec4<f32> = u_xlat14;
            let x_3837 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3836 / x_3837);
            let x_3839 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3839 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3841 : vec4<f32> = u_xlat15;
            let x_3842 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3841 / x_3842);
            let x_3844 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3844 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3846 : vec4<f32> = u_xlat14;
            let x_3849 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3846.w, x_3846.x, x_3846.y, x_3846.z) * vec4<f32>(x_3849.x, x_3849.x, x_3849.x, x_3849.x));
            let x_3852 : vec4<f32> = u_xlat15;
            let x_3855 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3852.x, x_3852.w, x_3852.y, x_3852.z) * vec4<f32>(x_3855.y, x_3855.y, x_3855.y, x_3855.y));
            let x_3858 : vec4<f32> = u_xlat14;
            let x_3859 : vec3<f32> = vec3<f32>(x_3858.y, x_3858.z, x_3858.w);
            let x_3860 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3859.x, x_3860.y, x_3859.y, x_3859.z);
            let x_3863 : f32 = u_xlat15.x;
            u_xlat17.y = x_3863;
            let x_3865 : vec4<f32> = u_xlat12;
            let x_3868 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3871 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3865.x, x_3865.y, x_3865.x, x_3865.y) * vec4<f32>(x_3868.x, x_3868.y, x_3868.x, x_3868.y)) + vec4<f32>(x_3871.x, x_3871.y, x_3871.z, x_3871.y));
            let x_3874 : vec4<f32> = u_xlat12;
            let x_3877 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3880 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3874.x, x_3874.y) * vec2<f32>(x_3877.x, x_3877.y)) + vec2<f32>(x_3880.w, x_3880.y));
            let x_3884 : f32 = u_xlat17.y;
            u_xlat14.y = x_3884;
            let x_3887 : f32 = u_xlat15.z;
            u_xlat17.y = x_3887;
            let x_3889 : vec4<f32> = u_xlat12;
            let x_3892 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3895 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3889.x, x_3889.y, x_3889.x, x_3889.y) * vec4<f32>(x_3892.x, x_3892.y, x_3892.x, x_3892.y)) + vec4<f32>(x_3895.x, x_3895.y, x_3895.z, x_3895.y));
            let x_3898 : vec4<f32> = u_xlat12;
            let x_3901 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3904 : vec4<f32> = u_xlat17;
            let x_3906 : vec2<f32> = ((vec2<f32>(x_3898.x, x_3898.y) * vec2<f32>(x_3901.x, x_3901.y)) + vec2<f32>(x_3904.w, x_3904.y));
            let x_3907 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3906.x, x_3906.y, x_3907.z, x_3907.w);
            let x_3910 : f32 = u_xlat17.y;
            u_xlat14.z = x_3910;
            let x_3913 : vec4<f32> = u_xlat12;
            let x_3916 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3919 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3913.x, x_3913.y, x_3913.x, x_3913.y) * vec4<f32>(x_3916.x, x_3916.y, x_3916.x, x_3916.y)) + vec4<f32>(x_3919.x, x_3919.y, x_3919.x, x_3919.z));
            let x_3923 : f32 = u_xlat15.w;
            u_xlat17.y = x_3923;
            let x_3926 : vec4<f32> = u_xlat12;
            let x_3929 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3932 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3926.x, x_3926.y, x_3926.x, x_3926.y) * vec4<f32>(x_3929.x, x_3929.y, x_3929.x, x_3929.y)) + vec4<f32>(x_3932.x, x_3932.y, x_3932.z, x_3932.y));
            let x_3936 : vec4<f32> = u_xlat12;
            let x_3939 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3942 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3936.x, x_3936.y) * vec2<f32>(x_3939.x, x_3939.y)) + vec2<f32>(x_3942.w, x_3942.y));
            let x_3946 : f32 = u_xlat17.y;
            u_xlat14.w = x_3946;
            let x_3949 : vec4<f32> = u_xlat12;
            let x_3952 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3955 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3949.x, x_3949.y) * vec2<f32>(x_3952.x, x_3952.y)) + vec2<f32>(x_3955.x, x_3955.w));
            let x_3958 : vec4<f32> = u_xlat17;
            let x_3959 : vec3<f32> = vec3<f32>(x_3958.x, x_3958.z, x_3958.w);
            let x_3960 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3959.x, x_3960.y, x_3959.y, x_3959.z);
            let x_3962 : vec4<f32> = u_xlat12;
            let x_3965 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3968 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3962.x, x_3962.y, x_3962.x, x_3962.y) * vec4<f32>(x_3965.x, x_3965.y, x_3965.x, x_3965.y)) + vec4<f32>(x_3968.x, x_3968.y, x_3968.z, x_3968.y));
            let x_3972 : vec4<f32> = u_xlat12;
            let x_3975 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3978 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3972.x, x_3972.y) * vec2<f32>(x_3975.x, x_3975.y)) + vec2<f32>(x_3978.w, x_3978.y));
            let x_3982 : f32 = u_xlat14.x;
            u_xlat15.x = x_3982;
            let x_3984 : vec4<f32> = u_xlat12;
            let x_3987 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3990 : vec4<f32> = u_xlat15;
            let x_3992 : vec2<f32> = ((vec2<f32>(x_3984.x, x_3984.y) * vec2<f32>(x_3987.x, x_3987.y)) + vec2<f32>(x_3990.x, x_3990.y));
            let x_3993 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3992.x, x_3992.y, x_3993.z, x_3993.w);
            let x_3996 : vec4<f32> = u_xlat13;
            let x_3998 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3996.x, x_3996.x, x_3996.x, x_3996.x) * x_3998);
            let x_4001 : vec4<f32> = u_xlat13;
            let x_4003 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4001.y, x_4001.y, x_4001.y, x_4001.y) * x_4003);
            let x_4006 : vec4<f32> = u_xlat13;
            let x_4008 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4006.z, x_4006.z, x_4006.z, x_4006.z) * x_4008);
            let x_4010 : vec4<f32> = u_xlat13;
            let x_4012 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4010.w, x_4010.w, x_4010.w, x_4010.w) * x_4012);
            let x_4015 : vec4<f32> = u_xlat18;
            let x_4016 : vec2<f32> = vec2<f32>(x_4015.x, x_4015.y);
            let x_4018 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_4016.x, x_4016.y, x_4018);
            let x_4025 : vec3<f32> = txVec43;
            let x_4027 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4025.xy, x_4025.z);
            u_xlat86 = x_4027;
            let x_4029 : vec4<f32> = u_xlat18;
            let x_4030 : vec2<f32> = vec2<f32>(x_4029.z, x_4029.w);
            let x_4032 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_4030.x, x_4030.y, x_4032);
            let x_4039 : vec3<f32> = txVec44;
            let x_4041 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4039.xy, x_4039.z);
            u_xlat87 = x_4041;
            let x_4042 : f32 = u_xlat87;
            let x_4044 : f32 = u_xlat23.y;
            u_xlat87 = (x_4042 * x_4044);
            let x_4047 : f32 = u_xlat23.x;
            let x_4048 : f32 = u_xlat86;
            let x_4050 : f32 = u_xlat87;
            u_xlat86 = ((x_4047 * x_4048) + x_4050);
            let x_4053 : vec2<f32> = u_xlat64;
            let x_4055 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_4053.x, x_4053.y, x_4055);
            let x_4062 : vec3<f32> = txVec45;
            let x_4064 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4062.xy, x_4062.z);
            u_xlat87 = x_4064;
            let x_4066 : f32 = u_xlat23.z;
            let x_4067 : f32 = u_xlat87;
            let x_4069 : f32 = u_xlat86;
            u_xlat86 = ((x_4066 * x_4067) + x_4069);
            let x_4072 : vec4<f32> = u_xlat21;
            let x_4073 : vec2<f32> = vec2<f32>(x_4072.x, x_4072.y);
            let x_4075 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_4073.x, x_4073.y, x_4075);
            let x_4082 : vec3<f32> = txVec46;
            let x_4084 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4082.xy, x_4082.z);
            u_xlat87 = x_4084;
            let x_4086 : f32 = u_xlat23.w;
            let x_4087 : f32 = u_xlat87;
            let x_4089 : f32 = u_xlat86;
            u_xlat86 = ((x_4086 * x_4087) + x_4089);
            let x_4092 : vec4<f32> = u_xlat19;
            let x_4093 : vec2<f32> = vec2<f32>(x_4092.x, x_4092.y);
            let x_4095 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_4093.x, x_4093.y, x_4095);
            let x_4102 : vec3<f32> = txVec47;
            let x_4104 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4102.xy, x_4102.z);
            u_xlat87 = x_4104;
            let x_4106 : f32 = u_xlat24.x;
            let x_4107 : f32 = u_xlat87;
            let x_4109 : f32 = u_xlat86;
            u_xlat86 = ((x_4106 * x_4107) + x_4109);
            let x_4112 : vec4<f32> = u_xlat19;
            let x_4113 : vec2<f32> = vec2<f32>(x_4112.z, x_4112.w);
            let x_4115 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_4113.x, x_4113.y, x_4115);
            let x_4122 : vec3<f32> = txVec48;
            let x_4124 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4122.xy, x_4122.z);
            u_xlat87 = x_4124;
            let x_4126 : f32 = u_xlat24.y;
            let x_4127 : f32 = u_xlat87;
            let x_4129 : f32 = u_xlat86;
            u_xlat86 = ((x_4126 * x_4127) + x_4129);
            let x_4132 : vec4<f32> = u_xlat20;
            let x_4133 : vec2<f32> = vec2<f32>(x_4132.x, x_4132.y);
            let x_4135 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_4133.x, x_4133.y, x_4135);
            let x_4142 : vec3<f32> = txVec49;
            let x_4144 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4142.xy, x_4142.z);
            u_xlat87 = x_4144;
            let x_4146 : f32 = u_xlat24.z;
            let x_4147 : f32 = u_xlat87;
            let x_4149 : f32 = u_xlat86;
            u_xlat86 = ((x_4146 * x_4147) + x_4149);
            let x_4152 : vec4<f32> = u_xlat21;
            let x_4153 : vec2<f32> = vec2<f32>(x_4152.z, x_4152.w);
            let x_4155 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_4153.x, x_4153.y, x_4155);
            let x_4162 : vec3<f32> = txVec50;
            let x_4164 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4162.xy, x_4162.z);
            u_xlat87 = x_4164;
            let x_4166 : f32 = u_xlat24.w;
            let x_4167 : f32 = u_xlat87;
            let x_4169 : f32 = u_xlat86;
            u_xlat86 = ((x_4166 * x_4167) + x_4169);
            let x_4172 : vec4<f32> = u_xlat22;
            let x_4173 : vec2<f32> = vec2<f32>(x_4172.x, x_4172.y);
            let x_4175 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_4173.x, x_4173.y, x_4175);
            let x_4182 : vec3<f32> = txVec51;
            let x_4184 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4182.xy, x_4182.z);
            u_xlat87 = x_4184;
            let x_4186 : f32 = u_xlat25.x;
            let x_4187 : f32 = u_xlat87;
            let x_4189 : f32 = u_xlat86;
            u_xlat86 = ((x_4186 * x_4187) + x_4189);
            let x_4192 : vec4<f32> = u_xlat22;
            let x_4193 : vec2<f32> = vec2<f32>(x_4192.z, x_4192.w);
            let x_4195 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_4193.x, x_4193.y, x_4195);
            let x_4202 : vec3<f32> = txVec52;
            let x_4204 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4202.xy, x_4202.z);
            u_xlat87 = x_4204;
            let x_4206 : f32 = u_xlat25.y;
            let x_4207 : f32 = u_xlat87;
            let x_4209 : f32 = u_xlat86;
            u_xlat86 = ((x_4206 * x_4207) + x_4209);
            let x_4212 : vec2<f32> = u_xlat40;
            let x_4214 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_4212.x, x_4212.y, x_4214);
            let x_4221 : vec3<f32> = txVec53;
            let x_4223 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4221.xy, x_4221.z);
            u_xlat87 = x_4223;
            let x_4225 : f32 = u_xlat25.z;
            let x_4226 : f32 = u_xlat87;
            let x_4228 : f32 = u_xlat86;
            u_xlat86 = ((x_4225 * x_4226) + x_4228);
            let x_4231 : vec2<f32> = u_xlat72;
            let x_4233 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_4231.x, x_4231.y, x_4233);
            let x_4240 : vec3<f32> = txVec54;
            let x_4242 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4240.xy, x_4240.z);
            u_xlat87 = x_4242;
            let x_4244 : f32 = u_xlat25.w;
            let x_4245 : f32 = u_xlat87;
            let x_4247 : f32 = u_xlat86;
            u_xlat86 = ((x_4244 * x_4245) + x_4247);
            let x_4250 : vec4<f32> = u_xlat17;
            let x_4251 : vec2<f32> = vec2<f32>(x_4250.x, x_4250.y);
            let x_4253 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_4251.x, x_4251.y, x_4253);
            let x_4260 : vec3<f32> = txVec55;
            let x_4262 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4260.xy, x_4260.z);
            u_xlat87 = x_4262;
            let x_4264 : f32 = u_xlat13.x;
            let x_4265 : f32 = u_xlat87;
            let x_4267 : f32 = u_xlat86;
            u_xlat86 = ((x_4264 * x_4265) + x_4267);
            let x_4270 : vec4<f32> = u_xlat17;
            let x_4271 : vec2<f32> = vec2<f32>(x_4270.z, x_4270.w);
            let x_4273 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_4271.x, x_4271.y, x_4273);
            let x_4280 : vec3<f32> = txVec56;
            let x_4282 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4280.xy, x_4280.z);
            u_xlat87 = x_4282;
            let x_4284 : f32 = u_xlat13.y;
            let x_4285 : f32 = u_xlat87;
            let x_4287 : f32 = u_xlat86;
            u_xlat86 = ((x_4284 * x_4285) + x_4287);
            let x_4290 : vec2<f32> = u_xlat67;
            let x_4292 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_4290.x, x_4290.y, x_4292);
            let x_4299 : vec3<f32> = txVec57;
            let x_4301 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4299.xy, x_4299.z);
            u_xlat87 = x_4301;
            let x_4303 : f32 = u_xlat13.z;
            let x_4304 : f32 = u_xlat87;
            let x_4306 : f32 = u_xlat86;
            u_xlat86 = ((x_4303 * x_4304) + x_4306);
            let x_4309 : vec4<f32> = u_xlat12;
            let x_4310 : vec2<f32> = vec2<f32>(x_4309.x, x_4309.y);
            let x_4312 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_4310.x, x_4310.y, x_4312);
            let x_4319 : vec3<f32> = txVec58;
            let x_4321 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4319.xy, x_4319.z);
            u_xlat87 = x_4321;
            let x_4323 : f32 = u_xlat13.w;
            let x_4324 : f32 = u_xlat87;
            let x_4326 : f32 = u_xlat86;
            u_xlat85 = ((x_4323 * x_4324) + x_4326);
          }
        }
      } else {
        let x_4330 : vec4<f32> = u_xlat11;
        let x_4331 : vec2<f32> = vec2<f32>(x_4330.x, x_4330.y);
        let x_4333 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_4331.x, x_4331.y, x_4333);
        let x_4340 : vec3<f32> = txVec59;
        let x_4342 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4340.xy, x_4340.z);
        u_xlat85 = x_4342;
      }
      let x_4343 : i32 = u_xlati83;
      let x_4345 : f32 = x_833.x_AdditionalShadowParams[x_4343].x;
      u_xlat86 = (1.0f + -(x_4345));
      let x_4348 : f32 = u_xlat85;
      let x_4349 : i32 = u_xlati83;
      let x_4351 : f32 = x_833.x_AdditionalShadowParams[x_4349].x;
      let x_4353 : f32 = u_xlat86;
      u_xlat85 = ((x_4348 * x_4351) + x_4353);
      let x_4356 : f32 = u_xlat11.z;
      u_xlatb86 = (0.0f >= x_4356);
      let x_4360 : f32 = u_xlat11.z;
      u_xlatb87 = (x_4360 >= 1.0f);
      let x_4362 : bool = u_xlatb86;
      let x_4363 : bool = u_xlatb87;
      u_xlatb86 = (x_4362 | x_4363);
      let x_4365 : bool = u_xlatb86;
      let x_4366 : f32 = u_xlat85;
      u_xlat85 = select(x_4366, 1.0f, x_4365);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_4369 : f32 = u_xlat85;
    u_xlat86 = (-(x_4369) + 1.0f);
    let x_4372 : f32 = u_xlat28;
    let x_4373 : f32 = u_xlat86;
    let x_4375 : f32 = u_xlat85;
    u_xlat85 = ((x_4372 * x_4373) + x_4375);
    let x_4378 : i32 = u_xlati83;
    u_xlati86 = (1i << bitcast<u32>((x_4378 & 31i)));
    let x_4381 : i32 = u_xlati86;
    let x_4384 : f32 = x_2448.x_AdditionalLightsCookieEnableBits;
    u_xlati86 = bitcast<i32>((bitcast<u32>(x_4381) & bitcast<u32>(x_4384)));
    let x_4388 : i32 = u_xlati86;
    if ((x_4388 != 0i)) {
      let x_4392 : i32 = u_xlati83;
      let x_4394 : f32 = x_2448.x_AdditionalLightsLightTypes[x_4392].el;
      u_xlati86 = i32(x_4394);
      let x_4397 : i32 = u_xlati86;
      u_xlati87 = select(1i, 0i, (x_4397 != 0i));
      let x_4401 : i32 = u_xlati83;
      u_xlati88 = (x_4401 << bitcast<u32>(2i));
      let x_4403 : i32 = u_xlati87;
      if ((x_4403 != 0i)) {
        let x_4407 : vec3<f32> = vs_TEXCOORD7;
        let x_4409 : i32 = u_xlati88;
        let x_4412 : i32 = u_xlati88;
        let x_4416 : vec4<f32> = x_2448.x_AdditionalLightsWorldToLights[((x_4409 + 1i) / 4i)][((x_4412 + 1i) % 4i)];
        let x_4418 : vec3<f32> = (vec3<f32>(x_4407.y, x_4407.y, x_4407.y) * vec3<f32>(x_4416.x, x_4416.y, x_4416.w));
        let x_4419 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4418.x, x_4418.y, x_4418.z, x_4419.w);
        let x_4421 : i32 = u_xlati88;
        let x_4423 : i32 = u_xlati88;
        let x_4426 : vec4<f32> = x_2448.x_AdditionalLightsWorldToLights[(x_4421 / 4i)][(x_4423 % 4i)];
        let x_4428 : vec3<f32> = vs_TEXCOORD7;
        let x_4431 : vec4<f32> = u_xlat11;
        let x_4433 : vec3<f32> = ((vec3<f32>(x_4426.x, x_4426.y, x_4426.w) * vec3<f32>(x_4428.x, x_4428.x, x_4428.x)) + vec3<f32>(x_4431.x, x_4431.y, x_4431.z));
        let x_4434 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4433.x, x_4433.y, x_4433.z, x_4434.w);
        let x_4436 : i32 = u_xlati88;
        let x_4439 : i32 = u_xlati88;
        let x_4443 : vec4<f32> = x_2448.x_AdditionalLightsWorldToLights[((x_4436 + 2i) / 4i)][((x_4439 + 2i) % 4i)];
        let x_4445 : vec3<f32> = vs_TEXCOORD7;
        let x_4448 : vec4<f32> = u_xlat11;
        let x_4450 : vec3<f32> = ((vec3<f32>(x_4443.x, x_4443.y, x_4443.w) * vec3<f32>(x_4445.z, x_4445.z, x_4445.z)) + vec3<f32>(x_4448.x, x_4448.y, x_4448.z));
        let x_4451 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4450.x, x_4450.y, x_4450.z, x_4451.w);
        let x_4453 : vec4<f32> = u_xlat11;
        let x_4455 : i32 = u_xlati88;
        let x_4458 : i32 = u_xlati88;
        let x_4462 : vec4<f32> = x_2448.x_AdditionalLightsWorldToLights[((x_4455 + 3i) / 4i)][((x_4458 + 3i) % 4i)];
        let x_4464 : vec3<f32> = (vec3<f32>(x_4453.x, x_4453.y, x_4453.z) + vec3<f32>(x_4462.x, x_4462.y, x_4462.w));
        let x_4465 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4464.x, x_4464.y, x_4464.z, x_4465.w);
        let x_4467 : vec4<f32> = u_xlat11;
        let x_4469 : vec4<f32> = u_xlat11;
        let x_4471 : vec2<f32> = (vec2<f32>(x_4467.x, x_4467.y) / vec2<f32>(x_4469.z, x_4469.z));
        let x_4472 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4471.x, x_4471.y, x_4472.z, x_4472.w);
        let x_4474 : vec4<f32> = u_xlat11;
        let x_4477 : vec2<f32> = ((vec2<f32>(x_4474.x, x_4474.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4478 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4477.x, x_4477.y, x_4478.z, x_4478.w);
        let x_4480 : vec4<f32> = u_xlat11;
        let x_4484 : vec2<f32> = clamp(vec2<f32>(x_4480.x, x_4480.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4485 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4484.x, x_4484.y, x_4485.z, x_4485.w);
        let x_4487 : i32 = u_xlati83;
        let x_4489 : vec4<f32> = x_2448.x_AdditionalLightsCookieAtlasUVRects[x_4487];
        let x_4491 : vec4<f32> = u_xlat11;
        let x_4494 : i32 = u_xlati83;
        let x_4496 : vec4<f32> = x_2448.x_AdditionalLightsCookieAtlasUVRects[x_4494];
        let x_4498 : vec2<f32> = ((vec2<f32>(x_4489.x, x_4489.y) * vec2<f32>(x_4491.x, x_4491.y)) + vec2<f32>(x_4496.z, x_4496.w));
        let x_4499 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4498.x, x_4498.y, x_4499.z, x_4499.w);
      } else {
        let x_4502 : i32 = u_xlati86;
        u_xlatb86 = (x_4502 == 1i);
        let x_4504 : bool = u_xlatb86;
        u_xlati86 = select(0i, 1i, x_4504);
        let x_4506 : i32 = u_xlati86;
        if ((x_4506 != 0i)) {
          let x_4511 : vec3<f32> = vs_TEXCOORD7;
          let x_4513 : i32 = u_xlati88;
          let x_4516 : i32 = u_xlati88;
          let x_4520 : vec4<f32> = x_2448.x_AdditionalLightsWorldToLights[((x_4513 + 1i) / 4i)][((x_4516 + 1i) % 4i)];
          u_xlat63 = (vec2<f32>(x_4511.y, x_4511.y) * vec2<f32>(x_4520.x, x_4520.y));
          let x_4523 : i32 = u_xlati88;
          let x_4525 : i32 = u_xlati88;
          let x_4528 : vec4<f32> = x_2448.x_AdditionalLightsWorldToLights[(x_4523 / 4i)][(x_4525 % 4i)];
          let x_4530 : vec3<f32> = vs_TEXCOORD7;
          let x_4533 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4528.x, x_4528.y) * vec2<f32>(x_4530.x, x_4530.x)) + x_4533);
          let x_4535 : i32 = u_xlati88;
          let x_4538 : i32 = u_xlati88;
          let x_4542 : vec4<f32> = x_2448.x_AdditionalLightsWorldToLights[((x_4535 + 2i) / 4i)][((x_4538 + 2i) % 4i)];
          let x_4544 : vec3<f32> = vs_TEXCOORD7;
          let x_4547 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4542.x, x_4542.y) * vec2<f32>(x_4544.z, x_4544.z)) + x_4547);
          let x_4549 : vec2<f32> = u_xlat63;
          let x_4550 : i32 = u_xlati88;
          let x_4553 : i32 = u_xlati88;
          let x_4557 : vec4<f32> = x_2448.x_AdditionalLightsWorldToLights[((x_4550 + 3i) / 4i)][((x_4553 + 3i) % 4i)];
          u_xlat63 = (x_4549 + vec2<f32>(x_4557.x, x_4557.y));
          let x_4560 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4560 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4563 : vec2<f32> = u_xlat63;
          u_xlat63 = fract(x_4563);
          let x_4565 : i32 = u_xlati83;
          let x_4567 : vec4<f32> = x_2448.x_AdditionalLightsCookieAtlasUVRects[x_4565];
          let x_4569 : vec2<f32> = u_xlat63;
          let x_4571 : i32 = u_xlati83;
          let x_4573 : vec4<f32> = x_2448.x_AdditionalLightsCookieAtlasUVRects[x_4571];
          let x_4575 : vec2<f32> = ((vec2<f32>(x_4567.x, x_4567.y) * x_4569) + vec2<f32>(x_4573.z, x_4573.w));
          let x_4576 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4575.x, x_4575.y, x_4576.z, x_4576.w);
        } else {
          let x_4579 : vec3<f32> = vs_TEXCOORD7;
          let x_4581 : i32 = u_xlati88;
          let x_4584 : i32 = u_xlati88;
          let x_4588 : vec4<f32> = x_2448.x_AdditionalLightsWorldToLights[((x_4581 + 1i) / 4i)][((x_4584 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4579.y, x_4579.y, x_4579.y, x_4579.y) * x_4588);
          let x_4590 : i32 = u_xlati88;
          let x_4592 : i32 = u_xlati88;
          let x_4595 : vec4<f32> = x_2448.x_AdditionalLightsWorldToLights[(x_4590 / 4i)][(x_4592 % 4i)];
          let x_4596 : vec3<f32> = vs_TEXCOORD7;
          let x_4599 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4595 * vec4<f32>(x_4596.x, x_4596.x, x_4596.x, x_4596.x)) + x_4599);
          let x_4601 : i32 = u_xlati88;
          let x_4604 : i32 = u_xlati88;
          let x_4608 : vec4<f32> = x_2448.x_AdditionalLightsWorldToLights[((x_4601 + 2i) / 4i)][((x_4604 + 2i) % 4i)];
          let x_4609 : vec3<f32> = vs_TEXCOORD7;
          let x_4612 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4608 * vec4<f32>(x_4609.z, x_4609.z, x_4609.z, x_4609.z)) + x_4612);
          let x_4614 : vec4<f32> = u_xlat12;
          let x_4615 : i32 = u_xlati88;
          let x_4618 : i32 = u_xlati88;
          let x_4622 : vec4<f32> = x_2448.x_AdditionalLightsWorldToLights[((x_4615 + 3i) / 4i)][((x_4618 + 3i) % 4i)];
          u_xlat12 = (x_4614 + x_4622);
          let x_4624 : vec4<f32> = u_xlat12;
          let x_4626 : vec4<f32> = u_xlat12;
          let x_4628 : vec3<f32> = (vec3<f32>(x_4624.x, x_4624.y, x_4624.z) / vec3<f32>(x_4626.w, x_4626.w, x_4626.w));
          let x_4629 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4628.x, x_4628.y, x_4628.z, x_4629.w);
          let x_4631 : vec4<f32> = u_xlat12;
          let x_4633 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(vec3<f32>(x_4631.x, x_4631.y, x_4631.z), vec3<f32>(x_4633.x, x_4633.y, x_4633.z));
          let x_4636 : f32 = u_xlat86;
          u_xlat86 = inverseSqrt(x_4636);
          let x_4638 : f32 = u_xlat86;
          let x_4640 : vec4<f32> = u_xlat12;
          let x_4642 : vec3<f32> = (vec3<f32>(x_4638, x_4638, x_4638) * vec3<f32>(x_4640.x, x_4640.y, x_4640.z));
          let x_4643 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4642.x, x_4642.y, x_4642.z, x_4643.w);
          let x_4645 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(abs(vec3<f32>(x_4645.x, x_4645.y, x_4645.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4650 : f32 = u_xlat86;
          u_xlat86 = max(x_4650, 0.00000099999999747524f);
          let x_4653 : f32 = u_xlat86;
          u_xlat86 = (1.0f / x_4653);
          let x_4655 : f32 = u_xlat86;
          let x_4657 : vec4<f32> = u_xlat12;
          let x_4659 : vec3<f32> = (vec3<f32>(x_4655, x_4655, x_4655) * vec3<f32>(x_4657.z, x_4657.x, x_4657.y));
          let x_4660 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4659.x, x_4659.y, x_4659.z, x_4660.w);
          let x_4663 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4663);
          let x_4667 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4667, 0.0f, 1.0f);
          let x_4671 : vec4<f32> = u_xlat13;
          let x_4673 : vec4<bool> = (vec4<f32>(x_4671.y, x_4671.z, x_4671.y, x_4671.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_4673.x, x_4673.y);
          let x_4676 : bool = u_xlatb63.x;
          if (x_4676) {
            let x_4681 : f32 = u_xlat13.x;
            x_4677 = x_4681;
          } else {
            let x_4684 : f32 = u_xlat13.x;
            x_4677 = -(x_4684);
          }
          let x_4686 : f32 = x_4677;
          u_xlat63.x = x_4686;
          let x_4689 : bool = u_xlatb63.y;
          if (x_4689) {
            let x_4694 : f32 = u_xlat13.x;
            x_4690 = x_4694;
          } else {
            let x_4697 : f32 = u_xlat13.x;
            x_4690 = -(x_4697);
          }
          let x_4699 : f32 = x_4690;
          u_xlat63.y = x_4699;
          let x_4701 : vec4<f32> = u_xlat12;
          let x_4703 : f32 = u_xlat86;
          let x_4706 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4701.x, x_4701.y) * vec2<f32>(x_4703, x_4703)) + x_4706);
          let x_4708 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4708 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4711 : vec2<f32> = u_xlat63;
          u_xlat63 = clamp(x_4711, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4715 : i32 = u_xlati83;
          let x_4717 : vec4<f32> = x_2448.x_AdditionalLightsCookieAtlasUVRects[x_4715];
          let x_4719 : vec2<f32> = u_xlat63;
          let x_4721 : i32 = u_xlati83;
          let x_4723 : vec4<f32> = x_2448.x_AdditionalLightsCookieAtlasUVRects[x_4721];
          let x_4725 : vec2<f32> = ((vec2<f32>(x_4717.x, x_4717.y) * x_4719) + vec2<f32>(x_4723.z, x_4723.w));
          let x_4726 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4725.x, x_4725.y, x_4726.z, x_4726.w);
        }
      }
      let x_4733 : vec4<f32> = u_xlat11;
      let x_4735 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4733.x, x_4733.y), 0.0f);
      u_xlat11 = x_4735;
      let x_4737 : bool = u_xlatb6.y;
      if (x_4737) {
        let x_4742 : f32 = u_xlat11.w;
        x_4738 = x_4742;
      } else {
        let x_4745 : f32 = u_xlat11.x;
        x_4738 = x_4745;
      }
      let x_4746 : f32 = x_4738;
      u_xlat86 = x_4746;
      let x_4748 : bool = u_xlatb6.x;
      if (x_4748) {
        let x_4752 : vec4<f32> = u_xlat11;
        x_4749 = vec3<f32>(x_4752.x, x_4752.y, x_4752.z);
      } else {
        let x_4755 : f32 = u_xlat86;
        x_4749 = vec3<f32>(x_4755, x_4755, x_4755);
      }
      let x_4757 : vec3<f32> = x_4749;
      let x_4758 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4757.x, x_4757.y, x_4757.z, x_4758.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4764 : vec4<f32> = u_xlat11;
    let x_4766 : i32 = u_xlati83;
    let x_4768 : vec4<f32> = x_2942.x_AdditionalLightsColor[x_4766];
    let x_4770 : vec3<f32> = (vec3<f32>(x_4764.x, x_4764.y, x_4764.z) * vec3<f32>(x_4768.x, x_4768.y, x_4768.z));
    let x_4771 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4770.x, x_4770.y, x_4770.z, x_4771.w);
    let x_4774 : f32 = u_xlat58.x;
    let x_4775 : f32 = u_xlat85;
    u_xlat83 = (x_4774 * x_4775);
    let x_4777 : vec4<f32> = u_xlat1;
    let x_4779 : vec4<f32> = u_xlat10;
    u_xlat58.x = dot(vec3<f32>(x_4777.x, x_4777.y, x_4777.z), vec3<f32>(x_4779.x, x_4779.y, x_4779.z));
    let x_4784 : f32 = u_xlat58.x;
    u_xlat58.x = clamp(x_4784, 0.0f, 1.0f);
    let x_4787 : f32 = u_xlat83;
    let x_4789 : f32 = u_xlat58.x;
    u_xlat83 = (x_4787 * x_4789);
    let x_4791 : f32 = u_xlat83;
    let x_4793 : vec4<f32> = u_xlat11;
    let x_4795 : vec3<f32> = (vec3<f32>(x_4791, x_4791, x_4791) * vec3<f32>(x_4793.x, x_4793.y, x_4793.z));
    let x_4796 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4795.x, x_4795.y, x_4795.z, x_4796.w);
    let x_4798 : vec4<f32> = u_xlat9;
    let x_4800 : f32 = u_xlat84;
    let x_4803 : vec4<f32> = u_xlat7;
    let x_4805 : vec3<f32> = ((vec3<f32>(x_4798.x, x_4798.y, x_4798.z) * vec3<f32>(x_4800, x_4800, x_4800)) + vec3<f32>(x_4803.x, x_4803.y, x_4803.z));
    let x_4806 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4805.x, x_4805.y, x_4805.z, x_4806.w);
    let x_4808 : vec4<f32> = u_xlat9;
    let x_4810 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4808.x, x_4808.y, x_4808.z), vec3<f32>(x_4810.x, x_4810.y, x_4810.z));
    let x_4813 : f32 = u_xlat83;
    u_xlat83 = max(x_4813, 1.17549435e-38f);
    let x_4815 : f32 = u_xlat83;
    u_xlat83 = inverseSqrt(x_4815);
    let x_4817 : f32 = u_xlat83;
    let x_4819 : vec4<f32> = u_xlat9;
    let x_4821 : vec3<f32> = (vec3<f32>(x_4817, x_4817, x_4817) * vec3<f32>(x_4819.x, x_4819.y, x_4819.z));
    let x_4822 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4821.x, x_4821.y, x_4821.z, x_4822.w);
    let x_4824 : vec4<f32> = u_xlat1;
    let x_4826 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4824.x, x_4824.y, x_4824.z), vec3<f32>(x_4826.x, x_4826.y, x_4826.z));
    let x_4829 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4829, 0.0f, 1.0f);
    let x_4831 : vec4<f32> = u_xlat10;
    let x_4833 : vec4<f32> = u_xlat9;
    u_xlat58.x = dot(vec3<f32>(x_4831.x, x_4831.y, x_4831.z), vec3<f32>(x_4833.x, x_4833.y, x_4833.z));
    let x_4838 : f32 = u_xlat58.x;
    u_xlat58.x = clamp(x_4838, 0.0f, 1.0f);
    let x_4841 : f32 = u_xlat83;
    let x_4842 : f32 = u_xlat83;
    u_xlat83 = (x_4841 * x_4842);
    let x_4844 : f32 = u_xlat83;
    let x_4846 : f32 = u_xlat0.x;
    u_xlat83 = ((x_4844 * x_4846) + 1.00001001358032226562f);
    let x_4850 : f32 = u_xlat58.x;
    let x_4852 : f32 = u_xlat58.x;
    u_xlat58.x = (x_4850 * x_4852);
    let x_4855 : f32 = u_xlat83;
    let x_4856 : f32 = u_xlat83;
    u_xlat83 = (x_4855 * x_4856);
    let x_4859 : f32 = u_xlat58.x;
    u_xlat58.x = max(x_4859, 0.10000000149011611938f);
    let x_4862 : f32 = u_xlat83;
    let x_4864 : f32 = u_xlat58.x;
    u_xlat83 = (x_4862 * x_4864);
    let x_4866 : f32 = u_xlat81;
    let x_4867 : f32 = u_xlat83;
    u_xlat83 = (x_4866 * x_4867);
    let x_4869 : f32 = u_xlat79;
    let x_4870 : f32 = u_xlat83;
    u_xlat83 = (x_4869 / x_4870);
    let x_4872 : vec4<f32> = u_xlat5;
    let x_4874 : f32 = u_xlat83;
    let x_4877 : vec4<f32> = u_xlat4;
    let x_4879 : vec3<f32> = ((vec3<f32>(x_4872.x, x_4872.y, x_4872.z) * vec3<f32>(x_4874, x_4874, x_4874)) + vec3<f32>(x_4877.x, x_4877.y, x_4877.z));
    let x_4880 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4879.x, x_4879.y, x_4879.z, x_4880.w);
    let x_4882 : vec4<f32> = u_xlat9;
    let x_4884 : vec4<f32> = u_xlat11;
    let x_4887 : vec4<f32> = u_xlat8;
    let x_4889 : vec3<f32> = ((vec3<f32>(x_4882.x, x_4882.y, x_4882.z) * vec3<f32>(x_4884.x, x_4884.y, x_4884.z)) + vec3<f32>(x_4887.x, x_4887.y, x_4887.z));
    let x_4890 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4889.x, x_4889.y, x_4889.z, x_4890.w);

    continuing {
      let x_4892 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4892 + bitcast<u32>(1i));
    }
  }
  let x_4894 : vec4<f32> = u_xlat3;
  let x_4896 : f32 = u_xlat26;
  let x_4899 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_4894.x, x_4894.y, x_4894.z) * vec3<f32>(x_4896, x_4896, x_4896)) + vec3<f32>(x_4899.x, x_4899.z, x_4899.w));
  let x_4902 : vec4<f32> = u_xlat8;
  let x_4904 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4902.x, x_4902.y, x_4902.z) + x_4904);
  let x_4908 : f32 = u_xlat78;
  let x_4910 : vec3<f32> = u_xlat0;
  let x_4911 : vec3<f32> = (vec3<f32>(x_4908, x_4908, x_4908) * x_4910);
  let x_4912 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4911.x, x_4911.y, x_4911.z, x_4912.w);
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


