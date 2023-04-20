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

@group(1) @binding(3) var<uniform> x_13 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(15) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_111 : PGlobals;

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

@group(1) @binding(2) var<uniform> x_888 : UnityPerDraw;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlatb5 : bool;

@group(1) @binding(4) var<uniform> x_1026 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(10) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb57 : vec2<bool>;

@group(1) @binding(5) var<uniform> x_2380 : LightCookies;

@group(0) @binding(12) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(14) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu52 : u32;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlatu58 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati58 : i32;

@group(1) @binding(1) var<uniform> x_2881 : AdditionalLights;

var<private> u_xlat84 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlati86 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb86 : bool;

@group(0) @binding(11) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat66 : vec2<f32>;

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

@group(0) @binding(13) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu31 : u32;

var<private> u_xlatb58 : bool;

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
  var x_2332 : f32;
  var x_2447 : f32;
  var x_2458 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3019 : f32;
  var x_3029 : f32;
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
  var x_4610 : f32;
  var x_4623 : f32;
  var x_4681 : f32;
  var x_4692 : vec3<f32>;
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
  u_xlat2 = ((vec3<f32>(x_45.x, x_45.y, x_45.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_50.x, x_50.y, x_50.w));
  let x_56 : vec4<f32> = x_13.x_MaskMapRemapScale3;
  let x_61 : vec4<f32> = x_13.x_MaskMapRemapOffset3;
  let x_63 : vec3<f32> = ((vec3<f32>(x_56.x, x_56.w, x_56.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_61.x, x_61.w, x_61.y));
  let x_64 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_63.x, x_63.y, x_64.z, x_63.z);
  let x_70 : vec4<f32> = x_13.x_Control_TexelSize;
  let x_74 : vec2<f32> = (vec2<f32>(x_70.z, x_70.w) + vec2<f32>(-1.0f, -1.0f));
  let x_75 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_74.x, x_74.y, x_75.z, x_75.w);
  let x_79 : vec4<f32> = vs_TEXCOORD0;
  let x_81 : vec4<f32> = u_xlat4;
  let x_85 : vec2<f32> = ((vec2<f32>(x_79.x, x_79.y) * vec2<f32>(x_81.x, x_81.y)) + vec2<f32>(0.5f, 0.5f));
  let x_86 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_85.x, x_85.y, x_86.z, x_86.w);
  let x_88 : vec4<f32> = u_xlat4;
  let x_91 : vec4<f32> = x_13.x_Control_TexelSize;
  let x_93 : vec2<f32> = (vec2<f32>(x_88.x, x_88.y) * vec2<f32>(x_91.x, x_91.y));
  let x_94 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_93.x, x_93.y, x_94.z, x_94.w);
  let x_106 : vec4<f32> = u_xlat4;
  let x_117 : f32 = x_111.x_GlobalMipBias.x;
  let x_118 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_106.x, x_106.y), x_117);
  u_xlat4 = x_118;
  let x_121 : vec4<f32> = u_xlat4;
  u_xlat78 = dot(x_121, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_132 : vec4<f32> = vs_TEXCOORD1;
  let x_135 : f32 = x_111.x_GlobalMipBias.x;
  let x_136 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_132.x, x_132.y), x_135);
  u_xlat5 = x_136;
  let x_142 : vec4<f32> = vs_TEXCOORD1;
  let x_145 : f32 = x_111.x_GlobalMipBias.x;
  let x_146 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_142.z, x_142.w), x_145);
  u_xlat6 = x_146;
  let x_153 : vec4<f32> = vs_TEXCOORD2;
  let x_156 : f32 = x_111.x_GlobalMipBias.x;
  let x_157 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_153.x, x_153.y), x_156);
  u_xlat7 = x_157;
  let x_163 : vec4<f32> = vs_TEXCOORD2;
  let x_166 : f32 = x_111.x_GlobalMipBias.x;
  let x_167 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_163.z, x_163.w), x_166);
  u_xlat8 = x_167;
  let x_171 : f32 = u_xlat5.w;
  u_xlat9.x = x_171;
  let x_174 : f32 = u_xlat6.w;
  u_xlat9.y = x_174;
  let x_178 : f32 = u_xlat7.w;
  u_xlat9.z = x_178;
  let x_182 : f32 = u_xlat8.w;
  u_xlat9.w = x_182;
  let x_185 : vec4<f32> = u_xlat9;
  let x_188 : f32 = x_13.x_Smoothness0;
  let x_191 : f32 = x_13.x_Smoothness1;
  let x_194 : f32 = x_13.x_Smoothness2;
  let x_197 : f32 = x_13.x_Smoothness3;
  u_xlat10 = (x_185 * vec4<f32>(x_188, x_191, x_194, x_197));
  let x_206 : f32 = x_13.x_NumLayersCount;
  u_xlatb79 = (4.0f >= x_206);
  let x_209 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_209) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_212 : vec4<f32> = u_xlat9;
  let x_213 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_212 + -(x_213));
  let x_216 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_216 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_220 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_220, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_225 : vec4<f32> = u_xlat4;
  let x_229 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_225 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_229);
  let x_232 : vec4<f32> = u_xlat4;
  let x_233 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_232 + -(x_233));
  let x_238 : f32 = u_xlat12.x;
  let x_241 : f32 = x_13.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_238 * x_241);
  let x_245 : f32 = u_xlat12.y;
  let x_248 : f32 = x_13.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_245 * x_248);
  let x_252 : f32 = u_xlat12.z;
  let x_255 : f32 = x_13.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_252 * x_255);
  let x_259 : f32 = u_xlat12.w;
  let x_262 : f32 = x_13.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_259 * x_262);
  let x_265 : vec4<f32> = u_xlat11;
  let x_266 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_265 + x_266);
  let x_268 : bool = u_xlatb79;
  let x_269 : vec4<f32> = u_xlat11;
  let x_270 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_270, x_269, vec4<bool>(x_268, x_268, x_268, x_268));
  let x_275 : vec4<f32> = u_xlat4;
  u_xlat79 = dot(x_275, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_279 : f32 = u_xlat79;
  u_xlatb80 = (0.00499999988824129105f >= x_279);
  let x_281 : bool = u_xlatb80;
  if (((select(0i, 1i, x_281) * -1i) != 0i)) {
    discard;
  }
  let x_290 : f32 = u_xlat79;
  u_xlat79 = (x_290 + 0.00006103515625f);
  let x_293 : vec4<f32> = u_xlat4;
  let x_294 : f32 = u_xlat79;
  u_xlat4 = (x_293 / vec4<f32>(x_294, x_294, x_294, x_294));
  let x_297 : vec4<f32> = u_xlat4;
  let x_300 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_302 : vec3<f32> = (vec3<f32>(x_297.x, x_297.x, x_297.x) * vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_303 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303.w);
  let x_305 : vec4<f32> = u_xlat4;
  let x_308 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_310 : vec3<f32> = (vec3<f32>(x_305.y, x_305.y, x_305.y) * vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_311 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_313 : vec4<f32> = u_xlat6;
  let x_315 : vec4<f32> = u_xlat12;
  let x_317 : vec3<f32> = (vec3<f32>(x_313.x, x_313.y, x_313.z) * vec3<f32>(x_315.x, x_315.y, x_315.z));
  let x_318 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
  let x_320 : vec4<f32> = u_xlat5;
  let x_322 : vec4<f32> = u_xlat11;
  let x_325 : vec4<f32> = u_xlat6;
  let x_327 : vec3<f32> = ((vec3<f32>(x_320.x, x_320.y, x_320.z) * vec3<f32>(x_322.x, x_322.y, x_322.z)) + vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec4<f32> = u_xlat4;
  let x_333 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_335 : vec3<f32> = (vec3<f32>(x_330.z, x_330.z, x_330.z) * vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_338 : vec4<f32> = u_xlat7;
  let x_340 : vec4<f32> = u_xlat6;
  let x_343 : vec4<f32> = u_xlat5;
  let x_345 : vec3<f32> = ((vec3<f32>(x_338.x, x_338.y, x_338.z) * vec3<f32>(x_340.x, x_340.y, x_340.z)) + vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_346 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_348 : vec4<f32> = u_xlat4;
  let x_351 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_353 : vec3<f32> = (vec3<f32>(x_348.w, x_348.w, x_348.w) * vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_356 : vec4<f32> = u_xlat8;
  let x_358 : vec4<f32> = u_xlat6;
  let x_361 : vec4<f32> = u_xlat5;
  let x_363 : vec3<f32> = ((vec3<f32>(x_356.x, x_356.y, x_356.z) * vec3<f32>(x_358.x, x_358.y, x_358.z)) + vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_371 : vec4<f32> = vs_TEXCOORD1;
  let x_374 : f32 = x_111.x_GlobalMipBias.x;
  let x_375 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_371.x, x_371.y), x_374);
  let x_376 : vec3<f32> = vec3<f32>(x_375.x, x_375.y, x_375.w);
  let x_377 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_380 : f32 = u_xlat6.x;
  let x_382 : f32 = u_xlat6.z;
  u_xlat6.x = (x_380 * x_382);
  let x_385 : vec4<f32> = u_xlat6;
  let x_390 : vec2<f32> = ((vec2<f32>(x_385.x, x_385.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_391 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_390.x, x_390.y, x_391.z, x_391.w);
  let x_393 : vec4<f32> = u_xlat6;
  let x_395 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec2<f32>(x_393.x, x_393.y), vec2<f32>(x_395.x, x_395.y));
  let x_398 : f32 = u_xlat79;
  u_xlat79 = min(x_398, 1.0f);
  let x_400 : f32 = u_xlat79;
  u_xlat79 = (-(x_400) + 1.0f);
  let x_403 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_403);
  let x_405 : f32 = u_xlat79;
  u_xlat7.z = max(x_405, 0.0000000000000001f);
  let x_409 : vec4<f32> = u_xlat6;
  let x_412 : f32 = x_13.x_NormalScale0;
  let x_414 : vec2<f32> = (vec2<f32>(x_409.x, x_409.y) * vec2<f32>(x_412, x_412));
  let x_415 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_414.x, x_414.y, x_415.z, x_415.w);
  let x_421 : vec4<f32> = vs_TEXCOORD1;
  let x_424 : f32 = x_111.x_GlobalMipBias.x;
  let x_425 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_421.z, x_421.w), x_424);
  let x_426 : vec3<f32> = vec3<f32>(x_425.x, x_425.y, x_425.w);
  let x_427 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_430 : f32 = u_xlat6.x;
  let x_432 : f32 = u_xlat6.z;
  u_xlat6.x = (x_430 * x_432);
  let x_435 : vec4<f32> = u_xlat6;
  let x_438 : vec2<f32> = ((vec2<f32>(x_435.x, x_435.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_439 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_438.x, x_438.y, x_439.z, x_439.w);
  let x_441 : vec4<f32> = u_xlat6;
  let x_443 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec2<f32>(x_441.x, x_441.y), vec2<f32>(x_443.x, x_443.y));
  let x_446 : f32 = u_xlat79;
  u_xlat79 = min(x_446, 1.0f);
  let x_448 : f32 = u_xlat79;
  u_xlat79 = (-(x_448) + 1.0f);
  let x_451 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_451);
  let x_453 : f32 = u_xlat79;
  u_xlat8.z = max(x_453, 0.0000000000000001f);
  let x_456 : vec4<f32> = u_xlat6;
  let x_459 : f32 = x_13.x_NormalScale1;
  let x_461 : f32 = x_13.x_NormalScale1;
  let x_462 : vec2<f32> = vec2<f32>(x_459, x_461);
  let x_466 : vec2<f32> = (vec2<f32>(x_456.x, x_456.y) * vec2<f32>(x_462.x, x_462.y));
  let x_467 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_466.x, x_466.y, x_467.z, x_467.w);
  let x_469 : vec4<f32> = u_xlat4;
  let x_471 : vec4<f32> = u_xlat8;
  let x_473 : vec3<f32> = (vec3<f32>(x_469.y, x_469.y, x_469.y) * vec3<f32>(x_471.x, x_471.y, x_471.z));
  let x_474 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  let x_476 : vec4<f32> = u_xlat4;
  let x_478 : vec4<f32> = u_xlat7;
  let x_481 : vec4<f32> = u_xlat6;
  let x_483 : vec3<f32> = ((vec3<f32>(x_476.x, x_476.x, x_476.x) * vec3<f32>(x_478.x, x_478.y, x_478.z)) + vec3<f32>(x_481.x, x_481.y, x_481.z));
  let x_484 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_490 : vec4<f32> = vs_TEXCOORD2;
  let x_493 : f32 = x_111.x_GlobalMipBias.x;
  let x_494 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_490.x, x_490.y), x_493);
  let x_495 : vec3<f32> = vec3<f32>(x_494.x, x_494.y, x_494.w);
  let x_496 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_499 : f32 = u_xlat7.x;
  let x_501 : f32 = u_xlat7.z;
  u_xlat7.x = (x_499 * x_501);
  let x_504 : vec4<f32> = u_xlat7;
  let x_507 : vec2<f32> = ((vec2<f32>(x_504.x, x_504.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_508 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_507.x, x_507.y, x_508.z, x_508.w);
  let x_510 : vec4<f32> = u_xlat7;
  let x_512 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec2<f32>(x_510.x, x_510.y), vec2<f32>(x_512.x, x_512.y));
  let x_515 : f32 = u_xlat79;
  u_xlat79 = min(x_515, 1.0f);
  let x_517 : f32 = u_xlat79;
  u_xlat79 = (-(x_517) + 1.0f);
  let x_520 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_520);
  let x_522 : f32 = u_xlat79;
  u_xlat8.z = max(x_522, 0.0000000000000001f);
  let x_525 : vec4<f32> = u_xlat7;
  let x_529 : f32 = x_13.x_NormalScale2;
  let x_531 : f32 = x_13.x_NormalScale2;
  let x_532 : vec2<f32> = vec2<f32>(x_529, x_531);
  let x_536 : vec2<f32> = (vec2<f32>(x_525.x, x_525.y) * vec2<f32>(x_532.x, x_532.y));
  let x_537 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_536.x, x_536.y, x_537.z, x_537.w);
  let x_539 : vec4<f32> = u_xlat4;
  let x_541 : vec4<f32> = u_xlat8;
  let x_544 : vec4<f32> = u_xlat6;
  let x_546 : vec3<f32> = ((vec3<f32>(x_539.z, x_539.z, x_539.z) * vec3<f32>(x_541.x, x_541.y, x_541.z)) + vec3<f32>(x_544.x, x_544.y, x_544.z));
  let x_547 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
  let x_553 : vec4<f32> = vs_TEXCOORD2;
  let x_556 : f32 = x_111.x_GlobalMipBias.x;
  let x_557 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_553.z, x_553.w), x_556);
  let x_558 : vec3<f32> = vec3<f32>(x_557.x, x_557.y, x_557.w);
  let x_559 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
  let x_562 : f32 = u_xlat7.x;
  let x_564 : f32 = u_xlat7.z;
  u_xlat7.x = (x_562 * x_564);
  let x_567 : vec4<f32> = u_xlat7;
  let x_570 : vec2<f32> = ((vec2<f32>(x_567.x, x_567.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_571 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_570.x, x_570.y, x_571.z, x_571.w);
  let x_573 : vec4<f32> = u_xlat7;
  let x_575 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec2<f32>(x_573.x, x_573.y), vec2<f32>(x_575.x, x_575.y));
  let x_578 : f32 = u_xlat79;
  u_xlat79 = min(x_578, 1.0f);
  let x_580 : f32 = u_xlat79;
  u_xlat79 = (-(x_580) + 1.0f);
  let x_583 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_583);
  let x_585 : f32 = u_xlat79;
  u_xlat8.z = max(x_585, 0.0000000000000001f);
  let x_588 : vec4<f32> = u_xlat7;
  let x_592 : f32 = x_13.x_NormalScale3;
  let x_594 : f32 = x_13.x_NormalScale3;
  let x_595 : vec2<f32> = vec2<f32>(x_592, x_594);
  let x_599 : vec2<f32> = (vec2<f32>(x_588.x, x_588.y) * vec2<f32>(x_595.x, x_595.y));
  let x_600 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_599.x, x_599.y, x_600.z, x_600.w);
  let x_602 : vec4<f32> = u_xlat4;
  let x_604 : vec4<f32> = u_xlat8;
  let x_607 : vec4<f32> = u_xlat6;
  let x_609 : vec3<f32> = ((vec3<f32>(x_602.w, x_602.w, x_602.w) * vec3<f32>(x_604.x, x_604.y, x_604.z)) + vec3<f32>(x_607.x, x_607.y, x_607.z));
  let x_610 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  let x_613 : f32 = u_xlat6.z;
  u_xlat6.w = (x_613 + 0.00000999999974737875f);
  let x_617 : vec4<f32> = u_xlat6;
  let x_619 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec3<f32>(x_617.x, x_617.y, x_617.w), vec3<f32>(x_619.x, x_619.y, x_619.w));
  let x_622 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_622);
  let x_624 : f32 = u_xlat79;
  let x_626 : vec4<f32> = u_xlat6;
  let x_628 : vec3<f32> = (vec3<f32>(x_624, x_624, x_624) * vec3<f32>(x_626.x, x_626.y, x_626.w));
  let x_629 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
  let x_632 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_632;
  let x_635 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_635;
  let x_638 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_638;
  let x_641 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_641;
  let x_644 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_644;
  let x_647 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_647;
  let x_650 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_650;
  let x_653 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_653;
  let x_655 : vec4<f32> = u_xlat7;
  let x_656 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_655 + x_656);
  let x_659 : f32 = u_xlat0.z;
  u_xlat8.x = x_659;
  let x_662 : f32 = u_xlat1.z;
  u_xlat8.y = x_662;
  let x_665 : f32 = u_xlat2.z;
  u_xlat8.z = x_665;
  let x_668 : f32 = u_xlat3.y;
  u_xlat8.w = x_668;
  let x_670 : vec4<f32> = u_xlat9;
  let x_673 : f32 = x_13.x_Smoothness0;
  let x_675 : f32 = x_13.x_Smoothness1;
  let x_677 : f32 = x_13.x_Smoothness2;
  let x_679 : f32 = x_13.x_Smoothness3;
  let x_682 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_670) * vec4<f32>(x_673, x_675, x_677, x_679)) + x_682);
  let x_686 : f32 = x_13.x_LayerHasMask0;
  let x_689 : f32 = x_13.x_LayerHasMask1;
  let x_692 : f32 = x_13.x_LayerHasMask2;
  let x_695 : f32 = x_13.x_LayerHasMask3;
  let x_697 : vec4<f32> = u_xlat8;
  let x_699 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_686, x_689, x_692, x_695) * x_697) + x_699);
  let x_702 : vec4<f32> = u_xlat4;
  let x_703 : vec4<f32> = u_xlat8;
  u_xlat52 = dot(x_702, x_703);
  let x_706 : f32 = u_xlat0.x;
  u_xlat8.x = x_706;
  let x_709 : f32 = u_xlat1.x;
  u_xlat8.y = x_709;
  let x_712 : f32 = u_xlat2.x;
  u_xlat8.z = x_712;
  let x_715 : f32 = u_xlat3.x;
  u_xlat8.w = x_715;
  let x_717 : vec4<f32> = u_xlat8;
  let x_720 : f32 = x_13.x_Metallic0;
  let x_723 : f32 = x_13.x_Metallic1;
  let x_726 : f32 = x_13.x_Metallic2;
  let x_729 : f32 = x_13.x_Metallic3;
  u_xlat8 = (x_717 + -(vec4<f32>(x_720, x_723, x_726, x_729)));
  let x_734 : f32 = x_13.x_LayerHasMask0;
  let x_736 : f32 = x_13.x_LayerHasMask1;
  let x_738 : f32 = x_13.x_LayerHasMask2;
  let x_740 : f32 = x_13.x_LayerHasMask3;
  let x_742 : vec4<f32> = u_xlat8;
  let x_745 : f32 = x_13.x_Metallic0;
  let x_747 : f32 = x_13.x_Metallic1;
  let x_749 : f32 = x_13.x_Metallic2;
  let x_751 : f32 = x_13.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_734, x_736, x_738, x_740) * x_742) + vec4<f32>(x_745, x_747, x_749, x_751));
  let x_754 : vec4<f32> = u_xlat4;
  let x_755 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_754, x_755);
  let x_759 : f32 = u_xlat0.y;
  u_xlat3.x = x_759;
  let x_762 : f32 = u_xlat1.y;
  u_xlat3.y = x_762;
  let x_765 : f32 = u_xlat2.y;
  u_xlat3.z = x_765;
  let x_767 : vec4<f32> = u_xlat7;
  let x_769 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_767) + x_769);
  let x_772 : f32 = x_13.x_LayerHasMask0;
  let x_774 : f32 = x_13.x_LayerHasMask1;
  let x_776 : f32 = x_13.x_LayerHasMask2;
  let x_778 : f32 = x_13.x_LayerHasMask3;
  let x_780 : vec4<f32> = u_xlat1;
  let x_782 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_772, x_774, x_776, x_778) * x_780) + x_782);
  let x_785 : vec4<f32> = u_xlat4;
  let x_786 : vec4<f32> = u_xlat1;
  u_xlat26 = dot(x_785, x_786);
  let x_788 : vec4<f32> = u_xlat6;
  let x_791 : vec4<f32> = vs_TEXCOORD5;
  let x_793 : vec3<f32> = (vec3<f32>(x_788.y, x_788.y, x_788.y) * vec3<f32>(x_791.x, x_791.y, x_791.z));
  let x_794 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  let x_796 : vec4<f32> = u_xlat6;
  let x_799 : vec4<f32> = vs_TEXCOORD4;
  let x_803 : vec4<f32> = u_xlat1;
  let x_805 : vec3<f32> = ((vec3<f32>(x_796.x, x_796.x, x_796.x) * -(vec3<f32>(x_799.x, x_799.y, x_799.z))) + vec3<f32>(x_803.x, x_803.y, x_803.z));
  let x_806 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_808 : vec4<f32> = u_xlat6;
  let x_811 : vec4<f32> = vs_TEXCOORD3;
  let x_814 : vec4<f32> = u_xlat1;
  let x_816 : vec3<f32> = ((vec3<f32>(x_808.z, x_808.z, x_808.z) * vec3<f32>(x_811.x, x_811.y, x_811.z)) + vec3<f32>(x_814.x, x_814.y, x_814.z));
  let x_817 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_816.x, x_816.y, x_816.z, x_817.w);
  let x_819 : vec4<f32> = u_xlat1;
  let x_821 : vec4<f32> = u_xlat1;
  u_xlat79 = dot(vec3<f32>(x_819.x, x_819.y, x_819.z), vec3<f32>(x_821.x, x_821.y, x_821.z));
  let x_824 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_824);
  let x_826 : f32 = u_xlat79;
  let x_828 : vec4<f32> = u_xlat1;
  let x_830 : vec3<f32> = (vec3<f32>(x_826, x_826, x_826) * vec3<f32>(x_828.x, x_828.y, x_828.z));
  let x_831 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
  let x_837 : f32 = vs_TEXCOORD7.y;
  let x_839 : f32 = x_111.unity_MatrixV[1i].z;
  u_xlat2.x = (x_837 * x_839);
  let x_843 : f32 = x_111.unity_MatrixV[0i].z;
  let x_845 : f32 = vs_TEXCOORD7.x;
  let x_848 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_843 * x_845) + x_848);
  let x_852 : f32 = x_111.unity_MatrixV[2i].z;
  let x_854 : f32 = vs_TEXCOORD7.z;
  let x_857 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_852 * x_854) + x_857);
  let x_861 : f32 = u_xlat2.x;
  let x_863 : f32 = x_111.unity_MatrixV[3i].z;
  u_xlat2.x = (x_861 + x_863);
  let x_867 : f32 = u_xlat2.x;
  let x_870 : f32 = x_111.x_ProjectionParams.y;
  u_xlat2.x = (-(x_867) + -(x_870));
  let x_875 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_875, 0.0f);
  let x_879 : f32 = u_xlat2.x;
  let x_881 : f32 = x_111.unity_FogParams.x;
  u_xlat2.x = (x_879 * x_881);
  u_xlat1.w = 1.0f;
  let x_890 : vec4<f32> = x_888.unity_SHAr;
  let x_891 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_890, x_891);
  let x_895 : vec4<f32> = x_888.unity_SHAg;
  let x_896 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_895, x_896);
  let x_900 : vec4<f32> = x_888.unity_SHAb;
  let x_901 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_900, x_901);
  let x_904 : vec4<f32> = u_xlat1;
  let x_906 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_904.y, x_904.z, x_904.z, x_904.x) * vec4<f32>(x_906.x, x_906.y, x_906.z, x_906.z));
  let x_910 : vec4<f32> = x_888.unity_SHBr;
  let x_911 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_910, x_911);
  let x_915 : vec4<f32> = x_888.unity_SHBg;
  let x_916 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_915, x_916);
  let x_920 : vec4<f32> = x_888.unity_SHBb;
  let x_921 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_920, x_921);
  let x_925 : f32 = u_xlat1.y;
  let x_927 : f32 = u_xlat1.y;
  u_xlat79 = (x_925 * x_927);
  let x_930 : f32 = u_xlat1.x;
  let x_932 : f32 = u_xlat1.x;
  let x_934 : f32 = u_xlat79;
  u_xlat79 = ((x_930 * x_932) + -(x_934));
  let x_940 : vec4<f32> = x_888.unity_SHC;
  let x_942 : f32 = u_xlat79;
  let x_945 : vec4<f32> = u_xlat6;
  u_xlat28 = ((vec3<f32>(x_940.x, x_940.y, x_940.z) * vec3<f32>(x_942, x_942, x_942)) + vec3<f32>(x_945.x, x_945.y, x_945.z));
  let x_948 : vec3<f32> = u_xlat28;
  let x_949 : vec4<f32> = u_xlat3;
  u_xlat28 = (x_948 + vec3<f32>(x_949.x, x_949.y, x_949.z));
  let x_952 : vec3<f32> = u_xlat28;
  u_xlat28 = max(x_952, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_956 : f32 = u_xlat0.x;
  u_xlat79 = ((-(x_956) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_961 : f32 = u_xlat52;
  let x_962 : f32 = u_xlat79;
  u_xlat3.x = (x_961 + -(x_962));
  let x_967 : f32 = u_xlat79;
  let x_969 : vec4<f32> = u_xlat5;
  u_xlat29 = (vec3<f32>(x_967, x_967, x_967) * vec3<f32>(x_969.x, x_969.y, x_969.z));
  let x_972 : vec4<f32> = u_xlat5;
  let x_976 : vec3<f32> = (vec3<f32>(x_972.x, x_972.y, x_972.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_977 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_976.x, x_976.y, x_976.z, x_977.w);
  let x_979 : vec3<f32> = u_xlat0;
  let x_981 : vec4<f32> = u_xlat4;
  let x_986 : vec3<f32> = ((vec3<f32>(x_979.x, x_979.x, x_979.x) * vec3<f32>(x_981.x, x_981.y, x_981.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_987 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_986.x, x_986.y, x_986.z, x_987.w);
  let x_989 : f32 = u_xlat52;
  u_xlat0.x = (-(x_989) + 1.0f);
  let x_994 : f32 = u_xlat0.x;
  let x_996 : f32 = u_xlat0.x;
  u_xlat52 = (x_994 * x_996);
  let x_998 : f32 = u_xlat52;
  u_xlat52 = max(x_998, 0.0078125f);
  let x_1001 : f32 = u_xlat52;
  let x_1002 : f32 = u_xlat52;
  u_xlat79 = (x_1001 * x_1002);
  let x_1005 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1005 + 1.0f);
  let x_1009 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1009, 0.0f, 1.0f);
  let x_1013 : f32 = u_xlat52;
  u_xlat82 = ((x_1013 * 4.0f) + 2.0f);
  let x_1016 : f32 = u_xlat26;
  u_xlat26 = min(x_1016, 1.0f);
  let x_1028 : f32 = x_1026.x_MainLightShadowParams.y;
  u_xlatb5 = (0.0f < x_1028);
  let x_1030 : bool = u_xlatb5;
  if (x_1030) {
    let x_1034 : f32 = x_1026.x_MainLightShadowParams.y;
    u_xlatb5 = (x_1034 == 1.0f);
    let x_1036 : bool = u_xlatb5;
    if (x_1036) {
      let x_1040 : vec4<f32> = vs_TEXCOORD8;
      let x_1043 : vec4<f32> = x_1026.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_1040.x, x_1040.y, x_1040.x, x_1040.y) + x_1043);
      let x_1047 : vec4<f32> = u_xlat5;
      let x_1048 : vec2<f32> = vec2<f32>(x_1047.x, x_1047.y);
      let x_1050 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_1048.x, x_1048.y, x_1050);
      let x_1062 : vec3<f32> = txVec0;
      let x_1064 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1062.xy, x_1062.z);
      u_xlat6.x = x_1064;
      let x_1067 : vec4<f32> = u_xlat5;
      let x_1068 : vec2<f32> = vec2<f32>(x_1067.z, x_1067.w);
      let x_1070 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_1068.x, x_1068.y, x_1070);
      let x_1077 : vec3<f32> = txVec1;
      let x_1079 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1077.xy, x_1077.z);
      u_xlat6.y = x_1079;
      let x_1081 : vec4<f32> = vs_TEXCOORD8;
      let x_1084 : vec4<f32> = x_1026.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_1081.x, x_1081.y, x_1081.x, x_1081.y) + x_1084);
      let x_1087 : vec4<f32> = u_xlat5;
      let x_1088 : vec2<f32> = vec2<f32>(x_1087.x, x_1087.y);
      let x_1090 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_1088.x, x_1088.y, x_1090);
      let x_1097 : vec3<f32> = txVec2;
      let x_1099 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1097.xy, x_1097.z);
      u_xlat6.z = x_1099;
      let x_1102 : vec4<f32> = u_xlat5;
      let x_1103 : vec2<f32> = vec2<f32>(x_1102.z, x_1102.w);
      let x_1105 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_1103.x, x_1103.y, x_1105);
      let x_1112 : vec3<f32> = txVec3;
      let x_1114 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1112.xy, x_1112.z);
      u_xlat6.w = x_1114;
      let x_1116 : vec4<f32> = u_xlat6;
      u_xlat5.x = dot(x_1116, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1124 : f32 = x_1026.x_MainLightShadowParams.y;
      u_xlatb31 = (x_1124 == 2.0f);
      let x_1126 : bool = u_xlatb31;
      if (x_1126) {
        let x_1130 : vec4<f32> = vs_TEXCOORD8;
        let x_1133 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1136 : vec2<f32> = ((vec2<f32>(x_1130.x, x_1130.y) * vec2<f32>(x_1133.z, x_1133.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1137 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1136.x, x_1136.y, x_1137.z);
        let x_1139 : vec3<f32> = u_xlat31;
        let x_1141 : vec2<f32> = floor(vec2<f32>(x_1139.x, x_1139.y));
        let x_1142 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1141.x, x_1141.y, x_1142.z);
        let x_1144 : vec4<f32> = vs_TEXCOORD8;
        let x_1147 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1150 : vec3<f32> = u_xlat31;
        let x_1153 : vec2<f32> = ((vec2<f32>(x_1144.x, x_1144.y) * vec2<f32>(x_1147.z, x_1147.w)) + -(vec2<f32>(x_1150.x, x_1150.y)));
        let x_1154 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1153.x, x_1153.y, x_1154.z, x_1154.w);
        let x_1156 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1156.x, x_1156.x, x_1156.y, x_1156.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1160 : vec4<f32> = u_xlat7;
        let x_1162 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1160.x, x_1160.x, x_1160.z, x_1160.z) * vec4<f32>(x_1162.x, x_1162.x, x_1162.z, x_1162.z));
        let x_1167 : vec4<f32> = u_xlat8;
        u_xlat58 = (vec2<f32>(x_1167.y, x_1167.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1172 : vec4<f32> = u_xlat8;
        let x_1175 : vec4<f32> = u_xlat6;
        let x_1178 : vec2<f32> = ((vec2<f32>(x_1172.x, x_1172.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1175.x, x_1175.y)));
        let x_1179 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1178.x, x_1179.y, x_1178.y, x_1179.w);
        let x_1181 : vec4<f32> = u_xlat6;
        let x_1185 : vec2<f32> = (-(vec2<f32>(x_1181.x, x_1181.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1186 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1185.x, x_1185.y, x_1186.z, x_1186.w);
        let x_1189 : vec4<f32> = u_xlat6;
        u_xlat60 = min(vec2<f32>(x_1189.x, x_1189.y), vec2<f32>(0.0f, 0.0f));
        let x_1193 : vec2<f32> = u_xlat60;
        let x_1195 : vec2<f32> = u_xlat60;
        let x_1197 : vec4<f32> = u_xlat8;
        u_xlat60 = ((-(x_1193) * x_1195) + vec2<f32>(x_1197.x, x_1197.y));
        let x_1200 : vec4<f32> = u_xlat6;
        let x_1202 : vec2<f32> = max(vec2<f32>(x_1200.x, x_1200.y), vec2<f32>(0.0f, 0.0f));
        let x_1203 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1202.x, x_1202.y, x_1203.z, x_1203.w);
        let x_1205 : vec4<f32> = u_xlat6;
        let x_1208 : vec4<f32> = u_xlat6;
        let x_1211 : vec4<f32> = u_xlat7;
        let x_1213 : vec2<f32> = ((-(vec2<f32>(x_1205.x, x_1205.y)) * vec2<f32>(x_1208.x, x_1208.y)) + vec2<f32>(x_1211.y, x_1211.w));
        let x_1214 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1213.x, x_1213.y, x_1214.z, x_1214.w);
        let x_1216 : vec2<f32> = u_xlat60;
        u_xlat60 = (x_1216 + vec2<f32>(1.0f, 1.0f));
        let x_1218 : vec4<f32> = u_xlat6;
        let x_1220 : vec2<f32> = (vec2<f32>(x_1218.x, x_1218.y) + vec2<f32>(1.0f, 1.0f));
        let x_1221 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1220.x, x_1220.y, x_1221.z, x_1221.w);
        let x_1223 : vec4<f32> = u_xlat7;
        let x_1227 : vec2<f32> = (vec2<f32>(x_1223.x, x_1223.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1228 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1227.x, x_1227.y, x_1228.z, x_1228.w);
        let x_1230 : vec4<f32> = u_xlat8;
        let x_1232 : vec2<f32> = (vec2<f32>(x_1230.x, x_1230.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1233 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1232.x, x_1232.y, x_1233.z, x_1233.w);
        let x_1235 : vec2<f32> = u_xlat60;
        let x_1236 : vec2<f32> = (x_1235 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1237 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1236.x, x_1236.y, x_1237.z, x_1237.w);
        let x_1239 : vec4<f32> = u_xlat6;
        let x_1241 : vec2<f32> = (vec2<f32>(x_1239.x, x_1239.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1242 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1241.x, x_1241.y, x_1242.z, x_1242.w);
        let x_1244 : vec4<f32> = u_xlat7;
        let x_1246 : vec2<f32> = (vec2<f32>(x_1244.y, x_1244.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1247 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1246.x, x_1246.y, x_1247.z, x_1247.w);
        let x_1250 : f32 = u_xlat8.x;
        u_xlat9.z = x_1250;
        let x_1253 : f32 = u_xlat6.x;
        u_xlat9.w = x_1253;
        let x_1256 : f32 = u_xlat11.x;
        u_xlat10.z = x_1256;
        let x_1259 : f32 = u_xlat58.x;
        u_xlat10.w = x_1259;
        let x_1261 : vec4<f32> = u_xlat9;
        let x_1263 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1261.z, x_1261.w, x_1261.x, x_1261.z) + vec4<f32>(x_1263.z, x_1263.w, x_1263.x, x_1263.z));
        let x_1267 : f32 = u_xlat9.y;
        u_xlat8.z = x_1267;
        let x_1270 : f32 = u_xlat6.y;
        u_xlat8.w = x_1270;
        let x_1273 : f32 = u_xlat10.y;
        u_xlat11.z = x_1273;
        let x_1276 : f32 = u_xlat58.y;
        u_xlat11.w = x_1276;
        let x_1278 : vec4<f32> = u_xlat8;
        let x_1280 : vec4<f32> = u_xlat11;
        let x_1282 : vec3<f32> = (vec3<f32>(x_1278.z, x_1278.y, x_1278.w) + vec3<f32>(x_1280.z, x_1280.y, x_1280.w));
        let x_1283 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1282.x, x_1282.y, x_1282.z, x_1283.w);
        let x_1285 : vec4<f32> = u_xlat10;
        let x_1287 : vec4<f32> = u_xlat7;
        let x_1289 : vec3<f32> = (vec3<f32>(x_1285.x, x_1285.z, x_1285.w) / vec3<f32>(x_1287.z, x_1287.w, x_1287.y));
        let x_1290 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1289.x, x_1289.y, x_1289.z, x_1290.w);
        let x_1292 : vec4<f32> = u_xlat8;
        let x_1298 : vec3<f32> = (vec3<f32>(x_1292.x, x_1292.y, x_1292.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1299 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1298.x, x_1298.y, x_1298.z, x_1299.w);
        let x_1301 : vec4<f32> = u_xlat11;
        let x_1303 : vec4<f32> = u_xlat6;
        let x_1305 : vec3<f32> = (vec3<f32>(x_1301.z, x_1301.y, x_1301.w) / vec3<f32>(x_1303.x, x_1303.y, x_1303.z));
        let x_1306 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1305.x, x_1305.y, x_1305.z, x_1306.w);
        let x_1308 : vec4<f32> = u_xlat9;
        let x_1310 : vec3<f32> = (vec3<f32>(x_1308.x, x_1308.y, x_1308.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1311 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1310.x, x_1310.y, x_1310.z, x_1311.w);
        let x_1313 : vec4<f32> = u_xlat8;
        let x_1316 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1318 : vec3<f32> = (vec3<f32>(x_1313.y, x_1313.x, x_1313.z) * vec3<f32>(x_1316.x, x_1316.x, x_1316.x));
        let x_1319 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1318.x, x_1318.y, x_1318.z, x_1319.w);
        let x_1321 : vec4<f32> = u_xlat9;
        let x_1324 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1326 : vec3<f32> = (vec3<f32>(x_1321.x, x_1321.y, x_1321.z) * vec3<f32>(x_1324.y, x_1324.y, x_1324.y));
        let x_1327 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1326.x, x_1326.y, x_1326.z, x_1327.w);
        let x_1330 : f32 = u_xlat9.x;
        u_xlat8.w = x_1330;
        let x_1332 : vec3<f32> = u_xlat31;
        let x_1335 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1338 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1332.x, x_1332.y, x_1332.x, x_1332.y) * vec4<f32>(x_1335.x, x_1335.y, x_1335.x, x_1335.y)) + vec4<f32>(x_1338.y, x_1338.w, x_1338.x, x_1338.w));
        let x_1341 : vec3<f32> = u_xlat31;
        let x_1344 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1347 : vec4<f32> = u_xlat8;
        let x_1349 : vec2<f32> = ((vec2<f32>(x_1341.x, x_1341.y) * vec2<f32>(x_1344.x, x_1344.y)) + vec2<f32>(x_1347.z, x_1347.w));
        let x_1350 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1349.x, x_1349.y, x_1350.z, x_1350.w);
        let x_1353 : f32 = u_xlat8.y;
        u_xlat9.w = x_1353;
        let x_1355 : vec4<f32> = u_xlat9;
        let x_1356 : vec2<f32> = vec2<f32>(x_1355.y, x_1355.z);
        let x_1357 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1357.x, x_1356.x, x_1357.z, x_1356.y);
        let x_1359 : vec3<f32> = u_xlat31;
        let x_1362 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1365 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_1359.x, x_1359.y, x_1359.x, x_1359.y) * vec4<f32>(x_1362.x, x_1362.y, x_1362.x, x_1362.y)) + vec4<f32>(x_1365.x, x_1365.y, x_1365.z, x_1365.y));
        let x_1368 : vec3<f32> = u_xlat31;
        let x_1371 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1374 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1368.x, x_1368.y, x_1368.x, x_1368.y) * vec4<f32>(x_1371.x, x_1371.y, x_1371.x, x_1371.y)) + vec4<f32>(x_1374.w, x_1374.y, x_1374.w, x_1374.z));
        let x_1377 : vec3<f32> = u_xlat31;
        let x_1380 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1383 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1377.x, x_1377.y, x_1377.x, x_1377.y) * vec4<f32>(x_1380.x, x_1380.y, x_1380.x, x_1380.y)) + vec4<f32>(x_1383.x, x_1383.w, x_1383.z, x_1383.w));
        let x_1386 : vec4<f32> = u_xlat6;
        let x_1388 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_1386.x, x_1386.x, x_1386.x, x_1386.y) * vec4<f32>(x_1388.z, x_1388.w, x_1388.y, x_1388.z));
        let x_1392 : vec4<f32> = u_xlat6;
        let x_1394 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_1392.y, x_1392.y, x_1392.z, x_1392.z) * x_1394);
        let x_1397 : f32 = u_xlat6.z;
        let x_1399 : f32 = u_xlat7.y;
        u_xlat31.x = (x_1397 * x_1399);
        let x_1403 : vec4<f32> = u_xlat10;
        let x_1404 : vec2<f32> = vec2<f32>(x_1403.x, x_1403.y);
        let x_1406 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1404.x, x_1404.y, x_1406);
        let x_1414 : vec3<f32> = txVec4;
        let x_1416 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1414.xy, x_1414.z);
        u_xlat57.x = x_1416;
        let x_1419 : vec4<f32> = u_xlat10;
        let x_1420 : vec2<f32> = vec2<f32>(x_1419.z, x_1419.w);
        let x_1422 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1420.x, x_1420.y, x_1422);
        let x_1430 : vec3<f32> = txVec5;
        let x_1432 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1430.xy, x_1430.z);
        u_xlat83 = x_1432;
        let x_1433 : f32 = u_xlat83;
        let x_1435 : f32 = u_xlat13.y;
        u_xlat83 = (x_1433 * x_1435);
        let x_1438 : f32 = u_xlat13.x;
        let x_1440 : f32 = u_xlat57.x;
        let x_1442 : f32 = u_xlat83;
        u_xlat57.x = ((x_1438 * x_1440) + x_1442);
        let x_1446 : vec4<f32> = u_xlat11;
        let x_1447 : vec2<f32> = vec2<f32>(x_1446.x, x_1446.y);
        let x_1449 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1447.x, x_1447.y, x_1449);
        let x_1456 : vec3<f32> = txVec6;
        let x_1458 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1456.xy, x_1456.z);
        u_xlat83 = x_1458;
        let x_1460 : f32 = u_xlat13.z;
        let x_1461 : f32 = u_xlat83;
        let x_1464 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1460 * x_1461) + x_1464);
        let x_1468 : vec4<f32> = u_xlat9;
        let x_1469 : vec2<f32> = vec2<f32>(x_1468.x, x_1468.y);
        let x_1471 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1469.x, x_1469.y, x_1471);
        let x_1478 : vec3<f32> = txVec7;
        let x_1480 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1478.xy, x_1478.z);
        u_xlat83 = x_1480;
        let x_1482 : f32 = u_xlat13.w;
        let x_1483 : f32 = u_xlat83;
        let x_1486 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1482 * x_1483) + x_1486);
        let x_1490 : vec4<f32> = u_xlat12;
        let x_1491 : vec2<f32> = vec2<f32>(x_1490.x, x_1490.y);
        let x_1493 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1491.x, x_1491.y, x_1493);
        let x_1500 : vec3<f32> = txVec8;
        let x_1502 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1500.xy, x_1500.z);
        u_xlat83 = x_1502;
        let x_1504 : f32 = u_xlat14.x;
        let x_1505 : f32 = u_xlat83;
        let x_1508 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1504 * x_1505) + x_1508);
        let x_1512 : vec4<f32> = u_xlat12;
        let x_1513 : vec2<f32> = vec2<f32>(x_1512.z, x_1512.w);
        let x_1515 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1513.x, x_1513.y, x_1515);
        let x_1522 : vec3<f32> = txVec9;
        let x_1524 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1522.xy, x_1522.z);
        u_xlat83 = x_1524;
        let x_1526 : f32 = u_xlat14.y;
        let x_1527 : f32 = u_xlat83;
        let x_1530 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1526 * x_1527) + x_1530);
        let x_1534 : vec4<f32> = u_xlat9;
        let x_1535 : vec2<f32> = vec2<f32>(x_1534.z, x_1534.w);
        let x_1537 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1535.x, x_1535.y, x_1537);
        let x_1544 : vec3<f32> = txVec10;
        let x_1546 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1544.xy, x_1544.z);
        u_xlat83 = x_1546;
        let x_1548 : f32 = u_xlat14.z;
        let x_1549 : f32 = u_xlat83;
        let x_1552 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1548 * x_1549) + x_1552);
        let x_1556 : vec4<f32> = u_xlat8;
        let x_1557 : vec2<f32> = vec2<f32>(x_1556.x, x_1556.y);
        let x_1559 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1557.x, x_1557.y, x_1559);
        let x_1566 : vec3<f32> = txVec11;
        let x_1568 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1566.xy, x_1566.z);
        u_xlat83 = x_1568;
        let x_1570 : f32 = u_xlat14.w;
        let x_1571 : f32 = u_xlat83;
        let x_1574 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1570 * x_1571) + x_1574);
        let x_1578 : vec4<f32> = u_xlat8;
        let x_1579 : vec2<f32> = vec2<f32>(x_1578.z, x_1578.w);
        let x_1581 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1579.x, x_1579.y, x_1581);
        let x_1588 : vec3<f32> = txVec12;
        let x_1590 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1588.xy, x_1588.z);
        u_xlat83 = x_1590;
        let x_1592 : f32 = u_xlat31.x;
        let x_1593 : f32 = u_xlat83;
        let x_1596 : f32 = u_xlat57.x;
        u_xlat5.x = ((x_1592 * x_1593) + x_1596);
      } else {
        let x_1600 : vec4<f32> = vs_TEXCOORD8;
        let x_1603 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1606 : vec2<f32> = ((vec2<f32>(x_1600.x, x_1600.y) * vec2<f32>(x_1603.z, x_1603.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1607 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1606.x, x_1606.y, x_1607.z);
        let x_1609 : vec3<f32> = u_xlat31;
        let x_1611 : vec2<f32> = floor(vec2<f32>(x_1609.x, x_1609.y));
        let x_1612 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1611.x, x_1611.y, x_1612.z);
        let x_1614 : vec4<f32> = vs_TEXCOORD8;
        let x_1617 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1620 : vec3<f32> = u_xlat31;
        let x_1623 : vec2<f32> = ((vec2<f32>(x_1614.x, x_1614.y) * vec2<f32>(x_1617.z, x_1617.w)) + -(vec2<f32>(x_1620.x, x_1620.y)));
        let x_1624 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1623.x, x_1623.y, x_1624.z, x_1624.w);
        let x_1626 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1626.x, x_1626.x, x_1626.y, x_1626.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1629 : vec4<f32> = u_xlat7;
        let x_1631 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1629.x, x_1629.x, x_1629.z, x_1629.z) * vec4<f32>(x_1631.x, x_1631.x, x_1631.z, x_1631.z));
        let x_1634 : vec4<f32> = u_xlat8;
        let x_1638 : vec2<f32> = (vec2<f32>(x_1634.y, x_1634.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1639 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1639.x, x_1638.x, x_1639.z, x_1638.y);
        let x_1641 : vec4<f32> = u_xlat8;
        let x_1644 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1641.x, x_1641.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1644.x, x_1644.y)));
        let x_1648 : vec4<f32> = u_xlat6;
        let x_1651 : vec2<f32> = (-(vec2<f32>(x_1648.x, x_1648.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1652 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1651.x, x_1652.y, x_1651.y, x_1652.w);
        let x_1654 : vec4<f32> = u_xlat6;
        let x_1656 : vec2<f32> = min(vec2<f32>(x_1654.x, x_1654.y), vec2<f32>(0.0f, 0.0f));
        let x_1657 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1656.x, x_1656.y, x_1657.z, x_1657.w);
        let x_1659 : vec4<f32> = u_xlat8;
        let x_1662 : vec4<f32> = u_xlat8;
        let x_1665 : vec4<f32> = u_xlat7;
        let x_1667 : vec2<f32> = ((-(vec2<f32>(x_1659.x, x_1659.y)) * vec2<f32>(x_1662.x, x_1662.y)) + vec2<f32>(x_1665.x, x_1665.z));
        let x_1668 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1667.x, x_1668.y, x_1667.y, x_1668.w);
        let x_1670 : vec4<f32> = u_xlat6;
        let x_1672 : vec2<f32> = max(vec2<f32>(x_1670.x, x_1670.y), vec2<f32>(0.0f, 0.0f));
        let x_1673 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1672.x, x_1672.y, x_1673.z, x_1673.w);
        let x_1675 : vec4<f32> = u_xlat8;
        let x_1678 : vec4<f32> = u_xlat8;
        let x_1681 : vec4<f32> = u_xlat7;
        let x_1683 : vec2<f32> = ((-(vec2<f32>(x_1675.x, x_1675.y)) * vec2<f32>(x_1678.x, x_1678.y)) + vec2<f32>(x_1681.y, x_1681.w));
        let x_1684 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1684.x, x_1683.x, x_1684.z, x_1683.y);
        let x_1686 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1686 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1690 : f32 = u_xlat7.y;
        u_xlat8.z = (x_1690 * 0.08163200318813323975f);
        let x_1694 : vec2<f32> = u_xlat58;
        let x_1697 : vec2<f32> = (vec2<f32>(x_1694.y, x_1694.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1698 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1697.x, x_1697.y, x_1698.z, x_1698.w);
        let x_1700 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_1700.x, x_1700.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1704 : f32 = u_xlat7.w;
        u_xlat10.z = (x_1704 * 0.08163200318813323975f);
        let x_1708 : f32 = u_xlat10.y;
        u_xlat8.x = x_1708;
        let x_1710 : vec4<f32> = u_xlat6;
        let x_1717 : vec2<f32> = ((vec2<f32>(x_1710.x, x_1710.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1718 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1718.x, x_1717.x, x_1718.z, x_1717.y);
        let x_1720 : vec4<f32> = u_xlat6;
        let x_1724 : vec2<f32> = ((vec2<f32>(x_1720.x, x_1720.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1725 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1724.x, x_1725.y, x_1724.y, x_1725.w);
        let x_1728 : f32 = u_xlat58.x;
        u_xlat7.y = x_1728;
        let x_1731 : f32 = u_xlat9.y;
        u_xlat7.w = x_1731;
        let x_1733 : vec4<f32> = u_xlat7;
        let x_1734 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1733 + x_1734);
        let x_1736 : vec4<f32> = u_xlat6;
        let x_1739 : vec2<f32> = ((vec2<f32>(x_1736.y, x_1736.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1740 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1740.x, x_1739.x, x_1740.z, x_1739.y);
        let x_1742 : vec4<f32> = u_xlat6;
        let x_1745 : vec2<f32> = ((vec2<f32>(x_1742.y, x_1742.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1746 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1745.x, x_1746.y, x_1745.y, x_1746.w);
        let x_1749 : f32 = u_xlat58.y;
        u_xlat9.y = x_1749;
        let x_1751 : vec4<f32> = u_xlat9;
        let x_1752 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1751 + x_1752);
        let x_1754 : vec4<f32> = u_xlat7;
        let x_1755 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1754 / x_1755);
        let x_1757 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1757 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1763 : vec4<f32> = u_xlat9;
        let x_1764 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1763 / x_1764);
        let x_1766 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1766 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1768 : vec4<f32> = u_xlat7;
        let x_1771 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1768.w, x_1768.x, x_1768.y, x_1768.z) * vec4<f32>(x_1771.x, x_1771.x, x_1771.x, x_1771.x));
        let x_1774 : vec4<f32> = u_xlat9;
        let x_1777 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1774.x, x_1774.w, x_1774.y, x_1774.z) * vec4<f32>(x_1777.y, x_1777.y, x_1777.y, x_1777.y));
        let x_1780 : vec4<f32> = u_xlat7;
        let x_1781 : vec3<f32> = vec3<f32>(x_1780.y, x_1780.z, x_1780.w);
        let x_1782 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1781.x, x_1782.y, x_1781.y, x_1781.z);
        let x_1785 : f32 = u_xlat9.x;
        u_xlat10.y = x_1785;
        let x_1787 : vec3<f32> = u_xlat31;
        let x_1790 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1793 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1787.x, x_1787.y, x_1787.x, x_1787.y) * vec4<f32>(x_1790.x, x_1790.y, x_1790.x, x_1790.y)) + vec4<f32>(x_1793.x, x_1793.y, x_1793.z, x_1793.y));
        let x_1796 : vec3<f32> = u_xlat31;
        let x_1799 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1802 : vec4<f32> = u_xlat10;
        let x_1804 : vec2<f32> = ((vec2<f32>(x_1796.x, x_1796.y) * vec2<f32>(x_1799.x, x_1799.y)) + vec2<f32>(x_1802.w, x_1802.y));
        let x_1805 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1804.x, x_1804.y, x_1805.z, x_1805.w);
        let x_1808 : f32 = u_xlat10.y;
        u_xlat7.y = x_1808;
        let x_1811 : f32 = u_xlat9.z;
        u_xlat10.y = x_1811;
        let x_1813 : vec3<f32> = u_xlat31;
        let x_1816 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1819 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1813.x, x_1813.y, x_1813.x, x_1813.y) * vec4<f32>(x_1816.x, x_1816.y, x_1816.x, x_1816.y)) + vec4<f32>(x_1819.x, x_1819.y, x_1819.z, x_1819.y));
        let x_1823 : vec3<f32> = u_xlat31;
        let x_1826 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1829 : vec4<f32> = u_xlat10;
        u_xlat64 = ((vec2<f32>(x_1823.x, x_1823.y) * vec2<f32>(x_1826.x, x_1826.y)) + vec2<f32>(x_1829.w, x_1829.y));
        let x_1833 : f32 = u_xlat10.y;
        u_xlat7.z = x_1833;
        let x_1835 : vec3<f32> = u_xlat31;
        let x_1838 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1841 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1835.x, x_1835.y, x_1835.x, x_1835.y) * vec4<f32>(x_1838.x, x_1838.y, x_1838.x, x_1838.y)) + vec4<f32>(x_1841.x, x_1841.y, x_1841.x, x_1841.z));
        let x_1845 : f32 = u_xlat9.w;
        u_xlat10.y = x_1845;
        let x_1848 : vec3<f32> = u_xlat31;
        let x_1851 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1854 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1848.x, x_1848.y, x_1848.x, x_1848.y) * vec4<f32>(x_1851.x, x_1851.y, x_1851.x, x_1851.y)) + vec4<f32>(x_1854.x, x_1854.y, x_1854.z, x_1854.y));
        let x_1858 : vec3<f32> = u_xlat31;
        let x_1861 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1864 : vec4<f32> = u_xlat10;
        u_xlat33 = ((vec2<f32>(x_1858.x, x_1858.y) * vec2<f32>(x_1861.x, x_1861.y)) + vec2<f32>(x_1864.w, x_1864.y));
        let x_1868 : f32 = u_xlat10.y;
        u_xlat7.w = x_1868;
        let x_1871 : vec3<f32> = u_xlat31;
        let x_1874 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1877 : vec4<f32> = u_xlat7;
        let x_1879 : vec2<f32> = ((vec2<f32>(x_1871.x, x_1871.y) * vec2<f32>(x_1874.x, x_1874.y)) + vec2<f32>(x_1877.x, x_1877.w));
        let x_1880 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1879.x, x_1879.y, x_1880.z, x_1880.w);
        let x_1882 : vec4<f32> = u_xlat10;
        let x_1883 : vec3<f32> = vec3<f32>(x_1882.x, x_1882.z, x_1882.w);
        let x_1884 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1883.x, x_1884.y, x_1883.y, x_1883.z);
        let x_1886 : vec3<f32> = u_xlat31;
        let x_1889 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1892 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1886.x, x_1886.y, x_1886.x, x_1886.y) * vec4<f32>(x_1889.x, x_1889.y, x_1889.x, x_1889.y)) + vec4<f32>(x_1892.x, x_1892.y, x_1892.z, x_1892.y));
        let x_1896 : vec3<f32> = u_xlat31;
        let x_1899 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1902 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1896.x, x_1896.y) * vec2<f32>(x_1899.x, x_1899.y)) + vec2<f32>(x_1902.w, x_1902.y));
        let x_1906 : f32 = u_xlat7.x;
        u_xlat9.x = x_1906;
        let x_1908 : vec3<f32> = u_xlat31;
        let x_1911 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1914 : vec4<f32> = u_xlat9;
        let x_1916 : vec2<f32> = ((vec2<f32>(x_1908.x, x_1908.y) * vec2<f32>(x_1911.x, x_1911.y)) + vec2<f32>(x_1914.x, x_1914.y));
        let x_1917 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1916.x, x_1916.y, x_1917.z);
        let x_1920 : vec4<f32> = u_xlat6;
        let x_1922 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1920.x, x_1920.x, x_1920.x, x_1920.x) * x_1922);
        let x_1925 : vec4<f32> = u_xlat6;
        let x_1927 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1925.y, x_1925.y, x_1925.y, x_1925.y) * x_1927);
        let x_1930 : vec4<f32> = u_xlat6;
        let x_1932 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1930.z, x_1930.z, x_1930.z, x_1930.z) * x_1932);
        let x_1934 : vec4<f32> = u_xlat6;
        let x_1936 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1934.w, x_1934.w, x_1934.w, x_1934.w) * x_1936);
        let x_1939 : vec4<f32> = u_xlat11;
        let x_1940 : vec2<f32> = vec2<f32>(x_1939.x, x_1939.y);
        let x_1942 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1940.x, x_1940.y, x_1942);
        let x_1949 : vec3<f32> = txVec13;
        let x_1951 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1949.xy, x_1949.z);
        u_xlat83 = x_1951;
        let x_1953 : vec4<f32> = u_xlat11;
        let x_1954 : vec2<f32> = vec2<f32>(x_1953.z, x_1953.w);
        let x_1956 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1954.x, x_1954.y, x_1956);
        let x_1963 : vec3<f32> = txVec14;
        let x_1965 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1963.xy, x_1963.z);
        u_xlat7.x = x_1965;
        let x_1968 : f32 = u_xlat7.x;
        let x_1970 : f32 = u_xlat17.y;
        u_xlat7.x = (x_1968 * x_1970);
        let x_1974 : f32 = u_xlat17.x;
        let x_1975 : f32 = u_xlat83;
        let x_1978 : f32 = u_xlat7.x;
        u_xlat83 = ((x_1974 * x_1975) + x_1978);
        let x_1981 : vec4<f32> = u_xlat12;
        let x_1982 : vec2<f32> = vec2<f32>(x_1981.x, x_1981.y);
        let x_1984 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1982.x, x_1982.y, x_1984);
        let x_1991 : vec3<f32> = txVec15;
        let x_1993 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1991.xy, x_1991.z);
        u_xlat7.x = x_1993;
        let x_1996 : f32 = u_xlat17.z;
        let x_1998 : f32 = u_xlat7.x;
        let x_2000 : f32 = u_xlat83;
        u_xlat83 = ((x_1996 * x_1998) + x_2000);
        let x_2003 : vec4<f32> = u_xlat14;
        let x_2004 : vec2<f32> = vec2<f32>(x_2003.x, x_2003.y);
        let x_2006 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_2004.x, x_2004.y, x_2006);
        let x_2013 : vec3<f32> = txVec16;
        let x_2015 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2013.xy, x_2013.z);
        u_xlat7.x = x_2015;
        let x_2018 : f32 = u_xlat17.w;
        let x_2020 : f32 = u_xlat7.x;
        let x_2022 : f32 = u_xlat83;
        u_xlat83 = ((x_2018 * x_2020) + x_2022);
        let x_2025 : vec4<f32> = u_xlat13;
        let x_2026 : vec2<f32> = vec2<f32>(x_2025.x, x_2025.y);
        let x_2028 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_2026.x, x_2026.y, x_2028);
        let x_2035 : vec3<f32> = txVec17;
        let x_2037 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2035.xy, x_2035.z);
        u_xlat7.x = x_2037;
        let x_2040 : f32 = u_xlat18.x;
        let x_2042 : f32 = u_xlat7.x;
        let x_2044 : f32 = u_xlat83;
        u_xlat83 = ((x_2040 * x_2042) + x_2044);
        let x_2047 : vec4<f32> = u_xlat13;
        let x_2048 : vec2<f32> = vec2<f32>(x_2047.z, x_2047.w);
        let x_2050 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_2048.x, x_2048.y, x_2050);
        let x_2057 : vec3<f32> = txVec18;
        let x_2059 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2057.xy, x_2057.z);
        u_xlat7.x = x_2059;
        let x_2062 : f32 = u_xlat18.y;
        let x_2064 : f32 = u_xlat7.x;
        let x_2066 : f32 = u_xlat83;
        u_xlat83 = ((x_2062 * x_2064) + x_2066);
        let x_2069 : vec2<f32> = u_xlat64;
        let x_2071 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_2069.x, x_2069.y, x_2071);
        let x_2078 : vec3<f32> = txVec19;
        let x_2080 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2078.xy, x_2078.z);
        u_xlat7.x = x_2080;
        let x_2083 : f32 = u_xlat18.z;
        let x_2085 : f32 = u_xlat7.x;
        let x_2087 : f32 = u_xlat83;
        u_xlat83 = ((x_2083 * x_2085) + x_2087);
        let x_2090 : vec4<f32> = u_xlat14;
        let x_2091 : vec2<f32> = vec2<f32>(x_2090.z, x_2090.w);
        let x_2093 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_2091.x, x_2091.y, x_2093);
        let x_2100 : vec3<f32> = txVec20;
        let x_2102 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2100.xy, x_2100.z);
        u_xlat7.x = x_2102;
        let x_2105 : f32 = u_xlat18.w;
        let x_2107 : f32 = u_xlat7.x;
        let x_2109 : f32 = u_xlat83;
        u_xlat83 = ((x_2105 * x_2107) + x_2109);
        let x_2112 : vec4<f32> = u_xlat15;
        let x_2113 : vec2<f32> = vec2<f32>(x_2112.x, x_2112.y);
        let x_2115 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_2113.x, x_2113.y, x_2115);
        let x_2122 : vec3<f32> = txVec21;
        let x_2124 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2122.xy, x_2122.z);
        u_xlat7.x = x_2124;
        let x_2127 : f32 = u_xlat19.x;
        let x_2129 : f32 = u_xlat7.x;
        let x_2131 : f32 = u_xlat83;
        u_xlat83 = ((x_2127 * x_2129) + x_2131);
        let x_2134 : vec4<f32> = u_xlat15;
        let x_2135 : vec2<f32> = vec2<f32>(x_2134.z, x_2134.w);
        let x_2137 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_2135.x, x_2135.y, x_2137);
        let x_2144 : vec3<f32> = txVec22;
        let x_2146 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2144.xy, x_2144.z);
        u_xlat7.x = x_2146;
        let x_2149 : f32 = u_xlat19.y;
        let x_2151 : f32 = u_xlat7.x;
        let x_2153 : f32 = u_xlat83;
        u_xlat83 = ((x_2149 * x_2151) + x_2153);
        let x_2156 : vec2<f32> = u_xlat33;
        let x_2158 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_2156.x, x_2156.y, x_2158);
        let x_2165 : vec3<f32> = txVec23;
        let x_2167 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2165.xy, x_2165.z);
        u_xlat7.x = x_2167;
        let x_2170 : f32 = u_xlat19.z;
        let x_2172 : f32 = u_xlat7.x;
        let x_2174 : f32 = u_xlat83;
        u_xlat83 = ((x_2170 * x_2172) + x_2174);
        let x_2177 : vec4<f32> = u_xlat16;
        let x_2178 : vec2<f32> = vec2<f32>(x_2177.x, x_2177.y);
        let x_2180 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_2178.x, x_2178.y, x_2180);
        let x_2187 : vec3<f32> = txVec24;
        let x_2189 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2187.xy, x_2187.z);
        u_xlat7.x = x_2189;
        let x_2192 : f32 = u_xlat19.w;
        let x_2194 : f32 = u_xlat7.x;
        let x_2196 : f32 = u_xlat83;
        u_xlat83 = ((x_2192 * x_2194) + x_2196);
        let x_2199 : vec4<f32> = u_xlat10;
        let x_2200 : vec2<f32> = vec2<f32>(x_2199.x, x_2199.y);
        let x_2202 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_2200.x, x_2200.y, x_2202);
        let x_2209 : vec3<f32> = txVec25;
        let x_2211 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2209.xy, x_2209.z);
        u_xlat7.x = x_2211;
        let x_2214 : f32 = u_xlat6.x;
        let x_2216 : f32 = u_xlat7.x;
        let x_2218 : f32 = u_xlat83;
        u_xlat83 = ((x_2214 * x_2216) + x_2218);
        let x_2221 : vec4<f32> = u_xlat10;
        let x_2222 : vec2<f32> = vec2<f32>(x_2221.z, x_2221.w);
        let x_2224 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_2222.x, x_2222.y, x_2224);
        let x_2231 : vec3<f32> = txVec26;
        let x_2233 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2231.xy, x_2231.z);
        u_xlat6.x = x_2233;
        let x_2236 : f32 = u_xlat6.y;
        let x_2238 : f32 = u_xlat6.x;
        let x_2240 : f32 = u_xlat83;
        u_xlat83 = ((x_2236 * x_2238) + x_2240);
        let x_2243 : vec2<f32> = u_xlat61;
        let x_2245 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_2243.x, x_2243.y, x_2245);
        let x_2252 : vec3<f32> = txVec27;
        let x_2254 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2252.xy, x_2252.z);
        u_xlat6.x = x_2254;
        let x_2257 : f32 = u_xlat6.z;
        let x_2259 : f32 = u_xlat6.x;
        let x_2261 : f32 = u_xlat83;
        u_xlat83 = ((x_2257 * x_2259) + x_2261);
        let x_2264 : vec3<f32> = u_xlat31;
        let x_2265 : vec2<f32> = vec2<f32>(x_2264.x, x_2264.y);
        let x_2267 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2265.x, x_2265.y, x_2267);
        let x_2274 : vec3<f32> = txVec28;
        let x_2276 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2274.xy, x_2274.z);
        u_xlat31.x = x_2276;
        let x_2279 : f32 = u_xlat6.w;
        let x_2281 : f32 = u_xlat31.x;
        let x_2283 : f32 = u_xlat83;
        u_xlat5.x = ((x_2279 * x_2281) + x_2283);
      }
    }
  } else {
    let x_2288 : vec4<f32> = vs_TEXCOORD8;
    let x_2289 : vec2<f32> = vec2<f32>(x_2288.x, x_2288.y);
    let x_2291 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2289.x, x_2289.y, x_2291);
    let x_2298 : vec3<f32> = txVec29;
    let x_2300 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2298.xy, x_2298.z);
    u_xlat5.x = x_2300;
  }
  let x_2303 : f32 = x_1026.x_MainLightShadowParams.x;
  u_xlat31.x = (-(x_2303) + 1.0f);
  let x_2308 : f32 = u_xlat5.x;
  let x_2310 : f32 = x_1026.x_MainLightShadowParams.x;
  let x_2313 : f32 = u_xlat31.x;
  u_xlat5.x = ((x_2308 * x_2310) + x_2313);
  let x_2317 : f32 = vs_TEXCOORD8.z;
  u_xlatb31 = (0.0f >= x_2317);
  let x_2323 : f32 = vs_TEXCOORD8.z;
  u_xlatb57.x = (x_2323 >= 1.0f);
  let x_2327 : bool = u_xlatb57.x;
  let x_2328 : bool = u_xlatb31;
  u_xlatb31 = (x_2327 | x_2328);
  let x_2330 : bool = u_xlatb31;
  if (x_2330) {
    x_2332 = 1.0f;
  } else {
    let x_2337 : f32 = u_xlat5.x;
    x_2332 = x_2337;
  }
  let x_2338 : f32 = x_2332;
  u_xlat5.x = x_2338;
  let x_2340 : vec3<f32> = vs_TEXCOORD7;
  let x_2343 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  u_xlat31 = (x_2340 + -(x_2343));
  let x_2346 : vec3<f32> = u_xlat31;
  let x_2347 : vec3<f32> = u_xlat31;
  u_xlat31.x = dot(x_2346, x_2347);
  let x_2351 : f32 = u_xlat31.x;
  let x_2353 : f32 = x_1026.x_MainLightShadowParams.z;
  let x_2356 : f32 = x_1026.x_MainLightShadowParams.w;
  u_xlat57.x = ((x_2351 * x_2353) + x_2356);
  let x_2360 : f32 = u_xlat57.x;
  u_xlat57.x = clamp(x_2360, 0.0f, 1.0f);
  let x_2364 : f32 = u_xlat5.x;
  u_xlat83 = (-(x_2364) + 1.0f);
  let x_2368 : f32 = u_xlat57.x;
  let x_2369 : f32 = u_xlat83;
  let x_2372 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_2368 * x_2369) + x_2372);
  let x_2382 : f32 = x_2380.x_MainLightCookieTextureFormat;
  u_xlatb57.x = !((x_2382 == -1.0f));
  let x_2386 : bool = u_xlatb57.x;
  if (x_2386) {
    let x_2389 : vec3<f32> = vs_TEXCOORD7;
    let x_2392 : vec4<f32> = x_2380.x_MainLightWorldToLight[1i];
    u_xlat57 = (vec2<f32>(x_2389.y, x_2389.y) * vec2<f32>(x_2392.x, x_2392.y));
    let x_2396 : vec4<f32> = x_2380.x_MainLightWorldToLight[0i];
    let x_2398 : vec3<f32> = vs_TEXCOORD7;
    let x_2401 : vec2<f32> = u_xlat57;
    u_xlat57 = ((vec2<f32>(x_2396.x, x_2396.y) * vec2<f32>(x_2398.x, x_2398.x)) + x_2401);
    let x_2404 : vec4<f32> = x_2380.x_MainLightWorldToLight[2i];
    let x_2406 : vec3<f32> = vs_TEXCOORD7;
    let x_2409 : vec2<f32> = u_xlat57;
    u_xlat57 = ((vec2<f32>(x_2404.x, x_2404.y) * vec2<f32>(x_2406.z, x_2406.z)) + x_2409);
    let x_2411 : vec2<f32> = u_xlat57;
    let x_2413 : vec4<f32> = x_2380.x_MainLightWorldToLight[3i];
    u_xlat57 = (x_2411 + vec2<f32>(x_2413.x, x_2413.y));
    let x_2416 : vec2<f32> = u_xlat57;
    u_xlat57 = ((x_2416 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2424 : vec2<f32> = u_xlat57;
    let x_2426 : f32 = x_111.x_GlobalMipBias.x;
    let x_2427 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_2424, x_2426);
    u_xlat6 = x_2427;
    let x_2429 : f32 = x_2380.x_MainLightCookieTextureFormat;
    let x_2431 : f32 = x_2380.x_MainLightCookieTextureFormat;
    let x_2433 : f32 = x_2380.x_MainLightCookieTextureFormat;
    let x_2435 : f32 = x_2380.x_MainLightCookieTextureFormat;
    let x_2436 : vec4<f32> = vec4<f32>(x_2429, x_2431, x_2433, x_2435);
    let x_2443 : vec4<bool> = (vec4<f32>(x_2436.x, x_2436.y, x_2436.z, x_2436.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb57 = vec2<bool>(x_2443.x, x_2443.y);
    let x_2446 : bool = u_xlatb57.y;
    if (x_2446) {
      let x_2451 : f32 = u_xlat6.w;
      x_2447 = x_2451;
    } else {
      let x_2454 : f32 = u_xlat6.x;
      x_2447 = x_2454;
    }
    let x_2455 : f32 = x_2447;
    u_xlat83 = x_2455;
    let x_2457 : bool = u_xlatb57.x;
    if (x_2457) {
      let x_2461 : vec4<f32> = u_xlat6;
      x_2458 = vec3<f32>(x_2461.x, x_2461.y, x_2461.z);
    } else {
      let x_2464 : f32 = u_xlat83;
      x_2458 = vec3<f32>(x_2464, x_2464, x_2464);
    }
    let x_2466 : vec3<f32> = x_2458;
    let x_2467 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2466.x, x_2466.y, x_2466.z, x_2467.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2473 : vec4<f32> = u_xlat6;
  let x_2476 : vec4<f32> = x_111.x_MainLightColor;
  let x_2478 : vec3<f32> = (vec3<f32>(x_2473.x, x_2473.y, x_2473.z) * vec3<f32>(x_2476.x, x_2476.y, x_2476.z));
  let x_2479 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2478.x, x_2478.y, x_2478.z, x_2479.w);
  let x_2482 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_2482;
  let x_2485 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_2485;
  let x_2488 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_2488;
  let x_2490 : vec4<f32> = u_xlat7;
  let x_2493 : vec4<f32> = u_xlat1;
  u_xlat57.x = dot(-(vec3<f32>(x_2490.x, x_2490.y, x_2490.z)), vec3<f32>(x_2493.x, x_2493.y, x_2493.z));
  let x_2498 : f32 = u_xlat57.x;
  let x_2500 : f32 = u_xlat57.x;
  u_xlat57.x = (x_2498 + x_2500);
  let x_2503 : vec4<f32> = u_xlat1;
  let x_2505 : vec2<f32> = u_xlat57;
  let x_2509 : vec4<f32> = u_xlat7;
  let x_2512 : vec3<f32> = ((vec3<f32>(x_2503.x, x_2503.y, x_2503.z) * -(vec3<f32>(x_2505.x, x_2505.x, x_2505.x))) + -(vec3<f32>(x_2509.x, x_2509.y, x_2509.z)));
  let x_2513 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2512.x, x_2512.y, x_2512.z, x_2513.w);
  let x_2515 : vec4<f32> = u_xlat1;
  let x_2517 : vec4<f32> = u_xlat7;
  u_xlat57.x = dot(vec3<f32>(x_2515.x, x_2515.y, x_2515.z), vec3<f32>(x_2517.x, x_2517.y, x_2517.z));
  let x_2522 : f32 = u_xlat57.x;
  u_xlat57.x = clamp(x_2522, 0.0f, 1.0f);
  let x_2526 : f32 = u_xlat57.x;
  u_xlat57.x = (-(x_2526) + 1.0f);
  let x_2531 : f32 = u_xlat57.x;
  let x_2533 : f32 = u_xlat57.x;
  u_xlat57.x = (x_2531 * x_2533);
  let x_2537 : f32 = u_xlat57.x;
  let x_2539 : f32 = u_xlat57.x;
  u_xlat57.x = (x_2537 * x_2539);
  let x_2543 : f32 = u_xlat0.x;
  u_xlat83 = ((-(x_2543) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2550 : f32 = u_xlat0.x;
  let x_2551 : f32 = u_xlat83;
  u_xlat0.x = (x_2550 * x_2551);
  let x_2555 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2555 * 6.0f);
  let x_2567 : vec4<f32> = u_xlat8;
  let x_2570 : f32 = u_xlat0.x;
  let x_2571 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2567.x, x_2567.y, x_2567.z), x_2570);
  u_xlat8 = x_2571;
  let x_2573 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2573 + -1.0f);
  let x_2577 : f32 = x_888.unity_SpecCube0_HDR.w;
  let x_2579 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2577 * x_2579) + 1.0f);
  let x_2584 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2584, 0.0f);
  let x_2588 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2588);
  let x_2592 : f32 = u_xlat0.x;
  let x_2594 : f32 = x_888.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2592 * x_2594);
  let x_2598 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2598);
  let x_2602 : f32 = u_xlat0.x;
  let x_2604 : f32 = x_888.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2602 * x_2604);
  let x_2607 : vec4<f32> = u_xlat8;
  let x_2609 : vec3<f32> = u_xlat0;
  let x_2611 : vec3<f32> = (vec3<f32>(x_2607.x, x_2607.y, x_2607.z) * vec3<f32>(x_2609.x, x_2609.x, x_2609.x));
  let x_2612 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2611.x, x_2611.y, x_2611.z, x_2612.w);
  let x_2614 : f32 = u_xlat52;
  let x_2616 : f32 = u_xlat52;
  let x_2620 : vec2<f32> = ((vec2<f32>(x_2614, x_2614) * vec2<f32>(x_2616, x_2616)) + vec2<f32>(-1.0f, 1.0f));
  let x_2621 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2620.x, x_2621.y, x_2620.y);
  let x_2624 : f32 = u_xlat0.z;
  u_xlat52 = (1.0f / x_2624);
  let x_2626 : vec4<f32> = u_xlat4;
  let x_2629 : vec4<f32> = u_xlat3;
  let x_2631 : vec3<f32> = (-(vec3<f32>(x_2626.x, x_2626.y, x_2626.z)) + vec3<f32>(x_2629.x, x_2629.x, x_2629.x));
  let x_2632 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2631.x, x_2631.y, x_2631.z, x_2632.w);
  let x_2634 : vec2<f32> = u_xlat57;
  let x_2636 : vec4<f32> = u_xlat9;
  let x_2639 : vec4<f32> = u_xlat4;
  let x_2641 : vec3<f32> = ((vec3<f32>(x_2634.x, x_2634.x, x_2634.x) * vec3<f32>(x_2636.x, x_2636.y, x_2636.z)) + vec3<f32>(x_2639.x, x_2639.y, x_2639.z));
  let x_2642 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2641.x, x_2641.y, x_2641.z, x_2642.w);
  let x_2644 : f32 = u_xlat52;
  let x_2646 : vec4<f32> = u_xlat9;
  let x_2648 : vec3<f32> = (vec3<f32>(x_2644, x_2644, x_2644) * vec3<f32>(x_2646.x, x_2646.y, x_2646.z));
  let x_2649 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2648.x, x_2648.y, x_2648.z, x_2649.w);
  let x_2651 : vec4<f32> = u_xlat8;
  let x_2653 : vec4<f32> = u_xlat9;
  let x_2655 : vec3<f32> = (vec3<f32>(x_2651.x, x_2651.y, x_2651.z) * vec3<f32>(x_2653.x, x_2653.y, x_2653.z));
  let x_2656 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2655.x, x_2655.y, x_2655.z, x_2656.w);
  let x_2658 : vec3<f32> = u_xlat28;
  let x_2659 : vec3<f32> = u_xlat29;
  let x_2661 : vec4<f32> = u_xlat8;
  u_xlat28 = ((x_2658 * x_2659) + vec3<f32>(x_2661.x, x_2661.y, x_2661.z));
  let x_2665 : f32 = u_xlat5.x;
  let x_2667 : f32 = x_888.unity_LightData.z;
  u_xlat52 = (x_2665 * x_2667);
  let x_2669 : vec4<f32> = u_xlat1;
  let x_2672 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_2669.x, x_2669.y, x_2669.z), vec3<f32>(x_2672.x, x_2672.y, x_2672.z));
  let x_2677 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2677, 0.0f, 1.0f);
  let x_2680 : f32 = u_xlat52;
  let x_2682 : f32 = u_xlat3.x;
  u_xlat52 = (x_2680 * x_2682);
  let x_2684 : f32 = u_xlat52;
  let x_2686 : vec4<f32> = u_xlat6;
  let x_2688 : vec3<f32> = (vec3<f32>(x_2684, x_2684, x_2684) * vec3<f32>(x_2686.x, x_2686.y, x_2686.z));
  let x_2689 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2688.x, x_2689.y, x_2688.y, x_2688.z);
  let x_2691 : vec4<f32> = u_xlat7;
  let x_2694 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2696 : vec3<f32> = (vec3<f32>(x_2691.x, x_2691.y, x_2691.z) + vec3<f32>(x_2694.x, x_2694.y, x_2694.z));
  let x_2697 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2696.x, x_2696.y, x_2696.z, x_2697.w);
  let x_2699 : vec4<f32> = u_xlat6;
  let x_2701 : vec4<f32> = u_xlat6;
  u_xlat52 = dot(vec3<f32>(x_2699.x, x_2699.y, x_2699.z), vec3<f32>(x_2701.x, x_2701.y, x_2701.z));
  let x_2704 : f32 = u_xlat52;
  u_xlat52 = max(x_2704, 1.17549435e-38f);
  let x_2707 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_2707);
  let x_2709 : f32 = u_xlat52;
  let x_2711 : vec4<f32> = u_xlat6;
  let x_2713 : vec3<f32> = (vec3<f32>(x_2709, x_2709, x_2709) * vec3<f32>(x_2711.x, x_2711.y, x_2711.z));
  let x_2714 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2713.x, x_2713.y, x_2713.z, x_2714.w);
  let x_2716 : vec4<f32> = u_xlat1;
  let x_2718 : vec4<f32> = u_xlat6;
  u_xlat52 = dot(vec3<f32>(x_2716.x, x_2716.y, x_2716.z), vec3<f32>(x_2718.x, x_2718.y, x_2718.z));
  let x_2721 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2721, 0.0f, 1.0f);
  let x_2724 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2726 : vec4<f32> = u_xlat6;
  u_xlat3.x = dot(vec3<f32>(x_2724.x, x_2724.y, x_2724.z), vec3<f32>(x_2726.x, x_2726.y, x_2726.z));
  let x_2731 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2731, 0.0f, 1.0f);
  let x_2734 : f32 = u_xlat52;
  let x_2735 : f32 = u_xlat52;
  u_xlat52 = (x_2734 * x_2735);
  let x_2737 : f32 = u_xlat52;
  let x_2739 : f32 = u_xlat0.x;
  u_xlat52 = ((x_2737 * x_2739) + 1.00001001358032226562f);
  let x_2744 : f32 = u_xlat3.x;
  let x_2746 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2744 * x_2746);
  let x_2749 : f32 = u_xlat52;
  let x_2750 : f32 = u_xlat52;
  u_xlat52 = (x_2749 * x_2750);
  let x_2753 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2753, 0.10000000149011611938f);
  let x_2757 : f32 = u_xlat52;
  let x_2759 : f32 = u_xlat3.x;
  u_xlat52 = (x_2757 * x_2759);
  let x_2761 : f32 = u_xlat82;
  let x_2762 : f32 = u_xlat52;
  u_xlat52 = (x_2761 * x_2762);
  let x_2764 : f32 = u_xlat79;
  let x_2765 : f32 = u_xlat52;
  u_xlat52 = (x_2764 / x_2765);
  let x_2767 : vec4<f32> = u_xlat4;
  let x_2769 : f32 = u_xlat52;
  let x_2772 : vec3<f32> = u_xlat29;
  let x_2773 : vec3<f32> = ((vec3<f32>(x_2767.x, x_2767.y, x_2767.z) * vec3<f32>(x_2769, x_2769, x_2769)) + x_2772);
  let x_2774 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2773.x, x_2773.y, x_2773.z, x_2774.w);
  let x_2776 : vec4<f32> = u_xlat5;
  let x_2778 : vec4<f32> = u_xlat6;
  let x_2780 : vec3<f32> = (vec3<f32>(x_2776.x, x_2776.z, x_2776.w) * vec3<f32>(x_2778.x, x_2778.y, x_2778.z));
  let x_2781 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2780.x, x_2781.y, x_2780.y, x_2780.z);
  let x_2784 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_2786 : f32 = x_888.unity_LightData.y;
  u_xlat52 = min(x_2784, x_2786);
  let x_2790 : f32 = u_xlat52;
  u_xlatu52 = bitcast<u32>(i32(x_2790));
  let x_2794 : f32 = u_xlat31.x;
  let x_2796 : f32 = x_1026.x_AdditionalShadowFadeParams.x;
  let x_2799 : f32 = x_1026.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_2794 * x_2796) + x_2799);
  let x_2803 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2803, 0.0f, 1.0f);
  let x_2808 : f32 = x_2380.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2810 : f32 = x_2380.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2812 : f32 = x_2380.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2814 : f32 = x_2380.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2815 : vec4<f32> = vec4<f32>(x_2808, x_2810, x_2812, x_2814);
  let x_2822 : vec4<bool> = (vec4<f32>(x_2815.x, x_2815.y, x_2815.z, x_2815.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2822.x, x_2822.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2834 : u32 = u_xlatu_loop_1;
    let x_2835 : u32 = u_xlatu52;
    if ((x_2834 < x_2835)) {
    } else {
      break;
    }
    let x_2838 : u32 = u_xlatu_loop_1;
    u_xlatu58 = (x_2838 >> 2u);
    let x_2842 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2842 & 3u));
    let x_2845 : u32 = u_xlatu58;
    let x_2848 : vec4<f32> = x_888.unity_LightIndices[bitcast<i32>(x_2845)];
    let x_2858 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2863 : vec4<u32> = indexable[x_2858];
    u_xlat58.x = dot(x_2848, bitcast<vec4<f32>>(x_2863));
    let x_2869 : f32 = u_xlat58.x;
    u_xlati58 = i32(x_2869);
    let x_2871 : vec3<f32> = vs_TEXCOORD7;
    let x_2882 : i32 = u_xlati58;
    let x_2884 : vec4<f32> = x_2881.x_AdditionalLightsPosition[x_2882];
    let x_2887 : i32 = u_xlati58;
    let x_2889 : vec4<f32> = x_2881.x_AdditionalLightsPosition[x_2887];
    let x_2891 : vec3<f32> = ((-(x_2871) * vec3<f32>(x_2884.w, x_2884.w, x_2884.w)) + vec3<f32>(x_2889.x, x_2889.y, x_2889.z));
    let x_2892 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2891.x, x_2891.y, x_2891.z, x_2892.w);
    let x_2895 : vec4<f32> = u_xlat9;
    let x_2897 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2895.x, x_2895.y, x_2895.z), vec3<f32>(x_2897.x, x_2897.y, x_2897.z));
    let x_2900 : f32 = u_xlat84;
    u_xlat84 = max(x_2900, 0.00006103515625f);
    let x_2903 : f32 = u_xlat84;
    u_xlat85 = inverseSqrt(x_2903);
    let x_2905 : f32 = u_xlat85;
    let x_2907 : vec4<f32> = u_xlat9;
    let x_2909 : vec3<f32> = (vec3<f32>(x_2905, x_2905, x_2905) * vec3<f32>(x_2907.x, x_2907.y, x_2907.z));
    let x_2910 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2909.x, x_2909.y, x_2909.z, x_2910.w);
    let x_2913 : f32 = u_xlat84;
    u_xlat86 = (1.0f / x_2913);
    let x_2915 : f32 = u_xlat84;
    let x_2916 : i32 = u_xlati58;
    let x_2918 : f32 = x_2881.x_AdditionalLightsAttenuation[x_2916].x;
    u_xlat84 = (x_2915 * x_2918);
    let x_2920 : f32 = u_xlat84;
    let x_2922 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2920) * x_2922) + 1.0f);
    let x_2925 : f32 = u_xlat84;
    u_xlat84 = max(x_2925, 0.0f);
    let x_2927 : f32 = u_xlat84;
    let x_2928 : f32 = u_xlat84;
    u_xlat84 = (x_2927 * x_2928);
    let x_2930 : f32 = u_xlat84;
    let x_2931 : f32 = u_xlat86;
    u_xlat84 = (x_2930 * x_2931);
    let x_2933 : i32 = u_xlati58;
    let x_2935 : vec4<f32> = x_2881.x_AdditionalLightsSpotDir[x_2933];
    let x_2937 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_2935.x, x_2935.y, x_2935.z), vec3<f32>(x_2937.x, x_2937.y, x_2937.z));
    let x_2940 : f32 = u_xlat86;
    let x_2941 : i32 = u_xlati58;
    let x_2943 : f32 = x_2881.x_AdditionalLightsAttenuation[x_2941].z;
    let x_2945 : i32 = u_xlati58;
    let x_2947 : f32 = x_2881.x_AdditionalLightsAttenuation[x_2945].w;
    u_xlat86 = ((x_2940 * x_2943) + x_2947);
    let x_2949 : f32 = u_xlat86;
    u_xlat86 = clamp(x_2949, 0.0f, 1.0f);
    let x_2951 : f32 = u_xlat86;
    let x_2952 : f32 = u_xlat86;
    u_xlat86 = (x_2951 * x_2952);
    let x_2954 : f32 = u_xlat84;
    let x_2955 : f32 = u_xlat86;
    u_xlat84 = (x_2954 * x_2955);
    let x_2958 : i32 = u_xlati58;
    let x_2960 : f32 = x_1026.x_AdditionalShadowParams[x_2958].w;
    u_xlati86 = i32(x_2960);
    let x_2963 : i32 = u_xlati86;
    u_xlatb87 = (x_2963 >= 0i);
    let x_2965 : bool = u_xlatb87;
    if (x_2965) {
      let x_2969 : i32 = u_xlati58;
      let x_2971 : f32 = x_1026.x_AdditionalShadowParams[x_2969].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2971, x_2971, x_2971, x_2971))));
      let x_2975 : bool = u_xlatb87;
      if (x_2975) {
        let x_2980 : vec4<f32> = u_xlat10;
        let x_2983 : vec4<f32> = u_xlat10;
        let x_2986 : vec4<bool> = (abs(vec4<f32>(x_2980.z, x_2980.z, x_2980.y, x_2980.z)) >= abs(vec4<f32>(x_2983.x, x_2983.y, x_2983.x, x_2983.x)));
        let x_2988 : vec3<bool> = vec3<bool>(x_2986.x, x_2986.y, x_2986.z);
        let x_2989 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2988.x, x_2988.y, x_2988.z, x_2989.w);
        let x_2992 : bool = u_xlatb11.y;
        let x_2994 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2992 & x_2994);
        let x_2996 : vec4<f32> = u_xlat10;
        let x_2999 : vec4<bool> = (-(vec4<f32>(x_2996.z, x_2996.y, x_2996.z, x_2996.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3000 : vec3<bool> = vec3<bool>(x_2999.x, x_2999.y, x_2999.w);
        let x_3001 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3000.x, x_3000.y, x_3001.z, x_3000.z);
        let x_3004 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3004);
        let x_3009 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3009);
        let x_3015 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_3015);
        let x_3018 : bool = u_xlatb11.z;
        if (x_3018) {
          let x_3023 : f32 = u_xlat11.y;
          x_3019 = x_3023;
        } else {
          let x_3025 : f32 = u_xlat88;
          x_3019 = x_3025;
        }
        let x_3026 : f32 = x_3019;
        u_xlat88 = x_3026;
        let x_3028 : bool = u_xlatb87;
        if (x_3028) {
          let x_3033 : f32 = u_xlat11.x;
          x_3029 = x_3033;
        } else {
          let x_3035 : f32 = u_xlat88;
          x_3029 = x_3035;
        }
        let x_3036 : f32 = x_3029;
        u_xlat87 = x_3036;
        let x_3037 : i32 = u_xlati58;
        let x_3039 : f32 = x_1026.x_AdditionalShadowParams[x_3037].w;
        u_xlat88 = trunc(x_3039);
        let x_3041 : f32 = u_xlat87;
        let x_3042 : f32 = u_xlat88;
        u_xlat87 = (x_3041 + x_3042);
        let x_3044 : f32 = u_xlat87;
        u_xlati86 = i32(x_3044);
      }
      let x_3046 : i32 = u_xlati86;
      u_xlati86 = (x_3046 << bitcast<u32>(2i));
      let x_3048 : vec3<f32> = vs_TEXCOORD7;
      let x_3050 : i32 = u_xlati86;
      let x_3053 : i32 = u_xlati86;
      let x_3057 : vec4<f32> = x_1026.x_AdditionalLightsWorldToShadow[((x_3050 + 1i) / 4i)][((x_3053 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3048.y, x_3048.y, x_3048.y, x_3048.y) * x_3057);
      let x_3059 : i32 = u_xlati86;
      let x_3061 : i32 = u_xlati86;
      let x_3064 : vec4<f32> = x_1026.x_AdditionalLightsWorldToShadow[(x_3059 / 4i)][(x_3061 % 4i)];
      let x_3065 : vec3<f32> = vs_TEXCOORD7;
      let x_3068 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3064 * vec4<f32>(x_3065.x, x_3065.x, x_3065.x, x_3065.x)) + x_3068);
      let x_3070 : i32 = u_xlati86;
      let x_3073 : i32 = u_xlati86;
      let x_3077 : vec4<f32> = x_1026.x_AdditionalLightsWorldToShadow[((x_3070 + 2i) / 4i)][((x_3073 + 2i) % 4i)];
      let x_3078 : vec3<f32> = vs_TEXCOORD7;
      let x_3081 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3077 * vec4<f32>(x_3078.z, x_3078.z, x_3078.z, x_3078.z)) + x_3081);
      let x_3083 : vec4<f32> = u_xlat11;
      let x_3084 : i32 = u_xlati86;
      let x_3087 : i32 = u_xlati86;
      let x_3091 : vec4<f32> = x_1026.x_AdditionalLightsWorldToShadow[((x_3084 + 3i) / 4i)][((x_3087 + 3i) % 4i)];
      u_xlat11 = (x_3083 + x_3091);
      let x_3093 : vec4<f32> = u_xlat11;
      let x_3095 : vec4<f32> = u_xlat11;
      let x_3097 : vec3<f32> = (vec3<f32>(x_3093.x, x_3093.y, x_3093.z) / vec3<f32>(x_3095.w, x_3095.w, x_3095.w));
      let x_3098 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3097.x, x_3097.y, x_3097.z, x_3098.w);
      let x_3101 : i32 = u_xlati58;
      let x_3103 : f32 = x_1026.x_AdditionalShadowParams[x_3101].y;
      u_xlatb86 = (0.0f < x_3103);
      let x_3105 : bool = u_xlatb86;
      if (x_3105) {
        let x_3108 : i32 = u_xlati58;
        let x_3110 : f32 = x_1026.x_AdditionalShadowParams[x_3108].y;
        u_xlatb86 = (1.0f == x_3110);
        let x_3112 : bool = u_xlatb86;
        if (x_3112) {
          let x_3115 : vec4<f32> = u_xlat11;
          let x_3118 : vec4<f32> = x_1026.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3115.x, x_3115.y, x_3115.x, x_3115.y) + x_3118);
          let x_3121 : vec4<f32> = u_xlat12;
          let x_3122 : vec2<f32> = vec2<f32>(x_3121.x, x_3121.y);
          let x_3124 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_3122.x, x_3122.y, x_3124);
          let x_3132 : vec3<f32> = txVec30;
          let x_3134 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3132.xy, x_3132.z);
          u_xlat13.x = x_3134;
          let x_3137 : vec4<f32> = u_xlat12;
          let x_3138 : vec2<f32> = vec2<f32>(x_3137.z, x_3137.w);
          let x_3140 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_3138.x, x_3138.y, x_3140);
          let x_3147 : vec3<f32> = txVec31;
          let x_3149 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3147.xy, x_3147.z);
          u_xlat13.y = x_3149;
          let x_3151 : vec4<f32> = u_xlat11;
          let x_3154 : vec4<f32> = x_1026.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3151.x, x_3151.y, x_3151.x, x_3151.y) + x_3154);
          let x_3157 : vec4<f32> = u_xlat12;
          let x_3158 : vec2<f32> = vec2<f32>(x_3157.x, x_3157.y);
          let x_3160 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_3158.x, x_3158.y, x_3160);
          let x_3167 : vec3<f32> = txVec32;
          let x_3169 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3167.xy, x_3167.z);
          u_xlat13.z = x_3169;
          let x_3172 : vec4<f32> = u_xlat12;
          let x_3173 : vec2<f32> = vec2<f32>(x_3172.z, x_3172.w);
          let x_3175 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_3173.x, x_3173.y, x_3175);
          let x_3182 : vec3<f32> = txVec33;
          let x_3184 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3182.xy, x_3182.z);
          u_xlat13.w = x_3184;
          let x_3186 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_3186, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3189 : i32 = u_xlati58;
          let x_3191 : f32 = x_1026.x_AdditionalShadowParams[x_3189].y;
          u_xlatb87 = (2.0f == x_3191);
          let x_3193 : bool = u_xlatb87;
          if (x_3193) {
            let x_3196 : vec4<f32> = u_xlat11;
            let x_3199 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3202 : vec2<f32> = ((vec2<f32>(x_3196.x, x_3196.y) * vec2<f32>(x_3199.z, x_3199.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3203 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3202.x, x_3202.y, x_3203.z, x_3203.w);
            let x_3205 : vec4<f32> = u_xlat12;
            let x_3207 : vec2<f32> = floor(vec2<f32>(x_3205.x, x_3205.y));
            let x_3208 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3207.x, x_3207.y, x_3208.z, x_3208.w);
            let x_3210 : vec4<f32> = u_xlat11;
            let x_3213 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3216 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3210.x, x_3210.y) * vec2<f32>(x_3213.z, x_3213.w)) + -(vec2<f32>(x_3216.x, x_3216.y)));
            let x_3220 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3220.x, x_3220.x, x_3220.y, x_3220.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3223 : vec4<f32> = u_xlat13;
            let x_3225 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3223.x, x_3223.x, x_3223.z, x_3223.z) * vec4<f32>(x_3225.x, x_3225.x, x_3225.z, x_3225.z));
            let x_3228 : vec4<f32> = u_xlat14;
            let x_3230 : vec2<f32> = (vec2<f32>(x_3228.y, x_3228.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3231 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3230.x, x_3231.y, x_3230.y, x_3231.w);
            let x_3233 : vec4<f32> = u_xlat14;
            let x_3236 : vec2<f32> = u_xlat64;
            let x_3238 : vec2<f32> = ((vec2<f32>(x_3233.x, x_3233.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3236));
            let x_3239 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3238.x, x_3238.y, x_3239.z, x_3239.w);
            let x_3242 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3242) + vec2<f32>(1.0f, 1.0f));
            let x_3245 : vec2<f32> = u_xlat64;
            let x_3246 : vec2<f32> = min(x_3245, vec2<f32>(0.0f, 0.0f));
            let x_3247 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3246.x, x_3246.y, x_3247.z, x_3247.w);
            let x_3249 : vec4<f32> = u_xlat15;
            let x_3252 : vec4<f32> = u_xlat15;
            let x_3255 : vec2<f32> = u_xlat66;
            let x_3256 : vec2<f32> = ((-(vec2<f32>(x_3249.x, x_3249.y)) * vec2<f32>(x_3252.x, x_3252.y)) + x_3255);
            let x_3257 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3256.x, x_3256.y, x_3257.z, x_3257.w);
            let x_3259 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3259, vec2<f32>(0.0f, 0.0f));
            let x_3261 : vec2<f32> = u_xlat64;
            let x_3263 : vec2<f32> = u_xlat64;
            let x_3265 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3261) * x_3263) + vec2<f32>(x_3265.y, x_3265.w));
            let x_3268 : vec4<f32> = u_xlat15;
            let x_3270 : vec2<f32> = (vec2<f32>(x_3268.x, x_3268.y) + vec2<f32>(1.0f, 1.0f));
            let x_3271 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3270.x, x_3270.y, x_3271.z, x_3271.w);
            let x_3273 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3273 + vec2<f32>(1.0f, 1.0f));
            let x_3275 : vec4<f32> = u_xlat14;
            let x_3277 : vec2<f32> = (vec2<f32>(x_3275.x, x_3275.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3278 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3277.x, x_3277.y, x_3278.z, x_3278.w);
            let x_3280 : vec2<f32> = u_xlat66;
            let x_3281 : vec2<f32> = (x_3280 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3282 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3281.x, x_3281.y, x_3282.z, x_3282.w);
            let x_3284 : vec4<f32> = u_xlat15;
            let x_3286 : vec2<f32> = (vec2<f32>(x_3284.x, x_3284.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3287 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3286.x, x_3286.y, x_3287.z, x_3287.w);
            let x_3289 : vec2<f32> = u_xlat64;
            let x_3290 : vec2<f32> = (x_3289 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3291 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3290.x, x_3290.y, x_3291.z, x_3291.w);
            let x_3293 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3293.y, x_3293.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3297 : f32 = u_xlat15.x;
            u_xlat16.z = x_3297;
            let x_3300 : f32 = u_xlat64.x;
            u_xlat16.w = x_3300;
            let x_3303 : f32 = u_xlat17.x;
            u_xlat14.z = x_3303;
            let x_3306 : f32 = u_xlat13.x;
            u_xlat14.w = x_3306;
            let x_3308 : vec4<f32> = u_xlat14;
            let x_3310 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3308.z, x_3308.w, x_3308.x, x_3308.z) + vec4<f32>(x_3310.z, x_3310.w, x_3310.x, x_3310.z));
            let x_3314 : f32 = u_xlat16.y;
            u_xlat15.z = x_3314;
            let x_3317 : f32 = u_xlat64.y;
            u_xlat15.w = x_3317;
            let x_3320 : f32 = u_xlat14.y;
            u_xlat17.z = x_3320;
            let x_3323 : f32 = u_xlat13.z;
            u_xlat17.w = x_3323;
            let x_3325 : vec4<f32> = u_xlat15;
            let x_3327 : vec4<f32> = u_xlat17;
            let x_3329 : vec3<f32> = (vec3<f32>(x_3325.z, x_3325.y, x_3325.w) + vec3<f32>(x_3327.z, x_3327.y, x_3327.w));
            let x_3330 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3329.x, x_3329.y, x_3329.z, x_3330.w);
            let x_3332 : vec4<f32> = u_xlat14;
            let x_3334 : vec4<f32> = u_xlat18;
            let x_3336 : vec3<f32> = (vec3<f32>(x_3332.x, x_3332.z, x_3332.w) / vec3<f32>(x_3334.z, x_3334.w, x_3334.y));
            let x_3337 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3336.x, x_3336.y, x_3336.z, x_3337.w);
            let x_3339 : vec4<f32> = u_xlat14;
            let x_3341 : vec3<f32> = (vec3<f32>(x_3339.x, x_3339.y, x_3339.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3342 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3341.x, x_3341.y, x_3341.z, x_3342.w);
            let x_3344 : vec4<f32> = u_xlat17;
            let x_3346 : vec4<f32> = u_xlat13;
            let x_3348 : vec3<f32> = (vec3<f32>(x_3344.z, x_3344.y, x_3344.w) / vec3<f32>(x_3346.x, x_3346.y, x_3346.z));
            let x_3349 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3348.x, x_3348.y, x_3348.z, x_3349.w);
            let x_3351 : vec4<f32> = u_xlat15;
            let x_3353 : vec3<f32> = (vec3<f32>(x_3351.x, x_3351.y, x_3351.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3354 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3353.x, x_3353.y, x_3353.z, x_3354.w);
            let x_3356 : vec4<f32> = u_xlat14;
            let x_3359 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3361 : vec3<f32> = (vec3<f32>(x_3356.y, x_3356.x, x_3356.z) * vec3<f32>(x_3359.x, x_3359.x, x_3359.x));
            let x_3362 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3361.x, x_3361.y, x_3361.z, x_3362.w);
            let x_3364 : vec4<f32> = u_xlat15;
            let x_3367 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3369 : vec3<f32> = (vec3<f32>(x_3364.x, x_3364.y, x_3364.z) * vec3<f32>(x_3367.y, x_3367.y, x_3367.y));
            let x_3370 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3369.x, x_3369.y, x_3369.z, x_3370.w);
            let x_3373 : f32 = u_xlat15.x;
            u_xlat14.w = x_3373;
            let x_3375 : vec4<f32> = u_xlat12;
            let x_3378 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3381 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3375.x, x_3375.y, x_3375.x, x_3375.y) * vec4<f32>(x_3378.x, x_3378.y, x_3378.x, x_3378.y)) + vec4<f32>(x_3381.y, x_3381.w, x_3381.x, x_3381.w));
            let x_3384 : vec4<f32> = u_xlat12;
            let x_3387 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3390 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3384.x, x_3384.y) * vec2<f32>(x_3387.x, x_3387.y)) + vec2<f32>(x_3390.z, x_3390.w));
            let x_3394 : f32 = u_xlat14.y;
            u_xlat15.w = x_3394;
            let x_3396 : vec4<f32> = u_xlat15;
            let x_3397 : vec2<f32> = vec2<f32>(x_3396.y, x_3396.z);
            let x_3398 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3398.x, x_3397.x, x_3398.z, x_3397.y);
            let x_3400 : vec4<f32> = u_xlat12;
            let x_3403 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3406 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3400.x, x_3400.y, x_3400.x, x_3400.y) * vec4<f32>(x_3403.x, x_3403.y, x_3403.x, x_3403.y)) + vec4<f32>(x_3406.x, x_3406.y, x_3406.z, x_3406.y));
            let x_3409 : vec4<f32> = u_xlat12;
            let x_3412 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3415 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3409.x, x_3409.y, x_3409.x, x_3409.y) * vec4<f32>(x_3412.x, x_3412.y, x_3412.x, x_3412.y)) + vec4<f32>(x_3415.w, x_3415.y, x_3415.w, x_3415.z));
            let x_3418 : vec4<f32> = u_xlat12;
            let x_3421 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3424 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3418.x, x_3418.y, x_3418.x, x_3418.y) * vec4<f32>(x_3421.x, x_3421.y, x_3421.x, x_3421.y)) + vec4<f32>(x_3424.x, x_3424.w, x_3424.z, x_3424.w));
            let x_3427 : vec4<f32> = u_xlat13;
            let x_3429 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3427.x, x_3427.x, x_3427.x, x_3427.y) * vec4<f32>(x_3429.z, x_3429.w, x_3429.y, x_3429.z));
            let x_3433 : vec4<f32> = u_xlat13;
            let x_3435 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3433.y, x_3433.y, x_3433.z, x_3433.z) * x_3435);
            let x_3438 : f32 = u_xlat13.z;
            let x_3440 : f32 = u_xlat18.y;
            u_xlat87 = (x_3438 * x_3440);
            let x_3443 : vec4<f32> = u_xlat16;
            let x_3444 : vec2<f32> = vec2<f32>(x_3443.x, x_3443.y);
            let x_3446 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3444.x, x_3444.y, x_3446);
            let x_3453 : vec3<f32> = txVec34;
            let x_3455 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3453.xy, x_3453.z);
            u_xlat88 = x_3455;
            let x_3457 : vec4<f32> = u_xlat16;
            let x_3458 : vec2<f32> = vec2<f32>(x_3457.z, x_3457.w);
            let x_3460 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3458.x, x_3458.y, x_3460);
            let x_3468 : vec3<f32> = txVec35;
            let x_3470 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3468.xy, x_3468.z);
            u_xlat89 = x_3470;
            let x_3471 : f32 = u_xlat89;
            let x_3473 : f32 = u_xlat19.y;
            u_xlat89 = (x_3471 * x_3473);
            let x_3476 : f32 = u_xlat19.x;
            let x_3477 : f32 = u_xlat88;
            let x_3479 : f32 = u_xlat89;
            u_xlat88 = ((x_3476 * x_3477) + x_3479);
            let x_3482 : vec2<f32> = u_xlat64;
            let x_3484 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3482.x, x_3482.y, x_3484);
            let x_3491 : vec3<f32> = txVec36;
            let x_3493 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3491.xy, x_3491.z);
            u_xlat89 = x_3493;
            let x_3495 : f32 = u_xlat19.z;
            let x_3496 : f32 = u_xlat89;
            let x_3498 : f32 = u_xlat88;
            u_xlat88 = ((x_3495 * x_3496) + x_3498);
            let x_3501 : vec4<f32> = u_xlat15;
            let x_3502 : vec2<f32> = vec2<f32>(x_3501.x, x_3501.y);
            let x_3504 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3502.x, x_3502.y, x_3504);
            let x_3511 : vec3<f32> = txVec37;
            let x_3513 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3511.xy, x_3511.z);
            u_xlat89 = x_3513;
            let x_3515 : f32 = u_xlat19.w;
            let x_3516 : f32 = u_xlat89;
            let x_3518 : f32 = u_xlat88;
            u_xlat88 = ((x_3515 * x_3516) + x_3518);
            let x_3521 : vec4<f32> = u_xlat17;
            let x_3522 : vec2<f32> = vec2<f32>(x_3521.x, x_3521.y);
            let x_3524 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3522.x, x_3522.y, x_3524);
            let x_3531 : vec3<f32> = txVec38;
            let x_3533 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3531.xy, x_3531.z);
            u_xlat89 = x_3533;
            let x_3535 : f32 = u_xlat20.x;
            let x_3536 : f32 = u_xlat89;
            let x_3538 : f32 = u_xlat88;
            u_xlat88 = ((x_3535 * x_3536) + x_3538);
            let x_3541 : vec4<f32> = u_xlat17;
            let x_3542 : vec2<f32> = vec2<f32>(x_3541.z, x_3541.w);
            let x_3544 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3542.x, x_3542.y, x_3544);
            let x_3551 : vec3<f32> = txVec39;
            let x_3553 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3551.xy, x_3551.z);
            u_xlat89 = x_3553;
            let x_3555 : f32 = u_xlat20.y;
            let x_3556 : f32 = u_xlat89;
            let x_3558 : f32 = u_xlat88;
            u_xlat88 = ((x_3555 * x_3556) + x_3558);
            let x_3561 : vec4<f32> = u_xlat15;
            let x_3562 : vec2<f32> = vec2<f32>(x_3561.z, x_3561.w);
            let x_3564 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3562.x, x_3562.y, x_3564);
            let x_3571 : vec3<f32> = txVec40;
            let x_3573 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3571.xy, x_3571.z);
            u_xlat89 = x_3573;
            let x_3575 : f32 = u_xlat20.z;
            let x_3576 : f32 = u_xlat89;
            let x_3578 : f32 = u_xlat88;
            u_xlat88 = ((x_3575 * x_3576) + x_3578);
            let x_3581 : vec4<f32> = u_xlat14;
            let x_3582 : vec2<f32> = vec2<f32>(x_3581.x, x_3581.y);
            let x_3584 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3582.x, x_3582.y, x_3584);
            let x_3591 : vec3<f32> = txVec41;
            let x_3593 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3591.xy, x_3591.z);
            u_xlat89 = x_3593;
            let x_3595 : f32 = u_xlat20.w;
            let x_3596 : f32 = u_xlat89;
            let x_3598 : f32 = u_xlat88;
            u_xlat88 = ((x_3595 * x_3596) + x_3598);
            let x_3601 : vec4<f32> = u_xlat14;
            let x_3602 : vec2<f32> = vec2<f32>(x_3601.z, x_3601.w);
            let x_3604 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3602.x, x_3602.y, x_3604);
            let x_3611 : vec3<f32> = txVec42;
            let x_3613 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3611.xy, x_3611.z);
            u_xlat89 = x_3613;
            let x_3614 : f32 = u_xlat87;
            let x_3615 : f32 = u_xlat89;
            let x_3617 : f32 = u_xlat88;
            u_xlat86 = ((x_3614 * x_3615) + x_3617);
          } else {
            let x_3620 : vec4<f32> = u_xlat11;
            let x_3623 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3626 : vec2<f32> = ((vec2<f32>(x_3620.x, x_3620.y) * vec2<f32>(x_3623.z, x_3623.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3627 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3626.x, x_3626.y, x_3627.z, x_3627.w);
            let x_3629 : vec4<f32> = u_xlat12;
            let x_3631 : vec2<f32> = floor(vec2<f32>(x_3629.x, x_3629.y));
            let x_3632 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3631.x, x_3631.y, x_3632.z, x_3632.w);
            let x_3634 : vec4<f32> = u_xlat11;
            let x_3637 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3640 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3634.x, x_3634.y) * vec2<f32>(x_3637.z, x_3637.w)) + -(vec2<f32>(x_3640.x, x_3640.y)));
            let x_3644 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3644.x, x_3644.x, x_3644.y, x_3644.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3647 : vec4<f32> = u_xlat13;
            let x_3649 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3647.x, x_3647.x, x_3647.z, x_3647.z) * vec4<f32>(x_3649.x, x_3649.x, x_3649.z, x_3649.z));
            let x_3652 : vec4<f32> = u_xlat14;
            let x_3654 : vec2<f32> = (vec2<f32>(x_3652.y, x_3652.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3655 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3655.x, x_3654.x, x_3655.z, x_3654.y);
            let x_3657 : vec4<f32> = u_xlat14;
            let x_3660 : vec2<f32> = u_xlat64;
            let x_3662 : vec2<f32> = ((vec2<f32>(x_3657.x, x_3657.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3660));
            let x_3663 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3662.x, x_3663.y, x_3662.y, x_3663.w);
            let x_3665 : vec2<f32> = u_xlat64;
            let x_3667 : vec2<f32> = (-(x_3665) + vec2<f32>(1.0f, 1.0f));
            let x_3668 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3667.x, x_3667.y, x_3668.z, x_3668.w);
            let x_3670 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3670, vec2<f32>(0.0f, 0.0f));
            let x_3672 : vec2<f32> = u_xlat66;
            let x_3674 : vec2<f32> = u_xlat66;
            let x_3676 : vec4<f32> = u_xlat14;
            let x_3678 : vec2<f32> = ((-(x_3672) * x_3674) + vec2<f32>(x_3676.x, x_3676.y));
            let x_3679 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3678.x, x_3678.y, x_3679.z, x_3679.w);
            let x_3681 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3681, vec2<f32>(0.0f, 0.0f));
            let x_3684 : vec2<f32> = u_xlat66;
            let x_3686 : vec2<f32> = u_xlat66;
            let x_3688 : vec4<f32> = u_xlat13;
            let x_3690 : vec2<f32> = ((-(x_3684) * x_3686) + vec2<f32>(x_3688.y, x_3688.w));
            let x_3691 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3690.x, x_3691.y, x_3690.y);
            let x_3693 : vec4<f32> = u_xlat14;
            let x_3695 : vec2<f32> = (vec2<f32>(x_3693.x, x_3693.y) + vec2<f32>(2.0f, 2.0f));
            let x_3696 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3695.x, x_3695.y, x_3696.z, x_3696.w);
            let x_3698 : vec3<f32> = u_xlat39;
            let x_3700 : vec2<f32> = (vec2<f32>(x_3698.x, x_3698.z) + vec2<f32>(2.0f, 2.0f));
            let x_3701 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3701.x, x_3700.x, x_3701.z, x_3700.y);
            let x_3704 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3704 * 0.08163200318813323975f);
            let x_3707 : vec4<f32> = u_xlat13;
            let x_3710 : vec3<f32> = (vec3<f32>(x_3707.z, x_3707.x, x_3707.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3711 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3710.x, x_3710.y, x_3710.z, x_3711.w);
            let x_3713 : vec4<f32> = u_xlat14;
            let x_3715 : vec2<f32> = (vec2<f32>(x_3713.x, x_3713.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3716 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3715.x, x_3715.y, x_3716.z, x_3716.w);
            let x_3719 : f32 = u_xlat17.y;
            u_xlat16.x = x_3719;
            let x_3721 : vec2<f32> = u_xlat64;
            let x_3724 : vec2<f32> = ((vec2<f32>(x_3721.x, x_3721.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3725 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3725.x, x_3724.x, x_3725.z, x_3724.y);
            let x_3727 : vec2<f32> = u_xlat64;
            let x_3730 : vec2<f32> = ((vec2<f32>(x_3727.x, x_3727.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3731 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3730.x, x_3731.y, x_3730.y, x_3731.w);
            let x_3734 : f32 = u_xlat13.x;
            u_xlat14.y = x_3734;
            let x_3737 : f32 = u_xlat15.y;
            u_xlat14.w = x_3737;
            let x_3739 : vec4<f32> = u_xlat14;
            let x_3740 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3739 + x_3740);
            let x_3742 : vec2<f32> = u_xlat64;
            let x_3745 : vec2<f32> = ((vec2<f32>(x_3742.y, x_3742.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3746 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3746.x, x_3745.x, x_3746.z, x_3745.y);
            let x_3748 : vec2<f32> = u_xlat64;
            let x_3751 : vec2<f32> = ((vec2<f32>(x_3748.y, x_3748.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3752 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3751.x, x_3752.y, x_3751.y, x_3752.w);
            let x_3755 : f32 = u_xlat13.y;
            u_xlat15.y = x_3755;
            let x_3757 : vec4<f32> = u_xlat15;
            let x_3758 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3757 + x_3758);
            let x_3760 : vec4<f32> = u_xlat14;
            let x_3761 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3760 / x_3761);
            let x_3763 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3763 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3765 : vec4<f32> = u_xlat15;
            let x_3766 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3765 / x_3766);
            let x_3768 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3768 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3770 : vec4<f32> = u_xlat14;
            let x_3773 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3770.w, x_3770.x, x_3770.y, x_3770.z) * vec4<f32>(x_3773.x, x_3773.x, x_3773.x, x_3773.x));
            let x_3776 : vec4<f32> = u_xlat15;
            let x_3779 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3776.x, x_3776.w, x_3776.y, x_3776.z) * vec4<f32>(x_3779.y, x_3779.y, x_3779.y, x_3779.y));
            let x_3782 : vec4<f32> = u_xlat14;
            let x_3783 : vec3<f32> = vec3<f32>(x_3782.y, x_3782.z, x_3782.w);
            let x_3784 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3783.x, x_3784.y, x_3783.y, x_3783.z);
            let x_3787 : f32 = u_xlat15.x;
            u_xlat17.y = x_3787;
            let x_3789 : vec4<f32> = u_xlat12;
            let x_3792 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3795 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3789.x, x_3789.y, x_3789.x, x_3789.y) * vec4<f32>(x_3792.x, x_3792.y, x_3792.x, x_3792.y)) + vec4<f32>(x_3795.x, x_3795.y, x_3795.z, x_3795.y));
            let x_3798 : vec4<f32> = u_xlat12;
            let x_3801 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3804 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3798.x, x_3798.y) * vec2<f32>(x_3801.x, x_3801.y)) + vec2<f32>(x_3804.w, x_3804.y));
            let x_3808 : f32 = u_xlat17.y;
            u_xlat14.y = x_3808;
            let x_3811 : f32 = u_xlat15.z;
            u_xlat17.y = x_3811;
            let x_3813 : vec4<f32> = u_xlat12;
            let x_3816 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3819 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3813.x, x_3813.y, x_3813.x, x_3813.y) * vec4<f32>(x_3816.x, x_3816.y, x_3816.x, x_3816.y)) + vec4<f32>(x_3819.x, x_3819.y, x_3819.z, x_3819.y));
            let x_3822 : vec4<f32> = u_xlat12;
            let x_3825 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3828 : vec4<f32> = u_xlat17;
            let x_3830 : vec2<f32> = ((vec2<f32>(x_3822.x, x_3822.y) * vec2<f32>(x_3825.x, x_3825.y)) + vec2<f32>(x_3828.w, x_3828.y));
            let x_3831 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3830.x, x_3830.y, x_3831.z, x_3831.w);
            let x_3834 : f32 = u_xlat17.y;
            u_xlat14.z = x_3834;
            let x_3837 : vec4<f32> = u_xlat12;
            let x_3840 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3843 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3837.x, x_3837.y, x_3837.x, x_3837.y) * vec4<f32>(x_3840.x, x_3840.y, x_3840.x, x_3840.y)) + vec4<f32>(x_3843.x, x_3843.y, x_3843.x, x_3843.z));
            let x_3847 : f32 = u_xlat15.w;
            u_xlat17.y = x_3847;
            let x_3850 : vec4<f32> = u_xlat12;
            let x_3853 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3856 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3850.x, x_3850.y, x_3850.x, x_3850.y) * vec4<f32>(x_3853.x, x_3853.y, x_3853.x, x_3853.y)) + vec4<f32>(x_3856.x, x_3856.y, x_3856.z, x_3856.y));
            let x_3860 : vec4<f32> = u_xlat12;
            let x_3863 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3866 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3860.x, x_3860.y) * vec2<f32>(x_3863.x, x_3863.y)) + vec2<f32>(x_3866.w, x_3866.y));
            let x_3870 : f32 = u_xlat17.y;
            u_xlat14.w = x_3870;
            let x_3873 : vec4<f32> = u_xlat12;
            let x_3876 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3879 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3873.x, x_3873.y) * vec2<f32>(x_3876.x, x_3876.y)) + vec2<f32>(x_3879.x, x_3879.w));
            let x_3882 : vec4<f32> = u_xlat17;
            let x_3883 : vec3<f32> = vec3<f32>(x_3882.x, x_3882.z, x_3882.w);
            let x_3884 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3883.x, x_3884.y, x_3883.y, x_3883.z);
            let x_3886 : vec4<f32> = u_xlat12;
            let x_3889 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3892 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3886.x, x_3886.y, x_3886.x, x_3886.y) * vec4<f32>(x_3889.x, x_3889.y, x_3889.x, x_3889.y)) + vec4<f32>(x_3892.x, x_3892.y, x_3892.z, x_3892.y));
            let x_3896 : vec4<f32> = u_xlat12;
            let x_3899 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3902 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3896.x, x_3896.y) * vec2<f32>(x_3899.x, x_3899.y)) + vec2<f32>(x_3902.w, x_3902.y));
            let x_3906 : f32 = u_xlat14.x;
            u_xlat15.x = x_3906;
            let x_3908 : vec4<f32> = u_xlat12;
            let x_3911 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3914 : vec4<f32> = u_xlat15;
            let x_3916 : vec2<f32> = ((vec2<f32>(x_3908.x, x_3908.y) * vec2<f32>(x_3911.x, x_3911.y)) + vec2<f32>(x_3914.x, x_3914.y));
            let x_3917 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3916.x, x_3916.y, x_3917.z, x_3917.w);
            let x_3920 : vec4<f32> = u_xlat13;
            let x_3922 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3920.x, x_3920.x, x_3920.x, x_3920.x) * x_3922);
            let x_3925 : vec4<f32> = u_xlat13;
            let x_3927 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3925.y, x_3925.y, x_3925.y, x_3925.y) * x_3927);
            let x_3930 : vec4<f32> = u_xlat13;
            let x_3932 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3930.z, x_3930.z, x_3930.z, x_3930.z) * x_3932);
            let x_3934 : vec4<f32> = u_xlat13;
            let x_3936 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3934.w, x_3934.w, x_3934.w, x_3934.w) * x_3936);
            let x_3939 : vec4<f32> = u_xlat18;
            let x_3940 : vec2<f32> = vec2<f32>(x_3939.x, x_3939.y);
            let x_3942 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3940.x, x_3940.y, x_3942);
            let x_3949 : vec3<f32> = txVec43;
            let x_3951 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3949.xy, x_3949.z);
            u_xlat87 = x_3951;
            let x_3953 : vec4<f32> = u_xlat18;
            let x_3954 : vec2<f32> = vec2<f32>(x_3953.z, x_3953.w);
            let x_3956 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3954.x, x_3954.y, x_3956);
            let x_3963 : vec3<f32> = txVec44;
            let x_3965 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3963.xy, x_3963.z);
            u_xlat88 = x_3965;
            let x_3966 : f32 = u_xlat88;
            let x_3968 : f32 = u_xlat23.y;
            u_xlat88 = (x_3966 * x_3968);
            let x_3971 : f32 = u_xlat23.x;
            let x_3972 : f32 = u_xlat87;
            let x_3974 : f32 = u_xlat88;
            u_xlat87 = ((x_3971 * x_3972) + x_3974);
            let x_3977 : vec2<f32> = u_xlat64;
            let x_3979 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3977.x, x_3977.y, x_3979);
            let x_3986 : vec3<f32> = txVec45;
            let x_3988 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3986.xy, x_3986.z);
            u_xlat88 = x_3988;
            let x_3990 : f32 = u_xlat23.z;
            let x_3991 : f32 = u_xlat88;
            let x_3993 : f32 = u_xlat87;
            u_xlat87 = ((x_3990 * x_3991) + x_3993);
            let x_3996 : vec4<f32> = u_xlat21;
            let x_3997 : vec2<f32> = vec2<f32>(x_3996.x, x_3996.y);
            let x_3999 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3997.x, x_3997.y, x_3999);
            let x_4006 : vec3<f32> = txVec46;
            let x_4008 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4006.xy, x_4006.z);
            u_xlat88 = x_4008;
            let x_4010 : f32 = u_xlat23.w;
            let x_4011 : f32 = u_xlat88;
            let x_4013 : f32 = u_xlat87;
            u_xlat87 = ((x_4010 * x_4011) + x_4013);
            let x_4016 : vec4<f32> = u_xlat19;
            let x_4017 : vec2<f32> = vec2<f32>(x_4016.x, x_4016.y);
            let x_4019 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_4017.x, x_4017.y, x_4019);
            let x_4026 : vec3<f32> = txVec47;
            let x_4028 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4026.xy, x_4026.z);
            u_xlat88 = x_4028;
            let x_4030 : f32 = u_xlat24.x;
            let x_4031 : f32 = u_xlat88;
            let x_4033 : f32 = u_xlat87;
            u_xlat87 = ((x_4030 * x_4031) + x_4033);
            let x_4036 : vec4<f32> = u_xlat19;
            let x_4037 : vec2<f32> = vec2<f32>(x_4036.z, x_4036.w);
            let x_4039 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_4037.x, x_4037.y, x_4039);
            let x_4046 : vec3<f32> = txVec48;
            let x_4048 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4046.xy, x_4046.z);
            u_xlat88 = x_4048;
            let x_4050 : f32 = u_xlat24.y;
            let x_4051 : f32 = u_xlat88;
            let x_4053 : f32 = u_xlat87;
            u_xlat87 = ((x_4050 * x_4051) + x_4053);
            let x_4056 : vec4<f32> = u_xlat20;
            let x_4057 : vec2<f32> = vec2<f32>(x_4056.x, x_4056.y);
            let x_4059 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_4057.x, x_4057.y, x_4059);
            let x_4066 : vec3<f32> = txVec49;
            let x_4068 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4066.xy, x_4066.z);
            u_xlat88 = x_4068;
            let x_4070 : f32 = u_xlat24.z;
            let x_4071 : f32 = u_xlat88;
            let x_4073 : f32 = u_xlat87;
            u_xlat87 = ((x_4070 * x_4071) + x_4073);
            let x_4076 : vec4<f32> = u_xlat21;
            let x_4077 : vec2<f32> = vec2<f32>(x_4076.z, x_4076.w);
            let x_4079 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_4077.x, x_4077.y, x_4079);
            let x_4086 : vec3<f32> = txVec50;
            let x_4088 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4086.xy, x_4086.z);
            u_xlat88 = x_4088;
            let x_4090 : f32 = u_xlat24.w;
            let x_4091 : f32 = u_xlat88;
            let x_4093 : f32 = u_xlat87;
            u_xlat87 = ((x_4090 * x_4091) + x_4093);
            let x_4096 : vec4<f32> = u_xlat22;
            let x_4097 : vec2<f32> = vec2<f32>(x_4096.x, x_4096.y);
            let x_4099 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_4097.x, x_4097.y, x_4099);
            let x_4106 : vec3<f32> = txVec51;
            let x_4108 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4106.xy, x_4106.z);
            u_xlat88 = x_4108;
            let x_4110 : f32 = u_xlat25.x;
            let x_4111 : f32 = u_xlat88;
            let x_4113 : f32 = u_xlat87;
            u_xlat87 = ((x_4110 * x_4111) + x_4113);
            let x_4116 : vec4<f32> = u_xlat22;
            let x_4117 : vec2<f32> = vec2<f32>(x_4116.z, x_4116.w);
            let x_4119 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_4117.x, x_4117.y, x_4119);
            let x_4126 : vec3<f32> = txVec52;
            let x_4128 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4126.xy, x_4126.z);
            u_xlat88 = x_4128;
            let x_4130 : f32 = u_xlat25.y;
            let x_4131 : f32 = u_xlat88;
            let x_4133 : f32 = u_xlat87;
            u_xlat87 = ((x_4130 * x_4131) + x_4133);
            let x_4136 : vec2<f32> = u_xlat40;
            let x_4138 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_4136.x, x_4136.y, x_4138);
            let x_4145 : vec3<f32> = txVec53;
            let x_4147 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4145.xy, x_4145.z);
            u_xlat88 = x_4147;
            let x_4149 : f32 = u_xlat25.z;
            let x_4150 : f32 = u_xlat88;
            let x_4152 : f32 = u_xlat87;
            u_xlat87 = ((x_4149 * x_4150) + x_4152);
            let x_4155 : vec2<f32> = u_xlat72;
            let x_4157 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_4155.x, x_4155.y, x_4157);
            let x_4164 : vec3<f32> = txVec54;
            let x_4166 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4164.xy, x_4164.z);
            u_xlat88 = x_4166;
            let x_4168 : f32 = u_xlat25.w;
            let x_4169 : f32 = u_xlat88;
            let x_4171 : f32 = u_xlat87;
            u_xlat87 = ((x_4168 * x_4169) + x_4171);
            let x_4174 : vec4<f32> = u_xlat17;
            let x_4175 : vec2<f32> = vec2<f32>(x_4174.x, x_4174.y);
            let x_4177 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_4175.x, x_4175.y, x_4177);
            let x_4184 : vec3<f32> = txVec55;
            let x_4186 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4184.xy, x_4184.z);
            u_xlat88 = x_4186;
            let x_4188 : f32 = u_xlat13.x;
            let x_4189 : f32 = u_xlat88;
            let x_4191 : f32 = u_xlat87;
            u_xlat87 = ((x_4188 * x_4189) + x_4191);
            let x_4194 : vec4<f32> = u_xlat17;
            let x_4195 : vec2<f32> = vec2<f32>(x_4194.z, x_4194.w);
            let x_4197 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_4195.x, x_4195.y, x_4197);
            let x_4204 : vec3<f32> = txVec56;
            let x_4206 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4204.xy, x_4204.z);
            u_xlat88 = x_4206;
            let x_4208 : f32 = u_xlat13.y;
            let x_4209 : f32 = u_xlat88;
            let x_4211 : f32 = u_xlat87;
            u_xlat87 = ((x_4208 * x_4209) + x_4211);
            let x_4214 : vec2<f32> = u_xlat67;
            let x_4216 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_4214.x, x_4214.y, x_4216);
            let x_4223 : vec3<f32> = txVec57;
            let x_4225 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4223.xy, x_4223.z);
            u_xlat88 = x_4225;
            let x_4227 : f32 = u_xlat13.z;
            let x_4228 : f32 = u_xlat88;
            let x_4230 : f32 = u_xlat87;
            u_xlat87 = ((x_4227 * x_4228) + x_4230);
            let x_4233 : vec4<f32> = u_xlat12;
            let x_4234 : vec2<f32> = vec2<f32>(x_4233.x, x_4233.y);
            let x_4236 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_4234.x, x_4234.y, x_4236);
            let x_4243 : vec3<f32> = txVec58;
            let x_4245 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4243.xy, x_4243.z);
            u_xlat88 = x_4245;
            let x_4247 : f32 = u_xlat13.w;
            let x_4248 : f32 = u_xlat88;
            let x_4250 : f32 = u_xlat87;
            u_xlat86 = ((x_4247 * x_4248) + x_4250);
          }
        }
      } else {
        let x_4254 : vec4<f32> = u_xlat11;
        let x_4255 : vec2<f32> = vec2<f32>(x_4254.x, x_4254.y);
        let x_4257 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_4255.x, x_4255.y, x_4257);
        let x_4264 : vec3<f32> = txVec59;
        let x_4266 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4264.xy, x_4264.z);
        u_xlat86 = x_4266;
      }
      let x_4267 : i32 = u_xlati58;
      let x_4269 : f32 = x_1026.x_AdditionalShadowParams[x_4267].x;
      u_xlat87 = (1.0f + -(x_4269));
      let x_4272 : f32 = u_xlat86;
      let x_4273 : i32 = u_xlati58;
      let x_4275 : f32 = x_1026.x_AdditionalShadowParams[x_4273].x;
      let x_4277 : f32 = u_xlat87;
      u_xlat86 = ((x_4272 * x_4275) + x_4277);
      let x_4280 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_4280);
      let x_4284 : f32 = u_xlat11.z;
      u_xlatb88 = (x_4284 >= 1.0f);
      let x_4286 : bool = u_xlatb87;
      let x_4287 : bool = u_xlatb88;
      u_xlatb87 = (x_4286 | x_4287);
      let x_4289 : bool = u_xlatb87;
      let x_4290 : f32 = u_xlat86;
      u_xlat86 = select(x_4290, 1.0f, x_4289);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_4293 : f32 = u_xlat86;
    u_xlat87 = (-(x_4293) + 1.0f);
    let x_4297 : f32 = u_xlat3.x;
    let x_4298 : f32 = u_xlat87;
    let x_4300 : f32 = u_xlat86;
    u_xlat86 = ((x_4297 * x_4298) + x_4300);
    let x_4303 : i32 = u_xlati58;
    u_xlati87 = (1i << bitcast<u32>((x_4303 & 31i)));
    let x_4306 : i32 = u_xlati87;
    let x_4309 : f32 = x_2380.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_4306) & bitcast<u32>(x_4309)));
    let x_4313 : i32 = u_xlati87;
    if ((x_4313 != 0i)) {
      let x_4317 : i32 = u_xlati58;
      let x_4319 : f32 = x_2380.x_AdditionalLightsLightTypes[x_4317].el;
      u_xlati87 = i32(x_4319);
      let x_4322 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_4322 != 0i));
      let x_4326 : i32 = u_xlati58;
      u_xlati11 = (x_4326 << bitcast<u32>(2i));
      let x_4328 : i32 = u_xlati88;
      if ((x_4328 != 0i)) {
        let x_4333 : vec3<f32> = vs_TEXCOORD7;
        let x_4335 : i32 = u_xlati11;
        let x_4338 : i32 = u_xlati11;
        let x_4342 : vec4<f32> = x_2380.x_AdditionalLightsWorldToLights[((x_4335 + 1i) / 4i)][((x_4338 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_4333.y, x_4333.y, x_4333.y) * vec3<f32>(x_4342.x, x_4342.y, x_4342.w));
        let x_4345 : i32 = u_xlati11;
        let x_4347 : i32 = u_xlati11;
        let x_4350 : vec4<f32> = x_2380.x_AdditionalLightsWorldToLights[(x_4345 / 4i)][(x_4347 % 4i)];
        let x_4352 : vec3<f32> = vs_TEXCOORD7;
        let x_4355 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4350.x, x_4350.y, x_4350.w) * vec3<f32>(x_4352.x, x_4352.x, x_4352.x)) + x_4355);
        let x_4357 : i32 = u_xlati11;
        let x_4360 : i32 = u_xlati11;
        let x_4364 : vec4<f32> = x_2380.x_AdditionalLightsWorldToLights[((x_4357 + 2i) / 4i)][((x_4360 + 2i) % 4i)];
        let x_4366 : vec3<f32> = vs_TEXCOORD7;
        let x_4369 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4364.x, x_4364.y, x_4364.w) * vec3<f32>(x_4366.z, x_4366.z, x_4366.z)) + x_4369);
        let x_4371 : vec3<f32> = u_xlat37;
        let x_4372 : i32 = u_xlati11;
        let x_4375 : i32 = u_xlati11;
        let x_4379 : vec4<f32> = x_2380.x_AdditionalLightsWorldToLights[((x_4372 + 3i) / 4i)][((x_4375 + 3i) % 4i)];
        u_xlat37 = (x_4371 + vec3<f32>(x_4379.x, x_4379.y, x_4379.w));
        let x_4382 : vec3<f32> = u_xlat37;
        let x_4384 : vec3<f32> = u_xlat37;
        let x_4386 : vec2<f32> = (vec2<f32>(x_4382.x, x_4382.y) / vec2<f32>(x_4384.z, x_4384.z));
        let x_4387 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4386.x, x_4386.y, x_4387.z);
        let x_4389 : vec3<f32> = u_xlat37;
        let x_4392 : vec2<f32> = ((vec2<f32>(x_4389.x, x_4389.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4393 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4392.x, x_4392.y, x_4393.z);
        let x_4395 : vec3<f32> = u_xlat37;
        let x_4399 : vec2<f32> = clamp(vec2<f32>(x_4395.x, x_4395.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4400 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4399.x, x_4399.y, x_4400.z);
        let x_4402 : i32 = u_xlati58;
        let x_4404 : vec4<f32> = x_2380.x_AdditionalLightsCookieAtlasUVRects[x_4402];
        let x_4406 : vec3<f32> = u_xlat37;
        let x_4409 : i32 = u_xlati58;
        let x_4411 : vec4<f32> = x_2380.x_AdditionalLightsCookieAtlasUVRects[x_4409];
        let x_4413 : vec2<f32> = ((vec2<f32>(x_4404.x, x_4404.y) * vec2<f32>(x_4406.x, x_4406.y)) + vec2<f32>(x_4411.z, x_4411.w));
        let x_4414 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4413.x, x_4413.y, x_4414.z);
      } else {
        let x_4417 : i32 = u_xlati87;
        u_xlatb87 = (x_4417 == 1i);
        let x_4419 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_4419);
        let x_4421 : i32 = u_xlati87;
        if ((x_4421 != 0i)) {
          let x_4425 : vec3<f32> = vs_TEXCOORD7;
          let x_4427 : i32 = u_xlati11;
          let x_4430 : i32 = u_xlati11;
          let x_4434 : vec4<f32> = x_2380.x_AdditionalLightsWorldToLights[((x_4427 + 1i) / 4i)][((x_4430 + 1i) % 4i)];
          let x_4436 : vec2<f32> = (vec2<f32>(x_4425.y, x_4425.y) * vec2<f32>(x_4434.x, x_4434.y));
          let x_4437 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4436.x, x_4436.y, x_4437.z, x_4437.w);
          let x_4439 : i32 = u_xlati11;
          let x_4441 : i32 = u_xlati11;
          let x_4444 : vec4<f32> = x_2380.x_AdditionalLightsWorldToLights[(x_4439 / 4i)][(x_4441 % 4i)];
          let x_4446 : vec3<f32> = vs_TEXCOORD7;
          let x_4449 : vec4<f32> = u_xlat12;
          let x_4451 : vec2<f32> = ((vec2<f32>(x_4444.x, x_4444.y) * vec2<f32>(x_4446.x, x_4446.x)) + vec2<f32>(x_4449.x, x_4449.y));
          let x_4452 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4451.x, x_4451.y, x_4452.z, x_4452.w);
          let x_4454 : i32 = u_xlati11;
          let x_4457 : i32 = u_xlati11;
          let x_4461 : vec4<f32> = x_2380.x_AdditionalLightsWorldToLights[((x_4454 + 2i) / 4i)][((x_4457 + 2i) % 4i)];
          let x_4463 : vec3<f32> = vs_TEXCOORD7;
          let x_4466 : vec4<f32> = u_xlat12;
          let x_4468 : vec2<f32> = ((vec2<f32>(x_4461.x, x_4461.y) * vec2<f32>(x_4463.z, x_4463.z)) + vec2<f32>(x_4466.x, x_4466.y));
          let x_4469 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4468.x, x_4468.y, x_4469.z, x_4469.w);
          let x_4471 : vec4<f32> = u_xlat12;
          let x_4473 : i32 = u_xlati11;
          let x_4476 : i32 = u_xlati11;
          let x_4480 : vec4<f32> = x_2380.x_AdditionalLightsWorldToLights[((x_4473 + 3i) / 4i)][((x_4476 + 3i) % 4i)];
          let x_4482 : vec2<f32> = (vec2<f32>(x_4471.x, x_4471.y) + vec2<f32>(x_4480.x, x_4480.y));
          let x_4483 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4482.x, x_4482.y, x_4483.z, x_4483.w);
          let x_4485 : vec4<f32> = u_xlat12;
          let x_4488 : vec2<f32> = ((vec2<f32>(x_4485.x, x_4485.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4489 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4488.x, x_4488.y, x_4489.z, x_4489.w);
          let x_4491 : vec4<f32> = u_xlat12;
          let x_4493 : vec2<f32> = fract(vec2<f32>(x_4491.x, x_4491.y));
          let x_4494 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4493.x, x_4493.y, x_4494.z, x_4494.w);
          let x_4496 : i32 = u_xlati58;
          let x_4498 : vec4<f32> = x_2380.x_AdditionalLightsCookieAtlasUVRects[x_4496];
          let x_4500 : vec4<f32> = u_xlat12;
          let x_4503 : i32 = u_xlati58;
          let x_4505 : vec4<f32> = x_2380.x_AdditionalLightsCookieAtlasUVRects[x_4503];
          let x_4507 : vec2<f32> = ((vec2<f32>(x_4498.x, x_4498.y) * vec2<f32>(x_4500.x, x_4500.y)) + vec2<f32>(x_4505.z, x_4505.w));
          let x_4508 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4507.x, x_4507.y, x_4508.z);
        } else {
          let x_4511 : vec3<f32> = vs_TEXCOORD7;
          let x_4513 : i32 = u_xlati11;
          let x_4516 : i32 = u_xlati11;
          let x_4520 : vec4<f32> = x_2380.x_AdditionalLightsWorldToLights[((x_4513 + 1i) / 4i)][((x_4516 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4511.y, x_4511.y, x_4511.y, x_4511.y) * x_4520);
          let x_4522 : i32 = u_xlati11;
          let x_4524 : i32 = u_xlati11;
          let x_4527 : vec4<f32> = x_2380.x_AdditionalLightsWorldToLights[(x_4522 / 4i)][(x_4524 % 4i)];
          let x_4528 : vec3<f32> = vs_TEXCOORD7;
          let x_4531 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4527 * vec4<f32>(x_4528.x, x_4528.x, x_4528.x, x_4528.x)) + x_4531);
          let x_4533 : i32 = u_xlati11;
          let x_4536 : i32 = u_xlati11;
          let x_4540 : vec4<f32> = x_2380.x_AdditionalLightsWorldToLights[((x_4533 + 2i) / 4i)][((x_4536 + 2i) % 4i)];
          let x_4541 : vec3<f32> = vs_TEXCOORD7;
          let x_4544 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4540 * vec4<f32>(x_4541.z, x_4541.z, x_4541.z, x_4541.z)) + x_4544);
          let x_4546 : vec4<f32> = u_xlat12;
          let x_4547 : i32 = u_xlati11;
          let x_4550 : i32 = u_xlati11;
          let x_4554 : vec4<f32> = x_2380.x_AdditionalLightsWorldToLights[((x_4547 + 3i) / 4i)][((x_4550 + 3i) % 4i)];
          u_xlat12 = (x_4546 + x_4554);
          let x_4556 : vec4<f32> = u_xlat12;
          let x_4558 : vec4<f32> = u_xlat12;
          let x_4560 : vec3<f32> = (vec3<f32>(x_4556.x, x_4556.y, x_4556.z) / vec3<f32>(x_4558.w, x_4558.w, x_4558.w));
          let x_4561 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4560.x, x_4560.y, x_4560.z, x_4561.w);
          let x_4563 : vec4<f32> = u_xlat12;
          let x_4565 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_4563.x, x_4563.y, x_4563.z), vec3<f32>(x_4565.x, x_4565.y, x_4565.z));
          let x_4568 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_4568);
          let x_4570 : f32 = u_xlat87;
          let x_4572 : vec4<f32> = u_xlat12;
          let x_4574 : vec3<f32> = (vec3<f32>(x_4570, x_4570, x_4570) * vec3<f32>(x_4572.x, x_4572.y, x_4572.z));
          let x_4575 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4574.x, x_4574.y, x_4574.z, x_4575.w);
          let x_4577 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_4577.x, x_4577.y, x_4577.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4582 : f32 = u_xlat87;
          u_xlat87 = max(x_4582, 0.00000099999999747524f);
          let x_4585 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_4585);
          let x_4587 : f32 = u_xlat87;
          let x_4589 : vec4<f32> = u_xlat12;
          let x_4591 : vec3<f32> = (vec3<f32>(x_4587, x_4587, x_4587) * vec3<f32>(x_4589.z, x_4589.x, x_4589.y));
          let x_4592 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4591.x, x_4591.y, x_4591.z, x_4592.w);
          let x_4595 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4595);
          let x_4599 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4599, 0.0f, 1.0f);
          let x_4602 : vec4<f32> = u_xlat13;
          let x_4604 : vec4<bool> = (vec4<f32>(x_4602.y, x_4602.y, x_4602.y, x_4602.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_4605 : vec2<bool> = vec2<bool>(x_4604.x, x_4604.w);
          let x_4606 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_4605.x, x_4606.y, x_4606.z, x_4605.y);
          let x_4609 : bool = u_xlatb11.x;
          if (x_4609) {
            let x_4614 : f32 = u_xlat13.x;
            x_4610 = x_4614;
          } else {
            let x_4617 : f32 = u_xlat13.x;
            x_4610 = -(x_4617);
          }
          let x_4619 : f32 = x_4610;
          u_xlat11.x = x_4619;
          let x_4622 : bool = u_xlatb11.w;
          if (x_4622) {
            let x_4627 : f32 = u_xlat13.x;
            x_4623 = x_4627;
          } else {
            let x_4630 : f32 = u_xlat13.x;
            x_4623 = -(x_4630);
          }
          let x_4632 : f32 = x_4623;
          u_xlat11.w = x_4632;
          let x_4634 : vec4<f32> = u_xlat12;
          let x_4636 : f32 = u_xlat87;
          let x_4639 : vec4<f32> = u_xlat11;
          let x_4641 : vec2<f32> = ((vec2<f32>(x_4634.x, x_4634.y) * vec2<f32>(x_4636, x_4636)) + vec2<f32>(x_4639.x, x_4639.w));
          let x_4642 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4641.x, x_4642.y, x_4642.z, x_4641.y);
          let x_4644 : vec4<f32> = u_xlat11;
          let x_4647 : vec2<f32> = ((vec2<f32>(x_4644.x, x_4644.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4648 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4647.x, x_4648.y, x_4648.z, x_4647.y);
          let x_4650 : vec4<f32> = u_xlat11;
          let x_4654 : vec2<f32> = clamp(vec2<f32>(x_4650.x, x_4650.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4655 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4654.x, x_4655.y, x_4655.z, x_4654.y);
          let x_4657 : i32 = u_xlati58;
          let x_4659 : vec4<f32> = x_2380.x_AdditionalLightsCookieAtlasUVRects[x_4657];
          let x_4661 : vec4<f32> = u_xlat11;
          let x_4664 : i32 = u_xlati58;
          let x_4666 : vec4<f32> = x_2380.x_AdditionalLightsCookieAtlasUVRects[x_4664];
          let x_4668 : vec2<f32> = ((vec2<f32>(x_4659.x, x_4659.y) * vec2<f32>(x_4661.x, x_4661.w)) + vec2<f32>(x_4666.z, x_4666.w));
          let x_4669 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4668.x, x_4668.y, x_4669.z);
        }
      }
      let x_4676 : vec3<f32> = u_xlat37;
      let x_4678 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4676.x, x_4676.y), 0.0f);
      u_xlat11 = x_4678;
      let x_4680 : bool = u_xlatb6.y;
      if (x_4680) {
        let x_4685 : f32 = u_xlat11.w;
        x_4681 = x_4685;
      } else {
        let x_4688 : f32 = u_xlat11.x;
        x_4681 = x_4688;
      }
      let x_4689 : f32 = x_4681;
      u_xlat87 = x_4689;
      let x_4691 : bool = u_xlatb6.x;
      if (x_4691) {
        let x_4695 : vec4<f32> = u_xlat11;
        x_4692 = vec3<f32>(x_4695.x, x_4695.y, x_4695.z);
      } else {
        let x_4698 : f32 = u_xlat87;
        x_4692 = vec3<f32>(x_4698, x_4698, x_4698);
      }
      let x_4700 : vec3<f32> = x_4692;
      let x_4701 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4700.x, x_4700.y, x_4700.z, x_4701.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4707 : vec4<f32> = u_xlat11;
    let x_4709 : i32 = u_xlati58;
    let x_4711 : vec4<f32> = x_2881.x_AdditionalLightsColor[x_4709];
    let x_4713 : vec3<f32> = (vec3<f32>(x_4707.x, x_4707.y, x_4707.z) * vec3<f32>(x_4711.x, x_4711.y, x_4711.z));
    let x_4714 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4713.x, x_4713.y, x_4713.z, x_4714.w);
    let x_4716 : f32 = u_xlat84;
    let x_4717 : f32 = u_xlat86;
    u_xlat58.x = (x_4716 * x_4717);
    let x_4720 : vec4<f32> = u_xlat1;
    let x_4722 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_4720.x, x_4720.y, x_4720.z), vec3<f32>(x_4722.x, x_4722.y, x_4722.z));
    let x_4725 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4725, 0.0f, 1.0f);
    let x_4727 : f32 = u_xlat84;
    let x_4729 : f32 = u_xlat58.x;
    u_xlat58.x = (x_4727 * x_4729);
    let x_4732 : vec2<f32> = u_xlat58;
    let x_4734 : vec4<f32> = u_xlat11;
    let x_4736 : vec3<f32> = (vec3<f32>(x_4732.x, x_4732.x, x_4732.x) * vec3<f32>(x_4734.x, x_4734.y, x_4734.z));
    let x_4737 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4736.x, x_4736.y, x_4736.z, x_4737.w);
    let x_4739 : vec4<f32> = u_xlat9;
    let x_4741 : f32 = u_xlat85;
    let x_4744 : vec4<f32> = u_xlat7;
    let x_4746 : vec3<f32> = ((vec3<f32>(x_4739.x, x_4739.y, x_4739.z) * vec3<f32>(x_4741, x_4741, x_4741)) + vec3<f32>(x_4744.x, x_4744.y, x_4744.z));
    let x_4747 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4746.x, x_4746.y, x_4746.z, x_4747.w);
    let x_4749 : vec4<f32> = u_xlat9;
    let x_4751 : vec4<f32> = u_xlat9;
    u_xlat58.x = dot(vec3<f32>(x_4749.x, x_4749.y, x_4749.z), vec3<f32>(x_4751.x, x_4751.y, x_4751.z));
    let x_4756 : f32 = u_xlat58.x;
    u_xlat58.x = max(x_4756, 1.17549435e-38f);
    let x_4760 : f32 = u_xlat58.x;
    u_xlat58.x = inverseSqrt(x_4760);
    let x_4763 : vec2<f32> = u_xlat58;
    let x_4765 : vec4<f32> = u_xlat9;
    let x_4767 : vec3<f32> = (vec3<f32>(x_4763.x, x_4763.x, x_4763.x) * vec3<f32>(x_4765.x, x_4765.y, x_4765.z));
    let x_4768 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4767.x, x_4767.y, x_4767.z, x_4768.w);
    let x_4770 : vec4<f32> = u_xlat1;
    let x_4772 : vec4<f32> = u_xlat9;
    u_xlat58.x = dot(vec3<f32>(x_4770.x, x_4770.y, x_4770.z), vec3<f32>(x_4772.x, x_4772.y, x_4772.z));
    let x_4777 : f32 = u_xlat58.x;
    u_xlat58.x = clamp(x_4777, 0.0f, 1.0f);
    let x_4780 : vec4<f32> = u_xlat10;
    let x_4782 : vec4<f32> = u_xlat9;
    u_xlat58.y = dot(vec3<f32>(x_4780.x, x_4780.y, x_4780.z), vec3<f32>(x_4782.x, x_4782.y, x_4782.z));
    let x_4787 : f32 = u_xlat58.y;
    u_xlat58.y = clamp(x_4787, 0.0f, 1.0f);
    let x_4790 : vec2<f32> = u_xlat58;
    let x_4791 : vec2<f32> = u_xlat58;
    u_xlat58 = (x_4790 * x_4791);
    let x_4794 : f32 = u_xlat58.x;
    let x_4796 : f32 = u_xlat0.x;
    u_xlat58.x = ((x_4794 * x_4796) + 1.00001001358032226562f);
    let x_4801 : f32 = u_xlat58.x;
    let x_4803 : f32 = u_xlat58.x;
    u_xlat58.x = (x_4801 * x_4803);
    let x_4807 : f32 = u_xlat58.y;
    u_xlat84 = max(x_4807, 0.10000000149011611938f);
    let x_4809 : f32 = u_xlat84;
    let x_4811 : f32 = u_xlat58.x;
    u_xlat58.x = (x_4809 * x_4811);
    let x_4814 : f32 = u_xlat82;
    let x_4816 : f32 = u_xlat58.x;
    u_xlat58.x = (x_4814 * x_4816);
    let x_4819 : f32 = u_xlat79;
    let x_4821 : f32 = u_xlat58.x;
    u_xlat58.x = (x_4819 / x_4821);
    let x_4824 : vec4<f32> = u_xlat4;
    let x_4826 : vec2<f32> = u_xlat58;
    let x_4829 : vec3<f32> = u_xlat29;
    let x_4830 : vec3<f32> = ((vec3<f32>(x_4824.x, x_4824.y, x_4824.z) * vec3<f32>(x_4826.x, x_4826.x, x_4826.x)) + x_4829);
    let x_4831 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4830.x, x_4830.y, x_4830.z, x_4831.w);
    let x_4833 : vec4<f32> = u_xlat9;
    let x_4835 : vec4<f32> = u_xlat11;
    let x_4838 : vec4<f32> = u_xlat8;
    let x_4840 : vec3<f32> = ((vec3<f32>(x_4833.x, x_4833.y, x_4833.z) * vec3<f32>(x_4835.x, x_4835.y, x_4835.z)) + vec3<f32>(x_4838.x, x_4838.y, x_4838.z));
    let x_4841 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4840.x, x_4840.y, x_4840.z, x_4841.w);

    continuing {
      let x_4843 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4843 + bitcast<u32>(1i));
    }
  }
  let x_4845 : vec3<f32> = u_xlat28;
  let x_4846 : f32 = u_xlat26;
  let x_4849 : vec4<f32> = u_xlat5;
  u_xlat0 = ((x_4845 * vec3<f32>(x_4846, x_4846, x_4846)) + vec3<f32>(x_4849.x, x_4849.z, x_4849.w));
  let x_4852 : vec4<f32> = u_xlat8;
  let x_4854 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4852.x, x_4852.y, x_4852.z) + x_4854);
  let x_4856 : f32 = u_xlat78;
  let x_4858 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4856, x_4856, x_4856) * x_4858);
  let x_4861 : f32 = u_xlat2.x;
  let x_4863 : f32 = u_xlat2.x;
  u_xlat78 = (x_4861 * -(x_4863));
  let x_4866 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4866);
  let x_4870 : vec3<f32> = u_xlat0;
  let x_4871 : f32 = u_xlat78;
  let x_4873 : vec3<f32> = (x_4870 * vec3<f32>(x_4871, x_4871, x_4871));
  let x_4874 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4873.x, x_4873.y, x_4873.z, x_4874.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>, @location(7) vs_TEXCOORD8_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


