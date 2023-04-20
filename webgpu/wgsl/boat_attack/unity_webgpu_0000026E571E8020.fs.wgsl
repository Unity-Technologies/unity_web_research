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
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
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

var<private> u_xlat52 : f32;

var<private> u_xlat26 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat27 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(13) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlatb82 : bool;

@group(1) @binding(4) var<uniform> x_709 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlatb6 : bool;

@group(1) @binding(5) var<uniform> x_2020 : LightCookies;

@group(0) @binding(10) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat84 : f32;

var<private> u_xlat85 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2211 : UnityPerDraw;

var<private> u_xlatu52 : u32;

var<private> u_xlatu83 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati83 : i32;

@group(1) @binding(1) var<uniform> x_2499 : AdditionalLights;

var<private> u_xlat59 : f32;

var<private> u_xlati85 : i32;

var<private> u_xlatb86 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat87 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(9) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(11) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu82 : u32;

fn main_1() {
  var x_537 : f32;
  var x_548 : f32;
  var x_560 : f32;
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
  var x_2105 : f32;
  var x_2116 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2635 : f32;
  var x_2645 : f32;
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
  var x_4216 : f32;
  var x_4229 : f32;
  var x_4277 : f32;
  var x_4288 : vec3<f32>;
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
  let x_277 : f32 = u_xlat79;
  u_xlat79 = (x_277 + 0.00006103515625f);
  let x_280 : vec4<f32> = u_xlat4;
  let x_281 : f32 = u_xlat79;
  u_xlat4 = (x_280 / vec4<f32>(x_281, x_281, x_281, x_281));
  let x_284 : vec4<f32> = u_xlat4;
  let x_287 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_289 : vec3<f32> = (vec3<f32>(x_284.x, x_284.x, x_284.x) * vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_290 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_292 : vec4<f32> = u_xlat4;
  let x_295 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_297 : vec3<f32> = (vec3<f32>(x_292.y, x_292.y, x_292.y) * vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_298 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_300 : vec4<f32> = u_xlat6;
  let x_302 : vec4<f32> = u_xlat12;
  let x_304 : vec3<f32> = (vec3<f32>(x_300.x, x_300.y, x_300.z) * vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : vec4<f32> = u_xlat5;
  let x_309 : vec4<f32> = u_xlat11;
  let x_312 : vec4<f32> = u_xlat6;
  let x_314 : vec3<f32> = ((vec3<f32>(x_307.x, x_307.y, x_307.z) * vec3<f32>(x_309.x, x_309.y, x_309.z)) + vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_315 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : vec4<f32> = u_xlat4;
  let x_320 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_322 : vec3<f32> = (vec3<f32>(x_317.z, x_317.z, x_317.z) * vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec4<f32> = u_xlat7;
  let x_327 : vec4<f32> = u_xlat6;
  let x_330 : vec4<f32> = u_xlat5;
  let x_332 : vec3<f32> = ((vec3<f32>(x_325.x, x_325.y, x_325.z) * vec3<f32>(x_327.x, x_327.y, x_327.z)) + vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_333 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_335 : vec4<f32> = u_xlat4;
  let x_338 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_340 : vec3<f32> = (vec3<f32>(x_335.w, x_335.w, x_335.w) * vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec4<f32> = u_xlat8;
  let x_345 : vec4<f32> = u_xlat6;
  let x_348 : vec4<f32> = u_xlat5;
  let x_350 : vec3<f32> = ((vec3<f32>(x_343.x, x_343.y, x_343.z) * vec3<f32>(x_345.x, x_345.y, x_345.z)) + vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_354 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_354;
  let x_357 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_357;
  let x_360 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_360;
  let x_363 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_363;
  let x_366 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_366;
  let x_369 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_369;
  let x_372 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_372;
  let x_375 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_375;
  let x_377 : vec4<f32> = u_xlat6;
  let x_378 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_377 + x_378);
  let x_381 : f32 = u_xlat0.z;
  u_xlat7.x = x_381;
  let x_384 : f32 = u_xlat1.z;
  u_xlat7.y = x_384;
  let x_387 : f32 = u_xlat2.z;
  u_xlat7.z = x_387;
  let x_390 : f32 = u_xlat3.y;
  u_xlat7.w = x_390;
  let x_392 : vec4<f32> = u_xlat9;
  let x_395 : f32 = x_13.x_Smoothness0;
  let x_397 : f32 = x_13.x_Smoothness1;
  let x_399 : f32 = x_13.x_Smoothness2;
  let x_401 : f32 = x_13.x_Smoothness3;
  let x_404 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_392) * vec4<f32>(x_395, x_397, x_399, x_401)) + x_404);
  let x_408 : f32 = x_13.x_LayerHasMask0;
  let x_411 : f32 = x_13.x_LayerHasMask1;
  let x_414 : f32 = x_13.x_LayerHasMask2;
  let x_417 : f32 = x_13.x_LayerHasMask3;
  let x_419 : vec4<f32> = u_xlat7;
  let x_421 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_408, x_411, x_414, x_417) * x_419) + x_421);
  let x_424 : vec4<f32> = u_xlat4;
  let x_425 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(x_424, x_425);
  let x_428 : f32 = u_xlat0.x;
  u_xlat7.x = x_428;
  let x_431 : f32 = u_xlat1.x;
  u_xlat7.y = x_431;
  let x_434 : f32 = u_xlat2.x;
  u_xlat7.z = x_434;
  let x_437 : f32 = u_xlat3.x;
  u_xlat7.w = x_437;
  let x_439 : vec4<f32> = u_xlat7;
  let x_442 : f32 = x_13.x_Metallic0;
  let x_445 : f32 = x_13.x_Metallic1;
  let x_448 : f32 = x_13.x_Metallic2;
  let x_451 : f32 = x_13.x_Metallic3;
  u_xlat7 = (x_439 + -(vec4<f32>(x_442, x_445, x_448, x_451)));
  let x_456 : f32 = x_13.x_LayerHasMask0;
  let x_458 : f32 = x_13.x_LayerHasMask1;
  let x_460 : f32 = x_13.x_LayerHasMask2;
  let x_462 : f32 = x_13.x_LayerHasMask3;
  let x_464 : vec4<f32> = u_xlat7;
  let x_467 : f32 = x_13.x_Metallic0;
  let x_469 : f32 = x_13.x_Metallic1;
  let x_471 : f32 = x_13.x_Metallic2;
  let x_473 : f32 = x_13.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_456, x_458, x_460, x_462) * x_464) + vec4<f32>(x_467, x_469, x_471, x_473));
  let x_476 : vec4<f32> = u_xlat4;
  let x_477 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_476, x_477);
  let x_481 : f32 = u_xlat0.y;
  u_xlat3.x = x_481;
  let x_484 : f32 = u_xlat1.y;
  u_xlat3.y = x_484;
  let x_487 : f32 = u_xlat2.y;
  u_xlat3.z = x_487;
  let x_489 : vec4<f32> = u_xlat6;
  let x_491 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_489) + x_491);
  let x_494 : f32 = x_13.x_LayerHasMask0;
  let x_496 : f32 = x_13.x_LayerHasMask1;
  let x_498 : f32 = x_13.x_LayerHasMask2;
  let x_500 : f32 = x_13.x_LayerHasMask3;
  let x_502 : vec4<f32> = u_xlat1;
  let x_504 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_494, x_496, x_498, x_500) * x_502) + x_504);
  let x_507 : vec4<f32> = u_xlat4;
  let x_508 : vec4<f32> = u_xlat1;
  u_xlat26 = dot(x_507, x_508);
  let x_512 : f32 = x_111.unity_OrthoParams.w;
  u_xlatb1 = (x_512 == 0.0f);
  let x_517 : vec3<f32> = vs_TEXCOORD7;
  let x_521 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  u_xlat27 = (-(x_517) + x_521);
  let x_523 : vec3<f32> = u_xlat27;
  let x_524 : vec3<f32> = u_xlat27;
  u_xlat2.x = dot(x_523, x_524);
  let x_528 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_528);
  let x_531 : vec3<f32> = u_xlat27;
  let x_532 : vec3<f32> = u_xlat2;
  u_xlat27 = (x_531 * vec3<f32>(x_532.x, x_532.x, x_532.x));
  let x_535 : bool = u_xlatb1;
  if (x_535) {
    let x_541 : f32 = u_xlat27.x;
    x_537 = x_541;
  } else {
    let x_544 : f32 = x_111.unity_MatrixV[0i].z;
    x_537 = x_544;
  }
  let x_545 : f32 = x_537;
  u_xlat2.x = x_545;
  let x_547 : bool = u_xlatb1;
  if (x_547) {
    let x_552 : f32 = u_xlat27.y;
    x_548 = x_552;
  } else {
    let x_556 : f32 = x_111.unity_MatrixV[1i].z;
    x_548 = x_556;
  }
  let x_557 : f32 = x_548;
  u_xlat2.y = x_557;
  let x_559 : bool = u_xlatb1;
  if (x_559) {
    let x_564 : f32 = u_xlat27.z;
    x_560 = x_564;
  } else {
    let x_568 : f32 = x_111.unity_MatrixV[2i].z;
    x_560 = x_568;
  }
  let x_569 : f32 = x_560;
  u_xlat2.z = x_569;
  let x_572 : vec3<f32> = vs_TEXCOORD3;
  let x_573 : vec3<f32> = vs_TEXCOORD3;
  u_xlat1.x = dot(x_572, x_573);
  let x_577 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_577);
  let x_580 : vec4<f32> = u_xlat1;
  let x_582 : vec3<f32> = vs_TEXCOORD3;
  let x_583 : vec3<f32> = (vec3<f32>(x_580.x, x_580.x, x_580.x) * x_582);
  let x_584 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_591 : vec4<f32> = vs_TEXCOORD0;
  let x_594 : f32 = x_111.x_GlobalMipBias.x;
  let x_595 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_591.z, x_591.w), x_594);
  u_xlat3 = x_595;
  let x_600 : vec4<f32> = vs_TEXCOORD0;
  let x_603 : f32 = x_111.x_GlobalMipBias.x;
  let x_604 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_600.z, x_600.w), x_603);
  let x_605 : vec3<f32> = vec3<f32>(x_604.x, x_604.y, x_604.z);
  let x_606 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
  let x_608 : vec4<f32> = u_xlat3;
  let x_612 : vec3<f32> = (vec3<f32>(x_608.x, x_608.y, x_608.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_613 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
  let x_615 : vec4<f32> = u_xlat1;
  let x_617 : vec4<f32> = u_xlat3;
  u_xlat79 = dot(vec3<f32>(x_615.x, x_615.y, x_615.z), vec3<f32>(x_617.x, x_617.y, x_617.z));
  let x_620 : f32 = u_xlat79;
  u_xlat79 = (x_620 + 0.5f);
  let x_622 : f32 = u_xlat79;
  let x_624 : vec4<f32> = u_xlat4;
  let x_626 : vec3<f32> = (vec3<f32>(x_622, x_622, x_622) * vec3<f32>(x_624.x, x_624.y, x_624.z));
  let x_627 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
  let x_630 : f32 = u_xlat3.w;
  u_xlat79 = max(x_630, 0.00009999999747378752f);
  let x_633 : vec4<f32> = u_xlat3;
  let x_635 : f32 = u_xlat79;
  let x_637 : vec3<f32> = (vec3<f32>(x_633.x, x_633.y, x_633.z) / vec3<f32>(x_635, x_635, x_635));
  let x_638 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
  let x_641 : f32 = u_xlat0.x;
  u_xlat79 = ((-(x_641) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_647 : f32 = u_xlat52;
  let x_648 : f32 = u_xlat79;
  u_xlat80 = (x_647 + -(x_648));
  let x_651 : f32 = u_xlat79;
  let x_653 : vec4<f32> = u_xlat5;
  let x_655 : vec3<f32> = (vec3<f32>(x_651, x_651, x_651) * vec3<f32>(x_653.x, x_653.y, x_653.z));
  let x_656 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_658 : vec4<f32> = u_xlat5;
  let x_662 : vec3<f32> = (vec3<f32>(x_658.x, x_658.y, x_658.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_663 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
  let x_665 : vec3<f32> = u_xlat0;
  let x_667 : vec4<f32> = u_xlat5;
  let x_672 : vec3<f32> = ((vec3<f32>(x_665.x, x_665.x, x_665.x) * vec3<f32>(x_667.x, x_667.y, x_667.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_673 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_675 : f32 = u_xlat52;
  u_xlat0.x = (-(x_675) + 1.0f);
  let x_680 : f32 = u_xlat0.x;
  let x_682 : f32 = u_xlat0.x;
  u_xlat52 = (x_680 * x_682);
  let x_684 : f32 = u_xlat52;
  u_xlat52 = max(x_684, 0.0078125f);
  let x_687 : f32 = u_xlat52;
  let x_688 : f32 = u_xlat52;
  u_xlat79 = (x_687 * x_688);
  let x_690 : f32 = u_xlat80;
  u_xlat80 = (x_690 + 1.0f);
  let x_692 : f32 = u_xlat80;
  u_xlat80 = clamp(x_692, 0.0f, 1.0f);
  let x_695 : f32 = u_xlat52;
  u_xlat81 = ((x_695 * 4.0f) + 2.0f);
  let x_699 : f32 = u_xlat26;
  u_xlat26 = min(x_699, 1.0f);
  let x_711 : f32 = x_709.x_MainLightShadowParams.y;
  u_xlatb82 = (0.0f < x_711);
  let x_713 : bool = u_xlatb82;
  if (x_713) {
    let x_717 : f32 = x_709.x_MainLightShadowParams.y;
    u_xlatb82 = (x_717 == 1.0f);
    let x_719 : bool = u_xlatb82;
    if (x_719) {
      let x_723 : vec4<f32> = vs_TEXCOORD8;
      let x_726 : vec4<f32> = x_709.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_723.x, x_723.y, x_723.x, x_723.y) + x_726);
      let x_730 : vec4<f32> = u_xlat6;
      let x_731 : vec2<f32> = vec2<f32>(x_730.x, x_730.y);
      let x_734 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_731.x, x_731.y, x_734);
      let x_746 : vec3<f32> = txVec0;
      let x_748 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_746.xy, x_746.z);
      u_xlat7.x = x_748;
      let x_751 : vec4<f32> = u_xlat6;
      let x_752 : vec2<f32> = vec2<f32>(x_751.z, x_751.w);
      let x_754 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_752.x, x_752.y, x_754);
      let x_761 : vec3<f32> = txVec1;
      let x_763 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_761.xy, x_761.z);
      u_xlat7.y = x_763;
      let x_765 : vec4<f32> = vs_TEXCOORD8;
      let x_768 : vec4<f32> = x_709.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_765.x, x_765.y, x_765.x, x_765.y) + x_768);
      let x_771 : vec4<f32> = u_xlat6;
      let x_772 : vec2<f32> = vec2<f32>(x_771.x, x_771.y);
      let x_774 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_772.x, x_772.y, x_774);
      let x_781 : vec3<f32> = txVec2;
      let x_783 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_781.xy, x_781.z);
      u_xlat7.z = x_783;
      let x_786 : vec4<f32> = u_xlat6;
      let x_787 : vec2<f32> = vec2<f32>(x_786.z, x_786.w);
      let x_789 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_787.x, x_787.y, x_789);
      let x_796 : vec3<f32> = txVec3;
      let x_798 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_796.xy, x_796.z);
      u_xlat7.w = x_798;
      let x_801 : vec4<f32> = u_xlat7;
      u_xlat82 = dot(x_801, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_808 : f32 = x_709.x_MainLightShadowParams.y;
      u_xlatb83 = (x_808 == 2.0f);
      let x_810 : bool = u_xlatb83;
      if (x_810) {
        let x_813 : vec4<f32> = vs_TEXCOORD8;
        let x_816 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_819 : vec2<f32> = ((vec2<f32>(x_813.x, x_813.y) * vec2<f32>(x_816.z, x_816.w)) + vec2<f32>(0.5f, 0.5f));
        let x_820 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_819.x, x_819.y, x_820.z, x_820.w);
        let x_822 : vec4<f32> = u_xlat6;
        let x_824 : vec2<f32> = floor(vec2<f32>(x_822.x, x_822.y));
        let x_825 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_824.x, x_824.y, x_825.z, x_825.w);
        let x_829 : vec4<f32> = vs_TEXCOORD8;
        let x_832 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_835 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_829.x, x_829.y) * vec2<f32>(x_832.z, x_832.w)) + -(vec2<f32>(x_835.x, x_835.y)));
        let x_839 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_839.x, x_839.x, x_839.y, x_839.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_843 : vec4<f32> = u_xlat7;
        let x_845 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_843.x, x_843.x, x_843.z, x_843.z) * vec4<f32>(x_845.x, x_845.x, x_845.z, x_845.z));
        let x_848 : vec4<f32> = u_xlat8;
        let x_852 : vec2<f32> = (vec2<f32>(x_848.y, x_848.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_853 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_852.x, x_853.y, x_852.y, x_853.w);
        let x_855 : vec4<f32> = u_xlat8;
        let x_858 : vec2<f32> = u_xlat58;
        let x_860 : vec2<f32> = ((vec2<f32>(x_855.x, x_855.z) * vec2<f32>(0.5f, 0.5f)) + -(x_858));
        let x_861 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_860.x, x_860.y, x_861.z, x_861.w);
        let x_864 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_864) + vec2<f32>(1.0f, 1.0f));
        let x_868 : vec2<f32> = u_xlat58;
        let x_870 : vec2<f32> = min(x_868, vec2<f32>(0.0f, 0.0f));
        let x_871 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_870.x, x_870.y, x_871.z, x_871.w);
        let x_873 : vec4<f32> = u_xlat9;
        let x_876 : vec4<f32> = u_xlat9;
        let x_879 : vec2<f32> = u_xlat60;
        let x_880 : vec2<f32> = ((-(vec2<f32>(x_873.x, x_873.y)) * vec2<f32>(x_876.x, x_876.y)) + x_879);
        let x_881 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_880.x, x_880.y, x_881.z, x_881.w);
        let x_883 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_883, vec2<f32>(0.0f, 0.0f));
        let x_885 : vec2<f32> = u_xlat58;
        let x_887 : vec2<f32> = u_xlat58;
        let x_889 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_885) * x_887) + vec2<f32>(x_889.y, x_889.w));
        let x_892 : vec4<f32> = u_xlat9;
        let x_894 : vec2<f32> = (vec2<f32>(x_892.x, x_892.y) + vec2<f32>(1.0f, 1.0f));
        let x_895 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_894.x, x_894.y, x_895.z, x_895.w);
        let x_897 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_897 + vec2<f32>(1.0f, 1.0f));
        let x_899 : vec4<f32> = u_xlat8;
        let x_903 : vec2<f32> = (vec2<f32>(x_899.x, x_899.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_904 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_903.x, x_903.y, x_904.z, x_904.w);
        let x_906 : vec2<f32> = u_xlat60;
        let x_907 : vec2<f32> = (x_906 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_908 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_907.x, x_907.y, x_908.z, x_908.w);
        let x_910 : vec4<f32> = u_xlat9;
        let x_912 : vec2<f32> = (vec2<f32>(x_910.x, x_910.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_913 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_912.x, x_912.y, x_913.z, x_913.w);
        let x_915 : vec2<f32> = u_xlat58;
        let x_916 : vec2<f32> = (x_915 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_917 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_916.x, x_916.y, x_917.z, x_917.w);
        let x_919 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_919.y, x_919.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_923 : f32 = u_xlat9.x;
        u_xlat10.z = x_923;
        let x_926 : f32 = u_xlat58.x;
        u_xlat10.w = x_926;
        let x_929 : f32 = u_xlat11.x;
        u_xlat8.z = x_929;
        let x_932 : f32 = u_xlat7.x;
        u_xlat8.w = x_932;
        let x_934 : vec4<f32> = u_xlat8;
        let x_936 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_934.z, x_934.w, x_934.x, x_934.z) + vec4<f32>(x_936.z, x_936.w, x_936.x, x_936.z));
        let x_940 : f32 = u_xlat10.y;
        u_xlat9.z = x_940;
        let x_943 : f32 = u_xlat58.y;
        u_xlat9.w = x_943;
        let x_946 : f32 = u_xlat8.y;
        u_xlat11.z = x_946;
        let x_949 : f32 = u_xlat7.z;
        u_xlat11.w = x_949;
        let x_951 : vec4<f32> = u_xlat9;
        let x_953 : vec4<f32> = u_xlat11;
        let x_955 : vec3<f32> = (vec3<f32>(x_951.z, x_951.y, x_951.w) + vec3<f32>(x_953.z, x_953.y, x_953.w));
        let x_956 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_955.x, x_955.y, x_955.z, x_956.w);
        let x_958 : vec4<f32> = u_xlat8;
        let x_960 : vec4<f32> = u_xlat12;
        let x_962 : vec3<f32> = (vec3<f32>(x_958.x, x_958.z, x_958.w) / vec3<f32>(x_960.z, x_960.w, x_960.y));
        let x_963 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_962.x, x_962.y, x_962.z, x_963.w);
        let x_965 : vec4<f32> = u_xlat8;
        let x_970 : vec3<f32> = (vec3<f32>(x_965.x, x_965.y, x_965.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_971 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_970.x, x_970.y, x_970.z, x_971.w);
        let x_973 : vec4<f32> = u_xlat11;
        let x_975 : vec4<f32> = u_xlat7;
        let x_977 : vec3<f32> = (vec3<f32>(x_973.z, x_973.y, x_973.w) / vec3<f32>(x_975.x, x_975.y, x_975.z));
        let x_978 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_977.x, x_977.y, x_977.z, x_978.w);
        let x_980 : vec4<f32> = u_xlat9;
        let x_982 : vec3<f32> = (vec3<f32>(x_980.x, x_980.y, x_980.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_983 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_982.x, x_982.y, x_982.z, x_983.w);
        let x_985 : vec4<f32> = u_xlat8;
        let x_988 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_990 : vec3<f32> = (vec3<f32>(x_985.y, x_985.x, x_985.z) * vec3<f32>(x_988.x, x_988.x, x_988.x));
        let x_991 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_990.x, x_990.y, x_990.z, x_991.w);
        let x_993 : vec4<f32> = u_xlat9;
        let x_996 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_998 : vec3<f32> = (vec3<f32>(x_993.x, x_993.y, x_993.z) * vec3<f32>(x_996.y, x_996.y, x_996.y));
        let x_999 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_998.x, x_998.y, x_998.z, x_999.w);
        let x_1002 : f32 = u_xlat9.x;
        u_xlat8.w = x_1002;
        let x_1004 : vec4<f32> = u_xlat6;
        let x_1007 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_1010 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1004.x, x_1004.y, x_1004.x, x_1004.y) * vec4<f32>(x_1007.x, x_1007.y, x_1007.x, x_1007.y)) + vec4<f32>(x_1010.y, x_1010.w, x_1010.x, x_1010.w));
        let x_1013 : vec4<f32> = u_xlat6;
        let x_1016 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_1019 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_1013.x, x_1013.y) * vec2<f32>(x_1016.x, x_1016.y)) + vec2<f32>(x_1019.z, x_1019.w));
        let x_1023 : f32 = u_xlat8.y;
        u_xlat9.w = x_1023;
        let x_1025 : vec4<f32> = u_xlat9;
        let x_1026 : vec2<f32> = vec2<f32>(x_1025.y, x_1025.z);
        let x_1027 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1027.x, x_1026.x, x_1027.z, x_1026.y);
        let x_1029 : vec4<f32> = u_xlat6;
        let x_1032 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_1035 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1029.x, x_1029.y, x_1029.x, x_1029.y) * vec4<f32>(x_1032.x, x_1032.y, x_1032.x, x_1032.y)) + vec4<f32>(x_1035.x, x_1035.y, x_1035.z, x_1035.y));
        let x_1038 : vec4<f32> = u_xlat6;
        let x_1041 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_1044 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1038.x, x_1038.y, x_1038.x, x_1038.y) * vec4<f32>(x_1041.x, x_1041.y, x_1041.x, x_1041.y)) + vec4<f32>(x_1044.w, x_1044.y, x_1044.w, x_1044.z));
        let x_1047 : vec4<f32> = u_xlat6;
        let x_1050 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_1053 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1047.x, x_1047.y, x_1047.x, x_1047.y) * vec4<f32>(x_1050.x, x_1050.y, x_1050.x, x_1050.y)) + vec4<f32>(x_1053.x, x_1053.w, x_1053.z, x_1053.w));
        let x_1056 : vec4<f32> = u_xlat7;
        let x_1058 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1056.x, x_1056.x, x_1056.x, x_1056.y) * vec4<f32>(x_1058.z, x_1058.w, x_1058.y, x_1058.z));
        let x_1062 : vec4<f32> = u_xlat7;
        let x_1064 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1062.y, x_1062.y, x_1062.z, x_1062.z) * x_1064);
        let x_1068 : f32 = u_xlat7.z;
        let x_1070 : f32 = u_xlat12.y;
        u_xlat83 = (x_1068 * x_1070);
        let x_1073 : vec4<f32> = u_xlat10;
        let x_1074 : vec2<f32> = vec2<f32>(x_1073.x, x_1073.y);
        let x_1076 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1074.x, x_1074.y, x_1076);
        let x_1083 : vec3<f32> = txVec4;
        let x_1085 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1083.xy, x_1083.z);
        u_xlat6.x = x_1085;
        let x_1088 : vec4<f32> = u_xlat10;
        let x_1089 : vec2<f32> = vec2<f32>(x_1088.z, x_1088.w);
        let x_1091 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1089.x, x_1089.y, x_1091);
        let x_1099 : vec3<f32> = txVec5;
        let x_1101 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1099.xy, x_1099.z);
        u_xlat32 = x_1101;
        let x_1102 : f32 = u_xlat32;
        let x_1104 : f32 = u_xlat13.y;
        u_xlat32 = (x_1102 * x_1104);
        let x_1107 : f32 = u_xlat13.x;
        let x_1109 : f32 = u_xlat6.x;
        let x_1111 : f32 = u_xlat32;
        u_xlat6.x = ((x_1107 * x_1109) + x_1111);
        let x_1115 : vec2<f32> = u_xlat58;
        let x_1117 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1115.x, x_1115.y, x_1117);
        let x_1124 : vec3<f32> = txVec6;
        let x_1126 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1124.xy, x_1124.z);
        u_xlat32 = x_1126;
        let x_1128 : f32 = u_xlat13.z;
        let x_1129 : f32 = u_xlat32;
        let x_1132 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1128 * x_1129) + x_1132);
        let x_1136 : vec4<f32> = u_xlat9;
        let x_1137 : vec2<f32> = vec2<f32>(x_1136.x, x_1136.y);
        let x_1139 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1137.x, x_1137.y, x_1139);
        let x_1146 : vec3<f32> = txVec7;
        let x_1148 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1146.xy, x_1146.z);
        u_xlat32 = x_1148;
        let x_1150 : f32 = u_xlat13.w;
        let x_1151 : f32 = u_xlat32;
        let x_1154 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1150 * x_1151) + x_1154);
        let x_1158 : vec4<f32> = u_xlat11;
        let x_1159 : vec2<f32> = vec2<f32>(x_1158.x, x_1158.y);
        let x_1161 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1159.x, x_1159.y, x_1161);
        let x_1168 : vec3<f32> = txVec8;
        let x_1170 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1168.xy, x_1168.z);
        u_xlat32 = x_1170;
        let x_1172 : f32 = u_xlat14.x;
        let x_1173 : f32 = u_xlat32;
        let x_1176 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1172 * x_1173) + x_1176);
        let x_1180 : vec4<f32> = u_xlat11;
        let x_1181 : vec2<f32> = vec2<f32>(x_1180.z, x_1180.w);
        let x_1183 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1181.x, x_1181.y, x_1183);
        let x_1190 : vec3<f32> = txVec9;
        let x_1192 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1190.xy, x_1190.z);
        u_xlat32 = x_1192;
        let x_1194 : f32 = u_xlat14.y;
        let x_1195 : f32 = u_xlat32;
        let x_1198 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1194 * x_1195) + x_1198);
        let x_1202 : vec4<f32> = u_xlat9;
        let x_1203 : vec2<f32> = vec2<f32>(x_1202.z, x_1202.w);
        let x_1205 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1203.x, x_1203.y, x_1205);
        let x_1212 : vec3<f32> = txVec10;
        let x_1214 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1212.xy, x_1212.z);
        u_xlat32 = x_1214;
        let x_1216 : f32 = u_xlat14.z;
        let x_1217 : f32 = u_xlat32;
        let x_1220 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1216 * x_1217) + x_1220);
        let x_1224 : vec4<f32> = u_xlat8;
        let x_1225 : vec2<f32> = vec2<f32>(x_1224.x, x_1224.y);
        let x_1227 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1225.x, x_1225.y, x_1227);
        let x_1234 : vec3<f32> = txVec11;
        let x_1236 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1234.xy, x_1234.z);
        u_xlat32 = x_1236;
        let x_1238 : f32 = u_xlat14.w;
        let x_1239 : f32 = u_xlat32;
        let x_1242 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1238 * x_1239) + x_1242);
        let x_1246 : vec4<f32> = u_xlat8;
        let x_1247 : vec2<f32> = vec2<f32>(x_1246.z, x_1246.w);
        let x_1249 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1247.x, x_1247.y, x_1249);
        let x_1256 : vec3<f32> = txVec12;
        let x_1258 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1256.xy, x_1256.z);
        u_xlat32 = x_1258;
        let x_1259 : f32 = u_xlat83;
        let x_1260 : f32 = u_xlat32;
        let x_1263 : f32 = u_xlat6.x;
        u_xlat82 = ((x_1259 * x_1260) + x_1263);
      } else {
        let x_1266 : vec4<f32> = vs_TEXCOORD8;
        let x_1269 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_1272 : vec2<f32> = ((vec2<f32>(x_1266.x, x_1266.y) * vec2<f32>(x_1269.z, x_1269.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1273 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1272.x, x_1272.y, x_1273.z, x_1273.w);
        let x_1275 : vec4<f32> = u_xlat6;
        let x_1277 : vec2<f32> = floor(vec2<f32>(x_1275.x, x_1275.y));
        let x_1278 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1277.x, x_1277.y, x_1278.z, x_1278.w);
        let x_1280 : vec4<f32> = vs_TEXCOORD8;
        let x_1283 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_1286 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1280.x, x_1280.y) * vec2<f32>(x_1283.z, x_1283.w)) + -(vec2<f32>(x_1286.x, x_1286.y)));
        let x_1290 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1290.x, x_1290.x, x_1290.y, x_1290.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1293 : vec4<f32> = u_xlat7;
        let x_1295 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1293.x, x_1293.x, x_1293.z, x_1293.z) * vec4<f32>(x_1295.x, x_1295.x, x_1295.z, x_1295.z));
        let x_1298 : vec4<f32> = u_xlat8;
        let x_1302 : vec2<f32> = (vec2<f32>(x_1298.y, x_1298.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1303 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1303.x, x_1302.x, x_1303.z, x_1302.y);
        let x_1305 : vec4<f32> = u_xlat8;
        let x_1308 : vec2<f32> = u_xlat58;
        let x_1310 : vec2<f32> = ((vec2<f32>(x_1305.x, x_1305.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1308));
        let x_1311 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1310.x, x_1311.y, x_1310.y, x_1311.w);
        let x_1313 : vec2<f32> = u_xlat58;
        let x_1315 : vec2<f32> = (-(x_1313) + vec2<f32>(1.0f, 1.0f));
        let x_1316 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1315.x, x_1315.y, x_1316.z, x_1316.w);
        let x_1318 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1318, vec2<f32>(0.0f, 0.0f));
        let x_1320 : vec2<f32> = u_xlat60;
        let x_1322 : vec2<f32> = u_xlat60;
        let x_1324 : vec4<f32> = u_xlat8;
        let x_1326 : vec2<f32> = ((-(x_1320) * x_1322) + vec2<f32>(x_1324.x, x_1324.y));
        let x_1327 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1326.x, x_1326.y, x_1327.z, x_1327.w);
        let x_1329 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1329, vec2<f32>(0.0f, 0.0f));
        let x_1332 : vec2<f32> = u_xlat60;
        let x_1334 : vec2<f32> = u_xlat60;
        let x_1336 : vec4<f32> = u_xlat7;
        let x_1338 : vec2<f32> = ((-(x_1332) * x_1334) + vec2<f32>(x_1336.y, x_1336.w));
        let x_1339 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1338.x, x_1339.y, x_1338.y);
        let x_1341 : vec4<f32> = u_xlat8;
        let x_1344 : vec2<f32> = (vec2<f32>(x_1341.x, x_1341.y) + vec2<f32>(2.0f, 2.0f));
        let x_1345 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1344.x, x_1344.y, x_1345.z, x_1345.w);
        let x_1347 : vec3<f32> = u_xlat33;
        let x_1349 : vec2<f32> = (vec2<f32>(x_1347.x, x_1347.z) + vec2<f32>(2.0f, 2.0f));
        let x_1350 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1350.x, x_1349.x, x_1350.z, x_1349.y);
        let x_1353 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1353 * 0.08163200318813323975f);
        let x_1357 : vec4<f32> = u_xlat7;
        let x_1360 : vec3<f32> = (vec3<f32>(x_1357.z, x_1357.x, x_1357.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1361 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1360.x, x_1360.y, x_1360.z, x_1361.w);
        let x_1363 : vec4<f32> = u_xlat8;
        let x_1366 : vec2<f32> = (vec2<f32>(x_1363.x, x_1363.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1367 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1366.x, x_1366.y, x_1367.z, x_1367.w);
        let x_1370 : f32 = u_xlat11.y;
        u_xlat10.x = x_1370;
        let x_1372 : vec2<f32> = u_xlat58;
        let x_1379 : vec2<f32> = ((vec2<f32>(x_1372.x, x_1372.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1380 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1380.x, x_1379.x, x_1380.z, x_1379.y);
        let x_1382 : vec2<f32> = u_xlat58;
        let x_1386 : vec2<f32> = ((vec2<f32>(x_1382.x, x_1382.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1387 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1386.x, x_1387.y, x_1386.y, x_1387.w);
        let x_1390 : f32 = u_xlat7.x;
        u_xlat8.y = x_1390;
        let x_1393 : f32 = u_xlat9.y;
        u_xlat8.w = x_1393;
        let x_1395 : vec4<f32> = u_xlat8;
        let x_1396 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1395 + x_1396);
        let x_1398 : vec2<f32> = u_xlat58;
        let x_1401 : vec2<f32> = ((vec2<f32>(x_1398.y, x_1398.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1402 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1402.x, x_1401.x, x_1402.z, x_1401.y);
        let x_1404 : vec2<f32> = u_xlat58;
        let x_1407 : vec2<f32> = ((vec2<f32>(x_1404.y, x_1404.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1408 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1407.x, x_1408.y, x_1407.y, x_1408.w);
        let x_1411 : f32 = u_xlat7.y;
        u_xlat9.y = x_1411;
        let x_1413 : vec4<f32> = u_xlat9;
        let x_1414 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1413 + x_1414);
        let x_1416 : vec4<f32> = u_xlat8;
        let x_1417 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1416 / x_1417);
        let x_1419 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1419 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1425 : vec4<f32> = u_xlat9;
        let x_1426 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1425 / x_1426);
        let x_1428 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1428 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1430 : vec4<f32> = u_xlat8;
        let x_1433 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1430.w, x_1430.x, x_1430.y, x_1430.z) * vec4<f32>(x_1433.x, x_1433.x, x_1433.x, x_1433.x));
        let x_1436 : vec4<f32> = u_xlat9;
        let x_1439 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1436.x, x_1436.w, x_1436.y, x_1436.z) * vec4<f32>(x_1439.y, x_1439.y, x_1439.y, x_1439.y));
        let x_1442 : vec4<f32> = u_xlat8;
        let x_1443 : vec3<f32> = vec3<f32>(x_1442.y, x_1442.z, x_1442.w);
        let x_1444 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1443.x, x_1444.y, x_1443.y, x_1443.z);
        let x_1447 : f32 = u_xlat9.x;
        u_xlat11.y = x_1447;
        let x_1449 : vec4<f32> = u_xlat6;
        let x_1452 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_1455 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1449.x, x_1449.y, x_1449.x, x_1449.y) * vec4<f32>(x_1452.x, x_1452.y, x_1452.x, x_1452.y)) + vec4<f32>(x_1455.x, x_1455.y, x_1455.z, x_1455.y));
        let x_1458 : vec4<f32> = u_xlat6;
        let x_1461 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_1464 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1458.x, x_1458.y) * vec2<f32>(x_1461.x, x_1461.y)) + vec2<f32>(x_1464.w, x_1464.y));
        let x_1468 : f32 = u_xlat11.y;
        u_xlat8.y = x_1468;
        let x_1471 : f32 = u_xlat9.z;
        u_xlat11.y = x_1471;
        let x_1473 : vec4<f32> = u_xlat6;
        let x_1476 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_1479 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1473.x, x_1473.y, x_1473.x, x_1473.y) * vec4<f32>(x_1476.x, x_1476.y, x_1476.x, x_1476.y)) + vec4<f32>(x_1479.x, x_1479.y, x_1479.z, x_1479.y));
        let x_1482 : vec4<f32> = u_xlat6;
        let x_1485 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_1488 : vec4<f32> = u_xlat11;
        let x_1490 : vec2<f32> = ((vec2<f32>(x_1482.x, x_1482.y) * vec2<f32>(x_1485.x, x_1485.y)) + vec2<f32>(x_1488.w, x_1488.y));
        let x_1491 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1490.x, x_1490.y, x_1491.z, x_1491.w);
        let x_1494 : f32 = u_xlat11.y;
        u_xlat8.z = x_1494;
        let x_1497 : vec4<f32> = u_xlat6;
        let x_1500 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_1503 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1497.x, x_1497.y, x_1497.x, x_1497.y) * vec4<f32>(x_1500.x, x_1500.y, x_1500.x, x_1500.y)) + vec4<f32>(x_1503.x, x_1503.y, x_1503.x, x_1503.z));
        let x_1507 : f32 = u_xlat9.w;
        u_xlat11.y = x_1507;
        let x_1510 : vec4<f32> = u_xlat6;
        let x_1513 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_1516 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1510.x, x_1510.y, x_1510.x, x_1510.y) * vec4<f32>(x_1513.x, x_1513.y, x_1513.x, x_1513.y)) + vec4<f32>(x_1516.x, x_1516.y, x_1516.z, x_1516.y));
        let x_1520 : vec4<f32> = u_xlat6;
        let x_1523 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_1526 : vec4<f32> = u_xlat11;
        u_xlat34 = ((vec2<f32>(x_1520.x, x_1520.y) * vec2<f32>(x_1523.x, x_1523.y)) + vec2<f32>(x_1526.w, x_1526.y));
        let x_1530 : f32 = u_xlat11.y;
        u_xlat8.w = x_1530;
        let x_1533 : vec4<f32> = u_xlat6;
        let x_1536 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_1539 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1533.x, x_1533.y) * vec2<f32>(x_1536.x, x_1536.y)) + vec2<f32>(x_1539.x, x_1539.w));
        let x_1542 : vec4<f32> = u_xlat11;
        let x_1543 : vec3<f32> = vec3<f32>(x_1542.x, x_1542.z, x_1542.w);
        let x_1544 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1543.x, x_1544.y, x_1543.y, x_1543.z);
        let x_1546 : vec4<f32> = u_xlat6;
        let x_1549 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_1552 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1546.x, x_1546.y, x_1546.x, x_1546.y) * vec4<f32>(x_1549.x, x_1549.y, x_1549.x, x_1549.y)) + vec4<f32>(x_1552.x, x_1552.y, x_1552.z, x_1552.y));
        let x_1556 : vec4<f32> = u_xlat6;
        let x_1559 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_1562 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1556.x, x_1556.y) * vec2<f32>(x_1559.x, x_1559.y)) + vec2<f32>(x_1562.w, x_1562.y));
        let x_1566 : f32 = u_xlat8.x;
        u_xlat9.x = x_1566;
        let x_1568 : vec4<f32> = u_xlat6;
        let x_1571 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_1574 : vec4<f32> = u_xlat9;
        let x_1576 : vec2<f32> = ((vec2<f32>(x_1568.x, x_1568.y) * vec2<f32>(x_1571.x, x_1571.y)) + vec2<f32>(x_1574.x, x_1574.y));
        let x_1577 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1576.x, x_1576.y, x_1577.z, x_1577.w);
        let x_1580 : vec4<f32> = u_xlat7;
        let x_1582 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1580.x, x_1580.x, x_1580.x, x_1580.x) * x_1582);
        let x_1585 : vec4<f32> = u_xlat7;
        let x_1587 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1585.y, x_1585.y, x_1585.y, x_1585.y) * x_1587);
        let x_1590 : vec4<f32> = u_xlat7;
        let x_1592 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1590.z, x_1590.z, x_1590.z, x_1590.z) * x_1592);
        let x_1594 : vec4<f32> = u_xlat7;
        let x_1596 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1594.w, x_1594.w, x_1594.w, x_1594.w) * x_1596);
        let x_1599 : vec4<f32> = u_xlat12;
        let x_1600 : vec2<f32> = vec2<f32>(x_1599.x, x_1599.y);
        let x_1602 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1600.x, x_1600.y, x_1602);
        let x_1609 : vec3<f32> = txVec13;
        let x_1611 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1609.xy, x_1609.z);
        u_xlat83 = x_1611;
        let x_1613 : vec4<f32> = u_xlat12;
        let x_1614 : vec2<f32> = vec2<f32>(x_1613.z, x_1613.w);
        let x_1616 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1614.x, x_1614.y, x_1616);
        let x_1623 : vec3<f32> = txVec14;
        let x_1625 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1623.xy, x_1623.z);
        u_xlat8.x = x_1625;
        let x_1628 : f32 = u_xlat8.x;
        let x_1630 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1628 * x_1630);
        let x_1634 : f32 = u_xlat17.x;
        let x_1635 : f32 = u_xlat83;
        let x_1638 : f32 = u_xlat8.x;
        u_xlat83 = ((x_1634 * x_1635) + x_1638);
        let x_1641 : vec2<f32> = u_xlat58;
        let x_1643 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1641.x, x_1641.y, x_1643);
        let x_1650 : vec3<f32> = txVec15;
        let x_1652 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1650.xy, x_1650.z);
        u_xlat58.x = x_1652;
        let x_1655 : f32 = u_xlat17.z;
        let x_1657 : f32 = u_xlat58.x;
        let x_1659 : f32 = u_xlat83;
        u_xlat83 = ((x_1655 * x_1657) + x_1659);
        let x_1662 : vec4<f32> = u_xlat15;
        let x_1663 : vec2<f32> = vec2<f32>(x_1662.x, x_1662.y);
        let x_1665 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1663.x, x_1663.y, x_1665);
        let x_1672 : vec3<f32> = txVec16;
        let x_1674 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1672.xy, x_1672.z);
        u_xlat58.x = x_1674;
        let x_1677 : f32 = u_xlat17.w;
        let x_1679 : f32 = u_xlat58.x;
        let x_1681 : f32 = u_xlat83;
        u_xlat83 = ((x_1677 * x_1679) + x_1681);
        let x_1684 : vec4<f32> = u_xlat13;
        let x_1685 : vec2<f32> = vec2<f32>(x_1684.x, x_1684.y);
        let x_1687 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1685.x, x_1685.y, x_1687);
        let x_1694 : vec3<f32> = txVec17;
        let x_1696 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1694.xy, x_1694.z);
        u_xlat58.x = x_1696;
        let x_1699 : f32 = u_xlat18.x;
        let x_1701 : f32 = u_xlat58.x;
        let x_1703 : f32 = u_xlat83;
        u_xlat83 = ((x_1699 * x_1701) + x_1703);
        let x_1706 : vec4<f32> = u_xlat13;
        let x_1707 : vec2<f32> = vec2<f32>(x_1706.z, x_1706.w);
        let x_1709 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1707.x, x_1707.y, x_1709);
        let x_1716 : vec3<f32> = txVec18;
        let x_1718 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1716.xy, x_1716.z);
        u_xlat58.x = x_1718;
        let x_1721 : f32 = u_xlat18.y;
        let x_1723 : f32 = u_xlat58.x;
        let x_1725 : f32 = u_xlat83;
        u_xlat83 = ((x_1721 * x_1723) + x_1725);
        let x_1728 : vec4<f32> = u_xlat14;
        let x_1729 : vec2<f32> = vec2<f32>(x_1728.x, x_1728.y);
        let x_1731 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1729.x, x_1729.y, x_1731);
        let x_1738 : vec3<f32> = txVec19;
        let x_1740 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1738.xy, x_1738.z);
        u_xlat58.x = x_1740;
        let x_1743 : f32 = u_xlat18.z;
        let x_1745 : f32 = u_xlat58.x;
        let x_1747 : f32 = u_xlat83;
        u_xlat83 = ((x_1743 * x_1745) + x_1747);
        let x_1750 : vec4<f32> = u_xlat15;
        let x_1751 : vec2<f32> = vec2<f32>(x_1750.z, x_1750.w);
        let x_1753 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1751.x, x_1751.y, x_1753);
        let x_1760 : vec3<f32> = txVec20;
        let x_1762 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1760.xy, x_1760.z);
        u_xlat58.x = x_1762;
        let x_1765 : f32 = u_xlat18.w;
        let x_1767 : f32 = u_xlat58.x;
        let x_1769 : f32 = u_xlat83;
        u_xlat83 = ((x_1765 * x_1767) + x_1769);
        let x_1772 : vec4<f32> = u_xlat16;
        let x_1773 : vec2<f32> = vec2<f32>(x_1772.x, x_1772.y);
        let x_1775 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1773.x, x_1773.y, x_1775);
        let x_1782 : vec3<f32> = txVec21;
        let x_1784 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1782.xy, x_1782.z);
        u_xlat58.x = x_1784;
        let x_1787 : f32 = u_xlat19.x;
        let x_1789 : f32 = u_xlat58.x;
        let x_1791 : f32 = u_xlat83;
        u_xlat83 = ((x_1787 * x_1789) + x_1791);
        let x_1794 : vec4<f32> = u_xlat16;
        let x_1795 : vec2<f32> = vec2<f32>(x_1794.z, x_1794.w);
        let x_1797 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1795.x, x_1795.y, x_1797);
        let x_1804 : vec3<f32> = txVec22;
        let x_1806 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1804.xy, x_1804.z);
        u_xlat58.x = x_1806;
        let x_1809 : f32 = u_xlat19.y;
        let x_1811 : f32 = u_xlat58.x;
        let x_1813 : f32 = u_xlat83;
        u_xlat83 = ((x_1809 * x_1811) + x_1813);
        let x_1816 : vec2<f32> = u_xlat34;
        let x_1818 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1816.x, x_1816.y, x_1818);
        let x_1825 : vec3<f32> = txVec23;
        let x_1827 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1825.xy, x_1825.z);
        u_xlat58.x = x_1827;
        let x_1830 : f32 = u_xlat19.z;
        let x_1832 : f32 = u_xlat58.x;
        let x_1834 : f32 = u_xlat83;
        u_xlat83 = ((x_1830 * x_1832) + x_1834);
        let x_1837 : vec2<f32> = u_xlat66;
        let x_1839 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1837.x, x_1837.y, x_1839);
        let x_1846 : vec3<f32> = txVec24;
        let x_1848 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1846.xy, x_1846.z);
        u_xlat58.x = x_1848;
        let x_1851 : f32 = u_xlat19.w;
        let x_1853 : f32 = u_xlat58.x;
        let x_1855 : f32 = u_xlat83;
        u_xlat83 = ((x_1851 * x_1853) + x_1855);
        let x_1858 : vec4<f32> = u_xlat11;
        let x_1859 : vec2<f32> = vec2<f32>(x_1858.x, x_1858.y);
        let x_1861 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1859.x, x_1859.y, x_1861);
        let x_1868 : vec3<f32> = txVec25;
        let x_1870 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1868.xy, x_1868.z);
        u_xlat58.x = x_1870;
        let x_1873 : f32 = u_xlat7.x;
        let x_1875 : f32 = u_xlat58.x;
        let x_1877 : f32 = u_xlat83;
        u_xlat83 = ((x_1873 * x_1875) + x_1877);
        let x_1880 : vec4<f32> = u_xlat11;
        let x_1881 : vec2<f32> = vec2<f32>(x_1880.z, x_1880.w);
        let x_1883 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1881.x, x_1881.y, x_1883);
        let x_1890 : vec3<f32> = txVec26;
        let x_1892 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1890.xy, x_1890.z);
        u_xlat58.x = x_1892;
        let x_1895 : f32 = u_xlat7.y;
        let x_1897 : f32 = u_xlat58.x;
        let x_1899 : f32 = u_xlat83;
        u_xlat83 = ((x_1895 * x_1897) + x_1899);
        let x_1902 : vec2<f32> = u_xlat61;
        let x_1904 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1902.x, x_1902.y, x_1904);
        let x_1911 : vec3<f32> = txVec27;
        let x_1913 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1911.xy, x_1911.z);
        u_xlat58.x = x_1913;
        let x_1916 : f32 = u_xlat7.z;
        let x_1918 : f32 = u_xlat58.x;
        let x_1920 : f32 = u_xlat83;
        u_xlat83 = ((x_1916 * x_1918) + x_1920);
        let x_1923 : vec4<f32> = u_xlat6;
        let x_1924 : vec2<f32> = vec2<f32>(x_1923.x, x_1923.y);
        let x_1926 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1924.x, x_1924.y, x_1926);
        let x_1933 : vec3<f32> = txVec28;
        let x_1935 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1933.xy, x_1933.z);
        u_xlat6.x = x_1935;
        let x_1938 : f32 = u_xlat7.w;
        let x_1940 : f32 = u_xlat6.x;
        let x_1942 : f32 = u_xlat83;
        u_xlat82 = ((x_1938 * x_1940) + x_1942);
      }
    }
  } else {
    let x_1946 : vec4<f32> = vs_TEXCOORD8;
    let x_1947 : vec2<f32> = vec2<f32>(x_1946.x, x_1946.y);
    let x_1949 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1947.x, x_1947.y, x_1949);
    let x_1956 : vec3<f32> = txVec29;
    let x_1958 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1956.xy, x_1956.z);
    u_xlat82 = x_1958;
  }
  let x_1960 : f32 = x_709.x_MainLightShadowParams.x;
  u_xlat83 = (-(x_1960) + 1.0f);
  let x_1963 : f32 = u_xlat82;
  let x_1965 : f32 = x_709.x_MainLightShadowParams.x;
  let x_1967 : f32 = u_xlat83;
  u_xlat82 = ((x_1963 * x_1965) + x_1967);
  let x_1970 : f32 = vs_TEXCOORD8.z;
  u_xlatb83 = (0.0f >= x_1970);
  let x_1974 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (x_1974 >= 1.0f);
  let x_1976 : bool = u_xlatb83;
  let x_1977 : bool = u_xlatb6;
  u_xlatb83 = (x_1976 | x_1977);
  let x_1979 : bool = u_xlatb83;
  let x_1980 : f32 = u_xlat82;
  u_xlat82 = select(x_1980, 1.0f, x_1979);
  let x_1982 : vec3<f32> = vs_TEXCOORD7;
  let x_1984 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_1986 : vec3<f32> = (x_1982 + -(x_1984));
  let x_1987 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1986.x, x_1986.y, x_1986.z, x_1987.w);
  let x_1989 : vec4<f32> = u_xlat6;
  let x_1991 : vec4<f32> = u_xlat6;
  u_xlat83 = dot(vec3<f32>(x_1989.x, x_1989.y, x_1989.z), vec3<f32>(x_1991.x, x_1991.y, x_1991.z));
  let x_1994 : f32 = u_xlat83;
  let x_1996 : f32 = x_709.x_MainLightShadowParams.z;
  let x_1999 : f32 = x_709.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_1994 * x_1996) + x_1999);
  let x_2003 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_2003, 0.0f, 1.0f);
  let x_2006 : f32 = u_xlat82;
  u_xlat32 = (-(x_2006) + 1.0f);
  let x_2010 : f32 = u_xlat6.x;
  let x_2011 : f32 = u_xlat32;
  let x_2013 : f32 = u_xlat82;
  u_xlat82 = ((x_2010 * x_2011) + x_2013);
  let x_2022 : f32 = x_2020.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_2022 == -1.0f));
  let x_2024 : bool = u_xlatb6;
  if (x_2024) {
    let x_2027 : vec3<f32> = vs_TEXCOORD7;
    let x_2030 : vec4<f32> = x_2020.x_MainLightWorldToLight[1i];
    let x_2032 : vec2<f32> = (vec2<f32>(x_2027.y, x_2027.y) * vec2<f32>(x_2030.x, x_2030.y));
    let x_2033 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2032.x, x_2032.y, x_2033.z, x_2033.w);
    let x_2036 : vec4<f32> = x_2020.x_MainLightWorldToLight[0i];
    let x_2038 : vec3<f32> = vs_TEXCOORD7;
    let x_2041 : vec4<f32> = u_xlat6;
    let x_2043 : vec2<f32> = ((vec2<f32>(x_2036.x, x_2036.y) * vec2<f32>(x_2038.x, x_2038.x)) + vec2<f32>(x_2041.x, x_2041.y));
    let x_2044 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2043.x, x_2043.y, x_2044.z, x_2044.w);
    let x_2047 : vec4<f32> = x_2020.x_MainLightWorldToLight[2i];
    let x_2049 : vec3<f32> = vs_TEXCOORD7;
    let x_2052 : vec4<f32> = u_xlat6;
    let x_2054 : vec2<f32> = ((vec2<f32>(x_2047.x, x_2047.y) * vec2<f32>(x_2049.z, x_2049.z)) + vec2<f32>(x_2052.x, x_2052.y));
    let x_2055 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2054.x, x_2054.y, x_2055.z, x_2055.w);
    let x_2057 : vec4<f32> = u_xlat6;
    let x_2061 : vec4<f32> = x_2020.x_MainLightWorldToLight[3i];
    let x_2063 : vec2<f32> = (vec2<f32>(x_2057.x, x_2057.y) + vec2<f32>(x_2061.x, x_2061.y));
    let x_2064 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2063.x, x_2063.y, x_2064.z, x_2064.w);
    let x_2066 : vec4<f32> = u_xlat6;
    let x_2069 : vec2<f32> = ((vec2<f32>(x_2066.x, x_2066.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2070 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2069.x, x_2069.y, x_2070.z, x_2070.w);
    let x_2077 : vec4<f32> = u_xlat6;
    let x_2080 : f32 = x_111.x_GlobalMipBias.x;
    let x_2081 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2077.x, x_2077.y), x_2080);
    u_xlat6 = x_2081;
    let x_2086 : f32 = x_2020.x_MainLightCookieTextureFormat;
    let x_2088 : f32 = x_2020.x_MainLightCookieTextureFormat;
    let x_2090 : f32 = x_2020.x_MainLightCookieTextureFormat;
    let x_2092 : f32 = x_2020.x_MainLightCookieTextureFormat;
    let x_2093 : vec4<f32> = vec4<f32>(x_2086, x_2088, x_2090, x_2092);
    let x_2100 : vec4<bool> = (vec4<f32>(x_2093.x, x_2093.y, x_2093.z, x_2093.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2100.x, x_2100.y);
    let x_2104 : bool = u_xlatb7.y;
    if (x_2104) {
      let x_2109 : f32 = u_xlat6.w;
      x_2105 = x_2109;
    } else {
      let x_2112 : f32 = u_xlat6.x;
      x_2105 = x_2112;
    }
    let x_2113 : f32 = x_2105;
    u_xlat84 = x_2113;
    let x_2115 : bool = u_xlatb7.x;
    if (x_2115) {
      let x_2119 : vec4<f32> = u_xlat6;
      x_2116 = vec3<f32>(x_2119.x, x_2119.y, x_2119.z);
    } else {
      let x_2122 : f32 = u_xlat84;
      x_2116 = vec3<f32>(x_2122, x_2122, x_2122);
    }
    let x_2124 : vec3<f32> = x_2116;
    let x_2125 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2124.x, x_2124.y, x_2124.z, x_2125.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2131 : vec4<f32> = u_xlat6;
  let x_2134 : vec4<f32> = x_111.x_MainLightColor;
  let x_2136 : vec3<f32> = (vec3<f32>(x_2131.x, x_2131.y, x_2131.z) * vec3<f32>(x_2134.x, x_2134.y, x_2134.z));
  let x_2137 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2136.x, x_2136.y, x_2136.z, x_2137.w);
  let x_2139 : vec3<f32> = u_xlat2;
  let x_2141 : vec4<f32> = u_xlat1;
  u_xlat84 = dot(-(x_2139), vec3<f32>(x_2141.x, x_2141.y, x_2141.z));
  let x_2144 : f32 = u_xlat84;
  let x_2145 : f32 = u_xlat84;
  u_xlat84 = (x_2144 + x_2145);
  let x_2147 : vec4<f32> = u_xlat1;
  let x_2149 : f32 = u_xlat84;
  let x_2153 : vec3<f32> = u_xlat2;
  let x_2155 : vec3<f32> = ((vec3<f32>(x_2147.x, x_2147.y, x_2147.z) * -(vec3<f32>(x_2149, x_2149, x_2149))) + -(x_2153));
  let x_2156 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2155.x, x_2155.y, x_2155.z, x_2156.w);
  let x_2158 : vec4<f32> = u_xlat1;
  let x_2160 : vec3<f32> = u_xlat2;
  u_xlat84 = dot(vec3<f32>(x_2158.x, x_2158.y, x_2158.z), x_2160);
  let x_2162 : f32 = u_xlat84;
  u_xlat84 = clamp(x_2162, 0.0f, 1.0f);
  let x_2164 : f32 = u_xlat84;
  u_xlat84 = (-(x_2164) + 1.0f);
  let x_2167 : f32 = u_xlat84;
  let x_2168 : f32 = u_xlat84;
  u_xlat84 = (x_2167 * x_2168);
  let x_2170 : f32 = u_xlat84;
  let x_2171 : f32 = u_xlat84;
  u_xlat84 = (x_2170 * x_2171);
  let x_2175 : f32 = u_xlat0.x;
  u_xlat85 = ((-(x_2175) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2182 : f32 = u_xlat0.x;
  let x_2183 : f32 = u_xlat85;
  u_xlat0.x = (x_2182 * x_2183);
  let x_2187 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2187 * 6.0f);
  let x_2199 : vec4<f32> = u_xlat7;
  let x_2202 : f32 = u_xlat0.x;
  let x_2203 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2199.x, x_2199.y, x_2199.z), x_2202);
  u_xlat7 = x_2203;
  let x_2205 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2205 + -1.0f);
  let x_2213 : f32 = x_2211.unity_SpecCube0_HDR.w;
  let x_2215 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2213 * x_2215) + 1.0f);
  let x_2220 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2220, 0.0f);
  let x_2224 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2224);
  let x_2228 : f32 = u_xlat0.x;
  let x_2230 : f32 = x_2211.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2228 * x_2230);
  let x_2234 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2234);
  let x_2238 : f32 = u_xlat0.x;
  let x_2240 : f32 = x_2211.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2238 * x_2240);
  let x_2243 : vec4<f32> = u_xlat7;
  let x_2245 : vec3<f32> = u_xlat0;
  let x_2247 : vec3<f32> = (vec3<f32>(x_2243.x, x_2243.y, x_2243.z) * vec3<f32>(x_2245.x, x_2245.x, x_2245.x));
  let x_2248 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2247.x, x_2247.y, x_2247.z, x_2248.w);
  let x_2250 : f32 = u_xlat52;
  let x_2252 : f32 = u_xlat52;
  let x_2256 : vec2<f32> = ((vec2<f32>(x_2250, x_2250) * vec2<f32>(x_2252, x_2252)) + vec2<f32>(-1.0f, 1.0f));
  let x_2257 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2256.x, x_2257.y, x_2256.y);
  let x_2260 : f32 = u_xlat0.z;
  u_xlat52 = (1.0f / x_2260);
  let x_2262 : vec4<f32> = u_xlat5;
  let x_2265 : f32 = u_xlat80;
  let x_2267 : vec3<f32> = (-(vec3<f32>(x_2262.x, x_2262.y, x_2262.z)) + vec3<f32>(x_2265, x_2265, x_2265));
  let x_2268 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2267.x, x_2267.y, x_2267.z, x_2268.w);
  let x_2270 : f32 = u_xlat84;
  let x_2272 : vec4<f32> = u_xlat8;
  let x_2275 : vec4<f32> = u_xlat5;
  let x_2277 : vec3<f32> = ((vec3<f32>(x_2270, x_2270, x_2270) * vec3<f32>(x_2272.x, x_2272.y, x_2272.z)) + vec3<f32>(x_2275.x, x_2275.y, x_2275.z));
  let x_2278 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2277.x, x_2277.y, x_2277.z, x_2278.w);
  let x_2280 : f32 = u_xlat52;
  let x_2282 : vec4<f32> = u_xlat8;
  let x_2284 : vec3<f32> = (vec3<f32>(x_2280, x_2280, x_2280) * vec3<f32>(x_2282.x, x_2282.y, x_2282.z));
  let x_2285 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2284.x, x_2284.y, x_2284.z, x_2285.w);
  let x_2287 : vec4<f32> = u_xlat7;
  let x_2289 : vec4<f32> = u_xlat8;
  let x_2291 : vec3<f32> = (vec3<f32>(x_2287.x, x_2287.y, x_2287.z) * vec3<f32>(x_2289.x, x_2289.y, x_2289.z));
  let x_2292 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2291.x, x_2291.y, x_2291.z, x_2292.w);
  let x_2294 : vec4<f32> = u_xlat3;
  let x_2296 : vec4<f32> = u_xlat4;
  let x_2299 : vec4<f32> = u_xlat7;
  let x_2301 : vec3<f32> = ((vec3<f32>(x_2294.x, x_2294.y, x_2294.z) * vec3<f32>(x_2296.x, x_2296.y, x_2296.z)) + vec3<f32>(x_2299.x, x_2299.y, x_2299.z));
  let x_2302 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2301.x, x_2301.y, x_2301.z, x_2302.w);
  let x_2304 : f32 = u_xlat82;
  let x_2306 : f32 = x_2211.unity_LightData.z;
  u_xlat52 = (x_2304 * x_2306);
  let x_2308 : vec4<f32> = u_xlat1;
  let x_2311 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat80 = dot(vec3<f32>(x_2308.x, x_2308.y, x_2308.z), vec3<f32>(x_2311.x, x_2311.y, x_2311.z));
  let x_2314 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2314, 0.0f, 1.0f);
  let x_2316 : f32 = u_xlat52;
  let x_2317 : f32 = u_xlat80;
  u_xlat52 = (x_2316 * x_2317);
  let x_2319 : f32 = u_xlat52;
  let x_2321 : vec4<f32> = u_xlat6;
  let x_2323 : vec3<f32> = (vec3<f32>(x_2319, x_2319, x_2319) * vec3<f32>(x_2321.x, x_2321.y, x_2321.z));
  let x_2324 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2323.x, x_2323.y, x_2323.z, x_2324.w);
  let x_2326 : vec3<f32> = u_xlat2;
  let x_2328 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2330 : vec3<f32> = (x_2326 + vec3<f32>(x_2328.x, x_2328.y, x_2328.z));
  let x_2331 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2330.x, x_2330.y, x_2330.z, x_2331.w);
  let x_2333 : vec4<f32> = u_xlat7;
  let x_2335 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(vec3<f32>(x_2333.x, x_2333.y, x_2333.z), vec3<f32>(x_2335.x, x_2335.y, x_2335.z));
  let x_2338 : f32 = u_xlat52;
  u_xlat52 = max(x_2338, 1.17549435e-38f);
  let x_2341 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_2341);
  let x_2343 : f32 = u_xlat52;
  let x_2345 : vec4<f32> = u_xlat7;
  let x_2347 : vec3<f32> = (vec3<f32>(x_2343, x_2343, x_2343) * vec3<f32>(x_2345.x, x_2345.y, x_2345.z));
  let x_2348 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2347.x, x_2347.y, x_2347.z, x_2348.w);
  let x_2350 : vec4<f32> = u_xlat1;
  let x_2352 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(vec3<f32>(x_2350.x, x_2350.y, x_2350.z), vec3<f32>(x_2352.x, x_2352.y, x_2352.z));
  let x_2355 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2355, 0.0f, 1.0f);
  let x_2358 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2360 : vec4<f32> = u_xlat7;
  u_xlat80 = dot(vec3<f32>(x_2358.x, x_2358.y, x_2358.z), vec3<f32>(x_2360.x, x_2360.y, x_2360.z));
  let x_2363 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2363, 0.0f, 1.0f);
  let x_2365 : f32 = u_xlat52;
  let x_2366 : f32 = u_xlat52;
  u_xlat52 = (x_2365 * x_2366);
  let x_2368 : f32 = u_xlat52;
  let x_2370 : f32 = u_xlat0.x;
  u_xlat52 = ((x_2368 * x_2370) + 1.00001001358032226562f);
  let x_2374 : f32 = u_xlat80;
  let x_2375 : f32 = u_xlat80;
  u_xlat80 = (x_2374 * x_2375);
  let x_2377 : f32 = u_xlat52;
  let x_2378 : f32 = u_xlat52;
  u_xlat52 = (x_2377 * x_2378);
  let x_2380 : f32 = u_xlat80;
  u_xlat80 = max(x_2380, 0.10000000149011611938f);
  let x_2383 : f32 = u_xlat52;
  let x_2384 : f32 = u_xlat80;
  u_xlat52 = (x_2383 * x_2384);
  let x_2386 : f32 = u_xlat81;
  let x_2387 : f32 = u_xlat52;
  u_xlat52 = (x_2386 * x_2387);
  let x_2389 : f32 = u_xlat79;
  let x_2390 : f32 = u_xlat52;
  u_xlat52 = (x_2389 / x_2390);
  let x_2392 : vec4<f32> = u_xlat5;
  let x_2394 : f32 = u_xlat52;
  let x_2397 : vec4<f32> = u_xlat4;
  let x_2399 : vec3<f32> = ((vec3<f32>(x_2392.x, x_2392.y, x_2392.z) * vec3<f32>(x_2394, x_2394, x_2394)) + vec3<f32>(x_2397.x, x_2397.y, x_2397.z));
  let x_2400 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2399.x, x_2399.y, x_2399.z, x_2400.w);
  let x_2402 : vec4<f32> = u_xlat6;
  let x_2404 : vec4<f32> = u_xlat7;
  let x_2406 : vec3<f32> = (vec3<f32>(x_2402.x, x_2402.y, x_2402.z) * vec3<f32>(x_2404.x, x_2404.y, x_2404.z));
  let x_2407 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2406.x, x_2406.y, x_2406.z, x_2407.w);
  let x_2410 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_2412 : f32 = x_2211.unity_LightData.y;
  u_xlat52 = min(x_2410, x_2412);
  let x_2416 : f32 = u_xlat52;
  u_xlatu52 = bitcast<u32>(i32(x_2416));
  let x_2419 : f32 = u_xlat83;
  let x_2421 : f32 = x_709.x_AdditionalShadowFadeParams.x;
  let x_2424 : f32 = x_709.x_AdditionalShadowFadeParams.y;
  u_xlat80 = ((x_2419 * x_2421) + x_2424);
  let x_2426 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2426, 0.0f, 1.0f);
  let x_2429 : f32 = x_2020.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2431 : f32 = x_2020.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2433 : f32 = x_2020.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2435 : f32 = x_2020.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2436 : vec4<f32> = vec4<f32>(x_2429, x_2431, x_2433, x_2435);
  let x_2442 : vec4<bool> = (vec4<f32>(x_2436.x, x_2436.y, x_2436.z, x_2436.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2442.x, x_2442.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2454 : u32 = u_xlatu_loop_1;
    let x_2455 : u32 = u_xlatu52;
    if ((x_2454 < x_2455)) {
    } else {
      break;
    }
    let x_2458 : u32 = u_xlatu_loop_1;
    u_xlatu83 = (x_2458 >> 2u);
    let x_2462 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2462 & 3u));
    let x_2465 : u32 = u_xlatu83;
    let x_2468 : vec4<f32> = x_2211.unity_LightIndices[bitcast<i32>(x_2465)];
    let x_2478 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2483 : vec4<u32> = indexable[x_2478];
    u_xlat83 = dot(x_2468, bitcast<vec4<f32>>(x_2483));
    let x_2487 : f32 = u_xlat83;
    u_xlati83 = i32(x_2487);
    let x_2489 : vec3<f32> = vs_TEXCOORD7;
    let x_2500 : i32 = u_xlati83;
    let x_2502 : vec4<f32> = x_2499.x_AdditionalLightsPosition[x_2500];
    let x_2505 : i32 = u_xlati83;
    let x_2507 : vec4<f32> = x_2499.x_AdditionalLightsPosition[x_2505];
    let x_2509 : vec3<f32> = ((-(x_2489) * vec3<f32>(x_2502.w, x_2502.w, x_2502.w)) + vec3<f32>(x_2507.x, x_2507.y, x_2507.z));
    let x_2510 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2509.x, x_2509.y, x_2509.z, x_2510.w);
    let x_2512 : vec4<f32> = u_xlat9;
    let x_2514 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2512.x, x_2512.y, x_2512.z), vec3<f32>(x_2514.x, x_2514.y, x_2514.z));
    let x_2517 : f32 = u_xlat84;
    u_xlat84 = max(x_2517, 0.00006103515625f);
    let x_2520 : f32 = u_xlat84;
    u_xlat59 = inverseSqrt(x_2520);
    let x_2522 : f32 = u_xlat59;
    let x_2524 : vec4<f32> = u_xlat9;
    let x_2526 : vec3<f32> = (vec3<f32>(x_2522, x_2522, x_2522) * vec3<f32>(x_2524.x, x_2524.y, x_2524.z));
    let x_2527 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2526.x, x_2526.y, x_2526.z, x_2527.w);
    let x_2529 : f32 = u_xlat84;
    u_xlat85 = (1.0f / x_2529);
    let x_2531 : f32 = u_xlat84;
    let x_2532 : i32 = u_xlati83;
    let x_2534 : f32 = x_2499.x_AdditionalLightsAttenuation[x_2532].x;
    u_xlat84 = (x_2531 * x_2534);
    let x_2536 : f32 = u_xlat84;
    let x_2538 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2536) * x_2538) + 1.0f);
    let x_2541 : f32 = u_xlat84;
    u_xlat84 = max(x_2541, 0.0f);
    let x_2543 : f32 = u_xlat84;
    let x_2544 : f32 = u_xlat84;
    u_xlat84 = (x_2543 * x_2544);
    let x_2546 : f32 = u_xlat84;
    let x_2547 : f32 = u_xlat85;
    u_xlat84 = (x_2546 * x_2547);
    let x_2549 : i32 = u_xlati83;
    let x_2551 : vec4<f32> = x_2499.x_AdditionalLightsSpotDir[x_2549];
    let x_2553 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_2551.x, x_2551.y, x_2551.z), vec3<f32>(x_2553.x, x_2553.y, x_2553.z));
    let x_2556 : f32 = u_xlat85;
    let x_2557 : i32 = u_xlati83;
    let x_2559 : f32 = x_2499.x_AdditionalLightsAttenuation[x_2557].z;
    let x_2561 : i32 = u_xlati83;
    let x_2563 : f32 = x_2499.x_AdditionalLightsAttenuation[x_2561].w;
    u_xlat85 = ((x_2556 * x_2559) + x_2563);
    let x_2565 : f32 = u_xlat85;
    u_xlat85 = clamp(x_2565, 0.0f, 1.0f);
    let x_2567 : f32 = u_xlat85;
    let x_2568 : f32 = u_xlat85;
    u_xlat85 = (x_2567 * x_2568);
    let x_2570 : f32 = u_xlat84;
    let x_2571 : f32 = u_xlat85;
    u_xlat84 = (x_2570 * x_2571);
    let x_2574 : i32 = u_xlati83;
    let x_2576 : f32 = x_709.x_AdditionalShadowParams[x_2574].w;
    u_xlati85 = i32(x_2576);
    let x_2579 : i32 = u_xlati85;
    u_xlatb86 = (x_2579 >= 0i);
    let x_2581 : bool = u_xlatb86;
    if (x_2581) {
      let x_2585 : i32 = u_xlati83;
      let x_2587 : f32 = x_709.x_AdditionalShadowParams[x_2585].z;
      u_xlatb86 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2587, x_2587, x_2587, x_2587))));
      let x_2591 : bool = u_xlatb86;
      if (x_2591) {
        let x_2596 : vec4<f32> = u_xlat10;
        let x_2599 : vec4<f32> = u_xlat10;
        let x_2602 : vec4<bool> = (abs(vec4<f32>(x_2596.z, x_2596.z, x_2596.y, x_2596.z)) >= abs(vec4<f32>(x_2599.x, x_2599.y, x_2599.x, x_2599.x)));
        let x_2604 : vec3<bool> = vec3<bool>(x_2602.x, x_2602.y, x_2602.z);
        let x_2605 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2604.x, x_2604.y, x_2604.z, x_2605.w);
        let x_2608 : bool = u_xlatb11.y;
        let x_2610 : bool = u_xlatb11.x;
        u_xlatb86 = (x_2608 & x_2610);
        let x_2612 : vec4<f32> = u_xlat10;
        let x_2615 : vec4<bool> = (-(vec4<f32>(x_2612.z, x_2612.y, x_2612.z, x_2612.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2616 : vec3<bool> = vec3<bool>(x_2615.x, x_2615.y, x_2615.w);
        let x_2617 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2616.x, x_2616.y, x_2617.z, x_2616.z);
        let x_2620 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2620);
        let x_2625 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2625);
        let x_2631 : bool = u_xlatb11.w;
        u_xlat87 = select(0.0f, 1.0f, x_2631);
        let x_2634 : bool = u_xlatb11.z;
        if (x_2634) {
          let x_2639 : f32 = u_xlat11.y;
          x_2635 = x_2639;
        } else {
          let x_2641 : f32 = u_xlat87;
          x_2635 = x_2641;
        }
        let x_2642 : f32 = x_2635;
        u_xlat87 = x_2642;
        let x_2644 : bool = u_xlatb86;
        if (x_2644) {
          let x_2649 : f32 = u_xlat11.x;
          x_2645 = x_2649;
        } else {
          let x_2651 : f32 = u_xlat87;
          x_2645 = x_2651;
        }
        let x_2652 : f32 = x_2645;
        u_xlat86 = x_2652;
        let x_2653 : i32 = u_xlati83;
        let x_2655 : f32 = x_709.x_AdditionalShadowParams[x_2653].w;
        u_xlat87 = trunc(x_2655);
        let x_2657 : f32 = u_xlat86;
        let x_2658 : f32 = u_xlat87;
        u_xlat86 = (x_2657 + x_2658);
        let x_2660 : f32 = u_xlat86;
        u_xlati85 = i32(x_2660);
      }
      let x_2662 : i32 = u_xlati85;
      u_xlati85 = (x_2662 << bitcast<u32>(2i));
      let x_2664 : vec3<f32> = vs_TEXCOORD7;
      let x_2666 : i32 = u_xlati85;
      let x_2669 : i32 = u_xlati85;
      let x_2673 : vec4<f32> = x_709.x_AdditionalLightsWorldToShadow[((x_2666 + 1i) / 4i)][((x_2669 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2664.y, x_2664.y, x_2664.y, x_2664.y) * x_2673);
      let x_2675 : i32 = u_xlati85;
      let x_2677 : i32 = u_xlati85;
      let x_2680 : vec4<f32> = x_709.x_AdditionalLightsWorldToShadow[(x_2675 / 4i)][(x_2677 % 4i)];
      let x_2681 : vec3<f32> = vs_TEXCOORD7;
      let x_2684 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2680 * vec4<f32>(x_2681.x, x_2681.x, x_2681.x, x_2681.x)) + x_2684);
      let x_2686 : i32 = u_xlati85;
      let x_2689 : i32 = u_xlati85;
      let x_2693 : vec4<f32> = x_709.x_AdditionalLightsWorldToShadow[((x_2686 + 2i) / 4i)][((x_2689 + 2i) % 4i)];
      let x_2694 : vec3<f32> = vs_TEXCOORD7;
      let x_2697 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2693 * vec4<f32>(x_2694.z, x_2694.z, x_2694.z, x_2694.z)) + x_2697);
      let x_2699 : vec4<f32> = u_xlat11;
      let x_2700 : i32 = u_xlati85;
      let x_2703 : i32 = u_xlati85;
      let x_2707 : vec4<f32> = x_709.x_AdditionalLightsWorldToShadow[((x_2700 + 3i) / 4i)][((x_2703 + 3i) % 4i)];
      u_xlat11 = (x_2699 + x_2707);
      let x_2709 : vec4<f32> = u_xlat11;
      let x_2711 : vec4<f32> = u_xlat11;
      let x_2713 : vec3<f32> = (vec3<f32>(x_2709.x, x_2709.y, x_2709.z) / vec3<f32>(x_2711.w, x_2711.w, x_2711.w));
      let x_2714 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2713.x, x_2713.y, x_2713.z, x_2714.w);
      let x_2717 : i32 = u_xlati83;
      let x_2719 : f32 = x_709.x_AdditionalShadowParams[x_2717].y;
      u_xlatb85 = (0.0f < x_2719);
      let x_2721 : bool = u_xlatb85;
      if (x_2721) {
        let x_2724 : i32 = u_xlati83;
        let x_2726 : f32 = x_709.x_AdditionalShadowParams[x_2724].y;
        u_xlatb85 = (1.0f == x_2726);
        let x_2728 : bool = u_xlatb85;
        if (x_2728) {
          let x_2731 : vec4<f32> = u_xlat11;
          let x_2734 : vec4<f32> = x_709.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2731.x, x_2731.y, x_2731.x, x_2731.y) + x_2734);
          let x_2737 : vec4<f32> = u_xlat12;
          let x_2738 : vec2<f32> = vec2<f32>(x_2737.x, x_2737.y);
          let x_2740 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2738.x, x_2738.y, x_2740);
          let x_2748 : vec3<f32> = txVec30;
          let x_2750 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2748.xy, x_2748.z);
          u_xlat13.x = x_2750;
          let x_2753 : vec4<f32> = u_xlat12;
          let x_2754 : vec2<f32> = vec2<f32>(x_2753.z, x_2753.w);
          let x_2756 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2754.x, x_2754.y, x_2756);
          let x_2763 : vec3<f32> = txVec31;
          let x_2765 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2763.xy, x_2763.z);
          u_xlat13.y = x_2765;
          let x_2767 : vec4<f32> = u_xlat11;
          let x_2770 : vec4<f32> = x_709.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2767.x, x_2767.y, x_2767.x, x_2767.y) + x_2770);
          let x_2773 : vec4<f32> = u_xlat12;
          let x_2774 : vec2<f32> = vec2<f32>(x_2773.x, x_2773.y);
          let x_2776 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2774.x, x_2774.y, x_2776);
          let x_2783 : vec3<f32> = txVec32;
          let x_2785 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2783.xy, x_2783.z);
          u_xlat13.z = x_2785;
          let x_2788 : vec4<f32> = u_xlat12;
          let x_2789 : vec2<f32> = vec2<f32>(x_2788.z, x_2788.w);
          let x_2791 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2789.x, x_2789.y, x_2791);
          let x_2798 : vec3<f32> = txVec33;
          let x_2800 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2798.xy, x_2798.z);
          u_xlat13.w = x_2800;
          let x_2802 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_2802, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2805 : i32 = u_xlati83;
          let x_2807 : f32 = x_709.x_AdditionalShadowParams[x_2805].y;
          u_xlatb86 = (2.0f == x_2807);
          let x_2809 : bool = u_xlatb86;
          if (x_2809) {
            let x_2812 : vec4<f32> = u_xlat11;
            let x_2815 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_2818 : vec2<f32> = ((vec2<f32>(x_2812.x, x_2812.y) * vec2<f32>(x_2815.z, x_2815.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2819 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2818.x, x_2818.y, x_2819.z, x_2819.w);
            let x_2821 : vec4<f32> = u_xlat12;
            let x_2823 : vec2<f32> = floor(vec2<f32>(x_2821.x, x_2821.y));
            let x_2824 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2823.x, x_2823.y, x_2824.z, x_2824.w);
            let x_2827 : vec4<f32> = u_xlat11;
            let x_2830 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_2833 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2827.x, x_2827.y) * vec2<f32>(x_2830.z, x_2830.w)) + -(vec2<f32>(x_2833.x, x_2833.y)));
            let x_2837 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2837.x, x_2837.x, x_2837.y, x_2837.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2840 : vec4<f32> = u_xlat13;
            let x_2842 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2840.x, x_2840.x, x_2840.z, x_2840.z) * vec4<f32>(x_2842.x, x_2842.x, x_2842.z, x_2842.z));
            let x_2845 : vec4<f32> = u_xlat14;
            let x_2847 : vec2<f32> = (vec2<f32>(x_2845.y, x_2845.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2848 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2847.x, x_2848.y, x_2847.y, x_2848.w);
            let x_2850 : vec4<f32> = u_xlat14;
            let x_2853 : vec2<f32> = u_xlat64;
            let x_2855 : vec2<f32> = ((vec2<f32>(x_2850.x, x_2850.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2853));
            let x_2856 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2855.x, x_2855.y, x_2856.z, x_2856.w);
            let x_2858 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2858) + vec2<f32>(1.0f, 1.0f));
            let x_2861 : vec2<f32> = u_xlat64;
            let x_2862 : vec2<f32> = min(x_2861, vec2<f32>(0.0f, 0.0f));
            let x_2863 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2862.x, x_2862.y, x_2863.z, x_2863.w);
            let x_2865 : vec4<f32> = u_xlat15;
            let x_2868 : vec4<f32> = u_xlat15;
            let x_2871 : vec2<f32> = u_xlat66;
            let x_2872 : vec2<f32> = ((-(vec2<f32>(x_2865.x, x_2865.y)) * vec2<f32>(x_2868.x, x_2868.y)) + x_2871);
            let x_2873 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2872.x, x_2872.y, x_2873.z, x_2873.w);
            let x_2875 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2875, vec2<f32>(0.0f, 0.0f));
            let x_2877 : vec2<f32> = u_xlat64;
            let x_2879 : vec2<f32> = u_xlat64;
            let x_2881 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2877) * x_2879) + vec2<f32>(x_2881.y, x_2881.w));
            let x_2884 : vec4<f32> = u_xlat15;
            let x_2886 : vec2<f32> = (vec2<f32>(x_2884.x, x_2884.y) + vec2<f32>(1.0f, 1.0f));
            let x_2887 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2886.x, x_2886.y, x_2887.z, x_2887.w);
            let x_2889 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2889 + vec2<f32>(1.0f, 1.0f));
            let x_2891 : vec4<f32> = u_xlat14;
            let x_2893 : vec2<f32> = (vec2<f32>(x_2891.x, x_2891.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2894 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2893.x, x_2893.y, x_2894.z, x_2894.w);
            let x_2896 : vec2<f32> = u_xlat66;
            let x_2897 : vec2<f32> = (x_2896 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2898 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2897.x, x_2897.y, x_2898.z, x_2898.w);
            let x_2900 : vec4<f32> = u_xlat15;
            let x_2902 : vec2<f32> = (vec2<f32>(x_2900.x, x_2900.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2903 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2902.x, x_2902.y, x_2903.z, x_2903.w);
            let x_2905 : vec2<f32> = u_xlat64;
            let x_2906 : vec2<f32> = (x_2905 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2907 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2906.x, x_2906.y, x_2907.z, x_2907.w);
            let x_2909 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2909.y, x_2909.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2913 : f32 = u_xlat15.x;
            u_xlat16.z = x_2913;
            let x_2916 : f32 = u_xlat64.x;
            u_xlat16.w = x_2916;
            let x_2919 : f32 = u_xlat17.x;
            u_xlat14.z = x_2919;
            let x_2922 : f32 = u_xlat13.x;
            u_xlat14.w = x_2922;
            let x_2924 : vec4<f32> = u_xlat14;
            let x_2926 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2924.z, x_2924.w, x_2924.x, x_2924.z) + vec4<f32>(x_2926.z, x_2926.w, x_2926.x, x_2926.z));
            let x_2930 : f32 = u_xlat16.y;
            u_xlat15.z = x_2930;
            let x_2933 : f32 = u_xlat64.y;
            u_xlat15.w = x_2933;
            let x_2936 : f32 = u_xlat14.y;
            u_xlat17.z = x_2936;
            let x_2939 : f32 = u_xlat13.z;
            u_xlat17.w = x_2939;
            let x_2941 : vec4<f32> = u_xlat15;
            let x_2943 : vec4<f32> = u_xlat17;
            let x_2945 : vec3<f32> = (vec3<f32>(x_2941.z, x_2941.y, x_2941.w) + vec3<f32>(x_2943.z, x_2943.y, x_2943.w));
            let x_2946 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2945.x, x_2945.y, x_2945.z, x_2946.w);
            let x_2948 : vec4<f32> = u_xlat14;
            let x_2950 : vec4<f32> = u_xlat18;
            let x_2952 : vec3<f32> = (vec3<f32>(x_2948.x, x_2948.z, x_2948.w) / vec3<f32>(x_2950.z, x_2950.w, x_2950.y));
            let x_2953 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2952.x, x_2952.y, x_2952.z, x_2953.w);
            let x_2955 : vec4<f32> = u_xlat14;
            let x_2957 : vec3<f32> = (vec3<f32>(x_2955.x, x_2955.y, x_2955.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2958 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2957.x, x_2957.y, x_2957.z, x_2958.w);
            let x_2960 : vec4<f32> = u_xlat17;
            let x_2962 : vec4<f32> = u_xlat13;
            let x_2964 : vec3<f32> = (vec3<f32>(x_2960.z, x_2960.y, x_2960.w) / vec3<f32>(x_2962.x, x_2962.y, x_2962.z));
            let x_2965 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2964.x, x_2964.y, x_2964.z, x_2965.w);
            let x_2967 : vec4<f32> = u_xlat15;
            let x_2969 : vec3<f32> = (vec3<f32>(x_2967.x, x_2967.y, x_2967.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2970 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2969.x, x_2969.y, x_2969.z, x_2970.w);
            let x_2972 : vec4<f32> = u_xlat14;
            let x_2975 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_2977 : vec3<f32> = (vec3<f32>(x_2972.y, x_2972.x, x_2972.z) * vec3<f32>(x_2975.x, x_2975.x, x_2975.x));
            let x_2978 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2977.x, x_2977.y, x_2977.z, x_2978.w);
            let x_2980 : vec4<f32> = u_xlat15;
            let x_2983 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_2985 : vec3<f32> = (vec3<f32>(x_2980.x, x_2980.y, x_2980.z) * vec3<f32>(x_2983.y, x_2983.y, x_2983.y));
            let x_2986 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2985.x, x_2985.y, x_2985.z, x_2986.w);
            let x_2989 : f32 = u_xlat15.x;
            u_xlat14.w = x_2989;
            let x_2991 : vec4<f32> = u_xlat12;
            let x_2994 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_2997 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2991.x, x_2991.y, x_2991.x, x_2991.y) * vec4<f32>(x_2994.x, x_2994.y, x_2994.x, x_2994.y)) + vec4<f32>(x_2997.y, x_2997.w, x_2997.x, x_2997.w));
            let x_3000 : vec4<f32> = u_xlat12;
            let x_3003 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_3006 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3000.x, x_3000.y) * vec2<f32>(x_3003.x, x_3003.y)) + vec2<f32>(x_3006.z, x_3006.w));
            let x_3010 : f32 = u_xlat14.y;
            u_xlat15.w = x_3010;
            let x_3012 : vec4<f32> = u_xlat15;
            let x_3013 : vec2<f32> = vec2<f32>(x_3012.y, x_3012.z);
            let x_3014 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3014.x, x_3013.x, x_3014.z, x_3013.y);
            let x_3016 : vec4<f32> = u_xlat12;
            let x_3019 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_3022 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3016.x, x_3016.y, x_3016.x, x_3016.y) * vec4<f32>(x_3019.x, x_3019.y, x_3019.x, x_3019.y)) + vec4<f32>(x_3022.x, x_3022.y, x_3022.z, x_3022.y));
            let x_3025 : vec4<f32> = u_xlat12;
            let x_3028 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_3031 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3025.x, x_3025.y, x_3025.x, x_3025.y) * vec4<f32>(x_3028.x, x_3028.y, x_3028.x, x_3028.y)) + vec4<f32>(x_3031.w, x_3031.y, x_3031.w, x_3031.z));
            let x_3034 : vec4<f32> = u_xlat12;
            let x_3037 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_3040 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3034.x, x_3034.y, x_3034.x, x_3034.y) * vec4<f32>(x_3037.x, x_3037.y, x_3037.x, x_3037.y)) + vec4<f32>(x_3040.x, x_3040.w, x_3040.z, x_3040.w));
            let x_3043 : vec4<f32> = u_xlat13;
            let x_3045 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3043.x, x_3043.x, x_3043.x, x_3043.y) * vec4<f32>(x_3045.z, x_3045.w, x_3045.y, x_3045.z));
            let x_3049 : vec4<f32> = u_xlat13;
            let x_3051 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3049.y, x_3049.y, x_3049.z, x_3049.z) * x_3051);
            let x_3054 : f32 = u_xlat13.z;
            let x_3056 : f32 = u_xlat18.y;
            u_xlat86 = (x_3054 * x_3056);
            let x_3059 : vec4<f32> = u_xlat16;
            let x_3060 : vec2<f32> = vec2<f32>(x_3059.x, x_3059.y);
            let x_3062 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3060.x, x_3060.y, x_3062);
            let x_3069 : vec3<f32> = txVec34;
            let x_3071 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3069.xy, x_3069.z);
            u_xlat87 = x_3071;
            let x_3073 : vec4<f32> = u_xlat16;
            let x_3074 : vec2<f32> = vec2<f32>(x_3073.z, x_3073.w);
            let x_3076 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3074.x, x_3074.y, x_3076);
            let x_3084 : vec3<f32> = txVec35;
            let x_3086 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3084.xy, x_3084.z);
            u_xlat88 = x_3086;
            let x_3087 : f32 = u_xlat88;
            let x_3089 : f32 = u_xlat19.y;
            u_xlat88 = (x_3087 * x_3089);
            let x_3092 : f32 = u_xlat19.x;
            let x_3093 : f32 = u_xlat87;
            let x_3095 : f32 = u_xlat88;
            u_xlat87 = ((x_3092 * x_3093) + x_3095);
            let x_3098 : vec2<f32> = u_xlat64;
            let x_3100 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3098.x, x_3098.y, x_3100);
            let x_3107 : vec3<f32> = txVec36;
            let x_3109 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3107.xy, x_3107.z);
            u_xlat88 = x_3109;
            let x_3111 : f32 = u_xlat19.z;
            let x_3112 : f32 = u_xlat88;
            let x_3114 : f32 = u_xlat87;
            u_xlat87 = ((x_3111 * x_3112) + x_3114);
            let x_3117 : vec4<f32> = u_xlat15;
            let x_3118 : vec2<f32> = vec2<f32>(x_3117.x, x_3117.y);
            let x_3120 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3118.x, x_3118.y, x_3120);
            let x_3127 : vec3<f32> = txVec37;
            let x_3129 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3127.xy, x_3127.z);
            u_xlat88 = x_3129;
            let x_3131 : f32 = u_xlat19.w;
            let x_3132 : f32 = u_xlat88;
            let x_3134 : f32 = u_xlat87;
            u_xlat87 = ((x_3131 * x_3132) + x_3134);
            let x_3137 : vec4<f32> = u_xlat17;
            let x_3138 : vec2<f32> = vec2<f32>(x_3137.x, x_3137.y);
            let x_3140 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3138.x, x_3138.y, x_3140);
            let x_3147 : vec3<f32> = txVec38;
            let x_3149 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3147.xy, x_3147.z);
            u_xlat88 = x_3149;
            let x_3151 : f32 = u_xlat20.x;
            let x_3152 : f32 = u_xlat88;
            let x_3154 : f32 = u_xlat87;
            u_xlat87 = ((x_3151 * x_3152) + x_3154);
            let x_3157 : vec4<f32> = u_xlat17;
            let x_3158 : vec2<f32> = vec2<f32>(x_3157.z, x_3157.w);
            let x_3160 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3158.x, x_3158.y, x_3160);
            let x_3167 : vec3<f32> = txVec39;
            let x_3169 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3167.xy, x_3167.z);
            u_xlat88 = x_3169;
            let x_3171 : f32 = u_xlat20.y;
            let x_3172 : f32 = u_xlat88;
            let x_3174 : f32 = u_xlat87;
            u_xlat87 = ((x_3171 * x_3172) + x_3174);
            let x_3177 : vec4<f32> = u_xlat15;
            let x_3178 : vec2<f32> = vec2<f32>(x_3177.z, x_3177.w);
            let x_3180 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3178.x, x_3178.y, x_3180);
            let x_3187 : vec3<f32> = txVec40;
            let x_3189 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3187.xy, x_3187.z);
            u_xlat88 = x_3189;
            let x_3191 : f32 = u_xlat20.z;
            let x_3192 : f32 = u_xlat88;
            let x_3194 : f32 = u_xlat87;
            u_xlat87 = ((x_3191 * x_3192) + x_3194);
            let x_3197 : vec4<f32> = u_xlat14;
            let x_3198 : vec2<f32> = vec2<f32>(x_3197.x, x_3197.y);
            let x_3200 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3198.x, x_3198.y, x_3200);
            let x_3207 : vec3<f32> = txVec41;
            let x_3209 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3207.xy, x_3207.z);
            u_xlat88 = x_3209;
            let x_3211 : f32 = u_xlat20.w;
            let x_3212 : f32 = u_xlat88;
            let x_3214 : f32 = u_xlat87;
            u_xlat87 = ((x_3211 * x_3212) + x_3214);
            let x_3217 : vec4<f32> = u_xlat14;
            let x_3218 : vec2<f32> = vec2<f32>(x_3217.z, x_3217.w);
            let x_3220 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3218.x, x_3218.y, x_3220);
            let x_3227 : vec3<f32> = txVec42;
            let x_3229 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3227.xy, x_3227.z);
            u_xlat88 = x_3229;
            let x_3230 : f32 = u_xlat86;
            let x_3231 : f32 = u_xlat88;
            let x_3233 : f32 = u_xlat87;
            u_xlat85 = ((x_3230 * x_3231) + x_3233);
          } else {
            let x_3236 : vec4<f32> = u_xlat11;
            let x_3239 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_3242 : vec2<f32> = ((vec2<f32>(x_3236.x, x_3236.y) * vec2<f32>(x_3239.z, x_3239.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3243 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3242.x, x_3242.y, x_3243.z, x_3243.w);
            let x_3245 : vec4<f32> = u_xlat12;
            let x_3247 : vec2<f32> = floor(vec2<f32>(x_3245.x, x_3245.y));
            let x_3248 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3247.x, x_3247.y, x_3248.z, x_3248.w);
            let x_3250 : vec4<f32> = u_xlat11;
            let x_3253 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_3256 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3250.x, x_3250.y) * vec2<f32>(x_3253.z, x_3253.w)) + -(vec2<f32>(x_3256.x, x_3256.y)));
            let x_3260 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3260.x, x_3260.x, x_3260.y, x_3260.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3263 : vec4<f32> = u_xlat13;
            let x_3265 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3263.x, x_3263.x, x_3263.z, x_3263.z) * vec4<f32>(x_3265.x, x_3265.x, x_3265.z, x_3265.z));
            let x_3268 : vec4<f32> = u_xlat14;
            let x_3270 : vec2<f32> = (vec2<f32>(x_3268.y, x_3268.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3271 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3271.x, x_3270.x, x_3271.z, x_3270.y);
            let x_3273 : vec4<f32> = u_xlat14;
            let x_3276 : vec2<f32> = u_xlat64;
            let x_3278 : vec2<f32> = ((vec2<f32>(x_3273.x, x_3273.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3276));
            let x_3279 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3278.x, x_3279.y, x_3278.y, x_3279.w);
            let x_3281 : vec2<f32> = u_xlat64;
            let x_3283 : vec2<f32> = (-(x_3281) + vec2<f32>(1.0f, 1.0f));
            let x_3284 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3283.x, x_3283.y, x_3284.z, x_3284.w);
            let x_3286 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3286, vec2<f32>(0.0f, 0.0f));
            let x_3288 : vec2<f32> = u_xlat66;
            let x_3290 : vec2<f32> = u_xlat66;
            let x_3292 : vec4<f32> = u_xlat14;
            let x_3294 : vec2<f32> = ((-(x_3288) * x_3290) + vec2<f32>(x_3292.x, x_3292.y));
            let x_3295 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3294.x, x_3294.y, x_3295.z, x_3295.w);
            let x_3297 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3297, vec2<f32>(0.0f, 0.0f));
            let x_3300 : vec2<f32> = u_xlat66;
            let x_3302 : vec2<f32> = u_xlat66;
            let x_3304 : vec4<f32> = u_xlat13;
            let x_3306 : vec2<f32> = ((-(x_3300) * x_3302) + vec2<f32>(x_3304.y, x_3304.w));
            let x_3307 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3306.x, x_3307.y, x_3306.y);
            let x_3309 : vec4<f32> = u_xlat14;
            let x_3311 : vec2<f32> = (vec2<f32>(x_3309.x, x_3309.y) + vec2<f32>(2.0f, 2.0f));
            let x_3312 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3311.x, x_3311.y, x_3312.z, x_3312.w);
            let x_3314 : vec3<f32> = u_xlat39;
            let x_3316 : vec2<f32> = (vec2<f32>(x_3314.x, x_3314.z) + vec2<f32>(2.0f, 2.0f));
            let x_3317 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3317.x, x_3316.x, x_3317.z, x_3316.y);
            let x_3320 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3320 * 0.08163200318813323975f);
            let x_3323 : vec4<f32> = u_xlat13;
            let x_3325 : vec3<f32> = (vec3<f32>(x_3323.z, x_3323.x, x_3323.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3326 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3325.x, x_3325.y, x_3325.z, x_3326.w);
            let x_3328 : vec4<f32> = u_xlat14;
            let x_3330 : vec2<f32> = (vec2<f32>(x_3328.x, x_3328.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3331 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3330.x, x_3330.y, x_3331.z, x_3331.w);
            let x_3334 : f32 = u_xlat17.y;
            u_xlat16.x = x_3334;
            let x_3336 : vec2<f32> = u_xlat64;
            let x_3339 : vec2<f32> = ((vec2<f32>(x_3336.x, x_3336.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3340 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3340.x, x_3339.x, x_3340.z, x_3339.y);
            let x_3342 : vec2<f32> = u_xlat64;
            let x_3345 : vec2<f32> = ((vec2<f32>(x_3342.x, x_3342.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3346 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3345.x, x_3346.y, x_3345.y, x_3346.w);
            let x_3349 : f32 = u_xlat13.x;
            u_xlat14.y = x_3349;
            let x_3352 : f32 = u_xlat15.y;
            u_xlat14.w = x_3352;
            let x_3354 : vec4<f32> = u_xlat14;
            let x_3355 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3354 + x_3355);
            let x_3357 : vec2<f32> = u_xlat64;
            let x_3360 : vec2<f32> = ((vec2<f32>(x_3357.y, x_3357.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3361 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3361.x, x_3360.x, x_3361.z, x_3360.y);
            let x_3363 : vec2<f32> = u_xlat64;
            let x_3366 : vec2<f32> = ((vec2<f32>(x_3363.y, x_3363.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3367 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3366.x, x_3367.y, x_3366.y, x_3367.w);
            let x_3370 : f32 = u_xlat13.y;
            u_xlat15.y = x_3370;
            let x_3372 : vec4<f32> = u_xlat15;
            let x_3373 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3372 + x_3373);
            let x_3375 : vec4<f32> = u_xlat14;
            let x_3376 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3375 / x_3376);
            let x_3378 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3378 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3380 : vec4<f32> = u_xlat15;
            let x_3381 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3380 / x_3381);
            let x_3383 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3383 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3385 : vec4<f32> = u_xlat14;
            let x_3388 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3385.w, x_3385.x, x_3385.y, x_3385.z) * vec4<f32>(x_3388.x, x_3388.x, x_3388.x, x_3388.x));
            let x_3391 : vec4<f32> = u_xlat15;
            let x_3394 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3391.x, x_3391.w, x_3391.y, x_3391.z) * vec4<f32>(x_3394.y, x_3394.y, x_3394.y, x_3394.y));
            let x_3397 : vec4<f32> = u_xlat14;
            let x_3398 : vec3<f32> = vec3<f32>(x_3397.y, x_3397.z, x_3397.w);
            let x_3399 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3398.x, x_3399.y, x_3398.y, x_3398.z);
            let x_3402 : f32 = u_xlat15.x;
            u_xlat17.y = x_3402;
            let x_3404 : vec4<f32> = u_xlat12;
            let x_3407 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_3410 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3404.x, x_3404.y, x_3404.x, x_3404.y) * vec4<f32>(x_3407.x, x_3407.y, x_3407.x, x_3407.y)) + vec4<f32>(x_3410.x, x_3410.y, x_3410.z, x_3410.y));
            let x_3413 : vec4<f32> = u_xlat12;
            let x_3416 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_3419 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3413.x, x_3413.y) * vec2<f32>(x_3416.x, x_3416.y)) + vec2<f32>(x_3419.w, x_3419.y));
            let x_3423 : f32 = u_xlat17.y;
            u_xlat14.y = x_3423;
            let x_3426 : f32 = u_xlat15.z;
            u_xlat17.y = x_3426;
            let x_3428 : vec4<f32> = u_xlat12;
            let x_3431 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_3434 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3428.x, x_3428.y, x_3428.x, x_3428.y) * vec4<f32>(x_3431.x, x_3431.y, x_3431.x, x_3431.y)) + vec4<f32>(x_3434.x, x_3434.y, x_3434.z, x_3434.y));
            let x_3437 : vec4<f32> = u_xlat12;
            let x_3440 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_3443 : vec4<f32> = u_xlat17;
            let x_3445 : vec2<f32> = ((vec2<f32>(x_3437.x, x_3437.y) * vec2<f32>(x_3440.x, x_3440.y)) + vec2<f32>(x_3443.w, x_3443.y));
            let x_3446 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3445.x, x_3445.y, x_3446.z, x_3446.w);
            let x_3449 : f32 = u_xlat17.y;
            u_xlat14.z = x_3449;
            let x_3452 : vec4<f32> = u_xlat12;
            let x_3455 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_3458 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3452.x, x_3452.y, x_3452.x, x_3452.y) * vec4<f32>(x_3455.x, x_3455.y, x_3455.x, x_3455.y)) + vec4<f32>(x_3458.x, x_3458.y, x_3458.x, x_3458.z));
            let x_3462 : f32 = u_xlat15.w;
            u_xlat17.y = x_3462;
            let x_3465 : vec4<f32> = u_xlat12;
            let x_3468 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_3471 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3465.x, x_3465.y, x_3465.x, x_3465.y) * vec4<f32>(x_3468.x, x_3468.y, x_3468.x, x_3468.y)) + vec4<f32>(x_3471.x, x_3471.y, x_3471.z, x_3471.y));
            let x_3475 : vec4<f32> = u_xlat12;
            let x_3478 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_3481 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3475.x, x_3475.y) * vec2<f32>(x_3478.x, x_3478.y)) + vec2<f32>(x_3481.w, x_3481.y));
            let x_3485 : f32 = u_xlat17.y;
            u_xlat14.w = x_3485;
            let x_3488 : vec4<f32> = u_xlat12;
            let x_3491 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_3494 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3488.x, x_3488.y) * vec2<f32>(x_3491.x, x_3491.y)) + vec2<f32>(x_3494.x, x_3494.w));
            let x_3497 : vec4<f32> = u_xlat17;
            let x_3498 : vec3<f32> = vec3<f32>(x_3497.x, x_3497.z, x_3497.w);
            let x_3499 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3498.x, x_3499.y, x_3498.y, x_3498.z);
            let x_3501 : vec4<f32> = u_xlat12;
            let x_3504 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_3507 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3501.x, x_3501.y, x_3501.x, x_3501.y) * vec4<f32>(x_3504.x, x_3504.y, x_3504.x, x_3504.y)) + vec4<f32>(x_3507.x, x_3507.y, x_3507.z, x_3507.y));
            let x_3511 : vec4<f32> = u_xlat12;
            let x_3514 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_3517 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3511.x, x_3511.y) * vec2<f32>(x_3514.x, x_3514.y)) + vec2<f32>(x_3517.w, x_3517.y));
            let x_3521 : f32 = u_xlat14.x;
            u_xlat15.x = x_3521;
            let x_3523 : vec4<f32> = u_xlat12;
            let x_3526 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_3529 : vec4<f32> = u_xlat15;
            let x_3531 : vec2<f32> = ((vec2<f32>(x_3523.x, x_3523.y) * vec2<f32>(x_3526.x, x_3526.y)) + vec2<f32>(x_3529.x, x_3529.y));
            let x_3532 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3531.x, x_3531.y, x_3532.z, x_3532.w);
            let x_3535 : vec4<f32> = u_xlat13;
            let x_3537 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3535.x, x_3535.x, x_3535.x, x_3535.x) * x_3537);
            let x_3540 : vec4<f32> = u_xlat13;
            let x_3542 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3540.y, x_3540.y, x_3540.y, x_3540.y) * x_3542);
            let x_3545 : vec4<f32> = u_xlat13;
            let x_3547 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3545.z, x_3545.z, x_3545.z, x_3545.z) * x_3547);
            let x_3549 : vec4<f32> = u_xlat13;
            let x_3551 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3549.w, x_3549.w, x_3549.w, x_3549.w) * x_3551);
            let x_3554 : vec4<f32> = u_xlat18;
            let x_3555 : vec2<f32> = vec2<f32>(x_3554.x, x_3554.y);
            let x_3557 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3555.x, x_3555.y, x_3557);
            let x_3564 : vec3<f32> = txVec43;
            let x_3566 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3564.xy, x_3564.z);
            u_xlat86 = x_3566;
            let x_3568 : vec4<f32> = u_xlat18;
            let x_3569 : vec2<f32> = vec2<f32>(x_3568.z, x_3568.w);
            let x_3571 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3569.x, x_3569.y, x_3571);
            let x_3578 : vec3<f32> = txVec44;
            let x_3580 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3578.xy, x_3578.z);
            u_xlat87 = x_3580;
            let x_3581 : f32 = u_xlat87;
            let x_3583 : f32 = u_xlat23.y;
            u_xlat87 = (x_3581 * x_3583);
            let x_3586 : f32 = u_xlat23.x;
            let x_3587 : f32 = u_xlat86;
            let x_3589 : f32 = u_xlat87;
            u_xlat86 = ((x_3586 * x_3587) + x_3589);
            let x_3592 : vec2<f32> = u_xlat64;
            let x_3594 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3592.x, x_3592.y, x_3594);
            let x_3601 : vec3<f32> = txVec45;
            let x_3603 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3601.xy, x_3601.z);
            u_xlat87 = x_3603;
            let x_3605 : f32 = u_xlat23.z;
            let x_3606 : f32 = u_xlat87;
            let x_3608 : f32 = u_xlat86;
            u_xlat86 = ((x_3605 * x_3606) + x_3608);
            let x_3611 : vec4<f32> = u_xlat21;
            let x_3612 : vec2<f32> = vec2<f32>(x_3611.x, x_3611.y);
            let x_3614 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3612.x, x_3612.y, x_3614);
            let x_3621 : vec3<f32> = txVec46;
            let x_3623 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3621.xy, x_3621.z);
            u_xlat87 = x_3623;
            let x_3625 : f32 = u_xlat23.w;
            let x_3626 : f32 = u_xlat87;
            let x_3628 : f32 = u_xlat86;
            u_xlat86 = ((x_3625 * x_3626) + x_3628);
            let x_3631 : vec4<f32> = u_xlat19;
            let x_3632 : vec2<f32> = vec2<f32>(x_3631.x, x_3631.y);
            let x_3634 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3632.x, x_3632.y, x_3634);
            let x_3641 : vec3<f32> = txVec47;
            let x_3643 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3641.xy, x_3641.z);
            u_xlat87 = x_3643;
            let x_3645 : f32 = u_xlat24.x;
            let x_3646 : f32 = u_xlat87;
            let x_3648 : f32 = u_xlat86;
            u_xlat86 = ((x_3645 * x_3646) + x_3648);
            let x_3651 : vec4<f32> = u_xlat19;
            let x_3652 : vec2<f32> = vec2<f32>(x_3651.z, x_3651.w);
            let x_3654 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3652.x, x_3652.y, x_3654);
            let x_3661 : vec3<f32> = txVec48;
            let x_3663 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3661.xy, x_3661.z);
            u_xlat87 = x_3663;
            let x_3665 : f32 = u_xlat24.y;
            let x_3666 : f32 = u_xlat87;
            let x_3668 : f32 = u_xlat86;
            u_xlat86 = ((x_3665 * x_3666) + x_3668);
            let x_3671 : vec4<f32> = u_xlat20;
            let x_3672 : vec2<f32> = vec2<f32>(x_3671.x, x_3671.y);
            let x_3674 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3672.x, x_3672.y, x_3674);
            let x_3681 : vec3<f32> = txVec49;
            let x_3683 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3681.xy, x_3681.z);
            u_xlat87 = x_3683;
            let x_3685 : f32 = u_xlat24.z;
            let x_3686 : f32 = u_xlat87;
            let x_3688 : f32 = u_xlat86;
            u_xlat86 = ((x_3685 * x_3686) + x_3688);
            let x_3691 : vec4<f32> = u_xlat21;
            let x_3692 : vec2<f32> = vec2<f32>(x_3691.z, x_3691.w);
            let x_3694 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3692.x, x_3692.y, x_3694);
            let x_3701 : vec3<f32> = txVec50;
            let x_3703 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3701.xy, x_3701.z);
            u_xlat87 = x_3703;
            let x_3705 : f32 = u_xlat24.w;
            let x_3706 : f32 = u_xlat87;
            let x_3708 : f32 = u_xlat86;
            u_xlat86 = ((x_3705 * x_3706) + x_3708);
            let x_3711 : vec4<f32> = u_xlat22;
            let x_3712 : vec2<f32> = vec2<f32>(x_3711.x, x_3711.y);
            let x_3714 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3712.x, x_3712.y, x_3714);
            let x_3721 : vec3<f32> = txVec51;
            let x_3723 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3721.xy, x_3721.z);
            u_xlat87 = x_3723;
            let x_3725 : f32 = u_xlat25.x;
            let x_3726 : f32 = u_xlat87;
            let x_3728 : f32 = u_xlat86;
            u_xlat86 = ((x_3725 * x_3726) + x_3728);
            let x_3731 : vec4<f32> = u_xlat22;
            let x_3732 : vec2<f32> = vec2<f32>(x_3731.z, x_3731.w);
            let x_3734 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3732.x, x_3732.y, x_3734);
            let x_3741 : vec3<f32> = txVec52;
            let x_3743 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3741.xy, x_3741.z);
            u_xlat87 = x_3743;
            let x_3745 : f32 = u_xlat25.y;
            let x_3746 : f32 = u_xlat87;
            let x_3748 : f32 = u_xlat86;
            u_xlat86 = ((x_3745 * x_3746) + x_3748);
            let x_3751 : vec2<f32> = u_xlat40;
            let x_3753 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3751.x, x_3751.y, x_3753);
            let x_3760 : vec3<f32> = txVec53;
            let x_3762 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3760.xy, x_3760.z);
            u_xlat87 = x_3762;
            let x_3764 : f32 = u_xlat25.z;
            let x_3765 : f32 = u_xlat87;
            let x_3767 : f32 = u_xlat86;
            u_xlat86 = ((x_3764 * x_3765) + x_3767);
            let x_3770 : vec2<f32> = u_xlat72;
            let x_3772 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3770.x, x_3770.y, x_3772);
            let x_3779 : vec3<f32> = txVec54;
            let x_3781 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3779.xy, x_3779.z);
            u_xlat87 = x_3781;
            let x_3783 : f32 = u_xlat25.w;
            let x_3784 : f32 = u_xlat87;
            let x_3786 : f32 = u_xlat86;
            u_xlat86 = ((x_3783 * x_3784) + x_3786);
            let x_3789 : vec4<f32> = u_xlat17;
            let x_3790 : vec2<f32> = vec2<f32>(x_3789.x, x_3789.y);
            let x_3792 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3790.x, x_3790.y, x_3792);
            let x_3799 : vec3<f32> = txVec55;
            let x_3801 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3799.xy, x_3799.z);
            u_xlat87 = x_3801;
            let x_3803 : f32 = u_xlat13.x;
            let x_3804 : f32 = u_xlat87;
            let x_3806 : f32 = u_xlat86;
            u_xlat86 = ((x_3803 * x_3804) + x_3806);
            let x_3809 : vec4<f32> = u_xlat17;
            let x_3810 : vec2<f32> = vec2<f32>(x_3809.z, x_3809.w);
            let x_3812 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3810.x, x_3810.y, x_3812);
            let x_3819 : vec3<f32> = txVec56;
            let x_3821 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3819.xy, x_3819.z);
            u_xlat87 = x_3821;
            let x_3823 : f32 = u_xlat13.y;
            let x_3824 : f32 = u_xlat87;
            let x_3826 : f32 = u_xlat86;
            u_xlat86 = ((x_3823 * x_3824) + x_3826);
            let x_3829 : vec2<f32> = u_xlat67;
            let x_3831 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3829.x, x_3829.y, x_3831);
            let x_3838 : vec3<f32> = txVec57;
            let x_3840 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3838.xy, x_3838.z);
            u_xlat87 = x_3840;
            let x_3842 : f32 = u_xlat13.z;
            let x_3843 : f32 = u_xlat87;
            let x_3845 : f32 = u_xlat86;
            u_xlat86 = ((x_3842 * x_3843) + x_3845);
            let x_3848 : vec4<f32> = u_xlat12;
            let x_3849 : vec2<f32> = vec2<f32>(x_3848.x, x_3848.y);
            let x_3851 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3849.x, x_3849.y, x_3851);
            let x_3858 : vec3<f32> = txVec58;
            let x_3860 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3858.xy, x_3858.z);
            u_xlat87 = x_3860;
            let x_3862 : f32 = u_xlat13.w;
            let x_3863 : f32 = u_xlat87;
            let x_3865 : f32 = u_xlat86;
            u_xlat85 = ((x_3862 * x_3863) + x_3865);
          }
        }
      } else {
        let x_3869 : vec4<f32> = u_xlat11;
        let x_3870 : vec2<f32> = vec2<f32>(x_3869.x, x_3869.y);
        let x_3872 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3870.x, x_3870.y, x_3872);
        let x_3879 : vec3<f32> = txVec59;
        let x_3881 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3879.xy, x_3879.z);
        u_xlat85 = x_3881;
      }
      let x_3882 : i32 = u_xlati83;
      let x_3884 : f32 = x_709.x_AdditionalShadowParams[x_3882].x;
      u_xlat86 = (1.0f + -(x_3884));
      let x_3887 : f32 = u_xlat85;
      let x_3888 : i32 = u_xlati83;
      let x_3890 : f32 = x_709.x_AdditionalShadowParams[x_3888].x;
      let x_3892 : f32 = u_xlat86;
      u_xlat85 = ((x_3887 * x_3890) + x_3892);
      let x_3895 : f32 = u_xlat11.z;
      u_xlatb86 = (0.0f >= x_3895);
      let x_3899 : f32 = u_xlat11.z;
      u_xlatb87 = (x_3899 >= 1.0f);
      let x_3901 : bool = u_xlatb86;
      let x_3902 : bool = u_xlatb87;
      u_xlatb86 = (x_3901 | x_3902);
      let x_3904 : bool = u_xlatb86;
      let x_3905 : f32 = u_xlat85;
      u_xlat85 = select(x_3905, 1.0f, x_3904);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_3908 : f32 = u_xlat85;
    u_xlat86 = (-(x_3908) + 1.0f);
    let x_3911 : f32 = u_xlat80;
    let x_3912 : f32 = u_xlat86;
    let x_3914 : f32 = u_xlat85;
    u_xlat85 = ((x_3911 * x_3912) + x_3914);
    let x_3917 : i32 = u_xlati83;
    u_xlati86 = (1i << bitcast<u32>((x_3917 & 31i)));
    let x_3920 : i32 = u_xlati86;
    let x_3923 : f32 = x_2020.x_AdditionalLightsCookieEnableBits;
    u_xlati86 = bitcast<i32>((bitcast<u32>(x_3920) & bitcast<u32>(x_3923)));
    let x_3927 : i32 = u_xlati86;
    if ((x_3927 != 0i)) {
      let x_3931 : i32 = u_xlati83;
      let x_3933 : f32 = x_2020.x_AdditionalLightsLightTypes[x_3931].el;
      u_xlati86 = i32(x_3933);
      let x_3936 : i32 = u_xlati86;
      u_xlati87 = select(1i, 0i, (x_3936 != 0i));
      let x_3940 : i32 = u_xlati83;
      u_xlati88 = (x_3940 << bitcast<u32>(2i));
      let x_3942 : i32 = u_xlati87;
      if ((x_3942 != 0i)) {
        let x_3946 : vec3<f32> = vs_TEXCOORD7;
        let x_3948 : i32 = u_xlati88;
        let x_3951 : i32 = u_xlati88;
        let x_3955 : vec4<f32> = x_2020.x_AdditionalLightsWorldToLights[((x_3948 + 1i) / 4i)][((x_3951 + 1i) % 4i)];
        let x_3957 : vec3<f32> = (vec3<f32>(x_3946.y, x_3946.y, x_3946.y) * vec3<f32>(x_3955.x, x_3955.y, x_3955.w));
        let x_3958 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3957.x, x_3957.y, x_3957.z, x_3958.w);
        let x_3960 : i32 = u_xlati88;
        let x_3962 : i32 = u_xlati88;
        let x_3965 : vec4<f32> = x_2020.x_AdditionalLightsWorldToLights[(x_3960 / 4i)][(x_3962 % 4i)];
        let x_3967 : vec3<f32> = vs_TEXCOORD7;
        let x_3970 : vec4<f32> = u_xlat11;
        let x_3972 : vec3<f32> = ((vec3<f32>(x_3965.x, x_3965.y, x_3965.w) * vec3<f32>(x_3967.x, x_3967.x, x_3967.x)) + vec3<f32>(x_3970.x, x_3970.y, x_3970.z));
        let x_3973 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3972.x, x_3972.y, x_3972.z, x_3973.w);
        let x_3975 : i32 = u_xlati88;
        let x_3978 : i32 = u_xlati88;
        let x_3982 : vec4<f32> = x_2020.x_AdditionalLightsWorldToLights[((x_3975 + 2i) / 4i)][((x_3978 + 2i) % 4i)];
        let x_3984 : vec3<f32> = vs_TEXCOORD7;
        let x_3987 : vec4<f32> = u_xlat11;
        let x_3989 : vec3<f32> = ((vec3<f32>(x_3982.x, x_3982.y, x_3982.w) * vec3<f32>(x_3984.z, x_3984.z, x_3984.z)) + vec3<f32>(x_3987.x, x_3987.y, x_3987.z));
        let x_3990 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3989.x, x_3989.y, x_3989.z, x_3990.w);
        let x_3992 : vec4<f32> = u_xlat11;
        let x_3994 : i32 = u_xlati88;
        let x_3997 : i32 = u_xlati88;
        let x_4001 : vec4<f32> = x_2020.x_AdditionalLightsWorldToLights[((x_3994 + 3i) / 4i)][((x_3997 + 3i) % 4i)];
        let x_4003 : vec3<f32> = (vec3<f32>(x_3992.x, x_3992.y, x_3992.z) + vec3<f32>(x_4001.x, x_4001.y, x_4001.w));
        let x_4004 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4003.x, x_4003.y, x_4003.z, x_4004.w);
        let x_4006 : vec4<f32> = u_xlat11;
        let x_4008 : vec4<f32> = u_xlat11;
        let x_4010 : vec2<f32> = (vec2<f32>(x_4006.x, x_4006.y) / vec2<f32>(x_4008.z, x_4008.z));
        let x_4011 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4010.x, x_4010.y, x_4011.z, x_4011.w);
        let x_4013 : vec4<f32> = u_xlat11;
        let x_4016 : vec2<f32> = ((vec2<f32>(x_4013.x, x_4013.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4017 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4016.x, x_4016.y, x_4017.z, x_4017.w);
        let x_4019 : vec4<f32> = u_xlat11;
        let x_4023 : vec2<f32> = clamp(vec2<f32>(x_4019.x, x_4019.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4024 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4023.x, x_4023.y, x_4024.z, x_4024.w);
        let x_4026 : i32 = u_xlati83;
        let x_4028 : vec4<f32> = x_2020.x_AdditionalLightsCookieAtlasUVRects[x_4026];
        let x_4030 : vec4<f32> = u_xlat11;
        let x_4033 : i32 = u_xlati83;
        let x_4035 : vec4<f32> = x_2020.x_AdditionalLightsCookieAtlasUVRects[x_4033];
        let x_4037 : vec2<f32> = ((vec2<f32>(x_4028.x, x_4028.y) * vec2<f32>(x_4030.x, x_4030.y)) + vec2<f32>(x_4035.z, x_4035.w));
        let x_4038 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4037.x, x_4037.y, x_4038.z, x_4038.w);
      } else {
        let x_4041 : i32 = u_xlati86;
        u_xlatb86 = (x_4041 == 1i);
        let x_4043 : bool = u_xlatb86;
        u_xlati86 = select(0i, 1i, x_4043);
        let x_4045 : i32 = u_xlati86;
        if ((x_4045 != 0i)) {
          let x_4050 : vec3<f32> = vs_TEXCOORD7;
          let x_4052 : i32 = u_xlati88;
          let x_4055 : i32 = u_xlati88;
          let x_4059 : vec4<f32> = x_2020.x_AdditionalLightsWorldToLights[((x_4052 + 1i) / 4i)][((x_4055 + 1i) % 4i)];
          u_xlat63 = (vec2<f32>(x_4050.y, x_4050.y) * vec2<f32>(x_4059.x, x_4059.y));
          let x_4062 : i32 = u_xlati88;
          let x_4064 : i32 = u_xlati88;
          let x_4067 : vec4<f32> = x_2020.x_AdditionalLightsWorldToLights[(x_4062 / 4i)][(x_4064 % 4i)];
          let x_4069 : vec3<f32> = vs_TEXCOORD7;
          let x_4072 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4067.x, x_4067.y) * vec2<f32>(x_4069.x, x_4069.x)) + x_4072);
          let x_4074 : i32 = u_xlati88;
          let x_4077 : i32 = u_xlati88;
          let x_4081 : vec4<f32> = x_2020.x_AdditionalLightsWorldToLights[((x_4074 + 2i) / 4i)][((x_4077 + 2i) % 4i)];
          let x_4083 : vec3<f32> = vs_TEXCOORD7;
          let x_4086 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4081.x, x_4081.y) * vec2<f32>(x_4083.z, x_4083.z)) + x_4086);
          let x_4088 : vec2<f32> = u_xlat63;
          let x_4089 : i32 = u_xlati88;
          let x_4092 : i32 = u_xlati88;
          let x_4096 : vec4<f32> = x_2020.x_AdditionalLightsWorldToLights[((x_4089 + 3i) / 4i)][((x_4092 + 3i) % 4i)];
          u_xlat63 = (x_4088 + vec2<f32>(x_4096.x, x_4096.y));
          let x_4099 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4099 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4102 : vec2<f32> = u_xlat63;
          u_xlat63 = fract(x_4102);
          let x_4104 : i32 = u_xlati83;
          let x_4106 : vec4<f32> = x_2020.x_AdditionalLightsCookieAtlasUVRects[x_4104];
          let x_4108 : vec2<f32> = u_xlat63;
          let x_4110 : i32 = u_xlati83;
          let x_4112 : vec4<f32> = x_2020.x_AdditionalLightsCookieAtlasUVRects[x_4110];
          let x_4114 : vec2<f32> = ((vec2<f32>(x_4106.x, x_4106.y) * x_4108) + vec2<f32>(x_4112.z, x_4112.w));
          let x_4115 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4114.x, x_4114.y, x_4115.z, x_4115.w);
        } else {
          let x_4118 : vec3<f32> = vs_TEXCOORD7;
          let x_4120 : i32 = u_xlati88;
          let x_4123 : i32 = u_xlati88;
          let x_4127 : vec4<f32> = x_2020.x_AdditionalLightsWorldToLights[((x_4120 + 1i) / 4i)][((x_4123 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4118.y, x_4118.y, x_4118.y, x_4118.y) * x_4127);
          let x_4129 : i32 = u_xlati88;
          let x_4131 : i32 = u_xlati88;
          let x_4134 : vec4<f32> = x_2020.x_AdditionalLightsWorldToLights[(x_4129 / 4i)][(x_4131 % 4i)];
          let x_4135 : vec3<f32> = vs_TEXCOORD7;
          let x_4138 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4134 * vec4<f32>(x_4135.x, x_4135.x, x_4135.x, x_4135.x)) + x_4138);
          let x_4140 : i32 = u_xlati88;
          let x_4143 : i32 = u_xlati88;
          let x_4147 : vec4<f32> = x_2020.x_AdditionalLightsWorldToLights[((x_4140 + 2i) / 4i)][((x_4143 + 2i) % 4i)];
          let x_4148 : vec3<f32> = vs_TEXCOORD7;
          let x_4151 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4147 * vec4<f32>(x_4148.z, x_4148.z, x_4148.z, x_4148.z)) + x_4151);
          let x_4153 : vec4<f32> = u_xlat12;
          let x_4154 : i32 = u_xlati88;
          let x_4157 : i32 = u_xlati88;
          let x_4161 : vec4<f32> = x_2020.x_AdditionalLightsWorldToLights[((x_4154 + 3i) / 4i)][((x_4157 + 3i) % 4i)];
          u_xlat12 = (x_4153 + x_4161);
          let x_4163 : vec4<f32> = u_xlat12;
          let x_4165 : vec4<f32> = u_xlat12;
          let x_4167 : vec3<f32> = (vec3<f32>(x_4163.x, x_4163.y, x_4163.z) / vec3<f32>(x_4165.w, x_4165.w, x_4165.w));
          let x_4168 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4167.x, x_4167.y, x_4167.z, x_4168.w);
          let x_4170 : vec4<f32> = u_xlat12;
          let x_4172 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(vec3<f32>(x_4170.x, x_4170.y, x_4170.z), vec3<f32>(x_4172.x, x_4172.y, x_4172.z));
          let x_4175 : f32 = u_xlat86;
          u_xlat86 = inverseSqrt(x_4175);
          let x_4177 : f32 = u_xlat86;
          let x_4179 : vec4<f32> = u_xlat12;
          let x_4181 : vec3<f32> = (vec3<f32>(x_4177, x_4177, x_4177) * vec3<f32>(x_4179.x, x_4179.y, x_4179.z));
          let x_4182 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4181.x, x_4181.y, x_4181.z, x_4182.w);
          let x_4184 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(abs(vec3<f32>(x_4184.x, x_4184.y, x_4184.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4189 : f32 = u_xlat86;
          u_xlat86 = max(x_4189, 0.00000099999999747524f);
          let x_4192 : f32 = u_xlat86;
          u_xlat86 = (1.0f / x_4192);
          let x_4194 : f32 = u_xlat86;
          let x_4196 : vec4<f32> = u_xlat12;
          let x_4198 : vec3<f32> = (vec3<f32>(x_4194, x_4194, x_4194) * vec3<f32>(x_4196.z, x_4196.x, x_4196.y));
          let x_4199 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4198.x, x_4198.y, x_4198.z, x_4199.w);
          let x_4202 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4202);
          let x_4206 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4206, 0.0f, 1.0f);
          let x_4210 : vec4<f32> = u_xlat13;
          let x_4212 : vec4<bool> = (vec4<f32>(x_4210.y, x_4210.z, x_4210.y, x_4210.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_4212.x, x_4212.y);
          let x_4215 : bool = u_xlatb63.x;
          if (x_4215) {
            let x_4220 : f32 = u_xlat13.x;
            x_4216 = x_4220;
          } else {
            let x_4223 : f32 = u_xlat13.x;
            x_4216 = -(x_4223);
          }
          let x_4225 : f32 = x_4216;
          u_xlat63.x = x_4225;
          let x_4228 : bool = u_xlatb63.y;
          if (x_4228) {
            let x_4233 : f32 = u_xlat13.x;
            x_4229 = x_4233;
          } else {
            let x_4236 : f32 = u_xlat13.x;
            x_4229 = -(x_4236);
          }
          let x_4238 : f32 = x_4229;
          u_xlat63.y = x_4238;
          let x_4240 : vec4<f32> = u_xlat12;
          let x_4242 : f32 = u_xlat86;
          let x_4245 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4240.x, x_4240.y) * vec2<f32>(x_4242, x_4242)) + x_4245);
          let x_4247 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4247 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4250 : vec2<f32> = u_xlat63;
          u_xlat63 = clamp(x_4250, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4254 : i32 = u_xlati83;
          let x_4256 : vec4<f32> = x_2020.x_AdditionalLightsCookieAtlasUVRects[x_4254];
          let x_4258 : vec2<f32> = u_xlat63;
          let x_4260 : i32 = u_xlati83;
          let x_4262 : vec4<f32> = x_2020.x_AdditionalLightsCookieAtlasUVRects[x_4260];
          let x_4264 : vec2<f32> = ((vec2<f32>(x_4256.x, x_4256.y) * x_4258) + vec2<f32>(x_4262.z, x_4262.w));
          let x_4265 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4264.x, x_4264.y, x_4265.z, x_4265.w);
        }
      }
      let x_4272 : vec4<f32> = u_xlat11;
      let x_4274 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4272.x, x_4272.y), 0.0f);
      u_xlat11 = x_4274;
      let x_4276 : bool = u_xlatb7.y;
      if (x_4276) {
        let x_4281 : f32 = u_xlat11.w;
        x_4277 = x_4281;
      } else {
        let x_4284 : f32 = u_xlat11.x;
        x_4277 = x_4284;
      }
      let x_4285 : f32 = x_4277;
      u_xlat86 = x_4285;
      let x_4287 : bool = u_xlatb7.x;
      if (x_4287) {
        let x_4291 : vec4<f32> = u_xlat11;
        x_4288 = vec3<f32>(x_4291.x, x_4291.y, x_4291.z);
      } else {
        let x_4294 : f32 = u_xlat86;
        x_4288 = vec3<f32>(x_4294, x_4294, x_4294);
      }
      let x_4296 : vec3<f32> = x_4288;
      let x_4297 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4296.x, x_4296.y, x_4296.z, x_4297.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4303 : vec4<f32> = u_xlat11;
    let x_4305 : i32 = u_xlati83;
    let x_4307 : vec4<f32> = x_2499.x_AdditionalLightsColor[x_4305];
    let x_4309 : vec3<f32> = (vec3<f32>(x_4303.x, x_4303.y, x_4303.z) * vec3<f32>(x_4307.x, x_4307.y, x_4307.z));
    let x_4310 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4309.x, x_4309.y, x_4309.z, x_4310.w);
    let x_4312 : f32 = u_xlat84;
    let x_4313 : f32 = u_xlat85;
    u_xlat83 = (x_4312 * x_4313);
    let x_4315 : vec4<f32> = u_xlat1;
    let x_4317 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_4315.x, x_4315.y, x_4315.z), vec3<f32>(x_4317.x, x_4317.y, x_4317.z));
    let x_4320 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4320, 0.0f, 1.0f);
    let x_4322 : f32 = u_xlat83;
    let x_4323 : f32 = u_xlat84;
    u_xlat83 = (x_4322 * x_4323);
    let x_4325 : f32 = u_xlat83;
    let x_4327 : vec4<f32> = u_xlat11;
    let x_4329 : vec3<f32> = (vec3<f32>(x_4325, x_4325, x_4325) * vec3<f32>(x_4327.x, x_4327.y, x_4327.z));
    let x_4330 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4329.x, x_4329.y, x_4329.z, x_4330.w);
    let x_4332 : vec4<f32> = u_xlat9;
    let x_4334 : f32 = u_xlat59;
    let x_4337 : vec3<f32> = u_xlat2;
    let x_4338 : vec3<f32> = ((vec3<f32>(x_4332.x, x_4332.y, x_4332.z) * vec3<f32>(x_4334, x_4334, x_4334)) + x_4337);
    let x_4339 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4338.x, x_4338.y, x_4338.z, x_4339.w);
    let x_4341 : vec4<f32> = u_xlat9;
    let x_4343 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4341.x, x_4341.y, x_4341.z), vec3<f32>(x_4343.x, x_4343.y, x_4343.z));
    let x_4346 : f32 = u_xlat83;
    u_xlat83 = max(x_4346, 1.17549435e-38f);
    let x_4348 : f32 = u_xlat83;
    u_xlat83 = inverseSqrt(x_4348);
    let x_4350 : f32 = u_xlat83;
    let x_4352 : vec4<f32> = u_xlat9;
    let x_4354 : vec3<f32> = (vec3<f32>(x_4350, x_4350, x_4350) * vec3<f32>(x_4352.x, x_4352.y, x_4352.z));
    let x_4355 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4354.x, x_4354.y, x_4354.z, x_4355.w);
    let x_4357 : vec4<f32> = u_xlat1;
    let x_4359 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4357.x, x_4357.y, x_4357.z), vec3<f32>(x_4359.x, x_4359.y, x_4359.z));
    let x_4362 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4362, 0.0f, 1.0f);
    let x_4364 : vec4<f32> = u_xlat10;
    let x_4366 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4364.x, x_4364.y, x_4364.z), vec3<f32>(x_4366.x, x_4366.y, x_4366.z));
    let x_4369 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4369, 0.0f, 1.0f);
    let x_4371 : f32 = u_xlat83;
    let x_4372 : f32 = u_xlat83;
    u_xlat83 = (x_4371 * x_4372);
    let x_4374 : f32 = u_xlat83;
    let x_4376 : f32 = u_xlat0.x;
    u_xlat83 = ((x_4374 * x_4376) + 1.00001001358032226562f);
    let x_4379 : f32 = u_xlat84;
    let x_4380 : f32 = u_xlat84;
    u_xlat84 = (x_4379 * x_4380);
    let x_4382 : f32 = u_xlat83;
    let x_4383 : f32 = u_xlat83;
    u_xlat83 = (x_4382 * x_4383);
    let x_4385 : f32 = u_xlat84;
    u_xlat84 = max(x_4385, 0.10000000149011611938f);
    let x_4387 : f32 = u_xlat83;
    let x_4388 : f32 = u_xlat84;
    u_xlat83 = (x_4387 * x_4388);
    let x_4390 : f32 = u_xlat81;
    let x_4391 : f32 = u_xlat83;
    u_xlat83 = (x_4390 * x_4391);
    let x_4393 : f32 = u_xlat79;
    let x_4394 : f32 = u_xlat83;
    u_xlat83 = (x_4393 / x_4394);
    let x_4396 : vec4<f32> = u_xlat5;
    let x_4398 : f32 = u_xlat83;
    let x_4401 : vec4<f32> = u_xlat4;
    let x_4403 : vec3<f32> = ((vec3<f32>(x_4396.x, x_4396.y, x_4396.z) * vec3<f32>(x_4398, x_4398, x_4398)) + vec3<f32>(x_4401.x, x_4401.y, x_4401.z));
    let x_4404 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4403.x, x_4403.y, x_4403.z, x_4404.w);
    let x_4406 : vec4<f32> = u_xlat9;
    let x_4408 : vec4<f32> = u_xlat11;
    let x_4411 : vec4<f32> = u_xlat8;
    let x_4413 : vec3<f32> = ((vec3<f32>(x_4406.x, x_4406.y, x_4406.z) * vec3<f32>(x_4408.x, x_4408.y, x_4408.z)) + vec3<f32>(x_4411.x, x_4411.y, x_4411.z));
    let x_4414 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4413.x, x_4413.y, x_4413.z, x_4414.w);

    continuing {
      let x_4416 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4416 + bitcast<u32>(1i));
    }
  }
  let x_4418 : vec4<f32> = u_xlat3;
  let x_4420 : f32 = u_xlat26;
  let x_4423 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_4418.x, x_4418.y, x_4418.z) * vec3<f32>(x_4420, x_4420, x_4420)) + vec3<f32>(x_4423.x, x_4423.y, x_4423.z));
  let x_4426 : vec4<f32> = u_xlat8;
  let x_4428 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4426.x, x_4426.y, x_4426.z) + x_4428);
  let x_4432 : f32 = u_xlat78;
  let x_4434 : vec3<f32> = u_xlat0;
  let x_4435 : vec3<f32> = (vec3<f32>(x_4432, x_4432, x_4432) * x_4434);
  let x_4436 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4435.x, x_4435.y, x_4435.z, x_4436.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


