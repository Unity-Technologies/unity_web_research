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
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
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

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(14) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_111 : PGlobals;

var<private> u_xlat78 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(15) var sampler_Splat0 : sampler;

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

var<private> u_xlat52 : f32;

var<private> u_xlat26 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat27 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_587 : LightShadows;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu79 : u32;

var<private> u_xlati79 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(13) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlatb83 : bool;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat83 : f32;

var<private> u_xlatb84 : bool;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat84 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat35 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb29 : bool;

var<private> u_xlatb55 : bool;

var<private> u_xlat29 : f32;

var<private> u_xlat55 : f32;

@group(1) @binding(5) var<uniform> x_2240 : LightCookies;

@group(0) @binding(10) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb8 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2428 : UnityPerDraw;

var<private> u_xlatu52 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu84 : u32;

var<private> u_xlati59 : i32;

var<private> u_xlati84 : i32;

@group(1) @binding(1) var<uniform> x_2719 : AdditionalLights;

var<private> u_xlat85 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlati86 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb86 : bool;

@group(0) @binding(9) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat89 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb88 : bool;

var<private> u_xlati87 : i32;

var<private> u_xlati88 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat37 : vec3<f32>;

@group(0) @binding(11) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu83 : u32;

fn main_1() {
  var x_560 : vec3<f32>;
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
  var x_2193 : f32;
  var x_2323 : f32;
  var x_2334 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2873 : f32;
  var x_2883 : f32;
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
  var x_4461 : f32;
  var x_4474 : f32;
  var x_4532 : f32;
  var x_4543 : vec3<f32>;
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
  let x_367 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_367;
  let x_370 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_370;
  let x_373 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_373;
  let x_376 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_376;
  let x_379 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_379;
  let x_382 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_382;
  let x_385 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_385;
  let x_388 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_388;
  let x_390 : vec4<f32> = u_xlat6;
  let x_391 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_390 + x_391);
  let x_394 : f32 = u_xlat0.z;
  u_xlat7.x = x_394;
  let x_397 : f32 = u_xlat1.z;
  u_xlat7.y = x_397;
  let x_400 : f32 = u_xlat2.z;
  u_xlat7.z = x_400;
  let x_403 : f32 = u_xlat3.y;
  u_xlat7.w = x_403;
  let x_405 : vec4<f32> = u_xlat9;
  let x_408 : f32 = x_13.x_Smoothness0;
  let x_410 : f32 = x_13.x_Smoothness1;
  let x_412 : f32 = x_13.x_Smoothness2;
  let x_414 : f32 = x_13.x_Smoothness3;
  let x_417 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_405) * vec4<f32>(x_408, x_410, x_412, x_414)) + x_417);
  let x_421 : f32 = x_13.x_LayerHasMask0;
  let x_424 : f32 = x_13.x_LayerHasMask1;
  let x_427 : f32 = x_13.x_LayerHasMask2;
  let x_430 : f32 = x_13.x_LayerHasMask3;
  let x_432 : vec4<f32> = u_xlat7;
  let x_434 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_421, x_424, x_427, x_430) * x_432) + x_434);
  let x_437 : vec4<f32> = u_xlat4;
  let x_438 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(x_437, x_438);
  let x_441 : f32 = u_xlat0.x;
  u_xlat7.x = x_441;
  let x_444 : f32 = u_xlat1.x;
  u_xlat7.y = x_444;
  let x_447 : f32 = u_xlat2.x;
  u_xlat7.z = x_447;
  let x_450 : f32 = u_xlat3.x;
  u_xlat7.w = x_450;
  let x_452 : vec4<f32> = u_xlat7;
  let x_455 : f32 = x_13.x_Metallic0;
  let x_458 : f32 = x_13.x_Metallic1;
  let x_461 : f32 = x_13.x_Metallic2;
  let x_464 : f32 = x_13.x_Metallic3;
  u_xlat7 = (x_452 + -(vec4<f32>(x_455, x_458, x_461, x_464)));
  let x_469 : f32 = x_13.x_LayerHasMask0;
  let x_471 : f32 = x_13.x_LayerHasMask1;
  let x_473 : f32 = x_13.x_LayerHasMask2;
  let x_475 : f32 = x_13.x_LayerHasMask3;
  let x_477 : vec4<f32> = u_xlat7;
  let x_480 : f32 = x_13.x_Metallic0;
  let x_482 : f32 = x_13.x_Metallic1;
  let x_484 : f32 = x_13.x_Metallic2;
  let x_486 : f32 = x_13.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_469, x_471, x_473, x_475) * x_477) + vec4<f32>(x_480, x_482, x_484, x_486));
  let x_489 : vec4<f32> = u_xlat4;
  let x_490 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_489, x_490);
  let x_494 : f32 = u_xlat0.y;
  u_xlat3.x = x_494;
  let x_497 : f32 = u_xlat1.y;
  u_xlat3.y = x_497;
  let x_500 : f32 = u_xlat2.y;
  u_xlat3.z = x_500;
  let x_502 : vec4<f32> = u_xlat6;
  let x_504 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_502) + x_504);
  let x_507 : f32 = x_13.x_LayerHasMask0;
  let x_509 : f32 = x_13.x_LayerHasMask1;
  let x_511 : f32 = x_13.x_LayerHasMask2;
  let x_513 : f32 = x_13.x_LayerHasMask3;
  let x_515 : vec4<f32> = u_xlat1;
  let x_517 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_507, x_509, x_511, x_513) * x_515) + x_517);
  let x_520 : vec4<f32> = u_xlat4;
  let x_521 : vec4<f32> = u_xlat1;
  u_xlat26 = dot(x_520, x_521);
  let x_525 : f32 = x_111.unity_OrthoParams.w;
  u_xlatb1 = (x_525 == 0.0f);
  let x_530 : vec3<f32> = vs_TEXCOORD7;
  let x_534 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  u_xlat27 = (-(x_530) + x_534);
  let x_536 : vec3<f32> = u_xlat27;
  let x_537 : vec3<f32> = u_xlat27;
  u_xlat2.x = dot(x_536, x_537);
  let x_541 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_541);
  let x_544 : vec3<f32> = u_xlat27;
  let x_545 : vec3<f32> = u_xlat2;
  u_xlat27 = (x_544 * vec3<f32>(x_545.x, x_545.x, x_545.x));
  let x_549 : f32 = x_111.unity_MatrixV[0i].z;
  u_xlat2.x = x_549;
  let x_552 : f32 = x_111.unity_MatrixV[1i].z;
  u_xlat2.y = x_552;
  let x_556 : f32 = x_111.unity_MatrixV[2i].z;
  u_xlat2.z = x_556;
  let x_558 : bool = u_xlatb1;
  if (x_558) {
    let x_563 : vec3<f32> = u_xlat27;
    x_560 = x_563;
  } else {
    let x_565 : vec3<f32> = u_xlat2;
    x_560 = x_565;
  }
  let x_566 : vec3<f32> = x_560;
  let x_567 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
  let x_570 : vec3<f32> = vs_TEXCOORD3;
  let x_571 : vec3<f32> = vs_TEXCOORD3;
  u_xlat79 = dot(x_570, x_571);
  let x_573 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_573);
  let x_575 : f32 = u_xlat79;
  let x_577 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_575, x_575, x_575) * x_577);
  let x_579 : vec3<f32> = vs_TEXCOORD7;
  let x_589 : vec4<f32> = x_587.x_CascadeShadowSplitSpheres0;
  let x_592 : vec3<f32> = (x_579 + -(vec3<f32>(x_589.x, x_589.y, x_589.z)));
  let x_593 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
  let x_595 : vec3<f32> = vs_TEXCOORD7;
  let x_597 : vec4<f32> = x_587.x_CascadeShadowSplitSpheres1;
  let x_600 : vec3<f32> = (x_595 + -(vec3<f32>(x_597.x, x_597.y, x_597.z)));
  let x_601 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
  let x_603 : vec3<f32> = vs_TEXCOORD7;
  let x_606 : vec4<f32> = x_587.x_CascadeShadowSplitSpheres2;
  let x_609 : vec3<f32> = (x_603 + -(vec3<f32>(x_606.x, x_606.y, x_606.z)));
  let x_610 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  let x_612 : vec3<f32> = vs_TEXCOORD7;
  let x_614 : vec4<f32> = x_587.x_CascadeShadowSplitSpheres3;
  let x_617 : vec3<f32> = (x_612 + -(vec3<f32>(x_614.x, x_614.y, x_614.z)));
  let x_618 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_620 : vec4<f32> = u_xlat3;
  let x_622 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_620.x, x_620.y, x_620.z), vec3<f32>(x_622.x, x_622.y, x_622.z));
  let x_626 : vec4<f32> = u_xlat4;
  let x_628 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_626.x, x_626.y, x_626.z), vec3<f32>(x_628.x, x_628.y, x_628.z));
  let x_632 : vec4<f32> = u_xlat6;
  let x_634 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_632.x, x_632.y, x_632.z), vec3<f32>(x_634.x, x_634.y, x_634.z));
  let x_638 : vec4<f32> = u_xlat7;
  let x_640 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_638.x, x_638.y, x_638.z), vec3<f32>(x_640.x, x_640.y, x_640.z));
  let x_646 : vec4<f32> = u_xlat3;
  let x_648 : vec4<f32> = x_587.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_646 < x_648);
  let x_651 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_651);
  let x_655 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_655);
  let x_659 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_659);
  let x_663 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_663);
  let x_667 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_667);
  let x_672 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_672);
  let x_676 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_676);
  let x_679 : vec4<f32> = u_xlat3;
  let x_681 : vec4<f32> = u_xlat4;
  let x_683 : vec3<f32> = (vec3<f32>(x_679.x, x_679.y, x_679.z) + vec3<f32>(x_681.y, x_681.z, x_681.w));
  let x_684 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
  let x_686 : vec4<f32> = u_xlat3;
  let x_689 : vec3<f32> = max(vec3<f32>(x_686.x, x_686.y, x_686.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_690 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_690.x, x_689.x, x_689.y, x_689.z);
  let x_692 : vec4<f32> = u_xlat4;
  u_xlat79 = dot(x_692, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_697 : f32 = u_xlat79;
  u_xlat79 = (-(x_697) + 4.0f);
  let x_702 : f32 = u_xlat79;
  u_xlatu79 = u32(x_702);
  let x_706 : u32 = u_xlatu79;
  u_xlati79 = (bitcast<i32>(x_706) << bitcast<u32>(2i));
  let x_709 : vec3<f32> = vs_TEXCOORD7;
  let x_711 : i32 = u_xlati79;
  let x_714 : i32 = u_xlati79;
  let x_718 : vec4<f32> = x_587.x_MainLightWorldToShadow[((x_711 + 1i) / 4i)][((x_714 + 1i) % 4i)];
  let x_720 : vec3<f32> = (vec3<f32>(x_709.y, x_709.y, x_709.y) * vec3<f32>(x_718.x, x_718.y, x_718.z));
  let x_721 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  let x_723 : i32 = u_xlati79;
  let x_725 : i32 = u_xlati79;
  let x_728 : vec4<f32> = x_587.x_MainLightWorldToShadow[(x_723 / 4i)][(x_725 % 4i)];
  let x_730 : vec3<f32> = vs_TEXCOORD7;
  let x_733 : vec4<f32> = u_xlat3;
  let x_735 : vec3<f32> = ((vec3<f32>(x_728.x, x_728.y, x_728.z) * vec3<f32>(x_730.x, x_730.x, x_730.x)) + vec3<f32>(x_733.x, x_733.y, x_733.z));
  let x_736 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_735.x, x_735.y, x_735.z, x_736.w);
  let x_738 : i32 = u_xlati79;
  let x_741 : i32 = u_xlati79;
  let x_745 : vec4<f32> = x_587.x_MainLightWorldToShadow[((x_738 + 2i) / 4i)][((x_741 + 2i) % 4i)];
  let x_747 : vec3<f32> = vs_TEXCOORD7;
  let x_750 : vec4<f32> = u_xlat3;
  let x_752 : vec3<f32> = ((vec3<f32>(x_745.x, x_745.y, x_745.z) * vec3<f32>(x_747.z, x_747.z, x_747.z)) + vec3<f32>(x_750.x, x_750.y, x_750.z));
  let x_753 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_752.x, x_752.y, x_752.z, x_753.w);
  let x_755 : vec4<f32> = u_xlat3;
  let x_757 : i32 = u_xlati79;
  let x_760 : i32 = u_xlati79;
  let x_764 : vec4<f32> = x_587.x_MainLightWorldToShadow[((x_757 + 3i) / 4i)][((x_760 + 3i) % 4i)];
  let x_766 : vec3<f32> = (vec3<f32>(x_755.x, x_755.y, x_755.z) + vec3<f32>(x_764.x, x_764.y, x_764.z));
  let x_767 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_766.x, x_766.y, x_766.z, x_767.w);
  let x_771 : f32 = vs_TEXCOORD7.y;
  let x_773 : f32 = x_111.unity_MatrixV[1i].z;
  u_xlat79 = (x_771 * x_773);
  let x_776 : f32 = x_111.unity_MatrixV[0i].z;
  let x_778 : f32 = vs_TEXCOORD7.x;
  let x_780 : f32 = u_xlat79;
  u_xlat79 = ((x_776 * x_778) + x_780);
  let x_783 : f32 = x_111.unity_MatrixV[2i].z;
  let x_785 : f32 = vs_TEXCOORD7.z;
  let x_787 : f32 = u_xlat79;
  u_xlat79 = ((x_783 * x_785) + x_787);
  let x_789 : f32 = u_xlat79;
  let x_791 : f32 = x_111.unity_MatrixV[3i].z;
  u_xlat79 = (x_789 + x_791);
  let x_793 : f32 = u_xlat79;
  let x_796 : f32 = x_111.x_ProjectionParams.y;
  u_xlat79 = (-(x_793) + -(x_796));
  let x_799 : f32 = u_xlat79;
  u_xlat79 = max(x_799, 0.0f);
  let x_801 : f32 = u_xlat79;
  let x_803 : f32 = x_111.unity_FogParams.x;
  u_xlat79 = (x_801 * x_803);
  let x_810 : vec4<f32> = vs_TEXCOORD0;
  let x_813 : f32 = x_111.x_GlobalMipBias.x;
  let x_814 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_810.z, x_810.w), x_813);
  u_xlat4 = x_814;
  let x_819 : vec4<f32> = vs_TEXCOORD0;
  let x_822 : f32 = x_111.x_GlobalMipBias.x;
  let x_823 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_819.z, x_819.w), x_822);
  let x_824 : vec3<f32> = vec3<f32>(x_823.x, x_823.y, x_823.z);
  let x_825 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_824.x, x_824.y, x_824.z, x_825.w);
  let x_827 : vec4<f32> = u_xlat4;
  let x_831 : vec3<f32> = (vec3<f32>(x_827.x, x_827.y, x_827.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_832 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_835 : vec3<f32> = u_xlat2;
  let x_836 : vec4<f32> = u_xlat4;
  u_xlat80 = dot(x_835, vec3<f32>(x_836.x, x_836.y, x_836.z));
  let x_839 : f32 = u_xlat80;
  u_xlat80 = (x_839 + 0.5f);
  let x_841 : f32 = u_xlat80;
  let x_843 : vec4<f32> = u_xlat6;
  let x_845 : vec3<f32> = (vec3<f32>(x_841, x_841, x_841) * vec3<f32>(x_843.x, x_843.y, x_843.z));
  let x_846 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_845.x, x_845.y, x_845.z, x_846.w);
  let x_849 : f32 = u_xlat4.w;
  u_xlat80 = max(x_849, 0.00009999999747378752f);
  let x_852 : vec4<f32> = u_xlat4;
  let x_854 : f32 = u_xlat80;
  let x_856 : vec3<f32> = (vec3<f32>(x_852.x, x_852.y, x_852.z) / vec3<f32>(x_854, x_854, x_854));
  let x_857 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_856.x, x_856.y, x_856.z, x_857.w);
  let x_860 : f32 = u_xlat0.x;
  u_xlat80 = ((-(x_860) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_866 : f32 = u_xlat52;
  let x_867 : f32 = u_xlat80;
  u_xlat81 = (x_866 + -(x_867));
  let x_870 : f32 = u_xlat80;
  let x_872 : vec4<f32> = u_xlat5;
  let x_874 : vec3<f32> = (vec3<f32>(x_870, x_870, x_870) * vec3<f32>(x_872.x, x_872.y, x_872.z));
  let x_875 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_877 : vec4<f32> = u_xlat5;
  let x_881 : vec3<f32> = (vec3<f32>(x_877.x, x_877.y, x_877.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_882 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_881.x, x_881.y, x_881.z, x_882.w);
  let x_884 : vec3<f32> = u_xlat0;
  let x_886 : vec4<f32> = u_xlat5;
  let x_891 : vec3<f32> = ((vec3<f32>(x_884.x, x_884.x, x_884.x) * vec3<f32>(x_886.x, x_886.y, x_886.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_892 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_891.x, x_891.y, x_891.z, x_892.w);
  let x_894 : f32 = u_xlat52;
  u_xlat0.x = (-(x_894) + 1.0f);
  let x_899 : f32 = u_xlat0.x;
  let x_901 : f32 = u_xlat0.x;
  u_xlat52 = (x_899 * x_901);
  let x_903 : f32 = u_xlat52;
  u_xlat52 = max(x_903, 0.0078125f);
  let x_906 : f32 = u_xlat52;
  let x_907 : f32 = u_xlat52;
  u_xlat80 = (x_906 * x_907);
  let x_909 : f32 = u_xlat81;
  u_xlat81 = (x_909 + 1.0f);
  let x_911 : f32 = u_xlat81;
  u_xlat81 = clamp(x_911, 0.0f, 1.0f);
  let x_914 : f32 = u_xlat52;
  u_xlat82 = ((x_914 * 4.0f) + 2.0f);
  let x_917 : f32 = u_xlat26;
  u_xlat26 = min(x_917, 1.0f);
  let x_921 : f32 = x_587.x_MainLightShadowParams.y;
  u_xlatb83 = (0.0f < x_921);
  let x_923 : bool = u_xlatb83;
  if (x_923) {
    let x_927 : f32 = x_587.x_MainLightShadowParams.y;
    u_xlatb83 = (x_927 == 1.0f);
    let x_929 : bool = u_xlatb83;
    if (x_929) {
      let x_932 : vec4<f32> = u_xlat3;
      let x_935 : vec4<f32> = x_587.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_932.x, x_932.y, x_932.x, x_932.y) + x_935);
      let x_938 : vec4<f32> = u_xlat7;
      let x_939 : vec2<f32> = vec2<f32>(x_938.x, x_938.y);
      let x_941 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_939.x, x_939.y, x_941);
      let x_953 : vec3<f32> = txVec0;
      let x_955 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_953.xy, x_953.z);
      u_xlat8.x = x_955;
      let x_958 : vec4<f32> = u_xlat7;
      let x_959 : vec2<f32> = vec2<f32>(x_958.z, x_958.w);
      let x_961 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_959.x, x_959.y, x_961);
      let x_968 : vec3<f32> = txVec1;
      let x_970 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_968.xy, x_968.z);
      u_xlat8.y = x_970;
      let x_972 : vec4<f32> = u_xlat3;
      let x_975 : vec4<f32> = x_587.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_972.x, x_972.y, x_972.x, x_972.y) + x_975);
      let x_978 : vec4<f32> = u_xlat7;
      let x_979 : vec2<f32> = vec2<f32>(x_978.x, x_978.y);
      let x_981 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_979.x, x_979.y, x_981);
      let x_988 : vec3<f32> = txVec2;
      let x_990 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_988.xy, x_988.z);
      u_xlat8.z = x_990;
      let x_993 : vec4<f32> = u_xlat7;
      let x_994 : vec2<f32> = vec2<f32>(x_993.z, x_993.w);
      let x_996 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_994.x, x_994.y, x_996);
      let x_1003 : vec3<f32> = txVec3;
      let x_1005 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1003.xy, x_1003.z);
      u_xlat8.w = x_1005;
      let x_1008 : vec4<f32> = u_xlat8;
      u_xlat83 = dot(x_1008, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1015 : f32 = x_587.x_MainLightShadowParams.y;
      u_xlatb84 = (x_1015 == 2.0f);
      let x_1017 : bool = u_xlatb84;
      if (x_1017) {
        let x_1020 : vec4<f32> = u_xlat3;
        let x_1023 : vec4<f32> = x_587.x_MainLightShadowmapSize;
        let x_1026 : vec2<f32> = ((vec2<f32>(x_1020.x, x_1020.y) * vec2<f32>(x_1023.z, x_1023.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1027 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1026.x, x_1026.y, x_1027.z, x_1027.w);
        let x_1029 : vec4<f32> = u_xlat7;
        let x_1031 : vec2<f32> = floor(vec2<f32>(x_1029.x, x_1029.y));
        let x_1032 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1031.x, x_1031.y, x_1032.z, x_1032.w);
        let x_1036 : vec4<f32> = u_xlat3;
        let x_1039 : vec4<f32> = x_587.x_MainLightShadowmapSize;
        let x_1042 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1036.x, x_1036.y) * vec2<f32>(x_1039.z, x_1039.w)) + -(vec2<f32>(x_1042.x, x_1042.y)));
        let x_1046 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_1046.x, x_1046.x, x_1046.y, x_1046.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1050 : vec4<f32> = u_xlat8;
        let x_1052 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1050.x, x_1050.x, x_1050.z, x_1050.z) * vec4<f32>(x_1052.x, x_1052.x, x_1052.z, x_1052.z));
        let x_1055 : vec4<f32> = u_xlat9;
        let x_1059 : vec2<f32> = (vec2<f32>(x_1055.y, x_1055.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1060 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1059.x, x_1060.y, x_1059.y, x_1060.w);
        let x_1062 : vec4<f32> = u_xlat9;
        let x_1065 : vec2<f32> = u_xlat59;
        let x_1067 : vec2<f32> = ((vec2<f32>(x_1062.x, x_1062.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1065));
        let x_1068 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1067.x, x_1067.y, x_1068.z, x_1068.w);
        let x_1071 : vec2<f32> = u_xlat59;
        u_xlat61 = (-(x_1071) + vec2<f32>(1.0f, 1.0f));
        let x_1075 : vec2<f32> = u_xlat59;
        let x_1077 : vec2<f32> = min(x_1075, vec2<f32>(0.0f, 0.0f));
        let x_1078 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1077.x, x_1077.y, x_1078.z, x_1078.w);
        let x_1080 : vec4<f32> = u_xlat10;
        let x_1083 : vec4<f32> = u_xlat10;
        let x_1086 : vec2<f32> = u_xlat61;
        let x_1087 : vec2<f32> = ((-(vec2<f32>(x_1080.x, x_1080.y)) * vec2<f32>(x_1083.x, x_1083.y)) + x_1086);
        let x_1088 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1087.x, x_1087.y, x_1088.z, x_1088.w);
        let x_1090 : vec2<f32> = u_xlat59;
        u_xlat59 = max(x_1090, vec2<f32>(0.0f, 0.0f));
        let x_1092 : vec2<f32> = u_xlat59;
        let x_1094 : vec2<f32> = u_xlat59;
        let x_1096 : vec4<f32> = u_xlat8;
        u_xlat59 = ((-(x_1092) * x_1094) + vec2<f32>(x_1096.y, x_1096.w));
        let x_1099 : vec4<f32> = u_xlat10;
        let x_1101 : vec2<f32> = (vec2<f32>(x_1099.x, x_1099.y) + vec2<f32>(1.0f, 1.0f));
        let x_1102 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1101.x, x_1101.y, x_1102.z, x_1102.w);
        let x_1104 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_1104 + vec2<f32>(1.0f, 1.0f));
        let x_1106 : vec4<f32> = u_xlat9;
        let x_1110 : vec2<f32> = (vec2<f32>(x_1106.x, x_1106.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1111 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1110.x, x_1110.y, x_1111.z, x_1111.w);
        let x_1113 : vec2<f32> = u_xlat61;
        let x_1114 : vec2<f32> = (x_1113 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1115 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1114.x, x_1114.y, x_1115.z, x_1115.w);
        let x_1117 : vec4<f32> = u_xlat10;
        let x_1119 : vec2<f32> = (vec2<f32>(x_1117.x, x_1117.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1120 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1119.x, x_1119.y, x_1120.z, x_1120.w);
        let x_1122 : vec2<f32> = u_xlat59;
        let x_1123 : vec2<f32> = (x_1122 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1124 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1123.x, x_1123.y, x_1124.z, x_1124.w);
        let x_1126 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_1126.y, x_1126.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1130 : f32 = u_xlat10.x;
        u_xlat11.z = x_1130;
        let x_1133 : f32 = u_xlat59.x;
        u_xlat11.w = x_1133;
        let x_1136 : f32 = u_xlat12.x;
        u_xlat9.z = x_1136;
        let x_1139 : f32 = u_xlat8.x;
        u_xlat9.w = x_1139;
        let x_1141 : vec4<f32> = u_xlat9;
        let x_1143 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1141.z, x_1141.w, x_1141.x, x_1141.z) + vec4<f32>(x_1143.z, x_1143.w, x_1143.x, x_1143.z));
        let x_1147 : f32 = u_xlat11.y;
        u_xlat10.z = x_1147;
        let x_1150 : f32 = u_xlat59.y;
        u_xlat10.w = x_1150;
        let x_1153 : f32 = u_xlat9.y;
        u_xlat12.z = x_1153;
        let x_1156 : f32 = u_xlat8.z;
        u_xlat12.w = x_1156;
        let x_1158 : vec4<f32> = u_xlat10;
        let x_1160 : vec4<f32> = u_xlat12;
        let x_1162 : vec3<f32> = (vec3<f32>(x_1158.z, x_1158.y, x_1158.w) + vec3<f32>(x_1160.z, x_1160.y, x_1160.w));
        let x_1163 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1162.x, x_1162.y, x_1162.z, x_1163.w);
        let x_1165 : vec4<f32> = u_xlat9;
        let x_1167 : vec4<f32> = u_xlat13;
        let x_1169 : vec3<f32> = (vec3<f32>(x_1165.x, x_1165.z, x_1165.w) / vec3<f32>(x_1167.z, x_1167.w, x_1167.y));
        let x_1170 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1169.x, x_1169.y, x_1169.z, x_1170.w);
        let x_1172 : vec4<f32> = u_xlat9;
        let x_1177 : vec3<f32> = (vec3<f32>(x_1172.x, x_1172.y, x_1172.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1178 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1177.x, x_1177.y, x_1177.z, x_1178.w);
        let x_1180 : vec4<f32> = u_xlat12;
        let x_1182 : vec4<f32> = u_xlat8;
        let x_1184 : vec3<f32> = (vec3<f32>(x_1180.z, x_1180.y, x_1180.w) / vec3<f32>(x_1182.x, x_1182.y, x_1182.z));
        let x_1185 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1184.x, x_1184.y, x_1184.z, x_1185.w);
        let x_1187 : vec4<f32> = u_xlat10;
        let x_1189 : vec3<f32> = (vec3<f32>(x_1187.x, x_1187.y, x_1187.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1190 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1189.x, x_1189.y, x_1189.z, x_1190.w);
        let x_1192 : vec4<f32> = u_xlat9;
        let x_1195 : vec4<f32> = x_587.x_MainLightShadowmapSize;
        let x_1197 : vec3<f32> = (vec3<f32>(x_1192.y, x_1192.x, x_1192.z) * vec3<f32>(x_1195.x, x_1195.x, x_1195.x));
        let x_1198 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1197.x, x_1197.y, x_1197.z, x_1198.w);
        let x_1200 : vec4<f32> = u_xlat10;
        let x_1203 : vec4<f32> = x_587.x_MainLightShadowmapSize;
        let x_1205 : vec3<f32> = (vec3<f32>(x_1200.x, x_1200.y, x_1200.z) * vec3<f32>(x_1203.y, x_1203.y, x_1203.y));
        let x_1206 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1205.x, x_1205.y, x_1205.z, x_1206.w);
        let x_1209 : f32 = u_xlat10.x;
        u_xlat9.w = x_1209;
        let x_1211 : vec4<f32> = u_xlat7;
        let x_1214 : vec4<f32> = x_587.x_MainLightShadowmapSize;
        let x_1217 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1211.x, x_1211.y, x_1211.x, x_1211.y) * vec4<f32>(x_1214.x, x_1214.y, x_1214.x, x_1214.y)) + vec4<f32>(x_1217.y, x_1217.w, x_1217.x, x_1217.w));
        let x_1220 : vec4<f32> = u_xlat7;
        let x_1223 : vec4<f32> = x_587.x_MainLightShadowmapSize;
        let x_1226 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1220.x, x_1220.y) * vec2<f32>(x_1223.x, x_1223.y)) + vec2<f32>(x_1226.z, x_1226.w));
        let x_1230 : f32 = u_xlat9.y;
        u_xlat10.w = x_1230;
        let x_1232 : vec4<f32> = u_xlat10;
        let x_1233 : vec2<f32> = vec2<f32>(x_1232.y, x_1232.z);
        let x_1234 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1234.x, x_1233.x, x_1234.z, x_1233.y);
        let x_1236 : vec4<f32> = u_xlat7;
        let x_1239 : vec4<f32> = x_587.x_MainLightShadowmapSize;
        let x_1242 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1236.x, x_1236.y, x_1236.x, x_1236.y) * vec4<f32>(x_1239.x, x_1239.y, x_1239.x, x_1239.y)) + vec4<f32>(x_1242.x, x_1242.y, x_1242.z, x_1242.y));
        let x_1245 : vec4<f32> = u_xlat7;
        let x_1248 : vec4<f32> = x_587.x_MainLightShadowmapSize;
        let x_1251 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1245.x, x_1245.y, x_1245.x, x_1245.y) * vec4<f32>(x_1248.x, x_1248.y, x_1248.x, x_1248.y)) + vec4<f32>(x_1251.w, x_1251.y, x_1251.w, x_1251.z));
        let x_1254 : vec4<f32> = u_xlat7;
        let x_1257 : vec4<f32> = x_587.x_MainLightShadowmapSize;
        let x_1260 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1254.x, x_1254.y, x_1254.x, x_1254.y) * vec4<f32>(x_1257.x, x_1257.y, x_1257.x, x_1257.y)) + vec4<f32>(x_1260.x, x_1260.w, x_1260.z, x_1260.w));
        let x_1264 : vec4<f32> = u_xlat8;
        let x_1266 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1264.x, x_1264.x, x_1264.x, x_1264.y) * vec4<f32>(x_1266.z, x_1266.w, x_1266.y, x_1266.z));
        let x_1270 : vec4<f32> = u_xlat8;
        let x_1272 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1270.y, x_1270.y, x_1270.z, x_1270.z) * x_1272);
        let x_1276 : f32 = u_xlat8.z;
        let x_1278 : f32 = u_xlat13.y;
        u_xlat84 = (x_1276 * x_1278);
        let x_1281 : vec4<f32> = u_xlat11;
        let x_1282 : vec2<f32> = vec2<f32>(x_1281.x, x_1281.y);
        let x_1284 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1282.x, x_1282.y, x_1284);
        let x_1291 : vec3<f32> = txVec4;
        let x_1293 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1291.xy, x_1291.z);
        u_xlat7.x = x_1293;
        let x_1296 : vec4<f32> = u_xlat11;
        let x_1297 : vec2<f32> = vec2<f32>(x_1296.z, x_1296.w);
        let x_1299 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1297.x, x_1297.y, x_1299);
        let x_1307 : vec3<f32> = txVec5;
        let x_1309 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1307.xy, x_1307.z);
        u_xlat33 = x_1309;
        let x_1310 : f32 = u_xlat33;
        let x_1312 : f32 = u_xlat14.y;
        u_xlat33 = (x_1310 * x_1312);
        let x_1315 : f32 = u_xlat14.x;
        let x_1317 : f32 = u_xlat7.x;
        let x_1319 : f32 = u_xlat33;
        u_xlat7.x = ((x_1315 * x_1317) + x_1319);
        let x_1323 : vec2<f32> = u_xlat59;
        let x_1325 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1323.x, x_1323.y, x_1325);
        let x_1332 : vec3<f32> = txVec6;
        let x_1334 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1332.xy, x_1332.z);
        u_xlat33 = x_1334;
        let x_1336 : f32 = u_xlat14.z;
        let x_1337 : f32 = u_xlat33;
        let x_1340 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1336 * x_1337) + x_1340);
        let x_1344 : vec4<f32> = u_xlat10;
        let x_1345 : vec2<f32> = vec2<f32>(x_1344.x, x_1344.y);
        let x_1347 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1345.x, x_1345.y, x_1347);
        let x_1354 : vec3<f32> = txVec7;
        let x_1356 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1354.xy, x_1354.z);
        u_xlat33 = x_1356;
        let x_1358 : f32 = u_xlat14.w;
        let x_1359 : f32 = u_xlat33;
        let x_1362 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1358 * x_1359) + x_1362);
        let x_1366 : vec4<f32> = u_xlat12;
        let x_1367 : vec2<f32> = vec2<f32>(x_1366.x, x_1366.y);
        let x_1369 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1367.x, x_1367.y, x_1369);
        let x_1376 : vec3<f32> = txVec8;
        let x_1378 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1376.xy, x_1376.z);
        u_xlat33 = x_1378;
        let x_1380 : f32 = u_xlat15.x;
        let x_1381 : f32 = u_xlat33;
        let x_1384 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1380 * x_1381) + x_1384);
        let x_1388 : vec4<f32> = u_xlat12;
        let x_1389 : vec2<f32> = vec2<f32>(x_1388.z, x_1388.w);
        let x_1391 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1389.x, x_1389.y, x_1391);
        let x_1398 : vec3<f32> = txVec9;
        let x_1400 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1398.xy, x_1398.z);
        u_xlat33 = x_1400;
        let x_1402 : f32 = u_xlat15.y;
        let x_1403 : f32 = u_xlat33;
        let x_1406 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1402 * x_1403) + x_1406);
        let x_1410 : vec4<f32> = u_xlat10;
        let x_1411 : vec2<f32> = vec2<f32>(x_1410.z, x_1410.w);
        let x_1413 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1411.x, x_1411.y, x_1413);
        let x_1420 : vec3<f32> = txVec10;
        let x_1422 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1420.xy, x_1420.z);
        u_xlat33 = x_1422;
        let x_1424 : f32 = u_xlat15.z;
        let x_1425 : f32 = u_xlat33;
        let x_1428 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1424 * x_1425) + x_1428);
        let x_1432 : vec4<f32> = u_xlat9;
        let x_1433 : vec2<f32> = vec2<f32>(x_1432.x, x_1432.y);
        let x_1435 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1433.x, x_1433.y, x_1435);
        let x_1442 : vec3<f32> = txVec11;
        let x_1444 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1442.xy, x_1442.z);
        u_xlat33 = x_1444;
        let x_1446 : f32 = u_xlat15.w;
        let x_1447 : f32 = u_xlat33;
        let x_1450 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1446 * x_1447) + x_1450);
        let x_1454 : vec4<f32> = u_xlat9;
        let x_1455 : vec2<f32> = vec2<f32>(x_1454.z, x_1454.w);
        let x_1457 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1455.x, x_1455.y, x_1457);
        let x_1464 : vec3<f32> = txVec12;
        let x_1466 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1464.xy, x_1464.z);
        u_xlat33 = x_1466;
        let x_1467 : f32 = u_xlat84;
        let x_1468 : f32 = u_xlat33;
        let x_1471 : f32 = u_xlat7.x;
        u_xlat83 = ((x_1467 * x_1468) + x_1471);
      } else {
        let x_1474 : vec4<f32> = u_xlat3;
        let x_1477 : vec4<f32> = x_587.x_MainLightShadowmapSize;
        let x_1480 : vec2<f32> = ((vec2<f32>(x_1474.x, x_1474.y) * vec2<f32>(x_1477.z, x_1477.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1481 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1480.x, x_1480.y, x_1481.z, x_1481.w);
        let x_1483 : vec4<f32> = u_xlat7;
        let x_1485 : vec2<f32> = floor(vec2<f32>(x_1483.x, x_1483.y));
        let x_1486 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1485.x, x_1485.y, x_1486.z, x_1486.w);
        let x_1488 : vec4<f32> = u_xlat3;
        let x_1491 : vec4<f32> = x_587.x_MainLightShadowmapSize;
        let x_1494 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1488.x, x_1488.y) * vec2<f32>(x_1491.z, x_1491.w)) + -(vec2<f32>(x_1494.x, x_1494.y)));
        let x_1498 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_1498.x, x_1498.x, x_1498.y, x_1498.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1501 : vec4<f32> = u_xlat8;
        let x_1503 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1501.x, x_1501.x, x_1501.z, x_1501.z) * vec4<f32>(x_1503.x, x_1503.x, x_1503.z, x_1503.z));
        let x_1506 : vec4<f32> = u_xlat9;
        let x_1510 : vec2<f32> = (vec2<f32>(x_1506.y, x_1506.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1511 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1511.x, x_1510.x, x_1511.z, x_1510.y);
        let x_1513 : vec4<f32> = u_xlat9;
        let x_1516 : vec2<f32> = u_xlat59;
        let x_1518 : vec2<f32> = ((vec2<f32>(x_1513.x, x_1513.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1516));
        let x_1519 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1518.x, x_1519.y, x_1518.y, x_1519.w);
        let x_1521 : vec2<f32> = u_xlat59;
        let x_1523 : vec2<f32> = (-(x_1521) + vec2<f32>(1.0f, 1.0f));
        let x_1524 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1523.x, x_1523.y, x_1524.z, x_1524.w);
        let x_1526 : vec2<f32> = u_xlat59;
        u_xlat61 = min(x_1526, vec2<f32>(0.0f, 0.0f));
        let x_1528 : vec2<f32> = u_xlat61;
        let x_1530 : vec2<f32> = u_xlat61;
        let x_1532 : vec4<f32> = u_xlat9;
        let x_1534 : vec2<f32> = ((-(x_1528) * x_1530) + vec2<f32>(x_1532.x, x_1532.y));
        let x_1535 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1534.x, x_1534.y, x_1535.z, x_1535.w);
        let x_1537 : vec2<f32> = u_xlat59;
        u_xlat61 = max(x_1537, vec2<f32>(0.0f, 0.0f));
        let x_1540 : vec2<f32> = u_xlat61;
        let x_1542 : vec2<f32> = u_xlat61;
        let x_1544 : vec4<f32> = u_xlat8;
        let x_1546 : vec2<f32> = ((-(x_1540) * x_1542) + vec2<f32>(x_1544.y, x_1544.w));
        let x_1547 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1546.x, x_1547.y, x_1546.y);
        let x_1549 : vec4<f32> = u_xlat9;
        let x_1552 : vec2<f32> = (vec2<f32>(x_1549.x, x_1549.y) + vec2<f32>(2.0f, 2.0f));
        let x_1553 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1552.x, x_1552.y, x_1553.z, x_1553.w);
        let x_1555 : vec3<f32> = u_xlat34;
        let x_1557 : vec2<f32> = (vec2<f32>(x_1555.x, x_1555.z) + vec2<f32>(2.0f, 2.0f));
        let x_1558 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1558.x, x_1557.x, x_1558.z, x_1557.y);
        let x_1561 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1561 * 0.08163200318813323975f);
        let x_1565 : vec4<f32> = u_xlat8;
        let x_1568 : vec3<f32> = (vec3<f32>(x_1565.z, x_1565.x, x_1565.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1569 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1568.x, x_1568.y, x_1568.z, x_1569.w);
        let x_1571 : vec4<f32> = u_xlat9;
        let x_1574 : vec2<f32> = (vec2<f32>(x_1571.x, x_1571.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1575 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1574.x, x_1574.y, x_1575.z, x_1575.w);
        let x_1578 : f32 = u_xlat12.y;
        u_xlat11.x = x_1578;
        let x_1580 : vec2<f32> = u_xlat59;
        let x_1587 : vec2<f32> = ((vec2<f32>(x_1580.x, x_1580.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1588 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1588.x, x_1587.x, x_1588.z, x_1587.y);
        let x_1590 : vec2<f32> = u_xlat59;
        let x_1594 : vec2<f32> = ((vec2<f32>(x_1590.x, x_1590.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1595 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1594.x, x_1595.y, x_1594.y, x_1595.w);
        let x_1598 : f32 = u_xlat8.x;
        u_xlat9.y = x_1598;
        let x_1601 : f32 = u_xlat10.y;
        u_xlat9.w = x_1601;
        let x_1603 : vec4<f32> = u_xlat9;
        let x_1604 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1603 + x_1604);
        let x_1606 : vec2<f32> = u_xlat59;
        let x_1609 : vec2<f32> = ((vec2<f32>(x_1606.y, x_1606.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1610 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1610.x, x_1609.x, x_1610.z, x_1609.y);
        let x_1612 : vec2<f32> = u_xlat59;
        let x_1615 : vec2<f32> = ((vec2<f32>(x_1612.y, x_1612.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1616 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1615.x, x_1616.y, x_1615.y, x_1616.w);
        let x_1619 : f32 = u_xlat8.y;
        u_xlat10.y = x_1619;
        let x_1621 : vec4<f32> = u_xlat10;
        let x_1622 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1621 + x_1622);
        let x_1624 : vec4<f32> = u_xlat9;
        let x_1625 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1624 / x_1625);
        let x_1627 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1627 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1633 : vec4<f32> = u_xlat10;
        let x_1634 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1633 / x_1634);
        let x_1636 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1636 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1638 : vec4<f32> = u_xlat9;
        let x_1641 : vec4<f32> = x_587.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1638.w, x_1638.x, x_1638.y, x_1638.z) * vec4<f32>(x_1641.x, x_1641.x, x_1641.x, x_1641.x));
        let x_1644 : vec4<f32> = u_xlat10;
        let x_1647 : vec4<f32> = x_587.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1644.x, x_1644.w, x_1644.y, x_1644.z) * vec4<f32>(x_1647.y, x_1647.y, x_1647.y, x_1647.y));
        let x_1650 : vec4<f32> = u_xlat9;
        let x_1651 : vec3<f32> = vec3<f32>(x_1650.y, x_1650.z, x_1650.w);
        let x_1652 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1651.x, x_1652.y, x_1651.y, x_1651.z);
        let x_1655 : f32 = u_xlat10.x;
        u_xlat12.y = x_1655;
        let x_1657 : vec4<f32> = u_xlat7;
        let x_1660 : vec4<f32> = x_587.x_MainLightShadowmapSize;
        let x_1663 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1657.x, x_1657.y, x_1657.x, x_1657.y) * vec4<f32>(x_1660.x, x_1660.y, x_1660.x, x_1660.y)) + vec4<f32>(x_1663.x, x_1663.y, x_1663.z, x_1663.y));
        let x_1666 : vec4<f32> = u_xlat7;
        let x_1669 : vec4<f32> = x_587.x_MainLightShadowmapSize;
        let x_1672 : vec4<f32> = u_xlat12;
        u_xlat59 = ((vec2<f32>(x_1666.x, x_1666.y) * vec2<f32>(x_1669.x, x_1669.y)) + vec2<f32>(x_1672.w, x_1672.y));
        let x_1676 : f32 = u_xlat12.y;
        u_xlat9.y = x_1676;
        let x_1679 : f32 = u_xlat10.z;
        u_xlat12.y = x_1679;
        let x_1681 : vec4<f32> = u_xlat7;
        let x_1684 : vec4<f32> = x_587.x_MainLightShadowmapSize;
        let x_1687 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1681.x, x_1681.y, x_1681.x, x_1681.y) * vec4<f32>(x_1684.x, x_1684.y, x_1684.x, x_1684.y)) + vec4<f32>(x_1687.x, x_1687.y, x_1687.z, x_1687.y));
        let x_1690 : vec4<f32> = u_xlat7;
        let x_1693 : vec4<f32> = x_587.x_MainLightShadowmapSize;
        let x_1696 : vec4<f32> = u_xlat12;
        let x_1698 : vec2<f32> = ((vec2<f32>(x_1690.x, x_1690.y) * vec2<f32>(x_1693.x, x_1693.y)) + vec2<f32>(x_1696.w, x_1696.y));
        let x_1699 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1698.x, x_1698.y, x_1699.z, x_1699.w);
        let x_1702 : f32 = u_xlat12.y;
        u_xlat9.z = x_1702;
        let x_1705 : vec4<f32> = u_xlat7;
        let x_1708 : vec4<f32> = x_587.x_MainLightShadowmapSize;
        let x_1711 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1705.x, x_1705.y, x_1705.x, x_1705.y) * vec4<f32>(x_1708.x, x_1708.y, x_1708.x, x_1708.y)) + vec4<f32>(x_1711.x, x_1711.y, x_1711.x, x_1711.z));
        let x_1715 : f32 = u_xlat10.w;
        u_xlat12.y = x_1715;
        let x_1718 : vec4<f32> = u_xlat7;
        let x_1721 : vec4<f32> = x_587.x_MainLightShadowmapSize;
        let x_1724 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1718.x, x_1718.y, x_1718.x, x_1718.y) * vec4<f32>(x_1721.x, x_1721.y, x_1721.x, x_1721.y)) + vec4<f32>(x_1724.x, x_1724.y, x_1724.z, x_1724.y));
        let x_1728 : vec4<f32> = u_xlat7;
        let x_1731 : vec4<f32> = x_587.x_MainLightShadowmapSize;
        let x_1734 : vec4<f32> = u_xlat12;
        u_xlat35 = ((vec2<f32>(x_1728.x, x_1728.y) * vec2<f32>(x_1731.x, x_1731.y)) + vec2<f32>(x_1734.w, x_1734.y));
        let x_1738 : f32 = u_xlat12.y;
        u_xlat9.w = x_1738;
        let x_1741 : vec4<f32> = u_xlat7;
        let x_1744 : vec4<f32> = x_587.x_MainLightShadowmapSize;
        let x_1747 : vec4<f32> = u_xlat9;
        u_xlat67 = ((vec2<f32>(x_1741.x, x_1741.y) * vec2<f32>(x_1744.x, x_1744.y)) + vec2<f32>(x_1747.x, x_1747.w));
        let x_1750 : vec4<f32> = u_xlat12;
        let x_1751 : vec3<f32> = vec3<f32>(x_1750.x, x_1750.z, x_1750.w);
        let x_1752 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1751.x, x_1752.y, x_1751.y, x_1751.z);
        let x_1754 : vec4<f32> = u_xlat7;
        let x_1757 : vec4<f32> = x_587.x_MainLightShadowmapSize;
        let x_1760 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1754.x, x_1754.y, x_1754.x, x_1754.y) * vec4<f32>(x_1757.x, x_1757.y, x_1757.x, x_1757.y)) + vec4<f32>(x_1760.x, x_1760.y, x_1760.z, x_1760.y));
        let x_1764 : vec4<f32> = u_xlat7;
        let x_1767 : vec4<f32> = x_587.x_MainLightShadowmapSize;
        let x_1770 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_1764.x, x_1764.y) * vec2<f32>(x_1767.x, x_1767.y)) + vec2<f32>(x_1770.w, x_1770.y));
        let x_1774 : f32 = u_xlat9.x;
        u_xlat10.x = x_1774;
        let x_1776 : vec4<f32> = u_xlat7;
        let x_1779 : vec4<f32> = x_587.x_MainLightShadowmapSize;
        let x_1782 : vec4<f32> = u_xlat10;
        let x_1784 : vec2<f32> = ((vec2<f32>(x_1776.x, x_1776.y) * vec2<f32>(x_1779.x, x_1779.y)) + vec2<f32>(x_1782.x, x_1782.y));
        let x_1785 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1784.x, x_1784.y, x_1785.z, x_1785.w);
        let x_1788 : vec4<f32> = u_xlat8;
        let x_1790 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1788.x, x_1788.x, x_1788.x, x_1788.x) * x_1790);
        let x_1793 : vec4<f32> = u_xlat8;
        let x_1795 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1793.y, x_1793.y, x_1793.y, x_1793.y) * x_1795);
        let x_1798 : vec4<f32> = u_xlat8;
        let x_1800 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1798.z, x_1798.z, x_1798.z, x_1798.z) * x_1800);
        let x_1802 : vec4<f32> = u_xlat8;
        let x_1804 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1802.w, x_1802.w, x_1802.w, x_1802.w) * x_1804);
        let x_1807 : vec4<f32> = u_xlat13;
        let x_1808 : vec2<f32> = vec2<f32>(x_1807.x, x_1807.y);
        let x_1810 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1808.x, x_1808.y, x_1810);
        let x_1817 : vec3<f32> = txVec13;
        let x_1819 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1817.xy, x_1817.z);
        u_xlat84 = x_1819;
        let x_1821 : vec4<f32> = u_xlat13;
        let x_1822 : vec2<f32> = vec2<f32>(x_1821.z, x_1821.w);
        let x_1824 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1822.x, x_1822.y, x_1824);
        let x_1831 : vec3<f32> = txVec14;
        let x_1833 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1831.xy, x_1831.z);
        u_xlat9.x = x_1833;
        let x_1836 : f32 = u_xlat9.x;
        let x_1838 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1836 * x_1838);
        let x_1842 : f32 = u_xlat18.x;
        let x_1843 : f32 = u_xlat84;
        let x_1846 : f32 = u_xlat9.x;
        u_xlat84 = ((x_1842 * x_1843) + x_1846);
        let x_1849 : vec2<f32> = u_xlat59;
        let x_1851 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1849.x, x_1849.y, x_1851);
        let x_1858 : vec3<f32> = txVec15;
        let x_1860 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1858.xy, x_1858.z);
        u_xlat59.x = x_1860;
        let x_1863 : f32 = u_xlat18.z;
        let x_1865 : f32 = u_xlat59.x;
        let x_1867 : f32 = u_xlat84;
        u_xlat84 = ((x_1863 * x_1865) + x_1867);
        let x_1870 : vec4<f32> = u_xlat16;
        let x_1871 : vec2<f32> = vec2<f32>(x_1870.x, x_1870.y);
        let x_1873 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1871.x, x_1871.y, x_1873);
        let x_1880 : vec3<f32> = txVec16;
        let x_1882 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1880.xy, x_1880.z);
        u_xlat59.x = x_1882;
        let x_1885 : f32 = u_xlat18.w;
        let x_1887 : f32 = u_xlat59.x;
        let x_1889 : f32 = u_xlat84;
        u_xlat84 = ((x_1885 * x_1887) + x_1889);
        let x_1892 : vec4<f32> = u_xlat14;
        let x_1893 : vec2<f32> = vec2<f32>(x_1892.x, x_1892.y);
        let x_1895 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1893.x, x_1893.y, x_1895);
        let x_1902 : vec3<f32> = txVec17;
        let x_1904 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1902.xy, x_1902.z);
        u_xlat59.x = x_1904;
        let x_1907 : f32 = u_xlat19.x;
        let x_1909 : f32 = u_xlat59.x;
        let x_1911 : f32 = u_xlat84;
        u_xlat84 = ((x_1907 * x_1909) + x_1911);
        let x_1914 : vec4<f32> = u_xlat14;
        let x_1915 : vec2<f32> = vec2<f32>(x_1914.z, x_1914.w);
        let x_1917 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1915.x, x_1915.y, x_1917);
        let x_1924 : vec3<f32> = txVec18;
        let x_1926 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1924.xy, x_1924.z);
        u_xlat59.x = x_1926;
        let x_1929 : f32 = u_xlat19.y;
        let x_1931 : f32 = u_xlat59.x;
        let x_1933 : f32 = u_xlat84;
        u_xlat84 = ((x_1929 * x_1931) + x_1933);
        let x_1936 : vec4<f32> = u_xlat15;
        let x_1937 : vec2<f32> = vec2<f32>(x_1936.x, x_1936.y);
        let x_1939 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1937.x, x_1937.y, x_1939);
        let x_1946 : vec3<f32> = txVec19;
        let x_1948 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1946.xy, x_1946.z);
        u_xlat59.x = x_1948;
        let x_1951 : f32 = u_xlat19.z;
        let x_1953 : f32 = u_xlat59.x;
        let x_1955 : f32 = u_xlat84;
        u_xlat84 = ((x_1951 * x_1953) + x_1955);
        let x_1958 : vec4<f32> = u_xlat16;
        let x_1959 : vec2<f32> = vec2<f32>(x_1958.z, x_1958.w);
        let x_1961 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1959.x, x_1959.y, x_1961);
        let x_1968 : vec3<f32> = txVec20;
        let x_1970 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1968.xy, x_1968.z);
        u_xlat59.x = x_1970;
        let x_1973 : f32 = u_xlat19.w;
        let x_1975 : f32 = u_xlat59.x;
        let x_1977 : f32 = u_xlat84;
        u_xlat84 = ((x_1973 * x_1975) + x_1977);
        let x_1980 : vec4<f32> = u_xlat17;
        let x_1981 : vec2<f32> = vec2<f32>(x_1980.x, x_1980.y);
        let x_1983 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1981.x, x_1981.y, x_1983);
        let x_1990 : vec3<f32> = txVec21;
        let x_1992 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1990.xy, x_1990.z);
        u_xlat59.x = x_1992;
        let x_1995 : f32 = u_xlat20.x;
        let x_1997 : f32 = u_xlat59.x;
        let x_1999 : f32 = u_xlat84;
        u_xlat84 = ((x_1995 * x_1997) + x_1999);
        let x_2002 : vec4<f32> = u_xlat17;
        let x_2003 : vec2<f32> = vec2<f32>(x_2002.z, x_2002.w);
        let x_2005 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_2003.x, x_2003.y, x_2005);
        let x_2012 : vec3<f32> = txVec22;
        let x_2014 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2012.xy, x_2012.z);
        u_xlat59.x = x_2014;
        let x_2017 : f32 = u_xlat20.y;
        let x_2019 : f32 = u_xlat59.x;
        let x_2021 : f32 = u_xlat84;
        u_xlat84 = ((x_2017 * x_2019) + x_2021);
        let x_2024 : vec2<f32> = u_xlat35;
        let x_2026 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_2024.x, x_2024.y, x_2026);
        let x_2033 : vec3<f32> = txVec23;
        let x_2035 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2033.xy, x_2033.z);
        u_xlat59.x = x_2035;
        let x_2038 : f32 = u_xlat20.z;
        let x_2040 : f32 = u_xlat59.x;
        let x_2042 : f32 = u_xlat84;
        u_xlat84 = ((x_2038 * x_2040) + x_2042);
        let x_2045 : vec2<f32> = u_xlat67;
        let x_2047 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2045.x, x_2045.y, x_2047);
        let x_2054 : vec3<f32> = txVec24;
        let x_2056 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2054.xy, x_2054.z);
        u_xlat59.x = x_2056;
        let x_2059 : f32 = u_xlat20.w;
        let x_2061 : f32 = u_xlat59.x;
        let x_2063 : f32 = u_xlat84;
        u_xlat84 = ((x_2059 * x_2061) + x_2063);
        let x_2066 : vec4<f32> = u_xlat12;
        let x_2067 : vec2<f32> = vec2<f32>(x_2066.x, x_2066.y);
        let x_2069 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2067.x, x_2067.y, x_2069);
        let x_2076 : vec3<f32> = txVec25;
        let x_2078 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2076.xy, x_2076.z);
        u_xlat59.x = x_2078;
        let x_2081 : f32 = u_xlat8.x;
        let x_2083 : f32 = u_xlat59.x;
        let x_2085 : f32 = u_xlat84;
        u_xlat84 = ((x_2081 * x_2083) + x_2085);
        let x_2088 : vec4<f32> = u_xlat12;
        let x_2089 : vec2<f32> = vec2<f32>(x_2088.z, x_2088.w);
        let x_2091 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2089.x, x_2089.y, x_2091);
        let x_2098 : vec3<f32> = txVec26;
        let x_2100 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2098.xy, x_2098.z);
        u_xlat59.x = x_2100;
        let x_2103 : f32 = u_xlat8.y;
        let x_2105 : f32 = u_xlat59.x;
        let x_2107 : f32 = u_xlat84;
        u_xlat84 = ((x_2103 * x_2105) + x_2107);
        let x_2110 : vec2<f32> = u_xlat62;
        let x_2112 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2110.x, x_2110.y, x_2112);
        let x_2119 : vec3<f32> = txVec27;
        let x_2121 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2119.xy, x_2119.z);
        u_xlat59.x = x_2121;
        let x_2124 : f32 = u_xlat8.z;
        let x_2126 : f32 = u_xlat59.x;
        let x_2128 : f32 = u_xlat84;
        u_xlat84 = ((x_2124 * x_2126) + x_2128);
        let x_2131 : vec4<f32> = u_xlat7;
        let x_2132 : vec2<f32> = vec2<f32>(x_2131.x, x_2131.y);
        let x_2134 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2132.x, x_2132.y, x_2134);
        let x_2141 : vec3<f32> = txVec28;
        let x_2143 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2141.xy, x_2141.z);
        u_xlat7.x = x_2143;
        let x_2146 : f32 = u_xlat8.w;
        let x_2148 : f32 = u_xlat7.x;
        let x_2150 : f32 = u_xlat84;
        u_xlat83 = ((x_2146 * x_2148) + x_2150);
      }
    }
  } else {
    let x_2154 : vec4<f32> = u_xlat3;
    let x_2155 : vec2<f32> = vec2<f32>(x_2154.x, x_2154.y);
    let x_2157 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2155.x, x_2155.y, x_2157);
    let x_2164 : vec3<f32> = txVec29;
    let x_2166 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2164.xy, x_2164.z);
    u_xlat83 = x_2166;
  }
  let x_2168 : f32 = x_587.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2168) + 1.0f);
  let x_2172 : f32 = u_xlat83;
  let x_2174 : f32 = x_587.x_MainLightShadowParams.x;
  let x_2177 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2172 * x_2174) + x_2177);
  let x_2182 : f32 = u_xlat3.z;
  u_xlatb29 = (0.0f >= x_2182);
  let x_2186 : f32 = u_xlat3.z;
  u_xlatb55 = (x_2186 >= 1.0f);
  let x_2188 : bool = u_xlatb55;
  let x_2189 : bool = u_xlatb29;
  u_xlatb29 = (x_2188 | x_2189);
  let x_2191 : bool = u_xlatb29;
  if (x_2191) {
    x_2193 = 1.0f;
  } else {
    let x_2198 : f32 = u_xlat3.x;
    x_2193 = x_2198;
  }
  let x_2199 : f32 = x_2193;
  u_xlat3.x = x_2199;
  let x_2201 : vec3<f32> = vs_TEXCOORD7;
  let x_2203 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_2205 : vec3<f32> = (x_2201 + -(x_2203));
  let x_2206 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2205.x, x_2205.y, x_2205.z, x_2206.w);
  let x_2209 : vec4<f32> = u_xlat7;
  let x_2211 : vec4<f32> = u_xlat7;
  u_xlat29 = dot(vec3<f32>(x_2209.x, x_2209.y, x_2209.z), vec3<f32>(x_2211.x, x_2211.y, x_2211.z));
  let x_2215 : f32 = u_xlat29;
  let x_2217 : f32 = x_587.x_MainLightShadowParams.z;
  let x_2220 : f32 = x_587.x_MainLightShadowParams.w;
  u_xlat55 = ((x_2215 * x_2217) + x_2220);
  let x_2222 : f32 = u_xlat55;
  u_xlat55 = clamp(x_2222, 0.0f, 1.0f);
  let x_2225 : f32 = u_xlat3.x;
  u_xlat83 = (-(x_2225) + 1.0f);
  let x_2228 : f32 = u_xlat55;
  let x_2229 : f32 = u_xlat83;
  let x_2232 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2228 * x_2229) + x_2232);
  let x_2242 : f32 = x_2240.x_MainLightCookieTextureFormat;
  u_xlatb55 = !((x_2242 == -1.0f));
  let x_2244 : bool = u_xlatb55;
  if (x_2244) {
    let x_2247 : vec3<f32> = vs_TEXCOORD7;
    let x_2250 : vec4<f32> = x_2240.x_MainLightWorldToLight[1i];
    let x_2252 : vec2<f32> = (vec2<f32>(x_2247.y, x_2247.y) * vec2<f32>(x_2250.x, x_2250.y));
    let x_2253 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2252.x, x_2252.y, x_2253.z, x_2253.w);
    let x_2256 : vec4<f32> = x_2240.x_MainLightWorldToLight[0i];
    let x_2258 : vec3<f32> = vs_TEXCOORD7;
    let x_2261 : vec4<f32> = u_xlat7;
    let x_2263 : vec2<f32> = ((vec2<f32>(x_2256.x, x_2256.y) * vec2<f32>(x_2258.x, x_2258.x)) + vec2<f32>(x_2261.x, x_2261.y));
    let x_2264 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2263.x, x_2263.y, x_2264.z, x_2264.w);
    let x_2267 : vec4<f32> = x_2240.x_MainLightWorldToLight[2i];
    let x_2269 : vec3<f32> = vs_TEXCOORD7;
    let x_2272 : vec4<f32> = u_xlat7;
    let x_2274 : vec2<f32> = ((vec2<f32>(x_2267.x, x_2267.y) * vec2<f32>(x_2269.z, x_2269.z)) + vec2<f32>(x_2272.x, x_2272.y));
    let x_2275 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2274.x, x_2274.y, x_2275.z, x_2275.w);
    let x_2277 : vec4<f32> = u_xlat7;
    let x_2280 : vec4<f32> = x_2240.x_MainLightWorldToLight[3i];
    let x_2282 : vec2<f32> = (vec2<f32>(x_2277.x, x_2277.y) + vec2<f32>(x_2280.x, x_2280.y));
    let x_2283 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2282.x, x_2282.y, x_2283.z, x_2283.w);
    let x_2285 : vec4<f32> = u_xlat7;
    let x_2288 : vec2<f32> = ((vec2<f32>(x_2285.x, x_2285.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2289 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2288.x, x_2288.y, x_2289.z, x_2289.w);
    let x_2296 : vec4<f32> = u_xlat7;
    let x_2299 : f32 = x_111.x_GlobalMipBias.x;
    let x_2300 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2296.x, x_2296.y), x_2299);
    u_xlat7 = x_2300;
    let x_2305 : f32 = x_2240.x_MainLightCookieTextureFormat;
    let x_2307 : f32 = x_2240.x_MainLightCookieTextureFormat;
    let x_2309 : f32 = x_2240.x_MainLightCookieTextureFormat;
    let x_2311 : f32 = x_2240.x_MainLightCookieTextureFormat;
    let x_2312 : vec4<f32> = vec4<f32>(x_2305, x_2307, x_2309, x_2311);
    let x_2319 : vec4<bool> = (vec4<f32>(x_2312.x, x_2312.y, x_2312.z, x_2312.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_2319.x, x_2319.y);
    let x_2322 : bool = u_xlatb8.y;
    if (x_2322) {
      let x_2327 : f32 = u_xlat7.w;
      x_2323 = x_2327;
    } else {
      let x_2330 : f32 = u_xlat7.x;
      x_2323 = x_2330;
    }
    let x_2331 : f32 = x_2323;
    u_xlat55 = x_2331;
    let x_2333 : bool = u_xlatb8.x;
    if (x_2333) {
      let x_2337 : vec4<f32> = u_xlat7;
      x_2334 = vec3<f32>(x_2337.x, x_2337.y, x_2337.z);
    } else {
      let x_2340 : f32 = u_xlat55;
      x_2334 = vec3<f32>(x_2340, x_2340, x_2340);
    }
    let x_2342 : vec3<f32> = x_2334;
    let x_2343 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2342.x, x_2342.y, x_2342.z, x_2343.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_2349 : vec4<f32> = u_xlat7;
  let x_2352 : vec4<f32> = x_111.x_MainLightColor;
  let x_2354 : vec3<f32> = (vec3<f32>(x_2349.x, x_2349.y, x_2349.z) * vec3<f32>(x_2352.x, x_2352.y, x_2352.z));
  let x_2355 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2354.x, x_2354.y, x_2354.z, x_2355.w);
  let x_2357 : vec4<f32> = u_xlat1;
  let x_2360 : vec3<f32> = u_xlat2;
  u_xlat55 = dot(-(vec3<f32>(x_2357.x, x_2357.y, x_2357.z)), x_2360);
  let x_2362 : f32 = u_xlat55;
  let x_2363 : f32 = u_xlat55;
  u_xlat55 = (x_2362 + x_2363);
  let x_2365 : vec3<f32> = u_xlat2;
  let x_2366 : f32 = u_xlat55;
  let x_2370 : vec4<f32> = u_xlat1;
  let x_2373 : vec3<f32> = ((x_2365 * -(vec3<f32>(x_2366, x_2366, x_2366))) + -(vec3<f32>(x_2370.x, x_2370.y, x_2370.z)));
  let x_2374 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2373.x, x_2373.y, x_2373.z, x_2374.w);
  let x_2376 : vec3<f32> = u_xlat2;
  let x_2377 : vec4<f32> = u_xlat1;
  u_xlat55 = dot(x_2376, vec3<f32>(x_2377.x, x_2377.y, x_2377.z));
  let x_2380 : f32 = u_xlat55;
  u_xlat55 = clamp(x_2380, 0.0f, 1.0f);
  let x_2382 : f32 = u_xlat55;
  u_xlat55 = (-(x_2382) + 1.0f);
  let x_2385 : f32 = u_xlat55;
  let x_2386 : f32 = u_xlat55;
  u_xlat55 = (x_2385 * x_2386);
  let x_2388 : f32 = u_xlat55;
  let x_2389 : f32 = u_xlat55;
  u_xlat55 = (x_2388 * x_2389);
  let x_2392 : f32 = u_xlat0.x;
  u_xlat83 = ((-(x_2392) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2399 : f32 = u_xlat0.x;
  let x_2400 : f32 = u_xlat83;
  u_xlat0.x = (x_2399 * x_2400);
  let x_2404 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2404 * 6.0f);
  let x_2416 : vec4<f32> = u_xlat8;
  let x_2419 : f32 = u_xlat0.x;
  let x_2420 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2416.x, x_2416.y, x_2416.z), x_2419);
  u_xlat8 = x_2420;
  let x_2422 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2422 + -1.0f);
  let x_2430 : f32 = x_2428.unity_SpecCube0_HDR.w;
  let x_2432 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2430 * x_2432) + 1.0f);
  let x_2437 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2437, 0.0f);
  let x_2441 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2441);
  let x_2445 : f32 = u_xlat0.x;
  let x_2447 : f32 = x_2428.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2445 * x_2447);
  let x_2451 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2451);
  let x_2455 : f32 = u_xlat0.x;
  let x_2457 : f32 = x_2428.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2455 * x_2457);
  let x_2460 : vec4<f32> = u_xlat8;
  let x_2462 : vec3<f32> = u_xlat0;
  let x_2464 : vec3<f32> = (vec3<f32>(x_2460.x, x_2460.y, x_2460.z) * vec3<f32>(x_2462.x, x_2462.x, x_2462.x));
  let x_2465 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2464.x, x_2464.y, x_2464.z, x_2465.w);
  let x_2467 : f32 = u_xlat52;
  let x_2469 : f32 = u_xlat52;
  let x_2473 : vec2<f32> = ((vec2<f32>(x_2467, x_2467) * vec2<f32>(x_2469, x_2469)) + vec2<f32>(-1.0f, 1.0f));
  let x_2474 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2473.x, x_2474.y, x_2473.y);
  let x_2477 : f32 = u_xlat0.z;
  u_xlat52 = (1.0f / x_2477);
  let x_2479 : vec4<f32> = u_xlat5;
  let x_2482 : f32 = u_xlat81;
  let x_2484 : vec3<f32> = (-(vec3<f32>(x_2479.x, x_2479.y, x_2479.z)) + vec3<f32>(x_2482, x_2482, x_2482));
  let x_2485 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2484.x, x_2484.y, x_2484.z, x_2485.w);
  let x_2487 : f32 = u_xlat55;
  let x_2489 : vec4<f32> = u_xlat9;
  let x_2492 : vec4<f32> = u_xlat5;
  let x_2494 : vec3<f32> = ((vec3<f32>(x_2487, x_2487, x_2487) * vec3<f32>(x_2489.x, x_2489.y, x_2489.z)) + vec3<f32>(x_2492.x, x_2492.y, x_2492.z));
  let x_2495 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2494.x, x_2494.y, x_2494.z, x_2495.w);
  let x_2497 : f32 = u_xlat52;
  let x_2499 : vec4<f32> = u_xlat9;
  let x_2501 : vec3<f32> = (vec3<f32>(x_2497, x_2497, x_2497) * vec3<f32>(x_2499.x, x_2499.y, x_2499.z));
  let x_2502 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2501.x, x_2501.y, x_2501.z, x_2502.w);
  let x_2504 : vec4<f32> = u_xlat8;
  let x_2506 : vec4<f32> = u_xlat9;
  let x_2508 : vec3<f32> = (vec3<f32>(x_2504.x, x_2504.y, x_2504.z) * vec3<f32>(x_2506.x, x_2506.y, x_2506.z));
  let x_2509 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2508.x, x_2508.y, x_2508.z, x_2509.w);
  let x_2511 : vec4<f32> = u_xlat4;
  let x_2513 : vec4<f32> = u_xlat6;
  let x_2516 : vec4<f32> = u_xlat8;
  let x_2518 : vec3<f32> = ((vec3<f32>(x_2511.x, x_2511.y, x_2511.z) * vec3<f32>(x_2513.x, x_2513.y, x_2513.z)) + vec3<f32>(x_2516.x, x_2516.y, x_2516.z));
  let x_2519 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2518.x, x_2518.y, x_2518.z, x_2519.w);
  let x_2522 : f32 = u_xlat3.x;
  let x_2524 : f32 = x_2428.unity_LightData.z;
  u_xlat52 = (x_2522 * x_2524);
  let x_2526 : vec3<f32> = u_xlat2;
  let x_2528 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat3.x = dot(x_2526, vec3<f32>(x_2528.x, x_2528.y, x_2528.z));
  let x_2533 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2533, 0.0f, 1.0f);
  let x_2536 : f32 = u_xlat52;
  let x_2538 : f32 = u_xlat3.x;
  u_xlat52 = (x_2536 * x_2538);
  let x_2540 : f32 = u_xlat52;
  let x_2542 : vec4<f32> = u_xlat7;
  let x_2544 : vec3<f32> = (vec3<f32>(x_2540, x_2540, x_2540) * vec3<f32>(x_2542.x, x_2542.y, x_2542.z));
  let x_2545 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2544.x, x_2545.y, x_2544.y, x_2544.z);
  let x_2547 : vec4<f32> = u_xlat1;
  let x_2550 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2552 : vec3<f32> = (vec3<f32>(x_2547.x, x_2547.y, x_2547.z) + vec3<f32>(x_2550.x, x_2550.y, x_2550.z));
  let x_2553 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2552.x, x_2552.y, x_2552.z, x_2553.w);
  let x_2555 : vec4<f32> = u_xlat7;
  let x_2557 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(vec3<f32>(x_2555.x, x_2555.y, x_2555.z), vec3<f32>(x_2557.x, x_2557.y, x_2557.z));
  let x_2560 : f32 = u_xlat52;
  u_xlat52 = max(x_2560, 1.17549435e-38f);
  let x_2563 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_2563);
  let x_2565 : f32 = u_xlat52;
  let x_2567 : vec4<f32> = u_xlat7;
  let x_2569 : vec3<f32> = (vec3<f32>(x_2565, x_2565, x_2565) * vec3<f32>(x_2567.x, x_2567.y, x_2567.z));
  let x_2570 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2569.x, x_2569.y, x_2569.z, x_2570.w);
  let x_2572 : vec3<f32> = u_xlat2;
  let x_2573 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(x_2572, vec3<f32>(x_2573.x, x_2573.y, x_2573.z));
  let x_2576 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2576, 0.0f, 1.0f);
  let x_2579 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2581 : vec4<f32> = u_xlat7;
  u_xlat83 = dot(vec3<f32>(x_2579.x, x_2579.y, x_2579.z), vec3<f32>(x_2581.x, x_2581.y, x_2581.z));
  let x_2584 : f32 = u_xlat83;
  u_xlat83 = clamp(x_2584, 0.0f, 1.0f);
  let x_2586 : f32 = u_xlat52;
  let x_2587 : f32 = u_xlat52;
  u_xlat52 = (x_2586 * x_2587);
  let x_2589 : f32 = u_xlat52;
  let x_2591 : f32 = u_xlat0.x;
  u_xlat52 = ((x_2589 * x_2591) + 1.00001001358032226562f);
  let x_2595 : f32 = u_xlat83;
  let x_2596 : f32 = u_xlat83;
  u_xlat83 = (x_2595 * x_2596);
  let x_2598 : f32 = u_xlat52;
  let x_2599 : f32 = u_xlat52;
  u_xlat52 = (x_2598 * x_2599);
  let x_2601 : f32 = u_xlat83;
  u_xlat83 = max(x_2601, 0.10000000149011611938f);
  let x_2604 : f32 = u_xlat52;
  let x_2605 : f32 = u_xlat83;
  u_xlat52 = (x_2604 * x_2605);
  let x_2607 : f32 = u_xlat82;
  let x_2608 : f32 = u_xlat52;
  u_xlat52 = (x_2607 * x_2608);
  let x_2610 : f32 = u_xlat80;
  let x_2611 : f32 = u_xlat52;
  u_xlat52 = (x_2610 / x_2611);
  let x_2613 : vec4<f32> = u_xlat5;
  let x_2615 : f32 = u_xlat52;
  let x_2618 : vec4<f32> = u_xlat6;
  let x_2620 : vec3<f32> = ((vec3<f32>(x_2613.x, x_2613.y, x_2613.z) * vec3<f32>(x_2615, x_2615, x_2615)) + vec3<f32>(x_2618.x, x_2618.y, x_2618.z));
  let x_2621 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2620.x, x_2620.y, x_2620.z, x_2621.w);
  let x_2623 : vec4<f32> = u_xlat3;
  let x_2625 : vec4<f32> = u_xlat7;
  let x_2627 : vec3<f32> = (vec3<f32>(x_2623.x, x_2623.z, x_2623.w) * vec3<f32>(x_2625.x, x_2625.y, x_2625.z));
  let x_2628 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2627.x, x_2628.y, x_2627.y, x_2627.z);
  let x_2631 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_2633 : f32 = x_2428.unity_LightData.y;
  u_xlat52 = min(x_2631, x_2633);
  let x_2636 : f32 = u_xlat52;
  u_xlatu52 = bitcast<u32>(i32(x_2636));
  let x_2639 : f32 = u_xlat29;
  let x_2641 : f32 = x_587.x_AdditionalShadowFadeParams.x;
  let x_2644 : f32 = x_587.x_AdditionalShadowFadeParams.y;
  u_xlat29 = ((x_2639 * x_2641) + x_2644);
  let x_2646 : f32 = u_xlat29;
  u_xlat29 = clamp(x_2646, 0.0f, 1.0f);
  let x_2650 : f32 = x_2240.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2652 : f32 = x_2240.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2654 : f32 = x_2240.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2656 : f32 = x_2240.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2657 : vec4<f32> = vec4<f32>(x_2650, x_2652, x_2654, x_2656);
  let x_2663 : vec4<bool> = (vec4<f32>(x_2657.x, x_2657.y, x_2657.z, x_2657.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2663.x, x_2663.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2675 : u32 = u_xlatu_loop_1;
    let x_2676 : u32 = u_xlatu52;
    if ((x_2675 < x_2676)) {
    } else {
      break;
    }
    let x_2679 : u32 = u_xlatu_loop_1;
    u_xlatu84 = (x_2679 >> 2u);
    let x_2682 : u32 = u_xlatu_loop_1;
    u_xlati59 = bitcast<i32>((x_2682 & 3u));
    let x_2685 : u32 = u_xlatu84;
    let x_2688 : vec4<f32> = x_2428.unity_LightIndices[bitcast<i32>(x_2685)];
    let x_2698 : i32 = u_xlati59;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2703 : vec4<u32> = indexable[x_2698];
    u_xlat84 = dot(x_2688, bitcast<vec4<f32>>(x_2703));
    let x_2707 : f32 = u_xlat84;
    u_xlati84 = i32(x_2707);
    let x_2709 : vec3<f32> = vs_TEXCOORD7;
    let x_2720 : i32 = u_xlati84;
    let x_2722 : vec4<f32> = x_2719.x_AdditionalLightsPosition[x_2720];
    let x_2725 : i32 = u_xlati84;
    let x_2727 : vec4<f32> = x_2719.x_AdditionalLightsPosition[x_2725];
    let x_2729 : vec3<f32> = ((-(x_2709) * vec3<f32>(x_2722.w, x_2722.w, x_2722.w)) + vec3<f32>(x_2727.x, x_2727.y, x_2727.z));
    let x_2730 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2729.x, x_2729.y, x_2729.z, x_2730.w);
    let x_2732 : vec4<f32> = u_xlat9;
    let x_2734 : vec4<f32> = u_xlat9;
    u_xlat59.x = dot(vec3<f32>(x_2732.x, x_2732.y, x_2732.z), vec3<f32>(x_2734.x, x_2734.y, x_2734.z));
    let x_2739 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_2739, 0.00006103515625f);
    let x_2744 : f32 = u_xlat59.x;
    u_xlat85 = inverseSqrt(x_2744);
    let x_2746 : f32 = u_xlat85;
    let x_2748 : vec4<f32> = u_xlat9;
    let x_2750 : vec3<f32> = (vec3<f32>(x_2746, x_2746, x_2746) * vec3<f32>(x_2748.x, x_2748.y, x_2748.z));
    let x_2751 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2750.x, x_2750.y, x_2750.z, x_2751.w);
    let x_2755 : f32 = u_xlat59.x;
    u_xlat86 = (1.0f / x_2755);
    let x_2758 : f32 = u_xlat59.x;
    let x_2759 : i32 = u_xlati84;
    let x_2761 : f32 = x_2719.x_AdditionalLightsAttenuation[x_2759].x;
    u_xlat59.x = (x_2758 * x_2761);
    let x_2765 : f32 = u_xlat59.x;
    let x_2768 : f32 = u_xlat59.x;
    u_xlat59.x = ((-(x_2765) * x_2768) + 1.0f);
    let x_2773 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_2773, 0.0f);
    let x_2777 : f32 = u_xlat59.x;
    let x_2779 : f32 = u_xlat59.x;
    u_xlat59.x = (x_2777 * x_2779);
    let x_2783 : f32 = u_xlat59.x;
    let x_2784 : f32 = u_xlat86;
    u_xlat59.x = (x_2783 * x_2784);
    let x_2787 : i32 = u_xlati84;
    let x_2789 : vec4<f32> = x_2719.x_AdditionalLightsSpotDir[x_2787];
    let x_2791 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_2789.x, x_2789.y, x_2789.z), vec3<f32>(x_2791.x, x_2791.y, x_2791.z));
    let x_2794 : f32 = u_xlat86;
    let x_2795 : i32 = u_xlati84;
    let x_2797 : f32 = x_2719.x_AdditionalLightsAttenuation[x_2795].z;
    let x_2799 : i32 = u_xlati84;
    let x_2801 : f32 = x_2719.x_AdditionalLightsAttenuation[x_2799].w;
    u_xlat86 = ((x_2794 * x_2797) + x_2801);
    let x_2803 : f32 = u_xlat86;
    u_xlat86 = clamp(x_2803, 0.0f, 1.0f);
    let x_2805 : f32 = u_xlat86;
    let x_2806 : f32 = u_xlat86;
    u_xlat86 = (x_2805 * x_2806);
    let x_2809 : f32 = u_xlat59.x;
    let x_2810 : f32 = u_xlat86;
    u_xlat59.x = (x_2809 * x_2810);
    let x_2814 : i32 = u_xlati84;
    let x_2816 : f32 = x_587.x_AdditionalShadowParams[x_2814].w;
    u_xlati86 = i32(x_2816);
    let x_2819 : i32 = u_xlati86;
    u_xlatb87 = (x_2819 >= 0i);
    let x_2821 : bool = u_xlatb87;
    if (x_2821) {
      let x_2825 : i32 = u_xlati84;
      let x_2827 : f32 = x_587.x_AdditionalShadowParams[x_2825].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2827, x_2827, x_2827, x_2827))));
      let x_2831 : bool = u_xlatb87;
      if (x_2831) {
        let x_2835 : vec4<f32> = u_xlat10;
        let x_2838 : vec4<f32> = u_xlat10;
        let x_2841 : vec4<bool> = (abs(vec4<f32>(x_2835.z, x_2835.z, x_2835.y, x_2835.z)) >= abs(vec4<f32>(x_2838.x, x_2838.y, x_2838.x, x_2838.x)));
        let x_2843 : vec3<bool> = vec3<bool>(x_2841.x, x_2841.y, x_2841.z);
        let x_2844 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2843.x, x_2843.y, x_2843.z, x_2844.w);
        let x_2847 : bool = u_xlatb11.y;
        let x_2849 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2847 & x_2849);
        let x_2851 : vec4<f32> = u_xlat10;
        let x_2854 : vec4<bool> = (-(vec4<f32>(x_2851.z, x_2851.y, x_2851.z, x_2851.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2855 : vec3<bool> = vec3<bool>(x_2854.x, x_2854.y, x_2854.w);
        let x_2856 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2855.x, x_2855.y, x_2856.z, x_2855.z);
        let x_2859 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2859);
        let x_2864 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2864);
        let x_2869 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2869);
        let x_2872 : bool = u_xlatb11.z;
        if (x_2872) {
          let x_2877 : f32 = u_xlat11.y;
          x_2873 = x_2877;
        } else {
          let x_2879 : f32 = u_xlat88;
          x_2873 = x_2879;
        }
        let x_2880 : f32 = x_2873;
        u_xlat88 = x_2880;
        let x_2882 : bool = u_xlatb87;
        if (x_2882) {
          let x_2887 : f32 = u_xlat11.x;
          x_2883 = x_2887;
        } else {
          let x_2889 : f32 = u_xlat88;
          x_2883 = x_2889;
        }
        let x_2890 : f32 = x_2883;
        u_xlat87 = x_2890;
        let x_2891 : i32 = u_xlati84;
        let x_2893 : f32 = x_587.x_AdditionalShadowParams[x_2891].w;
        u_xlat88 = trunc(x_2893);
        let x_2895 : f32 = u_xlat87;
        let x_2896 : f32 = u_xlat88;
        u_xlat87 = (x_2895 + x_2896);
        let x_2898 : f32 = u_xlat87;
        u_xlati86 = i32(x_2898);
      }
      let x_2900 : i32 = u_xlati86;
      u_xlati86 = (x_2900 << bitcast<u32>(2i));
      let x_2902 : vec3<f32> = vs_TEXCOORD7;
      let x_2904 : i32 = u_xlati86;
      let x_2907 : i32 = u_xlati86;
      let x_2911 : vec4<f32> = x_587.x_AdditionalLightsWorldToShadow[((x_2904 + 1i) / 4i)][((x_2907 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2902.y, x_2902.y, x_2902.y, x_2902.y) * x_2911);
      let x_2913 : i32 = u_xlati86;
      let x_2915 : i32 = u_xlati86;
      let x_2918 : vec4<f32> = x_587.x_AdditionalLightsWorldToShadow[(x_2913 / 4i)][(x_2915 % 4i)];
      let x_2919 : vec3<f32> = vs_TEXCOORD7;
      let x_2922 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2918 * vec4<f32>(x_2919.x, x_2919.x, x_2919.x, x_2919.x)) + x_2922);
      let x_2924 : i32 = u_xlati86;
      let x_2927 : i32 = u_xlati86;
      let x_2931 : vec4<f32> = x_587.x_AdditionalLightsWorldToShadow[((x_2924 + 2i) / 4i)][((x_2927 + 2i) % 4i)];
      let x_2932 : vec3<f32> = vs_TEXCOORD7;
      let x_2935 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2931 * vec4<f32>(x_2932.z, x_2932.z, x_2932.z, x_2932.z)) + x_2935);
      let x_2937 : vec4<f32> = u_xlat11;
      let x_2938 : i32 = u_xlati86;
      let x_2941 : i32 = u_xlati86;
      let x_2945 : vec4<f32> = x_587.x_AdditionalLightsWorldToShadow[((x_2938 + 3i) / 4i)][((x_2941 + 3i) % 4i)];
      u_xlat11 = (x_2937 + x_2945);
      let x_2947 : vec4<f32> = u_xlat11;
      let x_2949 : vec4<f32> = u_xlat11;
      let x_2951 : vec3<f32> = (vec3<f32>(x_2947.x, x_2947.y, x_2947.z) / vec3<f32>(x_2949.w, x_2949.w, x_2949.w));
      let x_2952 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2951.x, x_2951.y, x_2951.z, x_2952.w);
      let x_2955 : i32 = u_xlati84;
      let x_2957 : f32 = x_587.x_AdditionalShadowParams[x_2955].y;
      u_xlatb86 = (0.0f < x_2957);
      let x_2959 : bool = u_xlatb86;
      if (x_2959) {
        let x_2962 : i32 = u_xlati84;
        let x_2964 : f32 = x_587.x_AdditionalShadowParams[x_2962].y;
        u_xlatb86 = (1.0f == x_2964);
        let x_2966 : bool = u_xlatb86;
        if (x_2966) {
          let x_2969 : vec4<f32> = u_xlat11;
          let x_2972 : vec4<f32> = x_587.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2969.x, x_2969.y, x_2969.x, x_2969.y) + x_2972);
          let x_2975 : vec4<f32> = u_xlat12;
          let x_2976 : vec2<f32> = vec2<f32>(x_2975.x, x_2975.y);
          let x_2978 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2976.x, x_2976.y, x_2978);
          let x_2986 : vec3<f32> = txVec30;
          let x_2988 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2986.xy, x_2986.z);
          u_xlat13.x = x_2988;
          let x_2991 : vec4<f32> = u_xlat12;
          let x_2992 : vec2<f32> = vec2<f32>(x_2991.z, x_2991.w);
          let x_2994 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2992.x, x_2992.y, x_2994);
          let x_3001 : vec3<f32> = txVec31;
          let x_3003 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3001.xy, x_3001.z);
          u_xlat13.y = x_3003;
          let x_3005 : vec4<f32> = u_xlat11;
          let x_3008 : vec4<f32> = x_587.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3005.x, x_3005.y, x_3005.x, x_3005.y) + x_3008);
          let x_3011 : vec4<f32> = u_xlat12;
          let x_3012 : vec2<f32> = vec2<f32>(x_3011.x, x_3011.y);
          let x_3014 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_3012.x, x_3012.y, x_3014);
          let x_3021 : vec3<f32> = txVec32;
          let x_3023 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3021.xy, x_3021.z);
          u_xlat13.z = x_3023;
          let x_3026 : vec4<f32> = u_xlat12;
          let x_3027 : vec2<f32> = vec2<f32>(x_3026.z, x_3026.w);
          let x_3029 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_3027.x, x_3027.y, x_3029);
          let x_3036 : vec3<f32> = txVec33;
          let x_3038 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3036.xy, x_3036.z);
          u_xlat13.w = x_3038;
          let x_3040 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_3040, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3043 : i32 = u_xlati84;
          let x_3045 : f32 = x_587.x_AdditionalShadowParams[x_3043].y;
          u_xlatb87 = (2.0f == x_3045);
          let x_3047 : bool = u_xlatb87;
          if (x_3047) {
            let x_3050 : vec4<f32> = u_xlat11;
            let x_3053 : vec4<f32> = x_587.x_AdditionalShadowmapSize;
            let x_3056 : vec2<f32> = ((vec2<f32>(x_3050.x, x_3050.y) * vec2<f32>(x_3053.z, x_3053.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3057 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3056.x, x_3056.y, x_3057.z, x_3057.w);
            let x_3059 : vec4<f32> = u_xlat12;
            let x_3061 : vec2<f32> = floor(vec2<f32>(x_3059.x, x_3059.y));
            let x_3062 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3061.x, x_3061.y, x_3062.z, x_3062.w);
            let x_3065 : vec4<f32> = u_xlat11;
            let x_3068 : vec4<f32> = x_587.x_AdditionalShadowmapSize;
            let x_3071 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3065.x, x_3065.y) * vec2<f32>(x_3068.z, x_3068.w)) + -(vec2<f32>(x_3071.x, x_3071.y)));
            let x_3075 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3075.x, x_3075.x, x_3075.y, x_3075.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3078 : vec4<f32> = u_xlat13;
            let x_3080 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3078.x, x_3078.x, x_3078.z, x_3078.z) * vec4<f32>(x_3080.x, x_3080.x, x_3080.z, x_3080.z));
            let x_3083 : vec4<f32> = u_xlat14;
            let x_3085 : vec2<f32> = (vec2<f32>(x_3083.y, x_3083.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3086 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3085.x, x_3086.y, x_3085.y, x_3086.w);
            let x_3088 : vec4<f32> = u_xlat14;
            let x_3091 : vec2<f32> = u_xlat64;
            let x_3093 : vec2<f32> = ((vec2<f32>(x_3088.x, x_3088.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3091));
            let x_3094 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3093.x, x_3093.y, x_3094.z, x_3094.w);
            let x_3097 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3097) + vec2<f32>(1.0f, 1.0f));
            let x_3100 : vec2<f32> = u_xlat64;
            let x_3101 : vec2<f32> = min(x_3100, vec2<f32>(0.0f, 0.0f));
            let x_3102 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3101.x, x_3101.y, x_3102.z, x_3102.w);
            let x_3104 : vec4<f32> = u_xlat15;
            let x_3107 : vec4<f32> = u_xlat15;
            let x_3110 : vec2<f32> = u_xlat66;
            let x_3111 : vec2<f32> = ((-(vec2<f32>(x_3104.x, x_3104.y)) * vec2<f32>(x_3107.x, x_3107.y)) + x_3110);
            let x_3112 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3111.x, x_3111.y, x_3112.z, x_3112.w);
            let x_3114 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3114, vec2<f32>(0.0f, 0.0f));
            let x_3116 : vec2<f32> = u_xlat64;
            let x_3118 : vec2<f32> = u_xlat64;
            let x_3120 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3116) * x_3118) + vec2<f32>(x_3120.y, x_3120.w));
            let x_3123 : vec4<f32> = u_xlat15;
            let x_3125 : vec2<f32> = (vec2<f32>(x_3123.x, x_3123.y) + vec2<f32>(1.0f, 1.0f));
            let x_3126 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3125.x, x_3125.y, x_3126.z, x_3126.w);
            let x_3128 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3128 + vec2<f32>(1.0f, 1.0f));
            let x_3130 : vec4<f32> = u_xlat14;
            let x_3132 : vec2<f32> = (vec2<f32>(x_3130.x, x_3130.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3133 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3132.x, x_3132.y, x_3133.z, x_3133.w);
            let x_3135 : vec2<f32> = u_xlat66;
            let x_3136 : vec2<f32> = (x_3135 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3137 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3136.x, x_3136.y, x_3137.z, x_3137.w);
            let x_3139 : vec4<f32> = u_xlat15;
            let x_3141 : vec2<f32> = (vec2<f32>(x_3139.x, x_3139.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3142 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3141.x, x_3141.y, x_3142.z, x_3142.w);
            let x_3144 : vec2<f32> = u_xlat64;
            let x_3145 : vec2<f32> = (x_3144 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3146 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3145.x, x_3145.y, x_3146.z, x_3146.w);
            let x_3148 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3148.y, x_3148.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3152 : f32 = u_xlat15.x;
            u_xlat16.z = x_3152;
            let x_3155 : f32 = u_xlat64.x;
            u_xlat16.w = x_3155;
            let x_3158 : f32 = u_xlat17.x;
            u_xlat14.z = x_3158;
            let x_3161 : f32 = u_xlat13.x;
            u_xlat14.w = x_3161;
            let x_3163 : vec4<f32> = u_xlat14;
            let x_3165 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3163.z, x_3163.w, x_3163.x, x_3163.z) + vec4<f32>(x_3165.z, x_3165.w, x_3165.x, x_3165.z));
            let x_3169 : f32 = u_xlat16.y;
            u_xlat15.z = x_3169;
            let x_3172 : f32 = u_xlat64.y;
            u_xlat15.w = x_3172;
            let x_3175 : f32 = u_xlat14.y;
            u_xlat17.z = x_3175;
            let x_3178 : f32 = u_xlat13.z;
            u_xlat17.w = x_3178;
            let x_3180 : vec4<f32> = u_xlat15;
            let x_3182 : vec4<f32> = u_xlat17;
            let x_3184 : vec3<f32> = (vec3<f32>(x_3180.z, x_3180.y, x_3180.w) + vec3<f32>(x_3182.z, x_3182.y, x_3182.w));
            let x_3185 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3184.x, x_3184.y, x_3184.z, x_3185.w);
            let x_3187 : vec4<f32> = u_xlat14;
            let x_3189 : vec4<f32> = u_xlat18;
            let x_3191 : vec3<f32> = (vec3<f32>(x_3187.x, x_3187.z, x_3187.w) / vec3<f32>(x_3189.z, x_3189.w, x_3189.y));
            let x_3192 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3191.x, x_3191.y, x_3191.z, x_3192.w);
            let x_3194 : vec4<f32> = u_xlat14;
            let x_3196 : vec3<f32> = (vec3<f32>(x_3194.x, x_3194.y, x_3194.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3197 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3196.x, x_3196.y, x_3196.z, x_3197.w);
            let x_3199 : vec4<f32> = u_xlat17;
            let x_3201 : vec4<f32> = u_xlat13;
            let x_3203 : vec3<f32> = (vec3<f32>(x_3199.z, x_3199.y, x_3199.w) / vec3<f32>(x_3201.x, x_3201.y, x_3201.z));
            let x_3204 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3203.x, x_3203.y, x_3203.z, x_3204.w);
            let x_3206 : vec4<f32> = u_xlat15;
            let x_3208 : vec3<f32> = (vec3<f32>(x_3206.x, x_3206.y, x_3206.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3209 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3208.x, x_3208.y, x_3208.z, x_3209.w);
            let x_3211 : vec4<f32> = u_xlat14;
            let x_3214 : vec4<f32> = x_587.x_AdditionalShadowmapSize;
            let x_3216 : vec3<f32> = (vec3<f32>(x_3211.y, x_3211.x, x_3211.z) * vec3<f32>(x_3214.x, x_3214.x, x_3214.x));
            let x_3217 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3216.x, x_3216.y, x_3216.z, x_3217.w);
            let x_3219 : vec4<f32> = u_xlat15;
            let x_3222 : vec4<f32> = x_587.x_AdditionalShadowmapSize;
            let x_3224 : vec3<f32> = (vec3<f32>(x_3219.x, x_3219.y, x_3219.z) * vec3<f32>(x_3222.y, x_3222.y, x_3222.y));
            let x_3225 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3224.x, x_3224.y, x_3224.z, x_3225.w);
            let x_3228 : f32 = u_xlat15.x;
            u_xlat14.w = x_3228;
            let x_3230 : vec4<f32> = u_xlat12;
            let x_3233 : vec4<f32> = x_587.x_AdditionalShadowmapSize;
            let x_3236 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3230.x, x_3230.y, x_3230.x, x_3230.y) * vec4<f32>(x_3233.x, x_3233.y, x_3233.x, x_3233.y)) + vec4<f32>(x_3236.y, x_3236.w, x_3236.x, x_3236.w));
            let x_3239 : vec4<f32> = u_xlat12;
            let x_3242 : vec4<f32> = x_587.x_AdditionalShadowmapSize;
            let x_3245 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3239.x, x_3239.y) * vec2<f32>(x_3242.x, x_3242.y)) + vec2<f32>(x_3245.z, x_3245.w));
            let x_3249 : f32 = u_xlat14.y;
            u_xlat15.w = x_3249;
            let x_3251 : vec4<f32> = u_xlat15;
            let x_3252 : vec2<f32> = vec2<f32>(x_3251.y, x_3251.z);
            let x_3253 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3253.x, x_3252.x, x_3253.z, x_3252.y);
            let x_3255 : vec4<f32> = u_xlat12;
            let x_3258 : vec4<f32> = x_587.x_AdditionalShadowmapSize;
            let x_3261 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3255.x, x_3255.y, x_3255.x, x_3255.y) * vec4<f32>(x_3258.x, x_3258.y, x_3258.x, x_3258.y)) + vec4<f32>(x_3261.x, x_3261.y, x_3261.z, x_3261.y));
            let x_3264 : vec4<f32> = u_xlat12;
            let x_3267 : vec4<f32> = x_587.x_AdditionalShadowmapSize;
            let x_3270 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3264.x, x_3264.y, x_3264.x, x_3264.y) * vec4<f32>(x_3267.x, x_3267.y, x_3267.x, x_3267.y)) + vec4<f32>(x_3270.w, x_3270.y, x_3270.w, x_3270.z));
            let x_3273 : vec4<f32> = u_xlat12;
            let x_3276 : vec4<f32> = x_587.x_AdditionalShadowmapSize;
            let x_3279 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3273.x, x_3273.y, x_3273.x, x_3273.y) * vec4<f32>(x_3276.x, x_3276.y, x_3276.x, x_3276.y)) + vec4<f32>(x_3279.x, x_3279.w, x_3279.z, x_3279.w));
            let x_3282 : vec4<f32> = u_xlat13;
            let x_3284 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3282.x, x_3282.x, x_3282.x, x_3282.y) * vec4<f32>(x_3284.z, x_3284.w, x_3284.y, x_3284.z));
            let x_3287 : vec4<f32> = u_xlat13;
            let x_3289 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3287.y, x_3287.y, x_3287.z, x_3287.z) * x_3289);
            let x_3292 : f32 = u_xlat13.z;
            let x_3294 : f32 = u_xlat18.y;
            u_xlat87 = (x_3292 * x_3294);
            let x_3297 : vec4<f32> = u_xlat16;
            let x_3298 : vec2<f32> = vec2<f32>(x_3297.x, x_3297.y);
            let x_3300 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3298.x, x_3298.y, x_3300);
            let x_3307 : vec3<f32> = txVec34;
            let x_3309 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3307.xy, x_3307.z);
            u_xlat88 = x_3309;
            let x_3311 : vec4<f32> = u_xlat16;
            let x_3312 : vec2<f32> = vec2<f32>(x_3311.z, x_3311.w);
            let x_3314 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3312.x, x_3312.y, x_3314);
            let x_3322 : vec3<f32> = txVec35;
            let x_3324 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3322.xy, x_3322.z);
            u_xlat89 = x_3324;
            let x_3325 : f32 = u_xlat89;
            let x_3327 : f32 = u_xlat19.y;
            u_xlat89 = (x_3325 * x_3327);
            let x_3330 : f32 = u_xlat19.x;
            let x_3331 : f32 = u_xlat88;
            let x_3333 : f32 = u_xlat89;
            u_xlat88 = ((x_3330 * x_3331) + x_3333);
            let x_3336 : vec2<f32> = u_xlat64;
            let x_3338 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3336.x, x_3336.y, x_3338);
            let x_3345 : vec3<f32> = txVec36;
            let x_3347 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3345.xy, x_3345.z);
            u_xlat89 = x_3347;
            let x_3349 : f32 = u_xlat19.z;
            let x_3350 : f32 = u_xlat89;
            let x_3352 : f32 = u_xlat88;
            u_xlat88 = ((x_3349 * x_3350) + x_3352);
            let x_3355 : vec4<f32> = u_xlat15;
            let x_3356 : vec2<f32> = vec2<f32>(x_3355.x, x_3355.y);
            let x_3358 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3356.x, x_3356.y, x_3358);
            let x_3365 : vec3<f32> = txVec37;
            let x_3367 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3365.xy, x_3365.z);
            u_xlat89 = x_3367;
            let x_3369 : f32 = u_xlat19.w;
            let x_3370 : f32 = u_xlat89;
            let x_3372 : f32 = u_xlat88;
            u_xlat88 = ((x_3369 * x_3370) + x_3372);
            let x_3375 : vec4<f32> = u_xlat17;
            let x_3376 : vec2<f32> = vec2<f32>(x_3375.x, x_3375.y);
            let x_3378 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3376.x, x_3376.y, x_3378);
            let x_3385 : vec3<f32> = txVec38;
            let x_3387 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3385.xy, x_3385.z);
            u_xlat89 = x_3387;
            let x_3389 : f32 = u_xlat20.x;
            let x_3390 : f32 = u_xlat89;
            let x_3392 : f32 = u_xlat88;
            u_xlat88 = ((x_3389 * x_3390) + x_3392);
            let x_3395 : vec4<f32> = u_xlat17;
            let x_3396 : vec2<f32> = vec2<f32>(x_3395.z, x_3395.w);
            let x_3398 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3396.x, x_3396.y, x_3398);
            let x_3405 : vec3<f32> = txVec39;
            let x_3407 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3405.xy, x_3405.z);
            u_xlat89 = x_3407;
            let x_3409 : f32 = u_xlat20.y;
            let x_3410 : f32 = u_xlat89;
            let x_3412 : f32 = u_xlat88;
            u_xlat88 = ((x_3409 * x_3410) + x_3412);
            let x_3415 : vec4<f32> = u_xlat15;
            let x_3416 : vec2<f32> = vec2<f32>(x_3415.z, x_3415.w);
            let x_3418 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3416.x, x_3416.y, x_3418);
            let x_3425 : vec3<f32> = txVec40;
            let x_3427 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3425.xy, x_3425.z);
            u_xlat89 = x_3427;
            let x_3429 : f32 = u_xlat20.z;
            let x_3430 : f32 = u_xlat89;
            let x_3432 : f32 = u_xlat88;
            u_xlat88 = ((x_3429 * x_3430) + x_3432);
            let x_3435 : vec4<f32> = u_xlat14;
            let x_3436 : vec2<f32> = vec2<f32>(x_3435.x, x_3435.y);
            let x_3438 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3436.x, x_3436.y, x_3438);
            let x_3445 : vec3<f32> = txVec41;
            let x_3447 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3445.xy, x_3445.z);
            u_xlat89 = x_3447;
            let x_3449 : f32 = u_xlat20.w;
            let x_3450 : f32 = u_xlat89;
            let x_3452 : f32 = u_xlat88;
            u_xlat88 = ((x_3449 * x_3450) + x_3452);
            let x_3455 : vec4<f32> = u_xlat14;
            let x_3456 : vec2<f32> = vec2<f32>(x_3455.z, x_3455.w);
            let x_3458 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3456.x, x_3456.y, x_3458);
            let x_3465 : vec3<f32> = txVec42;
            let x_3467 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3465.xy, x_3465.z);
            u_xlat89 = x_3467;
            let x_3468 : f32 = u_xlat87;
            let x_3469 : f32 = u_xlat89;
            let x_3471 : f32 = u_xlat88;
            u_xlat86 = ((x_3468 * x_3469) + x_3471);
          } else {
            let x_3474 : vec4<f32> = u_xlat11;
            let x_3477 : vec4<f32> = x_587.x_AdditionalShadowmapSize;
            let x_3480 : vec2<f32> = ((vec2<f32>(x_3474.x, x_3474.y) * vec2<f32>(x_3477.z, x_3477.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3481 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3480.x, x_3480.y, x_3481.z, x_3481.w);
            let x_3483 : vec4<f32> = u_xlat12;
            let x_3485 : vec2<f32> = floor(vec2<f32>(x_3483.x, x_3483.y));
            let x_3486 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3485.x, x_3485.y, x_3486.z, x_3486.w);
            let x_3488 : vec4<f32> = u_xlat11;
            let x_3491 : vec4<f32> = x_587.x_AdditionalShadowmapSize;
            let x_3494 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3488.x, x_3488.y) * vec2<f32>(x_3491.z, x_3491.w)) + -(vec2<f32>(x_3494.x, x_3494.y)));
            let x_3498 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3498.x, x_3498.x, x_3498.y, x_3498.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3501 : vec4<f32> = u_xlat13;
            let x_3503 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3501.x, x_3501.x, x_3501.z, x_3501.z) * vec4<f32>(x_3503.x, x_3503.x, x_3503.z, x_3503.z));
            let x_3506 : vec4<f32> = u_xlat14;
            let x_3508 : vec2<f32> = (vec2<f32>(x_3506.y, x_3506.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3509 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3509.x, x_3508.x, x_3509.z, x_3508.y);
            let x_3511 : vec4<f32> = u_xlat14;
            let x_3514 : vec2<f32> = u_xlat64;
            let x_3516 : vec2<f32> = ((vec2<f32>(x_3511.x, x_3511.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3514));
            let x_3517 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3516.x, x_3517.y, x_3516.y, x_3517.w);
            let x_3519 : vec2<f32> = u_xlat64;
            let x_3521 : vec2<f32> = (-(x_3519) + vec2<f32>(1.0f, 1.0f));
            let x_3522 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3521.x, x_3521.y, x_3522.z, x_3522.w);
            let x_3524 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3524, vec2<f32>(0.0f, 0.0f));
            let x_3526 : vec2<f32> = u_xlat66;
            let x_3528 : vec2<f32> = u_xlat66;
            let x_3530 : vec4<f32> = u_xlat14;
            let x_3532 : vec2<f32> = ((-(x_3526) * x_3528) + vec2<f32>(x_3530.x, x_3530.y));
            let x_3533 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3532.x, x_3532.y, x_3533.z, x_3533.w);
            let x_3535 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3535, vec2<f32>(0.0f, 0.0f));
            let x_3538 : vec2<f32> = u_xlat66;
            let x_3540 : vec2<f32> = u_xlat66;
            let x_3542 : vec4<f32> = u_xlat13;
            let x_3544 : vec2<f32> = ((-(x_3538) * x_3540) + vec2<f32>(x_3542.y, x_3542.w));
            let x_3545 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3544.x, x_3545.y, x_3544.y);
            let x_3547 : vec4<f32> = u_xlat14;
            let x_3549 : vec2<f32> = (vec2<f32>(x_3547.x, x_3547.y) + vec2<f32>(2.0f, 2.0f));
            let x_3550 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3549.x, x_3549.y, x_3550.z, x_3550.w);
            let x_3552 : vec3<f32> = u_xlat39;
            let x_3554 : vec2<f32> = (vec2<f32>(x_3552.x, x_3552.z) + vec2<f32>(2.0f, 2.0f));
            let x_3555 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3555.x, x_3554.x, x_3555.z, x_3554.y);
            let x_3558 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3558 * 0.08163200318813323975f);
            let x_3561 : vec4<f32> = u_xlat13;
            let x_3563 : vec3<f32> = (vec3<f32>(x_3561.z, x_3561.x, x_3561.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3564 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3563.x, x_3563.y, x_3563.z, x_3564.w);
            let x_3566 : vec4<f32> = u_xlat14;
            let x_3568 : vec2<f32> = (vec2<f32>(x_3566.x, x_3566.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3569 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3568.x, x_3568.y, x_3569.z, x_3569.w);
            let x_3572 : f32 = u_xlat17.y;
            u_xlat16.x = x_3572;
            let x_3574 : vec2<f32> = u_xlat64;
            let x_3577 : vec2<f32> = ((vec2<f32>(x_3574.x, x_3574.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3578 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3578.x, x_3577.x, x_3578.z, x_3577.y);
            let x_3580 : vec2<f32> = u_xlat64;
            let x_3583 : vec2<f32> = ((vec2<f32>(x_3580.x, x_3580.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3584 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3583.x, x_3584.y, x_3583.y, x_3584.w);
            let x_3587 : f32 = u_xlat13.x;
            u_xlat14.y = x_3587;
            let x_3590 : f32 = u_xlat15.y;
            u_xlat14.w = x_3590;
            let x_3592 : vec4<f32> = u_xlat14;
            let x_3593 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3592 + x_3593);
            let x_3595 : vec2<f32> = u_xlat64;
            let x_3598 : vec2<f32> = ((vec2<f32>(x_3595.y, x_3595.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3599 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3599.x, x_3598.x, x_3599.z, x_3598.y);
            let x_3601 : vec2<f32> = u_xlat64;
            let x_3604 : vec2<f32> = ((vec2<f32>(x_3601.y, x_3601.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3605 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3604.x, x_3605.y, x_3604.y, x_3605.w);
            let x_3608 : f32 = u_xlat13.y;
            u_xlat15.y = x_3608;
            let x_3610 : vec4<f32> = u_xlat15;
            let x_3611 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3610 + x_3611);
            let x_3613 : vec4<f32> = u_xlat14;
            let x_3614 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3613 / x_3614);
            let x_3616 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3616 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3618 : vec4<f32> = u_xlat15;
            let x_3619 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3618 / x_3619);
            let x_3621 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3621 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3623 : vec4<f32> = u_xlat14;
            let x_3626 : vec4<f32> = x_587.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3623.w, x_3623.x, x_3623.y, x_3623.z) * vec4<f32>(x_3626.x, x_3626.x, x_3626.x, x_3626.x));
            let x_3629 : vec4<f32> = u_xlat15;
            let x_3632 : vec4<f32> = x_587.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3629.x, x_3629.w, x_3629.y, x_3629.z) * vec4<f32>(x_3632.y, x_3632.y, x_3632.y, x_3632.y));
            let x_3635 : vec4<f32> = u_xlat14;
            let x_3636 : vec3<f32> = vec3<f32>(x_3635.y, x_3635.z, x_3635.w);
            let x_3637 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3636.x, x_3637.y, x_3636.y, x_3636.z);
            let x_3640 : f32 = u_xlat15.x;
            u_xlat17.y = x_3640;
            let x_3642 : vec4<f32> = u_xlat12;
            let x_3645 : vec4<f32> = x_587.x_AdditionalShadowmapSize;
            let x_3648 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3642.x, x_3642.y, x_3642.x, x_3642.y) * vec4<f32>(x_3645.x, x_3645.y, x_3645.x, x_3645.y)) + vec4<f32>(x_3648.x, x_3648.y, x_3648.z, x_3648.y));
            let x_3651 : vec4<f32> = u_xlat12;
            let x_3654 : vec4<f32> = x_587.x_AdditionalShadowmapSize;
            let x_3657 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3651.x, x_3651.y) * vec2<f32>(x_3654.x, x_3654.y)) + vec2<f32>(x_3657.w, x_3657.y));
            let x_3661 : f32 = u_xlat17.y;
            u_xlat14.y = x_3661;
            let x_3664 : f32 = u_xlat15.z;
            u_xlat17.y = x_3664;
            let x_3666 : vec4<f32> = u_xlat12;
            let x_3669 : vec4<f32> = x_587.x_AdditionalShadowmapSize;
            let x_3672 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3666.x, x_3666.y, x_3666.x, x_3666.y) * vec4<f32>(x_3669.x, x_3669.y, x_3669.x, x_3669.y)) + vec4<f32>(x_3672.x, x_3672.y, x_3672.z, x_3672.y));
            let x_3675 : vec4<f32> = u_xlat12;
            let x_3678 : vec4<f32> = x_587.x_AdditionalShadowmapSize;
            let x_3681 : vec4<f32> = u_xlat17;
            let x_3683 : vec2<f32> = ((vec2<f32>(x_3675.x, x_3675.y) * vec2<f32>(x_3678.x, x_3678.y)) + vec2<f32>(x_3681.w, x_3681.y));
            let x_3684 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3683.x, x_3683.y, x_3684.z, x_3684.w);
            let x_3687 : f32 = u_xlat17.y;
            u_xlat14.z = x_3687;
            let x_3690 : vec4<f32> = u_xlat12;
            let x_3693 : vec4<f32> = x_587.x_AdditionalShadowmapSize;
            let x_3696 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3690.x, x_3690.y, x_3690.x, x_3690.y) * vec4<f32>(x_3693.x, x_3693.y, x_3693.x, x_3693.y)) + vec4<f32>(x_3696.x, x_3696.y, x_3696.x, x_3696.z));
            let x_3700 : f32 = u_xlat15.w;
            u_xlat17.y = x_3700;
            let x_3703 : vec4<f32> = u_xlat12;
            let x_3706 : vec4<f32> = x_587.x_AdditionalShadowmapSize;
            let x_3709 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3703.x, x_3703.y, x_3703.x, x_3703.y) * vec4<f32>(x_3706.x, x_3706.y, x_3706.x, x_3706.y)) + vec4<f32>(x_3709.x, x_3709.y, x_3709.z, x_3709.y));
            let x_3713 : vec4<f32> = u_xlat12;
            let x_3716 : vec4<f32> = x_587.x_AdditionalShadowmapSize;
            let x_3719 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3713.x, x_3713.y) * vec2<f32>(x_3716.x, x_3716.y)) + vec2<f32>(x_3719.w, x_3719.y));
            let x_3723 : f32 = u_xlat17.y;
            u_xlat14.w = x_3723;
            let x_3726 : vec4<f32> = u_xlat12;
            let x_3729 : vec4<f32> = x_587.x_AdditionalShadowmapSize;
            let x_3732 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3726.x, x_3726.y) * vec2<f32>(x_3729.x, x_3729.y)) + vec2<f32>(x_3732.x, x_3732.w));
            let x_3735 : vec4<f32> = u_xlat17;
            let x_3736 : vec3<f32> = vec3<f32>(x_3735.x, x_3735.z, x_3735.w);
            let x_3737 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3736.x, x_3737.y, x_3736.y, x_3736.z);
            let x_3739 : vec4<f32> = u_xlat12;
            let x_3742 : vec4<f32> = x_587.x_AdditionalShadowmapSize;
            let x_3745 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3739.x, x_3739.y, x_3739.x, x_3739.y) * vec4<f32>(x_3742.x, x_3742.y, x_3742.x, x_3742.y)) + vec4<f32>(x_3745.x, x_3745.y, x_3745.z, x_3745.y));
            let x_3748 : vec4<f32> = u_xlat12;
            let x_3751 : vec4<f32> = x_587.x_AdditionalShadowmapSize;
            let x_3754 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3748.x, x_3748.y) * vec2<f32>(x_3751.x, x_3751.y)) + vec2<f32>(x_3754.w, x_3754.y));
            let x_3758 : f32 = u_xlat14.x;
            u_xlat15.x = x_3758;
            let x_3760 : vec4<f32> = u_xlat12;
            let x_3763 : vec4<f32> = x_587.x_AdditionalShadowmapSize;
            let x_3766 : vec4<f32> = u_xlat15;
            let x_3768 : vec2<f32> = ((vec2<f32>(x_3760.x, x_3760.y) * vec2<f32>(x_3763.x, x_3763.y)) + vec2<f32>(x_3766.x, x_3766.y));
            let x_3769 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3768.x, x_3768.y, x_3769.z, x_3769.w);
            let x_3772 : vec4<f32> = u_xlat13;
            let x_3774 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3772.x, x_3772.x, x_3772.x, x_3772.x) * x_3774);
            let x_3777 : vec4<f32> = u_xlat13;
            let x_3779 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3777.y, x_3777.y, x_3777.y, x_3777.y) * x_3779);
            let x_3782 : vec4<f32> = u_xlat13;
            let x_3784 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3782.z, x_3782.z, x_3782.z, x_3782.z) * x_3784);
            let x_3786 : vec4<f32> = u_xlat13;
            let x_3788 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3786.w, x_3786.w, x_3786.w, x_3786.w) * x_3788);
            let x_3791 : vec4<f32> = u_xlat18;
            let x_3792 : vec2<f32> = vec2<f32>(x_3791.x, x_3791.y);
            let x_3794 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3792.x, x_3792.y, x_3794);
            let x_3801 : vec3<f32> = txVec43;
            let x_3803 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3801.xy, x_3801.z);
            u_xlat87 = x_3803;
            let x_3805 : vec4<f32> = u_xlat18;
            let x_3806 : vec2<f32> = vec2<f32>(x_3805.z, x_3805.w);
            let x_3808 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3806.x, x_3806.y, x_3808);
            let x_3815 : vec3<f32> = txVec44;
            let x_3817 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3815.xy, x_3815.z);
            u_xlat88 = x_3817;
            let x_3818 : f32 = u_xlat88;
            let x_3820 : f32 = u_xlat23.y;
            u_xlat88 = (x_3818 * x_3820);
            let x_3823 : f32 = u_xlat23.x;
            let x_3824 : f32 = u_xlat87;
            let x_3826 : f32 = u_xlat88;
            u_xlat87 = ((x_3823 * x_3824) + x_3826);
            let x_3829 : vec2<f32> = u_xlat64;
            let x_3831 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3829.x, x_3829.y, x_3831);
            let x_3838 : vec3<f32> = txVec45;
            let x_3840 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3838.xy, x_3838.z);
            u_xlat88 = x_3840;
            let x_3842 : f32 = u_xlat23.z;
            let x_3843 : f32 = u_xlat88;
            let x_3845 : f32 = u_xlat87;
            u_xlat87 = ((x_3842 * x_3843) + x_3845);
            let x_3848 : vec4<f32> = u_xlat21;
            let x_3849 : vec2<f32> = vec2<f32>(x_3848.x, x_3848.y);
            let x_3851 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3849.x, x_3849.y, x_3851);
            let x_3858 : vec3<f32> = txVec46;
            let x_3860 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3858.xy, x_3858.z);
            u_xlat88 = x_3860;
            let x_3862 : f32 = u_xlat23.w;
            let x_3863 : f32 = u_xlat88;
            let x_3865 : f32 = u_xlat87;
            u_xlat87 = ((x_3862 * x_3863) + x_3865);
            let x_3868 : vec4<f32> = u_xlat19;
            let x_3869 : vec2<f32> = vec2<f32>(x_3868.x, x_3868.y);
            let x_3871 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3869.x, x_3869.y, x_3871);
            let x_3878 : vec3<f32> = txVec47;
            let x_3880 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3878.xy, x_3878.z);
            u_xlat88 = x_3880;
            let x_3882 : f32 = u_xlat24.x;
            let x_3883 : f32 = u_xlat88;
            let x_3885 : f32 = u_xlat87;
            u_xlat87 = ((x_3882 * x_3883) + x_3885);
            let x_3888 : vec4<f32> = u_xlat19;
            let x_3889 : vec2<f32> = vec2<f32>(x_3888.z, x_3888.w);
            let x_3891 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3889.x, x_3889.y, x_3891);
            let x_3898 : vec3<f32> = txVec48;
            let x_3900 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3898.xy, x_3898.z);
            u_xlat88 = x_3900;
            let x_3902 : f32 = u_xlat24.y;
            let x_3903 : f32 = u_xlat88;
            let x_3905 : f32 = u_xlat87;
            u_xlat87 = ((x_3902 * x_3903) + x_3905);
            let x_3908 : vec4<f32> = u_xlat20;
            let x_3909 : vec2<f32> = vec2<f32>(x_3908.x, x_3908.y);
            let x_3911 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3909.x, x_3909.y, x_3911);
            let x_3918 : vec3<f32> = txVec49;
            let x_3920 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3918.xy, x_3918.z);
            u_xlat88 = x_3920;
            let x_3922 : f32 = u_xlat24.z;
            let x_3923 : f32 = u_xlat88;
            let x_3925 : f32 = u_xlat87;
            u_xlat87 = ((x_3922 * x_3923) + x_3925);
            let x_3928 : vec4<f32> = u_xlat21;
            let x_3929 : vec2<f32> = vec2<f32>(x_3928.z, x_3928.w);
            let x_3931 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3929.x, x_3929.y, x_3931);
            let x_3938 : vec3<f32> = txVec50;
            let x_3940 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3938.xy, x_3938.z);
            u_xlat88 = x_3940;
            let x_3942 : f32 = u_xlat24.w;
            let x_3943 : f32 = u_xlat88;
            let x_3945 : f32 = u_xlat87;
            u_xlat87 = ((x_3942 * x_3943) + x_3945);
            let x_3948 : vec4<f32> = u_xlat22;
            let x_3949 : vec2<f32> = vec2<f32>(x_3948.x, x_3948.y);
            let x_3951 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3949.x, x_3949.y, x_3951);
            let x_3958 : vec3<f32> = txVec51;
            let x_3960 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3958.xy, x_3958.z);
            u_xlat88 = x_3960;
            let x_3962 : f32 = u_xlat25.x;
            let x_3963 : f32 = u_xlat88;
            let x_3965 : f32 = u_xlat87;
            u_xlat87 = ((x_3962 * x_3963) + x_3965);
            let x_3968 : vec4<f32> = u_xlat22;
            let x_3969 : vec2<f32> = vec2<f32>(x_3968.z, x_3968.w);
            let x_3971 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3969.x, x_3969.y, x_3971);
            let x_3978 : vec3<f32> = txVec52;
            let x_3980 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3978.xy, x_3978.z);
            u_xlat88 = x_3980;
            let x_3982 : f32 = u_xlat25.y;
            let x_3983 : f32 = u_xlat88;
            let x_3985 : f32 = u_xlat87;
            u_xlat87 = ((x_3982 * x_3983) + x_3985);
            let x_3988 : vec2<f32> = u_xlat40;
            let x_3990 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3988.x, x_3988.y, x_3990);
            let x_3997 : vec3<f32> = txVec53;
            let x_3999 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3997.xy, x_3997.z);
            u_xlat88 = x_3999;
            let x_4001 : f32 = u_xlat25.z;
            let x_4002 : f32 = u_xlat88;
            let x_4004 : f32 = u_xlat87;
            u_xlat87 = ((x_4001 * x_4002) + x_4004);
            let x_4007 : vec2<f32> = u_xlat72;
            let x_4009 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_4007.x, x_4007.y, x_4009);
            let x_4016 : vec3<f32> = txVec54;
            let x_4018 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4016.xy, x_4016.z);
            u_xlat88 = x_4018;
            let x_4020 : f32 = u_xlat25.w;
            let x_4021 : f32 = u_xlat88;
            let x_4023 : f32 = u_xlat87;
            u_xlat87 = ((x_4020 * x_4021) + x_4023);
            let x_4026 : vec4<f32> = u_xlat17;
            let x_4027 : vec2<f32> = vec2<f32>(x_4026.x, x_4026.y);
            let x_4029 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_4027.x, x_4027.y, x_4029);
            let x_4036 : vec3<f32> = txVec55;
            let x_4038 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4036.xy, x_4036.z);
            u_xlat88 = x_4038;
            let x_4040 : f32 = u_xlat13.x;
            let x_4041 : f32 = u_xlat88;
            let x_4043 : f32 = u_xlat87;
            u_xlat87 = ((x_4040 * x_4041) + x_4043);
            let x_4046 : vec4<f32> = u_xlat17;
            let x_4047 : vec2<f32> = vec2<f32>(x_4046.z, x_4046.w);
            let x_4049 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_4047.x, x_4047.y, x_4049);
            let x_4056 : vec3<f32> = txVec56;
            let x_4058 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4056.xy, x_4056.z);
            u_xlat88 = x_4058;
            let x_4060 : f32 = u_xlat13.y;
            let x_4061 : f32 = u_xlat88;
            let x_4063 : f32 = u_xlat87;
            u_xlat87 = ((x_4060 * x_4061) + x_4063);
            let x_4066 : vec2<f32> = u_xlat67;
            let x_4068 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_4066.x, x_4066.y, x_4068);
            let x_4075 : vec3<f32> = txVec57;
            let x_4077 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4075.xy, x_4075.z);
            u_xlat88 = x_4077;
            let x_4079 : f32 = u_xlat13.z;
            let x_4080 : f32 = u_xlat88;
            let x_4082 : f32 = u_xlat87;
            u_xlat87 = ((x_4079 * x_4080) + x_4082);
            let x_4085 : vec4<f32> = u_xlat12;
            let x_4086 : vec2<f32> = vec2<f32>(x_4085.x, x_4085.y);
            let x_4088 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_4086.x, x_4086.y, x_4088);
            let x_4095 : vec3<f32> = txVec58;
            let x_4097 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4095.xy, x_4095.z);
            u_xlat88 = x_4097;
            let x_4099 : f32 = u_xlat13.w;
            let x_4100 : f32 = u_xlat88;
            let x_4102 : f32 = u_xlat87;
            u_xlat86 = ((x_4099 * x_4100) + x_4102);
          }
        }
      } else {
        let x_4106 : vec4<f32> = u_xlat11;
        let x_4107 : vec2<f32> = vec2<f32>(x_4106.x, x_4106.y);
        let x_4109 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_4107.x, x_4107.y, x_4109);
        let x_4116 : vec3<f32> = txVec59;
        let x_4118 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4116.xy, x_4116.z);
        u_xlat86 = x_4118;
      }
      let x_4119 : i32 = u_xlati84;
      let x_4121 : f32 = x_587.x_AdditionalShadowParams[x_4119].x;
      u_xlat87 = (1.0f + -(x_4121));
      let x_4124 : f32 = u_xlat86;
      let x_4125 : i32 = u_xlati84;
      let x_4127 : f32 = x_587.x_AdditionalShadowParams[x_4125].x;
      let x_4129 : f32 = u_xlat87;
      u_xlat86 = ((x_4124 * x_4127) + x_4129);
      let x_4132 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_4132);
      let x_4136 : f32 = u_xlat11.z;
      u_xlatb88 = (x_4136 >= 1.0f);
      let x_4138 : bool = u_xlatb87;
      let x_4139 : bool = u_xlatb88;
      u_xlatb87 = (x_4138 | x_4139);
      let x_4141 : bool = u_xlatb87;
      let x_4142 : f32 = u_xlat86;
      u_xlat86 = select(x_4142, 1.0f, x_4141);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_4145 : f32 = u_xlat86;
    u_xlat87 = (-(x_4145) + 1.0f);
    let x_4148 : f32 = u_xlat29;
    let x_4149 : f32 = u_xlat87;
    let x_4151 : f32 = u_xlat86;
    u_xlat86 = ((x_4148 * x_4149) + x_4151);
    let x_4154 : i32 = u_xlati84;
    u_xlati87 = (1i << bitcast<u32>((x_4154 & 31i)));
    let x_4157 : i32 = u_xlati87;
    let x_4160 : f32 = x_2240.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_4157) & bitcast<u32>(x_4160)));
    let x_4164 : i32 = u_xlati87;
    if ((x_4164 != 0i)) {
      let x_4168 : i32 = u_xlati84;
      let x_4170 : f32 = x_2240.x_AdditionalLightsLightTypes[x_4168].el;
      u_xlati87 = i32(x_4170);
      let x_4173 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_4173 != 0i));
      let x_4177 : i32 = u_xlati84;
      u_xlati11 = (x_4177 << bitcast<u32>(2i));
      let x_4179 : i32 = u_xlati88;
      if ((x_4179 != 0i)) {
        let x_4184 : vec3<f32> = vs_TEXCOORD7;
        let x_4186 : i32 = u_xlati11;
        let x_4189 : i32 = u_xlati11;
        let x_4193 : vec4<f32> = x_2240.x_AdditionalLightsWorldToLights[((x_4186 + 1i) / 4i)][((x_4189 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_4184.y, x_4184.y, x_4184.y) * vec3<f32>(x_4193.x, x_4193.y, x_4193.w));
        let x_4196 : i32 = u_xlati11;
        let x_4198 : i32 = u_xlati11;
        let x_4201 : vec4<f32> = x_2240.x_AdditionalLightsWorldToLights[(x_4196 / 4i)][(x_4198 % 4i)];
        let x_4203 : vec3<f32> = vs_TEXCOORD7;
        let x_4206 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4201.x, x_4201.y, x_4201.w) * vec3<f32>(x_4203.x, x_4203.x, x_4203.x)) + x_4206);
        let x_4208 : i32 = u_xlati11;
        let x_4211 : i32 = u_xlati11;
        let x_4215 : vec4<f32> = x_2240.x_AdditionalLightsWorldToLights[((x_4208 + 2i) / 4i)][((x_4211 + 2i) % 4i)];
        let x_4217 : vec3<f32> = vs_TEXCOORD7;
        let x_4220 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4215.x, x_4215.y, x_4215.w) * vec3<f32>(x_4217.z, x_4217.z, x_4217.z)) + x_4220);
        let x_4222 : vec3<f32> = u_xlat37;
        let x_4223 : i32 = u_xlati11;
        let x_4226 : i32 = u_xlati11;
        let x_4230 : vec4<f32> = x_2240.x_AdditionalLightsWorldToLights[((x_4223 + 3i) / 4i)][((x_4226 + 3i) % 4i)];
        u_xlat37 = (x_4222 + vec3<f32>(x_4230.x, x_4230.y, x_4230.w));
        let x_4233 : vec3<f32> = u_xlat37;
        let x_4235 : vec3<f32> = u_xlat37;
        let x_4237 : vec2<f32> = (vec2<f32>(x_4233.x, x_4233.y) / vec2<f32>(x_4235.z, x_4235.z));
        let x_4238 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4237.x, x_4237.y, x_4238.z);
        let x_4240 : vec3<f32> = u_xlat37;
        let x_4243 : vec2<f32> = ((vec2<f32>(x_4240.x, x_4240.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4244 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4243.x, x_4243.y, x_4244.z);
        let x_4246 : vec3<f32> = u_xlat37;
        let x_4250 : vec2<f32> = clamp(vec2<f32>(x_4246.x, x_4246.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4251 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4250.x, x_4250.y, x_4251.z);
        let x_4253 : i32 = u_xlati84;
        let x_4255 : vec4<f32> = x_2240.x_AdditionalLightsCookieAtlasUVRects[x_4253];
        let x_4257 : vec3<f32> = u_xlat37;
        let x_4260 : i32 = u_xlati84;
        let x_4262 : vec4<f32> = x_2240.x_AdditionalLightsCookieAtlasUVRects[x_4260];
        let x_4264 : vec2<f32> = ((vec2<f32>(x_4255.x, x_4255.y) * vec2<f32>(x_4257.x, x_4257.y)) + vec2<f32>(x_4262.z, x_4262.w));
        let x_4265 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4264.x, x_4264.y, x_4265.z);
      } else {
        let x_4268 : i32 = u_xlati87;
        u_xlatb87 = (x_4268 == 1i);
        let x_4270 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_4270);
        let x_4272 : i32 = u_xlati87;
        if ((x_4272 != 0i)) {
          let x_4276 : vec3<f32> = vs_TEXCOORD7;
          let x_4278 : i32 = u_xlati11;
          let x_4281 : i32 = u_xlati11;
          let x_4285 : vec4<f32> = x_2240.x_AdditionalLightsWorldToLights[((x_4278 + 1i) / 4i)][((x_4281 + 1i) % 4i)];
          let x_4287 : vec2<f32> = (vec2<f32>(x_4276.y, x_4276.y) * vec2<f32>(x_4285.x, x_4285.y));
          let x_4288 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4287.x, x_4287.y, x_4288.z, x_4288.w);
          let x_4290 : i32 = u_xlati11;
          let x_4292 : i32 = u_xlati11;
          let x_4295 : vec4<f32> = x_2240.x_AdditionalLightsWorldToLights[(x_4290 / 4i)][(x_4292 % 4i)];
          let x_4297 : vec3<f32> = vs_TEXCOORD7;
          let x_4300 : vec4<f32> = u_xlat12;
          let x_4302 : vec2<f32> = ((vec2<f32>(x_4295.x, x_4295.y) * vec2<f32>(x_4297.x, x_4297.x)) + vec2<f32>(x_4300.x, x_4300.y));
          let x_4303 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4302.x, x_4302.y, x_4303.z, x_4303.w);
          let x_4305 : i32 = u_xlati11;
          let x_4308 : i32 = u_xlati11;
          let x_4312 : vec4<f32> = x_2240.x_AdditionalLightsWorldToLights[((x_4305 + 2i) / 4i)][((x_4308 + 2i) % 4i)];
          let x_4314 : vec3<f32> = vs_TEXCOORD7;
          let x_4317 : vec4<f32> = u_xlat12;
          let x_4319 : vec2<f32> = ((vec2<f32>(x_4312.x, x_4312.y) * vec2<f32>(x_4314.z, x_4314.z)) + vec2<f32>(x_4317.x, x_4317.y));
          let x_4320 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4319.x, x_4319.y, x_4320.z, x_4320.w);
          let x_4322 : vec4<f32> = u_xlat12;
          let x_4324 : i32 = u_xlati11;
          let x_4327 : i32 = u_xlati11;
          let x_4331 : vec4<f32> = x_2240.x_AdditionalLightsWorldToLights[((x_4324 + 3i) / 4i)][((x_4327 + 3i) % 4i)];
          let x_4333 : vec2<f32> = (vec2<f32>(x_4322.x, x_4322.y) + vec2<f32>(x_4331.x, x_4331.y));
          let x_4334 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4333.x, x_4333.y, x_4334.z, x_4334.w);
          let x_4336 : vec4<f32> = u_xlat12;
          let x_4339 : vec2<f32> = ((vec2<f32>(x_4336.x, x_4336.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4340 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4339.x, x_4339.y, x_4340.z, x_4340.w);
          let x_4342 : vec4<f32> = u_xlat12;
          let x_4344 : vec2<f32> = fract(vec2<f32>(x_4342.x, x_4342.y));
          let x_4345 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4344.x, x_4344.y, x_4345.z, x_4345.w);
          let x_4347 : i32 = u_xlati84;
          let x_4349 : vec4<f32> = x_2240.x_AdditionalLightsCookieAtlasUVRects[x_4347];
          let x_4351 : vec4<f32> = u_xlat12;
          let x_4354 : i32 = u_xlati84;
          let x_4356 : vec4<f32> = x_2240.x_AdditionalLightsCookieAtlasUVRects[x_4354];
          let x_4358 : vec2<f32> = ((vec2<f32>(x_4349.x, x_4349.y) * vec2<f32>(x_4351.x, x_4351.y)) + vec2<f32>(x_4356.z, x_4356.w));
          let x_4359 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4358.x, x_4358.y, x_4359.z);
        } else {
          let x_4362 : vec3<f32> = vs_TEXCOORD7;
          let x_4364 : i32 = u_xlati11;
          let x_4367 : i32 = u_xlati11;
          let x_4371 : vec4<f32> = x_2240.x_AdditionalLightsWorldToLights[((x_4364 + 1i) / 4i)][((x_4367 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4362.y, x_4362.y, x_4362.y, x_4362.y) * x_4371);
          let x_4373 : i32 = u_xlati11;
          let x_4375 : i32 = u_xlati11;
          let x_4378 : vec4<f32> = x_2240.x_AdditionalLightsWorldToLights[(x_4373 / 4i)][(x_4375 % 4i)];
          let x_4379 : vec3<f32> = vs_TEXCOORD7;
          let x_4382 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4378 * vec4<f32>(x_4379.x, x_4379.x, x_4379.x, x_4379.x)) + x_4382);
          let x_4384 : i32 = u_xlati11;
          let x_4387 : i32 = u_xlati11;
          let x_4391 : vec4<f32> = x_2240.x_AdditionalLightsWorldToLights[((x_4384 + 2i) / 4i)][((x_4387 + 2i) % 4i)];
          let x_4392 : vec3<f32> = vs_TEXCOORD7;
          let x_4395 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4391 * vec4<f32>(x_4392.z, x_4392.z, x_4392.z, x_4392.z)) + x_4395);
          let x_4397 : vec4<f32> = u_xlat12;
          let x_4398 : i32 = u_xlati11;
          let x_4401 : i32 = u_xlati11;
          let x_4405 : vec4<f32> = x_2240.x_AdditionalLightsWorldToLights[((x_4398 + 3i) / 4i)][((x_4401 + 3i) % 4i)];
          u_xlat12 = (x_4397 + x_4405);
          let x_4407 : vec4<f32> = u_xlat12;
          let x_4409 : vec4<f32> = u_xlat12;
          let x_4411 : vec3<f32> = (vec3<f32>(x_4407.x, x_4407.y, x_4407.z) / vec3<f32>(x_4409.w, x_4409.w, x_4409.w));
          let x_4412 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4411.x, x_4411.y, x_4411.z, x_4412.w);
          let x_4414 : vec4<f32> = u_xlat12;
          let x_4416 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_4414.x, x_4414.y, x_4414.z), vec3<f32>(x_4416.x, x_4416.y, x_4416.z));
          let x_4419 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_4419);
          let x_4421 : f32 = u_xlat87;
          let x_4423 : vec4<f32> = u_xlat12;
          let x_4425 : vec3<f32> = (vec3<f32>(x_4421, x_4421, x_4421) * vec3<f32>(x_4423.x, x_4423.y, x_4423.z));
          let x_4426 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4425.x, x_4425.y, x_4425.z, x_4426.w);
          let x_4428 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_4428.x, x_4428.y, x_4428.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4433 : f32 = u_xlat87;
          u_xlat87 = max(x_4433, 0.00000099999999747524f);
          let x_4436 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_4436);
          let x_4438 : f32 = u_xlat87;
          let x_4440 : vec4<f32> = u_xlat12;
          let x_4442 : vec3<f32> = (vec3<f32>(x_4438, x_4438, x_4438) * vec3<f32>(x_4440.z, x_4440.x, x_4440.y));
          let x_4443 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4442.x, x_4442.y, x_4442.z, x_4443.w);
          let x_4446 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4446);
          let x_4450 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4450, 0.0f, 1.0f);
          let x_4453 : vec4<f32> = u_xlat13;
          let x_4455 : vec4<bool> = (vec4<f32>(x_4453.y, x_4453.y, x_4453.y, x_4453.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_4456 : vec2<bool> = vec2<bool>(x_4455.x, x_4455.w);
          let x_4457 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_4456.x, x_4457.y, x_4457.z, x_4456.y);
          let x_4460 : bool = u_xlatb11.x;
          if (x_4460) {
            let x_4465 : f32 = u_xlat13.x;
            x_4461 = x_4465;
          } else {
            let x_4468 : f32 = u_xlat13.x;
            x_4461 = -(x_4468);
          }
          let x_4470 : f32 = x_4461;
          u_xlat11.x = x_4470;
          let x_4473 : bool = u_xlatb11.w;
          if (x_4473) {
            let x_4478 : f32 = u_xlat13.x;
            x_4474 = x_4478;
          } else {
            let x_4481 : f32 = u_xlat13.x;
            x_4474 = -(x_4481);
          }
          let x_4483 : f32 = x_4474;
          u_xlat11.w = x_4483;
          let x_4485 : vec4<f32> = u_xlat12;
          let x_4487 : f32 = u_xlat87;
          let x_4490 : vec4<f32> = u_xlat11;
          let x_4492 : vec2<f32> = ((vec2<f32>(x_4485.x, x_4485.y) * vec2<f32>(x_4487, x_4487)) + vec2<f32>(x_4490.x, x_4490.w));
          let x_4493 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4492.x, x_4493.y, x_4493.z, x_4492.y);
          let x_4495 : vec4<f32> = u_xlat11;
          let x_4498 : vec2<f32> = ((vec2<f32>(x_4495.x, x_4495.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4499 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4498.x, x_4499.y, x_4499.z, x_4498.y);
          let x_4501 : vec4<f32> = u_xlat11;
          let x_4505 : vec2<f32> = clamp(vec2<f32>(x_4501.x, x_4501.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4506 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4505.x, x_4506.y, x_4506.z, x_4505.y);
          let x_4508 : i32 = u_xlati84;
          let x_4510 : vec4<f32> = x_2240.x_AdditionalLightsCookieAtlasUVRects[x_4508];
          let x_4512 : vec4<f32> = u_xlat11;
          let x_4515 : i32 = u_xlati84;
          let x_4517 : vec4<f32> = x_2240.x_AdditionalLightsCookieAtlasUVRects[x_4515];
          let x_4519 : vec2<f32> = ((vec2<f32>(x_4510.x, x_4510.y) * vec2<f32>(x_4512.x, x_4512.w)) + vec2<f32>(x_4517.z, x_4517.w));
          let x_4520 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4519.x, x_4519.y, x_4520.z);
        }
      }
      let x_4527 : vec3<f32> = u_xlat37;
      let x_4529 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4527.x, x_4527.y), 0.0f);
      u_xlat11 = x_4529;
      let x_4531 : bool = u_xlatb7.y;
      if (x_4531) {
        let x_4536 : f32 = u_xlat11.w;
        x_4532 = x_4536;
      } else {
        let x_4539 : f32 = u_xlat11.x;
        x_4532 = x_4539;
      }
      let x_4540 : f32 = x_4532;
      u_xlat87 = x_4540;
      let x_4542 : bool = u_xlatb7.x;
      if (x_4542) {
        let x_4546 : vec4<f32> = u_xlat11;
        x_4543 = vec3<f32>(x_4546.x, x_4546.y, x_4546.z);
      } else {
        let x_4549 : f32 = u_xlat87;
        x_4543 = vec3<f32>(x_4549, x_4549, x_4549);
      }
      let x_4551 : vec3<f32> = x_4543;
      let x_4552 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4551.x, x_4551.y, x_4551.z, x_4552.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4558 : vec4<f32> = u_xlat11;
    let x_4560 : i32 = u_xlati84;
    let x_4562 : vec4<f32> = x_2719.x_AdditionalLightsColor[x_4560];
    let x_4564 : vec3<f32> = (vec3<f32>(x_4558.x, x_4558.y, x_4558.z) * vec3<f32>(x_4562.x, x_4562.y, x_4562.z));
    let x_4565 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4564.x, x_4564.y, x_4564.z, x_4565.w);
    let x_4568 : f32 = u_xlat59.x;
    let x_4569 : f32 = u_xlat86;
    u_xlat84 = (x_4568 * x_4569);
    let x_4571 : vec3<f32> = u_xlat2;
    let x_4572 : vec4<f32> = u_xlat10;
    u_xlat59.x = dot(x_4571, vec3<f32>(x_4572.x, x_4572.y, x_4572.z));
    let x_4577 : f32 = u_xlat59.x;
    u_xlat59.x = clamp(x_4577, 0.0f, 1.0f);
    let x_4580 : f32 = u_xlat84;
    let x_4582 : f32 = u_xlat59.x;
    u_xlat84 = (x_4580 * x_4582);
    let x_4584 : f32 = u_xlat84;
    let x_4586 : vec4<f32> = u_xlat11;
    let x_4588 : vec3<f32> = (vec3<f32>(x_4584, x_4584, x_4584) * vec3<f32>(x_4586.x, x_4586.y, x_4586.z));
    let x_4589 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4588.x, x_4588.y, x_4588.z, x_4589.w);
    let x_4591 : vec4<f32> = u_xlat9;
    let x_4593 : f32 = u_xlat85;
    let x_4596 : vec4<f32> = u_xlat1;
    let x_4598 : vec3<f32> = ((vec3<f32>(x_4591.x, x_4591.y, x_4591.z) * vec3<f32>(x_4593, x_4593, x_4593)) + vec3<f32>(x_4596.x, x_4596.y, x_4596.z));
    let x_4599 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4598.x, x_4598.y, x_4598.z, x_4599.w);
    let x_4601 : vec4<f32> = u_xlat9;
    let x_4603 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4601.x, x_4601.y, x_4601.z), vec3<f32>(x_4603.x, x_4603.y, x_4603.z));
    let x_4606 : f32 = u_xlat84;
    u_xlat84 = max(x_4606, 1.17549435e-38f);
    let x_4608 : f32 = u_xlat84;
    u_xlat84 = inverseSqrt(x_4608);
    let x_4610 : f32 = u_xlat84;
    let x_4612 : vec4<f32> = u_xlat9;
    let x_4614 : vec3<f32> = (vec3<f32>(x_4610, x_4610, x_4610) * vec3<f32>(x_4612.x, x_4612.y, x_4612.z));
    let x_4615 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4614.x, x_4614.y, x_4614.z, x_4615.w);
    let x_4617 : vec3<f32> = u_xlat2;
    let x_4618 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(x_4617, vec3<f32>(x_4618.x, x_4618.y, x_4618.z));
    let x_4621 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4621, 0.0f, 1.0f);
    let x_4623 : vec4<f32> = u_xlat10;
    let x_4625 : vec4<f32> = u_xlat9;
    u_xlat59.x = dot(vec3<f32>(x_4623.x, x_4623.y, x_4623.z), vec3<f32>(x_4625.x, x_4625.y, x_4625.z));
    let x_4630 : f32 = u_xlat59.x;
    u_xlat59.x = clamp(x_4630, 0.0f, 1.0f);
    let x_4633 : f32 = u_xlat84;
    let x_4634 : f32 = u_xlat84;
    u_xlat84 = (x_4633 * x_4634);
    let x_4636 : f32 = u_xlat84;
    let x_4638 : f32 = u_xlat0.x;
    u_xlat84 = ((x_4636 * x_4638) + 1.00001001358032226562f);
    let x_4642 : f32 = u_xlat59.x;
    let x_4644 : f32 = u_xlat59.x;
    u_xlat59.x = (x_4642 * x_4644);
    let x_4647 : f32 = u_xlat84;
    let x_4648 : f32 = u_xlat84;
    u_xlat84 = (x_4647 * x_4648);
    let x_4651 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_4651, 0.10000000149011611938f);
    let x_4654 : f32 = u_xlat84;
    let x_4656 : f32 = u_xlat59.x;
    u_xlat84 = (x_4654 * x_4656);
    let x_4658 : f32 = u_xlat82;
    let x_4659 : f32 = u_xlat84;
    u_xlat84 = (x_4658 * x_4659);
    let x_4661 : f32 = u_xlat80;
    let x_4662 : f32 = u_xlat84;
    u_xlat84 = (x_4661 / x_4662);
    let x_4664 : vec4<f32> = u_xlat5;
    let x_4666 : f32 = u_xlat84;
    let x_4669 : vec4<f32> = u_xlat6;
    let x_4671 : vec3<f32> = ((vec3<f32>(x_4664.x, x_4664.y, x_4664.z) * vec3<f32>(x_4666, x_4666, x_4666)) + vec3<f32>(x_4669.x, x_4669.y, x_4669.z));
    let x_4672 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4671.x, x_4671.y, x_4671.z, x_4672.w);
    let x_4674 : vec4<f32> = u_xlat9;
    let x_4676 : vec4<f32> = u_xlat11;
    let x_4679 : vec4<f32> = u_xlat8;
    let x_4681 : vec3<f32> = ((vec3<f32>(x_4674.x, x_4674.y, x_4674.z) * vec3<f32>(x_4676.x, x_4676.y, x_4676.z)) + vec3<f32>(x_4679.x, x_4679.y, x_4679.z));
    let x_4682 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4681.x, x_4681.y, x_4681.z, x_4682.w);

    continuing {
      let x_4684 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4684 + bitcast<u32>(1i));
    }
  }
  let x_4686 : vec4<f32> = u_xlat4;
  let x_4688 : f32 = u_xlat26;
  let x_4691 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_4686.x, x_4686.y, x_4686.z) * vec3<f32>(x_4688, x_4688, x_4688)) + vec3<f32>(x_4691.x, x_4691.z, x_4691.w));
  let x_4694 : vec4<f32> = u_xlat8;
  let x_4696 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4694.x, x_4694.y, x_4694.z) + x_4696);
  let x_4698 : f32 = u_xlat78;
  let x_4700 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4698, x_4698, x_4698) * x_4700);
  let x_4702 : f32 = u_xlat79;
  let x_4703 : f32 = u_xlat79;
  u_xlat78 = (x_4702 * -(x_4703));
  let x_4706 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4706);
  let x_4710 : vec3<f32> = u_xlat0;
  let x_4711 : f32 = u_xlat78;
  let x_4713 : vec3<f32> = (x_4710 * vec3<f32>(x_4711, x_4711, x_4711));
  let x_4714 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4713.x, x_4713.y, x_4713.z, x_4714.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


