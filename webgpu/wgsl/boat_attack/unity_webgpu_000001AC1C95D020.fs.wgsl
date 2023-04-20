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

var<private> u_xlatb80 : bool;

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

@group(1) @binding(4) var<uniform> x_845 : LightShadows;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat80 : f32;

@group(1) @binding(2) var<uniform> x_1062 : UnityPerDraw;

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

@group(1) @binding(5) var<uniform> x_2525 : LightCookies;

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

@group(1) @binding(1) var<uniform> x_3034 : AdditionalLights;

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
  var x_2476 : f32;
  var x_2608 : f32;
  var x_2619 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3163 : f32;
  var x_3172 : f32;
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
  var x_4751 : f32;
  var x_4764 : f32;
  var x_4822 : f32;
  var x_4833 : vec3<f32>;
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
  let x_281 : f32 = u_xlat79;
  u_xlatb80 = (0.00499999988824129105f >= x_281);
  let x_283 : bool = u_xlatb80;
  if (((select(0i, 1i, x_283) * -1i) != 0i)) {
    discard;
  }
  let x_292 : f32 = u_xlat79;
  u_xlat79 = (x_292 + 0.00006103515625f);
  let x_295 : vec4<f32> = u_xlat4;
  let x_296 : f32 = u_xlat79;
  u_xlat4 = (x_295 / vec4<f32>(x_296, x_296, x_296, x_296));
  let x_299 : vec4<f32> = u_xlat4;
  let x_302 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_304 : vec3<f32> = (vec3<f32>(x_299.x, x_299.x, x_299.x) * vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : vec4<f32> = u_xlat4;
  let x_310 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_312 : vec3<f32> = (vec3<f32>(x_307.y, x_307.y, x_307.y) * vec3<f32>(x_310.x, x_310.y, x_310.z));
  let x_313 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_315 : vec4<f32> = u_xlat6;
  let x_317 : vec4<f32> = u_xlat12;
  let x_319 : vec3<f32> = (vec3<f32>(x_315.x, x_315.y, x_315.z) * vec3<f32>(x_317.x, x_317.y, x_317.z));
  let x_320 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_322 : vec4<f32> = u_xlat5;
  let x_324 : vec4<f32> = u_xlat11;
  let x_327 : vec4<f32> = u_xlat6;
  let x_329 : vec3<f32> = ((vec3<f32>(x_322.x, x_322.y, x_322.z) * vec3<f32>(x_324.x, x_324.y, x_324.z)) + vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_330 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec4<f32> = u_xlat4;
  let x_335 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_337 : vec3<f32> = (vec3<f32>(x_332.z, x_332.z, x_332.z) * vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_338 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_340 : vec4<f32> = u_xlat7;
  let x_342 : vec4<f32> = u_xlat6;
  let x_345 : vec4<f32> = u_xlat5;
  let x_347 : vec3<f32> = ((vec3<f32>(x_340.x, x_340.y, x_340.z) * vec3<f32>(x_342.x, x_342.y, x_342.z)) + vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_350 : vec4<f32> = u_xlat4;
  let x_353 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_355 : vec3<f32> = (vec3<f32>(x_350.w, x_350.w, x_350.w) * vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_356 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_358 : vec4<f32> = u_xlat8;
  let x_360 : vec4<f32> = u_xlat6;
  let x_363 : vec4<f32> = u_xlat5;
  let x_365 : vec3<f32> = ((vec3<f32>(x_358.x, x_358.y, x_358.z) * vec3<f32>(x_360.x, x_360.y, x_360.z)) + vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_366 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_373 : vec4<f32> = vs_TEXCOORD1;
  let x_376 : f32 = x_113.x_GlobalMipBias.x;
  let x_377 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_373.x, x_373.y), x_376);
  let x_378 : vec3<f32> = vec3<f32>(x_377.x, x_377.y, x_377.w);
  let x_379 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_382 : f32 = u_xlat6.x;
  let x_384 : f32 = u_xlat6.z;
  u_xlat6.x = (x_382 * x_384);
  let x_387 : vec4<f32> = u_xlat6;
  let x_392 : vec2<f32> = ((vec2<f32>(x_387.x, x_387.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_393 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_392.x, x_392.y, x_393.z, x_393.w);
  let x_395 : vec4<f32> = u_xlat6;
  let x_397 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec2<f32>(x_395.x, x_395.y), vec2<f32>(x_397.x, x_397.y));
  let x_400 : f32 = u_xlat79;
  u_xlat79 = min(x_400, 1.0f);
  let x_402 : f32 = u_xlat79;
  u_xlat79 = (-(x_402) + 1.0f);
  let x_405 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_405);
  let x_407 : f32 = u_xlat79;
  u_xlat7.z = max(x_407, 0.0000000000000001f);
  let x_411 : vec4<f32> = u_xlat6;
  let x_414 : f32 = x_13.x_NormalScale0;
  let x_416 : vec2<f32> = (vec2<f32>(x_411.x, x_411.y) * vec2<f32>(x_414, x_414));
  let x_417 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_416.x, x_416.y, x_417.z, x_417.w);
  let x_423 : vec4<f32> = vs_TEXCOORD1;
  let x_426 : f32 = x_113.x_GlobalMipBias.x;
  let x_427 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_423.z, x_423.w), x_426);
  let x_428 : vec3<f32> = vec3<f32>(x_427.x, x_427.y, x_427.w);
  let x_429 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_432 : f32 = u_xlat6.x;
  let x_434 : f32 = u_xlat6.z;
  u_xlat6.x = (x_432 * x_434);
  let x_437 : vec4<f32> = u_xlat6;
  let x_440 : vec2<f32> = ((vec2<f32>(x_437.x, x_437.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_441 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_440.x, x_440.y, x_441.z, x_441.w);
  let x_443 : vec4<f32> = u_xlat6;
  let x_445 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec2<f32>(x_443.x, x_443.y), vec2<f32>(x_445.x, x_445.y));
  let x_448 : f32 = u_xlat79;
  u_xlat79 = min(x_448, 1.0f);
  let x_450 : f32 = u_xlat79;
  u_xlat79 = (-(x_450) + 1.0f);
  let x_453 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_453);
  let x_455 : f32 = u_xlat79;
  u_xlat8.z = max(x_455, 0.0000000000000001f);
  let x_458 : vec4<f32> = u_xlat6;
  let x_461 : f32 = x_13.x_NormalScale1;
  let x_463 : f32 = x_13.x_NormalScale1;
  let x_464 : vec2<f32> = vec2<f32>(x_461, x_463);
  let x_468 : vec2<f32> = (vec2<f32>(x_458.x, x_458.y) * vec2<f32>(x_464.x, x_464.y));
  let x_469 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_468.x, x_468.y, x_469.z, x_469.w);
  let x_471 : vec4<f32> = u_xlat4;
  let x_473 : vec4<f32> = u_xlat8;
  let x_475 : vec3<f32> = (vec3<f32>(x_471.y, x_471.y, x_471.y) * vec3<f32>(x_473.x, x_473.y, x_473.z));
  let x_476 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_478 : vec4<f32> = u_xlat4;
  let x_480 : vec4<f32> = u_xlat7;
  let x_483 : vec4<f32> = u_xlat6;
  let x_485 : vec3<f32> = ((vec3<f32>(x_478.x, x_478.x, x_478.x) * vec3<f32>(x_480.x, x_480.y, x_480.z)) + vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_486 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_492 : vec4<f32> = vs_TEXCOORD2;
  let x_495 : f32 = x_113.x_GlobalMipBias.x;
  let x_496 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_492.x, x_492.y), x_495);
  let x_497 : vec3<f32> = vec3<f32>(x_496.x, x_496.y, x_496.w);
  let x_498 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_501 : f32 = u_xlat7.x;
  let x_503 : f32 = u_xlat7.z;
  u_xlat7.x = (x_501 * x_503);
  let x_506 : vec4<f32> = u_xlat7;
  let x_509 : vec2<f32> = ((vec2<f32>(x_506.x, x_506.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_510 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_509.x, x_509.y, x_510.z, x_510.w);
  let x_512 : vec4<f32> = u_xlat7;
  let x_514 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec2<f32>(x_512.x, x_512.y), vec2<f32>(x_514.x, x_514.y));
  let x_517 : f32 = u_xlat79;
  u_xlat79 = min(x_517, 1.0f);
  let x_519 : f32 = u_xlat79;
  u_xlat79 = (-(x_519) + 1.0f);
  let x_522 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_522);
  let x_524 : f32 = u_xlat79;
  u_xlat8.z = max(x_524, 0.0000000000000001f);
  let x_527 : vec4<f32> = u_xlat7;
  let x_531 : f32 = x_13.x_NormalScale2;
  let x_533 : f32 = x_13.x_NormalScale2;
  let x_534 : vec2<f32> = vec2<f32>(x_531, x_533);
  let x_538 : vec2<f32> = (vec2<f32>(x_527.x, x_527.y) * vec2<f32>(x_534.x, x_534.y));
  let x_539 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_538.x, x_538.y, x_539.z, x_539.w);
  let x_541 : vec4<f32> = u_xlat4;
  let x_543 : vec4<f32> = u_xlat8;
  let x_546 : vec4<f32> = u_xlat6;
  let x_548 : vec3<f32> = ((vec3<f32>(x_541.z, x_541.z, x_541.z) * vec3<f32>(x_543.x, x_543.y, x_543.z)) + vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_549 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_555 : vec4<f32> = vs_TEXCOORD2;
  let x_558 : f32 = x_113.x_GlobalMipBias.x;
  let x_559 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_555.z, x_555.w), x_558);
  let x_560 : vec3<f32> = vec3<f32>(x_559.x, x_559.y, x_559.w);
  let x_561 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_564 : f32 = u_xlat7.x;
  let x_566 : f32 = u_xlat7.z;
  u_xlat7.x = (x_564 * x_566);
  let x_569 : vec4<f32> = u_xlat7;
  let x_572 : vec2<f32> = ((vec2<f32>(x_569.x, x_569.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_573 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_572.x, x_572.y, x_573.z, x_573.w);
  let x_575 : vec4<f32> = u_xlat7;
  let x_577 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec2<f32>(x_575.x, x_575.y), vec2<f32>(x_577.x, x_577.y));
  let x_580 : f32 = u_xlat79;
  u_xlat79 = min(x_580, 1.0f);
  let x_582 : f32 = u_xlat79;
  u_xlat79 = (-(x_582) + 1.0f);
  let x_585 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_585);
  let x_587 : f32 = u_xlat79;
  u_xlat8.z = max(x_587, 0.0000000000000001f);
  let x_590 : vec4<f32> = u_xlat7;
  let x_594 : f32 = x_13.x_NormalScale3;
  let x_596 : f32 = x_13.x_NormalScale3;
  let x_597 : vec2<f32> = vec2<f32>(x_594, x_596);
  let x_601 : vec2<f32> = (vec2<f32>(x_590.x, x_590.y) * vec2<f32>(x_597.x, x_597.y));
  let x_602 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_601.x, x_601.y, x_602.z, x_602.w);
  let x_604 : vec4<f32> = u_xlat4;
  let x_606 : vec4<f32> = u_xlat8;
  let x_609 : vec4<f32> = u_xlat6;
  let x_611 : vec3<f32> = ((vec3<f32>(x_604.w, x_604.w, x_604.w) * vec3<f32>(x_606.x, x_606.y, x_606.z)) + vec3<f32>(x_609.x, x_609.y, x_609.z));
  let x_612 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_615 : f32 = u_xlat6.z;
  u_xlat6.w = (x_615 + 0.00000999999974737875f);
  let x_619 : vec4<f32> = u_xlat6;
  let x_621 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec3<f32>(x_619.x, x_619.y, x_619.w), vec3<f32>(x_621.x, x_621.y, x_621.w));
  let x_624 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_624);
  let x_626 : f32 = u_xlat79;
  let x_628 : vec4<f32> = u_xlat6;
  let x_630 : vec3<f32> = (vec3<f32>(x_626, x_626, x_626) * vec3<f32>(x_628.x, x_628.y, x_628.w));
  let x_631 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  let x_634 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_634;
  let x_637 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_637;
  let x_640 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_640;
  let x_643 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_643;
  let x_646 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_646;
  let x_649 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_649;
  let x_652 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_652;
  let x_655 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_655;
  let x_657 : vec4<f32> = u_xlat7;
  let x_658 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_657 + x_658);
  let x_661 : f32 = u_xlat0.z;
  u_xlat8.x = x_661;
  let x_664 : f32 = u_xlat1.z;
  u_xlat8.y = x_664;
  let x_667 : f32 = u_xlat2.z;
  u_xlat8.z = x_667;
  let x_670 : f32 = u_xlat3.y;
  u_xlat8.w = x_670;
  let x_672 : vec4<f32> = u_xlat9;
  let x_675 : f32 = x_13.x_Smoothness0;
  let x_677 : f32 = x_13.x_Smoothness1;
  let x_679 : f32 = x_13.x_Smoothness2;
  let x_681 : f32 = x_13.x_Smoothness3;
  let x_684 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_672) * vec4<f32>(x_675, x_677, x_679, x_681)) + x_684);
  let x_688 : f32 = x_13.x_LayerHasMask0;
  let x_691 : f32 = x_13.x_LayerHasMask1;
  let x_694 : f32 = x_13.x_LayerHasMask2;
  let x_697 : f32 = x_13.x_LayerHasMask3;
  let x_699 : vec4<f32> = u_xlat8;
  let x_701 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_688, x_691, x_694, x_697) * x_699) + x_701);
  let x_704 : vec4<f32> = u_xlat4;
  let x_705 : vec4<f32> = u_xlat8;
  u_xlat52 = dot(x_704, x_705);
  let x_708 : f32 = u_xlat0.x;
  u_xlat8.x = x_708;
  let x_711 : f32 = u_xlat1.x;
  u_xlat8.y = x_711;
  let x_714 : f32 = u_xlat2.x;
  u_xlat8.z = x_714;
  let x_717 : f32 = u_xlat3.x;
  u_xlat8.w = x_717;
  let x_719 : vec4<f32> = u_xlat8;
  let x_722 : f32 = x_13.x_Metallic0;
  let x_725 : f32 = x_13.x_Metallic1;
  let x_728 : f32 = x_13.x_Metallic2;
  let x_731 : f32 = x_13.x_Metallic3;
  u_xlat8 = (x_719 + -(vec4<f32>(x_722, x_725, x_728, x_731)));
  let x_736 : f32 = x_13.x_LayerHasMask0;
  let x_738 : f32 = x_13.x_LayerHasMask1;
  let x_740 : f32 = x_13.x_LayerHasMask2;
  let x_742 : f32 = x_13.x_LayerHasMask3;
  let x_744 : vec4<f32> = u_xlat8;
  let x_747 : f32 = x_13.x_Metallic0;
  let x_749 : f32 = x_13.x_Metallic1;
  let x_751 : f32 = x_13.x_Metallic2;
  let x_753 : f32 = x_13.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_736, x_738, x_740, x_742) * x_744) + vec4<f32>(x_747, x_749, x_751, x_753));
  let x_756 : vec4<f32> = u_xlat4;
  let x_757 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_756, x_757);
  let x_761 : f32 = u_xlat0.y;
  u_xlat3.x = x_761;
  let x_764 : f32 = u_xlat1.y;
  u_xlat3.y = x_764;
  let x_767 : f32 = u_xlat2.y;
  u_xlat3.z = x_767;
  let x_769 : vec4<f32> = u_xlat7;
  let x_771 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_769) + x_771);
  let x_774 : f32 = x_13.x_LayerHasMask0;
  let x_776 : f32 = x_13.x_LayerHasMask1;
  let x_778 : f32 = x_13.x_LayerHasMask2;
  let x_780 : f32 = x_13.x_LayerHasMask3;
  let x_782 : vec4<f32> = u_xlat1;
  let x_784 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_774, x_776, x_778, x_780) * x_782) + x_784);
  let x_787 : vec4<f32> = u_xlat4;
  let x_788 : vec4<f32> = u_xlat1;
  u_xlat26 = dot(x_787, x_788);
  let x_790 : vec4<f32> = u_xlat6;
  let x_793 : vec4<f32> = vs_TEXCOORD5;
  let x_795 : vec3<f32> = (vec3<f32>(x_790.y, x_790.y, x_790.y) * vec3<f32>(x_793.x, x_793.y, x_793.z));
  let x_796 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_798 : vec4<f32> = u_xlat6;
  let x_801 : vec4<f32> = vs_TEXCOORD4;
  let x_805 : vec4<f32> = u_xlat1;
  let x_807 : vec3<f32> = ((vec3<f32>(x_798.x, x_798.x, x_798.x) * -(vec3<f32>(x_801.x, x_801.y, x_801.z))) + vec3<f32>(x_805.x, x_805.y, x_805.z));
  let x_808 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_810 : vec4<f32> = u_xlat6;
  let x_813 : vec4<f32> = vs_TEXCOORD3;
  let x_816 : vec4<f32> = u_xlat1;
  let x_818 : vec3<f32> = ((vec3<f32>(x_810.z, x_810.z, x_810.z) * vec3<f32>(x_813.x, x_813.y, x_813.z)) + vec3<f32>(x_816.x, x_816.y, x_816.z));
  let x_819 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_821 : vec4<f32> = u_xlat1;
  let x_823 : vec4<f32> = u_xlat1;
  u_xlat79 = dot(vec3<f32>(x_821.x, x_821.y, x_821.z), vec3<f32>(x_823.x, x_823.y, x_823.z));
  let x_826 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_826);
  let x_828 : f32 = u_xlat79;
  let x_830 : vec4<f32> = u_xlat1;
  let x_832 : vec3<f32> = (vec3<f32>(x_828, x_828, x_828) * vec3<f32>(x_830.x, x_830.y, x_830.z));
  let x_833 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
  let x_837 : vec3<f32> = vs_TEXCOORD7;
  let x_847 : vec4<f32> = x_845.x_CascadeShadowSplitSpheres0;
  let x_850 : vec3<f32> = (x_837 + -(vec3<f32>(x_847.x, x_847.y, x_847.z)));
  let x_851 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_850.x, x_850.y, x_850.z, x_851.w);
  let x_853 : vec3<f32> = vs_TEXCOORD7;
  let x_855 : vec4<f32> = x_845.x_CascadeShadowSplitSpheres1;
  let x_858 : vec3<f32> = (x_853 + -(vec3<f32>(x_855.x, x_855.y, x_855.z)));
  let x_859 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  let x_861 : vec3<f32> = vs_TEXCOORD7;
  let x_863 : vec4<f32> = x_845.x_CascadeShadowSplitSpheres2;
  let x_866 : vec3<f32> = (x_861 + -(vec3<f32>(x_863.x, x_863.y, x_863.z)));
  let x_867 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
  let x_869 : vec3<f32> = vs_TEXCOORD7;
  let x_871 : vec4<f32> = x_845.x_CascadeShadowSplitSpheres3;
  let x_874 : vec3<f32> = (x_869 + -(vec3<f32>(x_871.x, x_871.y, x_871.z)));
  let x_875 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_877 : vec4<f32> = u_xlat2;
  let x_879 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_877.x, x_877.y, x_877.z), vec3<f32>(x_879.x, x_879.y, x_879.z));
  let x_883 : vec4<f32> = u_xlat3;
  let x_885 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_883.x, x_883.y, x_883.z), vec3<f32>(x_885.x, x_885.y, x_885.z));
  let x_889 : vec4<f32> = u_xlat4;
  let x_891 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_889.x, x_889.y, x_889.z), vec3<f32>(x_891.x, x_891.y, x_891.z));
  let x_895 : vec4<f32> = u_xlat6;
  let x_897 : vec4<f32> = u_xlat6;
  u_xlat2.w = dot(vec3<f32>(x_895.x, x_895.y, x_895.z), vec3<f32>(x_897.x, x_897.y, x_897.z));
  let x_903 : vec4<f32> = u_xlat2;
  let x_905 : vec4<f32> = x_845.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_903 < x_905);
  let x_908 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_908);
  let x_912 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_912);
  let x_916 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_916);
  let x_920 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_920);
  let x_924 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_924);
  let x_929 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_929);
  let x_933 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_933);
  let x_936 : vec4<f32> = u_xlat2;
  let x_938 : vec4<f32> = u_xlat3;
  let x_940 : vec3<f32> = (vec3<f32>(x_936.x, x_936.y, x_936.z) + vec3<f32>(x_938.y, x_938.z, x_938.w));
  let x_941 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
  let x_943 : vec4<f32> = u_xlat2;
  let x_946 : vec3<f32> = max(vec3<f32>(x_943.x, x_943.y, x_943.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_947 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_947.x, x_946.x, x_946.y, x_946.z);
  let x_949 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_949, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_955 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_955) + 4.0f);
  let x_962 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_962);
  let x_966 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_966) << bitcast<u32>(2i));
  let x_970 : vec3<f32> = vs_TEXCOORD7;
  let x_972 : i32 = u_xlati2;
  let x_975 : i32 = u_xlati2;
  let x_979 : vec4<f32> = x_845.x_MainLightWorldToShadow[((x_972 + 1i) / 4i)][((x_975 + 1i) % 4i)];
  u_xlat28 = (vec3<f32>(x_970.y, x_970.y, x_970.y) * vec3<f32>(x_979.x, x_979.y, x_979.z));
  let x_982 : i32 = u_xlati2;
  let x_984 : i32 = u_xlati2;
  let x_987 : vec4<f32> = x_845.x_MainLightWorldToShadow[(x_982 / 4i)][(x_984 % 4i)];
  let x_989 : vec3<f32> = vs_TEXCOORD7;
  let x_992 : vec3<f32> = u_xlat28;
  u_xlat28 = ((vec3<f32>(x_987.x, x_987.y, x_987.z) * vec3<f32>(x_989.x, x_989.x, x_989.x)) + x_992);
  let x_994 : i32 = u_xlati2;
  let x_997 : i32 = u_xlati2;
  let x_1001 : vec4<f32> = x_845.x_MainLightWorldToShadow[((x_994 + 2i) / 4i)][((x_997 + 2i) % 4i)];
  let x_1003 : vec3<f32> = vs_TEXCOORD7;
  let x_1006 : vec3<f32> = u_xlat28;
  u_xlat28 = ((vec3<f32>(x_1001.x, x_1001.y, x_1001.z) * vec3<f32>(x_1003.z, x_1003.z, x_1003.z)) + x_1006);
  let x_1008 : vec3<f32> = u_xlat28;
  let x_1009 : i32 = u_xlati2;
  let x_1012 : i32 = u_xlati2;
  let x_1016 : vec4<f32> = x_845.x_MainLightWorldToShadow[((x_1009 + 3i) / 4i)][((x_1012 + 3i) % 4i)];
  let x_1018 : vec3<f32> = (x_1008 + vec3<f32>(x_1016.x, x_1016.y, x_1016.z));
  let x_1019 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1018.x, x_1018.y, x_1018.z, x_1019.w);
  let x_1024 : f32 = vs_TEXCOORD7.y;
  let x_1026 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat80 = (x_1024 * x_1026);
  let x_1029 : f32 = x_113.unity_MatrixV[0i].z;
  let x_1031 : f32 = vs_TEXCOORD7.x;
  let x_1033 : f32 = u_xlat80;
  u_xlat80 = ((x_1029 * x_1031) + x_1033);
  let x_1036 : f32 = x_113.unity_MatrixV[2i].z;
  let x_1038 : f32 = vs_TEXCOORD7.z;
  let x_1040 : f32 = u_xlat80;
  u_xlat80 = ((x_1036 * x_1038) + x_1040);
  let x_1042 : f32 = u_xlat80;
  let x_1044 : f32 = x_113.unity_MatrixV[3i].z;
  u_xlat80 = (x_1042 + x_1044);
  let x_1046 : f32 = u_xlat80;
  let x_1049 : f32 = x_113.x_ProjectionParams.y;
  u_xlat80 = (-(x_1046) + -(x_1049));
  let x_1052 : f32 = u_xlat80;
  u_xlat80 = max(x_1052, 0.0f);
  let x_1054 : f32 = u_xlat80;
  let x_1056 : f32 = x_113.unity_FogParams.x;
  u_xlat80 = (x_1054 * x_1056);
  u_xlat1.w = 1.0f;
  let x_1064 : vec4<f32> = x_1062.unity_SHAr;
  let x_1065 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_1064, x_1065);
  let x_1069 : vec4<f32> = x_1062.unity_SHAg;
  let x_1070 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_1069, x_1070);
  let x_1074 : vec4<f32> = x_1062.unity_SHAb;
  let x_1075 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_1074, x_1075);
  let x_1078 : vec4<f32> = u_xlat1;
  let x_1080 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_1078.y, x_1078.z, x_1078.z, x_1078.x) * vec4<f32>(x_1080.x, x_1080.y, x_1080.z, x_1080.z));
  let x_1084 : vec4<f32> = x_1062.unity_SHBr;
  let x_1085 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_1084, x_1085);
  let x_1089 : vec4<f32> = x_1062.unity_SHBg;
  let x_1090 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_1089, x_1090);
  let x_1094 : vec4<f32> = x_1062.unity_SHBb;
  let x_1095 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_1094, x_1095);
  let x_1099 : f32 = u_xlat1.y;
  let x_1101 : f32 = u_xlat1.y;
  u_xlat79 = (x_1099 * x_1101);
  let x_1104 : f32 = u_xlat1.x;
  let x_1106 : f32 = u_xlat1.x;
  let x_1108 : f32 = u_xlat79;
  u_xlat79 = ((x_1104 * x_1106) + -(x_1108));
  let x_1113 : vec4<f32> = x_1062.unity_SHC;
  let x_1115 : f32 = u_xlat79;
  let x_1118 : vec4<f32> = u_xlat6;
  let x_1120 : vec3<f32> = ((vec3<f32>(x_1113.x, x_1113.y, x_1113.z) * vec3<f32>(x_1115, x_1115, x_1115)) + vec3<f32>(x_1118.x, x_1118.y, x_1118.z));
  let x_1121 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);
  let x_1123 : vec4<f32> = u_xlat3;
  let x_1125 : vec4<f32> = u_xlat4;
  let x_1127 : vec3<f32> = (vec3<f32>(x_1123.x, x_1123.y, x_1123.z) + vec3<f32>(x_1125.x, x_1125.y, x_1125.z));
  let x_1128 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1127.x, x_1127.y, x_1127.z, x_1128.w);
  let x_1130 : vec4<f32> = u_xlat3;
  let x_1132 : vec3<f32> = max(vec3<f32>(x_1130.x, x_1130.y, x_1130.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1133 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1132.x, x_1132.y, x_1132.z, x_1133.w);
  let x_1136 : f32 = u_xlat0.x;
  u_xlat79 = ((-(x_1136) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_1142 : f32 = u_xlat79;
  u_xlat81 = (-(x_1142) + 1.0f);
  let x_1145 : f32 = u_xlat79;
  let x_1147 : vec4<f32> = u_xlat5;
  let x_1149 : vec3<f32> = (vec3<f32>(x_1145, x_1145, x_1145) * vec3<f32>(x_1147.x, x_1147.y, x_1147.z));
  let x_1150 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1149.x, x_1149.y, x_1149.z, x_1150.w);
  let x_1152 : vec4<f32> = u_xlat5;
  let x_1156 : vec3<f32> = (vec3<f32>(x_1152.x, x_1152.y, x_1152.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_1157 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1156.x, x_1156.y, x_1156.z, x_1157.w);
  let x_1159 : vec3<f32> = u_xlat0;
  let x_1161 : vec4<f32> = u_xlat5;
  let x_1166 : vec3<f32> = ((vec3<f32>(x_1159.x, x_1159.x, x_1159.x) * vec3<f32>(x_1161.x, x_1161.y, x_1161.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_1167 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1166.x, x_1166.y, x_1166.z, x_1167.w);
  let x_1169 : f32 = u_xlat52;
  u_xlat0.x = (-(x_1169) + 1.0f);
  let x_1174 : f32 = u_xlat0.x;
  let x_1176 : f32 = u_xlat0.x;
  u_xlat79 = (x_1174 * x_1176);
  let x_1178 : f32 = u_xlat79;
  u_xlat79 = max(x_1178, 0.0078125f);
  let x_1182 : f32 = u_xlat79;
  let x_1183 : f32 = u_xlat79;
  u_xlat82 = (x_1182 * x_1183);
  let x_1185 : f32 = u_xlat52;
  let x_1186 : f32 = u_xlat81;
  u_xlat52 = (x_1185 + x_1186);
  let x_1188 : f32 = u_xlat52;
  u_xlat52 = clamp(x_1188, 0.0f, 1.0f);
  let x_1190 : f32 = u_xlat79;
  u_xlat81 = ((x_1190 * 4.0f) + 2.0f);
  let x_1193 : f32 = u_xlat26;
  u_xlat26 = min(x_1193, 1.0f);
  let x_1197 : f32 = x_845.x_MainLightShadowParams.y;
  u_xlatb83 = (0.0f < x_1197);
  let x_1199 : bool = u_xlatb83;
  if (x_1199) {
    let x_1203 : f32 = x_845.x_MainLightShadowParams.y;
    u_xlatb83 = (x_1203 == 1.0f);
    let x_1205 : bool = u_xlatb83;
    if (x_1205) {
      let x_1208 : vec4<f32> = u_xlat2;
      let x_1211 : vec4<f32> = x_845.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_1208.x, x_1208.y, x_1208.x, x_1208.y) + x_1211);
      let x_1215 : vec4<f32> = u_xlat6;
      let x_1216 : vec2<f32> = vec2<f32>(x_1215.x, x_1215.y);
      let x_1218 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_1216.x, x_1216.y, x_1218);
      let x_1230 : vec3<f32> = txVec0;
      let x_1232 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1230.xy, x_1230.z);
      u_xlat7.x = x_1232;
      let x_1235 : vec4<f32> = u_xlat6;
      let x_1236 : vec2<f32> = vec2<f32>(x_1235.z, x_1235.w);
      let x_1238 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_1236.x, x_1236.y, x_1238);
      let x_1245 : vec3<f32> = txVec1;
      let x_1247 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1245.xy, x_1245.z);
      u_xlat7.y = x_1247;
      let x_1249 : vec4<f32> = u_xlat2;
      let x_1252 : vec4<f32> = x_845.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1249.x, x_1249.y, x_1249.x, x_1249.y) + x_1252);
      let x_1255 : vec4<f32> = u_xlat6;
      let x_1256 : vec2<f32> = vec2<f32>(x_1255.x, x_1255.y);
      let x_1258 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_1256.x, x_1256.y, x_1258);
      let x_1265 : vec3<f32> = txVec2;
      let x_1267 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1265.xy, x_1265.z);
      u_xlat7.z = x_1267;
      let x_1270 : vec4<f32> = u_xlat6;
      let x_1271 : vec2<f32> = vec2<f32>(x_1270.z, x_1270.w);
      let x_1273 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_1271.x, x_1271.y, x_1273);
      let x_1280 : vec3<f32> = txVec3;
      let x_1282 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1280.xy, x_1280.z);
      u_xlat7.w = x_1282;
      let x_1285 : vec4<f32> = u_xlat7;
      u_xlat83 = dot(x_1285, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1292 : f32 = x_845.x_MainLightShadowParams.y;
      u_xlatb6 = (x_1292 == 2.0f);
      let x_1294 : bool = u_xlatb6;
      if (x_1294) {
        let x_1297 : vec4<f32> = u_xlat2;
        let x_1300 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1303 : vec2<f32> = ((vec2<f32>(x_1297.x, x_1297.y) * vec2<f32>(x_1300.z, x_1300.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1304 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1303.x, x_1303.y, x_1304.z, x_1304.w);
        let x_1306 : vec4<f32> = u_xlat6;
        let x_1308 : vec2<f32> = floor(vec2<f32>(x_1306.x, x_1306.y));
        let x_1309 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1308.x, x_1308.y, x_1309.z, x_1309.w);
        let x_1313 : vec4<f32> = u_xlat2;
        let x_1316 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1319 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1313.x, x_1313.y) * vec2<f32>(x_1316.z, x_1316.w)) + -(vec2<f32>(x_1319.x, x_1319.y)));
        let x_1323 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1323.x, x_1323.x, x_1323.y, x_1323.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1327 : vec4<f32> = u_xlat7;
        let x_1329 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1327.x, x_1327.x, x_1327.z, x_1327.z) * vec4<f32>(x_1329.x, x_1329.x, x_1329.z, x_1329.z));
        let x_1332 : vec4<f32> = u_xlat8;
        let x_1336 : vec2<f32> = (vec2<f32>(x_1332.y, x_1332.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1337 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1336.x, x_1337.y, x_1336.y, x_1337.w);
        let x_1339 : vec4<f32> = u_xlat8;
        let x_1342 : vec2<f32> = u_xlat58;
        let x_1344 : vec2<f32> = ((vec2<f32>(x_1339.x, x_1339.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1342));
        let x_1345 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1344.x, x_1344.y, x_1345.z, x_1345.w);
        let x_1348 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_1348) + vec2<f32>(1.0f, 1.0f));
        let x_1352 : vec2<f32> = u_xlat58;
        let x_1354 : vec2<f32> = min(x_1352, vec2<f32>(0.0f, 0.0f));
        let x_1355 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1354.x, x_1354.y, x_1355.z, x_1355.w);
        let x_1357 : vec4<f32> = u_xlat9;
        let x_1360 : vec4<f32> = u_xlat9;
        let x_1363 : vec2<f32> = u_xlat60;
        let x_1364 : vec2<f32> = ((-(vec2<f32>(x_1357.x, x_1357.y)) * vec2<f32>(x_1360.x, x_1360.y)) + x_1363);
        let x_1365 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1364.x, x_1364.y, x_1365.z, x_1365.w);
        let x_1367 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_1367, vec2<f32>(0.0f, 0.0f));
        let x_1369 : vec2<f32> = u_xlat58;
        let x_1371 : vec2<f32> = u_xlat58;
        let x_1373 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_1369) * x_1371) + vec2<f32>(x_1373.y, x_1373.w));
        let x_1376 : vec4<f32> = u_xlat9;
        let x_1378 : vec2<f32> = (vec2<f32>(x_1376.x, x_1376.y) + vec2<f32>(1.0f, 1.0f));
        let x_1379 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1378.x, x_1378.y, x_1379.z, x_1379.w);
        let x_1381 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_1381 + vec2<f32>(1.0f, 1.0f));
        let x_1383 : vec4<f32> = u_xlat8;
        let x_1387 : vec2<f32> = (vec2<f32>(x_1383.x, x_1383.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1388 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1387.x, x_1387.y, x_1388.z, x_1388.w);
        let x_1390 : vec2<f32> = u_xlat60;
        let x_1391 : vec2<f32> = (x_1390 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1392 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1391.x, x_1391.y, x_1392.z, x_1392.w);
        let x_1394 : vec4<f32> = u_xlat9;
        let x_1396 : vec2<f32> = (vec2<f32>(x_1394.x, x_1394.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1397 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1396.x, x_1396.y, x_1397.z, x_1397.w);
        let x_1399 : vec2<f32> = u_xlat58;
        let x_1400 : vec2<f32> = (x_1399 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1401 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1400.x, x_1400.y, x_1401.z, x_1401.w);
        let x_1403 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_1403.y, x_1403.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1407 : f32 = u_xlat9.x;
        u_xlat10.z = x_1407;
        let x_1410 : f32 = u_xlat58.x;
        u_xlat10.w = x_1410;
        let x_1413 : f32 = u_xlat11.x;
        u_xlat8.z = x_1413;
        let x_1416 : f32 = u_xlat7.x;
        u_xlat8.w = x_1416;
        let x_1418 : vec4<f32> = u_xlat8;
        let x_1420 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1418.z, x_1418.w, x_1418.x, x_1418.z) + vec4<f32>(x_1420.z, x_1420.w, x_1420.x, x_1420.z));
        let x_1424 : f32 = u_xlat10.y;
        u_xlat9.z = x_1424;
        let x_1427 : f32 = u_xlat58.y;
        u_xlat9.w = x_1427;
        let x_1430 : f32 = u_xlat8.y;
        u_xlat11.z = x_1430;
        let x_1433 : f32 = u_xlat7.z;
        u_xlat11.w = x_1433;
        let x_1435 : vec4<f32> = u_xlat9;
        let x_1437 : vec4<f32> = u_xlat11;
        let x_1439 : vec3<f32> = (vec3<f32>(x_1435.z, x_1435.y, x_1435.w) + vec3<f32>(x_1437.z, x_1437.y, x_1437.w));
        let x_1440 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1439.x, x_1439.y, x_1439.z, x_1440.w);
        let x_1442 : vec4<f32> = u_xlat8;
        let x_1444 : vec4<f32> = u_xlat12;
        let x_1446 : vec3<f32> = (vec3<f32>(x_1442.x, x_1442.z, x_1442.w) / vec3<f32>(x_1444.z, x_1444.w, x_1444.y));
        let x_1447 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1446.x, x_1446.y, x_1446.z, x_1447.w);
        let x_1449 : vec4<f32> = u_xlat8;
        let x_1455 : vec3<f32> = (vec3<f32>(x_1449.x, x_1449.y, x_1449.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1456 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1455.x, x_1455.y, x_1455.z, x_1456.w);
        let x_1458 : vec4<f32> = u_xlat11;
        let x_1460 : vec4<f32> = u_xlat7;
        let x_1462 : vec3<f32> = (vec3<f32>(x_1458.z, x_1458.y, x_1458.w) / vec3<f32>(x_1460.x, x_1460.y, x_1460.z));
        let x_1463 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1462.x, x_1462.y, x_1462.z, x_1463.w);
        let x_1465 : vec4<f32> = u_xlat9;
        let x_1467 : vec3<f32> = (vec3<f32>(x_1465.x, x_1465.y, x_1465.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1468 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1467.x, x_1467.y, x_1467.z, x_1468.w);
        let x_1470 : vec4<f32> = u_xlat8;
        let x_1473 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1475 : vec3<f32> = (vec3<f32>(x_1470.y, x_1470.x, x_1470.z) * vec3<f32>(x_1473.x, x_1473.x, x_1473.x));
        let x_1476 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1475.x, x_1475.y, x_1475.z, x_1476.w);
        let x_1478 : vec4<f32> = u_xlat9;
        let x_1481 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1483 : vec3<f32> = (vec3<f32>(x_1478.x, x_1478.y, x_1478.z) * vec3<f32>(x_1481.y, x_1481.y, x_1481.y));
        let x_1484 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1483.x, x_1483.y, x_1483.z, x_1484.w);
        let x_1487 : f32 = u_xlat9.x;
        u_xlat8.w = x_1487;
        let x_1489 : vec4<f32> = u_xlat6;
        let x_1492 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1495 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1489.x, x_1489.y, x_1489.x, x_1489.y) * vec4<f32>(x_1492.x, x_1492.y, x_1492.x, x_1492.y)) + vec4<f32>(x_1495.y, x_1495.w, x_1495.x, x_1495.w));
        let x_1498 : vec4<f32> = u_xlat6;
        let x_1501 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1504 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_1498.x, x_1498.y) * vec2<f32>(x_1501.x, x_1501.y)) + vec2<f32>(x_1504.z, x_1504.w));
        let x_1508 : f32 = u_xlat8.y;
        u_xlat9.w = x_1508;
        let x_1510 : vec4<f32> = u_xlat9;
        let x_1511 : vec2<f32> = vec2<f32>(x_1510.y, x_1510.z);
        let x_1512 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1512.x, x_1511.x, x_1512.z, x_1511.y);
        let x_1514 : vec4<f32> = u_xlat6;
        let x_1517 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1520 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1514.x, x_1514.y, x_1514.x, x_1514.y) * vec4<f32>(x_1517.x, x_1517.y, x_1517.x, x_1517.y)) + vec4<f32>(x_1520.x, x_1520.y, x_1520.z, x_1520.y));
        let x_1523 : vec4<f32> = u_xlat6;
        let x_1526 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1529 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1523.x, x_1523.y, x_1523.x, x_1523.y) * vec4<f32>(x_1526.x, x_1526.y, x_1526.x, x_1526.y)) + vec4<f32>(x_1529.w, x_1529.y, x_1529.w, x_1529.z));
        let x_1532 : vec4<f32> = u_xlat6;
        let x_1535 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1538 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1532.x, x_1532.y, x_1532.x, x_1532.y) * vec4<f32>(x_1535.x, x_1535.y, x_1535.x, x_1535.y)) + vec4<f32>(x_1538.x, x_1538.w, x_1538.z, x_1538.w));
        let x_1541 : vec4<f32> = u_xlat7;
        let x_1543 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1541.x, x_1541.x, x_1541.x, x_1541.y) * vec4<f32>(x_1543.z, x_1543.w, x_1543.y, x_1543.z));
        let x_1547 : vec4<f32> = u_xlat7;
        let x_1549 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1547.y, x_1547.y, x_1547.z, x_1547.z) * x_1549);
        let x_1552 : f32 = u_xlat7.z;
        let x_1554 : f32 = u_xlat12.y;
        u_xlat6.x = (x_1552 * x_1554);
        let x_1558 : vec4<f32> = u_xlat10;
        let x_1559 : vec2<f32> = vec2<f32>(x_1558.x, x_1558.y);
        let x_1561 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_1559.x, x_1559.y, x_1561);
        let x_1569 : vec3<f32> = txVec4;
        let x_1571 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1569.xy, x_1569.z);
        u_xlat32 = x_1571;
        let x_1573 : vec4<f32> = u_xlat10;
        let x_1574 : vec2<f32> = vec2<f32>(x_1573.z, x_1573.w);
        let x_1576 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_1574.x, x_1574.y, x_1576);
        let x_1583 : vec3<f32> = txVec5;
        let x_1585 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1583.xy, x_1583.z);
        u_xlat7.x = x_1585;
        let x_1588 : f32 = u_xlat7.x;
        let x_1590 : f32 = u_xlat13.y;
        u_xlat7.x = (x_1588 * x_1590);
        let x_1594 : f32 = u_xlat13.x;
        let x_1595 : f32 = u_xlat32;
        let x_1598 : f32 = u_xlat7.x;
        u_xlat32 = ((x_1594 * x_1595) + x_1598);
        let x_1601 : vec2<f32> = u_xlat58;
        let x_1603 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_1601.x, x_1601.y, x_1603);
        let x_1610 : vec3<f32> = txVec6;
        let x_1612 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1610.xy, x_1610.z);
        u_xlat58.x = x_1612;
        let x_1615 : f32 = u_xlat13.z;
        let x_1617 : f32 = u_xlat58.x;
        let x_1619 : f32 = u_xlat32;
        u_xlat32 = ((x_1615 * x_1617) + x_1619);
        let x_1622 : vec4<f32> = u_xlat9;
        let x_1623 : vec2<f32> = vec2<f32>(x_1622.x, x_1622.y);
        let x_1625 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_1623.x, x_1623.y, x_1625);
        let x_1632 : vec3<f32> = txVec7;
        let x_1634 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1632.xy, x_1632.z);
        u_xlat58.x = x_1634;
        let x_1637 : f32 = u_xlat13.w;
        let x_1639 : f32 = u_xlat58.x;
        let x_1641 : f32 = u_xlat32;
        u_xlat32 = ((x_1637 * x_1639) + x_1641);
        let x_1644 : vec4<f32> = u_xlat11;
        let x_1645 : vec2<f32> = vec2<f32>(x_1644.x, x_1644.y);
        let x_1647 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_1645.x, x_1645.y, x_1647);
        let x_1654 : vec3<f32> = txVec8;
        let x_1656 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1654.xy, x_1654.z);
        u_xlat58.x = x_1656;
        let x_1659 : f32 = u_xlat14.x;
        let x_1661 : f32 = u_xlat58.x;
        let x_1663 : f32 = u_xlat32;
        u_xlat32 = ((x_1659 * x_1661) + x_1663);
        let x_1666 : vec4<f32> = u_xlat11;
        let x_1667 : vec2<f32> = vec2<f32>(x_1666.z, x_1666.w);
        let x_1669 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_1667.x, x_1667.y, x_1669);
        let x_1676 : vec3<f32> = txVec9;
        let x_1678 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1676.xy, x_1676.z);
        u_xlat58.x = x_1678;
        let x_1681 : f32 = u_xlat14.y;
        let x_1683 : f32 = u_xlat58.x;
        let x_1685 : f32 = u_xlat32;
        u_xlat32 = ((x_1681 * x_1683) + x_1685);
        let x_1688 : vec4<f32> = u_xlat9;
        let x_1689 : vec2<f32> = vec2<f32>(x_1688.z, x_1688.w);
        let x_1691 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_1689.x, x_1689.y, x_1691);
        let x_1698 : vec3<f32> = txVec10;
        let x_1700 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1698.xy, x_1698.z);
        u_xlat58.x = x_1700;
        let x_1703 : f32 = u_xlat14.z;
        let x_1705 : f32 = u_xlat58.x;
        let x_1707 : f32 = u_xlat32;
        u_xlat32 = ((x_1703 * x_1705) + x_1707);
        let x_1710 : vec4<f32> = u_xlat8;
        let x_1711 : vec2<f32> = vec2<f32>(x_1710.x, x_1710.y);
        let x_1713 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_1711.x, x_1711.y, x_1713);
        let x_1720 : vec3<f32> = txVec11;
        let x_1722 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1720.xy, x_1720.z);
        u_xlat58.x = x_1722;
        let x_1725 : f32 = u_xlat14.w;
        let x_1727 : f32 = u_xlat58.x;
        let x_1729 : f32 = u_xlat32;
        u_xlat32 = ((x_1725 * x_1727) + x_1729);
        let x_1732 : vec4<f32> = u_xlat8;
        let x_1733 : vec2<f32> = vec2<f32>(x_1732.z, x_1732.w);
        let x_1735 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_1733.x, x_1733.y, x_1735);
        let x_1742 : vec3<f32> = txVec12;
        let x_1744 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1742.xy, x_1742.z);
        u_xlat58.x = x_1744;
        let x_1747 : f32 = u_xlat6.x;
        let x_1749 : f32 = u_xlat58.x;
        let x_1751 : f32 = u_xlat32;
        u_xlat83 = ((x_1747 * x_1749) + x_1751);
      } else {
        let x_1754 : vec4<f32> = u_xlat2;
        let x_1757 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1760 : vec2<f32> = ((vec2<f32>(x_1754.x, x_1754.y) * vec2<f32>(x_1757.z, x_1757.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1761 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1760.x, x_1760.y, x_1761.z, x_1761.w);
        let x_1763 : vec4<f32> = u_xlat6;
        let x_1765 : vec2<f32> = floor(vec2<f32>(x_1763.x, x_1763.y));
        let x_1766 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1765.x, x_1765.y, x_1766.z, x_1766.w);
        let x_1768 : vec4<f32> = u_xlat2;
        let x_1771 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1774 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1768.x, x_1768.y) * vec2<f32>(x_1771.z, x_1771.w)) + -(vec2<f32>(x_1774.x, x_1774.y)));
        let x_1778 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1778.x, x_1778.x, x_1778.y, x_1778.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1781 : vec4<f32> = u_xlat7;
        let x_1783 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1781.x, x_1781.x, x_1781.z, x_1781.z) * vec4<f32>(x_1783.x, x_1783.x, x_1783.z, x_1783.z));
        let x_1786 : vec4<f32> = u_xlat8;
        let x_1790 : vec2<f32> = (vec2<f32>(x_1786.y, x_1786.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1791 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1791.x, x_1790.x, x_1791.z, x_1790.y);
        let x_1793 : vec4<f32> = u_xlat8;
        let x_1796 : vec2<f32> = u_xlat58;
        let x_1798 : vec2<f32> = ((vec2<f32>(x_1793.x, x_1793.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1796));
        let x_1799 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1798.x, x_1799.y, x_1798.y, x_1799.w);
        let x_1801 : vec2<f32> = u_xlat58;
        let x_1803 : vec2<f32> = (-(x_1801) + vec2<f32>(1.0f, 1.0f));
        let x_1804 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1803.x, x_1803.y, x_1804.z, x_1804.w);
        let x_1806 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1806, vec2<f32>(0.0f, 0.0f));
        let x_1808 : vec2<f32> = u_xlat60;
        let x_1810 : vec2<f32> = u_xlat60;
        let x_1812 : vec4<f32> = u_xlat8;
        let x_1814 : vec2<f32> = ((-(x_1808) * x_1810) + vec2<f32>(x_1812.x, x_1812.y));
        let x_1815 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1814.x, x_1814.y, x_1815.z, x_1815.w);
        let x_1817 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1817, vec2<f32>(0.0f, 0.0f));
        let x_1820 : vec2<f32> = u_xlat60;
        let x_1822 : vec2<f32> = u_xlat60;
        let x_1824 : vec4<f32> = u_xlat7;
        let x_1826 : vec2<f32> = ((-(x_1820) * x_1822) + vec2<f32>(x_1824.y, x_1824.w));
        let x_1827 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1826.x, x_1827.y, x_1826.y);
        let x_1829 : vec4<f32> = u_xlat8;
        let x_1831 : vec2<f32> = (vec2<f32>(x_1829.x, x_1829.y) + vec2<f32>(2.0f, 2.0f));
        let x_1832 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1831.x, x_1831.y, x_1832.z, x_1832.w);
        let x_1834 : vec3<f32> = u_xlat33;
        let x_1836 : vec2<f32> = (vec2<f32>(x_1834.x, x_1834.z) + vec2<f32>(2.0f, 2.0f));
        let x_1837 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1837.x, x_1836.x, x_1837.z, x_1836.y);
        let x_1840 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1840 * 0.08163200318813323975f);
        let x_1844 : vec4<f32> = u_xlat7;
        let x_1847 : vec3<f32> = (vec3<f32>(x_1844.z, x_1844.x, x_1844.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1848 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1847.x, x_1847.y, x_1847.z, x_1848.w);
        let x_1850 : vec4<f32> = u_xlat8;
        let x_1853 : vec2<f32> = (vec2<f32>(x_1850.x, x_1850.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1854 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1853.x, x_1853.y, x_1854.z, x_1854.w);
        let x_1857 : f32 = u_xlat11.y;
        u_xlat10.x = x_1857;
        let x_1859 : vec2<f32> = u_xlat58;
        let x_1866 : vec2<f32> = ((vec2<f32>(x_1859.x, x_1859.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1867 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1867.x, x_1866.x, x_1867.z, x_1866.y);
        let x_1869 : vec2<f32> = u_xlat58;
        let x_1873 : vec2<f32> = ((vec2<f32>(x_1869.x, x_1869.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1874 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1873.x, x_1874.y, x_1873.y, x_1874.w);
        let x_1877 : f32 = u_xlat7.x;
        u_xlat8.y = x_1877;
        let x_1880 : f32 = u_xlat9.y;
        u_xlat8.w = x_1880;
        let x_1882 : vec4<f32> = u_xlat8;
        let x_1883 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1882 + x_1883);
        let x_1885 : vec2<f32> = u_xlat58;
        let x_1888 : vec2<f32> = ((vec2<f32>(x_1885.y, x_1885.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1889 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1889.x, x_1888.x, x_1889.z, x_1888.y);
        let x_1891 : vec2<f32> = u_xlat58;
        let x_1894 : vec2<f32> = ((vec2<f32>(x_1891.y, x_1891.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1895 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1894.x, x_1895.y, x_1894.y, x_1895.w);
        let x_1898 : f32 = u_xlat7.y;
        u_xlat9.y = x_1898;
        let x_1900 : vec4<f32> = u_xlat9;
        let x_1901 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1900 + x_1901);
        let x_1903 : vec4<f32> = u_xlat8;
        let x_1904 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1903 / x_1904);
        let x_1906 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1906 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1912 : vec4<f32> = u_xlat9;
        let x_1913 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1912 / x_1913);
        let x_1915 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1915 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1917 : vec4<f32> = u_xlat8;
        let x_1920 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1917.w, x_1917.x, x_1917.y, x_1917.z) * vec4<f32>(x_1920.x, x_1920.x, x_1920.x, x_1920.x));
        let x_1923 : vec4<f32> = u_xlat9;
        let x_1926 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1923.x, x_1923.w, x_1923.y, x_1923.z) * vec4<f32>(x_1926.y, x_1926.y, x_1926.y, x_1926.y));
        let x_1929 : vec4<f32> = u_xlat8;
        let x_1930 : vec3<f32> = vec3<f32>(x_1929.y, x_1929.z, x_1929.w);
        let x_1931 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1930.x, x_1931.y, x_1930.y, x_1930.z);
        let x_1934 : f32 = u_xlat9.x;
        u_xlat11.y = x_1934;
        let x_1936 : vec4<f32> = u_xlat6;
        let x_1939 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1942 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1936.x, x_1936.y, x_1936.x, x_1936.y) * vec4<f32>(x_1939.x, x_1939.y, x_1939.x, x_1939.y)) + vec4<f32>(x_1942.x, x_1942.y, x_1942.z, x_1942.y));
        let x_1945 : vec4<f32> = u_xlat6;
        let x_1948 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1951 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1945.x, x_1945.y) * vec2<f32>(x_1948.x, x_1948.y)) + vec2<f32>(x_1951.w, x_1951.y));
        let x_1955 : f32 = u_xlat11.y;
        u_xlat8.y = x_1955;
        let x_1958 : f32 = u_xlat9.z;
        u_xlat11.y = x_1958;
        let x_1960 : vec4<f32> = u_xlat6;
        let x_1963 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1966 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1960.x, x_1960.y, x_1960.x, x_1960.y) * vec4<f32>(x_1963.x, x_1963.y, x_1963.x, x_1963.y)) + vec4<f32>(x_1966.x, x_1966.y, x_1966.z, x_1966.y));
        let x_1969 : vec4<f32> = u_xlat6;
        let x_1972 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1975 : vec4<f32> = u_xlat11;
        let x_1977 : vec2<f32> = ((vec2<f32>(x_1969.x, x_1969.y) * vec2<f32>(x_1972.x, x_1972.y)) + vec2<f32>(x_1975.w, x_1975.y));
        let x_1978 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1977.x, x_1977.y, x_1978.z, x_1978.w);
        let x_1981 : f32 = u_xlat11.y;
        u_xlat8.z = x_1981;
        let x_1984 : vec4<f32> = u_xlat6;
        let x_1987 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1990 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1984.x, x_1984.y, x_1984.x, x_1984.y) * vec4<f32>(x_1987.x, x_1987.y, x_1987.x, x_1987.y)) + vec4<f32>(x_1990.x, x_1990.y, x_1990.x, x_1990.z));
        let x_1994 : f32 = u_xlat9.w;
        u_xlat11.y = x_1994;
        let x_1997 : vec4<f32> = u_xlat6;
        let x_2000 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_2003 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1997.x, x_1997.y, x_1997.x, x_1997.y) * vec4<f32>(x_2000.x, x_2000.y, x_2000.x, x_2000.y)) + vec4<f32>(x_2003.x, x_2003.y, x_2003.z, x_2003.y));
        let x_2007 : vec4<f32> = u_xlat6;
        let x_2010 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_2013 : vec4<f32> = u_xlat11;
        u_xlat34 = ((vec2<f32>(x_2007.x, x_2007.y) * vec2<f32>(x_2010.x, x_2010.y)) + vec2<f32>(x_2013.w, x_2013.y));
        let x_2017 : f32 = u_xlat11.y;
        u_xlat8.w = x_2017;
        let x_2020 : vec4<f32> = u_xlat6;
        let x_2023 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_2026 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_2020.x, x_2020.y) * vec2<f32>(x_2023.x, x_2023.y)) + vec2<f32>(x_2026.x, x_2026.w));
        let x_2029 : vec4<f32> = u_xlat11;
        let x_2030 : vec3<f32> = vec3<f32>(x_2029.x, x_2029.z, x_2029.w);
        let x_2031 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2030.x, x_2031.y, x_2030.y, x_2030.z);
        let x_2033 : vec4<f32> = u_xlat6;
        let x_2036 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_2039 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2033.x, x_2033.y, x_2033.x, x_2033.y) * vec4<f32>(x_2036.x, x_2036.y, x_2036.x, x_2036.y)) + vec4<f32>(x_2039.x, x_2039.y, x_2039.z, x_2039.y));
        let x_2043 : vec4<f32> = u_xlat6;
        let x_2046 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_2049 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_2043.x, x_2043.y) * vec2<f32>(x_2046.x, x_2046.y)) + vec2<f32>(x_2049.w, x_2049.y));
        let x_2053 : f32 = u_xlat8.x;
        u_xlat9.x = x_2053;
        let x_2055 : vec4<f32> = u_xlat6;
        let x_2058 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_2061 : vec4<f32> = u_xlat9;
        let x_2063 : vec2<f32> = ((vec2<f32>(x_2055.x, x_2055.y) * vec2<f32>(x_2058.x, x_2058.y)) + vec2<f32>(x_2061.x, x_2061.y));
        let x_2064 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_2063.x, x_2063.y, x_2064.z, x_2064.w);
        let x_2067 : vec4<f32> = u_xlat7;
        let x_2069 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_2067.x, x_2067.x, x_2067.x, x_2067.x) * x_2069);
        let x_2072 : vec4<f32> = u_xlat7;
        let x_2074 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_2072.y, x_2072.y, x_2072.y, x_2072.y) * x_2074);
        let x_2077 : vec4<f32> = u_xlat7;
        let x_2079 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_2077.z, x_2077.z, x_2077.z, x_2077.z) * x_2079);
        let x_2081 : vec4<f32> = u_xlat7;
        let x_2083 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_2081.w, x_2081.w, x_2081.w, x_2081.w) * x_2083);
        let x_2086 : vec4<f32> = u_xlat12;
        let x_2087 : vec2<f32> = vec2<f32>(x_2086.x, x_2086.y);
        let x_2089 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_2087.x, x_2087.y, x_2089);
        let x_2096 : vec3<f32> = txVec13;
        let x_2098 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2096.xy, x_2096.z);
        u_xlat8.x = x_2098;
        let x_2101 : vec4<f32> = u_xlat12;
        let x_2102 : vec2<f32> = vec2<f32>(x_2101.z, x_2101.w);
        let x_2104 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_2102.x, x_2102.y, x_2104);
        let x_2112 : vec3<f32> = txVec14;
        let x_2114 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2112.xy, x_2112.z);
        u_xlat86 = x_2114;
        let x_2115 : f32 = u_xlat86;
        let x_2117 : f32 = u_xlat17.y;
        u_xlat86 = (x_2115 * x_2117);
        let x_2120 : f32 = u_xlat17.x;
        let x_2122 : f32 = u_xlat8.x;
        let x_2124 : f32 = u_xlat86;
        u_xlat8.x = ((x_2120 * x_2122) + x_2124);
        let x_2128 : vec2<f32> = u_xlat58;
        let x_2130 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_2128.x, x_2128.y, x_2130);
        let x_2137 : vec3<f32> = txVec15;
        let x_2139 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2137.xy, x_2137.z);
        u_xlat58.x = x_2139;
        let x_2142 : f32 = u_xlat17.z;
        let x_2144 : f32 = u_xlat58.x;
        let x_2147 : f32 = u_xlat8.x;
        u_xlat58.x = ((x_2142 * x_2144) + x_2147);
        let x_2151 : vec4<f32> = u_xlat15;
        let x_2152 : vec2<f32> = vec2<f32>(x_2151.x, x_2151.y);
        let x_2154 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_2152.x, x_2152.y, x_2154);
        let x_2162 : vec3<f32> = txVec16;
        let x_2164 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2162.xy, x_2162.z);
        u_xlat84 = x_2164;
        let x_2166 : f32 = u_xlat17.w;
        let x_2167 : f32 = u_xlat84;
        let x_2170 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2166 * x_2167) + x_2170);
        let x_2174 : vec4<f32> = u_xlat13;
        let x_2175 : vec2<f32> = vec2<f32>(x_2174.x, x_2174.y);
        let x_2177 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_2175.x, x_2175.y, x_2177);
        let x_2184 : vec3<f32> = txVec17;
        let x_2186 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2184.xy, x_2184.z);
        u_xlat84 = x_2186;
        let x_2188 : f32 = u_xlat18.x;
        let x_2189 : f32 = u_xlat84;
        let x_2192 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2188 * x_2189) + x_2192);
        let x_2196 : vec4<f32> = u_xlat13;
        let x_2197 : vec2<f32> = vec2<f32>(x_2196.z, x_2196.w);
        let x_2199 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_2197.x, x_2197.y, x_2199);
        let x_2206 : vec3<f32> = txVec18;
        let x_2208 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2206.xy, x_2206.z);
        u_xlat84 = x_2208;
        let x_2210 : f32 = u_xlat18.y;
        let x_2211 : f32 = u_xlat84;
        let x_2214 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2210 * x_2211) + x_2214);
        let x_2218 : vec4<f32> = u_xlat14;
        let x_2219 : vec2<f32> = vec2<f32>(x_2218.x, x_2218.y);
        let x_2221 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_2219.x, x_2219.y, x_2221);
        let x_2228 : vec3<f32> = txVec19;
        let x_2230 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2228.xy, x_2228.z);
        u_xlat84 = x_2230;
        let x_2232 : f32 = u_xlat18.z;
        let x_2233 : f32 = u_xlat84;
        let x_2236 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2232 * x_2233) + x_2236);
        let x_2240 : vec4<f32> = u_xlat15;
        let x_2241 : vec2<f32> = vec2<f32>(x_2240.z, x_2240.w);
        let x_2243 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_2241.x, x_2241.y, x_2243);
        let x_2250 : vec3<f32> = txVec20;
        let x_2252 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2250.xy, x_2250.z);
        u_xlat84 = x_2252;
        let x_2254 : f32 = u_xlat18.w;
        let x_2255 : f32 = u_xlat84;
        let x_2258 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2254 * x_2255) + x_2258);
        let x_2262 : vec4<f32> = u_xlat16;
        let x_2263 : vec2<f32> = vec2<f32>(x_2262.x, x_2262.y);
        let x_2265 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_2263.x, x_2263.y, x_2265);
        let x_2272 : vec3<f32> = txVec21;
        let x_2274 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2272.xy, x_2272.z);
        u_xlat84 = x_2274;
        let x_2276 : f32 = u_xlat19.x;
        let x_2277 : f32 = u_xlat84;
        let x_2280 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2276 * x_2277) + x_2280);
        let x_2284 : vec4<f32> = u_xlat16;
        let x_2285 : vec2<f32> = vec2<f32>(x_2284.z, x_2284.w);
        let x_2287 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_2285.x, x_2285.y, x_2287);
        let x_2294 : vec3<f32> = txVec22;
        let x_2296 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2294.xy, x_2294.z);
        u_xlat84 = x_2296;
        let x_2298 : f32 = u_xlat19.y;
        let x_2299 : f32 = u_xlat84;
        let x_2302 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2298 * x_2299) + x_2302);
        let x_2306 : vec2<f32> = u_xlat34;
        let x_2308 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_2306.x, x_2306.y, x_2308);
        let x_2315 : vec3<f32> = txVec23;
        let x_2317 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2315.xy, x_2315.z);
        u_xlat84 = x_2317;
        let x_2319 : f32 = u_xlat19.z;
        let x_2320 : f32 = u_xlat84;
        let x_2323 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2319 * x_2320) + x_2323);
        let x_2327 : vec2<f32> = u_xlat66;
        let x_2329 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_2327.x, x_2327.y, x_2329);
        let x_2336 : vec3<f32> = txVec24;
        let x_2338 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2336.xy, x_2336.z);
        u_xlat84 = x_2338;
        let x_2340 : f32 = u_xlat19.w;
        let x_2341 : f32 = u_xlat84;
        let x_2344 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2340 * x_2341) + x_2344);
        let x_2348 : vec4<f32> = u_xlat11;
        let x_2349 : vec2<f32> = vec2<f32>(x_2348.x, x_2348.y);
        let x_2351 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_2349.x, x_2349.y, x_2351);
        let x_2358 : vec3<f32> = txVec25;
        let x_2360 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2358.xy, x_2358.z);
        u_xlat84 = x_2360;
        let x_2362 : f32 = u_xlat7.x;
        let x_2363 : f32 = u_xlat84;
        let x_2366 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2362 * x_2363) + x_2366);
        let x_2370 : vec4<f32> = u_xlat11;
        let x_2371 : vec2<f32> = vec2<f32>(x_2370.z, x_2370.w);
        let x_2373 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_2371.x, x_2371.y, x_2373);
        let x_2380 : vec3<f32> = txVec26;
        let x_2382 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2380.xy, x_2380.z);
        u_xlat84 = x_2382;
        let x_2384 : f32 = u_xlat7.y;
        let x_2385 : f32 = u_xlat84;
        let x_2388 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2384 * x_2385) + x_2388);
        let x_2392 : vec2<f32> = u_xlat61;
        let x_2394 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_2392.x, x_2392.y, x_2394);
        let x_2401 : vec3<f32> = txVec27;
        let x_2403 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2401.xy, x_2401.z);
        u_xlat84 = x_2403;
        let x_2405 : f32 = u_xlat7.z;
        let x_2406 : f32 = u_xlat84;
        let x_2409 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2405 * x_2406) + x_2409);
        let x_2413 : vec4<f32> = u_xlat6;
        let x_2414 : vec2<f32> = vec2<f32>(x_2413.x, x_2413.y);
        let x_2416 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_2414.x, x_2414.y, x_2416);
        let x_2423 : vec3<f32> = txVec28;
        let x_2425 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2423.xy, x_2423.z);
        u_xlat6.x = x_2425;
        let x_2428 : f32 = u_xlat7.w;
        let x_2430 : f32 = u_xlat6.x;
        let x_2433 : f32 = u_xlat58.x;
        u_xlat83 = ((x_2428 * x_2430) + x_2433);
      }
    }
  } else {
    let x_2437 : vec4<f32> = u_xlat2;
    let x_2438 : vec2<f32> = vec2<f32>(x_2437.x, x_2437.y);
    let x_2440 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_2438.x, x_2438.y, x_2440);
    let x_2447 : vec3<f32> = txVec29;
    let x_2449 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2447.xy, x_2447.z);
    u_xlat83 = x_2449;
  }
  let x_2451 : f32 = x_845.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_2451) + 1.0f);
  let x_2455 : f32 = u_xlat83;
  let x_2457 : f32 = x_845.x_MainLightShadowParams.x;
  let x_2460 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2455 * x_2457) + x_2460);
  let x_2465 : f32 = u_xlat2.z;
  u_xlatb28 = (0.0f >= x_2465);
  let x_2469 : f32 = u_xlat2.z;
  u_xlatb54 = (x_2469 >= 1.0f);
  let x_2471 : bool = u_xlatb54;
  let x_2472 : bool = u_xlatb28;
  u_xlatb28 = (x_2471 | x_2472);
  let x_2474 : bool = u_xlatb28;
  if (x_2474) {
    x_2476 = 1.0f;
  } else {
    let x_2481 : f32 = u_xlat2.x;
    x_2476 = x_2481;
  }
  let x_2482 : f32 = x_2476;
  u_xlat2.x = x_2482;
  let x_2484 : vec3<f32> = vs_TEXCOORD7;
  let x_2487 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  let x_2489 : vec3<f32> = (x_2484 + -(x_2487));
  let x_2490 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2489.x, x_2489.y, x_2489.z, x_2490.w);
  let x_2492 : vec4<f32> = u_xlat6;
  let x_2494 : vec4<f32> = u_xlat6;
  u_xlat28.x = dot(vec3<f32>(x_2492.x, x_2492.y, x_2492.z), vec3<f32>(x_2494.x, x_2494.y, x_2494.z));
  let x_2500 : f32 = u_xlat28.x;
  let x_2502 : f32 = x_845.x_MainLightShadowParams.z;
  let x_2505 : f32 = x_845.x_MainLightShadowParams.w;
  u_xlat54 = ((x_2500 * x_2502) + x_2505);
  let x_2507 : f32 = u_xlat54;
  u_xlat54 = clamp(x_2507, 0.0f, 1.0f);
  let x_2510 : f32 = u_xlat2.x;
  u_xlat83 = (-(x_2510) + 1.0f);
  let x_2513 : f32 = u_xlat54;
  let x_2514 : f32 = u_xlat83;
  let x_2517 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2513 * x_2514) + x_2517);
  let x_2527 : f32 = x_2525.x_MainLightCookieTextureFormat;
  u_xlatb54 = !((x_2527 == -1.0f));
  let x_2529 : bool = u_xlatb54;
  if (x_2529) {
    let x_2532 : vec3<f32> = vs_TEXCOORD7;
    let x_2535 : vec4<f32> = x_2525.x_MainLightWorldToLight[1i];
    let x_2537 : vec2<f32> = (vec2<f32>(x_2532.y, x_2532.y) * vec2<f32>(x_2535.x, x_2535.y));
    let x_2538 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2537.x, x_2537.y, x_2538.z, x_2538.w);
    let x_2541 : vec4<f32> = x_2525.x_MainLightWorldToLight[0i];
    let x_2543 : vec3<f32> = vs_TEXCOORD7;
    let x_2546 : vec4<f32> = u_xlat6;
    let x_2548 : vec2<f32> = ((vec2<f32>(x_2541.x, x_2541.y) * vec2<f32>(x_2543.x, x_2543.x)) + vec2<f32>(x_2546.x, x_2546.y));
    let x_2549 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2548.x, x_2548.y, x_2549.z, x_2549.w);
    let x_2552 : vec4<f32> = x_2525.x_MainLightWorldToLight[2i];
    let x_2554 : vec3<f32> = vs_TEXCOORD7;
    let x_2557 : vec4<f32> = u_xlat6;
    let x_2559 : vec2<f32> = ((vec2<f32>(x_2552.x, x_2552.y) * vec2<f32>(x_2554.z, x_2554.z)) + vec2<f32>(x_2557.x, x_2557.y));
    let x_2560 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2559.x, x_2559.y, x_2560.z, x_2560.w);
    let x_2562 : vec4<f32> = u_xlat6;
    let x_2565 : vec4<f32> = x_2525.x_MainLightWorldToLight[3i];
    let x_2567 : vec2<f32> = (vec2<f32>(x_2562.x, x_2562.y) + vec2<f32>(x_2565.x, x_2565.y));
    let x_2568 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2567.x, x_2567.y, x_2568.z, x_2568.w);
    let x_2570 : vec4<f32> = u_xlat6;
    let x_2573 : vec2<f32> = ((vec2<f32>(x_2570.x, x_2570.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2574 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2573.x, x_2573.y, x_2574.z, x_2574.w);
    let x_2581 : vec4<f32> = u_xlat6;
    let x_2584 : f32 = x_113.x_GlobalMipBias.x;
    let x_2585 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2581.x, x_2581.y), x_2584);
    u_xlat6 = x_2585;
    let x_2590 : f32 = x_2525.x_MainLightCookieTextureFormat;
    let x_2592 : f32 = x_2525.x_MainLightCookieTextureFormat;
    let x_2594 : f32 = x_2525.x_MainLightCookieTextureFormat;
    let x_2596 : f32 = x_2525.x_MainLightCookieTextureFormat;
    let x_2597 : vec4<f32> = vec4<f32>(x_2590, x_2592, x_2594, x_2596);
    let x_2604 : vec4<bool> = (vec4<f32>(x_2597.x, x_2597.y, x_2597.z, x_2597.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2604.x, x_2604.y);
    let x_2607 : bool = u_xlatb7.y;
    if (x_2607) {
      let x_2612 : f32 = u_xlat6.w;
      x_2608 = x_2612;
    } else {
      let x_2615 : f32 = u_xlat6.x;
      x_2608 = x_2615;
    }
    let x_2616 : f32 = x_2608;
    u_xlat54 = x_2616;
    let x_2618 : bool = u_xlatb7.x;
    if (x_2618) {
      let x_2622 : vec4<f32> = u_xlat6;
      x_2619 = vec3<f32>(x_2622.x, x_2622.y, x_2622.z);
    } else {
      let x_2625 : f32 = u_xlat54;
      x_2619 = vec3<f32>(x_2625, x_2625, x_2625);
    }
    let x_2627 : vec3<f32> = x_2619;
    let x_2628 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2627.x, x_2627.y, x_2627.z, x_2628.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2634 : vec4<f32> = u_xlat6;
  let x_2637 : vec4<f32> = x_113.x_MainLightColor;
  let x_2639 : vec3<f32> = (vec3<f32>(x_2634.x, x_2634.y, x_2634.z) * vec3<f32>(x_2637.x, x_2637.y, x_2637.z));
  let x_2640 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2639.x, x_2639.y, x_2639.z, x_2640.w);
  let x_2643 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_2643;
  let x_2646 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_2646;
  let x_2649 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_2649;
  let x_2651 : vec4<f32> = u_xlat7;
  let x_2654 : vec4<f32> = u_xlat1;
  u_xlat54 = dot(-(vec3<f32>(x_2651.x, x_2651.y, x_2651.z)), vec3<f32>(x_2654.x, x_2654.y, x_2654.z));
  let x_2657 : f32 = u_xlat54;
  let x_2658 : f32 = u_xlat54;
  u_xlat54 = (x_2657 + x_2658);
  let x_2660 : vec4<f32> = u_xlat1;
  let x_2662 : f32 = u_xlat54;
  let x_2666 : vec4<f32> = u_xlat7;
  let x_2669 : vec3<f32> = ((vec3<f32>(x_2660.x, x_2660.y, x_2660.z) * -(vec3<f32>(x_2662, x_2662, x_2662))) + -(vec3<f32>(x_2666.x, x_2666.y, x_2666.z)));
  let x_2670 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2669.x, x_2669.y, x_2669.z, x_2670.w);
  let x_2672 : vec4<f32> = u_xlat1;
  let x_2674 : vec4<f32> = u_xlat7;
  u_xlat54 = dot(vec3<f32>(x_2672.x, x_2672.y, x_2672.z), vec3<f32>(x_2674.x, x_2674.y, x_2674.z));
  let x_2677 : f32 = u_xlat54;
  u_xlat54 = clamp(x_2677, 0.0f, 1.0f);
  let x_2679 : f32 = u_xlat54;
  u_xlat54 = (-(x_2679) + 1.0f);
  let x_2682 : f32 = u_xlat54;
  let x_2683 : f32 = u_xlat54;
  u_xlat54 = (x_2682 * x_2683);
  let x_2685 : f32 = u_xlat54;
  let x_2686 : f32 = u_xlat54;
  u_xlat54 = (x_2685 * x_2686);
  let x_2689 : f32 = u_xlat0.x;
  u_xlat83 = ((-(x_2689) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2696 : f32 = u_xlat0.x;
  let x_2697 : f32 = u_xlat83;
  u_xlat0.x = (x_2696 * x_2697);
  let x_2701 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2701 * 6.0f);
  let x_2713 : vec4<f32> = u_xlat8;
  let x_2716 : f32 = u_xlat0.x;
  let x_2717 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2713.x, x_2713.y, x_2713.z), x_2716);
  u_xlat8 = x_2717;
  let x_2719 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2719 + -1.0f);
  let x_2723 : f32 = x_1062.unity_SpecCube0_HDR.w;
  let x_2725 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2723 * x_2725) + 1.0f);
  let x_2730 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2730, 0.0f);
  let x_2734 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2734);
  let x_2738 : f32 = u_xlat0.x;
  let x_2740 : f32 = x_1062.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2738 * x_2740);
  let x_2744 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2744);
  let x_2748 : f32 = u_xlat0.x;
  let x_2750 : f32 = x_1062.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2748 * x_2750);
  let x_2753 : vec4<f32> = u_xlat8;
  let x_2755 : vec3<f32> = u_xlat0;
  let x_2757 : vec3<f32> = (vec3<f32>(x_2753.x, x_2753.y, x_2753.z) * vec3<f32>(x_2755.x, x_2755.x, x_2755.x));
  let x_2758 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2757.x, x_2757.y, x_2757.z, x_2758.w);
  let x_2760 : f32 = u_xlat79;
  let x_2762 : f32 = u_xlat79;
  let x_2766 : vec2<f32> = ((vec2<f32>(x_2760, x_2760) * vec2<f32>(x_2762, x_2762)) + vec2<f32>(-1.0f, 1.0f));
  let x_2767 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2766.x, x_2766.y, x_2767.z, x_2767.w);
  let x_2770 : f32 = u_xlat9.y;
  u_xlat0.x = (1.0f / x_2770);
  let x_2774 : vec4<f32> = u_xlat5;
  let x_2777 : f32 = u_xlat52;
  u_xlat35 = (-(vec3<f32>(x_2774.x, x_2774.y, x_2774.z)) + vec3<f32>(x_2777, x_2777, x_2777));
  let x_2780 : f32 = u_xlat54;
  let x_2782 : vec3<f32> = u_xlat35;
  let x_2784 : vec4<f32> = u_xlat5;
  u_xlat35 = ((vec3<f32>(x_2780, x_2780, x_2780) * x_2782) + vec3<f32>(x_2784.x, x_2784.y, x_2784.z));
  let x_2787 : vec3<f32> = u_xlat0;
  let x_2789 : vec3<f32> = u_xlat35;
  u_xlat35 = (vec3<f32>(x_2787.x, x_2787.x, x_2787.x) * x_2789);
  let x_2791 : vec4<f32> = u_xlat8;
  let x_2793 : vec3<f32> = u_xlat35;
  let x_2794 : vec3<f32> = (vec3<f32>(x_2791.x, x_2791.y, x_2791.z) * x_2793);
  let x_2795 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2794.x, x_2794.y, x_2794.z, x_2795.w);
  let x_2797 : vec4<f32> = u_xlat3;
  let x_2799 : vec4<f32> = u_xlat4;
  let x_2802 : vec4<f32> = u_xlat8;
  let x_2804 : vec3<f32> = ((vec3<f32>(x_2797.x, x_2797.y, x_2797.z) * vec3<f32>(x_2799.x, x_2799.y, x_2799.z)) + vec3<f32>(x_2802.x, x_2802.y, x_2802.z));
  let x_2805 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2804.x, x_2804.y, x_2804.z, x_2805.w);
  let x_2808 : f32 = u_xlat2.x;
  let x_2810 : f32 = x_1062.unity_LightData.z;
  u_xlat0.x = (x_2808 * x_2810);
  let x_2813 : vec4<f32> = u_xlat1;
  let x_2816 : vec4<f32> = x_113.x_MainLightPosition;
  u_xlat52 = dot(vec3<f32>(x_2813.x, x_2813.y, x_2813.z), vec3<f32>(x_2816.x, x_2816.y, x_2816.z));
  let x_2819 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2819, 0.0f, 1.0f);
  let x_2821 : f32 = u_xlat52;
  let x_2823 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2821 * x_2823);
  let x_2826 : vec3<f32> = u_xlat0;
  let x_2828 : vec4<f32> = u_xlat6;
  let x_2830 : vec3<f32> = (vec3<f32>(x_2826.x, x_2826.x, x_2826.x) * vec3<f32>(x_2828.x, x_2828.y, x_2828.z));
  let x_2831 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2830.x, x_2830.y, x_2830.z, x_2831.w);
  let x_2833 : vec4<f32> = u_xlat7;
  let x_2836 : vec4<f32> = x_113.x_MainLightPosition;
  let x_2838 : vec3<f32> = (vec3<f32>(x_2833.x, x_2833.y, x_2833.z) + vec3<f32>(x_2836.x, x_2836.y, x_2836.z));
  let x_2839 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2838.x, x_2838.y, x_2838.z, x_2839.w);
  let x_2841 : vec4<f32> = u_xlat8;
  let x_2843 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_2841.x, x_2841.y, x_2841.z), vec3<f32>(x_2843.x, x_2843.y, x_2843.z));
  let x_2848 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2848, 1.17549435e-38f);
  let x_2853 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2853);
  let x_2856 : vec3<f32> = u_xlat0;
  let x_2858 : vec4<f32> = u_xlat8;
  let x_2860 : vec3<f32> = (vec3<f32>(x_2856.x, x_2856.x, x_2856.x) * vec3<f32>(x_2858.x, x_2858.y, x_2858.z));
  let x_2861 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2860.x, x_2860.y, x_2860.z, x_2861.w);
  let x_2863 : vec4<f32> = u_xlat1;
  let x_2865 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_2863.x, x_2863.y, x_2863.z), vec3<f32>(x_2865.x, x_2865.y, x_2865.z));
  let x_2870 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2870, 0.0f, 1.0f);
  let x_2874 : vec4<f32> = x_113.x_MainLightPosition;
  let x_2876 : vec4<f32> = u_xlat8;
  u_xlat0.z = dot(vec3<f32>(x_2874.x, x_2874.y, x_2874.z), vec3<f32>(x_2876.x, x_2876.y, x_2876.z));
  let x_2881 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_2881, 0.0f, 1.0f);
  let x_2884 : vec3<f32> = u_xlat0;
  let x_2886 : vec3<f32> = u_xlat0;
  let x_2888 : vec2<f32> = (vec2<f32>(x_2884.x, x_2884.z) * vec2<f32>(x_2886.x, x_2886.z));
  let x_2889 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2888.x, x_2889.y, x_2888.y);
  let x_2892 : f32 = u_xlat0.x;
  let x_2894 : f32 = u_xlat9.x;
  u_xlat0.x = ((x_2892 * x_2894) + 1.00001001358032226562f);
  let x_2900 : f32 = u_xlat0.x;
  let x_2902 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2900 * x_2902);
  let x_2906 : f32 = u_xlat0.z;
  u_xlat52 = max(x_2906, 0.10000000149011611938f);
  let x_2909 : f32 = u_xlat52;
  let x_2911 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2909 * x_2911);
  let x_2914 : f32 = u_xlat81;
  let x_2916 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2914 * x_2916);
  let x_2919 : f32 = u_xlat82;
  let x_2921 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2919 / x_2921);
  let x_2924 : vec4<f32> = u_xlat5;
  let x_2926 : vec3<f32> = u_xlat0;
  let x_2929 : vec4<f32> = u_xlat4;
  let x_2931 : vec3<f32> = ((vec3<f32>(x_2924.x, x_2924.y, x_2924.z) * vec3<f32>(x_2926.x, x_2926.x, x_2926.x)) + vec3<f32>(x_2929.x, x_2929.y, x_2929.z));
  let x_2932 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2931.x, x_2931.y, x_2931.z, x_2932.w);
  let x_2934 : vec4<f32> = u_xlat6;
  let x_2936 : vec4<f32> = u_xlat8;
  let x_2938 : vec3<f32> = (vec3<f32>(x_2934.x, x_2934.y, x_2934.z) * vec3<f32>(x_2936.x, x_2936.y, x_2936.z));
  let x_2939 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2938.x, x_2938.y, x_2938.z, x_2939.w);
  let x_2942 : f32 = x_113.x_AdditionalLightsCount.x;
  let x_2944 : f32 = x_1062.unity_LightData.y;
  u_xlat0.x = min(x_2942, x_2944);
  let x_2949 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2949));
  let x_2953 : f32 = u_xlat28.x;
  let x_2955 : f32 = x_845.x_AdditionalShadowFadeParams.x;
  let x_2958 : f32 = x_845.x_AdditionalShadowFadeParams.y;
  u_xlat52 = ((x_2953 * x_2955) + x_2958);
  let x_2960 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2960, 0.0f, 1.0f);
  let x_2963 : f32 = x_2525.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2965 : f32 = x_2525.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2967 : f32 = x_2525.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2969 : f32 = x_2525.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2970 : vec4<f32> = vec4<f32>(x_2963, x_2965, x_2967, x_2969);
  let x_2976 : vec4<bool> = (vec4<f32>(x_2970.x, x_2970.y, x_2970.z, x_2970.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_2977 : vec2<bool> = vec2<bool>(x_2976.x, x_2976.y);
  let x_2978 : vec4<bool> = u_xlatb2;
  u_xlatb2 = vec4<bool>(x_2977.x, x_2977.y, x_2978.z, x_2978.w);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2990 : u32 = u_xlatu_loop_1;
    let x_2991 : u32 = u_xlatu0;
    if ((x_2990 < x_2991)) {
    } else {
      break;
    }
    let x_2994 : u32 = u_xlatu_loop_1;
    u_xlatu54 = (x_2994 >> 2u);
    let x_2997 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_2997 & 3u));
    let x_3000 : u32 = u_xlatu54;
    let x_3003 : vec4<f32> = x_1062.unity_LightIndices[bitcast<i32>(x_3000)];
    let x_3013 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3018 : vec4<u32> = indexable[x_3013];
    u_xlat54 = dot(x_3003, bitcast<vec4<f32>>(x_3018));
    let x_3022 : f32 = u_xlat54;
    u_xlati54 = i32(x_3022);
    let x_3024 : vec3<f32> = vs_TEXCOORD7;
    let x_3035 : i32 = u_xlati54;
    let x_3037 : vec4<f32> = x_3034.x_AdditionalLightsPosition[x_3035];
    let x_3040 : i32 = u_xlati54;
    let x_3042 : vec4<f32> = x_3034.x_AdditionalLightsPosition[x_3040];
    u_xlat35 = ((-(x_3024) * vec3<f32>(x_3037.w, x_3037.w, x_3037.w)) + vec3<f32>(x_3042.x, x_3042.y, x_3042.z));
    let x_3045 : vec3<f32> = u_xlat35;
    let x_3046 : vec3<f32> = u_xlat35;
    u_xlat83 = dot(x_3045, x_3046);
    let x_3048 : f32 = u_xlat83;
    u_xlat83 = max(x_3048, 0.00006103515625f);
    let x_3050 : f32 = u_xlat83;
    u_xlat84 = inverseSqrt(x_3050);
    let x_3052 : f32 = u_xlat84;
    let x_3054 : vec3<f32> = u_xlat35;
    let x_3055 : vec3<f32> = (vec3<f32>(x_3052, x_3052, x_3052) * x_3054);
    let x_3056 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3055.x, x_3055.y, x_3055.z, x_3056.w);
    let x_3059 : f32 = u_xlat83;
    u_xlat85 = (1.0f / x_3059);
    let x_3061 : f32 = u_xlat83;
    let x_3062 : i32 = u_xlati54;
    let x_3064 : f32 = x_3034.x_AdditionalLightsAttenuation[x_3062].x;
    u_xlat83 = (x_3061 * x_3064);
    let x_3066 : f32 = u_xlat83;
    let x_3068 : f32 = u_xlat83;
    u_xlat83 = ((-(x_3066) * x_3068) + 1.0f);
    let x_3071 : f32 = u_xlat83;
    u_xlat83 = max(x_3071, 0.0f);
    let x_3073 : f32 = u_xlat83;
    let x_3074 : f32 = u_xlat83;
    u_xlat83 = (x_3073 * x_3074);
    let x_3076 : f32 = u_xlat83;
    let x_3077 : f32 = u_xlat85;
    u_xlat83 = (x_3076 * x_3077);
    let x_3079 : i32 = u_xlati54;
    let x_3081 : vec4<f32> = x_3034.x_AdditionalLightsSpotDir[x_3079];
    let x_3083 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_3081.x, x_3081.y, x_3081.z), vec3<f32>(x_3083.x, x_3083.y, x_3083.z));
    let x_3086 : f32 = u_xlat85;
    let x_3087 : i32 = u_xlati54;
    let x_3089 : f32 = x_3034.x_AdditionalLightsAttenuation[x_3087].z;
    let x_3091 : i32 = u_xlati54;
    let x_3093 : f32 = x_3034.x_AdditionalLightsAttenuation[x_3091].w;
    u_xlat85 = ((x_3086 * x_3089) + x_3093);
    let x_3095 : f32 = u_xlat85;
    u_xlat85 = clamp(x_3095, 0.0f, 1.0f);
    let x_3097 : f32 = u_xlat85;
    let x_3098 : f32 = u_xlat85;
    u_xlat85 = (x_3097 * x_3098);
    let x_3100 : f32 = u_xlat83;
    let x_3101 : f32 = u_xlat85;
    u_xlat83 = (x_3100 * x_3101);
    let x_3104 : i32 = u_xlati54;
    let x_3106 : f32 = x_845.x_AdditionalShadowParams[x_3104].w;
    u_xlati85 = i32(x_3106);
    let x_3109 : i32 = u_xlati85;
    u_xlatb86 = (x_3109 >= 0i);
    let x_3111 : bool = u_xlatb86;
    if (x_3111) {
      let x_3115 : i32 = u_xlati54;
      let x_3117 : f32 = x_845.x_AdditionalShadowParams[x_3115].z;
      u_xlatb86 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3117, x_3117, x_3117, x_3117))));
      let x_3121 : bool = u_xlatb86;
      if (x_3121) {
        let x_3125 : vec4<f32> = u_xlat10;
        let x_3128 : vec4<f32> = u_xlat10;
        let x_3131 : vec4<bool> = (abs(vec4<f32>(x_3125.z, x_3125.z, x_3125.y, x_3125.z)) >= abs(vec4<f32>(x_3128.x, x_3128.y, x_3128.x, x_3128.x)));
        let x_3133 : vec3<bool> = vec3<bool>(x_3131.x, x_3131.y, x_3131.z);
        let x_3134 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3133.x, x_3133.y, x_3133.z, x_3134.w);
        let x_3137 : bool = u_xlatb11.y;
        let x_3139 : bool = u_xlatb11.x;
        u_xlatb86 = (x_3137 & x_3139);
        let x_3141 : vec4<f32> = u_xlat10;
        let x_3144 : vec4<bool> = (-(vec4<f32>(x_3141.z, x_3141.y, x_3141.z, x_3141.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3145 : vec3<bool> = vec3<bool>(x_3144.x, x_3144.y, x_3144.w);
        let x_3146 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3145.x, x_3145.y, x_3146.z, x_3145.z);
        let x_3149 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3149);
        let x_3154 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3154);
        let x_3159 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_3159);
        let x_3162 : bool = u_xlatb11.z;
        if (x_3162) {
          let x_3167 : f32 = u_xlat11.y;
          x_3163 = x_3167;
        } else {
          let x_3169 : f32 = u_xlat88;
          x_3163 = x_3169;
        }
        let x_3170 : f32 = x_3163;
        u_xlat88 = x_3170;
        let x_3171 : bool = u_xlatb86;
        if (x_3171) {
          let x_3176 : f32 = u_xlat11.x;
          x_3172 = x_3176;
        } else {
          let x_3178 : f32 = u_xlat88;
          x_3172 = x_3178;
        }
        let x_3179 : f32 = x_3172;
        u_xlat86 = x_3179;
        let x_3180 : i32 = u_xlati54;
        let x_3182 : f32 = x_845.x_AdditionalShadowParams[x_3180].w;
        u_xlat88 = trunc(x_3182);
        let x_3184 : f32 = u_xlat86;
        let x_3185 : f32 = u_xlat88;
        u_xlat86 = (x_3184 + x_3185);
        let x_3187 : f32 = u_xlat86;
        u_xlati85 = i32(x_3187);
      }
      let x_3189 : i32 = u_xlati85;
      u_xlati85 = (x_3189 << bitcast<u32>(2i));
      let x_3191 : vec3<f32> = vs_TEXCOORD7;
      let x_3193 : i32 = u_xlati85;
      let x_3196 : i32 = u_xlati85;
      let x_3200 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[((x_3193 + 1i) / 4i)][((x_3196 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3191.y, x_3191.y, x_3191.y, x_3191.y) * x_3200);
      let x_3202 : i32 = u_xlati85;
      let x_3204 : i32 = u_xlati85;
      let x_3207 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[(x_3202 / 4i)][(x_3204 % 4i)];
      let x_3208 : vec3<f32> = vs_TEXCOORD7;
      let x_3211 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3207 * vec4<f32>(x_3208.x, x_3208.x, x_3208.x, x_3208.x)) + x_3211);
      let x_3213 : i32 = u_xlati85;
      let x_3216 : i32 = u_xlati85;
      let x_3220 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[((x_3213 + 2i) / 4i)][((x_3216 + 2i) % 4i)];
      let x_3221 : vec3<f32> = vs_TEXCOORD7;
      let x_3224 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3220 * vec4<f32>(x_3221.z, x_3221.z, x_3221.z, x_3221.z)) + x_3224);
      let x_3226 : vec4<f32> = u_xlat11;
      let x_3227 : i32 = u_xlati85;
      let x_3230 : i32 = u_xlati85;
      let x_3234 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[((x_3227 + 3i) / 4i)][((x_3230 + 3i) % 4i)];
      u_xlat11 = (x_3226 + x_3234);
      let x_3236 : vec4<f32> = u_xlat11;
      let x_3238 : vec4<f32> = u_xlat11;
      let x_3240 : vec3<f32> = (vec3<f32>(x_3236.x, x_3236.y, x_3236.z) / vec3<f32>(x_3238.w, x_3238.w, x_3238.w));
      let x_3241 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3240.x, x_3240.y, x_3240.z, x_3241.w);
      let x_3244 : i32 = u_xlati54;
      let x_3246 : f32 = x_845.x_AdditionalShadowParams[x_3244].y;
      u_xlatb85 = (0.0f < x_3246);
      let x_3248 : bool = u_xlatb85;
      if (x_3248) {
        let x_3251 : i32 = u_xlati54;
        let x_3253 : f32 = x_845.x_AdditionalShadowParams[x_3251].y;
        u_xlatb85 = (1.0f == x_3253);
        let x_3255 : bool = u_xlatb85;
        if (x_3255) {
          let x_3258 : vec4<f32> = u_xlat11;
          let x_3261 : vec4<f32> = x_845.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3258.x, x_3258.y, x_3258.x, x_3258.y) + x_3261);
          let x_3264 : vec4<f32> = u_xlat12;
          let x_3265 : vec2<f32> = vec2<f32>(x_3264.x, x_3264.y);
          let x_3267 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_3265.x, x_3265.y, x_3267);
          let x_3275 : vec3<f32> = txVec30;
          let x_3277 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3275.xy, x_3275.z);
          u_xlat13.x = x_3277;
          let x_3280 : vec4<f32> = u_xlat12;
          let x_3281 : vec2<f32> = vec2<f32>(x_3280.z, x_3280.w);
          let x_3283 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_3281.x, x_3281.y, x_3283);
          let x_3290 : vec3<f32> = txVec31;
          let x_3292 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3290.xy, x_3290.z);
          u_xlat13.y = x_3292;
          let x_3294 : vec4<f32> = u_xlat11;
          let x_3297 : vec4<f32> = x_845.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3294.x, x_3294.y, x_3294.x, x_3294.y) + x_3297);
          let x_3300 : vec4<f32> = u_xlat12;
          let x_3301 : vec2<f32> = vec2<f32>(x_3300.x, x_3300.y);
          let x_3303 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_3301.x, x_3301.y, x_3303);
          let x_3310 : vec3<f32> = txVec32;
          let x_3312 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3310.xy, x_3310.z);
          u_xlat13.z = x_3312;
          let x_3315 : vec4<f32> = u_xlat12;
          let x_3316 : vec2<f32> = vec2<f32>(x_3315.z, x_3315.w);
          let x_3318 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_3316.x, x_3316.y, x_3318);
          let x_3325 : vec3<f32> = txVec33;
          let x_3327 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3325.xy, x_3325.z);
          u_xlat13.w = x_3327;
          let x_3329 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_3329, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3332 : i32 = u_xlati54;
          let x_3334 : f32 = x_845.x_AdditionalShadowParams[x_3332].y;
          u_xlatb86 = (2.0f == x_3334);
          let x_3336 : bool = u_xlatb86;
          if (x_3336) {
            let x_3339 : vec4<f32> = u_xlat11;
            let x_3342 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3345 : vec2<f32> = ((vec2<f32>(x_3339.x, x_3339.y) * vec2<f32>(x_3342.z, x_3342.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3346 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3345.x, x_3345.y, x_3346.z, x_3346.w);
            let x_3348 : vec4<f32> = u_xlat12;
            let x_3350 : vec2<f32> = floor(vec2<f32>(x_3348.x, x_3348.y));
            let x_3351 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3350.x, x_3350.y, x_3351.z, x_3351.w);
            let x_3354 : vec4<f32> = u_xlat11;
            let x_3357 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3360 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3354.x, x_3354.y) * vec2<f32>(x_3357.z, x_3357.w)) + -(vec2<f32>(x_3360.x, x_3360.y)));
            let x_3364 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3364.x, x_3364.x, x_3364.y, x_3364.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3367 : vec4<f32> = u_xlat13;
            let x_3369 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3367.x, x_3367.x, x_3367.z, x_3367.z) * vec4<f32>(x_3369.x, x_3369.x, x_3369.z, x_3369.z));
            let x_3372 : vec4<f32> = u_xlat14;
            let x_3374 : vec2<f32> = (vec2<f32>(x_3372.y, x_3372.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3375 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3374.x, x_3375.y, x_3374.y, x_3375.w);
            let x_3377 : vec4<f32> = u_xlat14;
            let x_3380 : vec2<f32> = u_xlat64;
            let x_3382 : vec2<f32> = ((vec2<f32>(x_3377.x, x_3377.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3380));
            let x_3383 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3382.x, x_3382.y, x_3383.z, x_3383.w);
            let x_3385 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3385) + vec2<f32>(1.0f, 1.0f));
            let x_3388 : vec2<f32> = u_xlat64;
            let x_3389 : vec2<f32> = min(x_3388, vec2<f32>(0.0f, 0.0f));
            let x_3390 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3389.x, x_3389.y, x_3390.z, x_3390.w);
            let x_3392 : vec4<f32> = u_xlat15;
            let x_3395 : vec4<f32> = u_xlat15;
            let x_3398 : vec2<f32> = u_xlat66;
            let x_3399 : vec2<f32> = ((-(vec2<f32>(x_3392.x, x_3392.y)) * vec2<f32>(x_3395.x, x_3395.y)) + x_3398);
            let x_3400 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3399.x, x_3399.y, x_3400.z, x_3400.w);
            let x_3402 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3402, vec2<f32>(0.0f, 0.0f));
            let x_3404 : vec2<f32> = u_xlat64;
            let x_3406 : vec2<f32> = u_xlat64;
            let x_3408 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3404) * x_3406) + vec2<f32>(x_3408.y, x_3408.w));
            let x_3411 : vec4<f32> = u_xlat15;
            let x_3413 : vec2<f32> = (vec2<f32>(x_3411.x, x_3411.y) + vec2<f32>(1.0f, 1.0f));
            let x_3414 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3413.x, x_3413.y, x_3414.z, x_3414.w);
            let x_3416 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3416 + vec2<f32>(1.0f, 1.0f));
            let x_3418 : vec4<f32> = u_xlat14;
            let x_3420 : vec2<f32> = (vec2<f32>(x_3418.x, x_3418.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3421 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3420.x, x_3420.y, x_3421.z, x_3421.w);
            let x_3423 : vec2<f32> = u_xlat66;
            let x_3424 : vec2<f32> = (x_3423 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3425 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3424.x, x_3424.y, x_3425.z, x_3425.w);
            let x_3427 : vec4<f32> = u_xlat15;
            let x_3429 : vec2<f32> = (vec2<f32>(x_3427.x, x_3427.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3430 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3429.x, x_3429.y, x_3430.z, x_3430.w);
            let x_3432 : vec2<f32> = u_xlat64;
            let x_3433 : vec2<f32> = (x_3432 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3434 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3433.x, x_3433.y, x_3434.z, x_3434.w);
            let x_3436 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3436.y, x_3436.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3440 : f32 = u_xlat15.x;
            u_xlat16.z = x_3440;
            let x_3443 : f32 = u_xlat64.x;
            u_xlat16.w = x_3443;
            let x_3446 : f32 = u_xlat17.x;
            u_xlat14.z = x_3446;
            let x_3449 : f32 = u_xlat13.x;
            u_xlat14.w = x_3449;
            let x_3451 : vec4<f32> = u_xlat14;
            let x_3453 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3451.z, x_3451.w, x_3451.x, x_3451.z) + vec4<f32>(x_3453.z, x_3453.w, x_3453.x, x_3453.z));
            let x_3457 : f32 = u_xlat16.y;
            u_xlat15.z = x_3457;
            let x_3460 : f32 = u_xlat64.y;
            u_xlat15.w = x_3460;
            let x_3463 : f32 = u_xlat14.y;
            u_xlat17.z = x_3463;
            let x_3466 : f32 = u_xlat13.z;
            u_xlat17.w = x_3466;
            let x_3468 : vec4<f32> = u_xlat15;
            let x_3470 : vec4<f32> = u_xlat17;
            let x_3472 : vec3<f32> = (vec3<f32>(x_3468.z, x_3468.y, x_3468.w) + vec3<f32>(x_3470.z, x_3470.y, x_3470.w));
            let x_3473 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3472.x, x_3472.y, x_3472.z, x_3473.w);
            let x_3475 : vec4<f32> = u_xlat14;
            let x_3477 : vec4<f32> = u_xlat18;
            let x_3479 : vec3<f32> = (vec3<f32>(x_3475.x, x_3475.z, x_3475.w) / vec3<f32>(x_3477.z, x_3477.w, x_3477.y));
            let x_3480 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3479.x, x_3479.y, x_3479.z, x_3480.w);
            let x_3482 : vec4<f32> = u_xlat14;
            let x_3484 : vec3<f32> = (vec3<f32>(x_3482.x, x_3482.y, x_3482.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3485 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3484.x, x_3484.y, x_3484.z, x_3485.w);
            let x_3487 : vec4<f32> = u_xlat17;
            let x_3489 : vec4<f32> = u_xlat13;
            let x_3491 : vec3<f32> = (vec3<f32>(x_3487.z, x_3487.y, x_3487.w) / vec3<f32>(x_3489.x, x_3489.y, x_3489.z));
            let x_3492 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3491.x, x_3491.y, x_3491.z, x_3492.w);
            let x_3494 : vec4<f32> = u_xlat15;
            let x_3496 : vec3<f32> = (vec3<f32>(x_3494.x, x_3494.y, x_3494.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3497 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3496.x, x_3496.y, x_3496.z, x_3497.w);
            let x_3499 : vec4<f32> = u_xlat14;
            let x_3502 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3504 : vec3<f32> = (vec3<f32>(x_3499.y, x_3499.x, x_3499.z) * vec3<f32>(x_3502.x, x_3502.x, x_3502.x));
            let x_3505 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3504.x, x_3504.y, x_3504.z, x_3505.w);
            let x_3507 : vec4<f32> = u_xlat15;
            let x_3510 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3512 : vec3<f32> = (vec3<f32>(x_3507.x, x_3507.y, x_3507.z) * vec3<f32>(x_3510.y, x_3510.y, x_3510.y));
            let x_3513 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3512.x, x_3512.y, x_3512.z, x_3513.w);
            let x_3516 : f32 = u_xlat15.x;
            u_xlat14.w = x_3516;
            let x_3518 : vec4<f32> = u_xlat12;
            let x_3521 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3524 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3518.x, x_3518.y, x_3518.x, x_3518.y) * vec4<f32>(x_3521.x, x_3521.y, x_3521.x, x_3521.y)) + vec4<f32>(x_3524.y, x_3524.w, x_3524.x, x_3524.w));
            let x_3527 : vec4<f32> = u_xlat12;
            let x_3530 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3533 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3527.x, x_3527.y) * vec2<f32>(x_3530.x, x_3530.y)) + vec2<f32>(x_3533.z, x_3533.w));
            let x_3537 : f32 = u_xlat14.y;
            u_xlat15.w = x_3537;
            let x_3539 : vec4<f32> = u_xlat15;
            let x_3540 : vec2<f32> = vec2<f32>(x_3539.y, x_3539.z);
            let x_3541 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3541.x, x_3540.x, x_3541.z, x_3540.y);
            let x_3543 : vec4<f32> = u_xlat12;
            let x_3546 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3549 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3543.x, x_3543.y, x_3543.x, x_3543.y) * vec4<f32>(x_3546.x, x_3546.y, x_3546.x, x_3546.y)) + vec4<f32>(x_3549.x, x_3549.y, x_3549.z, x_3549.y));
            let x_3552 : vec4<f32> = u_xlat12;
            let x_3555 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3558 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3552.x, x_3552.y, x_3552.x, x_3552.y) * vec4<f32>(x_3555.x, x_3555.y, x_3555.x, x_3555.y)) + vec4<f32>(x_3558.w, x_3558.y, x_3558.w, x_3558.z));
            let x_3561 : vec4<f32> = u_xlat12;
            let x_3564 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3567 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3561.x, x_3561.y, x_3561.x, x_3561.y) * vec4<f32>(x_3564.x, x_3564.y, x_3564.x, x_3564.y)) + vec4<f32>(x_3567.x, x_3567.w, x_3567.z, x_3567.w));
            let x_3570 : vec4<f32> = u_xlat13;
            let x_3572 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3570.x, x_3570.x, x_3570.x, x_3570.y) * vec4<f32>(x_3572.z, x_3572.w, x_3572.y, x_3572.z));
            let x_3576 : vec4<f32> = u_xlat13;
            let x_3578 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3576.y, x_3576.y, x_3576.z, x_3576.z) * x_3578);
            let x_3581 : f32 = u_xlat13.z;
            let x_3583 : f32 = u_xlat18.y;
            u_xlat86 = (x_3581 * x_3583);
            let x_3586 : vec4<f32> = u_xlat16;
            let x_3587 : vec2<f32> = vec2<f32>(x_3586.x, x_3586.y);
            let x_3589 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3587.x, x_3587.y, x_3589);
            let x_3596 : vec3<f32> = txVec34;
            let x_3598 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3596.xy, x_3596.z);
            u_xlat88 = x_3598;
            let x_3600 : vec4<f32> = u_xlat16;
            let x_3601 : vec2<f32> = vec2<f32>(x_3600.z, x_3600.w);
            let x_3603 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3601.x, x_3601.y, x_3603);
            let x_3611 : vec3<f32> = txVec35;
            let x_3613 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3611.xy, x_3611.z);
            u_xlat89 = x_3613;
            let x_3614 : f32 = u_xlat89;
            let x_3616 : f32 = u_xlat19.y;
            u_xlat89 = (x_3614 * x_3616);
            let x_3619 : f32 = u_xlat19.x;
            let x_3620 : f32 = u_xlat88;
            let x_3622 : f32 = u_xlat89;
            u_xlat88 = ((x_3619 * x_3620) + x_3622);
            let x_3625 : vec2<f32> = u_xlat64;
            let x_3627 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3625.x, x_3625.y, x_3627);
            let x_3634 : vec3<f32> = txVec36;
            let x_3636 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3634.xy, x_3634.z);
            u_xlat89 = x_3636;
            let x_3638 : f32 = u_xlat19.z;
            let x_3639 : f32 = u_xlat89;
            let x_3641 : f32 = u_xlat88;
            u_xlat88 = ((x_3638 * x_3639) + x_3641);
            let x_3644 : vec4<f32> = u_xlat15;
            let x_3645 : vec2<f32> = vec2<f32>(x_3644.x, x_3644.y);
            let x_3647 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3645.x, x_3645.y, x_3647);
            let x_3654 : vec3<f32> = txVec37;
            let x_3656 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3654.xy, x_3654.z);
            u_xlat89 = x_3656;
            let x_3658 : f32 = u_xlat19.w;
            let x_3659 : f32 = u_xlat89;
            let x_3661 : f32 = u_xlat88;
            u_xlat88 = ((x_3658 * x_3659) + x_3661);
            let x_3664 : vec4<f32> = u_xlat17;
            let x_3665 : vec2<f32> = vec2<f32>(x_3664.x, x_3664.y);
            let x_3667 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3665.x, x_3665.y, x_3667);
            let x_3674 : vec3<f32> = txVec38;
            let x_3676 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3674.xy, x_3674.z);
            u_xlat89 = x_3676;
            let x_3678 : f32 = u_xlat20.x;
            let x_3679 : f32 = u_xlat89;
            let x_3681 : f32 = u_xlat88;
            u_xlat88 = ((x_3678 * x_3679) + x_3681);
            let x_3684 : vec4<f32> = u_xlat17;
            let x_3685 : vec2<f32> = vec2<f32>(x_3684.z, x_3684.w);
            let x_3687 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3685.x, x_3685.y, x_3687);
            let x_3694 : vec3<f32> = txVec39;
            let x_3696 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3694.xy, x_3694.z);
            u_xlat89 = x_3696;
            let x_3698 : f32 = u_xlat20.y;
            let x_3699 : f32 = u_xlat89;
            let x_3701 : f32 = u_xlat88;
            u_xlat88 = ((x_3698 * x_3699) + x_3701);
            let x_3704 : vec4<f32> = u_xlat15;
            let x_3705 : vec2<f32> = vec2<f32>(x_3704.z, x_3704.w);
            let x_3707 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3705.x, x_3705.y, x_3707);
            let x_3714 : vec3<f32> = txVec40;
            let x_3716 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3714.xy, x_3714.z);
            u_xlat89 = x_3716;
            let x_3718 : f32 = u_xlat20.z;
            let x_3719 : f32 = u_xlat89;
            let x_3721 : f32 = u_xlat88;
            u_xlat88 = ((x_3718 * x_3719) + x_3721);
            let x_3724 : vec4<f32> = u_xlat14;
            let x_3725 : vec2<f32> = vec2<f32>(x_3724.x, x_3724.y);
            let x_3727 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3725.x, x_3725.y, x_3727);
            let x_3734 : vec3<f32> = txVec41;
            let x_3736 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3734.xy, x_3734.z);
            u_xlat89 = x_3736;
            let x_3738 : f32 = u_xlat20.w;
            let x_3739 : f32 = u_xlat89;
            let x_3741 : f32 = u_xlat88;
            u_xlat88 = ((x_3738 * x_3739) + x_3741);
            let x_3744 : vec4<f32> = u_xlat14;
            let x_3745 : vec2<f32> = vec2<f32>(x_3744.z, x_3744.w);
            let x_3747 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3745.x, x_3745.y, x_3747);
            let x_3754 : vec3<f32> = txVec42;
            let x_3756 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3754.xy, x_3754.z);
            u_xlat89 = x_3756;
            let x_3757 : f32 = u_xlat86;
            let x_3758 : f32 = u_xlat89;
            let x_3760 : f32 = u_xlat88;
            u_xlat85 = ((x_3757 * x_3758) + x_3760);
          } else {
            let x_3763 : vec4<f32> = u_xlat11;
            let x_3766 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3769 : vec2<f32> = ((vec2<f32>(x_3763.x, x_3763.y) * vec2<f32>(x_3766.z, x_3766.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3770 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3769.x, x_3769.y, x_3770.z, x_3770.w);
            let x_3772 : vec4<f32> = u_xlat12;
            let x_3774 : vec2<f32> = floor(vec2<f32>(x_3772.x, x_3772.y));
            let x_3775 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3774.x, x_3774.y, x_3775.z, x_3775.w);
            let x_3777 : vec4<f32> = u_xlat11;
            let x_3780 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3783 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3777.x, x_3777.y) * vec2<f32>(x_3780.z, x_3780.w)) + -(vec2<f32>(x_3783.x, x_3783.y)));
            let x_3787 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3787.x, x_3787.x, x_3787.y, x_3787.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3790 : vec4<f32> = u_xlat13;
            let x_3792 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3790.x, x_3790.x, x_3790.z, x_3790.z) * vec4<f32>(x_3792.x, x_3792.x, x_3792.z, x_3792.z));
            let x_3795 : vec4<f32> = u_xlat14;
            let x_3797 : vec2<f32> = (vec2<f32>(x_3795.y, x_3795.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3798 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3798.x, x_3797.x, x_3798.z, x_3797.y);
            let x_3800 : vec4<f32> = u_xlat14;
            let x_3803 : vec2<f32> = u_xlat64;
            let x_3805 : vec2<f32> = ((vec2<f32>(x_3800.x, x_3800.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3803));
            let x_3806 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3805.x, x_3806.y, x_3805.y, x_3806.w);
            let x_3808 : vec2<f32> = u_xlat64;
            let x_3810 : vec2<f32> = (-(x_3808) + vec2<f32>(1.0f, 1.0f));
            let x_3811 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3810.x, x_3810.y, x_3811.z, x_3811.w);
            let x_3813 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3813, vec2<f32>(0.0f, 0.0f));
            let x_3815 : vec2<f32> = u_xlat66;
            let x_3817 : vec2<f32> = u_xlat66;
            let x_3819 : vec4<f32> = u_xlat14;
            let x_3821 : vec2<f32> = ((-(x_3815) * x_3817) + vec2<f32>(x_3819.x, x_3819.y));
            let x_3822 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3821.x, x_3821.y, x_3822.z, x_3822.w);
            let x_3824 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3824, vec2<f32>(0.0f, 0.0f));
            let x_3827 : vec2<f32> = u_xlat66;
            let x_3829 : vec2<f32> = u_xlat66;
            let x_3831 : vec4<f32> = u_xlat13;
            let x_3833 : vec2<f32> = ((-(x_3827) * x_3829) + vec2<f32>(x_3831.y, x_3831.w));
            let x_3834 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3833.x, x_3834.y, x_3833.y);
            let x_3836 : vec4<f32> = u_xlat14;
            let x_3838 : vec2<f32> = (vec2<f32>(x_3836.x, x_3836.y) + vec2<f32>(2.0f, 2.0f));
            let x_3839 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3838.x, x_3838.y, x_3839.z, x_3839.w);
            let x_3841 : vec3<f32> = u_xlat39;
            let x_3843 : vec2<f32> = (vec2<f32>(x_3841.x, x_3841.z) + vec2<f32>(2.0f, 2.0f));
            let x_3844 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3844.x, x_3843.x, x_3844.z, x_3843.y);
            let x_3847 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3847 * 0.08163200318813323975f);
            let x_3850 : vec4<f32> = u_xlat13;
            let x_3852 : vec3<f32> = (vec3<f32>(x_3850.z, x_3850.x, x_3850.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3853 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3852.x, x_3852.y, x_3852.z, x_3853.w);
            let x_3855 : vec4<f32> = u_xlat14;
            let x_3857 : vec2<f32> = (vec2<f32>(x_3855.x, x_3855.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3858 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3857.x, x_3857.y, x_3858.z, x_3858.w);
            let x_3861 : f32 = u_xlat17.y;
            u_xlat16.x = x_3861;
            let x_3863 : vec2<f32> = u_xlat64;
            let x_3866 : vec2<f32> = ((vec2<f32>(x_3863.x, x_3863.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3867 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3867.x, x_3866.x, x_3867.z, x_3866.y);
            let x_3869 : vec2<f32> = u_xlat64;
            let x_3872 : vec2<f32> = ((vec2<f32>(x_3869.x, x_3869.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3873 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3872.x, x_3873.y, x_3872.y, x_3873.w);
            let x_3876 : f32 = u_xlat13.x;
            u_xlat14.y = x_3876;
            let x_3879 : f32 = u_xlat15.y;
            u_xlat14.w = x_3879;
            let x_3881 : vec4<f32> = u_xlat14;
            let x_3882 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3881 + x_3882);
            let x_3884 : vec2<f32> = u_xlat64;
            let x_3887 : vec2<f32> = ((vec2<f32>(x_3884.y, x_3884.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3888 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3888.x, x_3887.x, x_3888.z, x_3887.y);
            let x_3890 : vec2<f32> = u_xlat64;
            let x_3893 : vec2<f32> = ((vec2<f32>(x_3890.y, x_3890.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3894 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3893.x, x_3894.y, x_3893.y, x_3894.w);
            let x_3897 : f32 = u_xlat13.y;
            u_xlat15.y = x_3897;
            let x_3899 : vec4<f32> = u_xlat15;
            let x_3900 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3899 + x_3900);
            let x_3902 : vec4<f32> = u_xlat14;
            let x_3903 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3902 / x_3903);
            let x_3905 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3905 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3907 : vec4<f32> = u_xlat15;
            let x_3908 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3907 / x_3908);
            let x_3910 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3910 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3912 : vec4<f32> = u_xlat14;
            let x_3915 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3912.w, x_3912.x, x_3912.y, x_3912.z) * vec4<f32>(x_3915.x, x_3915.x, x_3915.x, x_3915.x));
            let x_3918 : vec4<f32> = u_xlat15;
            let x_3921 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3918.x, x_3918.w, x_3918.y, x_3918.z) * vec4<f32>(x_3921.y, x_3921.y, x_3921.y, x_3921.y));
            let x_3924 : vec4<f32> = u_xlat14;
            let x_3925 : vec3<f32> = vec3<f32>(x_3924.y, x_3924.z, x_3924.w);
            let x_3926 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3925.x, x_3926.y, x_3925.y, x_3925.z);
            let x_3929 : f32 = u_xlat15.x;
            u_xlat17.y = x_3929;
            let x_3931 : vec4<f32> = u_xlat12;
            let x_3934 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3937 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3931.x, x_3931.y, x_3931.x, x_3931.y) * vec4<f32>(x_3934.x, x_3934.y, x_3934.x, x_3934.y)) + vec4<f32>(x_3937.x, x_3937.y, x_3937.z, x_3937.y));
            let x_3940 : vec4<f32> = u_xlat12;
            let x_3943 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3946 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3940.x, x_3940.y) * vec2<f32>(x_3943.x, x_3943.y)) + vec2<f32>(x_3946.w, x_3946.y));
            let x_3950 : f32 = u_xlat17.y;
            u_xlat14.y = x_3950;
            let x_3953 : f32 = u_xlat15.z;
            u_xlat17.y = x_3953;
            let x_3955 : vec4<f32> = u_xlat12;
            let x_3958 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3961 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3955.x, x_3955.y, x_3955.x, x_3955.y) * vec4<f32>(x_3958.x, x_3958.y, x_3958.x, x_3958.y)) + vec4<f32>(x_3961.x, x_3961.y, x_3961.z, x_3961.y));
            let x_3964 : vec4<f32> = u_xlat12;
            let x_3967 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3970 : vec4<f32> = u_xlat17;
            let x_3972 : vec2<f32> = ((vec2<f32>(x_3964.x, x_3964.y) * vec2<f32>(x_3967.x, x_3967.y)) + vec2<f32>(x_3970.w, x_3970.y));
            let x_3973 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3972.x, x_3972.y, x_3973.z, x_3973.w);
            let x_3976 : f32 = u_xlat17.y;
            u_xlat14.z = x_3976;
            let x_3979 : vec4<f32> = u_xlat12;
            let x_3982 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3985 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3979.x, x_3979.y, x_3979.x, x_3979.y) * vec4<f32>(x_3982.x, x_3982.y, x_3982.x, x_3982.y)) + vec4<f32>(x_3985.x, x_3985.y, x_3985.x, x_3985.z));
            let x_3989 : f32 = u_xlat15.w;
            u_xlat17.y = x_3989;
            let x_3992 : vec4<f32> = u_xlat12;
            let x_3995 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3998 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3992.x, x_3992.y, x_3992.x, x_3992.y) * vec4<f32>(x_3995.x, x_3995.y, x_3995.x, x_3995.y)) + vec4<f32>(x_3998.x, x_3998.y, x_3998.z, x_3998.y));
            let x_4002 : vec4<f32> = u_xlat12;
            let x_4005 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_4008 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_4002.x, x_4002.y) * vec2<f32>(x_4005.x, x_4005.y)) + vec2<f32>(x_4008.w, x_4008.y));
            let x_4012 : f32 = u_xlat17.y;
            u_xlat14.w = x_4012;
            let x_4015 : vec4<f32> = u_xlat12;
            let x_4018 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_4021 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4015.x, x_4015.y) * vec2<f32>(x_4018.x, x_4018.y)) + vec2<f32>(x_4021.x, x_4021.w));
            let x_4024 : vec4<f32> = u_xlat17;
            let x_4025 : vec3<f32> = vec3<f32>(x_4024.x, x_4024.z, x_4024.w);
            let x_4026 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4025.x, x_4026.y, x_4025.y, x_4025.z);
            let x_4028 : vec4<f32> = u_xlat12;
            let x_4031 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_4034 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4028.x, x_4028.y, x_4028.x, x_4028.y) * vec4<f32>(x_4031.x, x_4031.y, x_4031.x, x_4031.y)) + vec4<f32>(x_4034.x, x_4034.y, x_4034.z, x_4034.y));
            let x_4038 : vec4<f32> = u_xlat12;
            let x_4041 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_4044 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4038.x, x_4038.y) * vec2<f32>(x_4041.x, x_4041.y)) + vec2<f32>(x_4044.w, x_4044.y));
            let x_4048 : f32 = u_xlat14.x;
            u_xlat15.x = x_4048;
            let x_4050 : vec4<f32> = u_xlat12;
            let x_4053 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_4056 : vec4<f32> = u_xlat15;
            let x_4058 : vec2<f32> = ((vec2<f32>(x_4050.x, x_4050.y) * vec2<f32>(x_4053.x, x_4053.y)) + vec2<f32>(x_4056.x, x_4056.y));
            let x_4059 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4058.x, x_4058.y, x_4059.z, x_4059.w);
            let x_4062 : vec4<f32> = u_xlat13;
            let x_4064 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4062.x, x_4062.x, x_4062.x, x_4062.x) * x_4064);
            let x_4067 : vec4<f32> = u_xlat13;
            let x_4069 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4067.y, x_4067.y, x_4067.y, x_4067.y) * x_4069);
            let x_4072 : vec4<f32> = u_xlat13;
            let x_4074 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4072.z, x_4072.z, x_4072.z, x_4072.z) * x_4074);
            let x_4076 : vec4<f32> = u_xlat13;
            let x_4078 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4076.w, x_4076.w, x_4076.w, x_4076.w) * x_4078);
            let x_4081 : vec4<f32> = u_xlat18;
            let x_4082 : vec2<f32> = vec2<f32>(x_4081.x, x_4081.y);
            let x_4084 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_4082.x, x_4082.y, x_4084);
            let x_4091 : vec3<f32> = txVec43;
            let x_4093 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4091.xy, x_4091.z);
            u_xlat86 = x_4093;
            let x_4095 : vec4<f32> = u_xlat18;
            let x_4096 : vec2<f32> = vec2<f32>(x_4095.z, x_4095.w);
            let x_4098 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_4096.x, x_4096.y, x_4098);
            let x_4105 : vec3<f32> = txVec44;
            let x_4107 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4105.xy, x_4105.z);
            u_xlat88 = x_4107;
            let x_4108 : f32 = u_xlat88;
            let x_4110 : f32 = u_xlat23.y;
            u_xlat88 = (x_4108 * x_4110);
            let x_4113 : f32 = u_xlat23.x;
            let x_4114 : f32 = u_xlat86;
            let x_4116 : f32 = u_xlat88;
            u_xlat86 = ((x_4113 * x_4114) + x_4116);
            let x_4119 : vec2<f32> = u_xlat64;
            let x_4121 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_4119.x, x_4119.y, x_4121);
            let x_4128 : vec3<f32> = txVec45;
            let x_4130 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4128.xy, x_4128.z);
            u_xlat88 = x_4130;
            let x_4132 : f32 = u_xlat23.z;
            let x_4133 : f32 = u_xlat88;
            let x_4135 : f32 = u_xlat86;
            u_xlat86 = ((x_4132 * x_4133) + x_4135);
            let x_4138 : vec4<f32> = u_xlat21;
            let x_4139 : vec2<f32> = vec2<f32>(x_4138.x, x_4138.y);
            let x_4141 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_4139.x, x_4139.y, x_4141);
            let x_4148 : vec3<f32> = txVec46;
            let x_4150 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4148.xy, x_4148.z);
            u_xlat88 = x_4150;
            let x_4152 : f32 = u_xlat23.w;
            let x_4153 : f32 = u_xlat88;
            let x_4155 : f32 = u_xlat86;
            u_xlat86 = ((x_4152 * x_4153) + x_4155);
            let x_4158 : vec4<f32> = u_xlat19;
            let x_4159 : vec2<f32> = vec2<f32>(x_4158.x, x_4158.y);
            let x_4161 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_4159.x, x_4159.y, x_4161);
            let x_4168 : vec3<f32> = txVec47;
            let x_4170 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4168.xy, x_4168.z);
            u_xlat88 = x_4170;
            let x_4172 : f32 = u_xlat24.x;
            let x_4173 : f32 = u_xlat88;
            let x_4175 : f32 = u_xlat86;
            u_xlat86 = ((x_4172 * x_4173) + x_4175);
            let x_4178 : vec4<f32> = u_xlat19;
            let x_4179 : vec2<f32> = vec2<f32>(x_4178.z, x_4178.w);
            let x_4181 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_4179.x, x_4179.y, x_4181);
            let x_4188 : vec3<f32> = txVec48;
            let x_4190 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4188.xy, x_4188.z);
            u_xlat88 = x_4190;
            let x_4192 : f32 = u_xlat24.y;
            let x_4193 : f32 = u_xlat88;
            let x_4195 : f32 = u_xlat86;
            u_xlat86 = ((x_4192 * x_4193) + x_4195);
            let x_4198 : vec4<f32> = u_xlat20;
            let x_4199 : vec2<f32> = vec2<f32>(x_4198.x, x_4198.y);
            let x_4201 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_4199.x, x_4199.y, x_4201);
            let x_4208 : vec3<f32> = txVec49;
            let x_4210 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4208.xy, x_4208.z);
            u_xlat88 = x_4210;
            let x_4212 : f32 = u_xlat24.z;
            let x_4213 : f32 = u_xlat88;
            let x_4215 : f32 = u_xlat86;
            u_xlat86 = ((x_4212 * x_4213) + x_4215);
            let x_4218 : vec4<f32> = u_xlat21;
            let x_4219 : vec2<f32> = vec2<f32>(x_4218.z, x_4218.w);
            let x_4221 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_4219.x, x_4219.y, x_4221);
            let x_4228 : vec3<f32> = txVec50;
            let x_4230 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4228.xy, x_4228.z);
            u_xlat88 = x_4230;
            let x_4232 : f32 = u_xlat24.w;
            let x_4233 : f32 = u_xlat88;
            let x_4235 : f32 = u_xlat86;
            u_xlat86 = ((x_4232 * x_4233) + x_4235);
            let x_4238 : vec4<f32> = u_xlat22;
            let x_4239 : vec2<f32> = vec2<f32>(x_4238.x, x_4238.y);
            let x_4241 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_4239.x, x_4239.y, x_4241);
            let x_4248 : vec3<f32> = txVec51;
            let x_4250 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4248.xy, x_4248.z);
            u_xlat88 = x_4250;
            let x_4252 : f32 = u_xlat25.x;
            let x_4253 : f32 = u_xlat88;
            let x_4255 : f32 = u_xlat86;
            u_xlat86 = ((x_4252 * x_4253) + x_4255);
            let x_4258 : vec4<f32> = u_xlat22;
            let x_4259 : vec2<f32> = vec2<f32>(x_4258.z, x_4258.w);
            let x_4261 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_4259.x, x_4259.y, x_4261);
            let x_4268 : vec3<f32> = txVec52;
            let x_4270 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4268.xy, x_4268.z);
            u_xlat88 = x_4270;
            let x_4272 : f32 = u_xlat25.y;
            let x_4273 : f32 = u_xlat88;
            let x_4275 : f32 = u_xlat86;
            u_xlat86 = ((x_4272 * x_4273) + x_4275);
            let x_4278 : vec2<f32> = u_xlat40;
            let x_4280 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_4278.x, x_4278.y, x_4280);
            let x_4287 : vec3<f32> = txVec53;
            let x_4289 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4287.xy, x_4287.z);
            u_xlat88 = x_4289;
            let x_4291 : f32 = u_xlat25.z;
            let x_4292 : f32 = u_xlat88;
            let x_4294 : f32 = u_xlat86;
            u_xlat86 = ((x_4291 * x_4292) + x_4294);
            let x_4297 : vec2<f32> = u_xlat72;
            let x_4299 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_4297.x, x_4297.y, x_4299);
            let x_4306 : vec3<f32> = txVec54;
            let x_4308 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4306.xy, x_4306.z);
            u_xlat88 = x_4308;
            let x_4310 : f32 = u_xlat25.w;
            let x_4311 : f32 = u_xlat88;
            let x_4313 : f32 = u_xlat86;
            u_xlat86 = ((x_4310 * x_4311) + x_4313);
            let x_4316 : vec4<f32> = u_xlat17;
            let x_4317 : vec2<f32> = vec2<f32>(x_4316.x, x_4316.y);
            let x_4319 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_4317.x, x_4317.y, x_4319);
            let x_4326 : vec3<f32> = txVec55;
            let x_4328 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4326.xy, x_4326.z);
            u_xlat88 = x_4328;
            let x_4330 : f32 = u_xlat13.x;
            let x_4331 : f32 = u_xlat88;
            let x_4333 : f32 = u_xlat86;
            u_xlat86 = ((x_4330 * x_4331) + x_4333);
            let x_4336 : vec4<f32> = u_xlat17;
            let x_4337 : vec2<f32> = vec2<f32>(x_4336.z, x_4336.w);
            let x_4339 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_4337.x, x_4337.y, x_4339);
            let x_4346 : vec3<f32> = txVec56;
            let x_4348 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4346.xy, x_4346.z);
            u_xlat88 = x_4348;
            let x_4350 : f32 = u_xlat13.y;
            let x_4351 : f32 = u_xlat88;
            let x_4353 : f32 = u_xlat86;
            u_xlat86 = ((x_4350 * x_4351) + x_4353);
            let x_4356 : vec2<f32> = u_xlat67;
            let x_4358 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_4356.x, x_4356.y, x_4358);
            let x_4365 : vec3<f32> = txVec57;
            let x_4367 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4365.xy, x_4365.z);
            u_xlat88 = x_4367;
            let x_4369 : f32 = u_xlat13.z;
            let x_4370 : f32 = u_xlat88;
            let x_4372 : f32 = u_xlat86;
            u_xlat86 = ((x_4369 * x_4370) + x_4372);
            let x_4375 : vec4<f32> = u_xlat12;
            let x_4376 : vec2<f32> = vec2<f32>(x_4375.x, x_4375.y);
            let x_4378 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_4376.x, x_4376.y, x_4378);
            let x_4385 : vec3<f32> = txVec58;
            let x_4387 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4385.xy, x_4385.z);
            u_xlat88 = x_4387;
            let x_4389 : f32 = u_xlat13.w;
            let x_4390 : f32 = u_xlat88;
            let x_4392 : f32 = u_xlat86;
            u_xlat85 = ((x_4389 * x_4390) + x_4392);
          }
        }
      } else {
        let x_4396 : vec4<f32> = u_xlat11;
        let x_4397 : vec2<f32> = vec2<f32>(x_4396.x, x_4396.y);
        let x_4399 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_4397.x, x_4397.y, x_4399);
        let x_4406 : vec3<f32> = txVec59;
        let x_4408 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4406.xy, x_4406.z);
        u_xlat85 = x_4408;
      }
      let x_4409 : i32 = u_xlati54;
      let x_4411 : f32 = x_845.x_AdditionalShadowParams[x_4409].x;
      u_xlat86 = (1.0f + -(x_4411));
      let x_4414 : f32 = u_xlat85;
      let x_4415 : i32 = u_xlati54;
      let x_4417 : f32 = x_845.x_AdditionalShadowParams[x_4415].x;
      let x_4419 : f32 = u_xlat86;
      u_xlat85 = ((x_4414 * x_4417) + x_4419);
      let x_4422 : f32 = u_xlat11.z;
      u_xlatb86 = (0.0f >= x_4422);
      let x_4426 : f32 = u_xlat11.z;
      u_xlatb88 = (x_4426 >= 1.0f);
      let x_4428 : bool = u_xlatb86;
      let x_4429 : bool = u_xlatb88;
      u_xlatb86 = (x_4428 | x_4429);
      let x_4431 : bool = u_xlatb86;
      let x_4432 : f32 = u_xlat85;
      u_xlat85 = select(x_4432, 1.0f, x_4431);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_4435 : f32 = u_xlat85;
    u_xlat86 = (-(x_4435) + 1.0f);
    let x_4438 : f32 = u_xlat52;
    let x_4439 : f32 = u_xlat86;
    let x_4441 : f32 = u_xlat85;
    u_xlat85 = ((x_4438 * x_4439) + x_4441);
    let x_4444 : i32 = u_xlati54;
    u_xlati86 = (1i << bitcast<u32>((x_4444 & 31i)));
    let x_4447 : i32 = u_xlati86;
    let x_4450 : f32 = x_2525.x_AdditionalLightsCookieEnableBits;
    u_xlati86 = bitcast<i32>((bitcast<u32>(x_4447) & bitcast<u32>(x_4450)));
    let x_4454 : i32 = u_xlati86;
    if ((x_4454 != 0i)) {
      let x_4458 : i32 = u_xlati54;
      let x_4460 : f32 = x_2525.x_AdditionalLightsLightTypes[x_4458].el;
      u_xlati86 = i32(x_4460);
      let x_4463 : i32 = u_xlati86;
      u_xlati88 = select(1i, 0i, (x_4463 != 0i));
      let x_4467 : i32 = u_xlati54;
      u_xlati11 = (x_4467 << bitcast<u32>(2i));
      let x_4469 : i32 = u_xlati88;
      if ((x_4469 != 0i)) {
        let x_4474 : vec3<f32> = vs_TEXCOORD7;
        let x_4476 : i32 = u_xlati11;
        let x_4479 : i32 = u_xlati11;
        let x_4483 : vec4<f32> = x_2525.x_AdditionalLightsWorldToLights[((x_4476 + 1i) / 4i)][((x_4479 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_4474.y, x_4474.y, x_4474.y) * vec3<f32>(x_4483.x, x_4483.y, x_4483.w));
        let x_4486 : i32 = u_xlati11;
        let x_4488 : i32 = u_xlati11;
        let x_4491 : vec4<f32> = x_2525.x_AdditionalLightsWorldToLights[(x_4486 / 4i)][(x_4488 % 4i)];
        let x_4493 : vec3<f32> = vs_TEXCOORD7;
        let x_4496 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4491.x, x_4491.y, x_4491.w) * vec3<f32>(x_4493.x, x_4493.x, x_4493.x)) + x_4496);
        let x_4498 : i32 = u_xlati11;
        let x_4501 : i32 = u_xlati11;
        let x_4505 : vec4<f32> = x_2525.x_AdditionalLightsWorldToLights[((x_4498 + 2i) / 4i)][((x_4501 + 2i) % 4i)];
        let x_4507 : vec3<f32> = vs_TEXCOORD7;
        let x_4510 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4505.x, x_4505.y, x_4505.w) * vec3<f32>(x_4507.z, x_4507.z, x_4507.z)) + x_4510);
        let x_4512 : vec3<f32> = u_xlat37;
        let x_4513 : i32 = u_xlati11;
        let x_4516 : i32 = u_xlati11;
        let x_4520 : vec4<f32> = x_2525.x_AdditionalLightsWorldToLights[((x_4513 + 3i) / 4i)][((x_4516 + 3i) % 4i)];
        u_xlat37 = (x_4512 + vec3<f32>(x_4520.x, x_4520.y, x_4520.w));
        let x_4523 : vec3<f32> = u_xlat37;
        let x_4525 : vec3<f32> = u_xlat37;
        let x_4527 : vec2<f32> = (vec2<f32>(x_4523.x, x_4523.y) / vec2<f32>(x_4525.z, x_4525.z));
        let x_4528 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4527.x, x_4527.y, x_4528.z);
        let x_4530 : vec3<f32> = u_xlat37;
        let x_4533 : vec2<f32> = ((vec2<f32>(x_4530.x, x_4530.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4534 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4533.x, x_4533.y, x_4534.z);
        let x_4536 : vec3<f32> = u_xlat37;
        let x_4540 : vec2<f32> = clamp(vec2<f32>(x_4536.x, x_4536.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4541 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4540.x, x_4540.y, x_4541.z);
        let x_4543 : i32 = u_xlati54;
        let x_4545 : vec4<f32> = x_2525.x_AdditionalLightsCookieAtlasUVRects[x_4543];
        let x_4547 : vec3<f32> = u_xlat37;
        let x_4550 : i32 = u_xlati54;
        let x_4552 : vec4<f32> = x_2525.x_AdditionalLightsCookieAtlasUVRects[x_4550];
        let x_4554 : vec2<f32> = ((vec2<f32>(x_4545.x, x_4545.y) * vec2<f32>(x_4547.x, x_4547.y)) + vec2<f32>(x_4552.z, x_4552.w));
        let x_4555 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4554.x, x_4554.y, x_4555.z);
      } else {
        let x_4558 : i32 = u_xlati86;
        u_xlatb86 = (x_4558 == 1i);
        let x_4560 : bool = u_xlatb86;
        u_xlati86 = select(0i, 1i, x_4560);
        let x_4562 : i32 = u_xlati86;
        if ((x_4562 != 0i)) {
          let x_4566 : vec3<f32> = vs_TEXCOORD7;
          let x_4568 : i32 = u_xlati11;
          let x_4571 : i32 = u_xlati11;
          let x_4575 : vec4<f32> = x_2525.x_AdditionalLightsWorldToLights[((x_4568 + 1i) / 4i)][((x_4571 + 1i) % 4i)];
          let x_4577 : vec2<f32> = (vec2<f32>(x_4566.y, x_4566.y) * vec2<f32>(x_4575.x, x_4575.y));
          let x_4578 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4577.x, x_4577.y, x_4578.z, x_4578.w);
          let x_4580 : i32 = u_xlati11;
          let x_4582 : i32 = u_xlati11;
          let x_4585 : vec4<f32> = x_2525.x_AdditionalLightsWorldToLights[(x_4580 / 4i)][(x_4582 % 4i)];
          let x_4587 : vec3<f32> = vs_TEXCOORD7;
          let x_4590 : vec4<f32> = u_xlat12;
          let x_4592 : vec2<f32> = ((vec2<f32>(x_4585.x, x_4585.y) * vec2<f32>(x_4587.x, x_4587.x)) + vec2<f32>(x_4590.x, x_4590.y));
          let x_4593 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4592.x, x_4592.y, x_4593.z, x_4593.w);
          let x_4595 : i32 = u_xlati11;
          let x_4598 : i32 = u_xlati11;
          let x_4602 : vec4<f32> = x_2525.x_AdditionalLightsWorldToLights[((x_4595 + 2i) / 4i)][((x_4598 + 2i) % 4i)];
          let x_4604 : vec3<f32> = vs_TEXCOORD7;
          let x_4607 : vec4<f32> = u_xlat12;
          let x_4609 : vec2<f32> = ((vec2<f32>(x_4602.x, x_4602.y) * vec2<f32>(x_4604.z, x_4604.z)) + vec2<f32>(x_4607.x, x_4607.y));
          let x_4610 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4609.x, x_4609.y, x_4610.z, x_4610.w);
          let x_4612 : vec4<f32> = u_xlat12;
          let x_4614 : i32 = u_xlati11;
          let x_4617 : i32 = u_xlati11;
          let x_4621 : vec4<f32> = x_2525.x_AdditionalLightsWorldToLights[((x_4614 + 3i) / 4i)][((x_4617 + 3i) % 4i)];
          let x_4623 : vec2<f32> = (vec2<f32>(x_4612.x, x_4612.y) + vec2<f32>(x_4621.x, x_4621.y));
          let x_4624 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4623.x, x_4623.y, x_4624.z, x_4624.w);
          let x_4626 : vec4<f32> = u_xlat12;
          let x_4629 : vec2<f32> = ((vec2<f32>(x_4626.x, x_4626.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4630 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4629.x, x_4629.y, x_4630.z, x_4630.w);
          let x_4632 : vec4<f32> = u_xlat12;
          let x_4634 : vec2<f32> = fract(vec2<f32>(x_4632.x, x_4632.y));
          let x_4635 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4634.x, x_4634.y, x_4635.z, x_4635.w);
          let x_4637 : i32 = u_xlati54;
          let x_4639 : vec4<f32> = x_2525.x_AdditionalLightsCookieAtlasUVRects[x_4637];
          let x_4641 : vec4<f32> = u_xlat12;
          let x_4644 : i32 = u_xlati54;
          let x_4646 : vec4<f32> = x_2525.x_AdditionalLightsCookieAtlasUVRects[x_4644];
          let x_4648 : vec2<f32> = ((vec2<f32>(x_4639.x, x_4639.y) * vec2<f32>(x_4641.x, x_4641.y)) + vec2<f32>(x_4646.z, x_4646.w));
          let x_4649 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4648.x, x_4648.y, x_4649.z);
        } else {
          let x_4652 : vec3<f32> = vs_TEXCOORD7;
          let x_4654 : i32 = u_xlati11;
          let x_4657 : i32 = u_xlati11;
          let x_4661 : vec4<f32> = x_2525.x_AdditionalLightsWorldToLights[((x_4654 + 1i) / 4i)][((x_4657 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4652.y, x_4652.y, x_4652.y, x_4652.y) * x_4661);
          let x_4663 : i32 = u_xlati11;
          let x_4665 : i32 = u_xlati11;
          let x_4668 : vec4<f32> = x_2525.x_AdditionalLightsWorldToLights[(x_4663 / 4i)][(x_4665 % 4i)];
          let x_4669 : vec3<f32> = vs_TEXCOORD7;
          let x_4672 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4668 * vec4<f32>(x_4669.x, x_4669.x, x_4669.x, x_4669.x)) + x_4672);
          let x_4674 : i32 = u_xlati11;
          let x_4677 : i32 = u_xlati11;
          let x_4681 : vec4<f32> = x_2525.x_AdditionalLightsWorldToLights[((x_4674 + 2i) / 4i)][((x_4677 + 2i) % 4i)];
          let x_4682 : vec3<f32> = vs_TEXCOORD7;
          let x_4685 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4681 * vec4<f32>(x_4682.z, x_4682.z, x_4682.z, x_4682.z)) + x_4685);
          let x_4687 : vec4<f32> = u_xlat12;
          let x_4688 : i32 = u_xlati11;
          let x_4691 : i32 = u_xlati11;
          let x_4695 : vec4<f32> = x_2525.x_AdditionalLightsWorldToLights[((x_4688 + 3i) / 4i)][((x_4691 + 3i) % 4i)];
          u_xlat12 = (x_4687 + x_4695);
          let x_4697 : vec4<f32> = u_xlat12;
          let x_4699 : vec4<f32> = u_xlat12;
          let x_4701 : vec3<f32> = (vec3<f32>(x_4697.x, x_4697.y, x_4697.z) / vec3<f32>(x_4699.w, x_4699.w, x_4699.w));
          let x_4702 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4701.x, x_4701.y, x_4701.z, x_4702.w);
          let x_4704 : vec4<f32> = u_xlat12;
          let x_4706 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(vec3<f32>(x_4704.x, x_4704.y, x_4704.z), vec3<f32>(x_4706.x, x_4706.y, x_4706.z));
          let x_4709 : f32 = u_xlat86;
          u_xlat86 = inverseSqrt(x_4709);
          let x_4711 : f32 = u_xlat86;
          let x_4713 : vec4<f32> = u_xlat12;
          let x_4715 : vec3<f32> = (vec3<f32>(x_4711, x_4711, x_4711) * vec3<f32>(x_4713.x, x_4713.y, x_4713.z));
          let x_4716 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4715.x, x_4715.y, x_4715.z, x_4716.w);
          let x_4718 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(abs(vec3<f32>(x_4718.x, x_4718.y, x_4718.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4723 : f32 = u_xlat86;
          u_xlat86 = max(x_4723, 0.00000099999999747524f);
          let x_4726 : f32 = u_xlat86;
          u_xlat86 = (1.0f / x_4726);
          let x_4728 : f32 = u_xlat86;
          let x_4730 : vec4<f32> = u_xlat12;
          let x_4732 : vec3<f32> = (vec3<f32>(x_4728, x_4728, x_4728) * vec3<f32>(x_4730.z, x_4730.x, x_4730.y));
          let x_4733 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4732.x, x_4732.y, x_4732.z, x_4733.w);
          let x_4736 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4736);
          let x_4740 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4740, 0.0f, 1.0f);
          let x_4743 : vec4<f32> = u_xlat13;
          let x_4745 : vec4<bool> = (vec4<f32>(x_4743.y, x_4743.y, x_4743.y, x_4743.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_4746 : vec2<bool> = vec2<bool>(x_4745.x, x_4745.w);
          let x_4747 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_4746.x, x_4747.y, x_4747.z, x_4746.y);
          let x_4750 : bool = u_xlatb11.x;
          if (x_4750) {
            let x_4755 : f32 = u_xlat13.x;
            x_4751 = x_4755;
          } else {
            let x_4758 : f32 = u_xlat13.x;
            x_4751 = -(x_4758);
          }
          let x_4760 : f32 = x_4751;
          u_xlat11.x = x_4760;
          let x_4763 : bool = u_xlatb11.w;
          if (x_4763) {
            let x_4768 : f32 = u_xlat13.x;
            x_4764 = x_4768;
          } else {
            let x_4771 : f32 = u_xlat13.x;
            x_4764 = -(x_4771);
          }
          let x_4773 : f32 = x_4764;
          u_xlat11.w = x_4773;
          let x_4775 : vec4<f32> = u_xlat12;
          let x_4777 : f32 = u_xlat86;
          let x_4780 : vec4<f32> = u_xlat11;
          let x_4782 : vec2<f32> = ((vec2<f32>(x_4775.x, x_4775.y) * vec2<f32>(x_4777, x_4777)) + vec2<f32>(x_4780.x, x_4780.w));
          let x_4783 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4782.x, x_4783.y, x_4783.z, x_4782.y);
          let x_4785 : vec4<f32> = u_xlat11;
          let x_4788 : vec2<f32> = ((vec2<f32>(x_4785.x, x_4785.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4789 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4788.x, x_4789.y, x_4789.z, x_4788.y);
          let x_4791 : vec4<f32> = u_xlat11;
          let x_4795 : vec2<f32> = clamp(vec2<f32>(x_4791.x, x_4791.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4796 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4795.x, x_4796.y, x_4796.z, x_4795.y);
          let x_4798 : i32 = u_xlati54;
          let x_4800 : vec4<f32> = x_2525.x_AdditionalLightsCookieAtlasUVRects[x_4798];
          let x_4802 : vec4<f32> = u_xlat11;
          let x_4805 : i32 = u_xlati54;
          let x_4807 : vec4<f32> = x_2525.x_AdditionalLightsCookieAtlasUVRects[x_4805];
          let x_4809 : vec2<f32> = ((vec2<f32>(x_4800.x, x_4800.y) * vec2<f32>(x_4802.x, x_4802.w)) + vec2<f32>(x_4807.z, x_4807.w));
          let x_4810 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4809.x, x_4809.y, x_4810.z);
        }
      }
      let x_4817 : vec3<f32> = u_xlat37;
      let x_4819 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4817.x, x_4817.y), 0.0f);
      u_xlat11 = x_4819;
      let x_4821 : bool = u_xlatb2.y;
      if (x_4821) {
        let x_4826 : f32 = u_xlat11.w;
        x_4822 = x_4826;
      } else {
        let x_4829 : f32 = u_xlat11.x;
        x_4822 = x_4829;
      }
      let x_4830 : f32 = x_4822;
      u_xlat86 = x_4830;
      let x_4832 : bool = u_xlatb2.x;
      if (x_4832) {
        let x_4836 : vec4<f32> = u_xlat11;
        x_4833 = vec3<f32>(x_4836.x, x_4836.y, x_4836.z);
      } else {
        let x_4839 : f32 = u_xlat86;
        x_4833 = vec3<f32>(x_4839, x_4839, x_4839);
      }
      let x_4841 : vec3<f32> = x_4833;
      let x_4842 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4841.x, x_4841.y, x_4841.z, x_4842.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4848 : vec4<f32> = u_xlat11;
    let x_4850 : i32 = u_xlati54;
    let x_4852 : vec4<f32> = x_3034.x_AdditionalLightsColor[x_4850];
    let x_4854 : vec3<f32> = (vec3<f32>(x_4848.x, x_4848.y, x_4848.z) * vec3<f32>(x_4852.x, x_4852.y, x_4852.z));
    let x_4855 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4854.x, x_4854.y, x_4854.z, x_4855.w);
    let x_4857 : f32 = u_xlat83;
    let x_4858 : f32 = u_xlat85;
    u_xlat54 = (x_4857 * x_4858);
    let x_4860 : vec4<f32> = u_xlat1;
    let x_4862 : vec4<f32> = u_xlat10;
    u_xlat83 = dot(vec3<f32>(x_4860.x, x_4860.y, x_4860.z), vec3<f32>(x_4862.x, x_4862.y, x_4862.z));
    let x_4865 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4865, 0.0f, 1.0f);
    let x_4867 : f32 = u_xlat54;
    let x_4868 : f32 = u_xlat83;
    u_xlat54 = (x_4867 * x_4868);
    let x_4870 : f32 = u_xlat54;
    let x_4872 : vec4<f32> = u_xlat11;
    let x_4874 : vec3<f32> = (vec3<f32>(x_4870, x_4870, x_4870) * vec3<f32>(x_4872.x, x_4872.y, x_4872.z));
    let x_4875 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4874.x, x_4874.y, x_4874.z, x_4875.w);
    let x_4877 : vec3<f32> = u_xlat35;
    let x_4878 : f32 = u_xlat84;
    let x_4881 : vec4<f32> = u_xlat7;
    u_xlat35 = ((x_4877 * vec3<f32>(x_4878, x_4878, x_4878)) + vec3<f32>(x_4881.x, x_4881.y, x_4881.z));
    let x_4884 : vec3<f32> = u_xlat35;
    let x_4885 : vec3<f32> = u_xlat35;
    u_xlat54 = dot(x_4884, x_4885);
    let x_4887 : f32 = u_xlat54;
    u_xlat54 = max(x_4887, 1.17549435e-38f);
    let x_4889 : f32 = u_xlat54;
    u_xlat54 = inverseSqrt(x_4889);
    let x_4891 : f32 = u_xlat54;
    let x_4893 : vec3<f32> = u_xlat35;
    u_xlat35 = (vec3<f32>(x_4891, x_4891, x_4891) * x_4893);
    let x_4895 : vec4<f32> = u_xlat1;
    let x_4897 : vec3<f32> = u_xlat35;
    u_xlat54 = dot(vec3<f32>(x_4895.x, x_4895.y, x_4895.z), x_4897);
    let x_4899 : f32 = u_xlat54;
    u_xlat54 = clamp(x_4899, 0.0f, 1.0f);
    let x_4901 : vec4<f32> = u_xlat10;
    let x_4903 : vec3<f32> = u_xlat35;
    u_xlat83 = dot(vec3<f32>(x_4901.x, x_4901.y, x_4901.z), x_4903);
    let x_4905 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4905, 0.0f, 1.0f);
    let x_4907 : f32 = u_xlat54;
    let x_4908 : f32 = u_xlat54;
    u_xlat54 = (x_4907 * x_4908);
    let x_4910 : f32 = u_xlat54;
    let x_4912 : f32 = u_xlat9.x;
    u_xlat54 = ((x_4910 * x_4912) + 1.00001001358032226562f);
    let x_4915 : f32 = u_xlat83;
    let x_4916 : f32 = u_xlat83;
    u_xlat83 = (x_4915 * x_4916);
    let x_4918 : f32 = u_xlat54;
    let x_4919 : f32 = u_xlat54;
    u_xlat54 = (x_4918 * x_4919);
    let x_4921 : f32 = u_xlat83;
    u_xlat83 = max(x_4921, 0.10000000149011611938f);
    let x_4923 : f32 = u_xlat54;
    let x_4924 : f32 = u_xlat83;
    u_xlat54 = (x_4923 * x_4924);
    let x_4926 : f32 = u_xlat81;
    let x_4927 : f32 = u_xlat54;
    u_xlat54 = (x_4926 * x_4927);
    let x_4929 : f32 = u_xlat82;
    let x_4930 : f32 = u_xlat54;
    u_xlat54 = (x_4929 / x_4930);
    let x_4932 : vec4<f32> = u_xlat5;
    let x_4934 : f32 = u_xlat54;
    let x_4937 : vec4<f32> = u_xlat4;
    u_xlat35 = ((vec3<f32>(x_4932.x, x_4932.y, x_4932.z) * vec3<f32>(x_4934, x_4934, x_4934)) + vec3<f32>(x_4937.x, x_4937.y, x_4937.z));
    let x_4940 : vec3<f32> = u_xlat35;
    let x_4941 : vec4<f32> = u_xlat11;
    let x_4944 : vec4<f32> = u_xlat8;
    let x_4946 : vec3<f32> = ((x_4940 * vec3<f32>(x_4941.x, x_4941.y, x_4941.z)) + vec3<f32>(x_4944.x, x_4944.y, x_4944.z));
    let x_4947 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4946.x, x_4946.y, x_4946.z, x_4947.w);

    continuing {
      let x_4949 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4949 + bitcast<u32>(1i));
    }
  }
  let x_4951 : vec4<f32> = u_xlat3;
  let x_4953 : f32 = u_xlat26;
  let x_4956 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_4951.x, x_4951.y, x_4951.z) * vec3<f32>(x_4953, x_4953, x_4953)) + vec3<f32>(x_4956.x, x_4956.y, x_4956.z));
  let x_4959 : vec4<f32> = u_xlat8;
  let x_4961 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4959.x, x_4959.y, x_4959.z) + x_4961);
  let x_4963 : f32 = u_xlat78;
  let x_4965 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4963, x_4963, x_4963) * x_4965);
  let x_4967 : f32 = u_xlat80;
  let x_4968 : f32 = u_xlat80;
  u_xlat78 = (x_4967 * -(x_4968));
  let x_4971 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4971);
  let x_4975 : vec3<f32> = u_xlat0;
  let x_4976 : f32 = u_xlat78;
  let x_4978 : vec3<f32> = (x_4975 * vec3<f32>(x_4976, x_4976, x_4976));
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


