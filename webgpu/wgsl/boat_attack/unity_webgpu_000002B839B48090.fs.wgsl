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

@group(1) @binding(3) var<uniform> x_13 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(15) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_113 : PGlobals;

var<private> u_xlat78 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(16) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(3) var x_Splat1 : texture_2d<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(4) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(5) var x_Splat3 : texture_2d<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlatb79 : bool;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat79 : f32;

@group(0) @binding(6) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(17) var sampler_Normal0 : sampler;

@group(0) @binding(7) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(8) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(9) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat26 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_833 : LightShadows;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat80 : f32;

@group(1) @binding(2) var<uniform> x_1050 : UnityPerDraw;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlatb83 : bool;

@group(0) @binding(10) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlatb28 : bool;

var<private> u_xlatb54 : bool;

var<private> u_xlat54 : f32;

@group(1) @binding(5) var<uniform> x_2513 : LightCookies;

@group(0) @binding(12) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(14) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlatu0 : u32;

var<private> u_xlatu54 : u32;

var<private> u_xlati83 : i32;

var<private> u_xlati54 : i32;

@group(1) @binding(1) var<uniform> x_3022 : AdditionalLights;

var<private> u_xlat85 : f32;

var<private> u_xlati85 : i32;

var<private> u_xlatb86 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(11) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

var<private> u_xlati86 : i32;

var<private> u_xlati88 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat37 : vec3<f32>;

@group(0) @binding(13) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu79 : u32;

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
  var x_2464 : f32;
  var x_2596 : f32;
  var x_2607 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3151 : f32;
  var x_3160 : f32;
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
  var x_4739 : f32;
  var x_4752 : f32;
  var x_4810 : f32;
  var x_4821 : vec3<f32>;
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
  u_xlat2.x = dot(x_937, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_943 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_943) + 4.0f);
  let x_950 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_950);
  let x_954 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_954) << bitcast<u32>(2i));
  let x_958 : vec3<f32> = vs_TEXCOORD7;
  let x_960 : i32 = u_xlati2;
  let x_963 : i32 = u_xlati2;
  let x_967 : vec4<f32> = x_833.x_MainLightWorldToShadow[((x_960 + 1i) / 4i)][((x_963 + 1i) % 4i)];
  u_xlat28 = (vec3<f32>(x_958.y, x_958.y, x_958.y) * vec3<f32>(x_967.x, x_967.y, x_967.z));
  let x_970 : i32 = u_xlati2;
  let x_972 : i32 = u_xlati2;
  let x_975 : vec4<f32> = x_833.x_MainLightWorldToShadow[(x_970 / 4i)][(x_972 % 4i)];
  let x_977 : vec3<f32> = vs_TEXCOORD7;
  let x_980 : vec3<f32> = u_xlat28;
  u_xlat28 = ((vec3<f32>(x_975.x, x_975.y, x_975.z) * vec3<f32>(x_977.x, x_977.x, x_977.x)) + x_980);
  let x_982 : i32 = u_xlati2;
  let x_985 : i32 = u_xlati2;
  let x_989 : vec4<f32> = x_833.x_MainLightWorldToShadow[((x_982 + 2i) / 4i)][((x_985 + 2i) % 4i)];
  let x_991 : vec3<f32> = vs_TEXCOORD7;
  let x_994 : vec3<f32> = u_xlat28;
  u_xlat28 = ((vec3<f32>(x_989.x, x_989.y, x_989.z) * vec3<f32>(x_991.z, x_991.z, x_991.z)) + x_994);
  let x_996 : vec3<f32> = u_xlat28;
  let x_997 : i32 = u_xlati2;
  let x_1000 : i32 = u_xlati2;
  let x_1004 : vec4<f32> = x_833.x_MainLightWorldToShadow[((x_997 + 3i) / 4i)][((x_1000 + 3i) % 4i)];
  let x_1006 : vec3<f32> = (x_996 + vec3<f32>(x_1004.x, x_1004.y, x_1004.z));
  let x_1007 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1007.w);
  let x_1012 : f32 = vs_TEXCOORD7.y;
  let x_1014 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat80 = (x_1012 * x_1014);
  let x_1017 : f32 = x_113.unity_MatrixV[0i].z;
  let x_1019 : f32 = vs_TEXCOORD7.x;
  let x_1021 : f32 = u_xlat80;
  u_xlat80 = ((x_1017 * x_1019) + x_1021);
  let x_1024 : f32 = x_113.unity_MatrixV[2i].z;
  let x_1026 : f32 = vs_TEXCOORD7.z;
  let x_1028 : f32 = u_xlat80;
  u_xlat80 = ((x_1024 * x_1026) + x_1028);
  let x_1030 : f32 = u_xlat80;
  let x_1032 : f32 = x_113.unity_MatrixV[3i].z;
  u_xlat80 = (x_1030 + x_1032);
  let x_1034 : f32 = u_xlat80;
  let x_1037 : f32 = x_113.x_ProjectionParams.y;
  u_xlat80 = (-(x_1034) + -(x_1037));
  let x_1040 : f32 = u_xlat80;
  u_xlat80 = max(x_1040, 0.0f);
  let x_1042 : f32 = u_xlat80;
  let x_1044 : f32 = x_113.unity_FogParams.x;
  u_xlat80 = (x_1042 * x_1044);
  u_xlat1.w = 1.0f;
  let x_1052 : vec4<f32> = x_1050.unity_SHAr;
  let x_1053 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_1052, x_1053);
  let x_1057 : vec4<f32> = x_1050.unity_SHAg;
  let x_1058 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_1057, x_1058);
  let x_1062 : vec4<f32> = x_1050.unity_SHAb;
  let x_1063 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_1062, x_1063);
  let x_1066 : vec4<f32> = u_xlat1;
  let x_1068 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_1066.y, x_1066.z, x_1066.z, x_1066.x) * vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1068.z));
  let x_1072 : vec4<f32> = x_1050.unity_SHBr;
  let x_1073 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_1072, x_1073);
  let x_1077 : vec4<f32> = x_1050.unity_SHBg;
  let x_1078 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_1077, x_1078);
  let x_1082 : vec4<f32> = x_1050.unity_SHBb;
  let x_1083 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_1082, x_1083);
  let x_1087 : f32 = u_xlat1.y;
  let x_1089 : f32 = u_xlat1.y;
  u_xlat79 = (x_1087 * x_1089);
  let x_1092 : f32 = u_xlat1.x;
  let x_1094 : f32 = u_xlat1.x;
  let x_1096 : f32 = u_xlat79;
  u_xlat79 = ((x_1092 * x_1094) + -(x_1096));
  let x_1101 : vec4<f32> = x_1050.unity_SHC;
  let x_1103 : f32 = u_xlat79;
  let x_1106 : vec4<f32> = u_xlat6;
  let x_1108 : vec3<f32> = ((vec3<f32>(x_1101.x, x_1101.y, x_1101.z) * vec3<f32>(x_1103, x_1103, x_1103)) + vec3<f32>(x_1106.x, x_1106.y, x_1106.z));
  let x_1109 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1109.w);
  let x_1111 : vec4<f32> = u_xlat3;
  let x_1113 : vec4<f32> = u_xlat4;
  let x_1115 : vec3<f32> = (vec3<f32>(x_1111.x, x_1111.y, x_1111.z) + vec3<f32>(x_1113.x, x_1113.y, x_1113.z));
  let x_1116 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1115.x, x_1115.y, x_1115.z, x_1116.w);
  let x_1118 : vec4<f32> = u_xlat3;
  let x_1120 : vec3<f32> = max(vec3<f32>(x_1118.x, x_1118.y, x_1118.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1121 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);
  let x_1124 : f32 = u_xlat0.x;
  u_xlat79 = ((-(x_1124) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_1130 : f32 = u_xlat79;
  u_xlat81 = (-(x_1130) + 1.0f);
  let x_1133 : f32 = u_xlat79;
  let x_1135 : vec4<f32> = u_xlat5;
  let x_1137 : vec3<f32> = (vec3<f32>(x_1133, x_1133, x_1133) * vec3<f32>(x_1135.x, x_1135.y, x_1135.z));
  let x_1138 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1137.x, x_1137.y, x_1137.z, x_1138.w);
  let x_1140 : vec4<f32> = u_xlat5;
  let x_1144 : vec3<f32> = (vec3<f32>(x_1140.x, x_1140.y, x_1140.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_1145 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1145.w);
  let x_1147 : vec3<f32> = u_xlat0;
  let x_1149 : vec4<f32> = u_xlat5;
  let x_1154 : vec3<f32> = ((vec3<f32>(x_1147.x, x_1147.x, x_1147.x) * vec3<f32>(x_1149.x, x_1149.y, x_1149.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_1155 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1154.x, x_1154.y, x_1154.z, x_1155.w);
  let x_1157 : f32 = u_xlat52;
  u_xlat0.x = (-(x_1157) + 1.0f);
  let x_1162 : f32 = u_xlat0.x;
  let x_1164 : f32 = u_xlat0.x;
  u_xlat79 = (x_1162 * x_1164);
  let x_1166 : f32 = u_xlat79;
  u_xlat79 = max(x_1166, 0.0078125f);
  let x_1170 : f32 = u_xlat79;
  let x_1171 : f32 = u_xlat79;
  u_xlat82 = (x_1170 * x_1171);
  let x_1173 : f32 = u_xlat52;
  let x_1174 : f32 = u_xlat81;
  u_xlat52 = (x_1173 + x_1174);
  let x_1176 : f32 = u_xlat52;
  u_xlat52 = clamp(x_1176, 0.0f, 1.0f);
  let x_1178 : f32 = u_xlat79;
  u_xlat81 = ((x_1178 * 4.0f) + 2.0f);
  let x_1181 : f32 = u_xlat26;
  u_xlat26 = min(x_1181, 1.0f);
  let x_1185 : f32 = x_833.x_MainLightShadowParams.y;
  u_xlatb83 = (0.0f < x_1185);
  let x_1187 : bool = u_xlatb83;
  if (x_1187) {
    let x_1191 : f32 = x_833.x_MainLightShadowParams.y;
    u_xlatb83 = (x_1191 == 1.0f);
    let x_1193 : bool = u_xlatb83;
    if (x_1193) {
      let x_1196 : vec4<f32> = u_xlat2;
      let x_1199 : vec4<f32> = x_833.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_1196.x, x_1196.y, x_1196.x, x_1196.y) + x_1199);
      let x_1203 : vec4<f32> = u_xlat6;
      let x_1204 : vec2<f32> = vec2<f32>(x_1203.x, x_1203.y);
      let x_1206 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_1204.x, x_1204.y, x_1206);
      let x_1218 : vec3<f32> = txVec0;
      let x_1220 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1218.xy, x_1218.z);
      u_xlat7.x = x_1220;
      let x_1223 : vec4<f32> = u_xlat6;
      let x_1224 : vec2<f32> = vec2<f32>(x_1223.z, x_1223.w);
      let x_1226 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_1224.x, x_1224.y, x_1226);
      let x_1233 : vec3<f32> = txVec1;
      let x_1235 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1233.xy, x_1233.z);
      u_xlat7.y = x_1235;
      let x_1237 : vec4<f32> = u_xlat2;
      let x_1240 : vec4<f32> = x_833.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1237.x, x_1237.y, x_1237.x, x_1237.y) + x_1240);
      let x_1243 : vec4<f32> = u_xlat6;
      let x_1244 : vec2<f32> = vec2<f32>(x_1243.x, x_1243.y);
      let x_1246 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_1244.x, x_1244.y, x_1246);
      let x_1253 : vec3<f32> = txVec2;
      let x_1255 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1253.xy, x_1253.z);
      u_xlat7.z = x_1255;
      let x_1258 : vec4<f32> = u_xlat6;
      let x_1259 : vec2<f32> = vec2<f32>(x_1258.z, x_1258.w);
      let x_1261 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_1259.x, x_1259.y, x_1261);
      let x_1268 : vec3<f32> = txVec3;
      let x_1270 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1268.xy, x_1268.z);
      u_xlat7.w = x_1270;
      let x_1273 : vec4<f32> = u_xlat7;
      u_xlat83 = dot(x_1273, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1280 : f32 = x_833.x_MainLightShadowParams.y;
      u_xlatb6 = (x_1280 == 2.0f);
      let x_1282 : bool = u_xlatb6;
      if (x_1282) {
        let x_1285 : vec4<f32> = u_xlat2;
        let x_1288 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1291 : vec2<f32> = ((vec2<f32>(x_1285.x, x_1285.y) * vec2<f32>(x_1288.z, x_1288.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1292 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1291.x, x_1291.y, x_1292.z, x_1292.w);
        let x_1294 : vec4<f32> = u_xlat6;
        let x_1296 : vec2<f32> = floor(vec2<f32>(x_1294.x, x_1294.y));
        let x_1297 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1296.x, x_1296.y, x_1297.z, x_1297.w);
        let x_1301 : vec4<f32> = u_xlat2;
        let x_1304 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1307 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1301.x, x_1301.y) * vec2<f32>(x_1304.z, x_1304.w)) + -(vec2<f32>(x_1307.x, x_1307.y)));
        let x_1311 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1311.x, x_1311.x, x_1311.y, x_1311.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1315 : vec4<f32> = u_xlat7;
        let x_1317 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1315.x, x_1315.x, x_1315.z, x_1315.z) * vec4<f32>(x_1317.x, x_1317.x, x_1317.z, x_1317.z));
        let x_1320 : vec4<f32> = u_xlat8;
        let x_1324 : vec2<f32> = (vec2<f32>(x_1320.y, x_1320.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1325 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1324.x, x_1325.y, x_1324.y, x_1325.w);
        let x_1327 : vec4<f32> = u_xlat8;
        let x_1330 : vec2<f32> = u_xlat58;
        let x_1332 : vec2<f32> = ((vec2<f32>(x_1327.x, x_1327.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1330));
        let x_1333 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1332.x, x_1332.y, x_1333.z, x_1333.w);
        let x_1336 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_1336) + vec2<f32>(1.0f, 1.0f));
        let x_1340 : vec2<f32> = u_xlat58;
        let x_1342 : vec2<f32> = min(x_1340, vec2<f32>(0.0f, 0.0f));
        let x_1343 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1342.x, x_1342.y, x_1343.z, x_1343.w);
        let x_1345 : vec4<f32> = u_xlat9;
        let x_1348 : vec4<f32> = u_xlat9;
        let x_1351 : vec2<f32> = u_xlat60;
        let x_1352 : vec2<f32> = ((-(vec2<f32>(x_1345.x, x_1345.y)) * vec2<f32>(x_1348.x, x_1348.y)) + x_1351);
        let x_1353 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1352.x, x_1352.y, x_1353.z, x_1353.w);
        let x_1355 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_1355, vec2<f32>(0.0f, 0.0f));
        let x_1357 : vec2<f32> = u_xlat58;
        let x_1359 : vec2<f32> = u_xlat58;
        let x_1361 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_1357) * x_1359) + vec2<f32>(x_1361.y, x_1361.w));
        let x_1364 : vec4<f32> = u_xlat9;
        let x_1366 : vec2<f32> = (vec2<f32>(x_1364.x, x_1364.y) + vec2<f32>(1.0f, 1.0f));
        let x_1367 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1366.x, x_1366.y, x_1367.z, x_1367.w);
        let x_1369 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_1369 + vec2<f32>(1.0f, 1.0f));
        let x_1371 : vec4<f32> = u_xlat8;
        let x_1375 : vec2<f32> = (vec2<f32>(x_1371.x, x_1371.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1376 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1375.x, x_1375.y, x_1376.z, x_1376.w);
        let x_1378 : vec2<f32> = u_xlat60;
        let x_1379 : vec2<f32> = (x_1378 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1380 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1379.x, x_1379.y, x_1380.z, x_1380.w);
        let x_1382 : vec4<f32> = u_xlat9;
        let x_1384 : vec2<f32> = (vec2<f32>(x_1382.x, x_1382.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1385 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1384.x, x_1384.y, x_1385.z, x_1385.w);
        let x_1387 : vec2<f32> = u_xlat58;
        let x_1388 : vec2<f32> = (x_1387 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1389 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1388.x, x_1388.y, x_1389.z, x_1389.w);
        let x_1391 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_1391.y, x_1391.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1395 : f32 = u_xlat9.x;
        u_xlat10.z = x_1395;
        let x_1398 : f32 = u_xlat58.x;
        u_xlat10.w = x_1398;
        let x_1401 : f32 = u_xlat11.x;
        u_xlat8.z = x_1401;
        let x_1404 : f32 = u_xlat7.x;
        u_xlat8.w = x_1404;
        let x_1406 : vec4<f32> = u_xlat8;
        let x_1408 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1406.z, x_1406.w, x_1406.x, x_1406.z) + vec4<f32>(x_1408.z, x_1408.w, x_1408.x, x_1408.z));
        let x_1412 : f32 = u_xlat10.y;
        u_xlat9.z = x_1412;
        let x_1415 : f32 = u_xlat58.y;
        u_xlat9.w = x_1415;
        let x_1418 : f32 = u_xlat8.y;
        u_xlat11.z = x_1418;
        let x_1421 : f32 = u_xlat7.z;
        u_xlat11.w = x_1421;
        let x_1423 : vec4<f32> = u_xlat9;
        let x_1425 : vec4<f32> = u_xlat11;
        let x_1427 : vec3<f32> = (vec3<f32>(x_1423.z, x_1423.y, x_1423.w) + vec3<f32>(x_1425.z, x_1425.y, x_1425.w));
        let x_1428 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1427.x, x_1427.y, x_1427.z, x_1428.w);
        let x_1430 : vec4<f32> = u_xlat8;
        let x_1432 : vec4<f32> = u_xlat12;
        let x_1434 : vec3<f32> = (vec3<f32>(x_1430.x, x_1430.z, x_1430.w) / vec3<f32>(x_1432.z, x_1432.w, x_1432.y));
        let x_1435 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1434.x, x_1434.y, x_1434.z, x_1435.w);
        let x_1437 : vec4<f32> = u_xlat8;
        let x_1443 : vec3<f32> = (vec3<f32>(x_1437.x, x_1437.y, x_1437.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1444 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1443.x, x_1443.y, x_1443.z, x_1444.w);
        let x_1446 : vec4<f32> = u_xlat11;
        let x_1448 : vec4<f32> = u_xlat7;
        let x_1450 : vec3<f32> = (vec3<f32>(x_1446.z, x_1446.y, x_1446.w) / vec3<f32>(x_1448.x, x_1448.y, x_1448.z));
        let x_1451 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1450.x, x_1450.y, x_1450.z, x_1451.w);
        let x_1453 : vec4<f32> = u_xlat9;
        let x_1455 : vec3<f32> = (vec3<f32>(x_1453.x, x_1453.y, x_1453.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1456 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1455.x, x_1455.y, x_1455.z, x_1456.w);
        let x_1458 : vec4<f32> = u_xlat8;
        let x_1461 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1463 : vec3<f32> = (vec3<f32>(x_1458.y, x_1458.x, x_1458.z) * vec3<f32>(x_1461.x, x_1461.x, x_1461.x));
        let x_1464 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1463.x, x_1463.y, x_1463.z, x_1464.w);
        let x_1466 : vec4<f32> = u_xlat9;
        let x_1469 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1471 : vec3<f32> = (vec3<f32>(x_1466.x, x_1466.y, x_1466.z) * vec3<f32>(x_1469.y, x_1469.y, x_1469.y));
        let x_1472 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1471.x, x_1471.y, x_1471.z, x_1472.w);
        let x_1475 : f32 = u_xlat9.x;
        u_xlat8.w = x_1475;
        let x_1477 : vec4<f32> = u_xlat6;
        let x_1480 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1483 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1477.x, x_1477.y, x_1477.x, x_1477.y) * vec4<f32>(x_1480.x, x_1480.y, x_1480.x, x_1480.y)) + vec4<f32>(x_1483.y, x_1483.w, x_1483.x, x_1483.w));
        let x_1486 : vec4<f32> = u_xlat6;
        let x_1489 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1492 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_1486.x, x_1486.y) * vec2<f32>(x_1489.x, x_1489.y)) + vec2<f32>(x_1492.z, x_1492.w));
        let x_1496 : f32 = u_xlat8.y;
        u_xlat9.w = x_1496;
        let x_1498 : vec4<f32> = u_xlat9;
        let x_1499 : vec2<f32> = vec2<f32>(x_1498.y, x_1498.z);
        let x_1500 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1500.x, x_1499.x, x_1500.z, x_1499.y);
        let x_1502 : vec4<f32> = u_xlat6;
        let x_1505 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1508 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1502.x, x_1502.y, x_1502.x, x_1502.y) * vec4<f32>(x_1505.x, x_1505.y, x_1505.x, x_1505.y)) + vec4<f32>(x_1508.x, x_1508.y, x_1508.z, x_1508.y));
        let x_1511 : vec4<f32> = u_xlat6;
        let x_1514 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1517 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1511.x, x_1511.y, x_1511.x, x_1511.y) * vec4<f32>(x_1514.x, x_1514.y, x_1514.x, x_1514.y)) + vec4<f32>(x_1517.w, x_1517.y, x_1517.w, x_1517.z));
        let x_1520 : vec4<f32> = u_xlat6;
        let x_1523 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1526 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1520.x, x_1520.y, x_1520.x, x_1520.y) * vec4<f32>(x_1523.x, x_1523.y, x_1523.x, x_1523.y)) + vec4<f32>(x_1526.x, x_1526.w, x_1526.z, x_1526.w));
        let x_1529 : vec4<f32> = u_xlat7;
        let x_1531 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1529.x, x_1529.x, x_1529.x, x_1529.y) * vec4<f32>(x_1531.z, x_1531.w, x_1531.y, x_1531.z));
        let x_1535 : vec4<f32> = u_xlat7;
        let x_1537 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1535.y, x_1535.y, x_1535.z, x_1535.z) * x_1537);
        let x_1540 : f32 = u_xlat7.z;
        let x_1542 : f32 = u_xlat12.y;
        u_xlat6.x = (x_1540 * x_1542);
        let x_1546 : vec4<f32> = u_xlat10;
        let x_1547 : vec2<f32> = vec2<f32>(x_1546.x, x_1546.y);
        let x_1549 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_1547.x, x_1547.y, x_1549);
        let x_1557 : vec3<f32> = txVec4;
        let x_1559 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1557.xy, x_1557.z);
        u_xlat32 = x_1559;
        let x_1561 : vec4<f32> = u_xlat10;
        let x_1562 : vec2<f32> = vec2<f32>(x_1561.z, x_1561.w);
        let x_1564 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_1562.x, x_1562.y, x_1564);
        let x_1571 : vec3<f32> = txVec5;
        let x_1573 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1571.xy, x_1571.z);
        u_xlat7.x = x_1573;
        let x_1576 : f32 = u_xlat7.x;
        let x_1578 : f32 = u_xlat13.y;
        u_xlat7.x = (x_1576 * x_1578);
        let x_1582 : f32 = u_xlat13.x;
        let x_1583 : f32 = u_xlat32;
        let x_1586 : f32 = u_xlat7.x;
        u_xlat32 = ((x_1582 * x_1583) + x_1586);
        let x_1589 : vec2<f32> = u_xlat58;
        let x_1591 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_1589.x, x_1589.y, x_1591);
        let x_1598 : vec3<f32> = txVec6;
        let x_1600 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1598.xy, x_1598.z);
        u_xlat58.x = x_1600;
        let x_1603 : f32 = u_xlat13.z;
        let x_1605 : f32 = u_xlat58.x;
        let x_1607 : f32 = u_xlat32;
        u_xlat32 = ((x_1603 * x_1605) + x_1607);
        let x_1610 : vec4<f32> = u_xlat9;
        let x_1611 : vec2<f32> = vec2<f32>(x_1610.x, x_1610.y);
        let x_1613 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_1611.x, x_1611.y, x_1613);
        let x_1620 : vec3<f32> = txVec7;
        let x_1622 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1620.xy, x_1620.z);
        u_xlat58.x = x_1622;
        let x_1625 : f32 = u_xlat13.w;
        let x_1627 : f32 = u_xlat58.x;
        let x_1629 : f32 = u_xlat32;
        u_xlat32 = ((x_1625 * x_1627) + x_1629);
        let x_1632 : vec4<f32> = u_xlat11;
        let x_1633 : vec2<f32> = vec2<f32>(x_1632.x, x_1632.y);
        let x_1635 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_1633.x, x_1633.y, x_1635);
        let x_1642 : vec3<f32> = txVec8;
        let x_1644 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1642.xy, x_1642.z);
        u_xlat58.x = x_1644;
        let x_1647 : f32 = u_xlat14.x;
        let x_1649 : f32 = u_xlat58.x;
        let x_1651 : f32 = u_xlat32;
        u_xlat32 = ((x_1647 * x_1649) + x_1651);
        let x_1654 : vec4<f32> = u_xlat11;
        let x_1655 : vec2<f32> = vec2<f32>(x_1654.z, x_1654.w);
        let x_1657 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_1655.x, x_1655.y, x_1657);
        let x_1664 : vec3<f32> = txVec9;
        let x_1666 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1664.xy, x_1664.z);
        u_xlat58.x = x_1666;
        let x_1669 : f32 = u_xlat14.y;
        let x_1671 : f32 = u_xlat58.x;
        let x_1673 : f32 = u_xlat32;
        u_xlat32 = ((x_1669 * x_1671) + x_1673);
        let x_1676 : vec4<f32> = u_xlat9;
        let x_1677 : vec2<f32> = vec2<f32>(x_1676.z, x_1676.w);
        let x_1679 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_1677.x, x_1677.y, x_1679);
        let x_1686 : vec3<f32> = txVec10;
        let x_1688 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1686.xy, x_1686.z);
        u_xlat58.x = x_1688;
        let x_1691 : f32 = u_xlat14.z;
        let x_1693 : f32 = u_xlat58.x;
        let x_1695 : f32 = u_xlat32;
        u_xlat32 = ((x_1691 * x_1693) + x_1695);
        let x_1698 : vec4<f32> = u_xlat8;
        let x_1699 : vec2<f32> = vec2<f32>(x_1698.x, x_1698.y);
        let x_1701 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_1699.x, x_1699.y, x_1701);
        let x_1708 : vec3<f32> = txVec11;
        let x_1710 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1708.xy, x_1708.z);
        u_xlat58.x = x_1710;
        let x_1713 : f32 = u_xlat14.w;
        let x_1715 : f32 = u_xlat58.x;
        let x_1717 : f32 = u_xlat32;
        u_xlat32 = ((x_1713 * x_1715) + x_1717);
        let x_1720 : vec4<f32> = u_xlat8;
        let x_1721 : vec2<f32> = vec2<f32>(x_1720.z, x_1720.w);
        let x_1723 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_1721.x, x_1721.y, x_1723);
        let x_1730 : vec3<f32> = txVec12;
        let x_1732 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1730.xy, x_1730.z);
        u_xlat58.x = x_1732;
        let x_1735 : f32 = u_xlat6.x;
        let x_1737 : f32 = u_xlat58.x;
        let x_1739 : f32 = u_xlat32;
        u_xlat83 = ((x_1735 * x_1737) + x_1739);
      } else {
        let x_1742 : vec4<f32> = u_xlat2;
        let x_1745 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1748 : vec2<f32> = ((vec2<f32>(x_1742.x, x_1742.y) * vec2<f32>(x_1745.z, x_1745.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1749 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1748.x, x_1748.y, x_1749.z, x_1749.w);
        let x_1751 : vec4<f32> = u_xlat6;
        let x_1753 : vec2<f32> = floor(vec2<f32>(x_1751.x, x_1751.y));
        let x_1754 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1753.x, x_1753.y, x_1754.z, x_1754.w);
        let x_1756 : vec4<f32> = u_xlat2;
        let x_1759 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1762 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1756.x, x_1756.y) * vec2<f32>(x_1759.z, x_1759.w)) + -(vec2<f32>(x_1762.x, x_1762.y)));
        let x_1766 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1766.x, x_1766.x, x_1766.y, x_1766.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1769 : vec4<f32> = u_xlat7;
        let x_1771 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1769.x, x_1769.x, x_1769.z, x_1769.z) * vec4<f32>(x_1771.x, x_1771.x, x_1771.z, x_1771.z));
        let x_1774 : vec4<f32> = u_xlat8;
        let x_1778 : vec2<f32> = (vec2<f32>(x_1774.y, x_1774.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1779 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1779.x, x_1778.x, x_1779.z, x_1778.y);
        let x_1781 : vec4<f32> = u_xlat8;
        let x_1784 : vec2<f32> = u_xlat58;
        let x_1786 : vec2<f32> = ((vec2<f32>(x_1781.x, x_1781.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1784));
        let x_1787 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1786.x, x_1787.y, x_1786.y, x_1787.w);
        let x_1789 : vec2<f32> = u_xlat58;
        let x_1791 : vec2<f32> = (-(x_1789) + vec2<f32>(1.0f, 1.0f));
        let x_1792 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1791.x, x_1791.y, x_1792.z, x_1792.w);
        let x_1794 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1794, vec2<f32>(0.0f, 0.0f));
        let x_1796 : vec2<f32> = u_xlat60;
        let x_1798 : vec2<f32> = u_xlat60;
        let x_1800 : vec4<f32> = u_xlat8;
        let x_1802 : vec2<f32> = ((-(x_1796) * x_1798) + vec2<f32>(x_1800.x, x_1800.y));
        let x_1803 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1802.x, x_1802.y, x_1803.z, x_1803.w);
        let x_1805 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1805, vec2<f32>(0.0f, 0.0f));
        let x_1808 : vec2<f32> = u_xlat60;
        let x_1810 : vec2<f32> = u_xlat60;
        let x_1812 : vec4<f32> = u_xlat7;
        let x_1814 : vec2<f32> = ((-(x_1808) * x_1810) + vec2<f32>(x_1812.y, x_1812.w));
        let x_1815 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1814.x, x_1815.y, x_1814.y);
        let x_1817 : vec4<f32> = u_xlat8;
        let x_1819 : vec2<f32> = (vec2<f32>(x_1817.x, x_1817.y) + vec2<f32>(2.0f, 2.0f));
        let x_1820 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1819.x, x_1819.y, x_1820.z, x_1820.w);
        let x_1822 : vec3<f32> = u_xlat33;
        let x_1824 : vec2<f32> = (vec2<f32>(x_1822.x, x_1822.z) + vec2<f32>(2.0f, 2.0f));
        let x_1825 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1825.x, x_1824.x, x_1825.z, x_1824.y);
        let x_1828 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1828 * 0.08163200318813323975f);
        let x_1832 : vec4<f32> = u_xlat7;
        let x_1835 : vec3<f32> = (vec3<f32>(x_1832.z, x_1832.x, x_1832.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1836 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1835.x, x_1835.y, x_1835.z, x_1836.w);
        let x_1838 : vec4<f32> = u_xlat8;
        let x_1841 : vec2<f32> = (vec2<f32>(x_1838.x, x_1838.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1842 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1841.x, x_1841.y, x_1842.z, x_1842.w);
        let x_1845 : f32 = u_xlat11.y;
        u_xlat10.x = x_1845;
        let x_1847 : vec2<f32> = u_xlat58;
        let x_1854 : vec2<f32> = ((vec2<f32>(x_1847.x, x_1847.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1855 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1855.x, x_1854.x, x_1855.z, x_1854.y);
        let x_1857 : vec2<f32> = u_xlat58;
        let x_1861 : vec2<f32> = ((vec2<f32>(x_1857.x, x_1857.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1862 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1861.x, x_1862.y, x_1861.y, x_1862.w);
        let x_1865 : f32 = u_xlat7.x;
        u_xlat8.y = x_1865;
        let x_1868 : f32 = u_xlat9.y;
        u_xlat8.w = x_1868;
        let x_1870 : vec4<f32> = u_xlat8;
        let x_1871 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1870 + x_1871);
        let x_1873 : vec2<f32> = u_xlat58;
        let x_1876 : vec2<f32> = ((vec2<f32>(x_1873.y, x_1873.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1877 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1877.x, x_1876.x, x_1877.z, x_1876.y);
        let x_1879 : vec2<f32> = u_xlat58;
        let x_1882 : vec2<f32> = ((vec2<f32>(x_1879.y, x_1879.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1883 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1882.x, x_1883.y, x_1882.y, x_1883.w);
        let x_1886 : f32 = u_xlat7.y;
        u_xlat9.y = x_1886;
        let x_1888 : vec4<f32> = u_xlat9;
        let x_1889 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1888 + x_1889);
        let x_1891 : vec4<f32> = u_xlat8;
        let x_1892 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1891 / x_1892);
        let x_1894 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1894 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1900 : vec4<f32> = u_xlat9;
        let x_1901 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1900 / x_1901);
        let x_1903 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1903 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1905 : vec4<f32> = u_xlat8;
        let x_1908 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1905.w, x_1905.x, x_1905.y, x_1905.z) * vec4<f32>(x_1908.x, x_1908.x, x_1908.x, x_1908.x));
        let x_1911 : vec4<f32> = u_xlat9;
        let x_1914 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1911.x, x_1911.w, x_1911.y, x_1911.z) * vec4<f32>(x_1914.y, x_1914.y, x_1914.y, x_1914.y));
        let x_1917 : vec4<f32> = u_xlat8;
        let x_1918 : vec3<f32> = vec3<f32>(x_1917.y, x_1917.z, x_1917.w);
        let x_1919 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1918.x, x_1919.y, x_1918.y, x_1918.z);
        let x_1922 : f32 = u_xlat9.x;
        u_xlat11.y = x_1922;
        let x_1924 : vec4<f32> = u_xlat6;
        let x_1927 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1930 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1924.x, x_1924.y, x_1924.x, x_1924.y) * vec4<f32>(x_1927.x, x_1927.y, x_1927.x, x_1927.y)) + vec4<f32>(x_1930.x, x_1930.y, x_1930.z, x_1930.y));
        let x_1933 : vec4<f32> = u_xlat6;
        let x_1936 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1939 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1933.x, x_1933.y) * vec2<f32>(x_1936.x, x_1936.y)) + vec2<f32>(x_1939.w, x_1939.y));
        let x_1943 : f32 = u_xlat11.y;
        u_xlat8.y = x_1943;
        let x_1946 : f32 = u_xlat9.z;
        u_xlat11.y = x_1946;
        let x_1948 : vec4<f32> = u_xlat6;
        let x_1951 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1954 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1948.x, x_1948.y, x_1948.x, x_1948.y) * vec4<f32>(x_1951.x, x_1951.y, x_1951.x, x_1951.y)) + vec4<f32>(x_1954.x, x_1954.y, x_1954.z, x_1954.y));
        let x_1957 : vec4<f32> = u_xlat6;
        let x_1960 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1963 : vec4<f32> = u_xlat11;
        let x_1965 : vec2<f32> = ((vec2<f32>(x_1957.x, x_1957.y) * vec2<f32>(x_1960.x, x_1960.y)) + vec2<f32>(x_1963.w, x_1963.y));
        let x_1966 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1965.x, x_1965.y, x_1966.z, x_1966.w);
        let x_1969 : f32 = u_xlat11.y;
        u_xlat8.z = x_1969;
        let x_1972 : vec4<f32> = u_xlat6;
        let x_1975 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1978 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1972.x, x_1972.y, x_1972.x, x_1972.y) * vec4<f32>(x_1975.x, x_1975.y, x_1975.x, x_1975.y)) + vec4<f32>(x_1978.x, x_1978.y, x_1978.x, x_1978.z));
        let x_1982 : f32 = u_xlat9.w;
        u_xlat11.y = x_1982;
        let x_1985 : vec4<f32> = u_xlat6;
        let x_1988 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1991 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1985.x, x_1985.y, x_1985.x, x_1985.y) * vec4<f32>(x_1988.x, x_1988.y, x_1988.x, x_1988.y)) + vec4<f32>(x_1991.x, x_1991.y, x_1991.z, x_1991.y));
        let x_1995 : vec4<f32> = u_xlat6;
        let x_1998 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_2001 : vec4<f32> = u_xlat11;
        u_xlat34 = ((vec2<f32>(x_1995.x, x_1995.y) * vec2<f32>(x_1998.x, x_1998.y)) + vec2<f32>(x_2001.w, x_2001.y));
        let x_2005 : f32 = u_xlat11.y;
        u_xlat8.w = x_2005;
        let x_2008 : vec4<f32> = u_xlat6;
        let x_2011 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_2014 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_2008.x, x_2008.y) * vec2<f32>(x_2011.x, x_2011.y)) + vec2<f32>(x_2014.x, x_2014.w));
        let x_2017 : vec4<f32> = u_xlat11;
        let x_2018 : vec3<f32> = vec3<f32>(x_2017.x, x_2017.z, x_2017.w);
        let x_2019 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2018.x, x_2019.y, x_2018.y, x_2018.z);
        let x_2021 : vec4<f32> = u_xlat6;
        let x_2024 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_2027 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2021.x, x_2021.y, x_2021.x, x_2021.y) * vec4<f32>(x_2024.x, x_2024.y, x_2024.x, x_2024.y)) + vec4<f32>(x_2027.x, x_2027.y, x_2027.z, x_2027.y));
        let x_2031 : vec4<f32> = u_xlat6;
        let x_2034 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_2037 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_2031.x, x_2031.y) * vec2<f32>(x_2034.x, x_2034.y)) + vec2<f32>(x_2037.w, x_2037.y));
        let x_2041 : f32 = u_xlat8.x;
        u_xlat9.x = x_2041;
        let x_2043 : vec4<f32> = u_xlat6;
        let x_2046 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_2049 : vec4<f32> = u_xlat9;
        let x_2051 : vec2<f32> = ((vec2<f32>(x_2043.x, x_2043.y) * vec2<f32>(x_2046.x, x_2046.y)) + vec2<f32>(x_2049.x, x_2049.y));
        let x_2052 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_2051.x, x_2051.y, x_2052.z, x_2052.w);
        let x_2055 : vec4<f32> = u_xlat7;
        let x_2057 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_2055.x, x_2055.x, x_2055.x, x_2055.x) * x_2057);
        let x_2060 : vec4<f32> = u_xlat7;
        let x_2062 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_2060.y, x_2060.y, x_2060.y, x_2060.y) * x_2062);
        let x_2065 : vec4<f32> = u_xlat7;
        let x_2067 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_2065.z, x_2065.z, x_2065.z, x_2065.z) * x_2067);
        let x_2069 : vec4<f32> = u_xlat7;
        let x_2071 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_2069.w, x_2069.w, x_2069.w, x_2069.w) * x_2071);
        let x_2074 : vec4<f32> = u_xlat12;
        let x_2075 : vec2<f32> = vec2<f32>(x_2074.x, x_2074.y);
        let x_2077 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_2075.x, x_2075.y, x_2077);
        let x_2084 : vec3<f32> = txVec13;
        let x_2086 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2084.xy, x_2084.z);
        u_xlat8.x = x_2086;
        let x_2089 : vec4<f32> = u_xlat12;
        let x_2090 : vec2<f32> = vec2<f32>(x_2089.z, x_2089.w);
        let x_2092 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_2090.x, x_2090.y, x_2092);
        let x_2100 : vec3<f32> = txVec14;
        let x_2102 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2100.xy, x_2100.z);
        u_xlat86 = x_2102;
        let x_2103 : f32 = u_xlat86;
        let x_2105 : f32 = u_xlat17.y;
        u_xlat86 = (x_2103 * x_2105);
        let x_2108 : f32 = u_xlat17.x;
        let x_2110 : f32 = u_xlat8.x;
        let x_2112 : f32 = u_xlat86;
        u_xlat8.x = ((x_2108 * x_2110) + x_2112);
        let x_2116 : vec2<f32> = u_xlat58;
        let x_2118 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_2116.x, x_2116.y, x_2118);
        let x_2125 : vec3<f32> = txVec15;
        let x_2127 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2125.xy, x_2125.z);
        u_xlat58.x = x_2127;
        let x_2130 : f32 = u_xlat17.z;
        let x_2132 : f32 = u_xlat58.x;
        let x_2135 : f32 = u_xlat8.x;
        u_xlat58.x = ((x_2130 * x_2132) + x_2135);
        let x_2139 : vec4<f32> = u_xlat15;
        let x_2140 : vec2<f32> = vec2<f32>(x_2139.x, x_2139.y);
        let x_2142 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_2140.x, x_2140.y, x_2142);
        let x_2150 : vec3<f32> = txVec16;
        let x_2152 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2150.xy, x_2150.z);
        u_xlat84 = x_2152;
        let x_2154 : f32 = u_xlat17.w;
        let x_2155 : f32 = u_xlat84;
        let x_2158 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2154 * x_2155) + x_2158);
        let x_2162 : vec4<f32> = u_xlat13;
        let x_2163 : vec2<f32> = vec2<f32>(x_2162.x, x_2162.y);
        let x_2165 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_2163.x, x_2163.y, x_2165);
        let x_2172 : vec3<f32> = txVec17;
        let x_2174 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2172.xy, x_2172.z);
        u_xlat84 = x_2174;
        let x_2176 : f32 = u_xlat18.x;
        let x_2177 : f32 = u_xlat84;
        let x_2180 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2176 * x_2177) + x_2180);
        let x_2184 : vec4<f32> = u_xlat13;
        let x_2185 : vec2<f32> = vec2<f32>(x_2184.z, x_2184.w);
        let x_2187 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_2185.x, x_2185.y, x_2187);
        let x_2194 : vec3<f32> = txVec18;
        let x_2196 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2194.xy, x_2194.z);
        u_xlat84 = x_2196;
        let x_2198 : f32 = u_xlat18.y;
        let x_2199 : f32 = u_xlat84;
        let x_2202 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2198 * x_2199) + x_2202);
        let x_2206 : vec4<f32> = u_xlat14;
        let x_2207 : vec2<f32> = vec2<f32>(x_2206.x, x_2206.y);
        let x_2209 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_2207.x, x_2207.y, x_2209);
        let x_2216 : vec3<f32> = txVec19;
        let x_2218 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2216.xy, x_2216.z);
        u_xlat84 = x_2218;
        let x_2220 : f32 = u_xlat18.z;
        let x_2221 : f32 = u_xlat84;
        let x_2224 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2220 * x_2221) + x_2224);
        let x_2228 : vec4<f32> = u_xlat15;
        let x_2229 : vec2<f32> = vec2<f32>(x_2228.z, x_2228.w);
        let x_2231 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_2229.x, x_2229.y, x_2231);
        let x_2238 : vec3<f32> = txVec20;
        let x_2240 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2238.xy, x_2238.z);
        u_xlat84 = x_2240;
        let x_2242 : f32 = u_xlat18.w;
        let x_2243 : f32 = u_xlat84;
        let x_2246 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2242 * x_2243) + x_2246);
        let x_2250 : vec4<f32> = u_xlat16;
        let x_2251 : vec2<f32> = vec2<f32>(x_2250.x, x_2250.y);
        let x_2253 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_2251.x, x_2251.y, x_2253);
        let x_2260 : vec3<f32> = txVec21;
        let x_2262 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2260.xy, x_2260.z);
        u_xlat84 = x_2262;
        let x_2264 : f32 = u_xlat19.x;
        let x_2265 : f32 = u_xlat84;
        let x_2268 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2264 * x_2265) + x_2268);
        let x_2272 : vec4<f32> = u_xlat16;
        let x_2273 : vec2<f32> = vec2<f32>(x_2272.z, x_2272.w);
        let x_2275 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_2273.x, x_2273.y, x_2275);
        let x_2282 : vec3<f32> = txVec22;
        let x_2284 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2282.xy, x_2282.z);
        u_xlat84 = x_2284;
        let x_2286 : f32 = u_xlat19.y;
        let x_2287 : f32 = u_xlat84;
        let x_2290 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2286 * x_2287) + x_2290);
        let x_2294 : vec2<f32> = u_xlat34;
        let x_2296 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_2294.x, x_2294.y, x_2296);
        let x_2303 : vec3<f32> = txVec23;
        let x_2305 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2303.xy, x_2303.z);
        u_xlat84 = x_2305;
        let x_2307 : f32 = u_xlat19.z;
        let x_2308 : f32 = u_xlat84;
        let x_2311 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2307 * x_2308) + x_2311);
        let x_2315 : vec2<f32> = u_xlat66;
        let x_2317 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_2315.x, x_2315.y, x_2317);
        let x_2324 : vec3<f32> = txVec24;
        let x_2326 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2324.xy, x_2324.z);
        u_xlat84 = x_2326;
        let x_2328 : f32 = u_xlat19.w;
        let x_2329 : f32 = u_xlat84;
        let x_2332 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2328 * x_2329) + x_2332);
        let x_2336 : vec4<f32> = u_xlat11;
        let x_2337 : vec2<f32> = vec2<f32>(x_2336.x, x_2336.y);
        let x_2339 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_2337.x, x_2337.y, x_2339);
        let x_2346 : vec3<f32> = txVec25;
        let x_2348 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2346.xy, x_2346.z);
        u_xlat84 = x_2348;
        let x_2350 : f32 = u_xlat7.x;
        let x_2351 : f32 = u_xlat84;
        let x_2354 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2350 * x_2351) + x_2354);
        let x_2358 : vec4<f32> = u_xlat11;
        let x_2359 : vec2<f32> = vec2<f32>(x_2358.z, x_2358.w);
        let x_2361 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_2359.x, x_2359.y, x_2361);
        let x_2368 : vec3<f32> = txVec26;
        let x_2370 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2368.xy, x_2368.z);
        u_xlat84 = x_2370;
        let x_2372 : f32 = u_xlat7.y;
        let x_2373 : f32 = u_xlat84;
        let x_2376 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2372 * x_2373) + x_2376);
        let x_2380 : vec2<f32> = u_xlat61;
        let x_2382 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_2380.x, x_2380.y, x_2382);
        let x_2389 : vec3<f32> = txVec27;
        let x_2391 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2389.xy, x_2389.z);
        u_xlat84 = x_2391;
        let x_2393 : f32 = u_xlat7.z;
        let x_2394 : f32 = u_xlat84;
        let x_2397 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2393 * x_2394) + x_2397);
        let x_2401 : vec4<f32> = u_xlat6;
        let x_2402 : vec2<f32> = vec2<f32>(x_2401.x, x_2401.y);
        let x_2404 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_2402.x, x_2402.y, x_2404);
        let x_2411 : vec3<f32> = txVec28;
        let x_2413 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2411.xy, x_2411.z);
        u_xlat6.x = x_2413;
        let x_2416 : f32 = u_xlat7.w;
        let x_2418 : f32 = u_xlat6.x;
        let x_2421 : f32 = u_xlat58.x;
        u_xlat83 = ((x_2416 * x_2418) + x_2421);
      }
    }
  } else {
    let x_2425 : vec4<f32> = u_xlat2;
    let x_2426 : vec2<f32> = vec2<f32>(x_2425.x, x_2425.y);
    let x_2428 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_2426.x, x_2426.y, x_2428);
    let x_2435 : vec3<f32> = txVec29;
    let x_2437 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2435.xy, x_2435.z);
    u_xlat83 = x_2437;
  }
  let x_2439 : f32 = x_833.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_2439) + 1.0f);
  let x_2443 : f32 = u_xlat83;
  let x_2445 : f32 = x_833.x_MainLightShadowParams.x;
  let x_2448 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2443 * x_2445) + x_2448);
  let x_2453 : f32 = u_xlat2.z;
  u_xlatb28 = (0.0f >= x_2453);
  let x_2457 : f32 = u_xlat2.z;
  u_xlatb54 = (x_2457 >= 1.0f);
  let x_2459 : bool = u_xlatb54;
  let x_2460 : bool = u_xlatb28;
  u_xlatb28 = (x_2459 | x_2460);
  let x_2462 : bool = u_xlatb28;
  if (x_2462) {
    x_2464 = 1.0f;
  } else {
    let x_2469 : f32 = u_xlat2.x;
    x_2464 = x_2469;
  }
  let x_2470 : f32 = x_2464;
  u_xlat2.x = x_2470;
  let x_2472 : vec3<f32> = vs_TEXCOORD7;
  let x_2475 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  let x_2477 : vec3<f32> = (x_2472 + -(x_2475));
  let x_2478 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2477.x, x_2477.y, x_2477.z, x_2478.w);
  let x_2480 : vec4<f32> = u_xlat6;
  let x_2482 : vec4<f32> = u_xlat6;
  u_xlat28.x = dot(vec3<f32>(x_2480.x, x_2480.y, x_2480.z), vec3<f32>(x_2482.x, x_2482.y, x_2482.z));
  let x_2488 : f32 = u_xlat28.x;
  let x_2490 : f32 = x_833.x_MainLightShadowParams.z;
  let x_2493 : f32 = x_833.x_MainLightShadowParams.w;
  u_xlat54 = ((x_2488 * x_2490) + x_2493);
  let x_2495 : f32 = u_xlat54;
  u_xlat54 = clamp(x_2495, 0.0f, 1.0f);
  let x_2498 : f32 = u_xlat2.x;
  u_xlat83 = (-(x_2498) + 1.0f);
  let x_2501 : f32 = u_xlat54;
  let x_2502 : f32 = u_xlat83;
  let x_2505 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2501 * x_2502) + x_2505);
  let x_2515 : f32 = x_2513.x_MainLightCookieTextureFormat;
  u_xlatb54 = !((x_2515 == -1.0f));
  let x_2517 : bool = u_xlatb54;
  if (x_2517) {
    let x_2520 : vec3<f32> = vs_TEXCOORD7;
    let x_2523 : vec4<f32> = x_2513.x_MainLightWorldToLight[1i];
    let x_2525 : vec2<f32> = (vec2<f32>(x_2520.y, x_2520.y) * vec2<f32>(x_2523.x, x_2523.y));
    let x_2526 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2525.x, x_2525.y, x_2526.z, x_2526.w);
    let x_2529 : vec4<f32> = x_2513.x_MainLightWorldToLight[0i];
    let x_2531 : vec3<f32> = vs_TEXCOORD7;
    let x_2534 : vec4<f32> = u_xlat6;
    let x_2536 : vec2<f32> = ((vec2<f32>(x_2529.x, x_2529.y) * vec2<f32>(x_2531.x, x_2531.x)) + vec2<f32>(x_2534.x, x_2534.y));
    let x_2537 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2536.x, x_2536.y, x_2537.z, x_2537.w);
    let x_2540 : vec4<f32> = x_2513.x_MainLightWorldToLight[2i];
    let x_2542 : vec3<f32> = vs_TEXCOORD7;
    let x_2545 : vec4<f32> = u_xlat6;
    let x_2547 : vec2<f32> = ((vec2<f32>(x_2540.x, x_2540.y) * vec2<f32>(x_2542.z, x_2542.z)) + vec2<f32>(x_2545.x, x_2545.y));
    let x_2548 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2547.x, x_2547.y, x_2548.z, x_2548.w);
    let x_2550 : vec4<f32> = u_xlat6;
    let x_2553 : vec4<f32> = x_2513.x_MainLightWorldToLight[3i];
    let x_2555 : vec2<f32> = (vec2<f32>(x_2550.x, x_2550.y) + vec2<f32>(x_2553.x, x_2553.y));
    let x_2556 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2555.x, x_2555.y, x_2556.z, x_2556.w);
    let x_2558 : vec4<f32> = u_xlat6;
    let x_2561 : vec2<f32> = ((vec2<f32>(x_2558.x, x_2558.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2562 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2561.x, x_2561.y, x_2562.z, x_2562.w);
    let x_2569 : vec4<f32> = u_xlat6;
    let x_2572 : f32 = x_113.x_GlobalMipBias.x;
    let x_2573 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2569.x, x_2569.y), x_2572);
    u_xlat6 = x_2573;
    let x_2578 : f32 = x_2513.x_MainLightCookieTextureFormat;
    let x_2580 : f32 = x_2513.x_MainLightCookieTextureFormat;
    let x_2582 : f32 = x_2513.x_MainLightCookieTextureFormat;
    let x_2584 : f32 = x_2513.x_MainLightCookieTextureFormat;
    let x_2585 : vec4<f32> = vec4<f32>(x_2578, x_2580, x_2582, x_2584);
    let x_2592 : vec4<bool> = (vec4<f32>(x_2585.x, x_2585.y, x_2585.z, x_2585.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2592.x, x_2592.y);
    let x_2595 : bool = u_xlatb7.y;
    if (x_2595) {
      let x_2600 : f32 = u_xlat6.w;
      x_2596 = x_2600;
    } else {
      let x_2603 : f32 = u_xlat6.x;
      x_2596 = x_2603;
    }
    let x_2604 : f32 = x_2596;
    u_xlat54 = x_2604;
    let x_2606 : bool = u_xlatb7.x;
    if (x_2606) {
      let x_2610 : vec4<f32> = u_xlat6;
      x_2607 = vec3<f32>(x_2610.x, x_2610.y, x_2610.z);
    } else {
      let x_2613 : f32 = u_xlat54;
      x_2607 = vec3<f32>(x_2613, x_2613, x_2613);
    }
    let x_2615 : vec3<f32> = x_2607;
    let x_2616 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2615.x, x_2615.y, x_2615.z, x_2616.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2622 : vec4<f32> = u_xlat6;
  let x_2625 : vec4<f32> = x_113.x_MainLightColor;
  let x_2627 : vec3<f32> = (vec3<f32>(x_2622.x, x_2622.y, x_2622.z) * vec3<f32>(x_2625.x, x_2625.y, x_2625.z));
  let x_2628 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2627.x, x_2627.y, x_2627.z, x_2628.w);
  let x_2631 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_2631;
  let x_2634 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_2634;
  let x_2637 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_2637;
  let x_2639 : vec4<f32> = u_xlat7;
  let x_2642 : vec4<f32> = u_xlat1;
  u_xlat54 = dot(-(vec3<f32>(x_2639.x, x_2639.y, x_2639.z)), vec3<f32>(x_2642.x, x_2642.y, x_2642.z));
  let x_2645 : f32 = u_xlat54;
  let x_2646 : f32 = u_xlat54;
  u_xlat54 = (x_2645 + x_2646);
  let x_2648 : vec4<f32> = u_xlat1;
  let x_2650 : f32 = u_xlat54;
  let x_2654 : vec4<f32> = u_xlat7;
  let x_2657 : vec3<f32> = ((vec3<f32>(x_2648.x, x_2648.y, x_2648.z) * -(vec3<f32>(x_2650, x_2650, x_2650))) + -(vec3<f32>(x_2654.x, x_2654.y, x_2654.z)));
  let x_2658 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2657.x, x_2657.y, x_2657.z, x_2658.w);
  let x_2660 : vec4<f32> = u_xlat1;
  let x_2662 : vec4<f32> = u_xlat7;
  u_xlat54 = dot(vec3<f32>(x_2660.x, x_2660.y, x_2660.z), vec3<f32>(x_2662.x, x_2662.y, x_2662.z));
  let x_2665 : f32 = u_xlat54;
  u_xlat54 = clamp(x_2665, 0.0f, 1.0f);
  let x_2667 : f32 = u_xlat54;
  u_xlat54 = (-(x_2667) + 1.0f);
  let x_2670 : f32 = u_xlat54;
  let x_2671 : f32 = u_xlat54;
  u_xlat54 = (x_2670 * x_2671);
  let x_2673 : f32 = u_xlat54;
  let x_2674 : f32 = u_xlat54;
  u_xlat54 = (x_2673 * x_2674);
  let x_2677 : f32 = u_xlat0.x;
  u_xlat83 = ((-(x_2677) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2684 : f32 = u_xlat0.x;
  let x_2685 : f32 = u_xlat83;
  u_xlat0.x = (x_2684 * x_2685);
  let x_2689 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2689 * 6.0f);
  let x_2701 : vec4<f32> = u_xlat8;
  let x_2704 : f32 = u_xlat0.x;
  let x_2705 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2701.x, x_2701.y, x_2701.z), x_2704);
  u_xlat8 = x_2705;
  let x_2707 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2707 + -1.0f);
  let x_2711 : f32 = x_1050.unity_SpecCube0_HDR.w;
  let x_2713 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2711 * x_2713) + 1.0f);
  let x_2718 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2718, 0.0f);
  let x_2722 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2722);
  let x_2726 : f32 = u_xlat0.x;
  let x_2728 : f32 = x_1050.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2726 * x_2728);
  let x_2732 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2732);
  let x_2736 : f32 = u_xlat0.x;
  let x_2738 : f32 = x_1050.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2736 * x_2738);
  let x_2741 : vec4<f32> = u_xlat8;
  let x_2743 : vec3<f32> = u_xlat0;
  let x_2745 : vec3<f32> = (vec3<f32>(x_2741.x, x_2741.y, x_2741.z) * vec3<f32>(x_2743.x, x_2743.x, x_2743.x));
  let x_2746 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2745.x, x_2745.y, x_2745.z, x_2746.w);
  let x_2748 : f32 = u_xlat79;
  let x_2750 : f32 = u_xlat79;
  let x_2754 : vec2<f32> = ((vec2<f32>(x_2748, x_2748) * vec2<f32>(x_2750, x_2750)) + vec2<f32>(-1.0f, 1.0f));
  let x_2755 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2754.x, x_2754.y, x_2755.z, x_2755.w);
  let x_2758 : f32 = u_xlat9.y;
  u_xlat0.x = (1.0f / x_2758);
  let x_2762 : vec4<f32> = u_xlat5;
  let x_2765 : f32 = u_xlat52;
  u_xlat35 = (-(vec3<f32>(x_2762.x, x_2762.y, x_2762.z)) + vec3<f32>(x_2765, x_2765, x_2765));
  let x_2768 : f32 = u_xlat54;
  let x_2770 : vec3<f32> = u_xlat35;
  let x_2772 : vec4<f32> = u_xlat5;
  u_xlat35 = ((vec3<f32>(x_2768, x_2768, x_2768) * x_2770) + vec3<f32>(x_2772.x, x_2772.y, x_2772.z));
  let x_2775 : vec3<f32> = u_xlat0;
  let x_2777 : vec3<f32> = u_xlat35;
  u_xlat35 = (vec3<f32>(x_2775.x, x_2775.x, x_2775.x) * x_2777);
  let x_2779 : vec4<f32> = u_xlat8;
  let x_2781 : vec3<f32> = u_xlat35;
  let x_2782 : vec3<f32> = (vec3<f32>(x_2779.x, x_2779.y, x_2779.z) * x_2781);
  let x_2783 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2782.x, x_2782.y, x_2782.z, x_2783.w);
  let x_2785 : vec4<f32> = u_xlat3;
  let x_2787 : vec4<f32> = u_xlat4;
  let x_2790 : vec4<f32> = u_xlat8;
  let x_2792 : vec3<f32> = ((vec3<f32>(x_2785.x, x_2785.y, x_2785.z) * vec3<f32>(x_2787.x, x_2787.y, x_2787.z)) + vec3<f32>(x_2790.x, x_2790.y, x_2790.z));
  let x_2793 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2792.x, x_2792.y, x_2792.z, x_2793.w);
  let x_2796 : f32 = u_xlat2.x;
  let x_2798 : f32 = x_1050.unity_LightData.z;
  u_xlat0.x = (x_2796 * x_2798);
  let x_2801 : vec4<f32> = u_xlat1;
  let x_2804 : vec4<f32> = x_113.x_MainLightPosition;
  u_xlat52 = dot(vec3<f32>(x_2801.x, x_2801.y, x_2801.z), vec3<f32>(x_2804.x, x_2804.y, x_2804.z));
  let x_2807 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2807, 0.0f, 1.0f);
  let x_2809 : f32 = u_xlat52;
  let x_2811 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2809 * x_2811);
  let x_2814 : vec3<f32> = u_xlat0;
  let x_2816 : vec4<f32> = u_xlat6;
  let x_2818 : vec3<f32> = (vec3<f32>(x_2814.x, x_2814.x, x_2814.x) * vec3<f32>(x_2816.x, x_2816.y, x_2816.z));
  let x_2819 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2818.x, x_2818.y, x_2818.z, x_2819.w);
  let x_2821 : vec4<f32> = u_xlat7;
  let x_2824 : vec4<f32> = x_113.x_MainLightPosition;
  let x_2826 : vec3<f32> = (vec3<f32>(x_2821.x, x_2821.y, x_2821.z) + vec3<f32>(x_2824.x, x_2824.y, x_2824.z));
  let x_2827 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2826.x, x_2826.y, x_2826.z, x_2827.w);
  let x_2829 : vec4<f32> = u_xlat8;
  let x_2831 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_2829.x, x_2829.y, x_2829.z), vec3<f32>(x_2831.x, x_2831.y, x_2831.z));
  let x_2836 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2836, 1.17549435e-38f);
  let x_2841 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2841);
  let x_2844 : vec3<f32> = u_xlat0;
  let x_2846 : vec4<f32> = u_xlat8;
  let x_2848 : vec3<f32> = (vec3<f32>(x_2844.x, x_2844.x, x_2844.x) * vec3<f32>(x_2846.x, x_2846.y, x_2846.z));
  let x_2849 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2848.x, x_2848.y, x_2848.z, x_2849.w);
  let x_2851 : vec4<f32> = u_xlat1;
  let x_2853 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_2851.x, x_2851.y, x_2851.z), vec3<f32>(x_2853.x, x_2853.y, x_2853.z));
  let x_2858 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2858, 0.0f, 1.0f);
  let x_2862 : vec4<f32> = x_113.x_MainLightPosition;
  let x_2864 : vec4<f32> = u_xlat8;
  u_xlat0.z = dot(vec3<f32>(x_2862.x, x_2862.y, x_2862.z), vec3<f32>(x_2864.x, x_2864.y, x_2864.z));
  let x_2869 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_2869, 0.0f, 1.0f);
  let x_2872 : vec3<f32> = u_xlat0;
  let x_2874 : vec3<f32> = u_xlat0;
  let x_2876 : vec2<f32> = (vec2<f32>(x_2872.x, x_2872.z) * vec2<f32>(x_2874.x, x_2874.z));
  let x_2877 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2876.x, x_2877.y, x_2876.y);
  let x_2880 : f32 = u_xlat0.x;
  let x_2882 : f32 = u_xlat9.x;
  u_xlat0.x = ((x_2880 * x_2882) + 1.00001001358032226562f);
  let x_2888 : f32 = u_xlat0.x;
  let x_2890 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2888 * x_2890);
  let x_2894 : f32 = u_xlat0.z;
  u_xlat52 = max(x_2894, 0.10000000149011611938f);
  let x_2897 : f32 = u_xlat52;
  let x_2899 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2897 * x_2899);
  let x_2902 : f32 = u_xlat81;
  let x_2904 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2902 * x_2904);
  let x_2907 : f32 = u_xlat82;
  let x_2909 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2907 / x_2909);
  let x_2912 : vec4<f32> = u_xlat5;
  let x_2914 : vec3<f32> = u_xlat0;
  let x_2917 : vec4<f32> = u_xlat4;
  let x_2919 : vec3<f32> = ((vec3<f32>(x_2912.x, x_2912.y, x_2912.z) * vec3<f32>(x_2914.x, x_2914.x, x_2914.x)) + vec3<f32>(x_2917.x, x_2917.y, x_2917.z));
  let x_2920 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2919.x, x_2919.y, x_2919.z, x_2920.w);
  let x_2922 : vec4<f32> = u_xlat6;
  let x_2924 : vec4<f32> = u_xlat8;
  let x_2926 : vec3<f32> = (vec3<f32>(x_2922.x, x_2922.y, x_2922.z) * vec3<f32>(x_2924.x, x_2924.y, x_2924.z));
  let x_2927 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2926.x, x_2926.y, x_2926.z, x_2927.w);
  let x_2930 : f32 = x_113.x_AdditionalLightsCount.x;
  let x_2932 : f32 = x_1050.unity_LightData.y;
  u_xlat0.x = min(x_2930, x_2932);
  let x_2937 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2937));
  let x_2941 : f32 = u_xlat28.x;
  let x_2943 : f32 = x_833.x_AdditionalShadowFadeParams.x;
  let x_2946 : f32 = x_833.x_AdditionalShadowFadeParams.y;
  u_xlat52 = ((x_2941 * x_2943) + x_2946);
  let x_2948 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2948, 0.0f, 1.0f);
  let x_2951 : f32 = x_2513.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2953 : f32 = x_2513.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2955 : f32 = x_2513.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2957 : f32 = x_2513.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2958 : vec4<f32> = vec4<f32>(x_2951, x_2953, x_2955, x_2957);
  let x_2964 : vec4<bool> = (vec4<f32>(x_2958.x, x_2958.y, x_2958.z, x_2958.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_2965 : vec2<bool> = vec2<bool>(x_2964.x, x_2964.y);
  let x_2966 : vec4<bool> = u_xlatb2;
  u_xlatb2 = vec4<bool>(x_2965.x, x_2965.y, x_2966.z, x_2966.w);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2978 : u32 = u_xlatu_loop_1;
    let x_2979 : u32 = u_xlatu0;
    if ((x_2978 < x_2979)) {
    } else {
      break;
    }
    let x_2982 : u32 = u_xlatu_loop_1;
    u_xlatu54 = (x_2982 >> 2u);
    let x_2985 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_2985 & 3u));
    let x_2988 : u32 = u_xlatu54;
    let x_2991 : vec4<f32> = x_1050.unity_LightIndices[bitcast<i32>(x_2988)];
    let x_3001 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3006 : vec4<u32> = indexable[x_3001];
    u_xlat54 = dot(x_2991, bitcast<vec4<f32>>(x_3006));
    let x_3010 : f32 = u_xlat54;
    u_xlati54 = i32(x_3010);
    let x_3012 : vec3<f32> = vs_TEXCOORD7;
    let x_3023 : i32 = u_xlati54;
    let x_3025 : vec4<f32> = x_3022.x_AdditionalLightsPosition[x_3023];
    let x_3028 : i32 = u_xlati54;
    let x_3030 : vec4<f32> = x_3022.x_AdditionalLightsPosition[x_3028];
    u_xlat35 = ((-(x_3012) * vec3<f32>(x_3025.w, x_3025.w, x_3025.w)) + vec3<f32>(x_3030.x, x_3030.y, x_3030.z));
    let x_3033 : vec3<f32> = u_xlat35;
    let x_3034 : vec3<f32> = u_xlat35;
    u_xlat83 = dot(x_3033, x_3034);
    let x_3036 : f32 = u_xlat83;
    u_xlat83 = max(x_3036, 0.00006103515625f);
    let x_3038 : f32 = u_xlat83;
    u_xlat84 = inverseSqrt(x_3038);
    let x_3040 : f32 = u_xlat84;
    let x_3042 : vec3<f32> = u_xlat35;
    let x_3043 : vec3<f32> = (vec3<f32>(x_3040, x_3040, x_3040) * x_3042);
    let x_3044 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3043.x, x_3043.y, x_3043.z, x_3044.w);
    let x_3047 : f32 = u_xlat83;
    u_xlat85 = (1.0f / x_3047);
    let x_3049 : f32 = u_xlat83;
    let x_3050 : i32 = u_xlati54;
    let x_3052 : f32 = x_3022.x_AdditionalLightsAttenuation[x_3050].x;
    u_xlat83 = (x_3049 * x_3052);
    let x_3054 : f32 = u_xlat83;
    let x_3056 : f32 = u_xlat83;
    u_xlat83 = ((-(x_3054) * x_3056) + 1.0f);
    let x_3059 : f32 = u_xlat83;
    u_xlat83 = max(x_3059, 0.0f);
    let x_3061 : f32 = u_xlat83;
    let x_3062 : f32 = u_xlat83;
    u_xlat83 = (x_3061 * x_3062);
    let x_3064 : f32 = u_xlat83;
    let x_3065 : f32 = u_xlat85;
    u_xlat83 = (x_3064 * x_3065);
    let x_3067 : i32 = u_xlati54;
    let x_3069 : vec4<f32> = x_3022.x_AdditionalLightsSpotDir[x_3067];
    let x_3071 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_3069.x, x_3069.y, x_3069.z), vec3<f32>(x_3071.x, x_3071.y, x_3071.z));
    let x_3074 : f32 = u_xlat85;
    let x_3075 : i32 = u_xlati54;
    let x_3077 : f32 = x_3022.x_AdditionalLightsAttenuation[x_3075].z;
    let x_3079 : i32 = u_xlati54;
    let x_3081 : f32 = x_3022.x_AdditionalLightsAttenuation[x_3079].w;
    u_xlat85 = ((x_3074 * x_3077) + x_3081);
    let x_3083 : f32 = u_xlat85;
    u_xlat85 = clamp(x_3083, 0.0f, 1.0f);
    let x_3085 : f32 = u_xlat85;
    let x_3086 : f32 = u_xlat85;
    u_xlat85 = (x_3085 * x_3086);
    let x_3088 : f32 = u_xlat83;
    let x_3089 : f32 = u_xlat85;
    u_xlat83 = (x_3088 * x_3089);
    let x_3092 : i32 = u_xlati54;
    let x_3094 : f32 = x_833.x_AdditionalShadowParams[x_3092].w;
    u_xlati85 = i32(x_3094);
    let x_3097 : i32 = u_xlati85;
    u_xlatb86 = (x_3097 >= 0i);
    let x_3099 : bool = u_xlatb86;
    if (x_3099) {
      let x_3103 : i32 = u_xlati54;
      let x_3105 : f32 = x_833.x_AdditionalShadowParams[x_3103].z;
      u_xlatb86 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3105, x_3105, x_3105, x_3105))));
      let x_3109 : bool = u_xlatb86;
      if (x_3109) {
        let x_3113 : vec4<f32> = u_xlat10;
        let x_3116 : vec4<f32> = u_xlat10;
        let x_3119 : vec4<bool> = (abs(vec4<f32>(x_3113.z, x_3113.z, x_3113.y, x_3113.z)) >= abs(vec4<f32>(x_3116.x, x_3116.y, x_3116.x, x_3116.x)));
        let x_3121 : vec3<bool> = vec3<bool>(x_3119.x, x_3119.y, x_3119.z);
        let x_3122 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3121.x, x_3121.y, x_3121.z, x_3122.w);
        let x_3125 : bool = u_xlatb11.y;
        let x_3127 : bool = u_xlatb11.x;
        u_xlatb86 = (x_3125 & x_3127);
        let x_3129 : vec4<f32> = u_xlat10;
        let x_3132 : vec4<bool> = (-(vec4<f32>(x_3129.z, x_3129.y, x_3129.z, x_3129.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3133 : vec3<bool> = vec3<bool>(x_3132.x, x_3132.y, x_3132.w);
        let x_3134 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3133.x, x_3133.y, x_3134.z, x_3133.z);
        let x_3137 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3137);
        let x_3142 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3142);
        let x_3147 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_3147);
        let x_3150 : bool = u_xlatb11.z;
        if (x_3150) {
          let x_3155 : f32 = u_xlat11.y;
          x_3151 = x_3155;
        } else {
          let x_3157 : f32 = u_xlat88;
          x_3151 = x_3157;
        }
        let x_3158 : f32 = x_3151;
        u_xlat88 = x_3158;
        let x_3159 : bool = u_xlatb86;
        if (x_3159) {
          let x_3164 : f32 = u_xlat11.x;
          x_3160 = x_3164;
        } else {
          let x_3166 : f32 = u_xlat88;
          x_3160 = x_3166;
        }
        let x_3167 : f32 = x_3160;
        u_xlat86 = x_3167;
        let x_3168 : i32 = u_xlati54;
        let x_3170 : f32 = x_833.x_AdditionalShadowParams[x_3168].w;
        u_xlat88 = trunc(x_3170);
        let x_3172 : f32 = u_xlat86;
        let x_3173 : f32 = u_xlat88;
        u_xlat86 = (x_3172 + x_3173);
        let x_3175 : f32 = u_xlat86;
        u_xlati85 = i32(x_3175);
      }
      let x_3177 : i32 = u_xlati85;
      u_xlati85 = (x_3177 << bitcast<u32>(2i));
      let x_3179 : vec3<f32> = vs_TEXCOORD7;
      let x_3181 : i32 = u_xlati85;
      let x_3184 : i32 = u_xlati85;
      let x_3188 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[((x_3181 + 1i) / 4i)][((x_3184 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3179.y, x_3179.y, x_3179.y, x_3179.y) * x_3188);
      let x_3190 : i32 = u_xlati85;
      let x_3192 : i32 = u_xlati85;
      let x_3195 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[(x_3190 / 4i)][(x_3192 % 4i)];
      let x_3196 : vec3<f32> = vs_TEXCOORD7;
      let x_3199 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3195 * vec4<f32>(x_3196.x, x_3196.x, x_3196.x, x_3196.x)) + x_3199);
      let x_3201 : i32 = u_xlati85;
      let x_3204 : i32 = u_xlati85;
      let x_3208 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[((x_3201 + 2i) / 4i)][((x_3204 + 2i) % 4i)];
      let x_3209 : vec3<f32> = vs_TEXCOORD7;
      let x_3212 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3208 * vec4<f32>(x_3209.z, x_3209.z, x_3209.z, x_3209.z)) + x_3212);
      let x_3214 : vec4<f32> = u_xlat11;
      let x_3215 : i32 = u_xlati85;
      let x_3218 : i32 = u_xlati85;
      let x_3222 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[((x_3215 + 3i) / 4i)][((x_3218 + 3i) % 4i)];
      u_xlat11 = (x_3214 + x_3222);
      let x_3224 : vec4<f32> = u_xlat11;
      let x_3226 : vec4<f32> = u_xlat11;
      let x_3228 : vec3<f32> = (vec3<f32>(x_3224.x, x_3224.y, x_3224.z) / vec3<f32>(x_3226.w, x_3226.w, x_3226.w));
      let x_3229 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3228.x, x_3228.y, x_3228.z, x_3229.w);
      let x_3232 : i32 = u_xlati54;
      let x_3234 : f32 = x_833.x_AdditionalShadowParams[x_3232].y;
      u_xlatb85 = (0.0f < x_3234);
      let x_3236 : bool = u_xlatb85;
      if (x_3236) {
        let x_3239 : i32 = u_xlati54;
        let x_3241 : f32 = x_833.x_AdditionalShadowParams[x_3239].y;
        u_xlatb85 = (1.0f == x_3241);
        let x_3243 : bool = u_xlatb85;
        if (x_3243) {
          let x_3246 : vec4<f32> = u_xlat11;
          let x_3249 : vec4<f32> = x_833.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3246.x, x_3246.y, x_3246.x, x_3246.y) + x_3249);
          let x_3252 : vec4<f32> = u_xlat12;
          let x_3253 : vec2<f32> = vec2<f32>(x_3252.x, x_3252.y);
          let x_3255 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_3253.x, x_3253.y, x_3255);
          let x_3263 : vec3<f32> = txVec30;
          let x_3265 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3263.xy, x_3263.z);
          u_xlat13.x = x_3265;
          let x_3268 : vec4<f32> = u_xlat12;
          let x_3269 : vec2<f32> = vec2<f32>(x_3268.z, x_3268.w);
          let x_3271 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_3269.x, x_3269.y, x_3271);
          let x_3278 : vec3<f32> = txVec31;
          let x_3280 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3278.xy, x_3278.z);
          u_xlat13.y = x_3280;
          let x_3282 : vec4<f32> = u_xlat11;
          let x_3285 : vec4<f32> = x_833.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3282.x, x_3282.y, x_3282.x, x_3282.y) + x_3285);
          let x_3288 : vec4<f32> = u_xlat12;
          let x_3289 : vec2<f32> = vec2<f32>(x_3288.x, x_3288.y);
          let x_3291 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_3289.x, x_3289.y, x_3291);
          let x_3298 : vec3<f32> = txVec32;
          let x_3300 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3298.xy, x_3298.z);
          u_xlat13.z = x_3300;
          let x_3303 : vec4<f32> = u_xlat12;
          let x_3304 : vec2<f32> = vec2<f32>(x_3303.z, x_3303.w);
          let x_3306 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_3304.x, x_3304.y, x_3306);
          let x_3313 : vec3<f32> = txVec33;
          let x_3315 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3313.xy, x_3313.z);
          u_xlat13.w = x_3315;
          let x_3317 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_3317, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3320 : i32 = u_xlati54;
          let x_3322 : f32 = x_833.x_AdditionalShadowParams[x_3320].y;
          u_xlatb86 = (2.0f == x_3322);
          let x_3324 : bool = u_xlatb86;
          if (x_3324) {
            let x_3327 : vec4<f32> = u_xlat11;
            let x_3330 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3333 : vec2<f32> = ((vec2<f32>(x_3327.x, x_3327.y) * vec2<f32>(x_3330.z, x_3330.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3334 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3333.x, x_3333.y, x_3334.z, x_3334.w);
            let x_3336 : vec4<f32> = u_xlat12;
            let x_3338 : vec2<f32> = floor(vec2<f32>(x_3336.x, x_3336.y));
            let x_3339 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3338.x, x_3338.y, x_3339.z, x_3339.w);
            let x_3342 : vec4<f32> = u_xlat11;
            let x_3345 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3348 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3342.x, x_3342.y) * vec2<f32>(x_3345.z, x_3345.w)) + -(vec2<f32>(x_3348.x, x_3348.y)));
            let x_3352 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3352.x, x_3352.x, x_3352.y, x_3352.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3355 : vec4<f32> = u_xlat13;
            let x_3357 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3355.x, x_3355.x, x_3355.z, x_3355.z) * vec4<f32>(x_3357.x, x_3357.x, x_3357.z, x_3357.z));
            let x_3360 : vec4<f32> = u_xlat14;
            let x_3362 : vec2<f32> = (vec2<f32>(x_3360.y, x_3360.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3363 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3362.x, x_3363.y, x_3362.y, x_3363.w);
            let x_3365 : vec4<f32> = u_xlat14;
            let x_3368 : vec2<f32> = u_xlat64;
            let x_3370 : vec2<f32> = ((vec2<f32>(x_3365.x, x_3365.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3368));
            let x_3371 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3370.x, x_3370.y, x_3371.z, x_3371.w);
            let x_3373 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3373) + vec2<f32>(1.0f, 1.0f));
            let x_3376 : vec2<f32> = u_xlat64;
            let x_3377 : vec2<f32> = min(x_3376, vec2<f32>(0.0f, 0.0f));
            let x_3378 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3377.x, x_3377.y, x_3378.z, x_3378.w);
            let x_3380 : vec4<f32> = u_xlat15;
            let x_3383 : vec4<f32> = u_xlat15;
            let x_3386 : vec2<f32> = u_xlat66;
            let x_3387 : vec2<f32> = ((-(vec2<f32>(x_3380.x, x_3380.y)) * vec2<f32>(x_3383.x, x_3383.y)) + x_3386);
            let x_3388 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3387.x, x_3387.y, x_3388.z, x_3388.w);
            let x_3390 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3390, vec2<f32>(0.0f, 0.0f));
            let x_3392 : vec2<f32> = u_xlat64;
            let x_3394 : vec2<f32> = u_xlat64;
            let x_3396 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3392) * x_3394) + vec2<f32>(x_3396.y, x_3396.w));
            let x_3399 : vec4<f32> = u_xlat15;
            let x_3401 : vec2<f32> = (vec2<f32>(x_3399.x, x_3399.y) + vec2<f32>(1.0f, 1.0f));
            let x_3402 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3401.x, x_3401.y, x_3402.z, x_3402.w);
            let x_3404 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3404 + vec2<f32>(1.0f, 1.0f));
            let x_3406 : vec4<f32> = u_xlat14;
            let x_3408 : vec2<f32> = (vec2<f32>(x_3406.x, x_3406.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3409 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3408.x, x_3408.y, x_3409.z, x_3409.w);
            let x_3411 : vec2<f32> = u_xlat66;
            let x_3412 : vec2<f32> = (x_3411 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3413 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3412.x, x_3412.y, x_3413.z, x_3413.w);
            let x_3415 : vec4<f32> = u_xlat15;
            let x_3417 : vec2<f32> = (vec2<f32>(x_3415.x, x_3415.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3418 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3417.x, x_3417.y, x_3418.z, x_3418.w);
            let x_3420 : vec2<f32> = u_xlat64;
            let x_3421 : vec2<f32> = (x_3420 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3422 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3421.x, x_3421.y, x_3422.z, x_3422.w);
            let x_3424 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3424.y, x_3424.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3428 : f32 = u_xlat15.x;
            u_xlat16.z = x_3428;
            let x_3431 : f32 = u_xlat64.x;
            u_xlat16.w = x_3431;
            let x_3434 : f32 = u_xlat17.x;
            u_xlat14.z = x_3434;
            let x_3437 : f32 = u_xlat13.x;
            u_xlat14.w = x_3437;
            let x_3439 : vec4<f32> = u_xlat14;
            let x_3441 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3439.z, x_3439.w, x_3439.x, x_3439.z) + vec4<f32>(x_3441.z, x_3441.w, x_3441.x, x_3441.z));
            let x_3445 : f32 = u_xlat16.y;
            u_xlat15.z = x_3445;
            let x_3448 : f32 = u_xlat64.y;
            u_xlat15.w = x_3448;
            let x_3451 : f32 = u_xlat14.y;
            u_xlat17.z = x_3451;
            let x_3454 : f32 = u_xlat13.z;
            u_xlat17.w = x_3454;
            let x_3456 : vec4<f32> = u_xlat15;
            let x_3458 : vec4<f32> = u_xlat17;
            let x_3460 : vec3<f32> = (vec3<f32>(x_3456.z, x_3456.y, x_3456.w) + vec3<f32>(x_3458.z, x_3458.y, x_3458.w));
            let x_3461 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3460.x, x_3460.y, x_3460.z, x_3461.w);
            let x_3463 : vec4<f32> = u_xlat14;
            let x_3465 : vec4<f32> = u_xlat18;
            let x_3467 : vec3<f32> = (vec3<f32>(x_3463.x, x_3463.z, x_3463.w) / vec3<f32>(x_3465.z, x_3465.w, x_3465.y));
            let x_3468 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3467.x, x_3467.y, x_3467.z, x_3468.w);
            let x_3470 : vec4<f32> = u_xlat14;
            let x_3472 : vec3<f32> = (vec3<f32>(x_3470.x, x_3470.y, x_3470.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3473 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3472.x, x_3472.y, x_3472.z, x_3473.w);
            let x_3475 : vec4<f32> = u_xlat17;
            let x_3477 : vec4<f32> = u_xlat13;
            let x_3479 : vec3<f32> = (vec3<f32>(x_3475.z, x_3475.y, x_3475.w) / vec3<f32>(x_3477.x, x_3477.y, x_3477.z));
            let x_3480 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3479.x, x_3479.y, x_3479.z, x_3480.w);
            let x_3482 : vec4<f32> = u_xlat15;
            let x_3484 : vec3<f32> = (vec3<f32>(x_3482.x, x_3482.y, x_3482.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3485 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3484.x, x_3484.y, x_3484.z, x_3485.w);
            let x_3487 : vec4<f32> = u_xlat14;
            let x_3490 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3492 : vec3<f32> = (vec3<f32>(x_3487.y, x_3487.x, x_3487.z) * vec3<f32>(x_3490.x, x_3490.x, x_3490.x));
            let x_3493 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3492.x, x_3492.y, x_3492.z, x_3493.w);
            let x_3495 : vec4<f32> = u_xlat15;
            let x_3498 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3500 : vec3<f32> = (vec3<f32>(x_3495.x, x_3495.y, x_3495.z) * vec3<f32>(x_3498.y, x_3498.y, x_3498.y));
            let x_3501 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3500.x, x_3500.y, x_3500.z, x_3501.w);
            let x_3504 : f32 = u_xlat15.x;
            u_xlat14.w = x_3504;
            let x_3506 : vec4<f32> = u_xlat12;
            let x_3509 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3512 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3506.x, x_3506.y, x_3506.x, x_3506.y) * vec4<f32>(x_3509.x, x_3509.y, x_3509.x, x_3509.y)) + vec4<f32>(x_3512.y, x_3512.w, x_3512.x, x_3512.w));
            let x_3515 : vec4<f32> = u_xlat12;
            let x_3518 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3521 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3515.x, x_3515.y) * vec2<f32>(x_3518.x, x_3518.y)) + vec2<f32>(x_3521.z, x_3521.w));
            let x_3525 : f32 = u_xlat14.y;
            u_xlat15.w = x_3525;
            let x_3527 : vec4<f32> = u_xlat15;
            let x_3528 : vec2<f32> = vec2<f32>(x_3527.y, x_3527.z);
            let x_3529 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3529.x, x_3528.x, x_3529.z, x_3528.y);
            let x_3531 : vec4<f32> = u_xlat12;
            let x_3534 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3537 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3531.x, x_3531.y, x_3531.x, x_3531.y) * vec4<f32>(x_3534.x, x_3534.y, x_3534.x, x_3534.y)) + vec4<f32>(x_3537.x, x_3537.y, x_3537.z, x_3537.y));
            let x_3540 : vec4<f32> = u_xlat12;
            let x_3543 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3546 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3540.x, x_3540.y, x_3540.x, x_3540.y) * vec4<f32>(x_3543.x, x_3543.y, x_3543.x, x_3543.y)) + vec4<f32>(x_3546.w, x_3546.y, x_3546.w, x_3546.z));
            let x_3549 : vec4<f32> = u_xlat12;
            let x_3552 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3555 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3549.x, x_3549.y, x_3549.x, x_3549.y) * vec4<f32>(x_3552.x, x_3552.y, x_3552.x, x_3552.y)) + vec4<f32>(x_3555.x, x_3555.w, x_3555.z, x_3555.w));
            let x_3558 : vec4<f32> = u_xlat13;
            let x_3560 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3558.x, x_3558.x, x_3558.x, x_3558.y) * vec4<f32>(x_3560.z, x_3560.w, x_3560.y, x_3560.z));
            let x_3564 : vec4<f32> = u_xlat13;
            let x_3566 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3564.y, x_3564.y, x_3564.z, x_3564.z) * x_3566);
            let x_3569 : f32 = u_xlat13.z;
            let x_3571 : f32 = u_xlat18.y;
            u_xlat86 = (x_3569 * x_3571);
            let x_3574 : vec4<f32> = u_xlat16;
            let x_3575 : vec2<f32> = vec2<f32>(x_3574.x, x_3574.y);
            let x_3577 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3575.x, x_3575.y, x_3577);
            let x_3584 : vec3<f32> = txVec34;
            let x_3586 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3584.xy, x_3584.z);
            u_xlat88 = x_3586;
            let x_3588 : vec4<f32> = u_xlat16;
            let x_3589 : vec2<f32> = vec2<f32>(x_3588.z, x_3588.w);
            let x_3591 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3589.x, x_3589.y, x_3591);
            let x_3599 : vec3<f32> = txVec35;
            let x_3601 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3599.xy, x_3599.z);
            u_xlat89 = x_3601;
            let x_3602 : f32 = u_xlat89;
            let x_3604 : f32 = u_xlat19.y;
            u_xlat89 = (x_3602 * x_3604);
            let x_3607 : f32 = u_xlat19.x;
            let x_3608 : f32 = u_xlat88;
            let x_3610 : f32 = u_xlat89;
            u_xlat88 = ((x_3607 * x_3608) + x_3610);
            let x_3613 : vec2<f32> = u_xlat64;
            let x_3615 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3613.x, x_3613.y, x_3615);
            let x_3622 : vec3<f32> = txVec36;
            let x_3624 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3622.xy, x_3622.z);
            u_xlat89 = x_3624;
            let x_3626 : f32 = u_xlat19.z;
            let x_3627 : f32 = u_xlat89;
            let x_3629 : f32 = u_xlat88;
            u_xlat88 = ((x_3626 * x_3627) + x_3629);
            let x_3632 : vec4<f32> = u_xlat15;
            let x_3633 : vec2<f32> = vec2<f32>(x_3632.x, x_3632.y);
            let x_3635 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3633.x, x_3633.y, x_3635);
            let x_3642 : vec3<f32> = txVec37;
            let x_3644 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3642.xy, x_3642.z);
            u_xlat89 = x_3644;
            let x_3646 : f32 = u_xlat19.w;
            let x_3647 : f32 = u_xlat89;
            let x_3649 : f32 = u_xlat88;
            u_xlat88 = ((x_3646 * x_3647) + x_3649);
            let x_3652 : vec4<f32> = u_xlat17;
            let x_3653 : vec2<f32> = vec2<f32>(x_3652.x, x_3652.y);
            let x_3655 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3653.x, x_3653.y, x_3655);
            let x_3662 : vec3<f32> = txVec38;
            let x_3664 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3662.xy, x_3662.z);
            u_xlat89 = x_3664;
            let x_3666 : f32 = u_xlat20.x;
            let x_3667 : f32 = u_xlat89;
            let x_3669 : f32 = u_xlat88;
            u_xlat88 = ((x_3666 * x_3667) + x_3669);
            let x_3672 : vec4<f32> = u_xlat17;
            let x_3673 : vec2<f32> = vec2<f32>(x_3672.z, x_3672.w);
            let x_3675 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3673.x, x_3673.y, x_3675);
            let x_3682 : vec3<f32> = txVec39;
            let x_3684 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3682.xy, x_3682.z);
            u_xlat89 = x_3684;
            let x_3686 : f32 = u_xlat20.y;
            let x_3687 : f32 = u_xlat89;
            let x_3689 : f32 = u_xlat88;
            u_xlat88 = ((x_3686 * x_3687) + x_3689);
            let x_3692 : vec4<f32> = u_xlat15;
            let x_3693 : vec2<f32> = vec2<f32>(x_3692.z, x_3692.w);
            let x_3695 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3693.x, x_3693.y, x_3695);
            let x_3702 : vec3<f32> = txVec40;
            let x_3704 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3702.xy, x_3702.z);
            u_xlat89 = x_3704;
            let x_3706 : f32 = u_xlat20.z;
            let x_3707 : f32 = u_xlat89;
            let x_3709 : f32 = u_xlat88;
            u_xlat88 = ((x_3706 * x_3707) + x_3709);
            let x_3712 : vec4<f32> = u_xlat14;
            let x_3713 : vec2<f32> = vec2<f32>(x_3712.x, x_3712.y);
            let x_3715 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3713.x, x_3713.y, x_3715);
            let x_3722 : vec3<f32> = txVec41;
            let x_3724 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3722.xy, x_3722.z);
            u_xlat89 = x_3724;
            let x_3726 : f32 = u_xlat20.w;
            let x_3727 : f32 = u_xlat89;
            let x_3729 : f32 = u_xlat88;
            u_xlat88 = ((x_3726 * x_3727) + x_3729);
            let x_3732 : vec4<f32> = u_xlat14;
            let x_3733 : vec2<f32> = vec2<f32>(x_3732.z, x_3732.w);
            let x_3735 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3733.x, x_3733.y, x_3735);
            let x_3742 : vec3<f32> = txVec42;
            let x_3744 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3742.xy, x_3742.z);
            u_xlat89 = x_3744;
            let x_3745 : f32 = u_xlat86;
            let x_3746 : f32 = u_xlat89;
            let x_3748 : f32 = u_xlat88;
            u_xlat85 = ((x_3745 * x_3746) + x_3748);
          } else {
            let x_3751 : vec4<f32> = u_xlat11;
            let x_3754 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3757 : vec2<f32> = ((vec2<f32>(x_3751.x, x_3751.y) * vec2<f32>(x_3754.z, x_3754.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3758 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3757.x, x_3757.y, x_3758.z, x_3758.w);
            let x_3760 : vec4<f32> = u_xlat12;
            let x_3762 : vec2<f32> = floor(vec2<f32>(x_3760.x, x_3760.y));
            let x_3763 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3762.x, x_3762.y, x_3763.z, x_3763.w);
            let x_3765 : vec4<f32> = u_xlat11;
            let x_3768 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3771 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3765.x, x_3765.y) * vec2<f32>(x_3768.z, x_3768.w)) + -(vec2<f32>(x_3771.x, x_3771.y)));
            let x_3775 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3775.x, x_3775.x, x_3775.y, x_3775.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3778 : vec4<f32> = u_xlat13;
            let x_3780 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3778.x, x_3778.x, x_3778.z, x_3778.z) * vec4<f32>(x_3780.x, x_3780.x, x_3780.z, x_3780.z));
            let x_3783 : vec4<f32> = u_xlat14;
            let x_3785 : vec2<f32> = (vec2<f32>(x_3783.y, x_3783.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3786 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3786.x, x_3785.x, x_3786.z, x_3785.y);
            let x_3788 : vec4<f32> = u_xlat14;
            let x_3791 : vec2<f32> = u_xlat64;
            let x_3793 : vec2<f32> = ((vec2<f32>(x_3788.x, x_3788.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3791));
            let x_3794 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3793.x, x_3794.y, x_3793.y, x_3794.w);
            let x_3796 : vec2<f32> = u_xlat64;
            let x_3798 : vec2<f32> = (-(x_3796) + vec2<f32>(1.0f, 1.0f));
            let x_3799 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3798.x, x_3798.y, x_3799.z, x_3799.w);
            let x_3801 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3801, vec2<f32>(0.0f, 0.0f));
            let x_3803 : vec2<f32> = u_xlat66;
            let x_3805 : vec2<f32> = u_xlat66;
            let x_3807 : vec4<f32> = u_xlat14;
            let x_3809 : vec2<f32> = ((-(x_3803) * x_3805) + vec2<f32>(x_3807.x, x_3807.y));
            let x_3810 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3809.x, x_3809.y, x_3810.z, x_3810.w);
            let x_3812 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3812, vec2<f32>(0.0f, 0.0f));
            let x_3815 : vec2<f32> = u_xlat66;
            let x_3817 : vec2<f32> = u_xlat66;
            let x_3819 : vec4<f32> = u_xlat13;
            let x_3821 : vec2<f32> = ((-(x_3815) * x_3817) + vec2<f32>(x_3819.y, x_3819.w));
            let x_3822 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3821.x, x_3822.y, x_3821.y);
            let x_3824 : vec4<f32> = u_xlat14;
            let x_3826 : vec2<f32> = (vec2<f32>(x_3824.x, x_3824.y) + vec2<f32>(2.0f, 2.0f));
            let x_3827 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3826.x, x_3826.y, x_3827.z, x_3827.w);
            let x_3829 : vec3<f32> = u_xlat39;
            let x_3831 : vec2<f32> = (vec2<f32>(x_3829.x, x_3829.z) + vec2<f32>(2.0f, 2.0f));
            let x_3832 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3832.x, x_3831.x, x_3832.z, x_3831.y);
            let x_3835 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3835 * 0.08163200318813323975f);
            let x_3838 : vec4<f32> = u_xlat13;
            let x_3840 : vec3<f32> = (vec3<f32>(x_3838.z, x_3838.x, x_3838.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3841 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3840.x, x_3840.y, x_3840.z, x_3841.w);
            let x_3843 : vec4<f32> = u_xlat14;
            let x_3845 : vec2<f32> = (vec2<f32>(x_3843.x, x_3843.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3846 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3845.x, x_3845.y, x_3846.z, x_3846.w);
            let x_3849 : f32 = u_xlat17.y;
            u_xlat16.x = x_3849;
            let x_3851 : vec2<f32> = u_xlat64;
            let x_3854 : vec2<f32> = ((vec2<f32>(x_3851.x, x_3851.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3855 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3855.x, x_3854.x, x_3855.z, x_3854.y);
            let x_3857 : vec2<f32> = u_xlat64;
            let x_3860 : vec2<f32> = ((vec2<f32>(x_3857.x, x_3857.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3861 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3860.x, x_3861.y, x_3860.y, x_3861.w);
            let x_3864 : f32 = u_xlat13.x;
            u_xlat14.y = x_3864;
            let x_3867 : f32 = u_xlat15.y;
            u_xlat14.w = x_3867;
            let x_3869 : vec4<f32> = u_xlat14;
            let x_3870 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3869 + x_3870);
            let x_3872 : vec2<f32> = u_xlat64;
            let x_3875 : vec2<f32> = ((vec2<f32>(x_3872.y, x_3872.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3876 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3876.x, x_3875.x, x_3876.z, x_3875.y);
            let x_3878 : vec2<f32> = u_xlat64;
            let x_3881 : vec2<f32> = ((vec2<f32>(x_3878.y, x_3878.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3882 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3881.x, x_3882.y, x_3881.y, x_3882.w);
            let x_3885 : f32 = u_xlat13.y;
            u_xlat15.y = x_3885;
            let x_3887 : vec4<f32> = u_xlat15;
            let x_3888 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3887 + x_3888);
            let x_3890 : vec4<f32> = u_xlat14;
            let x_3891 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3890 / x_3891);
            let x_3893 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3893 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3895 : vec4<f32> = u_xlat15;
            let x_3896 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3895 / x_3896);
            let x_3898 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3898 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3900 : vec4<f32> = u_xlat14;
            let x_3903 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3900.w, x_3900.x, x_3900.y, x_3900.z) * vec4<f32>(x_3903.x, x_3903.x, x_3903.x, x_3903.x));
            let x_3906 : vec4<f32> = u_xlat15;
            let x_3909 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3906.x, x_3906.w, x_3906.y, x_3906.z) * vec4<f32>(x_3909.y, x_3909.y, x_3909.y, x_3909.y));
            let x_3912 : vec4<f32> = u_xlat14;
            let x_3913 : vec3<f32> = vec3<f32>(x_3912.y, x_3912.z, x_3912.w);
            let x_3914 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3913.x, x_3914.y, x_3913.y, x_3913.z);
            let x_3917 : f32 = u_xlat15.x;
            u_xlat17.y = x_3917;
            let x_3919 : vec4<f32> = u_xlat12;
            let x_3922 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3925 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3919.x, x_3919.y, x_3919.x, x_3919.y) * vec4<f32>(x_3922.x, x_3922.y, x_3922.x, x_3922.y)) + vec4<f32>(x_3925.x, x_3925.y, x_3925.z, x_3925.y));
            let x_3928 : vec4<f32> = u_xlat12;
            let x_3931 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3934 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3928.x, x_3928.y) * vec2<f32>(x_3931.x, x_3931.y)) + vec2<f32>(x_3934.w, x_3934.y));
            let x_3938 : f32 = u_xlat17.y;
            u_xlat14.y = x_3938;
            let x_3941 : f32 = u_xlat15.z;
            u_xlat17.y = x_3941;
            let x_3943 : vec4<f32> = u_xlat12;
            let x_3946 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3949 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3943.x, x_3943.y, x_3943.x, x_3943.y) * vec4<f32>(x_3946.x, x_3946.y, x_3946.x, x_3946.y)) + vec4<f32>(x_3949.x, x_3949.y, x_3949.z, x_3949.y));
            let x_3952 : vec4<f32> = u_xlat12;
            let x_3955 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3958 : vec4<f32> = u_xlat17;
            let x_3960 : vec2<f32> = ((vec2<f32>(x_3952.x, x_3952.y) * vec2<f32>(x_3955.x, x_3955.y)) + vec2<f32>(x_3958.w, x_3958.y));
            let x_3961 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3960.x, x_3960.y, x_3961.z, x_3961.w);
            let x_3964 : f32 = u_xlat17.y;
            u_xlat14.z = x_3964;
            let x_3967 : vec4<f32> = u_xlat12;
            let x_3970 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3973 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3967.x, x_3967.y, x_3967.x, x_3967.y) * vec4<f32>(x_3970.x, x_3970.y, x_3970.x, x_3970.y)) + vec4<f32>(x_3973.x, x_3973.y, x_3973.x, x_3973.z));
            let x_3977 : f32 = u_xlat15.w;
            u_xlat17.y = x_3977;
            let x_3980 : vec4<f32> = u_xlat12;
            let x_3983 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3986 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3980.x, x_3980.y, x_3980.x, x_3980.y) * vec4<f32>(x_3983.x, x_3983.y, x_3983.x, x_3983.y)) + vec4<f32>(x_3986.x, x_3986.y, x_3986.z, x_3986.y));
            let x_3990 : vec4<f32> = u_xlat12;
            let x_3993 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3996 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3990.x, x_3990.y) * vec2<f32>(x_3993.x, x_3993.y)) + vec2<f32>(x_3996.w, x_3996.y));
            let x_4000 : f32 = u_xlat17.y;
            u_xlat14.w = x_4000;
            let x_4003 : vec4<f32> = u_xlat12;
            let x_4006 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_4009 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4003.x, x_4003.y) * vec2<f32>(x_4006.x, x_4006.y)) + vec2<f32>(x_4009.x, x_4009.w));
            let x_4012 : vec4<f32> = u_xlat17;
            let x_4013 : vec3<f32> = vec3<f32>(x_4012.x, x_4012.z, x_4012.w);
            let x_4014 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4013.x, x_4014.y, x_4013.y, x_4013.z);
            let x_4016 : vec4<f32> = u_xlat12;
            let x_4019 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_4022 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4016.x, x_4016.y, x_4016.x, x_4016.y) * vec4<f32>(x_4019.x, x_4019.y, x_4019.x, x_4019.y)) + vec4<f32>(x_4022.x, x_4022.y, x_4022.z, x_4022.y));
            let x_4026 : vec4<f32> = u_xlat12;
            let x_4029 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_4032 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4026.x, x_4026.y) * vec2<f32>(x_4029.x, x_4029.y)) + vec2<f32>(x_4032.w, x_4032.y));
            let x_4036 : f32 = u_xlat14.x;
            u_xlat15.x = x_4036;
            let x_4038 : vec4<f32> = u_xlat12;
            let x_4041 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_4044 : vec4<f32> = u_xlat15;
            let x_4046 : vec2<f32> = ((vec2<f32>(x_4038.x, x_4038.y) * vec2<f32>(x_4041.x, x_4041.y)) + vec2<f32>(x_4044.x, x_4044.y));
            let x_4047 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4046.x, x_4046.y, x_4047.z, x_4047.w);
            let x_4050 : vec4<f32> = u_xlat13;
            let x_4052 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4050.x, x_4050.x, x_4050.x, x_4050.x) * x_4052);
            let x_4055 : vec4<f32> = u_xlat13;
            let x_4057 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4055.y, x_4055.y, x_4055.y, x_4055.y) * x_4057);
            let x_4060 : vec4<f32> = u_xlat13;
            let x_4062 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4060.z, x_4060.z, x_4060.z, x_4060.z) * x_4062);
            let x_4064 : vec4<f32> = u_xlat13;
            let x_4066 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4064.w, x_4064.w, x_4064.w, x_4064.w) * x_4066);
            let x_4069 : vec4<f32> = u_xlat18;
            let x_4070 : vec2<f32> = vec2<f32>(x_4069.x, x_4069.y);
            let x_4072 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_4070.x, x_4070.y, x_4072);
            let x_4079 : vec3<f32> = txVec43;
            let x_4081 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4079.xy, x_4079.z);
            u_xlat86 = x_4081;
            let x_4083 : vec4<f32> = u_xlat18;
            let x_4084 : vec2<f32> = vec2<f32>(x_4083.z, x_4083.w);
            let x_4086 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_4084.x, x_4084.y, x_4086);
            let x_4093 : vec3<f32> = txVec44;
            let x_4095 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4093.xy, x_4093.z);
            u_xlat88 = x_4095;
            let x_4096 : f32 = u_xlat88;
            let x_4098 : f32 = u_xlat23.y;
            u_xlat88 = (x_4096 * x_4098);
            let x_4101 : f32 = u_xlat23.x;
            let x_4102 : f32 = u_xlat86;
            let x_4104 : f32 = u_xlat88;
            u_xlat86 = ((x_4101 * x_4102) + x_4104);
            let x_4107 : vec2<f32> = u_xlat64;
            let x_4109 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_4107.x, x_4107.y, x_4109);
            let x_4116 : vec3<f32> = txVec45;
            let x_4118 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4116.xy, x_4116.z);
            u_xlat88 = x_4118;
            let x_4120 : f32 = u_xlat23.z;
            let x_4121 : f32 = u_xlat88;
            let x_4123 : f32 = u_xlat86;
            u_xlat86 = ((x_4120 * x_4121) + x_4123);
            let x_4126 : vec4<f32> = u_xlat21;
            let x_4127 : vec2<f32> = vec2<f32>(x_4126.x, x_4126.y);
            let x_4129 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_4127.x, x_4127.y, x_4129);
            let x_4136 : vec3<f32> = txVec46;
            let x_4138 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4136.xy, x_4136.z);
            u_xlat88 = x_4138;
            let x_4140 : f32 = u_xlat23.w;
            let x_4141 : f32 = u_xlat88;
            let x_4143 : f32 = u_xlat86;
            u_xlat86 = ((x_4140 * x_4141) + x_4143);
            let x_4146 : vec4<f32> = u_xlat19;
            let x_4147 : vec2<f32> = vec2<f32>(x_4146.x, x_4146.y);
            let x_4149 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_4147.x, x_4147.y, x_4149);
            let x_4156 : vec3<f32> = txVec47;
            let x_4158 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4156.xy, x_4156.z);
            u_xlat88 = x_4158;
            let x_4160 : f32 = u_xlat24.x;
            let x_4161 : f32 = u_xlat88;
            let x_4163 : f32 = u_xlat86;
            u_xlat86 = ((x_4160 * x_4161) + x_4163);
            let x_4166 : vec4<f32> = u_xlat19;
            let x_4167 : vec2<f32> = vec2<f32>(x_4166.z, x_4166.w);
            let x_4169 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_4167.x, x_4167.y, x_4169);
            let x_4176 : vec3<f32> = txVec48;
            let x_4178 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4176.xy, x_4176.z);
            u_xlat88 = x_4178;
            let x_4180 : f32 = u_xlat24.y;
            let x_4181 : f32 = u_xlat88;
            let x_4183 : f32 = u_xlat86;
            u_xlat86 = ((x_4180 * x_4181) + x_4183);
            let x_4186 : vec4<f32> = u_xlat20;
            let x_4187 : vec2<f32> = vec2<f32>(x_4186.x, x_4186.y);
            let x_4189 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_4187.x, x_4187.y, x_4189);
            let x_4196 : vec3<f32> = txVec49;
            let x_4198 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4196.xy, x_4196.z);
            u_xlat88 = x_4198;
            let x_4200 : f32 = u_xlat24.z;
            let x_4201 : f32 = u_xlat88;
            let x_4203 : f32 = u_xlat86;
            u_xlat86 = ((x_4200 * x_4201) + x_4203);
            let x_4206 : vec4<f32> = u_xlat21;
            let x_4207 : vec2<f32> = vec2<f32>(x_4206.z, x_4206.w);
            let x_4209 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_4207.x, x_4207.y, x_4209);
            let x_4216 : vec3<f32> = txVec50;
            let x_4218 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4216.xy, x_4216.z);
            u_xlat88 = x_4218;
            let x_4220 : f32 = u_xlat24.w;
            let x_4221 : f32 = u_xlat88;
            let x_4223 : f32 = u_xlat86;
            u_xlat86 = ((x_4220 * x_4221) + x_4223);
            let x_4226 : vec4<f32> = u_xlat22;
            let x_4227 : vec2<f32> = vec2<f32>(x_4226.x, x_4226.y);
            let x_4229 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_4227.x, x_4227.y, x_4229);
            let x_4236 : vec3<f32> = txVec51;
            let x_4238 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4236.xy, x_4236.z);
            u_xlat88 = x_4238;
            let x_4240 : f32 = u_xlat25.x;
            let x_4241 : f32 = u_xlat88;
            let x_4243 : f32 = u_xlat86;
            u_xlat86 = ((x_4240 * x_4241) + x_4243);
            let x_4246 : vec4<f32> = u_xlat22;
            let x_4247 : vec2<f32> = vec2<f32>(x_4246.z, x_4246.w);
            let x_4249 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_4247.x, x_4247.y, x_4249);
            let x_4256 : vec3<f32> = txVec52;
            let x_4258 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4256.xy, x_4256.z);
            u_xlat88 = x_4258;
            let x_4260 : f32 = u_xlat25.y;
            let x_4261 : f32 = u_xlat88;
            let x_4263 : f32 = u_xlat86;
            u_xlat86 = ((x_4260 * x_4261) + x_4263);
            let x_4266 : vec2<f32> = u_xlat40;
            let x_4268 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_4266.x, x_4266.y, x_4268);
            let x_4275 : vec3<f32> = txVec53;
            let x_4277 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4275.xy, x_4275.z);
            u_xlat88 = x_4277;
            let x_4279 : f32 = u_xlat25.z;
            let x_4280 : f32 = u_xlat88;
            let x_4282 : f32 = u_xlat86;
            u_xlat86 = ((x_4279 * x_4280) + x_4282);
            let x_4285 : vec2<f32> = u_xlat72;
            let x_4287 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_4285.x, x_4285.y, x_4287);
            let x_4294 : vec3<f32> = txVec54;
            let x_4296 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4294.xy, x_4294.z);
            u_xlat88 = x_4296;
            let x_4298 : f32 = u_xlat25.w;
            let x_4299 : f32 = u_xlat88;
            let x_4301 : f32 = u_xlat86;
            u_xlat86 = ((x_4298 * x_4299) + x_4301);
            let x_4304 : vec4<f32> = u_xlat17;
            let x_4305 : vec2<f32> = vec2<f32>(x_4304.x, x_4304.y);
            let x_4307 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_4305.x, x_4305.y, x_4307);
            let x_4314 : vec3<f32> = txVec55;
            let x_4316 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4314.xy, x_4314.z);
            u_xlat88 = x_4316;
            let x_4318 : f32 = u_xlat13.x;
            let x_4319 : f32 = u_xlat88;
            let x_4321 : f32 = u_xlat86;
            u_xlat86 = ((x_4318 * x_4319) + x_4321);
            let x_4324 : vec4<f32> = u_xlat17;
            let x_4325 : vec2<f32> = vec2<f32>(x_4324.z, x_4324.w);
            let x_4327 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_4325.x, x_4325.y, x_4327);
            let x_4334 : vec3<f32> = txVec56;
            let x_4336 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4334.xy, x_4334.z);
            u_xlat88 = x_4336;
            let x_4338 : f32 = u_xlat13.y;
            let x_4339 : f32 = u_xlat88;
            let x_4341 : f32 = u_xlat86;
            u_xlat86 = ((x_4338 * x_4339) + x_4341);
            let x_4344 : vec2<f32> = u_xlat67;
            let x_4346 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_4344.x, x_4344.y, x_4346);
            let x_4353 : vec3<f32> = txVec57;
            let x_4355 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4353.xy, x_4353.z);
            u_xlat88 = x_4355;
            let x_4357 : f32 = u_xlat13.z;
            let x_4358 : f32 = u_xlat88;
            let x_4360 : f32 = u_xlat86;
            u_xlat86 = ((x_4357 * x_4358) + x_4360);
            let x_4363 : vec4<f32> = u_xlat12;
            let x_4364 : vec2<f32> = vec2<f32>(x_4363.x, x_4363.y);
            let x_4366 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_4364.x, x_4364.y, x_4366);
            let x_4373 : vec3<f32> = txVec58;
            let x_4375 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4373.xy, x_4373.z);
            u_xlat88 = x_4375;
            let x_4377 : f32 = u_xlat13.w;
            let x_4378 : f32 = u_xlat88;
            let x_4380 : f32 = u_xlat86;
            u_xlat85 = ((x_4377 * x_4378) + x_4380);
          }
        }
      } else {
        let x_4384 : vec4<f32> = u_xlat11;
        let x_4385 : vec2<f32> = vec2<f32>(x_4384.x, x_4384.y);
        let x_4387 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_4385.x, x_4385.y, x_4387);
        let x_4394 : vec3<f32> = txVec59;
        let x_4396 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4394.xy, x_4394.z);
        u_xlat85 = x_4396;
      }
      let x_4397 : i32 = u_xlati54;
      let x_4399 : f32 = x_833.x_AdditionalShadowParams[x_4397].x;
      u_xlat86 = (1.0f + -(x_4399));
      let x_4402 : f32 = u_xlat85;
      let x_4403 : i32 = u_xlati54;
      let x_4405 : f32 = x_833.x_AdditionalShadowParams[x_4403].x;
      let x_4407 : f32 = u_xlat86;
      u_xlat85 = ((x_4402 * x_4405) + x_4407);
      let x_4410 : f32 = u_xlat11.z;
      u_xlatb86 = (0.0f >= x_4410);
      let x_4414 : f32 = u_xlat11.z;
      u_xlatb88 = (x_4414 >= 1.0f);
      let x_4416 : bool = u_xlatb86;
      let x_4417 : bool = u_xlatb88;
      u_xlatb86 = (x_4416 | x_4417);
      let x_4419 : bool = u_xlatb86;
      let x_4420 : f32 = u_xlat85;
      u_xlat85 = select(x_4420, 1.0f, x_4419);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_4423 : f32 = u_xlat85;
    u_xlat86 = (-(x_4423) + 1.0f);
    let x_4426 : f32 = u_xlat52;
    let x_4427 : f32 = u_xlat86;
    let x_4429 : f32 = u_xlat85;
    u_xlat85 = ((x_4426 * x_4427) + x_4429);
    let x_4432 : i32 = u_xlati54;
    u_xlati86 = (1i << bitcast<u32>((x_4432 & 31i)));
    let x_4435 : i32 = u_xlati86;
    let x_4438 : f32 = x_2513.x_AdditionalLightsCookieEnableBits;
    u_xlati86 = bitcast<i32>((bitcast<u32>(x_4435) & bitcast<u32>(x_4438)));
    let x_4442 : i32 = u_xlati86;
    if ((x_4442 != 0i)) {
      let x_4446 : i32 = u_xlati54;
      let x_4448 : f32 = x_2513.x_AdditionalLightsLightTypes[x_4446].el;
      u_xlati86 = i32(x_4448);
      let x_4451 : i32 = u_xlati86;
      u_xlati88 = select(1i, 0i, (x_4451 != 0i));
      let x_4455 : i32 = u_xlati54;
      u_xlati11 = (x_4455 << bitcast<u32>(2i));
      let x_4457 : i32 = u_xlati88;
      if ((x_4457 != 0i)) {
        let x_4462 : vec3<f32> = vs_TEXCOORD7;
        let x_4464 : i32 = u_xlati11;
        let x_4467 : i32 = u_xlati11;
        let x_4471 : vec4<f32> = x_2513.x_AdditionalLightsWorldToLights[((x_4464 + 1i) / 4i)][((x_4467 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_4462.y, x_4462.y, x_4462.y) * vec3<f32>(x_4471.x, x_4471.y, x_4471.w));
        let x_4474 : i32 = u_xlati11;
        let x_4476 : i32 = u_xlati11;
        let x_4479 : vec4<f32> = x_2513.x_AdditionalLightsWorldToLights[(x_4474 / 4i)][(x_4476 % 4i)];
        let x_4481 : vec3<f32> = vs_TEXCOORD7;
        let x_4484 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4479.x, x_4479.y, x_4479.w) * vec3<f32>(x_4481.x, x_4481.x, x_4481.x)) + x_4484);
        let x_4486 : i32 = u_xlati11;
        let x_4489 : i32 = u_xlati11;
        let x_4493 : vec4<f32> = x_2513.x_AdditionalLightsWorldToLights[((x_4486 + 2i) / 4i)][((x_4489 + 2i) % 4i)];
        let x_4495 : vec3<f32> = vs_TEXCOORD7;
        let x_4498 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4493.x, x_4493.y, x_4493.w) * vec3<f32>(x_4495.z, x_4495.z, x_4495.z)) + x_4498);
        let x_4500 : vec3<f32> = u_xlat37;
        let x_4501 : i32 = u_xlati11;
        let x_4504 : i32 = u_xlati11;
        let x_4508 : vec4<f32> = x_2513.x_AdditionalLightsWorldToLights[((x_4501 + 3i) / 4i)][((x_4504 + 3i) % 4i)];
        u_xlat37 = (x_4500 + vec3<f32>(x_4508.x, x_4508.y, x_4508.w));
        let x_4511 : vec3<f32> = u_xlat37;
        let x_4513 : vec3<f32> = u_xlat37;
        let x_4515 : vec2<f32> = (vec2<f32>(x_4511.x, x_4511.y) / vec2<f32>(x_4513.z, x_4513.z));
        let x_4516 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4515.x, x_4515.y, x_4516.z);
        let x_4518 : vec3<f32> = u_xlat37;
        let x_4521 : vec2<f32> = ((vec2<f32>(x_4518.x, x_4518.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4522 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4521.x, x_4521.y, x_4522.z);
        let x_4524 : vec3<f32> = u_xlat37;
        let x_4528 : vec2<f32> = clamp(vec2<f32>(x_4524.x, x_4524.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4529 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4528.x, x_4528.y, x_4529.z);
        let x_4531 : i32 = u_xlati54;
        let x_4533 : vec4<f32> = x_2513.x_AdditionalLightsCookieAtlasUVRects[x_4531];
        let x_4535 : vec3<f32> = u_xlat37;
        let x_4538 : i32 = u_xlati54;
        let x_4540 : vec4<f32> = x_2513.x_AdditionalLightsCookieAtlasUVRects[x_4538];
        let x_4542 : vec2<f32> = ((vec2<f32>(x_4533.x, x_4533.y) * vec2<f32>(x_4535.x, x_4535.y)) + vec2<f32>(x_4540.z, x_4540.w));
        let x_4543 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4542.x, x_4542.y, x_4543.z);
      } else {
        let x_4546 : i32 = u_xlati86;
        u_xlatb86 = (x_4546 == 1i);
        let x_4548 : bool = u_xlatb86;
        u_xlati86 = select(0i, 1i, x_4548);
        let x_4550 : i32 = u_xlati86;
        if ((x_4550 != 0i)) {
          let x_4554 : vec3<f32> = vs_TEXCOORD7;
          let x_4556 : i32 = u_xlati11;
          let x_4559 : i32 = u_xlati11;
          let x_4563 : vec4<f32> = x_2513.x_AdditionalLightsWorldToLights[((x_4556 + 1i) / 4i)][((x_4559 + 1i) % 4i)];
          let x_4565 : vec2<f32> = (vec2<f32>(x_4554.y, x_4554.y) * vec2<f32>(x_4563.x, x_4563.y));
          let x_4566 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4565.x, x_4565.y, x_4566.z, x_4566.w);
          let x_4568 : i32 = u_xlati11;
          let x_4570 : i32 = u_xlati11;
          let x_4573 : vec4<f32> = x_2513.x_AdditionalLightsWorldToLights[(x_4568 / 4i)][(x_4570 % 4i)];
          let x_4575 : vec3<f32> = vs_TEXCOORD7;
          let x_4578 : vec4<f32> = u_xlat12;
          let x_4580 : vec2<f32> = ((vec2<f32>(x_4573.x, x_4573.y) * vec2<f32>(x_4575.x, x_4575.x)) + vec2<f32>(x_4578.x, x_4578.y));
          let x_4581 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4580.x, x_4580.y, x_4581.z, x_4581.w);
          let x_4583 : i32 = u_xlati11;
          let x_4586 : i32 = u_xlati11;
          let x_4590 : vec4<f32> = x_2513.x_AdditionalLightsWorldToLights[((x_4583 + 2i) / 4i)][((x_4586 + 2i) % 4i)];
          let x_4592 : vec3<f32> = vs_TEXCOORD7;
          let x_4595 : vec4<f32> = u_xlat12;
          let x_4597 : vec2<f32> = ((vec2<f32>(x_4590.x, x_4590.y) * vec2<f32>(x_4592.z, x_4592.z)) + vec2<f32>(x_4595.x, x_4595.y));
          let x_4598 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4597.x, x_4597.y, x_4598.z, x_4598.w);
          let x_4600 : vec4<f32> = u_xlat12;
          let x_4602 : i32 = u_xlati11;
          let x_4605 : i32 = u_xlati11;
          let x_4609 : vec4<f32> = x_2513.x_AdditionalLightsWorldToLights[((x_4602 + 3i) / 4i)][((x_4605 + 3i) % 4i)];
          let x_4611 : vec2<f32> = (vec2<f32>(x_4600.x, x_4600.y) + vec2<f32>(x_4609.x, x_4609.y));
          let x_4612 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4611.x, x_4611.y, x_4612.z, x_4612.w);
          let x_4614 : vec4<f32> = u_xlat12;
          let x_4617 : vec2<f32> = ((vec2<f32>(x_4614.x, x_4614.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4618 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4617.x, x_4617.y, x_4618.z, x_4618.w);
          let x_4620 : vec4<f32> = u_xlat12;
          let x_4622 : vec2<f32> = fract(vec2<f32>(x_4620.x, x_4620.y));
          let x_4623 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4622.x, x_4622.y, x_4623.z, x_4623.w);
          let x_4625 : i32 = u_xlati54;
          let x_4627 : vec4<f32> = x_2513.x_AdditionalLightsCookieAtlasUVRects[x_4625];
          let x_4629 : vec4<f32> = u_xlat12;
          let x_4632 : i32 = u_xlati54;
          let x_4634 : vec4<f32> = x_2513.x_AdditionalLightsCookieAtlasUVRects[x_4632];
          let x_4636 : vec2<f32> = ((vec2<f32>(x_4627.x, x_4627.y) * vec2<f32>(x_4629.x, x_4629.y)) + vec2<f32>(x_4634.z, x_4634.w));
          let x_4637 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4636.x, x_4636.y, x_4637.z);
        } else {
          let x_4640 : vec3<f32> = vs_TEXCOORD7;
          let x_4642 : i32 = u_xlati11;
          let x_4645 : i32 = u_xlati11;
          let x_4649 : vec4<f32> = x_2513.x_AdditionalLightsWorldToLights[((x_4642 + 1i) / 4i)][((x_4645 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4640.y, x_4640.y, x_4640.y, x_4640.y) * x_4649);
          let x_4651 : i32 = u_xlati11;
          let x_4653 : i32 = u_xlati11;
          let x_4656 : vec4<f32> = x_2513.x_AdditionalLightsWorldToLights[(x_4651 / 4i)][(x_4653 % 4i)];
          let x_4657 : vec3<f32> = vs_TEXCOORD7;
          let x_4660 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4656 * vec4<f32>(x_4657.x, x_4657.x, x_4657.x, x_4657.x)) + x_4660);
          let x_4662 : i32 = u_xlati11;
          let x_4665 : i32 = u_xlati11;
          let x_4669 : vec4<f32> = x_2513.x_AdditionalLightsWorldToLights[((x_4662 + 2i) / 4i)][((x_4665 + 2i) % 4i)];
          let x_4670 : vec3<f32> = vs_TEXCOORD7;
          let x_4673 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4669 * vec4<f32>(x_4670.z, x_4670.z, x_4670.z, x_4670.z)) + x_4673);
          let x_4675 : vec4<f32> = u_xlat12;
          let x_4676 : i32 = u_xlati11;
          let x_4679 : i32 = u_xlati11;
          let x_4683 : vec4<f32> = x_2513.x_AdditionalLightsWorldToLights[((x_4676 + 3i) / 4i)][((x_4679 + 3i) % 4i)];
          u_xlat12 = (x_4675 + x_4683);
          let x_4685 : vec4<f32> = u_xlat12;
          let x_4687 : vec4<f32> = u_xlat12;
          let x_4689 : vec3<f32> = (vec3<f32>(x_4685.x, x_4685.y, x_4685.z) / vec3<f32>(x_4687.w, x_4687.w, x_4687.w));
          let x_4690 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4689.x, x_4689.y, x_4689.z, x_4690.w);
          let x_4692 : vec4<f32> = u_xlat12;
          let x_4694 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(vec3<f32>(x_4692.x, x_4692.y, x_4692.z), vec3<f32>(x_4694.x, x_4694.y, x_4694.z));
          let x_4697 : f32 = u_xlat86;
          u_xlat86 = inverseSqrt(x_4697);
          let x_4699 : f32 = u_xlat86;
          let x_4701 : vec4<f32> = u_xlat12;
          let x_4703 : vec3<f32> = (vec3<f32>(x_4699, x_4699, x_4699) * vec3<f32>(x_4701.x, x_4701.y, x_4701.z));
          let x_4704 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4703.x, x_4703.y, x_4703.z, x_4704.w);
          let x_4706 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(abs(vec3<f32>(x_4706.x, x_4706.y, x_4706.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4711 : f32 = u_xlat86;
          u_xlat86 = max(x_4711, 0.00000099999999747524f);
          let x_4714 : f32 = u_xlat86;
          u_xlat86 = (1.0f / x_4714);
          let x_4716 : f32 = u_xlat86;
          let x_4718 : vec4<f32> = u_xlat12;
          let x_4720 : vec3<f32> = (vec3<f32>(x_4716, x_4716, x_4716) * vec3<f32>(x_4718.z, x_4718.x, x_4718.y));
          let x_4721 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4720.x, x_4720.y, x_4720.z, x_4721.w);
          let x_4724 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4724);
          let x_4728 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4728, 0.0f, 1.0f);
          let x_4731 : vec4<f32> = u_xlat13;
          let x_4733 : vec4<bool> = (vec4<f32>(x_4731.y, x_4731.y, x_4731.y, x_4731.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_4734 : vec2<bool> = vec2<bool>(x_4733.x, x_4733.w);
          let x_4735 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_4734.x, x_4735.y, x_4735.z, x_4734.y);
          let x_4738 : bool = u_xlatb11.x;
          if (x_4738) {
            let x_4743 : f32 = u_xlat13.x;
            x_4739 = x_4743;
          } else {
            let x_4746 : f32 = u_xlat13.x;
            x_4739 = -(x_4746);
          }
          let x_4748 : f32 = x_4739;
          u_xlat11.x = x_4748;
          let x_4751 : bool = u_xlatb11.w;
          if (x_4751) {
            let x_4756 : f32 = u_xlat13.x;
            x_4752 = x_4756;
          } else {
            let x_4759 : f32 = u_xlat13.x;
            x_4752 = -(x_4759);
          }
          let x_4761 : f32 = x_4752;
          u_xlat11.w = x_4761;
          let x_4763 : vec4<f32> = u_xlat12;
          let x_4765 : f32 = u_xlat86;
          let x_4768 : vec4<f32> = u_xlat11;
          let x_4770 : vec2<f32> = ((vec2<f32>(x_4763.x, x_4763.y) * vec2<f32>(x_4765, x_4765)) + vec2<f32>(x_4768.x, x_4768.w));
          let x_4771 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4770.x, x_4771.y, x_4771.z, x_4770.y);
          let x_4773 : vec4<f32> = u_xlat11;
          let x_4776 : vec2<f32> = ((vec2<f32>(x_4773.x, x_4773.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4777 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4776.x, x_4777.y, x_4777.z, x_4776.y);
          let x_4779 : vec4<f32> = u_xlat11;
          let x_4783 : vec2<f32> = clamp(vec2<f32>(x_4779.x, x_4779.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4784 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4783.x, x_4784.y, x_4784.z, x_4783.y);
          let x_4786 : i32 = u_xlati54;
          let x_4788 : vec4<f32> = x_2513.x_AdditionalLightsCookieAtlasUVRects[x_4786];
          let x_4790 : vec4<f32> = u_xlat11;
          let x_4793 : i32 = u_xlati54;
          let x_4795 : vec4<f32> = x_2513.x_AdditionalLightsCookieAtlasUVRects[x_4793];
          let x_4797 : vec2<f32> = ((vec2<f32>(x_4788.x, x_4788.y) * vec2<f32>(x_4790.x, x_4790.w)) + vec2<f32>(x_4795.z, x_4795.w));
          let x_4798 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4797.x, x_4797.y, x_4798.z);
        }
      }
      let x_4805 : vec3<f32> = u_xlat37;
      let x_4807 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4805.x, x_4805.y), 0.0f);
      u_xlat11 = x_4807;
      let x_4809 : bool = u_xlatb2.y;
      if (x_4809) {
        let x_4814 : f32 = u_xlat11.w;
        x_4810 = x_4814;
      } else {
        let x_4817 : f32 = u_xlat11.x;
        x_4810 = x_4817;
      }
      let x_4818 : f32 = x_4810;
      u_xlat86 = x_4818;
      let x_4820 : bool = u_xlatb2.x;
      if (x_4820) {
        let x_4824 : vec4<f32> = u_xlat11;
        x_4821 = vec3<f32>(x_4824.x, x_4824.y, x_4824.z);
      } else {
        let x_4827 : f32 = u_xlat86;
        x_4821 = vec3<f32>(x_4827, x_4827, x_4827);
      }
      let x_4829 : vec3<f32> = x_4821;
      let x_4830 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4829.x, x_4829.y, x_4829.z, x_4830.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4836 : vec4<f32> = u_xlat11;
    let x_4838 : i32 = u_xlati54;
    let x_4840 : vec4<f32> = x_3022.x_AdditionalLightsColor[x_4838];
    let x_4842 : vec3<f32> = (vec3<f32>(x_4836.x, x_4836.y, x_4836.z) * vec3<f32>(x_4840.x, x_4840.y, x_4840.z));
    let x_4843 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4842.x, x_4842.y, x_4842.z, x_4843.w);
    let x_4845 : f32 = u_xlat83;
    let x_4846 : f32 = u_xlat85;
    u_xlat54 = (x_4845 * x_4846);
    let x_4848 : vec4<f32> = u_xlat1;
    let x_4850 : vec4<f32> = u_xlat10;
    u_xlat83 = dot(vec3<f32>(x_4848.x, x_4848.y, x_4848.z), vec3<f32>(x_4850.x, x_4850.y, x_4850.z));
    let x_4853 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4853, 0.0f, 1.0f);
    let x_4855 : f32 = u_xlat54;
    let x_4856 : f32 = u_xlat83;
    u_xlat54 = (x_4855 * x_4856);
    let x_4858 : f32 = u_xlat54;
    let x_4860 : vec4<f32> = u_xlat11;
    let x_4862 : vec3<f32> = (vec3<f32>(x_4858, x_4858, x_4858) * vec3<f32>(x_4860.x, x_4860.y, x_4860.z));
    let x_4863 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4862.x, x_4862.y, x_4862.z, x_4863.w);
    let x_4865 : vec3<f32> = u_xlat35;
    let x_4866 : f32 = u_xlat84;
    let x_4869 : vec4<f32> = u_xlat7;
    u_xlat35 = ((x_4865 * vec3<f32>(x_4866, x_4866, x_4866)) + vec3<f32>(x_4869.x, x_4869.y, x_4869.z));
    let x_4872 : vec3<f32> = u_xlat35;
    let x_4873 : vec3<f32> = u_xlat35;
    u_xlat54 = dot(x_4872, x_4873);
    let x_4875 : f32 = u_xlat54;
    u_xlat54 = max(x_4875, 1.17549435e-38f);
    let x_4877 : f32 = u_xlat54;
    u_xlat54 = inverseSqrt(x_4877);
    let x_4879 : f32 = u_xlat54;
    let x_4881 : vec3<f32> = u_xlat35;
    u_xlat35 = (vec3<f32>(x_4879, x_4879, x_4879) * x_4881);
    let x_4883 : vec4<f32> = u_xlat1;
    let x_4885 : vec3<f32> = u_xlat35;
    u_xlat54 = dot(vec3<f32>(x_4883.x, x_4883.y, x_4883.z), x_4885);
    let x_4887 : f32 = u_xlat54;
    u_xlat54 = clamp(x_4887, 0.0f, 1.0f);
    let x_4889 : vec4<f32> = u_xlat10;
    let x_4891 : vec3<f32> = u_xlat35;
    u_xlat83 = dot(vec3<f32>(x_4889.x, x_4889.y, x_4889.z), x_4891);
    let x_4893 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4893, 0.0f, 1.0f);
    let x_4895 : f32 = u_xlat54;
    let x_4896 : f32 = u_xlat54;
    u_xlat54 = (x_4895 * x_4896);
    let x_4898 : f32 = u_xlat54;
    let x_4900 : f32 = u_xlat9.x;
    u_xlat54 = ((x_4898 * x_4900) + 1.00001001358032226562f);
    let x_4903 : f32 = u_xlat83;
    let x_4904 : f32 = u_xlat83;
    u_xlat83 = (x_4903 * x_4904);
    let x_4906 : f32 = u_xlat54;
    let x_4907 : f32 = u_xlat54;
    u_xlat54 = (x_4906 * x_4907);
    let x_4909 : f32 = u_xlat83;
    u_xlat83 = max(x_4909, 0.10000000149011611938f);
    let x_4911 : f32 = u_xlat54;
    let x_4912 : f32 = u_xlat83;
    u_xlat54 = (x_4911 * x_4912);
    let x_4914 : f32 = u_xlat81;
    let x_4915 : f32 = u_xlat54;
    u_xlat54 = (x_4914 * x_4915);
    let x_4917 : f32 = u_xlat82;
    let x_4918 : f32 = u_xlat54;
    u_xlat54 = (x_4917 / x_4918);
    let x_4920 : vec4<f32> = u_xlat5;
    let x_4922 : f32 = u_xlat54;
    let x_4925 : vec4<f32> = u_xlat4;
    u_xlat35 = ((vec3<f32>(x_4920.x, x_4920.y, x_4920.z) * vec3<f32>(x_4922, x_4922, x_4922)) + vec3<f32>(x_4925.x, x_4925.y, x_4925.z));
    let x_4928 : vec3<f32> = u_xlat35;
    let x_4929 : vec4<f32> = u_xlat11;
    let x_4932 : vec4<f32> = u_xlat8;
    let x_4934 : vec3<f32> = ((x_4928 * vec3<f32>(x_4929.x, x_4929.y, x_4929.z)) + vec3<f32>(x_4932.x, x_4932.y, x_4932.z));
    let x_4935 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4934.x, x_4934.y, x_4934.z, x_4935.w);

    continuing {
      let x_4937 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4937 + bitcast<u32>(1i));
    }
  }
  let x_4939 : vec4<f32> = u_xlat3;
  let x_4941 : f32 = u_xlat26;
  let x_4944 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_4939.x, x_4939.y, x_4939.z) * vec3<f32>(x_4941, x_4941, x_4941)) + vec3<f32>(x_4944.x, x_4944.y, x_4944.z));
  let x_4947 : vec4<f32> = u_xlat8;
  let x_4949 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4947.x, x_4947.y, x_4947.z) + x_4949);
  let x_4951 : f32 = u_xlat80;
  let x_4952 : f32 = u_xlat80;
  u_xlat1.x = (x_4951 * -(x_4952));
  let x_4957 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_4957);
  let x_4960 : vec3<f32> = u_xlat0;
  let x_4961 : f32 = u_xlat78;
  let x_4965 : vec4<f32> = x_113.unity_FogColor;
  u_xlat0 = ((x_4960 * vec3<f32>(x_4961, x_4961, x_4961)) + -(vec3<f32>(x_4965.x, x_4965.y, x_4965.z)));
  let x_4971 : vec4<f32> = u_xlat1;
  let x_4973 : vec3<f32> = u_xlat0;
  let x_4976 : vec4<f32> = x_113.unity_FogColor;
  let x_4978 : vec3<f32> = ((vec3<f32>(x_4971.x, x_4971.x, x_4971.x) * x_4973) + vec3<f32>(x_4976.x, x_4976.y, x_4976.z));
  let x_4979 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4978.x, x_4978.y, x_4978.z, x_4979.w);
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


