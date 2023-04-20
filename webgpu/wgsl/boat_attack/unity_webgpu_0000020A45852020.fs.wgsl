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
  /* @offset(80) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
  /* @offset(128) */
  unity_MatrixV : mat4x4<f32>,
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

@group(1) @binding(0) var<uniform> x_113 : PGlobals;

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

var<private> u_xlat82 : f32;

var<private> u_xlatb83 : bool;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(22) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat83 : f32;

var<private> u_xlatb6 : bool;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

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

var<private> u_xlat86 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlatb28 : vec2<bool>;

var<private> u_xlatb54 : bool;

var<private> u_xlat28 : f32;

var<private> u_xlat54 : f32;

@group(1) @binding(5) var<uniform> x_2498 : LightCookies;

@group(0) @binding(14) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(16) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2696 : UnityPerDraw;

var<private> u_xlatu52 : u32;

var<private> u_xlatu83 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati83 : i32;

@group(1) @binding(1) var<uniform> x_3000 : AdditionalLights;

var<private> u_xlat85 : f32;

var<private> u_xlati86 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb86 : bool;

@group(0) @binding(13) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

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

@group(0) @binding(15) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(21) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu81 : u32;

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
  var x_2450 : f32;
  var x_2579 : f32;
  var x_2590 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3134 : f32;
  var x_3144 : f32;
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
  var x_4724 : f32;
  var x_4737 : f32;
  var x_4795 : f32;
  var x_4806 : vec3<f32>;
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
  let x_119 : f32 = x_113.x_GlobalMipBias.x;
  let x_120 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_108.x, x_108.y), x_119);
  u_xlat4 = x_120;
  let x_123 : vec4<f32> = u_xlat4;
  u_xlat78 = dot(x_123, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_134 : vec4<f32> = vs_TEXCOORD1;
  let x_137 : f32 = x_113.x_GlobalMipBias.x;
  let x_138 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_134.x, x_134.y), x_137);
  u_xlat5 = x_138;
  let x_144 : vec4<f32> = vs_TEXCOORD1;
  let x_147 : f32 = x_113.x_GlobalMipBias.x;
  let x_148 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_144.z, x_144.w), x_147);
  u_xlat6 = x_148;
  let x_155 : vec4<f32> = vs_TEXCOORD2;
  let x_158 : f32 = x_113.x_GlobalMipBias.x;
  let x_159 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_155.x, x_155.y), x_158);
  u_xlat7 = x_159;
  let x_165 : vec4<f32> = vs_TEXCOORD2;
  let x_168 : f32 = x_113.x_GlobalMipBias.x;
  let x_169 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_165.z, x_165.w), x_168);
  u_xlat8 = x_169;
  let x_173 : f32 = u_xlat5.w;
  u_xlat9.x = x_173;
  let x_176 : f32 = u_xlat6.w;
  u_xlat9.y = x_176;
  let x_180 : f32 = u_xlat7.w;
  u_xlat9.z = x_180;
  let x_184 : f32 = u_xlat8.w;
  u_xlat9.w = x_184;
  let x_187 : vec4<f32> = u_xlat9;
  let x_190 : f32 = x_13.x_Smoothness0;
  let x_193 : f32 = x_13.x_Smoothness1;
  let x_196 : f32 = x_13.x_Smoothness2;
  let x_199 : f32 = x_13.x_Smoothness3;
  u_xlat10 = (x_187 * vec4<f32>(x_190, x_193, x_196, x_199));
  let x_208 : f32 = x_13.x_NumLayersCount;
  u_xlatb79 = (4.0f >= x_208);
  let x_211 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_211) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_214 : vec4<f32> = u_xlat9;
  let x_215 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_214 + -(x_215));
  let x_218 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_218 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_222 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_222, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_227 : vec4<f32> = u_xlat4;
  let x_231 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_227 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_231);
  let x_234 : vec4<f32> = u_xlat4;
  let x_235 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_234 + -(x_235));
  let x_240 : f32 = u_xlat12.x;
  let x_243 : f32 = x_13.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_240 * x_243);
  let x_247 : f32 = u_xlat12.y;
  let x_250 : f32 = x_13.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_247 * x_250);
  let x_254 : f32 = u_xlat12.z;
  let x_257 : f32 = x_13.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_254 * x_257);
  let x_261 : f32 = u_xlat12.w;
  let x_264 : f32 = x_13.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_261 * x_264);
  let x_267 : vec4<f32> = u_xlat11;
  let x_268 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_267 + x_268);
  let x_270 : bool = u_xlatb79;
  let x_271 : vec4<f32> = u_xlat11;
  let x_272 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_272, x_271, vec4<bool>(x_270, x_270, x_270, x_270));
  let x_277 : vec4<f32> = u_xlat4;
  u_xlat79 = dot(x_277, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_279 : f32 = u_xlat79;
  u_xlat79 = (x_279 + 0.00006103515625f);
  let x_282 : vec4<f32> = u_xlat4;
  let x_283 : f32 = u_xlat79;
  u_xlat4 = (x_282 / vec4<f32>(x_283, x_283, x_283, x_283));
  let x_286 : vec4<f32> = u_xlat4;
  let x_289 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_291 : vec3<f32> = (vec3<f32>(x_286.x, x_286.x, x_286.x) * vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_292 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_294 : vec4<f32> = u_xlat4;
  let x_297 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_299 : vec3<f32> = (vec3<f32>(x_294.y, x_294.y, x_294.y) * vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_302 : vec4<f32> = u_xlat6;
  let x_304 : vec4<f32> = u_xlat12;
  let x_306 : vec3<f32> = (vec3<f32>(x_302.x, x_302.y, x_302.z) * vec3<f32>(x_304.x, x_304.y, x_304.z));
  let x_307 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_309 : vec4<f32> = u_xlat5;
  let x_311 : vec4<f32> = u_xlat11;
  let x_314 : vec4<f32> = u_xlat6;
  let x_316 : vec3<f32> = ((vec3<f32>(x_309.x, x_309.y, x_309.z) * vec3<f32>(x_311.x, x_311.y, x_311.z)) + vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat4;
  let x_322 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_324 : vec3<f32> = (vec3<f32>(x_319.z, x_319.z, x_319.z) * vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_325 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_327 : vec4<f32> = u_xlat7;
  let x_329 : vec4<f32> = u_xlat6;
  let x_332 : vec4<f32> = u_xlat5;
  let x_334 : vec3<f32> = ((vec3<f32>(x_327.x, x_327.y, x_327.z) * vec3<f32>(x_329.x, x_329.y, x_329.z)) + vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat4;
  let x_340 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_342 : vec3<f32> = (vec3<f32>(x_337.w, x_337.w, x_337.w) * vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_343 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_345 : vec4<f32> = u_xlat8;
  let x_347 : vec4<f32> = u_xlat6;
  let x_350 : vec4<f32> = u_xlat5;
  let x_352 : vec3<f32> = ((vec3<f32>(x_345.x, x_345.y, x_345.z) * vec3<f32>(x_347.x, x_347.y, x_347.z)) + vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_360 : vec4<f32> = vs_TEXCOORD1;
  let x_363 : f32 = x_113.x_GlobalMipBias.x;
  let x_364 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_360.x, x_360.y), x_363);
  let x_365 : vec3<f32> = vec3<f32>(x_364.x, x_364.y, x_364.w);
  let x_366 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_369 : f32 = u_xlat6.x;
  let x_371 : f32 = u_xlat6.z;
  u_xlat6.x = (x_369 * x_371);
  let x_374 : vec4<f32> = u_xlat6;
  let x_379 : vec2<f32> = ((vec2<f32>(x_374.x, x_374.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_380 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_379.x, x_379.y, x_380.z, x_380.w);
  let x_382 : vec4<f32> = u_xlat6;
  let x_384 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec2<f32>(x_382.x, x_382.y), vec2<f32>(x_384.x, x_384.y));
  let x_387 : f32 = u_xlat79;
  u_xlat79 = min(x_387, 1.0f);
  let x_389 : f32 = u_xlat79;
  u_xlat79 = (-(x_389) + 1.0f);
  let x_392 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_392);
  let x_394 : f32 = u_xlat79;
  u_xlat7.z = max(x_394, 0.0000000000000001f);
  let x_398 : vec4<f32> = u_xlat6;
  let x_401 : f32 = x_13.x_NormalScale0;
  let x_403 : vec2<f32> = (vec2<f32>(x_398.x, x_398.y) * vec2<f32>(x_401, x_401));
  let x_404 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_403.x, x_403.y, x_404.z, x_404.w);
  let x_410 : vec4<f32> = vs_TEXCOORD1;
  let x_413 : f32 = x_113.x_GlobalMipBias.x;
  let x_414 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_410.z, x_410.w), x_413);
  let x_415 : vec3<f32> = vec3<f32>(x_414.x, x_414.y, x_414.w);
  let x_416 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_419 : f32 = u_xlat6.x;
  let x_421 : f32 = u_xlat6.z;
  u_xlat6.x = (x_419 * x_421);
  let x_424 : vec4<f32> = u_xlat6;
  let x_427 : vec2<f32> = ((vec2<f32>(x_424.x, x_424.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_428 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_427.x, x_427.y, x_428.z, x_428.w);
  let x_430 : vec4<f32> = u_xlat6;
  let x_432 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec2<f32>(x_430.x, x_430.y), vec2<f32>(x_432.x, x_432.y));
  let x_435 : f32 = u_xlat79;
  u_xlat79 = min(x_435, 1.0f);
  let x_437 : f32 = u_xlat79;
  u_xlat79 = (-(x_437) + 1.0f);
  let x_440 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_440);
  let x_442 : f32 = u_xlat79;
  u_xlat8.z = max(x_442, 0.0000000000000001f);
  let x_445 : vec4<f32> = u_xlat6;
  let x_449 : f32 = x_13.x_NormalScale1;
  let x_451 : f32 = x_13.x_NormalScale1;
  let x_452 : vec2<f32> = vec2<f32>(x_449, x_451);
  let x_456 : vec2<f32> = (vec2<f32>(x_445.x, x_445.y) * vec2<f32>(x_452.x, x_452.y));
  let x_457 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_456.x, x_456.y, x_457.z, x_457.w);
  let x_459 : vec4<f32> = u_xlat4;
  let x_461 : vec4<f32> = u_xlat8;
  let x_463 : vec3<f32> = (vec3<f32>(x_459.y, x_459.y, x_459.y) * vec3<f32>(x_461.x, x_461.y, x_461.z));
  let x_464 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
  let x_466 : vec4<f32> = u_xlat4;
  let x_468 : vec4<f32> = u_xlat7;
  let x_471 : vec4<f32> = u_xlat6;
  let x_473 : vec3<f32> = ((vec3<f32>(x_466.x, x_466.x, x_466.x) * vec3<f32>(x_468.x, x_468.y, x_468.z)) + vec3<f32>(x_471.x, x_471.y, x_471.z));
  let x_474 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  let x_480 : vec4<f32> = vs_TEXCOORD2;
  let x_483 : f32 = x_113.x_GlobalMipBias.x;
  let x_484 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_480.x, x_480.y), x_483);
  let x_485 : vec3<f32> = vec3<f32>(x_484.x, x_484.y, x_484.w);
  let x_486 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_489 : f32 = u_xlat7.x;
  let x_491 : f32 = u_xlat7.z;
  u_xlat7.x = (x_489 * x_491);
  let x_494 : vec4<f32> = u_xlat7;
  let x_497 : vec2<f32> = ((vec2<f32>(x_494.x, x_494.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_498 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_497.x, x_497.y, x_498.z, x_498.w);
  let x_500 : vec4<f32> = u_xlat7;
  let x_502 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec2<f32>(x_500.x, x_500.y), vec2<f32>(x_502.x, x_502.y));
  let x_505 : f32 = u_xlat79;
  u_xlat79 = min(x_505, 1.0f);
  let x_507 : f32 = u_xlat79;
  u_xlat79 = (-(x_507) + 1.0f);
  let x_510 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_510);
  let x_512 : f32 = u_xlat79;
  u_xlat8.z = max(x_512, 0.0000000000000001f);
  let x_515 : vec4<f32> = u_xlat7;
  let x_519 : f32 = x_13.x_NormalScale2;
  let x_521 : f32 = x_13.x_NormalScale2;
  let x_522 : vec2<f32> = vec2<f32>(x_519, x_521);
  let x_526 : vec2<f32> = (vec2<f32>(x_515.x, x_515.y) * vec2<f32>(x_522.x, x_522.y));
  let x_527 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_526.x, x_526.y, x_527.z, x_527.w);
  let x_529 : vec4<f32> = u_xlat4;
  let x_531 : vec4<f32> = u_xlat8;
  let x_534 : vec4<f32> = u_xlat6;
  let x_536 : vec3<f32> = ((vec3<f32>(x_529.z, x_529.z, x_529.z) * vec3<f32>(x_531.x, x_531.y, x_531.z)) + vec3<f32>(x_534.x, x_534.y, x_534.z));
  let x_537 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
  let x_543 : vec4<f32> = vs_TEXCOORD2;
  let x_546 : f32 = x_113.x_GlobalMipBias.x;
  let x_547 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_543.z, x_543.w), x_546);
  let x_548 : vec3<f32> = vec3<f32>(x_547.x, x_547.y, x_547.w);
  let x_549 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_552 : f32 = u_xlat7.x;
  let x_554 : f32 = u_xlat7.z;
  u_xlat7.x = (x_552 * x_554);
  let x_557 : vec4<f32> = u_xlat7;
  let x_560 : vec2<f32> = ((vec2<f32>(x_557.x, x_557.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_561 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_560.x, x_560.y, x_561.z, x_561.w);
  let x_563 : vec4<f32> = u_xlat7;
  let x_565 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec2<f32>(x_563.x, x_563.y), vec2<f32>(x_565.x, x_565.y));
  let x_568 : f32 = u_xlat79;
  u_xlat79 = min(x_568, 1.0f);
  let x_570 : f32 = u_xlat79;
  u_xlat79 = (-(x_570) + 1.0f);
  let x_573 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_573);
  let x_575 : f32 = u_xlat79;
  u_xlat8.z = max(x_575, 0.0000000000000001f);
  let x_578 : vec4<f32> = u_xlat7;
  let x_582 : f32 = x_13.x_NormalScale3;
  let x_584 : f32 = x_13.x_NormalScale3;
  let x_585 : vec2<f32> = vec2<f32>(x_582, x_584);
  let x_589 : vec2<f32> = (vec2<f32>(x_578.x, x_578.y) * vec2<f32>(x_585.x, x_585.y));
  let x_590 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_589.x, x_589.y, x_590.z, x_590.w);
  let x_592 : vec4<f32> = u_xlat4;
  let x_594 : vec4<f32> = u_xlat8;
  let x_597 : vec4<f32> = u_xlat6;
  let x_599 : vec3<f32> = ((vec3<f32>(x_592.w, x_592.w, x_592.w) * vec3<f32>(x_594.x, x_594.y, x_594.z)) + vec3<f32>(x_597.x, x_597.y, x_597.z));
  let x_600 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
  let x_603 : f32 = u_xlat6.z;
  u_xlat6.w = (x_603 + 0.00000999999974737875f);
  let x_607 : vec4<f32> = u_xlat6;
  let x_609 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec3<f32>(x_607.x, x_607.y, x_607.w), vec3<f32>(x_609.x, x_609.y, x_609.w));
  let x_612 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_612);
  let x_614 : f32 = u_xlat79;
  let x_616 : vec4<f32> = u_xlat6;
  let x_618 : vec3<f32> = (vec3<f32>(x_614, x_614, x_614) * vec3<f32>(x_616.x, x_616.y, x_616.w));
  let x_619 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
  let x_622 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_622;
  let x_625 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_625;
  let x_628 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_628;
  let x_631 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_631;
  let x_634 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_634;
  let x_637 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_637;
  let x_640 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_640;
  let x_643 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_643;
  let x_645 : vec4<f32> = u_xlat7;
  let x_646 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_645 + x_646);
  let x_649 : f32 = u_xlat0.z;
  u_xlat8.x = x_649;
  let x_652 : f32 = u_xlat1.z;
  u_xlat8.y = x_652;
  let x_655 : f32 = u_xlat2.z;
  u_xlat8.z = x_655;
  let x_658 : f32 = u_xlat3.y;
  u_xlat8.w = x_658;
  let x_660 : vec4<f32> = u_xlat9;
  let x_663 : f32 = x_13.x_Smoothness0;
  let x_665 : f32 = x_13.x_Smoothness1;
  let x_667 : f32 = x_13.x_Smoothness2;
  let x_669 : f32 = x_13.x_Smoothness3;
  let x_672 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_660) * vec4<f32>(x_663, x_665, x_667, x_669)) + x_672);
  let x_676 : f32 = x_13.x_LayerHasMask0;
  let x_679 : f32 = x_13.x_LayerHasMask1;
  let x_682 : f32 = x_13.x_LayerHasMask2;
  let x_685 : f32 = x_13.x_LayerHasMask3;
  let x_687 : vec4<f32> = u_xlat8;
  let x_689 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_676, x_679, x_682, x_685) * x_687) + x_689);
  let x_692 : vec4<f32> = u_xlat4;
  let x_693 : vec4<f32> = u_xlat8;
  u_xlat52 = dot(x_692, x_693);
  let x_696 : f32 = u_xlat0.x;
  u_xlat8.x = x_696;
  let x_699 : f32 = u_xlat1.x;
  u_xlat8.y = x_699;
  let x_702 : f32 = u_xlat2.x;
  u_xlat8.z = x_702;
  let x_705 : f32 = u_xlat3.x;
  u_xlat8.w = x_705;
  let x_707 : vec4<f32> = u_xlat8;
  let x_710 : f32 = x_13.x_Metallic0;
  let x_713 : f32 = x_13.x_Metallic1;
  let x_716 : f32 = x_13.x_Metallic2;
  let x_719 : f32 = x_13.x_Metallic3;
  u_xlat8 = (x_707 + -(vec4<f32>(x_710, x_713, x_716, x_719)));
  let x_724 : f32 = x_13.x_LayerHasMask0;
  let x_726 : f32 = x_13.x_LayerHasMask1;
  let x_728 : f32 = x_13.x_LayerHasMask2;
  let x_730 : f32 = x_13.x_LayerHasMask3;
  let x_732 : vec4<f32> = u_xlat8;
  let x_735 : f32 = x_13.x_Metallic0;
  let x_737 : f32 = x_13.x_Metallic1;
  let x_739 : f32 = x_13.x_Metallic2;
  let x_741 : f32 = x_13.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_724, x_726, x_728, x_730) * x_732) + vec4<f32>(x_735, x_737, x_739, x_741));
  let x_744 : vec4<f32> = u_xlat4;
  let x_745 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_744, x_745);
  let x_749 : f32 = u_xlat0.y;
  u_xlat3.x = x_749;
  let x_752 : f32 = u_xlat1.y;
  u_xlat3.y = x_752;
  let x_755 : f32 = u_xlat2.y;
  u_xlat3.z = x_755;
  let x_757 : vec4<f32> = u_xlat7;
  let x_759 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_757) + x_759);
  let x_762 : f32 = x_13.x_LayerHasMask0;
  let x_764 : f32 = x_13.x_LayerHasMask1;
  let x_766 : f32 = x_13.x_LayerHasMask2;
  let x_768 : f32 = x_13.x_LayerHasMask3;
  let x_770 : vec4<f32> = u_xlat1;
  let x_772 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_762, x_764, x_766, x_768) * x_770) + x_772);
  let x_775 : vec4<f32> = u_xlat4;
  let x_776 : vec4<f32> = u_xlat1;
  u_xlat26 = dot(x_775, x_776);
  let x_778 : vec4<f32> = u_xlat6;
  let x_781 : vec4<f32> = vs_TEXCOORD5;
  let x_783 : vec3<f32> = (vec3<f32>(x_778.y, x_778.y, x_778.y) * vec3<f32>(x_781.x, x_781.y, x_781.z));
  let x_784 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_783.x, x_783.y, x_783.z, x_784.w);
  let x_786 : vec4<f32> = u_xlat6;
  let x_789 : vec4<f32> = vs_TEXCOORD4;
  let x_793 : vec4<f32> = u_xlat1;
  let x_795 : vec3<f32> = ((vec3<f32>(x_786.x, x_786.x, x_786.x) * -(vec3<f32>(x_789.x, x_789.y, x_789.z))) + vec3<f32>(x_793.x, x_793.y, x_793.z));
  let x_796 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_798 : vec4<f32> = u_xlat6;
  let x_801 : vec4<f32> = vs_TEXCOORD3;
  let x_804 : vec4<f32> = u_xlat1;
  let x_806 : vec3<f32> = ((vec3<f32>(x_798.z, x_798.z, x_798.z) * vec3<f32>(x_801.x, x_801.y, x_801.z)) + vec3<f32>(x_804.x, x_804.y, x_804.z));
  let x_807 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  let x_809 : vec4<f32> = u_xlat1;
  let x_811 : vec4<f32> = u_xlat1;
  u_xlat79 = dot(vec3<f32>(x_809.x, x_809.y, x_809.z), vec3<f32>(x_811.x, x_811.y, x_811.z));
  let x_814 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_814);
  let x_816 : f32 = u_xlat79;
  let x_818 : vec4<f32> = u_xlat1;
  let x_820 : vec3<f32> = (vec3<f32>(x_816, x_816, x_816) * vec3<f32>(x_818.x, x_818.y, x_818.z));
  let x_821 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_820.x, x_820.y, x_820.z, x_821.w);
  let x_825 : vec3<f32> = vs_TEXCOORD7;
  let x_835 : vec4<f32> = x_833.x_CascadeShadowSplitSpheres0;
  let x_838 : vec3<f32> = (x_825 + -(vec3<f32>(x_835.x, x_835.y, x_835.z)));
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
  let x_1015 : f32 = vs_TEXCOORD7.y;
  let x_1017 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat79 = (x_1015 * x_1017);
  let x_1020 : f32 = x_113.unity_MatrixV[0i].z;
  let x_1022 : f32 = vs_TEXCOORD7.x;
  let x_1024 : f32 = u_xlat79;
  u_xlat79 = ((x_1020 * x_1022) + x_1024);
  let x_1027 : f32 = x_113.unity_MatrixV[2i].z;
  let x_1029 : f32 = vs_TEXCOORD7.z;
  let x_1031 : f32 = u_xlat79;
  u_xlat79 = ((x_1027 * x_1029) + x_1031);
  let x_1033 : f32 = u_xlat79;
  let x_1035 : f32 = x_113.unity_MatrixV[3i].z;
  u_xlat79 = (x_1033 + x_1035);
  let x_1037 : f32 = u_xlat79;
  let x_1040 : f32 = x_113.x_ProjectionParams.y;
  u_xlat79 = (-(x_1037) + -(x_1040));
  let x_1043 : f32 = u_xlat79;
  u_xlat79 = max(x_1043, 0.0f);
  let x_1045 : f32 = u_xlat79;
  let x_1047 : f32 = x_113.unity_FogParams.x;
  u_xlat79 = (x_1045 * x_1047);
  let x_1054 : vec4<f32> = vs_TEXCOORD0;
  let x_1057 : f32 = x_113.x_GlobalMipBias.x;
  let x_1058 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_1054.z, x_1054.w), x_1057);
  u_xlat3 = x_1058;
  let x_1063 : vec4<f32> = vs_TEXCOORD0;
  let x_1066 : f32 = x_113.x_GlobalMipBias.x;
  let x_1067 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_1063.z, x_1063.w), x_1066);
  let x_1068 : vec3<f32> = vec3<f32>(x_1067.x, x_1067.y, x_1067.z);
  let x_1069 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1069.w);
  let x_1071 : vec4<f32> = u_xlat3;
  let x_1075 : vec3<f32> = (vec3<f32>(x_1071.x, x_1071.y, x_1071.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1076 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1075.x, x_1075.y, x_1075.z, x_1076.w);
  let x_1079 : vec4<f32> = u_xlat1;
  let x_1081 : vec4<f32> = u_xlat3;
  u_xlat80 = dot(vec3<f32>(x_1079.x, x_1079.y, x_1079.z), vec3<f32>(x_1081.x, x_1081.y, x_1081.z));
  let x_1084 : f32 = u_xlat80;
  u_xlat80 = (x_1084 + 0.5f);
  let x_1086 : f32 = u_xlat80;
  let x_1088 : vec4<f32> = u_xlat4;
  let x_1090 : vec3<f32> = (vec3<f32>(x_1086, x_1086, x_1086) * vec3<f32>(x_1088.x, x_1088.y, x_1088.z));
  let x_1091 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1090.x, x_1090.y, x_1090.z, x_1091.w);
  let x_1094 : f32 = u_xlat3.w;
  u_xlat80 = max(x_1094, 0.00009999999747378752f);
  let x_1097 : vec4<f32> = u_xlat3;
  let x_1099 : f32 = u_xlat80;
  let x_1101 : vec3<f32> = (vec3<f32>(x_1097.x, x_1097.y, x_1097.z) / vec3<f32>(x_1099, x_1099, x_1099));
  let x_1102 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1101.x, x_1101.y, x_1101.z, x_1102.w);
  let x_1105 : f32 = u_xlat0.x;
  u_xlat80 = ((-(x_1105) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_1111 : f32 = u_xlat52;
  let x_1112 : f32 = u_xlat80;
  u_xlat81 = (x_1111 + -(x_1112));
  let x_1115 : f32 = u_xlat80;
  let x_1117 : vec4<f32> = u_xlat5;
  let x_1119 : vec3<f32> = (vec3<f32>(x_1115, x_1115, x_1115) * vec3<f32>(x_1117.x, x_1117.y, x_1117.z));
  let x_1120 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1119.x, x_1119.y, x_1119.z, x_1120.w);
  let x_1122 : vec4<f32> = u_xlat5;
  let x_1126 : vec3<f32> = (vec3<f32>(x_1122.x, x_1122.y, x_1122.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_1127 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1126.x, x_1126.y, x_1126.z, x_1127.w);
  let x_1129 : vec3<f32> = u_xlat0;
  let x_1131 : vec4<f32> = u_xlat5;
  let x_1136 : vec3<f32> = ((vec3<f32>(x_1129.x, x_1129.x, x_1129.x) * vec3<f32>(x_1131.x, x_1131.y, x_1131.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_1137 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1136.x, x_1136.y, x_1136.z, x_1137.w);
  let x_1139 : f32 = u_xlat52;
  u_xlat0.x = (-(x_1139) + 1.0f);
  let x_1144 : f32 = u_xlat0.x;
  let x_1146 : f32 = u_xlat0.x;
  u_xlat52 = (x_1144 * x_1146);
  let x_1148 : f32 = u_xlat52;
  u_xlat52 = max(x_1148, 0.0078125f);
  let x_1151 : f32 = u_xlat52;
  let x_1152 : f32 = u_xlat52;
  u_xlat80 = (x_1151 * x_1152);
  let x_1154 : f32 = u_xlat81;
  u_xlat81 = (x_1154 + 1.0f);
  let x_1156 : f32 = u_xlat81;
  u_xlat81 = clamp(x_1156, 0.0f, 1.0f);
  let x_1159 : f32 = u_xlat52;
  u_xlat82 = ((x_1159 * 4.0f) + 2.0f);
  let x_1162 : f32 = u_xlat26;
  u_xlat26 = min(x_1162, 1.0f);
  let x_1166 : f32 = x_833.x_MainLightShadowParams.y;
  u_xlatb83 = (0.0f < x_1166);
  let x_1168 : bool = u_xlatb83;
  if (x_1168) {
    let x_1172 : f32 = x_833.x_MainLightShadowParams.y;
    u_xlatb83 = (x_1172 == 1.0f);
    let x_1174 : bool = u_xlatb83;
    if (x_1174) {
      let x_1177 : vec4<f32> = u_xlat2;
      let x_1180 : vec4<f32> = x_833.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_1177.x, x_1177.y, x_1177.x, x_1177.y) + x_1180);
      let x_1184 : vec4<f32> = u_xlat6;
      let x_1185 : vec2<f32> = vec2<f32>(x_1184.x, x_1184.y);
      let x_1187 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_1185.x, x_1185.y, x_1187);
      let x_1199 : vec3<f32> = txVec0;
      let x_1201 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1199.xy, x_1199.z);
      u_xlat7.x = x_1201;
      let x_1204 : vec4<f32> = u_xlat6;
      let x_1205 : vec2<f32> = vec2<f32>(x_1204.z, x_1204.w);
      let x_1207 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_1205.x, x_1205.y, x_1207);
      let x_1214 : vec3<f32> = txVec1;
      let x_1216 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1214.xy, x_1214.z);
      u_xlat7.y = x_1216;
      let x_1218 : vec4<f32> = u_xlat2;
      let x_1221 : vec4<f32> = x_833.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1218.x, x_1218.y, x_1218.x, x_1218.y) + x_1221);
      let x_1224 : vec4<f32> = u_xlat6;
      let x_1225 : vec2<f32> = vec2<f32>(x_1224.x, x_1224.y);
      let x_1227 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_1225.x, x_1225.y, x_1227);
      let x_1234 : vec3<f32> = txVec2;
      let x_1236 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1234.xy, x_1234.z);
      u_xlat7.z = x_1236;
      let x_1239 : vec4<f32> = u_xlat6;
      let x_1240 : vec2<f32> = vec2<f32>(x_1239.z, x_1239.w);
      let x_1242 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_1240.x, x_1240.y, x_1242);
      let x_1249 : vec3<f32> = txVec3;
      let x_1251 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1249.xy, x_1249.z);
      u_xlat7.w = x_1251;
      let x_1254 : vec4<f32> = u_xlat7;
      u_xlat83 = dot(x_1254, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1261 : f32 = x_833.x_MainLightShadowParams.y;
      u_xlatb6 = (x_1261 == 2.0f);
      let x_1263 : bool = u_xlatb6;
      if (x_1263) {
        let x_1266 : vec4<f32> = u_xlat2;
        let x_1269 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1272 : vec2<f32> = ((vec2<f32>(x_1266.x, x_1266.y) * vec2<f32>(x_1269.z, x_1269.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1273 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1272.x, x_1272.y, x_1273.z, x_1273.w);
        let x_1275 : vec4<f32> = u_xlat6;
        let x_1277 : vec2<f32> = floor(vec2<f32>(x_1275.x, x_1275.y));
        let x_1278 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1277.x, x_1277.y, x_1278.z, x_1278.w);
        let x_1282 : vec4<f32> = u_xlat2;
        let x_1285 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1288 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1282.x, x_1282.y) * vec2<f32>(x_1285.z, x_1285.w)) + -(vec2<f32>(x_1288.x, x_1288.y)));
        let x_1292 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1292.x, x_1292.x, x_1292.y, x_1292.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1296 : vec4<f32> = u_xlat7;
        let x_1298 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1296.x, x_1296.x, x_1296.z, x_1296.z) * vec4<f32>(x_1298.x, x_1298.x, x_1298.z, x_1298.z));
        let x_1301 : vec4<f32> = u_xlat8;
        let x_1305 : vec2<f32> = (vec2<f32>(x_1301.y, x_1301.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1306 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1305.x, x_1306.y, x_1305.y, x_1306.w);
        let x_1308 : vec4<f32> = u_xlat8;
        let x_1311 : vec2<f32> = u_xlat58;
        let x_1313 : vec2<f32> = ((vec2<f32>(x_1308.x, x_1308.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1311));
        let x_1314 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1313.x, x_1313.y, x_1314.z, x_1314.w);
        let x_1317 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_1317) + vec2<f32>(1.0f, 1.0f));
        let x_1321 : vec2<f32> = u_xlat58;
        let x_1323 : vec2<f32> = min(x_1321, vec2<f32>(0.0f, 0.0f));
        let x_1324 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1323.x, x_1323.y, x_1324.z, x_1324.w);
        let x_1326 : vec4<f32> = u_xlat9;
        let x_1329 : vec4<f32> = u_xlat9;
        let x_1332 : vec2<f32> = u_xlat60;
        let x_1333 : vec2<f32> = ((-(vec2<f32>(x_1326.x, x_1326.y)) * vec2<f32>(x_1329.x, x_1329.y)) + x_1332);
        let x_1334 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1333.x, x_1333.y, x_1334.z, x_1334.w);
        let x_1336 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_1336, vec2<f32>(0.0f, 0.0f));
        let x_1338 : vec2<f32> = u_xlat58;
        let x_1340 : vec2<f32> = u_xlat58;
        let x_1342 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_1338) * x_1340) + vec2<f32>(x_1342.y, x_1342.w));
        let x_1345 : vec4<f32> = u_xlat9;
        let x_1347 : vec2<f32> = (vec2<f32>(x_1345.x, x_1345.y) + vec2<f32>(1.0f, 1.0f));
        let x_1348 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1347.x, x_1347.y, x_1348.z, x_1348.w);
        let x_1350 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_1350 + vec2<f32>(1.0f, 1.0f));
        let x_1352 : vec4<f32> = u_xlat8;
        let x_1356 : vec2<f32> = (vec2<f32>(x_1352.x, x_1352.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1357 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1356.x, x_1356.y, x_1357.z, x_1357.w);
        let x_1359 : vec2<f32> = u_xlat60;
        let x_1360 : vec2<f32> = (x_1359 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1361 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1360.x, x_1360.y, x_1361.z, x_1361.w);
        let x_1363 : vec4<f32> = u_xlat9;
        let x_1365 : vec2<f32> = (vec2<f32>(x_1363.x, x_1363.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1366 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1365.x, x_1365.y, x_1366.z, x_1366.w);
        let x_1368 : vec2<f32> = u_xlat58;
        let x_1369 : vec2<f32> = (x_1368 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1370 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1369.x, x_1369.y, x_1370.z, x_1370.w);
        let x_1372 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_1372.y, x_1372.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1376 : f32 = u_xlat9.x;
        u_xlat10.z = x_1376;
        let x_1379 : f32 = u_xlat58.x;
        u_xlat10.w = x_1379;
        let x_1382 : f32 = u_xlat11.x;
        u_xlat8.z = x_1382;
        let x_1385 : f32 = u_xlat7.x;
        u_xlat8.w = x_1385;
        let x_1387 : vec4<f32> = u_xlat8;
        let x_1389 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1387.z, x_1387.w, x_1387.x, x_1387.z) + vec4<f32>(x_1389.z, x_1389.w, x_1389.x, x_1389.z));
        let x_1393 : f32 = u_xlat10.y;
        u_xlat9.z = x_1393;
        let x_1396 : f32 = u_xlat58.y;
        u_xlat9.w = x_1396;
        let x_1399 : f32 = u_xlat8.y;
        u_xlat11.z = x_1399;
        let x_1402 : f32 = u_xlat7.z;
        u_xlat11.w = x_1402;
        let x_1404 : vec4<f32> = u_xlat9;
        let x_1406 : vec4<f32> = u_xlat11;
        let x_1408 : vec3<f32> = (vec3<f32>(x_1404.z, x_1404.y, x_1404.w) + vec3<f32>(x_1406.z, x_1406.y, x_1406.w));
        let x_1409 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1408.x, x_1408.y, x_1408.z, x_1409.w);
        let x_1411 : vec4<f32> = u_xlat8;
        let x_1413 : vec4<f32> = u_xlat12;
        let x_1415 : vec3<f32> = (vec3<f32>(x_1411.x, x_1411.z, x_1411.w) / vec3<f32>(x_1413.z, x_1413.w, x_1413.y));
        let x_1416 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1415.x, x_1415.y, x_1415.z, x_1416.w);
        let x_1418 : vec4<f32> = u_xlat8;
        let x_1423 : vec3<f32> = (vec3<f32>(x_1418.x, x_1418.y, x_1418.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1424 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1423.x, x_1423.y, x_1423.z, x_1424.w);
        let x_1426 : vec4<f32> = u_xlat11;
        let x_1428 : vec4<f32> = u_xlat7;
        let x_1430 : vec3<f32> = (vec3<f32>(x_1426.z, x_1426.y, x_1426.w) / vec3<f32>(x_1428.x, x_1428.y, x_1428.z));
        let x_1431 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1430.x, x_1430.y, x_1430.z, x_1431.w);
        let x_1433 : vec4<f32> = u_xlat9;
        let x_1435 : vec3<f32> = (vec3<f32>(x_1433.x, x_1433.y, x_1433.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1436 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1435.x, x_1435.y, x_1435.z, x_1436.w);
        let x_1438 : vec4<f32> = u_xlat8;
        let x_1441 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1443 : vec3<f32> = (vec3<f32>(x_1438.y, x_1438.x, x_1438.z) * vec3<f32>(x_1441.x, x_1441.x, x_1441.x));
        let x_1444 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1443.x, x_1443.y, x_1443.z, x_1444.w);
        let x_1446 : vec4<f32> = u_xlat9;
        let x_1449 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1451 : vec3<f32> = (vec3<f32>(x_1446.x, x_1446.y, x_1446.z) * vec3<f32>(x_1449.y, x_1449.y, x_1449.y));
        let x_1452 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1451.x, x_1451.y, x_1451.z, x_1452.w);
        let x_1455 : f32 = u_xlat9.x;
        u_xlat8.w = x_1455;
        let x_1457 : vec4<f32> = u_xlat6;
        let x_1460 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1463 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1457.x, x_1457.y, x_1457.x, x_1457.y) * vec4<f32>(x_1460.x, x_1460.y, x_1460.x, x_1460.y)) + vec4<f32>(x_1463.y, x_1463.w, x_1463.x, x_1463.w));
        let x_1466 : vec4<f32> = u_xlat6;
        let x_1469 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1472 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_1466.x, x_1466.y) * vec2<f32>(x_1469.x, x_1469.y)) + vec2<f32>(x_1472.z, x_1472.w));
        let x_1476 : f32 = u_xlat8.y;
        u_xlat9.w = x_1476;
        let x_1478 : vec4<f32> = u_xlat9;
        let x_1479 : vec2<f32> = vec2<f32>(x_1478.y, x_1478.z);
        let x_1480 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1480.x, x_1479.x, x_1480.z, x_1479.y);
        let x_1482 : vec4<f32> = u_xlat6;
        let x_1485 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1488 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1482.x, x_1482.y, x_1482.x, x_1482.y) * vec4<f32>(x_1485.x, x_1485.y, x_1485.x, x_1485.y)) + vec4<f32>(x_1488.x, x_1488.y, x_1488.z, x_1488.y));
        let x_1491 : vec4<f32> = u_xlat6;
        let x_1494 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1497 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1491.x, x_1491.y, x_1491.x, x_1491.y) * vec4<f32>(x_1494.x, x_1494.y, x_1494.x, x_1494.y)) + vec4<f32>(x_1497.w, x_1497.y, x_1497.w, x_1497.z));
        let x_1500 : vec4<f32> = u_xlat6;
        let x_1503 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1506 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1500.x, x_1500.y, x_1500.x, x_1500.y) * vec4<f32>(x_1503.x, x_1503.y, x_1503.x, x_1503.y)) + vec4<f32>(x_1506.x, x_1506.w, x_1506.z, x_1506.w));
        let x_1509 : vec4<f32> = u_xlat7;
        let x_1511 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1509.x, x_1509.x, x_1509.x, x_1509.y) * vec4<f32>(x_1511.z, x_1511.w, x_1511.y, x_1511.z));
        let x_1515 : vec4<f32> = u_xlat7;
        let x_1517 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1515.y, x_1515.y, x_1515.z, x_1515.z) * x_1517);
        let x_1520 : f32 = u_xlat7.z;
        let x_1522 : f32 = u_xlat12.y;
        u_xlat6.x = (x_1520 * x_1522);
        let x_1526 : vec4<f32> = u_xlat10;
        let x_1527 : vec2<f32> = vec2<f32>(x_1526.x, x_1526.y);
        let x_1529 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_1527.x, x_1527.y, x_1529);
        let x_1537 : vec3<f32> = txVec4;
        let x_1539 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1537.xy, x_1537.z);
        u_xlat32 = x_1539;
        let x_1541 : vec4<f32> = u_xlat10;
        let x_1542 : vec2<f32> = vec2<f32>(x_1541.z, x_1541.w);
        let x_1544 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_1542.x, x_1542.y, x_1544);
        let x_1551 : vec3<f32> = txVec5;
        let x_1553 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1551.xy, x_1551.z);
        u_xlat7.x = x_1553;
        let x_1556 : f32 = u_xlat7.x;
        let x_1558 : f32 = u_xlat13.y;
        u_xlat7.x = (x_1556 * x_1558);
        let x_1562 : f32 = u_xlat13.x;
        let x_1563 : f32 = u_xlat32;
        let x_1566 : f32 = u_xlat7.x;
        u_xlat32 = ((x_1562 * x_1563) + x_1566);
        let x_1569 : vec2<f32> = u_xlat58;
        let x_1571 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_1569.x, x_1569.y, x_1571);
        let x_1578 : vec3<f32> = txVec6;
        let x_1580 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1578.xy, x_1578.z);
        u_xlat58.x = x_1580;
        let x_1583 : f32 = u_xlat13.z;
        let x_1585 : f32 = u_xlat58.x;
        let x_1587 : f32 = u_xlat32;
        u_xlat32 = ((x_1583 * x_1585) + x_1587);
        let x_1590 : vec4<f32> = u_xlat9;
        let x_1591 : vec2<f32> = vec2<f32>(x_1590.x, x_1590.y);
        let x_1593 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_1591.x, x_1591.y, x_1593);
        let x_1600 : vec3<f32> = txVec7;
        let x_1602 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1600.xy, x_1600.z);
        u_xlat58.x = x_1602;
        let x_1605 : f32 = u_xlat13.w;
        let x_1607 : f32 = u_xlat58.x;
        let x_1609 : f32 = u_xlat32;
        u_xlat32 = ((x_1605 * x_1607) + x_1609);
        let x_1612 : vec4<f32> = u_xlat11;
        let x_1613 : vec2<f32> = vec2<f32>(x_1612.x, x_1612.y);
        let x_1615 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_1613.x, x_1613.y, x_1615);
        let x_1622 : vec3<f32> = txVec8;
        let x_1624 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1622.xy, x_1622.z);
        u_xlat58.x = x_1624;
        let x_1627 : f32 = u_xlat14.x;
        let x_1629 : f32 = u_xlat58.x;
        let x_1631 : f32 = u_xlat32;
        u_xlat32 = ((x_1627 * x_1629) + x_1631);
        let x_1634 : vec4<f32> = u_xlat11;
        let x_1635 : vec2<f32> = vec2<f32>(x_1634.z, x_1634.w);
        let x_1637 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_1635.x, x_1635.y, x_1637);
        let x_1644 : vec3<f32> = txVec9;
        let x_1646 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1644.xy, x_1644.z);
        u_xlat58.x = x_1646;
        let x_1649 : f32 = u_xlat14.y;
        let x_1651 : f32 = u_xlat58.x;
        let x_1653 : f32 = u_xlat32;
        u_xlat32 = ((x_1649 * x_1651) + x_1653);
        let x_1656 : vec4<f32> = u_xlat9;
        let x_1657 : vec2<f32> = vec2<f32>(x_1656.z, x_1656.w);
        let x_1659 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_1657.x, x_1657.y, x_1659);
        let x_1666 : vec3<f32> = txVec10;
        let x_1668 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1666.xy, x_1666.z);
        u_xlat58.x = x_1668;
        let x_1671 : f32 = u_xlat14.z;
        let x_1673 : f32 = u_xlat58.x;
        let x_1675 : f32 = u_xlat32;
        u_xlat32 = ((x_1671 * x_1673) + x_1675);
        let x_1678 : vec4<f32> = u_xlat8;
        let x_1679 : vec2<f32> = vec2<f32>(x_1678.x, x_1678.y);
        let x_1681 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_1679.x, x_1679.y, x_1681);
        let x_1688 : vec3<f32> = txVec11;
        let x_1690 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1688.xy, x_1688.z);
        u_xlat58.x = x_1690;
        let x_1693 : f32 = u_xlat14.w;
        let x_1695 : f32 = u_xlat58.x;
        let x_1697 : f32 = u_xlat32;
        u_xlat32 = ((x_1693 * x_1695) + x_1697);
        let x_1700 : vec4<f32> = u_xlat8;
        let x_1701 : vec2<f32> = vec2<f32>(x_1700.z, x_1700.w);
        let x_1703 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_1701.x, x_1701.y, x_1703);
        let x_1710 : vec3<f32> = txVec12;
        let x_1712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1710.xy, x_1710.z);
        u_xlat58.x = x_1712;
        let x_1715 : f32 = u_xlat6.x;
        let x_1717 : f32 = u_xlat58.x;
        let x_1719 : f32 = u_xlat32;
        u_xlat83 = ((x_1715 * x_1717) + x_1719);
      } else {
        let x_1722 : vec4<f32> = u_xlat2;
        let x_1725 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1728 : vec2<f32> = ((vec2<f32>(x_1722.x, x_1722.y) * vec2<f32>(x_1725.z, x_1725.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1729 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1728.x, x_1728.y, x_1729.z, x_1729.w);
        let x_1731 : vec4<f32> = u_xlat6;
        let x_1733 : vec2<f32> = floor(vec2<f32>(x_1731.x, x_1731.y));
        let x_1734 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1733.x, x_1733.y, x_1734.z, x_1734.w);
        let x_1736 : vec4<f32> = u_xlat2;
        let x_1739 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1742 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1736.x, x_1736.y) * vec2<f32>(x_1739.z, x_1739.w)) + -(vec2<f32>(x_1742.x, x_1742.y)));
        let x_1746 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1746.x, x_1746.x, x_1746.y, x_1746.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1749 : vec4<f32> = u_xlat7;
        let x_1751 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1749.x, x_1749.x, x_1749.z, x_1749.z) * vec4<f32>(x_1751.x, x_1751.x, x_1751.z, x_1751.z));
        let x_1754 : vec4<f32> = u_xlat8;
        let x_1758 : vec2<f32> = (vec2<f32>(x_1754.y, x_1754.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1759 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1759.x, x_1758.x, x_1759.z, x_1758.y);
        let x_1761 : vec4<f32> = u_xlat8;
        let x_1764 : vec2<f32> = u_xlat58;
        let x_1766 : vec2<f32> = ((vec2<f32>(x_1761.x, x_1761.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1764));
        let x_1767 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1766.x, x_1767.y, x_1766.y, x_1767.w);
        let x_1769 : vec2<f32> = u_xlat58;
        let x_1771 : vec2<f32> = (-(x_1769) + vec2<f32>(1.0f, 1.0f));
        let x_1772 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1771.x, x_1771.y, x_1772.z, x_1772.w);
        let x_1774 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1774, vec2<f32>(0.0f, 0.0f));
        let x_1776 : vec2<f32> = u_xlat60;
        let x_1778 : vec2<f32> = u_xlat60;
        let x_1780 : vec4<f32> = u_xlat8;
        let x_1782 : vec2<f32> = ((-(x_1776) * x_1778) + vec2<f32>(x_1780.x, x_1780.y));
        let x_1783 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1782.x, x_1782.y, x_1783.z, x_1783.w);
        let x_1785 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1785, vec2<f32>(0.0f, 0.0f));
        let x_1788 : vec2<f32> = u_xlat60;
        let x_1790 : vec2<f32> = u_xlat60;
        let x_1792 : vec4<f32> = u_xlat7;
        let x_1794 : vec2<f32> = ((-(x_1788) * x_1790) + vec2<f32>(x_1792.y, x_1792.w));
        let x_1795 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1794.x, x_1795.y, x_1794.y);
        let x_1797 : vec4<f32> = u_xlat8;
        let x_1799 : vec2<f32> = (vec2<f32>(x_1797.x, x_1797.y) + vec2<f32>(2.0f, 2.0f));
        let x_1800 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1799.x, x_1799.y, x_1800.z, x_1800.w);
        let x_1802 : vec3<f32> = u_xlat33;
        let x_1804 : vec2<f32> = (vec2<f32>(x_1802.x, x_1802.z) + vec2<f32>(2.0f, 2.0f));
        let x_1805 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1805.x, x_1804.x, x_1805.z, x_1804.y);
        let x_1808 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1808 * 0.08163200318813323975f);
        let x_1812 : vec4<f32> = u_xlat7;
        let x_1815 : vec3<f32> = (vec3<f32>(x_1812.z, x_1812.x, x_1812.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1816 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1815.x, x_1815.y, x_1815.z, x_1816.w);
        let x_1818 : vec4<f32> = u_xlat8;
        let x_1821 : vec2<f32> = (vec2<f32>(x_1818.x, x_1818.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1822 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1821.x, x_1821.y, x_1822.z, x_1822.w);
        let x_1825 : f32 = u_xlat11.y;
        u_xlat10.x = x_1825;
        let x_1827 : vec2<f32> = u_xlat58;
        let x_1834 : vec2<f32> = ((vec2<f32>(x_1827.x, x_1827.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1835 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1835.x, x_1834.x, x_1835.z, x_1834.y);
        let x_1837 : vec2<f32> = u_xlat58;
        let x_1841 : vec2<f32> = ((vec2<f32>(x_1837.x, x_1837.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1842 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1841.x, x_1842.y, x_1841.y, x_1842.w);
        let x_1845 : f32 = u_xlat7.x;
        u_xlat8.y = x_1845;
        let x_1848 : f32 = u_xlat9.y;
        u_xlat8.w = x_1848;
        let x_1850 : vec4<f32> = u_xlat8;
        let x_1851 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1850 + x_1851);
        let x_1853 : vec2<f32> = u_xlat58;
        let x_1856 : vec2<f32> = ((vec2<f32>(x_1853.y, x_1853.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1857 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1857.x, x_1856.x, x_1857.z, x_1856.y);
        let x_1859 : vec2<f32> = u_xlat58;
        let x_1862 : vec2<f32> = ((vec2<f32>(x_1859.y, x_1859.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1863 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1862.x, x_1863.y, x_1862.y, x_1863.w);
        let x_1866 : f32 = u_xlat7.y;
        u_xlat9.y = x_1866;
        let x_1868 : vec4<f32> = u_xlat9;
        let x_1869 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1868 + x_1869);
        let x_1871 : vec4<f32> = u_xlat8;
        let x_1872 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1871 / x_1872);
        let x_1874 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1874 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1880 : vec4<f32> = u_xlat9;
        let x_1881 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1880 / x_1881);
        let x_1883 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1883 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1885 : vec4<f32> = u_xlat8;
        let x_1888 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1885.w, x_1885.x, x_1885.y, x_1885.z) * vec4<f32>(x_1888.x, x_1888.x, x_1888.x, x_1888.x));
        let x_1891 : vec4<f32> = u_xlat9;
        let x_1894 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1891.x, x_1891.w, x_1891.y, x_1891.z) * vec4<f32>(x_1894.y, x_1894.y, x_1894.y, x_1894.y));
        let x_1897 : vec4<f32> = u_xlat8;
        let x_1898 : vec3<f32> = vec3<f32>(x_1897.y, x_1897.z, x_1897.w);
        let x_1899 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1898.x, x_1899.y, x_1898.y, x_1898.z);
        let x_1902 : f32 = u_xlat9.x;
        u_xlat11.y = x_1902;
        let x_1904 : vec4<f32> = u_xlat6;
        let x_1907 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1910 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1904.x, x_1904.y, x_1904.x, x_1904.y) * vec4<f32>(x_1907.x, x_1907.y, x_1907.x, x_1907.y)) + vec4<f32>(x_1910.x, x_1910.y, x_1910.z, x_1910.y));
        let x_1913 : vec4<f32> = u_xlat6;
        let x_1916 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1919 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1913.x, x_1913.y) * vec2<f32>(x_1916.x, x_1916.y)) + vec2<f32>(x_1919.w, x_1919.y));
        let x_1923 : f32 = u_xlat11.y;
        u_xlat8.y = x_1923;
        let x_1926 : f32 = u_xlat9.z;
        u_xlat11.y = x_1926;
        let x_1928 : vec4<f32> = u_xlat6;
        let x_1931 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1934 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1928.x, x_1928.y, x_1928.x, x_1928.y) * vec4<f32>(x_1931.x, x_1931.y, x_1931.x, x_1931.y)) + vec4<f32>(x_1934.x, x_1934.y, x_1934.z, x_1934.y));
        let x_1937 : vec4<f32> = u_xlat6;
        let x_1940 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1943 : vec4<f32> = u_xlat11;
        let x_1945 : vec2<f32> = ((vec2<f32>(x_1937.x, x_1937.y) * vec2<f32>(x_1940.x, x_1940.y)) + vec2<f32>(x_1943.w, x_1943.y));
        let x_1946 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1945.x, x_1945.y, x_1946.z, x_1946.w);
        let x_1949 : f32 = u_xlat11.y;
        u_xlat8.z = x_1949;
        let x_1952 : vec4<f32> = u_xlat6;
        let x_1955 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1958 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1952.x, x_1952.y, x_1952.x, x_1952.y) * vec4<f32>(x_1955.x, x_1955.y, x_1955.x, x_1955.y)) + vec4<f32>(x_1958.x, x_1958.y, x_1958.x, x_1958.z));
        let x_1962 : f32 = u_xlat9.w;
        u_xlat11.y = x_1962;
        let x_1965 : vec4<f32> = u_xlat6;
        let x_1968 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1971 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1965.x, x_1965.y, x_1965.x, x_1965.y) * vec4<f32>(x_1968.x, x_1968.y, x_1968.x, x_1968.y)) + vec4<f32>(x_1971.x, x_1971.y, x_1971.z, x_1971.y));
        let x_1975 : vec4<f32> = u_xlat6;
        let x_1978 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1981 : vec4<f32> = u_xlat11;
        u_xlat34 = ((vec2<f32>(x_1975.x, x_1975.y) * vec2<f32>(x_1978.x, x_1978.y)) + vec2<f32>(x_1981.w, x_1981.y));
        let x_1985 : f32 = u_xlat11.y;
        u_xlat8.w = x_1985;
        let x_1988 : vec4<f32> = u_xlat6;
        let x_1991 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1994 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1988.x, x_1988.y) * vec2<f32>(x_1991.x, x_1991.y)) + vec2<f32>(x_1994.x, x_1994.w));
        let x_1997 : vec4<f32> = u_xlat11;
        let x_1998 : vec3<f32> = vec3<f32>(x_1997.x, x_1997.z, x_1997.w);
        let x_1999 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1998.x, x_1999.y, x_1998.y, x_1998.z);
        let x_2001 : vec4<f32> = u_xlat6;
        let x_2004 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_2007 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2001.x, x_2001.y, x_2001.x, x_2001.y) * vec4<f32>(x_2004.x, x_2004.y, x_2004.x, x_2004.y)) + vec4<f32>(x_2007.x, x_2007.y, x_2007.z, x_2007.y));
        let x_2011 : vec4<f32> = u_xlat6;
        let x_2014 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_2017 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_2011.x, x_2011.y) * vec2<f32>(x_2014.x, x_2014.y)) + vec2<f32>(x_2017.w, x_2017.y));
        let x_2021 : f32 = u_xlat8.x;
        u_xlat9.x = x_2021;
        let x_2023 : vec4<f32> = u_xlat6;
        let x_2026 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_2029 : vec4<f32> = u_xlat9;
        let x_2031 : vec2<f32> = ((vec2<f32>(x_2023.x, x_2023.y) * vec2<f32>(x_2026.x, x_2026.y)) + vec2<f32>(x_2029.x, x_2029.y));
        let x_2032 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_2031.x, x_2031.y, x_2032.z, x_2032.w);
        let x_2035 : vec4<f32> = u_xlat7;
        let x_2037 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_2035.x, x_2035.x, x_2035.x, x_2035.x) * x_2037);
        let x_2040 : vec4<f32> = u_xlat7;
        let x_2042 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_2040.y, x_2040.y, x_2040.y, x_2040.y) * x_2042);
        let x_2045 : vec4<f32> = u_xlat7;
        let x_2047 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_2045.z, x_2045.z, x_2045.z, x_2045.z) * x_2047);
        let x_2049 : vec4<f32> = u_xlat7;
        let x_2051 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_2049.w, x_2049.w, x_2049.w, x_2049.w) * x_2051);
        let x_2054 : vec4<f32> = u_xlat12;
        let x_2055 : vec2<f32> = vec2<f32>(x_2054.x, x_2054.y);
        let x_2057 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_2055.x, x_2055.y, x_2057);
        let x_2064 : vec3<f32> = txVec13;
        let x_2066 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2064.xy, x_2064.z);
        u_xlat8.x = x_2066;
        let x_2069 : vec4<f32> = u_xlat12;
        let x_2070 : vec2<f32> = vec2<f32>(x_2069.z, x_2069.w);
        let x_2072 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_2070.x, x_2070.y, x_2072);
        let x_2080 : vec3<f32> = txVec14;
        let x_2082 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2080.xy, x_2080.z);
        u_xlat86 = x_2082;
        let x_2083 : f32 = u_xlat86;
        let x_2085 : f32 = u_xlat17.y;
        u_xlat86 = (x_2083 * x_2085);
        let x_2088 : f32 = u_xlat17.x;
        let x_2090 : f32 = u_xlat8.x;
        let x_2092 : f32 = u_xlat86;
        u_xlat8.x = ((x_2088 * x_2090) + x_2092);
        let x_2096 : vec2<f32> = u_xlat58;
        let x_2098 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_2096.x, x_2096.y, x_2098);
        let x_2105 : vec3<f32> = txVec15;
        let x_2107 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2105.xy, x_2105.z);
        u_xlat58.x = x_2107;
        let x_2110 : f32 = u_xlat17.z;
        let x_2112 : f32 = u_xlat58.x;
        let x_2115 : f32 = u_xlat8.x;
        u_xlat58.x = ((x_2110 * x_2112) + x_2115);
        let x_2119 : vec4<f32> = u_xlat15;
        let x_2120 : vec2<f32> = vec2<f32>(x_2119.x, x_2119.y);
        let x_2122 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_2120.x, x_2120.y, x_2122);
        let x_2130 : vec3<f32> = txVec16;
        let x_2132 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2130.xy, x_2130.z);
        u_xlat84 = x_2132;
        let x_2134 : f32 = u_xlat17.w;
        let x_2135 : f32 = u_xlat84;
        let x_2138 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2134 * x_2135) + x_2138);
        let x_2142 : vec4<f32> = u_xlat13;
        let x_2143 : vec2<f32> = vec2<f32>(x_2142.x, x_2142.y);
        let x_2145 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_2143.x, x_2143.y, x_2145);
        let x_2152 : vec3<f32> = txVec17;
        let x_2154 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2152.xy, x_2152.z);
        u_xlat84 = x_2154;
        let x_2156 : f32 = u_xlat18.x;
        let x_2157 : f32 = u_xlat84;
        let x_2160 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2156 * x_2157) + x_2160);
        let x_2164 : vec4<f32> = u_xlat13;
        let x_2165 : vec2<f32> = vec2<f32>(x_2164.z, x_2164.w);
        let x_2167 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_2165.x, x_2165.y, x_2167);
        let x_2174 : vec3<f32> = txVec18;
        let x_2176 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2174.xy, x_2174.z);
        u_xlat84 = x_2176;
        let x_2178 : f32 = u_xlat18.y;
        let x_2179 : f32 = u_xlat84;
        let x_2182 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2178 * x_2179) + x_2182);
        let x_2186 : vec4<f32> = u_xlat14;
        let x_2187 : vec2<f32> = vec2<f32>(x_2186.x, x_2186.y);
        let x_2189 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_2187.x, x_2187.y, x_2189);
        let x_2196 : vec3<f32> = txVec19;
        let x_2198 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2196.xy, x_2196.z);
        u_xlat84 = x_2198;
        let x_2200 : f32 = u_xlat18.z;
        let x_2201 : f32 = u_xlat84;
        let x_2204 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2200 * x_2201) + x_2204);
        let x_2208 : vec4<f32> = u_xlat15;
        let x_2209 : vec2<f32> = vec2<f32>(x_2208.z, x_2208.w);
        let x_2211 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_2209.x, x_2209.y, x_2211);
        let x_2218 : vec3<f32> = txVec20;
        let x_2220 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2218.xy, x_2218.z);
        u_xlat84 = x_2220;
        let x_2222 : f32 = u_xlat18.w;
        let x_2223 : f32 = u_xlat84;
        let x_2226 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2222 * x_2223) + x_2226);
        let x_2230 : vec4<f32> = u_xlat16;
        let x_2231 : vec2<f32> = vec2<f32>(x_2230.x, x_2230.y);
        let x_2233 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_2231.x, x_2231.y, x_2233);
        let x_2240 : vec3<f32> = txVec21;
        let x_2242 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2240.xy, x_2240.z);
        u_xlat84 = x_2242;
        let x_2244 : f32 = u_xlat19.x;
        let x_2245 : f32 = u_xlat84;
        let x_2248 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2244 * x_2245) + x_2248);
        let x_2252 : vec4<f32> = u_xlat16;
        let x_2253 : vec2<f32> = vec2<f32>(x_2252.z, x_2252.w);
        let x_2255 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_2253.x, x_2253.y, x_2255);
        let x_2262 : vec3<f32> = txVec22;
        let x_2264 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2262.xy, x_2262.z);
        u_xlat84 = x_2264;
        let x_2266 : f32 = u_xlat19.y;
        let x_2267 : f32 = u_xlat84;
        let x_2270 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2266 * x_2267) + x_2270);
        let x_2274 : vec2<f32> = u_xlat34;
        let x_2276 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_2274.x, x_2274.y, x_2276);
        let x_2283 : vec3<f32> = txVec23;
        let x_2285 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2283.xy, x_2283.z);
        u_xlat84 = x_2285;
        let x_2287 : f32 = u_xlat19.z;
        let x_2288 : f32 = u_xlat84;
        let x_2291 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2287 * x_2288) + x_2291);
        let x_2295 : vec2<f32> = u_xlat66;
        let x_2297 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_2295.x, x_2295.y, x_2297);
        let x_2304 : vec3<f32> = txVec24;
        let x_2306 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2304.xy, x_2304.z);
        u_xlat84 = x_2306;
        let x_2308 : f32 = u_xlat19.w;
        let x_2309 : f32 = u_xlat84;
        let x_2312 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2308 * x_2309) + x_2312);
        let x_2316 : vec4<f32> = u_xlat11;
        let x_2317 : vec2<f32> = vec2<f32>(x_2316.x, x_2316.y);
        let x_2319 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_2317.x, x_2317.y, x_2319);
        let x_2326 : vec3<f32> = txVec25;
        let x_2328 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2326.xy, x_2326.z);
        u_xlat84 = x_2328;
        let x_2330 : f32 = u_xlat7.x;
        let x_2331 : f32 = u_xlat84;
        let x_2334 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2330 * x_2331) + x_2334);
        let x_2338 : vec4<f32> = u_xlat11;
        let x_2339 : vec2<f32> = vec2<f32>(x_2338.z, x_2338.w);
        let x_2341 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_2339.x, x_2339.y, x_2341);
        let x_2348 : vec3<f32> = txVec26;
        let x_2350 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2348.xy, x_2348.z);
        u_xlat84 = x_2350;
        let x_2352 : f32 = u_xlat7.y;
        let x_2353 : f32 = u_xlat84;
        let x_2356 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2352 * x_2353) + x_2356);
        let x_2360 : vec2<f32> = u_xlat61;
        let x_2362 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_2360.x, x_2360.y, x_2362);
        let x_2369 : vec3<f32> = txVec27;
        let x_2371 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2369.xy, x_2369.z);
        u_xlat84 = x_2371;
        let x_2373 : f32 = u_xlat7.z;
        let x_2374 : f32 = u_xlat84;
        let x_2377 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2373 * x_2374) + x_2377);
        let x_2381 : vec4<f32> = u_xlat6;
        let x_2382 : vec2<f32> = vec2<f32>(x_2381.x, x_2381.y);
        let x_2384 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_2382.x, x_2382.y, x_2384);
        let x_2391 : vec3<f32> = txVec28;
        let x_2393 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2391.xy, x_2391.z);
        u_xlat6.x = x_2393;
        let x_2396 : f32 = u_xlat7.w;
        let x_2398 : f32 = u_xlat6.x;
        let x_2401 : f32 = u_xlat58.x;
        u_xlat83 = ((x_2396 * x_2398) + x_2401);
      }
    }
  } else {
    let x_2405 : vec4<f32> = u_xlat2;
    let x_2406 : vec2<f32> = vec2<f32>(x_2405.x, x_2405.y);
    let x_2408 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_2406.x, x_2406.y, x_2408);
    let x_2415 : vec3<f32> = txVec29;
    let x_2417 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2415.xy, x_2415.z);
    u_xlat83 = x_2417;
  }
  let x_2419 : f32 = x_833.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_2419) + 1.0f);
  let x_2423 : f32 = u_xlat83;
  let x_2425 : f32 = x_833.x_MainLightShadowParams.x;
  let x_2428 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2423 * x_2425) + x_2428);
  let x_2435 : f32 = u_xlat2.z;
  u_xlatb28.x = (0.0f >= x_2435);
  let x_2440 : f32 = u_xlat2.z;
  u_xlatb54 = (x_2440 >= 1.0f);
  let x_2442 : bool = u_xlatb54;
  let x_2444 : bool = u_xlatb28.x;
  u_xlatb28.x = (x_2442 | x_2444);
  let x_2448 : bool = u_xlatb28.x;
  if (x_2448) {
    x_2450 = 1.0f;
  } else {
    let x_2455 : f32 = u_xlat2.x;
    x_2450 = x_2455;
  }
  let x_2456 : f32 = x_2450;
  u_xlat2.x = x_2456;
  let x_2458 : vec3<f32> = vs_TEXCOORD7;
  let x_2461 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  let x_2463 : vec3<f32> = (x_2458 + -(x_2461));
  let x_2464 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2463.x, x_2463.y, x_2463.z, x_2464.w);
  let x_2467 : vec4<f32> = u_xlat6;
  let x_2469 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_2467.x, x_2467.y, x_2467.z), vec3<f32>(x_2469.x, x_2469.y, x_2469.z));
  let x_2473 : f32 = u_xlat28;
  let x_2475 : f32 = x_833.x_MainLightShadowParams.z;
  let x_2478 : f32 = x_833.x_MainLightShadowParams.w;
  u_xlat54 = ((x_2473 * x_2475) + x_2478);
  let x_2480 : f32 = u_xlat54;
  u_xlat54 = clamp(x_2480, 0.0f, 1.0f);
  let x_2483 : f32 = u_xlat2.x;
  u_xlat83 = (-(x_2483) + 1.0f);
  let x_2486 : f32 = u_xlat54;
  let x_2487 : f32 = u_xlat83;
  let x_2490 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2486 * x_2487) + x_2490);
  let x_2500 : f32 = x_2498.x_MainLightCookieTextureFormat;
  u_xlatb54 = !((x_2500 == -1.0f));
  let x_2502 : bool = u_xlatb54;
  if (x_2502) {
    let x_2505 : vec3<f32> = vs_TEXCOORD7;
    let x_2508 : vec4<f32> = x_2498.x_MainLightWorldToLight[1i];
    let x_2510 : vec2<f32> = (vec2<f32>(x_2505.y, x_2505.y) * vec2<f32>(x_2508.x, x_2508.y));
    let x_2511 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2510.x, x_2510.y, x_2511.z, x_2511.w);
    let x_2514 : vec4<f32> = x_2498.x_MainLightWorldToLight[0i];
    let x_2516 : vec3<f32> = vs_TEXCOORD7;
    let x_2519 : vec4<f32> = u_xlat6;
    let x_2521 : vec2<f32> = ((vec2<f32>(x_2514.x, x_2514.y) * vec2<f32>(x_2516.x, x_2516.x)) + vec2<f32>(x_2519.x, x_2519.y));
    let x_2522 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2521.x, x_2521.y, x_2522.z, x_2522.w);
    let x_2525 : vec4<f32> = x_2498.x_MainLightWorldToLight[2i];
    let x_2527 : vec3<f32> = vs_TEXCOORD7;
    let x_2530 : vec4<f32> = u_xlat6;
    let x_2532 : vec2<f32> = ((vec2<f32>(x_2525.x, x_2525.y) * vec2<f32>(x_2527.z, x_2527.z)) + vec2<f32>(x_2530.x, x_2530.y));
    let x_2533 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2532.x, x_2532.y, x_2533.z, x_2533.w);
    let x_2535 : vec4<f32> = u_xlat6;
    let x_2538 : vec4<f32> = x_2498.x_MainLightWorldToLight[3i];
    let x_2540 : vec2<f32> = (vec2<f32>(x_2535.x, x_2535.y) + vec2<f32>(x_2538.x, x_2538.y));
    let x_2541 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2540.x, x_2540.y, x_2541.z, x_2541.w);
    let x_2543 : vec4<f32> = u_xlat6;
    let x_2546 : vec2<f32> = ((vec2<f32>(x_2543.x, x_2543.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2547 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2546.x, x_2546.y, x_2547.z, x_2547.w);
    let x_2554 : vec4<f32> = u_xlat6;
    let x_2557 : f32 = x_113.x_GlobalMipBias.x;
    let x_2558 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2554.x, x_2554.y), x_2557);
    u_xlat6 = x_2558;
    let x_2561 : f32 = x_2498.x_MainLightCookieTextureFormat;
    let x_2563 : f32 = x_2498.x_MainLightCookieTextureFormat;
    let x_2565 : f32 = x_2498.x_MainLightCookieTextureFormat;
    let x_2567 : f32 = x_2498.x_MainLightCookieTextureFormat;
    let x_2568 : vec4<f32> = vec4<f32>(x_2561, x_2563, x_2565, x_2567);
    let x_2575 : vec4<bool> = (vec4<f32>(x_2568.x, x_2568.y, x_2568.z, x_2568.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2575.x, x_2575.y);
    let x_2578 : bool = u_xlatb7.y;
    if (x_2578) {
      let x_2583 : f32 = u_xlat6.w;
      x_2579 = x_2583;
    } else {
      let x_2586 : f32 = u_xlat6.x;
      x_2579 = x_2586;
    }
    let x_2587 : f32 = x_2579;
    u_xlat54 = x_2587;
    let x_2589 : bool = u_xlatb7.x;
    if (x_2589) {
      let x_2593 : vec4<f32> = u_xlat6;
      x_2590 = vec3<f32>(x_2593.x, x_2593.y, x_2593.z);
    } else {
      let x_2596 : f32 = u_xlat54;
      x_2590 = vec3<f32>(x_2596, x_2596, x_2596);
    }
    let x_2598 : vec3<f32> = x_2590;
    let x_2599 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2598.x, x_2598.y, x_2598.z, x_2599.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2605 : vec4<f32> = u_xlat6;
  let x_2608 : vec4<f32> = x_113.x_MainLightColor;
  let x_2610 : vec3<f32> = (vec3<f32>(x_2605.x, x_2605.y, x_2605.z) * vec3<f32>(x_2608.x, x_2608.y, x_2608.z));
  let x_2611 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2610.x, x_2610.y, x_2610.z, x_2611.w);
  let x_2614 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_2614;
  let x_2617 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_2617;
  let x_2620 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_2620;
  let x_2622 : vec4<f32> = u_xlat7;
  let x_2625 : vec4<f32> = u_xlat1;
  u_xlat54 = dot(-(vec3<f32>(x_2622.x, x_2622.y, x_2622.z)), vec3<f32>(x_2625.x, x_2625.y, x_2625.z));
  let x_2628 : f32 = u_xlat54;
  let x_2629 : f32 = u_xlat54;
  u_xlat54 = (x_2628 + x_2629);
  let x_2631 : vec4<f32> = u_xlat1;
  let x_2633 : f32 = u_xlat54;
  let x_2637 : vec4<f32> = u_xlat7;
  let x_2640 : vec3<f32> = ((vec3<f32>(x_2631.x, x_2631.y, x_2631.z) * -(vec3<f32>(x_2633, x_2633, x_2633))) + -(vec3<f32>(x_2637.x, x_2637.y, x_2637.z)));
  let x_2641 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2640.x, x_2640.y, x_2640.z, x_2641.w);
  let x_2643 : vec4<f32> = u_xlat1;
  let x_2645 : vec4<f32> = u_xlat7;
  u_xlat54 = dot(vec3<f32>(x_2643.x, x_2643.y, x_2643.z), vec3<f32>(x_2645.x, x_2645.y, x_2645.z));
  let x_2648 : f32 = u_xlat54;
  u_xlat54 = clamp(x_2648, 0.0f, 1.0f);
  let x_2650 : f32 = u_xlat54;
  u_xlat54 = (-(x_2650) + 1.0f);
  let x_2653 : f32 = u_xlat54;
  let x_2654 : f32 = u_xlat54;
  u_xlat54 = (x_2653 * x_2654);
  let x_2656 : f32 = u_xlat54;
  let x_2657 : f32 = u_xlat54;
  u_xlat54 = (x_2656 * x_2657);
  let x_2660 : f32 = u_xlat0.x;
  u_xlat83 = ((-(x_2660) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2667 : f32 = u_xlat0.x;
  let x_2668 : f32 = u_xlat83;
  u_xlat0.x = (x_2667 * x_2668);
  let x_2672 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2672 * 6.0f);
  let x_2684 : vec4<f32> = u_xlat8;
  let x_2687 : f32 = u_xlat0.x;
  let x_2688 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2684.x, x_2684.y, x_2684.z), x_2687);
  u_xlat8 = x_2688;
  let x_2690 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2690 + -1.0f);
  let x_2698 : f32 = x_2696.unity_SpecCube0_HDR.w;
  let x_2700 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2698 * x_2700) + 1.0f);
  let x_2705 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2705, 0.0f);
  let x_2709 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2709);
  let x_2713 : f32 = u_xlat0.x;
  let x_2715 : f32 = x_2696.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2713 * x_2715);
  let x_2719 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2719);
  let x_2723 : f32 = u_xlat0.x;
  let x_2725 : f32 = x_2696.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2723 * x_2725);
  let x_2728 : vec4<f32> = u_xlat8;
  let x_2730 : vec3<f32> = u_xlat0;
  let x_2732 : vec3<f32> = (vec3<f32>(x_2728.x, x_2728.y, x_2728.z) * vec3<f32>(x_2730.x, x_2730.x, x_2730.x));
  let x_2733 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2732.x, x_2732.y, x_2732.z, x_2733.w);
  let x_2735 : f32 = u_xlat52;
  let x_2737 : f32 = u_xlat52;
  let x_2741 : vec2<f32> = ((vec2<f32>(x_2735, x_2735) * vec2<f32>(x_2737, x_2737)) + vec2<f32>(-1.0f, 1.0f));
  let x_2742 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2741.x, x_2742.y, x_2741.y);
  let x_2745 : f32 = u_xlat0.z;
  u_xlat52 = (1.0f / x_2745);
  let x_2747 : vec4<f32> = u_xlat5;
  let x_2750 : f32 = u_xlat81;
  let x_2752 : vec3<f32> = (-(vec3<f32>(x_2747.x, x_2747.y, x_2747.z)) + vec3<f32>(x_2750, x_2750, x_2750));
  let x_2753 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2752.x, x_2752.y, x_2752.z, x_2753.w);
  let x_2755 : f32 = u_xlat54;
  let x_2757 : vec4<f32> = u_xlat9;
  let x_2760 : vec4<f32> = u_xlat5;
  let x_2762 : vec3<f32> = ((vec3<f32>(x_2755, x_2755, x_2755) * vec3<f32>(x_2757.x, x_2757.y, x_2757.z)) + vec3<f32>(x_2760.x, x_2760.y, x_2760.z));
  let x_2763 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2762.x, x_2762.y, x_2762.z, x_2763.w);
  let x_2765 : f32 = u_xlat52;
  let x_2767 : vec4<f32> = u_xlat9;
  let x_2769 : vec3<f32> = (vec3<f32>(x_2765, x_2765, x_2765) * vec3<f32>(x_2767.x, x_2767.y, x_2767.z));
  let x_2770 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2769.x, x_2769.y, x_2769.z, x_2770.w);
  let x_2772 : vec4<f32> = u_xlat8;
  let x_2774 : vec4<f32> = u_xlat9;
  let x_2776 : vec3<f32> = (vec3<f32>(x_2772.x, x_2772.y, x_2772.z) * vec3<f32>(x_2774.x, x_2774.y, x_2774.z));
  let x_2777 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2776.x, x_2776.y, x_2776.z, x_2777.w);
  let x_2779 : vec4<f32> = u_xlat3;
  let x_2781 : vec4<f32> = u_xlat4;
  let x_2784 : vec4<f32> = u_xlat8;
  let x_2786 : vec3<f32> = ((vec3<f32>(x_2779.x, x_2779.y, x_2779.z) * vec3<f32>(x_2781.x, x_2781.y, x_2781.z)) + vec3<f32>(x_2784.x, x_2784.y, x_2784.z));
  let x_2787 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2786.x, x_2786.y, x_2786.z, x_2787.w);
  let x_2790 : f32 = u_xlat2.x;
  let x_2792 : f32 = x_2696.unity_LightData.z;
  u_xlat52 = (x_2790 * x_2792);
  let x_2794 : vec4<f32> = u_xlat1;
  let x_2797 : vec4<f32> = x_113.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_2794.x, x_2794.y, x_2794.z), vec3<f32>(x_2797.x, x_2797.y, x_2797.z));
  let x_2802 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2802, 0.0f, 1.0f);
  let x_2805 : f32 = u_xlat52;
  let x_2807 : f32 = u_xlat2.x;
  u_xlat52 = (x_2805 * x_2807);
  let x_2809 : f32 = u_xlat52;
  let x_2811 : vec4<f32> = u_xlat6;
  let x_2813 : vec3<f32> = (vec3<f32>(x_2809, x_2809, x_2809) * vec3<f32>(x_2811.x, x_2811.y, x_2811.z));
  let x_2814 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2813.x, x_2813.y, x_2813.z, x_2814.w);
  let x_2816 : vec4<f32> = u_xlat7;
  let x_2819 : vec4<f32> = x_113.x_MainLightPosition;
  let x_2821 : vec3<f32> = (vec3<f32>(x_2816.x, x_2816.y, x_2816.z) + vec3<f32>(x_2819.x, x_2819.y, x_2819.z));
  let x_2822 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2821.x, x_2821.y, x_2821.z, x_2822.w);
  let x_2824 : vec4<f32> = u_xlat8;
  let x_2826 : vec4<f32> = u_xlat8;
  u_xlat52 = dot(vec3<f32>(x_2824.x, x_2824.y, x_2824.z), vec3<f32>(x_2826.x, x_2826.y, x_2826.z));
  let x_2829 : f32 = u_xlat52;
  u_xlat52 = max(x_2829, 1.17549435e-38f);
  let x_2832 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_2832);
  let x_2834 : f32 = u_xlat52;
  let x_2836 : vec4<f32> = u_xlat8;
  let x_2838 : vec3<f32> = (vec3<f32>(x_2834, x_2834, x_2834) * vec3<f32>(x_2836.x, x_2836.y, x_2836.z));
  let x_2839 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2838.x, x_2838.y, x_2838.z, x_2839.w);
  let x_2841 : vec4<f32> = u_xlat1;
  let x_2843 : vec4<f32> = u_xlat8;
  u_xlat52 = dot(vec3<f32>(x_2841.x, x_2841.y, x_2841.z), vec3<f32>(x_2843.x, x_2843.y, x_2843.z));
  let x_2846 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2846, 0.0f, 1.0f);
  let x_2849 : vec4<f32> = x_113.x_MainLightPosition;
  let x_2851 : vec4<f32> = u_xlat8;
  u_xlat2.x = dot(vec3<f32>(x_2849.x, x_2849.y, x_2849.z), vec3<f32>(x_2851.x, x_2851.y, x_2851.z));
  let x_2856 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2856, 0.0f, 1.0f);
  let x_2859 : f32 = u_xlat52;
  let x_2860 : f32 = u_xlat52;
  u_xlat52 = (x_2859 * x_2860);
  let x_2862 : f32 = u_xlat52;
  let x_2864 : f32 = u_xlat0.x;
  u_xlat52 = ((x_2862 * x_2864) + 1.00001001358032226562f);
  let x_2869 : f32 = u_xlat2.x;
  let x_2871 : f32 = u_xlat2.x;
  u_xlat2.x = (x_2869 * x_2871);
  let x_2874 : f32 = u_xlat52;
  let x_2875 : f32 = u_xlat52;
  u_xlat52 = (x_2874 * x_2875);
  let x_2878 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_2878, 0.10000000149011611938f);
  let x_2882 : f32 = u_xlat52;
  let x_2884 : f32 = u_xlat2.x;
  u_xlat52 = (x_2882 * x_2884);
  let x_2886 : f32 = u_xlat82;
  let x_2887 : f32 = u_xlat52;
  u_xlat52 = (x_2886 * x_2887);
  let x_2889 : f32 = u_xlat80;
  let x_2890 : f32 = u_xlat52;
  u_xlat52 = (x_2889 / x_2890);
  let x_2892 : vec4<f32> = u_xlat5;
  let x_2894 : f32 = u_xlat52;
  let x_2897 : vec4<f32> = u_xlat4;
  let x_2899 : vec3<f32> = ((vec3<f32>(x_2892.x, x_2892.y, x_2892.z) * vec3<f32>(x_2894, x_2894, x_2894)) + vec3<f32>(x_2897.x, x_2897.y, x_2897.z));
  let x_2900 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2899.x, x_2899.y, x_2899.z, x_2900.w);
  let x_2902 : vec4<f32> = u_xlat6;
  let x_2904 : vec4<f32> = u_xlat8;
  let x_2906 : vec3<f32> = (vec3<f32>(x_2902.x, x_2902.y, x_2902.z) * vec3<f32>(x_2904.x, x_2904.y, x_2904.z));
  let x_2907 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2906.x, x_2906.y, x_2906.z, x_2907.w);
  let x_2910 : f32 = x_113.x_AdditionalLightsCount.x;
  let x_2912 : f32 = x_2696.unity_LightData.y;
  u_xlat52 = min(x_2910, x_2912);
  let x_2915 : f32 = u_xlat52;
  u_xlatu52 = bitcast<u32>(i32(x_2915));
  let x_2918 : f32 = u_xlat28;
  let x_2920 : f32 = x_833.x_AdditionalShadowFadeParams.x;
  let x_2923 : f32 = x_833.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_2918 * x_2920) + x_2923);
  let x_2927 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2927, 0.0f, 1.0f);
  let x_2931 : f32 = x_2498.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2933 : f32 = x_2498.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2935 : f32 = x_2498.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2937 : f32 = x_2498.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2938 : vec4<f32> = vec4<f32>(x_2931, x_2933, x_2935, x_2937);
  let x_2944 : vec4<bool> = (vec4<f32>(x_2938.x, x_2938.y, x_2938.z, x_2938.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb28 = vec2<bool>(x_2944.x, x_2944.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2956 : u32 = u_xlatu_loop_1;
    let x_2957 : u32 = u_xlatu52;
    if ((x_2956 < x_2957)) {
    } else {
      break;
    }
    let x_2960 : u32 = u_xlatu_loop_1;
    u_xlatu83 = (x_2960 >> 2u);
    let x_2963 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2963 & 3u));
    let x_2966 : u32 = u_xlatu83;
    let x_2969 : vec4<f32> = x_2696.unity_LightIndices[bitcast<i32>(x_2966)];
    let x_2979 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2984 : vec4<u32> = indexable[x_2979];
    u_xlat83 = dot(x_2969, bitcast<vec4<f32>>(x_2984));
    let x_2988 : f32 = u_xlat83;
    u_xlati83 = i32(x_2988);
    let x_2990 : vec3<f32> = vs_TEXCOORD7;
    let x_3001 : i32 = u_xlati83;
    let x_3003 : vec4<f32> = x_3000.x_AdditionalLightsPosition[x_3001];
    let x_3006 : i32 = u_xlati83;
    let x_3008 : vec4<f32> = x_3000.x_AdditionalLightsPosition[x_3006];
    let x_3010 : vec3<f32> = ((-(x_2990) * vec3<f32>(x_3003.w, x_3003.w, x_3003.w)) + vec3<f32>(x_3008.x, x_3008.y, x_3008.z));
    let x_3011 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3010.x, x_3010.y, x_3010.z, x_3011.w);
    let x_3013 : vec4<f32> = u_xlat9;
    let x_3015 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_3013.x, x_3013.y, x_3013.z), vec3<f32>(x_3015.x, x_3015.y, x_3015.z));
    let x_3018 : f32 = u_xlat84;
    u_xlat84 = max(x_3018, 0.00006103515625f);
    let x_3021 : f32 = u_xlat84;
    u_xlat85 = inverseSqrt(x_3021);
    let x_3023 : f32 = u_xlat85;
    let x_3025 : vec4<f32> = u_xlat9;
    let x_3027 : vec3<f32> = (vec3<f32>(x_3023, x_3023, x_3023) * vec3<f32>(x_3025.x, x_3025.y, x_3025.z));
    let x_3028 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3027.x, x_3027.y, x_3027.z, x_3028.w);
    let x_3030 : f32 = u_xlat84;
    u_xlat86 = (1.0f / x_3030);
    let x_3032 : f32 = u_xlat84;
    let x_3033 : i32 = u_xlati83;
    let x_3035 : f32 = x_3000.x_AdditionalLightsAttenuation[x_3033].x;
    u_xlat84 = (x_3032 * x_3035);
    let x_3037 : f32 = u_xlat84;
    let x_3039 : f32 = u_xlat84;
    u_xlat84 = ((-(x_3037) * x_3039) + 1.0f);
    let x_3042 : f32 = u_xlat84;
    u_xlat84 = max(x_3042, 0.0f);
    let x_3044 : f32 = u_xlat84;
    let x_3045 : f32 = u_xlat84;
    u_xlat84 = (x_3044 * x_3045);
    let x_3047 : f32 = u_xlat84;
    let x_3048 : f32 = u_xlat86;
    u_xlat84 = (x_3047 * x_3048);
    let x_3050 : i32 = u_xlati83;
    let x_3052 : vec4<f32> = x_3000.x_AdditionalLightsSpotDir[x_3050];
    let x_3054 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_3052.x, x_3052.y, x_3052.z), vec3<f32>(x_3054.x, x_3054.y, x_3054.z));
    let x_3057 : f32 = u_xlat86;
    let x_3058 : i32 = u_xlati83;
    let x_3060 : f32 = x_3000.x_AdditionalLightsAttenuation[x_3058].z;
    let x_3062 : i32 = u_xlati83;
    let x_3064 : f32 = x_3000.x_AdditionalLightsAttenuation[x_3062].w;
    u_xlat86 = ((x_3057 * x_3060) + x_3064);
    let x_3066 : f32 = u_xlat86;
    u_xlat86 = clamp(x_3066, 0.0f, 1.0f);
    let x_3068 : f32 = u_xlat86;
    let x_3069 : f32 = u_xlat86;
    u_xlat86 = (x_3068 * x_3069);
    let x_3071 : f32 = u_xlat84;
    let x_3072 : f32 = u_xlat86;
    u_xlat84 = (x_3071 * x_3072);
    let x_3075 : i32 = u_xlati83;
    let x_3077 : f32 = x_833.x_AdditionalShadowParams[x_3075].w;
    u_xlati86 = i32(x_3077);
    let x_3080 : i32 = u_xlati86;
    u_xlatb87 = (x_3080 >= 0i);
    let x_3082 : bool = u_xlatb87;
    if (x_3082) {
      let x_3086 : i32 = u_xlati83;
      let x_3088 : f32 = x_833.x_AdditionalShadowParams[x_3086].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3088, x_3088, x_3088, x_3088))));
      let x_3092 : bool = u_xlatb87;
      if (x_3092) {
        let x_3096 : vec4<f32> = u_xlat10;
        let x_3099 : vec4<f32> = u_xlat10;
        let x_3102 : vec4<bool> = (abs(vec4<f32>(x_3096.z, x_3096.z, x_3096.y, x_3096.z)) >= abs(vec4<f32>(x_3099.x, x_3099.y, x_3099.x, x_3099.x)));
        let x_3104 : vec3<bool> = vec3<bool>(x_3102.x, x_3102.y, x_3102.z);
        let x_3105 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3104.x, x_3104.y, x_3104.z, x_3105.w);
        let x_3108 : bool = u_xlatb11.y;
        let x_3110 : bool = u_xlatb11.x;
        u_xlatb87 = (x_3108 & x_3110);
        let x_3112 : vec4<f32> = u_xlat10;
        let x_3115 : vec4<bool> = (-(vec4<f32>(x_3112.z, x_3112.y, x_3112.z, x_3112.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3116 : vec3<bool> = vec3<bool>(x_3115.x, x_3115.y, x_3115.w);
        let x_3117 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3116.x, x_3116.y, x_3117.z, x_3116.z);
        let x_3120 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3120);
        let x_3125 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3125);
        let x_3130 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_3130);
        let x_3133 : bool = u_xlatb11.z;
        if (x_3133) {
          let x_3138 : f32 = u_xlat11.y;
          x_3134 = x_3138;
        } else {
          let x_3140 : f32 = u_xlat88;
          x_3134 = x_3140;
        }
        let x_3141 : f32 = x_3134;
        u_xlat88 = x_3141;
        let x_3143 : bool = u_xlatb87;
        if (x_3143) {
          let x_3148 : f32 = u_xlat11.x;
          x_3144 = x_3148;
        } else {
          let x_3150 : f32 = u_xlat88;
          x_3144 = x_3150;
        }
        let x_3151 : f32 = x_3144;
        u_xlat87 = x_3151;
        let x_3152 : i32 = u_xlati83;
        let x_3154 : f32 = x_833.x_AdditionalShadowParams[x_3152].w;
        u_xlat88 = trunc(x_3154);
        let x_3156 : f32 = u_xlat87;
        let x_3157 : f32 = u_xlat88;
        u_xlat87 = (x_3156 + x_3157);
        let x_3159 : f32 = u_xlat87;
        u_xlati86 = i32(x_3159);
      }
      let x_3161 : i32 = u_xlati86;
      u_xlati86 = (x_3161 << bitcast<u32>(2i));
      let x_3163 : vec3<f32> = vs_TEXCOORD7;
      let x_3165 : i32 = u_xlati86;
      let x_3168 : i32 = u_xlati86;
      let x_3172 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[((x_3165 + 1i) / 4i)][((x_3168 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3163.y, x_3163.y, x_3163.y, x_3163.y) * x_3172);
      let x_3174 : i32 = u_xlati86;
      let x_3176 : i32 = u_xlati86;
      let x_3179 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[(x_3174 / 4i)][(x_3176 % 4i)];
      let x_3180 : vec3<f32> = vs_TEXCOORD7;
      let x_3183 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3179 * vec4<f32>(x_3180.x, x_3180.x, x_3180.x, x_3180.x)) + x_3183);
      let x_3185 : i32 = u_xlati86;
      let x_3188 : i32 = u_xlati86;
      let x_3192 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[((x_3185 + 2i) / 4i)][((x_3188 + 2i) % 4i)];
      let x_3193 : vec3<f32> = vs_TEXCOORD7;
      let x_3196 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3192 * vec4<f32>(x_3193.z, x_3193.z, x_3193.z, x_3193.z)) + x_3196);
      let x_3198 : vec4<f32> = u_xlat11;
      let x_3199 : i32 = u_xlati86;
      let x_3202 : i32 = u_xlati86;
      let x_3206 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[((x_3199 + 3i) / 4i)][((x_3202 + 3i) % 4i)];
      u_xlat11 = (x_3198 + x_3206);
      let x_3208 : vec4<f32> = u_xlat11;
      let x_3210 : vec4<f32> = u_xlat11;
      let x_3212 : vec3<f32> = (vec3<f32>(x_3208.x, x_3208.y, x_3208.z) / vec3<f32>(x_3210.w, x_3210.w, x_3210.w));
      let x_3213 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3212.x, x_3212.y, x_3212.z, x_3213.w);
      let x_3216 : i32 = u_xlati83;
      let x_3218 : f32 = x_833.x_AdditionalShadowParams[x_3216].y;
      u_xlatb86 = (0.0f < x_3218);
      let x_3220 : bool = u_xlatb86;
      if (x_3220) {
        let x_3223 : i32 = u_xlati83;
        let x_3225 : f32 = x_833.x_AdditionalShadowParams[x_3223].y;
        u_xlatb86 = (1.0f == x_3225);
        let x_3227 : bool = u_xlatb86;
        if (x_3227) {
          let x_3230 : vec4<f32> = u_xlat11;
          let x_3233 : vec4<f32> = x_833.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3230.x, x_3230.y, x_3230.x, x_3230.y) + x_3233);
          let x_3236 : vec4<f32> = u_xlat12;
          let x_3237 : vec2<f32> = vec2<f32>(x_3236.x, x_3236.y);
          let x_3239 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_3237.x, x_3237.y, x_3239);
          let x_3247 : vec3<f32> = txVec30;
          let x_3249 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3247.xy, x_3247.z);
          u_xlat13.x = x_3249;
          let x_3252 : vec4<f32> = u_xlat12;
          let x_3253 : vec2<f32> = vec2<f32>(x_3252.z, x_3252.w);
          let x_3255 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_3253.x, x_3253.y, x_3255);
          let x_3262 : vec3<f32> = txVec31;
          let x_3264 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3262.xy, x_3262.z);
          u_xlat13.y = x_3264;
          let x_3266 : vec4<f32> = u_xlat11;
          let x_3269 : vec4<f32> = x_833.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3266.x, x_3266.y, x_3266.x, x_3266.y) + x_3269);
          let x_3272 : vec4<f32> = u_xlat12;
          let x_3273 : vec2<f32> = vec2<f32>(x_3272.x, x_3272.y);
          let x_3275 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_3273.x, x_3273.y, x_3275);
          let x_3282 : vec3<f32> = txVec32;
          let x_3284 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3282.xy, x_3282.z);
          u_xlat13.z = x_3284;
          let x_3287 : vec4<f32> = u_xlat12;
          let x_3288 : vec2<f32> = vec2<f32>(x_3287.z, x_3287.w);
          let x_3290 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_3288.x, x_3288.y, x_3290);
          let x_3297 : vec3<f32> = txVec33;
          let x_3299 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3297.xy, x_3297.z);
          u_xlat13.w = x_3299;
          let x_3301 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_3301, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3304 : i32 = u_xlati83;
          let x_3306 : f32 = x_833.x_AdditionalShadowParams[x_3304].y;
          u_xlatb87 = (2.0f == x_3306);
          let x_3308 : bool = u_xlatb87;
          if (x_3308) {
            let x_3311 : vec4<f32> = u_xlat11;
            let x_3314 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3317 : vec2<f32> = ((vec2<f32>(x_3311.x, x_3311.y) * vec2<f32>(x_3314.z, x_3314.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3318 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3317.x, x_3317.y, x_3318.z, x_3318.w);
            let x_3320 : vec4<f32> = u_xlat12;
            let x_3322 : vec2<f32> = floor(vec2<f32>(x_3320.x, x_3320.y));
            let x_3323 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3322.x, x_3322.y, x_3323.z, x_3323.w);
            let x_3326 : vec4<f32> = u_xlat11;
            let x_3329 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3332 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3326.x, x_3326.y) * vec2<f32>(x_3329.z, x_3329.w)) + -(vec2<f32>(x_3332.x, x_3332.y)));
            let x_3336 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3336.x, x_3336.x, x_3336.y, x_3336.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3339 : vec4<f32> = u_xlat13;
            let x_3341 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3339.x, x_3339.x, x_3339.z, x_3339.z) * vec4<f32>(x_3341.x, x_3341.x, x_3341.z, x_3341.z));
            let x_3344 : vec4<f32> = u_xlat14;
            let x_3346 : vec2<f32> = (vec2<f32>(x_3344.y, x_3344.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3347 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3346.x, x_3347.y, x_3346.y, x_3347.w);
            let x_3349 : vec4<f32> = u_xlat14;
            let x_3352 : vec2<f32> = u_xlat64;
            let x_3354 : vec2<f32> = ((vec2<f32>(x_3349.x, x_3349.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3352));
            let x_3355 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3354.x, x_3354.y, x_3355.z, x_3355.w);
            let x_3357 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3357) + vec2<f32>(1.0f, 1.0f));
            let x_3360 : vec2<f32> = u_xlat64;
            let x_3361 : vec2<f32> = min(x_3360, vec2<f32>(0.0f, 0.0f));
            let x_3362 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3361.x, x_3361.y, x_3362.z, x_3362.w);
            let x_3364 : vec4<f32> = u_xlat15;
            let x_3367 : vec4<f32> = u_xlat15;
            let x_3370 : vec2<f32> = u_xlat66;
            let x_3371 : vec2<f32> = ((-(vec2<f32>(x_3364.x, x_3364.y)) * vec2<f32>(x_3367.x, x_3367.y)) + x_3370);
            let x_3372 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3371.x, x_3371.y, x_3372.z, x_3372.w);
            let x_3374 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3374, vec2<f32>(0.0f, 0.0f));
            let x_3376 : vec2<f32> = u_xlat64;
            let x_3378 : vec2<f32> = u_xlat64;
            let x_3380 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3376) * x_3378) + vec2<f32>(x_3380.y, x_3380.w));
            let x_3383 : vec4<f32> = u_xlat15;
            let x_3385 : vec2<f32> = (vec2<f32>(x_3383.x, x_3383.y) + vec2<f32>(1.0f, 1.0f));
            let x_3386 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3385.x, x_3385.y, x_3386.z, x_3386.w);
            let x_3388 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3388 + vec2<f32>(1.0f, 1.0f));
            let x_3390 : vec4<f32> = u_xlat14;
            let x_3392 : vec2<f32> = (vec2<f32>(x_3390.x, x_3390.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3393 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3392.x, x_3392.y, x_3393.z, x_3393.w);
            let x_3395 : vec2<f32> = u_xlat66;
            let x_3396 : vec2<f32> = (x_3395 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3397 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3396.x, x_3396.y, x_3397.z, x_3397.w);
            let x_3399 : vec4<f32> = u_xlat15;
            let x_3401 : vec2<f32> = (vec2<f32>(x_3399.x, x_3399.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3402 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3401.x, x_3401.y, x_3402.z, x_3402.w);
            let x_3404 : vec2<f32> = u_xlat64;
            let x_3405 : vec2<f32> = (x_3404 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3406 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3405.x, x_3405.y, x_3406.z, x_3406.w);
            let x_3408 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3408.y, x_3408.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3412 : f32 = u_xlat15.x;
            u_xlat16.z = x_3412;
            let x_3415 : f32 = u_xlat64.x;
            u_xlat16.w = x_3415;
            let x_3418 : f32 = u_xlat17.x;
            u_xlat14.z = x_3418;
            let x_3421 : f32 = u_xlat13.x;
            u_xlat14.w = x_3421;
            let x_3423 : vec4<f32> = u_xlat14;
            let x_3425 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3423.z, x_3423.w, x_3423.x, x_3423.z) + vec4<f32>(x_3425.z, x_3425.w, x_3425.x, x_3425.z));
            let x_3429 : f32 = u_xlat16.y;
            u_xlat15.z = x_3429;
            let x_3432 : f32 = u_xlat64.y;
            u_xlat15.w = x_3432;
            let x_3435 : f32 = u_xlat14.y;
            u_xlat17.z = x_3435;
            let x_3438 : f32 = u_xlat13.z;
            u_xlat17.w = x_3438;
            let x_3440 : vec4<f32> = u_xlat15;
            let x_3442 : vec4<f32> = u_xlat17;
            let x_3444 : vec3<f32> = (vec3<f32>(x_3440.z, x_3440.y, x_3440.w) + vec3<f32>(x_3442.z, x_3442.y, x_3442.w));
            let x_3445 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3444.x, x_3444.y, x_3444.z, x_3445.w);
            let x_3447 : vec4<f32> = u_xlat14;
            let x_3449 : vec4<f32> = u_xlat18;
            let x_3451 : vec3<f32> = (vec3<f32>(x_3447.x, x_3447.z, x_3447.w) / vec3<f32>(x_3449.z, x_3449.w, x_3449.y));
            let x_3452 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3451.x, x_3451.y, x_3451.z, x_3452.w);
            let x_3454 : vec4<f32> = u_xlat14;
            let x_3456 : vec3<f32> = (vec3<f32>(x_3454.x, x_3454.y, x_3454.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3457 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3456.x, x_3456.y, x_3456.z, x_3457.w);
            let x_3459 : vec4<f32> = u_xlat17;
            let x_3461 : vec4<f32> = u_xlat13;
            let x_3463 : vec3<f32> = (vec3<f32>(x_3459.z, x_3459.y, x_3459.w) / vec3<f32>(x_3461.x, x_3461.y, x_3461.z));
            let x_3464 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3463.x, x_3463.y, x_3463.z, x_3464.w);
            let x_3466 : vec4<f32> = u_xlat15;
            let x_3468 : vec3<f32> = (vec3<f32>(x_3466.x, x_3466.y, x_3466.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3469 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3468.x, x_3468.y, x_3468.z, x_3469.w);
            let x_3471 : vec4<f32> = u_xlat14;
            let x_3474 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3476 : vec3<f32> = (vec3<f32>(x_3471.y, x_3471.x, x_3471.z) * vec3<f32>(x_3474.x, x_3474.x, x_3474.x));
            let x_3477 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3476.x, x_3476.y, x_3476.z, x_3477.w);
            let x_3479 : vec4<f32> = u_xlat15;
            let x_3482 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3484 : vec3<f32> = (vec3<f32>(x_3479.x, x_3479.y, x_3479.z) * vec3<f32>(x_3482.y, x_3482.y, x_3482.y));
            let x_3485 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3484.x, x_3484.y, x_3484.z, x_3485.w);
            let x_3488 : f32 = u_xlat15.x;
            u_xlat14.w = x_3488;
            let x_3490 : vec4<f32> = u_xlat12;
            let x_3493 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3496 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3490.x, x_3490.y, x_3490.x, x_3490.y) * vec4<f32>(x_3493.x, x_3493.y, x_3493.x, x_3493.y)) + vec4<f32>(x_3496.y, x_3496.w, x_3496.x, x_3496.w));
            let x_3499 : vec4<f32> = u_xlat12;
            let x_3502 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3505 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3499.x, x_3499.y) * vec2<f32>(x_3502.x, x_3502.y)) + vec2<f32>(x_3505.z, x_3505.w));
            let x_3509 : f32 = u_xlat14.y;
            u_xlat15.w = x_3509;
            let x_3511 : vec4<f32> = u_xlat15;
            let x_3512 : vec2<f32> = vec2<f32>(x_3511.y, x_3511.z);
            let x_3513 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3513.x, x_3512.x, x_3513.z, x_3512.y);
            let x_3515 : vec4<f32> = u_xlat12;
            let x_3518 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3521 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3515.x, x_3515.y, x_3515.x, x_3515.y) * vec4<f32>(x_3518.x, x_3518.y, x_3518.x, x_3518.y)) + vec4<f32>(x_3521.x, x_3521.y, x_3521.z, x_3521.y));
            let x_3524 : vec4<f32> = u_xlat12;
            let x_3527 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3530 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3524.x, x_3524.y, x_3524.x, x_3524.y) * vec4<f32>(x_3527.x, x_3527.y, x_3527.x, x_3527.y)) + vec4<f32>(x_3530.w, x_3530.y, x_3530.w, x_3530.z));
            let x_3533 : vec4<f32> = u_xlat12;
            let x_3536 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3539 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3533.x, x_3533.y, x_3533.x, x_3533.y) * vec4<f32>(x_3536.x, x_3536.y, x_3536.x, x_3536.y)) + vec4<f32>(x_3539.x, x_3539.w, x_3539.z, x_3539.w));
            let x_3542 : vec4<f32> = u_xlat13;
            let x_3544 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3542.x, x_3542.x, x_3542.x, x_3542.y) * vec4<f32>(x_3544.z, x_3544.w, x_3544.y, x_3544.z));
            let x_3548 : vec4<f32> = u_xlat13;
            let x_3550 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3548.y, x_3548.y, x_3548.z, x_3548.z) * x_3550);
            let x_3553 : f32 = u_xlat13.z;
            let x_3555 : f32 = u_xlat18.y;
            u_xlat87 = (x_3553 * x_3555);
            let x_3558 : vec4<f32> = u_xlat16;
            let x_3559 : vec2<f32> = vec2<f32>(x_3558.x, x_3558.y);
            let x_3561 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3559.x, x_3559.y, x_3561);
            let x_3568 : vec3<f32> = txVec34;
            let x_3570 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3568.xy, x_3568.z);
            u_xlat88 = x_3570;
            let x_3572 : vec4<f32> = u_xlat16;
            let x_3573 : vec2<f32> = vec2<f32>(x_3572.z, x_3572.w);
            let x_3575 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3573.x, x_3573.y, x_3575);
            let x_3583 : vec3<f32> = txVec35;
            let x_3585 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3583.xy, x_3583.z);
            u_xlat89 = x_3585;
            let x_3586 : f32 = u_xlat89;
            let x_3588 : f32 = u_xlat19.y;
            u_xlat89 = (x_3586 * x_3588);
            let x_3591 : f32 = u_xlat19.x;
            let x_3592 : f32 = u_xlat88;
            let x_3594 : f32 = u_xlat89;
            u_xlat88 = ((x_3591 * x_3592) + x_3594);
            let x_3597 : vec2<f32> = u_xlat64;
            let x_3599 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3597.x, x_3597.y, x_3599);
            let x_3606 : vec3<f32> = txVec36;
            let x_3608 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3606.xy, x_3606.z);
            u_xlat89 = x_3608;
            let x_3610 : f32 = u_xlat19.z;
            let x_3611 : f32 = u_xlat89;
            let x_3613 : f32 = u_xlat88;
            u_xlat88 = ((x_3610 * x_3611) + x_3613);
            let x_3616 : vec4<f32> = u_xlat15;
            let x_3617 : vec2<f32> = vec2<f32>(x_3616.x, x_3616.y);
            let x_3619 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3617.x, x_3617.y, x_3619);
            let x_3626 : vec3<f32> = txVec37;
            let x_3628 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3626.xy, x_3626.z);
            u_xlat89 = x_3628;
            let x_3630 : f32 = u_xlat19.w;
            let x_3631 : f32 = u_xlat89;
            let x_3633 : f32 = u_xlat88;
            u_xlat88 = ((x_3630 * x_3631) + x_3633);
            let x_3636 : vec4<f32> = u_xlat17;
            let x_3637 : vec2<f32> = vec2<f32>(x_3636.x, x_3636.y);
            let x_3639 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3637.x, x_3637.y, x_3639);
            let x_3646 : vec3<f32> = txVec38;
            let x_3648 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3646.xy, x_3646.z);
            u_xlat89 = x_3648;
            let x_3650 : f32 = u_xlat20.x;
            let x_3651 : f32 = u_xlat89;
            let x_3653 : f32 = u_xlat88;
            u_xlat88 = ((x_3650 * x_3651) + x_3653);
            let x_3656 : vec4<f32> = u_xlat17;
            let x_3657 : vec2<f32> = vec2<f32>(x_3656.z, x_3656.w);
            let x_3659 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3657.x, x_3657.y, x_3659);
            let x_3666 : vec3<f32> = txVec39;
            let x_3668 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3666.xy, x_3666.z);
            u_xlat89 = x_3668;
            let x_3670 : f32 = u_xlat20.y;
            let x_3671 : f32 = u_xlat89;
            let x_3673 : f32 = u_xlat88;
            u_xlat88 = ((x_3670 * x_3671) + x_3673);
            let x_3676 : vec4<f32> = u_xlat15;
            let x_3677 : vec2<f32> = vec2<f32>(x_3676.z, x_3676.w);
            let x_3679 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3677.x, x_3677.y, x_3679);
            let x_3686 : vec3<f32> = txVec40;
            let x_3688 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3686.xy, x_3686.z);
            u_xlat89 = x_3688;
            let x_3690 : f32 = u_xlat20.z;
            let x_3691 : f32 = u_xlat89;
            let x_3693 : f32 = u_xlat88;
            u_xlat88 = ((x_3690 * x_3691) + x_3693);
            let x_3696 : vec4<f32> = u_xlat14;
            let x_3697 : vec2<f32> = vec2<f32>(x_3696.x, x_3696.y);
            let x_3699 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3697.x, x_3697.y, x_3699);
            let x_3706 : vec3<f32> = txVec41;
            let x_3708 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3706.xy, x_3706.z);
            u_xlat89 = x_3708;
            let x_3710 : f32 = u_xlat20.w;
            let x_3711 : f32 = u_xlat89;
            let x_3713 : f32 = u_xlat88;
            u_xlat88 = ((x_3710 * x_3711) + x_3713);
            let x_3716 : vec4<f32> = u_xlat14;
            let x_3717 : vec2<f32> = vec2<f32>(x_3716.z, x_3716.w);
            let x_3719 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3717.x, x_3717.y, x_3719);
            let x_3726 : vec3<f32> = txVec42;
            let x_3728 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3726.xy, x_3726.z);
            u_xlat89 = x_3728;
            let x_3729 : f32 = u_xlat87;
            let x_3730 : f32 = u_xlat89;
            let x_3732 : f32 = u_xlat88;
            u_xlat86 = ((x_3729 * x_3730) + x_3732);
          } else {
            let x_3735 : vec4<f32> = u_xlat11;
            let x_3738 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3741 : vec2<f32> = ((vec2<f32>(x_3735.x, x_3735.y) * vec2<f32>(x_3738.z, x_3738.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3742 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3741.x, x_3741.y, x_3742.z, x_3742.w);
            let x_3744 : vec4<f32> = u_xlat12;
            let x_3746 : vec2<f32> = floor(vec2<f32>(x_3744.x, x_3744.y));
            let x_3747 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3746.x, x_3746.y, x_3747.z, x_3747.w);
            let x_3749 : vec4<f32> = u_xlat11;
            let x_3752 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3755 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3749.x, x_3749.y) * vec2<f32>(x_3752.z, x_3752.w)) + -(vec2<f32>(x_3755.x, x_3755.y)));
            let x_3759 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3759.x, x_3759.x, x_3759.y, x_3759.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3762 : vec4<f32> = u_xlat13;
            let x_3764 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3762.x, x_3762.x, x_3762.z, x_3762.z) * vec4<f32>(x_3764.x, x_3764.x, x_3764.z, x_3764.z));
            let x_3767 : vec4<f32> = u_xlat14;
            let x_3769 : vec2<f32> = (vec2<f32>(x_3767.y, x_3767.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3770 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3770.x, x_3769.x, x_3770.z, x_3769.y);
            let x_3772 : vec4<f32> = u_xlat14;
            let x_3775 : vec2<f32> = u_xlat64;
            let x_3777 : vec2<f32> = ((vec2<f32>(x_3772.x, x_3772.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3775));
            let x_3778 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3777.x, x_3778.y, x_3777.y, x_3778.w);
            let x_3780 : vec2<f32> = u_xlat64;
            let x_3782 : vec2<f32> = (-(x_3780) + vec2<f32>(1.0f, 1.0f));
            let x_3783 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3782.x, x_3782.y, x_3783.z, x_3783.w);
            let x_3785 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3785, vec2<f32>(0.0f, 0.0f));
            let x_3787 : vec2<f32> = u_xlat66;
            let x_3789 : vec2<f32> = u_xlat66;
            let x_3791 : vec4<f32> = u_xlat14;
            let x_3793 : vec2<f32> = ((-(x_3787) * x_3789) + vec2<f32>(x_3791.x, x_3791.y));
            let x_3794 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3793.x, x_3793.y, x_3794.z, x_3794.w);
            let x_3796 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3796, vec2<f32>(0.0f, 0.0f));
            let x_3799 : vec2<f32> = u_xlat66;
            let x_3801 : vec2<f32> = u_xlat66;
            let x_3803 : vec4<f32> = u_xlat13;
            let x_3805 : vec2<f32> = ((-(x_3799) * x_3801) + vec2<f32>(x_3803.y, x_3803.w));
            let x_3806 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3805.x, x_3806.y, x_3805.y);
            let x_3808 : vec4<f32> = u_xlat14;
            let x_3810 : vec2<f32> = (vec2<f32>(x_3808.x, x_3808.y) + vec2<f32>(2.0f, 2.0f));
            let x_3811 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3810.x, x_3810.y, x_3811.z, x_3811.w);
            let x_3813 : vec3<f32> = u_xlat39;
            let x_3815 : vec2<f32> = (vec2<f32>(x_3813.x, x_3813.z) + vec2<f32>(2.0f, 2.0f));
            let x_3816 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3816.x, x_3815.x, x_3816.z, x_3815.y);
            let x_3819 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3819 * 0.08163200318813323975f);
            let x_3822 : vec4<f32> = u_xlat13;
            let x_3824 : vec3<f32> = (vec3<f32>(x_3822.z, x_3822.x, x_3822.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3825 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3824.x, x_3824.y, x_3824.z, x_3825.w);
            let x_3827 : vec4<f32> = u_xlat14;
            let x_3829 : vec2<f32> = (vec2<f32>(x_3827.x, x_3827.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3830 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3829.x, x_3829.y, x_3830.z, x_3830.w);
            let x_3833 : f32 = u_xlat17.y;
            u_xlat16.x = x_3833;
            let x_3835 : vec2<f32> = u_xlat64;
            let x_3838 : vec2<f32> = ((vec2<f32>(x_3835.x, x_3835.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3839 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3839.x, x_3838.x, x_3839.z, x_3838.y);
            let x_3841 : vec2<f32> = u_xlat64;
            let x_3844 : vec2<f32> = ((vec2<f32>(x_3841.x, x_3841.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3845 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3844.x, x_3845.y, x_3844.y, x_3845.w);
            let x_3848 : f32 = u_xlat13.x;
            u_xlat14.y = x_3848;
            let x_3851 : f32 = u_xlat15.y;
            u_xlat14.w = x_3851;
            let x_3853 : vec4<f32> = u_xlat14;
            let x_3854 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3853 + x_3854);
            let x_3856 : vec2<f32> = u_xlat64;
            let x_3859 : vec2<f32> = ((vec2<f32>(x_3856.y, x_3856.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3860 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3860.x, x_3859.x, x_3860.z, x_3859.y);
            let x_3862 : vec2<f32> = u_xlat64;
            let x_3865 : vec2<f32> = ((vec2<f32>(x_3862.y, x_3862.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3866 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3865.x, x_3866.y, x_3865.y, x_3866.w);
            let x_3869 : f32 = u_xlat13.y;
            u_xlat15.y = x_3869;
            let x_3871 : vec4<f32> = u_xlat15;
            let x_3872 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3871 + x_3872);
            let x_3874 : vec4<f32> = u_xlat14;
            let x_3875 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3874 / x_3875);
            let x_3877 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3877 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3879 : vec4<f32> = u_xlat15;
            let x_3880 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3879 / x_3880);
            let x_3882 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3882 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3884 : vec4<f32> = u_xlat14;
            let x_3887 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3884.w, x_3884.x, x_3884.y, x_3884.z) * vec4<f32>(x_3887.x, x_3887.x, x_3887.x, x_3887.x));
            let x_3890 : vec4<f32> = u_xlat15;
            let x_3893 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3890.x, x_3890.w, x_3890.y, x_3890.z) * vec4<f32>(x_3893.y, x_3893.y, x_3893.y, x_3893.y));
            let x_3896 : vec4<f32> = u_xlat14;
            let x_3897 : vec3<f32> = vec3<f32>(x_3896.y, x_3896.z, x_3896.w);
            let x_3898 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3897.x, x_3898.y, x_3897.y, x_3897.z);
            let x_3901 : f32 = u_xlat15.x;
            u_xlat17.y = x_3901;
            let x_3903 : vec4<f32> = u_xlat12;
            let x_3906 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3909 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3903.x, x_3903.y, x_3903.x, x_3903.y) * vec4<f32>(x_3906.x, x_3906.y, x_3906.x, x_3906.y)) + vec4<f32>(x_3909.x, x_3909.y, x_3909.z, x_3909.y));
            let x_3912 : vec4<f32> = u_xlat12;
            let x_3915 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3918 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3912.x, x_3912.y) * vec2<f32>(x_3915.x, x_3915.y)) + vec2<f32>(x_3918.w, x_3918.y));
            let x_3922 : f32 = u_xlat17.y;
            u_xlat14.y = x_3922;
            let x_3925 : f32 = u_xlat15.z;
            u_xlat17.y = x_3925;
            let x_3927 : vec4<f32> = u_xlat12;
            let x_3930 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3933 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3927.x, x_3927.y, x_3927.x, x_3927.y) * vec4<f32>(x_3930.x, x_3930.y, x_3930.x, x_3930.y)) + vec4<f32>(x_3933.x, x_3933.y, x_3933.z, x_3933.y));
            let x_3936 : vec4<f32> = u_xlat12;
            let x_3939 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3942 : vec4<f32> = u_xlat17;
            let x_3944 : vec2<f32> = ((vec2<f32>(x_3936.x, x_3936.y) * vec2<f32>(x_3939.x, x_3939.y)) + vec2<f32>(x_3942.w, x_3942.y));
            let x_3945 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3944.x, x_3944.y, x_3945.z, x_3945.w);
            let x_3948 : f32 = u_xlat17.y;
            u_xlat14.z = x_3948;
            let x_3951 : vec4<f32> = u_xlat12;
            let x_3954 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3957 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3951.x, x_3951.y, x_3951.x, x_3951.y) * vec4<f32>(x_3954.x, x_3954.y, x_3954.x, x_3954.y)) + vec4<f32>(x_3957.x, x_3957.y, x_3957.x, x_3957.z));
            let x_3961 : f32 = u_xlat15.w;
            u_xlat17.y = x_3961;
            let x_3964 : vec4<f32> = u_xlat12;
            let x_3967 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3970 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3964.x, x_3964.y, x_3964.x, x_3964.y) * vec4<f32>(x_3967.x, x_3967.y, x_3967.x, x_3967.y)) + vec4<f32>(x_3970.x, x_3970.y, x_3970.z, x_3970.y));
            let x_3974 : vec4<f32> = u_xlat12;
            let x_3977 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3980 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3974.x, x_3974.y) * vec2<f32>(x_3977.x, x_3977.y)) + vec2<f32>(x_3980.w, x_3980.y));
            let x_3984 : f32 = u_xlat17.y;
            u_xlat14.w = x_3984;
            let x_3987 : vec4<f32> = u_xlat12;
            let x_3990 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3993 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3987.x, x_3987.y) * vec2<f32>(x_3990.x, x_3990.y)) + vec2<f32>(x_3993.x, x_3993.w));
            let x_3996 : vec4<f32> = u_xlat17;
            let x_3997 : vec3<f32> = vec3<f32>(x_3996.x, x_3996.z, x_3996.w);
            let x_3998 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3997.x, x_3998.y, x_3997.y, x_3997.z);
            let x_4000 : vec4<f32> = u_xlat12;
            let x_4003 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_4006 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4000.x, x_4000.y, x_4000.x, x_4000.y) * vec4<f32>(x_4003.x, x_4003.y, x_4003.x, x_4003.y)) + vec4<f32>(x_4006.x, x_4006.y, x_4006.z, x_4006.y));
            let x_4010 : vec4<f32> = u_xlat12;
            let x_4013 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_4016 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4010.x, x_4010.y) * vec2<f32>(x_4013.x, x_4013.y)) + vec2<f32>(x_4016.w, x_4016.y));
            let x_4020 : f32 = u_xlat14.x;
            u_xlat15.x = x_4020;
            let x_4022 : vec4<f32> = u_xlat12;
            let x_4025 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_4028 : vec4<f32> = u_xlat15;
            let x_4030 : vec2<f32> = ((vec2<f32>(x_4022.x, x_4022.y) * vec2<f32>(x_4025.x, x_4025.y)) + vec2<f32>(x_4028.x, x_4028.y));
            let x_4031 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4030.x, x_4030.y, x_4031.z, x_4031.w);
            let x_4034 : vec4<f32> = u_xlat13;
            let x_4036 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4034.x, x_4034.x, x_4034.x, x_4034.x) * x_4036);
            let x_4039 : vec4<f32> = u_xlat13;
            let x_4041 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4039.y, x_4039.y, x_4039.y, x_4039.y) * x_4041);
            let x_4044 : vec4<f32> = u_xlat13;
            let x_4046 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4044.z, x_4044.z, x_4044.z, x_4044.z) * x_4046);
            let x_4048 : vec4<f32> = u_xlat13;
            let x_4050 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4048.w, x_4048.w, x_4048.w, x_4048.w) * x_4050);
            let x_4053 : vec4<f32> = u_xlat18;
            let x_4054 : vec2<f32> = vec2<f32>(x_4053.x, x_4053.y);
            let x_4056 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_4054.x, x_4054.y, x_4056);
            let x_4063 : vec3<f32> = txVec43;
            let x_4065 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4063.xy, x_4063.z);
            u_xlat87 = x_4065;
            let x_4067 : vec4<f32> = u_xlat18;
            let x_4068 : vec2<f32> = vec2<f32>(x_4067.z, x_4067.w);
            let x_4070 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_4068.x, x_4068.y, x_4070);
            let x_4077 : vec3<f32> = txVec44;
            let x_4079 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4077.xy, x_4077.z);
            u_xlat88 = x_4079;
            let x_4080 : f32 = u_xlat88;
            let x_4082 : f32 = u_xlat23.y;
            u_xlat88 = (x_4080 * x_4082);
            let x_4085 : f32 = u_xlat23.x;
            let x_4086 : f32 = u_xlat87;
            let x_4088 : f32 = u_xlat88;
            u_xlat87 = ((x_4085 * x_4086) + x_4088);
            let x_4091 : vec2<f32> = u_xlat64;
            let x_4093 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_4091.x, x_4091.y, x_4093);
            let x_4100 : vec3<f32> = txVec45;
            let x_4102 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4100.xy, x_4100.z);
            u_xlat88 = x_4102;
            let x_4104 : f32 = u_xlat23.z;
            let x_4105 : f32 = u_xlat88;
            let x_4107 : f32 = u_xlat87;
            u_xlat87 = ((x_4104 * x_4105) + x_4107);
            let x_4110 : vec4<f32> = u_xlat21;
            let x_4111 : vec2<f32> = vec2<f32>(x_4110.x, x_4110.y);
            let x_4113 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_4111.x, x_4111.y, x_4113);
            let x_4120 : vec3<f32> = txVec46;
            let x_4122 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4120.xy, x_4120.z);
            u_xlat88 = x_4122;
            let x_4124 : f32 = u_xlat23.w;
            let x_4125 : f32 = u_xlat88;
            let x_4127 : f32 = u_xlat87;
            u_xlat87 = ((x_4124 * x_4125) + x_4127);
            let x_4130 : vec4<f32> = u_xlat19;
            let x_4131 : vec2<f32> = vec2<f32>(x_4130.x, x_4130.y);
            let x_4133 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_4131.x, x_4131.y, x_4133);
            let x_4140 : vec3<f32> = txVec47;
            let x_4142 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4140.xy, x_4140.z);
            u_xlat88 = x_4142;
            let x_4144 : f32 = u_xlat24.x;
            let x_4145 : f32 = u_xlat88;
            let x_4147 : f32 = u_xlat87;
            u_xlat87 = ((x_4144 * x_4145) + x_4147);
            let x_4150 : vec4<f32> = u_xlat19;
            let x_4151 : vec2<f32> = vec2<f32>(x_4150.z, x_4150.w);
            let x_4153 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_4151.x, x_4151.y, x_4153);
            let x_4160 : vec3<f32> = txVec48;
            let x_4162 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4160.xy, x_4160.z);
            u_xlat88 = x_4162;
            let x_4164 : f32 = u_xlat24.y;
            let x_4165 : f32 = u_xlat88;
            let x_4167 : f32 = u_xlat87;
            u_xlat87 = ((x_4164 * x_4165) + x_4167);
            let x_4170 : vec4<f32> = u_xlat20;
            let x_4171 : vec2<f32> = vec2<f32>(x_4170.x, x_4170.y);
            let x_4173 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_4171.x, x_4171.y, x_4173);
            let x_4180 : vec3<f32> = txVec49;
            let x_4182 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4180.xy, x_4180.z);
            u_xlat88 = x_4182;
            let x_4184 : f32 = u_xlat24.z;
            let x_4185 : f32 = u_xlat88;
            let x_4187 : f32 = u_xlat87;
            u_xlat87 = ((x_4184 * x_4185) + x_4187);
            let x_4190 : vec4<f32> = u_xlat21;
            let x_4191 : vec2<f32> = vec2<f32>(x_4190.z, x_4190.w);
            let x_4193 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_4191.x, x_4191.y, x_4193);
            let x_4200 : vec3<f32> = txVec50;
            let x_4202 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4200.xy, x_4200.z);
            u_xlat88 = x_4202;
            let x_4204 : f32 = u_xlat24.w;
            let x_4205 : f32 = u_xlat88;
            let x_4207 : f32 = u_xlat87;
            u_xlat87 = ((x_4204 * x_4205) + x_4207);
            let x_4210 : vec4<f32> = u_xlat22;
            let x_4211 : vec2<f32> = vec2<f32>(x_4210.x, x_4210.y);
            let x_4213 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_4211.x, x_4211.y, x_4213);
            let x_4220 : vec3<f32> = txVec51;
            let x_4222 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4220.xy, x_4220.z);
            u_xlat88 = x_4222;
            let x_4224 : f32 = u_xlat25.x;
            let x_4225 : f32 = u_xlat88;
            let x_4227 : f32 = u_xlat87;
            u_xlat87 = ((x_4224 * x_4225) + x_4227);
            let x_4230 : vec4<f32> = u_xlat22;
            let x_4231 : vec2<f32> = vec2<f32>(x_4230.z, x_4230.w);
            let x_4233 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_4231.x, x_4231.y, x_4233);
            let x_4240 : vec3<f32> = txVec52;
            let x_4242 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4240.xy, x_4240.z);
            u_xlat88 = x_4242;
            let x_4244 : f32 = u_xlat25.y;
            let x_4245 : f32 = u_xlat88;
            let x_4247 : f32 = u_xlat87;
            u_xlat87 = ((x_4244 * x_4245) + x_4247);
            let x_4250 : vec2<f32> = u_xlat40;
            let x_4252 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_4250.x, x_4250.y, x_4252);
            let x_4259 : vec3<f32> = txVec53;
            let x_4261 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4259.xy, x_4259.z);
            u_xlat88 = x_4261;
            let x_4263 : f32 = u_xlat25.z;
            let x_4264 : f32 = u_xlat88;
            let x_4266 : f32 = u_xlat87;
            u_xlat87 = ((x_4263 * x_4264) + x_4266);
            let x_4269 : vec2<f32> = u_xlat72;
            let x_4271 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_4269.x, x_4269.y, x_4271);
            let x_4278 : vec3<f32> = txVec54;
            let x_4280 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4278.xy, x_4278.z);
            u_xlat88 = x_4280;
            let x_4282 : f32 = u_xlat25.w;
            let x_4283 : f32 = u_xlat88;
            let x_4285 : f32 = u_xlat87;
            u_xlat87 = ((x_4282 * x_4283) + x_4285);
            let x_4288 : vec4<f32> = u_xlat17;
            let x_4289 : vec2<f32> = vec2<f32>(x_4288.x, x_4288.y);
            let x_4291 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_4289.x, x_4289.y, x_4291);
            let x_4298 : vec3<f32> = txVec55;
            let x_4300 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4298.xy, x_4298.z);
            u_xlat88 = x_4300;
            let x_4302 : f32 = u_xlat13.x;
            let x_4303 : f32 = u_xlat88;
            let x_4305 : f32 = u_xlat87;
            u_xlat87 = ((x_4302 * x_4303) + x_4305);
            let x_4308 : vec4<f32> = u_xlat17;
            let x_4309 : vec2<f32> = vec2<f32>(x_4308.z, x_4308.w);
            let x_4311 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_4309.x, x_4309.y, x_4311);
            let x_4318 : vec3<f32> = txVec56;
            let x_4320 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4318.xy, x_4318.z);
            u_xlat88 = x_4320;
            let x_4322 : f32 = u_xlat13.y;
            let x_4323 : f32 = u_xlat88;
            let x_4325 : f32 = u_xlat87;
            u_xlat87 = ((x_4322 * x_4323) + x_4325);
            let x_4328 : vec2<f32> = u_xlat67;
            let x_4330 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_4328.x, x_4328.y, x_4330);
            let x_4337 : vec3<f32> = txVec57;
            let x_4339 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4337.xy, x_4337.z);
            u_xlat88 = x_4339;
            let x_4341 : f32 = u_xlat13.z;
            let x_4342 : f32 = u_xlat88;
            let x_4344 : f32 = u_xlat87;
            u_xlat87 = ((x_4341 * x_4342) + x_4344);
            let x_4347 : vec4<f32> = u_xlat12;
            let x_4348 : vec2<f32> = vec2<f32>(x_4347.x, x_4347.y);
            let x_4350 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_4348.x, x_4348.y, x_4350);
            let x_4357 : vec3<f32> = txVec58;
            let x_4359 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4357.xy, x_4357.z);
            u_xlat88 = x_4359;
            let x_4361 : f32 = u_xlat13.w;
            let x_4362 : f32 = u_xlat88;
            let x_4364 : f32 = u_xlat87;
            u_xlat86 = ((x_4361 * x_4362) + x_4364);
          }
        }
      } else {
        let x_4368 : vec4<f32> = u_xlat11;
        let x_4369 : vec2<f32> = vec2<f32>(x_4368.x, x_4368.y);
        let x_4371 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_4369.x, x_4369.y, x_4371);
        let x_4378 : vec3<f32> = txVec59;
        let x_4380 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4378.xy, x_4378.z);
        u_xlat86 = x_4380;
      }
      let x_4381 : i32 = u_xlati83;
      let x_4383 : f32 = x_833.x_AdditionalShadowParams[x_4381].x;
      u_xlat87 = (1.0f + -(x_4383));
      let x_4386 : f32 = u_xlat86;
      let x_4387 : i32 = u_xlati83;
      let x_4389 : f32 = x_833.x_AdditionalShadowParams[x_4387].x;
      let x_4391 : f32 = u_xlat87;
      u_xlat86 = ((x_4386 * x_4389) + x_4391);
      let x_4394 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_4394);
      let x_4398 : f32 = u_xlat11.z;
      u_xlatb88 = (x_4398 >= 1.0f);
      let x_4400 : bool = u_xlatb87;
      let x_4401 : bool = u_xlatb88;
      u_xlatb87 = (x_4400 | x_4401);
      let x_4403 : bool = u_xlatb87;
      let x_4404 : f32 = u_xlat86;
      u_xlat86 = select(x_4404, 1.0f, x_4403);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_4407 : f32 = u_xlat86;
    u_xlat87 = (-(x_4407) + 1.0f);
    let x_4411 : f32 = u_xlat2.x;
    let x_4412 : f32 = u_xlat87;
    let x_4414 : f32 = u_xlat86;
    u_xlat86 = ((x_4411 * x_4412) + x_4414);
    let x_4417 : i32 = u_xlati83;
    u_xlati87 = (1i << bitcast<u32>((x_4417 & 31i)));
    let x_4420 : i32 = u_xlati87;
    let x_4423 : f32 = x_2498.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_4420) & bitcast<u32>(x_4423)));
    let x_4427 : i32 = u_xlati87;
    if ((x_4427 != 0i)) {
      let x_4431 : i32 = u_xlati83;
      let x_4433 : f32 = x_2498.x_AdditionalLightsLightTypes[x_4431].el;
      u_xlati87 = i32(x_4433);
      let x_4436 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_4436 != 0i));
      let x_4440 : i32 = u_xlati83;
      u_xlati11 = (x_4440 << bitcast<u32>(2i));
      let x_4442 : i32 = u_xlati88;
      if ((x_4442 != 0i)) {
        let x_4447 : vec3<f32> = vs_TEXCOORD7;
        let x_4449 : i32 = u_xlati11;
        let x_4452 : i32 = u_xlati11;
        let x_4456 : vec4<f32> = x_2498.x_AdditionalLightsWorldToLights[((x_4449 + 1i) / 4i)][((x_4452 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_4447.y, x_4447.y, x_4447.y) * vec3<f32>(x_4456.x, x_4456.y, x_4456.w));
        let x_4459 : i32 = u_xlati11;
        let x_4461 : i32 = u_xlati11;
        let x_4464 : vec4<f32> = x_2498.x_AdditionalLightsWorldToLights[(x_4459 / 4i)][(x_4461 % 4i)];
        let x_4466 : vec3<f32> = vs_TEXCOORD7;
        let x_4469 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4464.x, x_4464.y, x_4464.w) * vec3<f32>(x_4466.x, x_4466.x, x_4466.x)) + x_4469);
        let x_4471 : i32 = u_xlati11;
        let x_4474 : i32 = u_xlati11;
        let x_4478 : vec4<f32> = x_2498.x_AdditionalLightsWorldToLights[((x_4471 + 2i) / 4i)][((x_4474 + 2i) % 4i)];
        let x_4480 : vec3<f32> = vs_TEXCOORD7;
        let x_4483 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4478.x, x_4478.y, x_4478.w) * vec3<f32>(x_4480.z, x_4480.z, x_4480.z)) + x_4483);
        let x_4485 : vec3<f32> = u_xlat37;
        let x_4486 : i32 = u_xlati11;
        let x_4489 : i32 = u_xlati11;
        let x_4493 : vec4<f32> = x_2498.x_AdditionalLightsWorldToLights[((x_4486 + 3i) / 4i)][((x_4489 + 3i) % 4i)];
        u_xlat37 = (x_4485 + vec3<f32>(x_4493.x, x_4493.y, x_4493.w));
        let x_4496 : vec3<f32> = u_xlat37;
        let x_4498 : vec3<f32> = u_xlat37;
        let x_4500 : vec2<f32> = (vec2<f32>(x_4496.x, x_4496.y) / vec2<f32>(x_4498.z, x_4498.z));
        let x_4501 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4500.x, x_4500.y, x_4501.z);
        let x_4503 : vec3<f32> = u_xlat37;
        let x_4506 : vec2<f32> = ((vec2<f32>(x_4503.x, x_4503.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4507 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4506.x, x_4506.y, x_4507.z);
        let x_4509 : vec3<f32> = u_xlat37;
        let x_4513 : vec2<f32> = clamp(vec2<f32>(x_4509.x, x_4509.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4514 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4513.x, x_4513.y, x_4514.z);
        let x_4516 : i32 = u_xlati83;
        let x_4518 : vec4<f32> = x_2498.x_AdditionalLightsCookieAtlasUVRects[x_4516];
        let x_4520 : vec3<f32> = u_xlat37;
        let x_4523 : i32 = u_xlati83;
        let x_4525 : vec4<f32> = x_2498.x_AdditionalLightsCookieAtlasUVRects[x_4523];
        let x_4527 : vec2<f32> = ((vec2<f32>(x_4518.x, x_4518.y) * vec2<f32>(x_4520.x, x_4520.y)) + vec2<f32>(x_4525.z, x_4525.w));
        let x_4528 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4527.x, x_4527.y, x_4528.z);
      } else {
        let x_4531 : i32 = u_xlati87;
        u_xlatb87 = (x_4531 == 1i);
        let x_4533 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_4533);
        let x_4535 : i32 = u_xlati87;
        if ((x_4535 != 0i)) {
          let x_4539 : vec3<f32> = vs_TEXCOORD7;
          let x_4541 : i32 = u_xlati11;
          let x_4544 : i32 = u_xlati11;
          let x_4548 : vec4<f32> = x_2498.x_AdditionalLightsWorldToLights[((x_4541 + 1i) / 4i)][((x_4544 + 1i) % 4i)];
          let x_4550 : vec2<f32> = (vec2<f32>(x_4539.y, x_4539.y) * vec2<f32>(x_4548.x, x_4548.y));
          let x_4551 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4550.x, x_4550.y, x_4551.z, x_4551.w);
          let x_4553 : i32 = u_xlati11;
          let x_4555 : i32 = u_xlati11;
          let x_4558 : vec4<f32> = x_2498.x_AdditionalLightsWorldToLights[(x_4553 / 4i)][(x_4555 % 4i)];
          let x_4560 : vec3<f32> = vs_TEXCOORD7;
          let x_4563 : vec4<f32> = u_xlat12;
          let x_4565 : vec2<f32> = ((vec2<f32>(x_4558.x, x_4558.y) * vec2<f32>(x_4560.x, x_4560.x)) + vec2<f32>(x_4563.x, x_4563.y));
          let x_4566 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4565.x, x_4565.y, x_4566.z, x_4566.w);
          let x_4568 : i32 = u_xlati11;
          let x_4571 : i32 = u_xlati11;
          let x_4575 : vec4<f32> = x_2498.x_AdditionalLightsWorldToLights[((x_4568 + 2i) / 4i)][((x_4571 + 2i) % 4i)];
          let x_4577 : vec3<f32> = vs_TEXCOORD7;
          let x_4580 : vec4<f32> = u_xlat12;
          let x_4582 : vec2<f32> = ((vec2<f32>(x_4575.x, x_4575.y) * vec2<f32>(x_4577.z, x_4577.z)) + vec2<f32>(x_4580.x, x_4580.y));
          let x_4583 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4582.x, x_4582.y, x_4583.z, x_4583.w);
          let x_4585 : vec4<f32> = u_xlat12;
          let x_4587 : i32 = u_xlati11;
          let x_4590 : i32 = u_xlati11;
          let x_4594 : vec4<f32> = x_2498.x_AdditionalLightsWorldToLights[((x_4587 + 3i) / 4i)][((x_4590 + 3i) % 4i)];
          let x_4596 : vec2<f32> = (vec2<f32>(x_4585.x, x_4585.y) + vec2<f32>(x_4594.x, x_4594.y));
          let x_4597 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4596.x, x_4596.y, x_4597.z, x_4597.w);
          let x_4599 : vec4<f32> = u_xlat12;
          let x_4602 : vec2<f32> = ((vec2<f32>(x_4599.x, x_4599.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4603 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4602.x, x_4602.y, x_4603.z, x_4603.w);
          let x_4605 : vec4<f32> = u_xlat12;
          let x_4607 : vec2<f32> = fract(vec2<f32>(x_4605.x, x_4605.y));
          let x_4608 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4607.x, x_4607.y, x_4608.z, x_4608.w);
          let x_4610 : i32 = u_xlati83;
          let x_4612 : vec4<f32> = x_2498.x_AdditionalLightsCookieAtlasUVRects[x_4610];
          let x_4614 : vec4<f32> = u_xlat12;
          let x_4617 : i32 = u_xlati83;
          let x_4619 : vec4<f32> = x_2498.x_AdditionalLightsCookieAtlasUVRects[x_4617];
          let x_4621 : vec2<f32> = ((vec2<f32>(x_4612.x, x_4612.y) * vec2<f32>(x_4614.x, x_4614.y)) + vec2<f32>(x_4619.z, x_4619.w));
          let x_4622 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4621.x, x_4621.y, x_4622.z);
        } else {
          let x_4625 : vec3<f32> = vs_TEXCOORD7;
          let x_4627 : i32 = u_xlati11;
          let x_4630 : i32 = u_xlati11;
          let x_4634 : vec4<f32> = x_2498.x_AdditionalLightsWorldToLights[((x_4627 + 1i) / 4i)][((x_4630 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4625.y, x_4625.y, x_4625.y, x_4625.y) * x_4634);
          let x_4636 : i32 = u_xlati11;
          let x_4638 : i32 = u_xlati11;
          let x_4641 : vec4<f32> = x_2498.x_AdditionalLightsWorldToLights[(x_4636 / 4i)][(x_4638 % 4i)];
          let x_4642 : vec3<f32> = vs_TEXCOORD7;
          let x_4645 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4641 * vec4<f32>(x_4642.x, x_4642.x, x_4642.x, x_4642.x)) + x_4645);
          let x_4647 : i32 = u_xlati11;
          let x_4650 : i32 = u_xlati11;
          let x_4654 : vec4<f32> = x_2498.x_AdditionalLightsWorldToLights[((x_4647 + 2i) / 4i)][((x_4650 + 2i) % 4i)];
          let x_4655 : vec3<f32> = vs_TEXCOORD7;
          let x_4658 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4654 * vec4<f32>(x_4655.z, x_4655.z, x_4655.z, x_4655.z)) + x_4658);
          let x_4660 : vec4<f32> = u_xlat12;
          let x_4661 : i32 = u_xlati11;
          let x_4664 : i32 = u_xlati11;
          let x_4668 : vec4<f32> = x_2498.x_AdditionalLightsWorldToLights[((x_4661 + 3i) / 4i)][((x_4664 + 3i) % 4i)];
          u_xlat12 = (x_4660 + x_4668);
          let x_4670 : vec4<f32> = u_xlat12;
          let x_4672 : vec4<f32> = u_xlat12;
          let x_4674 : vec3<f32> = (vec3<f32>(x_4670.x, x_4670.y, x_4670.z) / vec3<f32>(x_4672.w, x_4672.w, x_4672.w));
          let x_4675 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4674.x, x_4674.y, x_4674.z, x_4675.w);
          let x_4677 : vec4<f32> = u_xlat12;
          let x_4679 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_4677.x, x_4677.y, x_4677.z), vec3<f32>(x_4679.x, x_4679.y, x_4679.z));
          let x_4682 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_4682);
          let x_4684 : f32 = u_xlat87;
          let x_4686 : vec4<f32> = u_xlat12;
          let x_4688 : vec3<f32> = (vec3<f32>(x_4684, x_4684, x_4684) * vec3<f32>(x_4686.x, x_4686.y, x_4686.z));
          let x_4689 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4688.x, x_4688.y, x_4688.z, x_4689.w);
          let x_4691 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_4691.x, x_4691.y, x_4691.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4696 : f32 = u_xlat87;
          u_xlat87 = max(x_4696, 0.00000099999999747524f);
          let x_4699 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_4699);
          let x_4701 : f32 = u_xlat87;
          let x_4703 : vec4<f32> = u_xlat12;
          let x_4705 : vec3<f32> = (vec3<f32>(x_4701, x_4701, x_4701) * vec3<f32>(x_4703.z, x_4703.x, x_4703.y));
          let x_4706 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4705.x, x_4705.y, x_4705.z, x_4706.w);
          let x_4709 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4709);
          let x_4713 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4713, 0.0f, 1.0f);
          let x_4716 : vec4<f32> = u_xlat13;
          let x_4718 : vec4<bool> = (vec4<f32>(x_4716.y, x_4716.y, x_4716.y, x_4716.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_4719 : vec2<bool> = vec2<bool>(x_4718.x, x_4718.w);
          let x_4720 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_4719.x, x_4720.y, x_4720.z, x_4719.y);
          let x_4723 : bool = u_xlatb11.x;
          if (x_4723) {
            let x_4728 : f32 = u_xlat13.x;
            x_4724 = x_4728;
          } else {
            let x_4731 : f32 = u_xlat13.x;
            x_4724 = -(x_4731);
          }
          let x_4733 : f32 = x_4724;
          u_xlat11.x = x_4733;
          let x_4736 : bool = u_xlatb11.w;
          if (x_4736) {
            let x_4741 : f32 = u_xlat13.x;
            x_4737 = x_4741;
          } else {
            let x_4744 : f32 = u_xlat13.x;
            x_4737 = -(x_4744);
          }
          let x_4746 : f32 = x_4737;
          u_xlat11.w = x_4746;
          let x_4748 : vec4<f32> = u_xlat12;
          let x_4750 : f32 = u_xlat87;
          let x_4753 : vec4<f32> = u_xlat11;
          let x_4755 : vec2<f32> = ((vec2<f32>(x_4748.x, x_4748.y) * vec2<f32>(x_4750, x_4750)) + vec2<f32>(x_4753.x, x_4753.w));
          let x_4756 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4755.x, x_4756.y, x_4756.z, x_4755.y);
          let x_4758 : vec4<f32> = u_xlat11;
          let x_4761 : vec2<f32> = ((vec2<f32>(x_4758.x, x_4758.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4762 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4761.x, x_4762.y, x_4762.z, x_4761.y);
          let x_4764 : vec4<f32> = u_xlat11;
          let x_4768 : vec2<f32> = clamp(vec2<f32>(x_4764.x, x_4764.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4769 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4768.x, x_4769.y, x_4769.z, x_4768.y);
          let x_4771 : i32 = u_xlati83;
          let x_4773 : vec4<f32> = x_2498.x_AdditionalLightsCookieAtlasUVRects[x_4771];
          let x_4775 : vec4<f32> = u_xlat11;
          let x_4778 : i32 = u_xlati83;
          let x_4780 : vec4<f32> = x_2498.x_AdditionalLightsCookieAtlasUVRects[x_4778];
          let x_4782 : vec2<f32> = ((vec2<f32>(x_4773.x, x_4773.y) * vec2<f32>(x_4775.x, x_4775.w)) + vec2<f32>(x_4780.z, x_4780.w));
          let x_4783 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4782.x, x_4782.y, x_4783.z);
        }
      }
      let x_4790 : vec3<f32> = u_xlat37;
      let x_4792 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4790.x, x_4790.y), 0.0f);
      u_xlat11 = x_4792;
      let x_4794 : bool = u_xlatb28.y;
      if (x_4794) {
        let x_4799 : f32 = u_xlat11.w;
        x_4795 = x_4799;
      } else {
        let x_4802 : f32 = u_xlat11.x;
        x_4795 = x_4802;
      }
      let x_4803 : f32 = x_4795;
      u_xlat87 = x_4803;
      let x_4805 : bool = u_xlatb28.x;
      if (x_4805) {
        let x_4809 : vec4<f32> = u_xlat11;
        x_4806 = vec3<f32>(x_4809.x, x_4809.y, x_4809.z);
      } else {
        let x_4812 : f32 = u_xlat87;
        x_4806 = vec3<f32>(x_4812, x_4812, x_4812);
      }
      let x_4814 : vec3<f32> = x_4806;
      let x_4815 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4814.x, x_4814.y, x_4814.z, x_4815.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4821 : vec4<f32> = u_xlat11;
    let x_4823 : i32 = u_xlati83;
    let x_4825 : vec4<f32> = x_3000.x_AdditionalLightsColor[x_4823];
    let x_4827 : vec3<f32> = (vec3<f32>(x_4821.x, x_4821.y, x_4821.z) * vec3<f32>(x_4825.x, x_4825.y, x_4825.z));
    let x_4828 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4827.x, x_4827.y, x_4827.z, x_4828.w);
    let x_4830 : f32 = u_xlat84;
    let x_4831 : f32 = u_xlat86;
    u_xlat83 = (x_4830 * x_4831);
    let x_4833 : vec4<f32> = u_xlat1;
    let x_4835 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_4833.x, x_4833.y, x_4833.z), vec3<f32>(x_4835.x, x_4835.y, x_4835.z));
    let x_4838 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4838, 0.0f, 1.0f);
    let x_4840 : f32 = u_xlat83;
    let x_4841 : f32 = u_xlat84;
    u_xlat83 = (x_4840 * x_4841);
    let x_4843 : f32 = u_xlat83;
    let x_4845 : vec4<f32> = u_xlat11;
    let x_4847 : vec3<f32> = (vec3<f32>(x_4843, x_4843, x_4843) * vec3<f32>(x_4845.x, x_4845.y, x_4845.z));
    let x_4848 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4847.x, x_4847.y, x_4847.z, x_4848.w);
    let x_4850 : vec4<f32> = u_xlat9;
    let x_4852 : f32 = u_xlat85;
    let x_4855 : vec4<f32> = u_xlat7;
    let x_4857 : vec3<f32> = ((vec3<f32>(x_4850.x, x_4850.y, x_4850.z) * vec3<f32>(x_4852, x_4852, x_4852)) + vec3<f32>(x_4855.x, x_4855.y, x_4855.z));
    let x_4858 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4857.x, x_4857.y, x_4857.z, x_4858.w);
    let x_4860 : vec4<f32> = u_xlat9;
    let x_4862 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4860.x, x_4860.y, x_4860.z), vec3<f32>(x_4862.x, x_4862.y, x_4862.z));
    let x_4865 : f32 = u_xlat83;
    u_xlat83 = max(x_4865, 1.17549435e-38f);
    let x_4867 : f32 = u_xlat83;
    u_xlat83 = inverseSqrt(x_4867);
    let x_4869 : f32 = u_xlat83;
    let x_4871 : vec4<f32> = u_xlat9;
    let x_4873 : vec3<f32> = (vec3<f32>(x_4869, x_4869, x_4869) * vec3<f32>(x_4871.x, x_4871.y, x_4871.z));
    let x_4874 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4873.x, x_4873.y, x_4873.z, x_4874.w);
    let x_4876 : vec4<f32> = u_xlat1;
    let x_4878 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4876.x, x_4876.y, x_4876.z), vec3<f32>(x_4878.x, x_4878.y, x_4878.z));
    let x_4881 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4881, 0.0f, 1.0f);
    let x_4883 : vec4<f32> = u_xlat10;
    let x_4885 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4883.x, x_4883.y, x_4883.z), vec3<f32>(x_4885.x, x_4885.y, x_4885.z));
    let x_4888 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4888, 0.0f, 1.0f);
    let x_4890 : f32 = u_xlat83;
    let x_4891 : f32 = u_xlat83;
    u_xlat83 = (x_4890 * x_4891);
    let x_4893 : f32 = u_xlat83;
    let x_4895 : f32 = u_xlat0.x;
    u_xlat83 = ((x_4893 * x_4895) + 1.00001001358032226562f);
    let x_4898 : f32 = u_xlat84;
    let x_4899 : f32 = u_xlat84;
    u_xlat84 = (x_4898 * x_4899);
    let x_4901 : f32 = u_xlat83;
    let x_4902 : f32 = u_xlat83;
    u_xlat83 = (x_4901 * x_4902);
    let x_4904 : f32 = u_xlat84;
    u_xlat84 = max(x_4904, 0.10000000149011611938f);
    let x_4906 : f32 = u_xlat83;
    let x_4907 : f32 = u_xlat84;
    u_xlat83 = (x_4906 * x_4907);
    let x_4909 : f32 = u_xlat82;
    let x_4910 : f32 = u_xlat83;
    u_xlat83 = (x_4909 * x_4910);
    let x_4912 : f32 = u_xlat80;
    let x_4913 : f32 = u_xlat83;
    u_xlat83 = (x_4912 / x_4913);
    let x_4915 : vec4<f32> = u_xlat5;
    let x_4917 : f32 = u_xlat83;
    let x_4920 : vec4<f32> = u_xlat4;
    let x_4922 : vec3<f32> = ((vec3<f32>(x_4915.x, x_4915.y, x_4915.z) * vec3<f32>(x_4917, x_4917, x_4917)) + vec3<f32>(x_4920.x, x_4920.y, x_4920.z));
    let x_4923 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4922.x, x_4922.y, x_4922.z, x_4923.w);
    let x_4925 : vec4<f32> = u_xlat9;
    let x_4927 : vec4<f32> = u_xlat11;
    let x_4930 : vec4<f32> = u_xlat8;
    let x_4932 : vec3<f32> = ((vec3<f32>(x_4925.x, x_4925.y, x_4925.z) * vec3<f32>(x_4927.x, x_4927.y, x_4927.z)) + vec3<f32>(x_4930.x, x_4930.y, x_4930.z));
    let x_4933 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4932.x, x_4932.y, x_4932.z, x_4933.w);

    continuing {
      let x_4935 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4935 + bitcast<u32>(1i));
    }
  }
  let x_4937 : vec4<f32> = u_xlat3;
  let x_4939 : f32 = u_xlat26;
  let x_4942 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_4937.x, x_4937.y, x_4937.z) * vec3<f32>(x_4939, x_4939, x_4939)) + vec3<f32>(x_4942.x, x_4942.y, x_4942.z));
  let x_4945 : vec4<f32> = u_xlat8;
  let x_4947 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4945.x, x_4945.y, x_4945.z) + x_4947);
  let x_4949 : f32 = u_xlat79;
  let x_4950 : f32 = u_xlat79;
  u_xlat1.x = (x_4949 * -(x_4950));
  let x_4955 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_4955);
  let x_4958 : vec3<f32> = u_xlat0;
  let x_4959 : f32 = u_xlat78;
  let x_4963 : vec4<f32> = x_113.unity_FogColor;
  u_xlat0 = ((x_4958 * vec3<f32>(x_4959, x_4959, x_4959)) + -(vec3<f32>(x_4963.x, x_4963.y, x_4963.z)));
  let x_4969 : vec4<f32> = u_xlat1;
  let x_4971 : vec3<f32> = u_xlat0;
  let x_4974 : vec4<f32> = x_113.unity_FogColor;
  let x_4976 : vec3<f32> = ((vec3<f32>(x_4969.x, x_4969.x, x_4969.x) * x_4971) + vec3<f32>(x_4974.x, x_4974.y, x_4974.z));
  let x_4977 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4976.x, x_4976.y, x_4976.z, x_4977.w);
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


