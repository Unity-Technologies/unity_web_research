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

@group(0) @binding(11) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_111 : PGlobals;

var<private> u_xlat78 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_Splat0 : sampler;

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

var<private> u_xlat52 : f32;

var<private> u_xlat26 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat27 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_590 : UnityPerDraw;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlatb82 : bool;

@group(1) @binding(4) var<uniform> x_733 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(5) var<uniform> x_2045 : LightCookies;

@group(0) @binding(8) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat84 : f32;

var<private> u_xlat85 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu52 : u32;

var<private> u_xlatu83 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati83 : i32;

@group(1) @binding(1) var<uniform> x_2520 : AdditionalLights;

var<private> u_xlat59 : f32;

var<private> u_xlati85 : i32;

var<private> u_xlatb86 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat87 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(9) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_LinearClamp : sampler;

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
  var x_2130 : f32;
  var x_2141 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2656 : f32;
  var x_2666 : f32;
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
  var x_4237 : f32;
  var x_4250 : f32;
  var x_4298 : f32;
  var x_4309 : vec3<f32>;
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
  u_xlat1.w = 1.0f;
  let x_592 : vec4<f32> = x_590.unity_SHAr;
  let x_593 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_592, x_593);
  let x_597 : vec4<f32> = x_590.unity_SHAg;
  let x_598 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_597, x_598);
  let x_602 : vec4<f32> = x_590.unity_SHAb;
  let x_603 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_602, x_603);
  let x_606 : vec4<f32> = u_xlat1;
  let x_608 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_606.y, x_606.z, x_606.z, x_606.x) * vec4<f32>(x_608.x, x_608.y, x_608.z, x_608.z));
  let x_612 : vec4<f32> = x_590.unity_SHBr;
  let x_613 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_612, x_613);
  let x_617 : vec4<f32> = x_590.unity_SHBg;
  let x_618 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_617, x_618);
  let x_622 : vec4<f32> = x_590.unity_SHBb;
  let x_623 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_622, x_623);
  let x_627 : f32 = u_xlat1.y;
  let x_629 : f32 = u_xlat1.y;
  u_xlat79 = (x_627 * x_629);
  let x_632 : f32 = u_xlat1.x;
  let x_634 : f32 = u_xlat1.x;
  let x_636 : f32 = u_xlat79;
  u_xlat79 = ((x_632 * x_634) + -(x_636));
  let x_641 : vec4<f32> = x_590.unity_SHC;
  let x_643 : f32 = u_xlat79;
  let x_646 : vec4<f32> = u_xlat6;
  let x_648 : vec3<f32> = ((vec3<f32>(x_641.x, x_641.y, x_641.z) * vec3<f32>(x_643, x_643, x_643)) + vec3<f32>(x_646.x, x_646.y, x_646.z));
  let x_649 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_648.x, x_648.y, x_648.z, x_649.w);
  let x_651 : vec4<f32> = u_xlat3;
  let x_653 : vec4<f32> = u_xlat4;
  let x_655 : vec3<f32> = (vec3<f32>(x_651.x, x_651.y, x_651.z) + vec3<f32>(x_653.x, x_653.y, x_653.z));
  let x_656 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_658 : vec4<f32> = u_xlat3;
  let x_661 : vec3<f32> = max(vec3<f32>(x_658.x, x_658.y, x_658.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_662 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
  let x_665 : f32 = u_xlat0.x;
  u_xlat79 = ((-(x_665) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_671 : f32 = u_xlat52;
  let x_672 : f32 = u_xlat79;
  u_xlat80 = (x_671 + -(x_672));
  let x_675 : f32 = u_xlat79;
  let x_677 : vec4<f32> = u_xlat5;
  let x_679 : vec3<f32> = (vec3<f32>(x_675, x_675, x_675) * vec3<f32>(x_677.x, x_677.y, x_677.z));
  let x_680 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_682 : vec4<f32> = u_xlat5;
  let x_686 : vec3<f32> = (vec3<f32>(x_682.x, x_682.y, x_682.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_687 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_686.x, x_686.y, x_686.z, x_687.w);
  let x_689 : vec3<f32> = u_xlat0;
  let x_691 : vec4<f32> = u_xlat5;
  let x_696 : vec3<f32> = ((vec3<f32>(x_689.x, x_689.x, x_689.x) * vec3<f32>(x_691.x, x_691.y, x_691.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_697 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
  let x_699 : f32 = u_xlat52;
  u_xlat0.x = (-(x_699) + 1.0f);
  let x_704 : f32 = u_xlat0.x;
  let x_706 : f32 = u_xlat0.x;
  u_xlat52 = (x_704 * x_706);
  let x_708 : f32 = u_xlat52;
  u_xlat52 = max(x_708, 0.0078125f);
  let x_711 : f32 = u_xlat52;
  let x_712 : f32 = u_xlat52;
  u_xlat79 = (x_711 * x_712);
  let x_714 : f32 = u_xlat80;
  u_xlat80 = (x_714 + 1.0f);
  let x_716 : f32 = u_xlat80;
  u_xlat80 = clamp(x_716, 0.0f, 1.0f);
  let x_719 : f32 = u_xlat52;
  u_xlat81 = ((x_719 * 4.0f) + 2.0f);
  let x_723 : f32 = u_xlat26;
  u_xlat26 = min(x_723, 1.0f);
  let x_735 : f32 = x_733.x_MainLightShadowParams.y;
  u_xlatb82 = (0.0f < x_735);
  let x_737 : bool = u_xlatb82;
  if (x_737) {
    let x_741 : f32 = x_733.x_MainLightShadowParams.y;
    u_xlatb82 = (x_741 == 1.0f);
    let x_743 : bool = u_xlatb82;
    if (x_743) {
      let x_747 : vec4<f32> = vs_TEXCOORD8;
      let x_750 : vec4<f32> = x_733.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_747.x, x_747.y, x_747.x, x_747.y) + x_750);
      let x_754 : vec4<f32> = u_xlat6;
      let x_755 : vec2<f32> = vec2<f32>(x_754.x, x_754.y);
      let x_758 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_755.x, x_755.y, x_758);
      let x_770 : vec3<f32> = txVec0;
      let x_772 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_770.xy, x_770.z);
      u_xlat7.x = x_772;
      let x_775 : vec4<f32> = u_xlat6;
      let x_776 : vec2<f32> = vec2<f32>(x_775.z, x_775.w);
      let x_778 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_776.x, x_776.y, x_778);
      let x_785 : vec3<f32> = txVec1;
      let x_787 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_785.xy, x_785.z);
      u_xlat7.y = x_787;
      let x_789 : vec4<f32> = vs_TEXCOORD8;
      let x_792 : vec4<f32> = x_733.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_789.x, x_789.y, x_789.x, x_789.y) + x_792);
      let x_795 : vec4<f32> = u_xlat6;
      let x_796 : vec2<f32> = vec2<f32>(x_795.x, x_795.y);
      let x_798 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_796.x, x_796.y, x_798);
      let x_805 : vec3<f32> = txVec2;
      let x_807 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_805.xy, x_805.z);
      u_xlat7.z = x_807;
      let x_810 : vec4<f32> = u_xlat6;
      let x_811 : vec2<f32> = vec2<f32>(x_810.z, x_810.w);
      let x_813 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_811.x, x_811.y, x_813);
      let x_820 : vec3<f32> = txVec3;
      let x_822 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_820.xy, x_820.z);
      u_xlat7.w = x_822;
      let x_825 : vec4<f32> = u_xlat7;
      u_xlat82 = dot(x_825, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_832 : f32 = x_733.x_MainLightShadowParams.y;
      u_xlatb83 = (x_832 == 2.0f);
      let x_834 : bool = u_xlatb83;
      if (x_834) {
        let x_837 : vec4<f32> = vs_TEXCOORD8;
        let x_840 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_843 : vec2<f32> = ((vec2<f32>(x_837.x, x_837.y) * vec2<f32>(x_840.z, x_840.w)) + vec2<f32>(0.5f, 0.5f));
        let x_844 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_843.x, x_843.y, x_844.z, x_844.w);
        let x_846 : vec4<f32> = u_xlat6;
        let x_848 : vec2<f32> = floor(vec2<f32>(x_846.x, x_846.y));
        let x_849 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_848.x, x_848.y, x_849.z, x_849.w);
        let x_853 : vec4<f32> = vs_TEXCOORD8;
        let x_856 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_859 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_853.x, x_853.y) * vec2<f32>(x_856.z, x_856.w)) + -(vec2<f32>(x_859.x, x_859.y)));
        let x_863 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_863.x, x_863.x, x_863.y, x_863.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_867 : vec4<f32> = u_xlat7;
        let x_869 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_867.x, x_867.x, x_867.z, x_867.z) * vec4<f32>(x_869.x, x_869.x, x_869.z, x_869.z));
        let x_872 : vec4<f32> = u_xlat8;
        let x_876 : vec2<f32> = (vec2<f32>(x_872.y, x_872.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_877 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_876.x, x_877.y, x_876.y, x_877.w);
        let x_879 : vec4<f32> = u_xlat8;
        let x_882 : vec2<f32> = u_xlat58;
        let x_884 : vec2<f32> = ((vec2<f32>(x_879.x, x_879.z) * vec2<f32>(0.5f, 0.5f)) + -(x_882));
        let x_885 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_884.x, x_884.y, x_885.z, x_885.w);
        let x_888 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_888) + vec2<f32>(1.0f, 1.0f));
        let x_892 : vec2<f32> = u_xlat58;
        let x_894 : vec2<f32> = min(x_892, vec2<f32>(0.0f, 0.0f));
        let x_895 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_894.x, x_894.y, x_895.z, x_895.w);
        let x_897 : vec4<f32> = u_xlat9;
        let x_900 : vec4<f32> = u_xlat9;
        let x_903 : vec2<f32> = u_xlat60;
        let x_904 : vec2<f32> = ((-(vec2<f32>(x_897.x, x_897.y)) * vec2<f32>(x_900.x, x_900.y)) + x_903);
        let x_905 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_904.x, x_904.y, x_905.z, x_905.w);
        let x_907 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_907, vec2<f32>(0.0f, 0.0f));
        let x_909 : vec2<f32> = u_xlat58;
        let x_911 : vec2<f32> = u_xlat58;
        let x_913 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_909) * x_911) + vec2<f32>(x_913.y, x_913.w));
        let x_916 : vec4<f32> = u_xlat9;
        let x_918 : vec2<f32> = (vec2<f32>(x_916.x, x_916.y) + vec2<f32>(1.0f, 1.0f));
        let x_919 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_918.x, x_918.y, x_919.z, x_919.w);
        let x_921 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_921 + vec2<f32>(1.0f, 1.0f));
        let x_923 : vec4<f32> = u_xlat8;
        let x_927 : vec2<f32> = (vec2<f32>(x_923.x, x_923.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_928 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_927.x, x_927.y, x_928.z, x_928.w);
        let x_930 : vec2<f32> = u_xlat60;
        let x_931 : vec2<f32> = (x_930 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_932 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_931.x, x_931.y, x_932.z, x_932.w);
        let x_934 : vec4<f32> = u_xlat9;
        let x_936 : vec2<f32> = (vec2<f32>(x_934.x, x_934.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_937 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_936.x, x_936.y, x_937.z, x_937.w);
        let x_939 : vec2<f32> = u_xlat58;
        let x_940 : vec2<f32> = (x_939 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_941 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_940.x, x_940.y, x_941.z, x_941.w);
        let x_943 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_943.y, x_943.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_947 : f32 = u_xlat9.x;
        u_xlat10.z = x_947;
        let x_950 : f32 = u_xlat58.x;
        u_xlat10.w = x_950;
        let x_953 : f32 = u_xlat11.x;
        u_xlat8.z = x_953;
        let x_956 : f32 = u_xlat7.x;
        u_xlat8.w = x_956;
        let x_958 : vec4<f32> = u_xlat8;
        let x_960 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_958.z, x_958.w, x_958.x, x_958.z) + vec4<f32>(x_960.z, x_960.w, x_960.x, x_960.z));
        let x_964 : f32 = u_xlat10.y;
        u_xlat9.z = x_964;
        let x_967 : f32 = u_xlat58.y;
        u_xlat9.w = x_967;
        let x_970 : f32 = u_xlat8.y;
        u_xlat11.z = x_970;
        let x_973 : f32 = u_xlat7.z;
        u_xlat11.w = x_973;
        let x_975 : vec4<f32> = u_xlat9;
        let x_977 : vec4<f32> = u_xlat11;
        let x_979 : vec3<f32> = (vec3<f32>(x_975.z, x_975.y, x_975.w) + vec3<f32>(x_977.z, x_977.y, x_977.w));
        let x_980 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_979.x, x_979.y, x_979.z, x_980.w);
        let x_982 : vec4<f32> = u_xlat8;
        let x_984 : vec4<f32> = u_xlat12;
        let x_986 : vec3<f32> = (vec3<f32>(x_982.x, x_982.z, x_982.w) / vec3<f32>(x_984.z, x_984.w, x_984.y));
        let x_987 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_986.x, x_986.y, x_986.z, x_987.w);
        let x_989 : vec4<f32> = u_xlat8;
        let x_995 : vec3<f32> = (vec3<f32>(x_989.x, x_989.y, x_989.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_996 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_995.x, x_995.y, x_995.z, x_996.w);
        let x_998 : vec4<f32> = u_xlat11;
        let x_1000 : vec4<f32> = u_xlat7;
        let x_1002 : vec3<f32> = (vec3<f32>(x_998.z, x_998.y, x_998.w) / vec3<f32>(x_1000.x, x_1000.y, x_1000.z));
        let x_1003 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1002.x, x_1002.y, x_1002.z, x_1003.w);
        let x_1005 : vec4<f32> = u_xlat9;
        let x_1007 : vec3<f32> = (vec3<f32>(x_1005.x, x_1005.y, x_1005.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1008 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1007.x, x_1007.y, x_1007.z, x_1008.w);
        let x_1010 : vec4<f32> = u_xlat8;
        let x_1013 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1015 : vec3<f32> = (vec3<f32>(x_1010.y, x_1010.x, x_1010.z) * vec3<f32>(x_1013.x, x_1013.x, x_1013.x));
        let x_1016 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1015.x, x_1015.y, x_1015.z, x_1016.w);
        let x_1018 : vec4<f32> = u_xlat9;
        let x_1021 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1023 : vec3<f32> = (vec3<f32>(x_1018.x, x_1018.y, x_1018.z) * vec3<f32>(x_1021.y, x_1021.y, x_1021.y));
        let x_1024 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1023.x, x_1023.y, x_1023.z, x_1024.w);
        let x_1027 : f32 = u_xlat9.x;
        u_xlat8.w = x_1027;
        let x_1029 : vec4<f32> = u_xlat6;
        let x_1032 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1035 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1029.x, x_1029.y, x_1029.x, x_1029.y) * vec4<f32>(x_1032.x, x_1032.y, x_1032.x, x_1032.y)) + vec4<f32>(x_1035.y, x_1035.w, x_1035.x, x_1035.w));
        let x_1038 : vec4<f32> = u_xlat6;
        let x_1041 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1044 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_1038.x, x_1038.y) * vec2<f32>(x_1041.x, x_1041.y)) + vec2<f32>(x_1044.z, x_1044.w));
        let x_1048 : f32 = u_xlat8.y;
        u_xlat9.w = x_1048;
        let x_1050 : vec4<f32> = u_xlat9;
        let x_1051 : vec2<f32> = vec2<f32>(x_1050.y, x_1050.z);
        let x_1052 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1052.x, x_1051.x, x_1052.z, x_1051.y);
        let x_1054 : vec4<f32> = u_xlat6;
        let x_1057 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1060 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1054.x, x_1054.y, x_1054.x, x_1054.y) * vec4<f32>(x_1057.x, x_1057.y, x_1057.x, x_1057.y)) + vec4<f32>(x_1060.x, x_1060.y, x_1060.z, x_1060.y));
        let x_1063 : vec4<f32> = u_xlat6;
        let x_1066 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1069 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1063.x, x_1063.y, x_1063.x, x_1063.y) * vec4<f32>(x_1066.x, x_1066.y, x_1066.x, x_1066.y)) + vec4<f32>(x_1069.w, x_1069.y, x_1069.w, x_1069.z));
        let x_1072 : vec4<f32> = u_xlat6;
        let x_1075 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1078 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1072.x, x_1072.y, x_1072.x, x_1072.y) * vec4<f32>(x_1075.x, x_1075.y, x_1075.x, x_1075.y)) + vec4<f32>(x_1078.x, x_1078.w, x_1078.z, x_1078.w));
        let x_1081 : vec4<f32> = u_xlat7;
        let x_1083 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1081.x, x_1081.x, x_1081.x, x_1081.y) * vec4<f32>(x_1083.z, x_1083.w, x_1083.y, x_1083.z));
        let x_1087 : vec4<f32> = u_xlat7;
        let x_1089 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1087.y, x_1087.y, x_1087.z, x_1087.z) * x_1089);
        let x_1093 : f32 = u_xlat7.z;
        let x_1095 : f32 = u_xlat12.y;
        u_xlat83 = (x_1093 * x_1095);
        let x_1098 : vec4<f32> = u_xlat10;
        let x_1099 : vec2<f32> = vec2<f32>(x_1098.x, x_1098.y);
        let x_1101 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1099.x, x_1099.y, x_1101);
        let x_1108 : vec3<f32> = txVec4;
        let x_1110 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1108.xy, x_1108.z);
        u_xlat6.x = x_1110;
        let x_1113 : vec4<f32> = u_xlat10;
        let x_1114 : vec2<f32> = vec2<f32>(x_1113.z, x_1113.w);
        let x_1116 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1114.x, x_1114.y, x_1116);
        let x_1124 : vec3<f32> = txVec5;
        let x_1126 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1124.xy, x_1124.z);
        u_xlat32 = x_1126;
        let x_1127 : f32 = u_xlat32;
        let x_1129 : f32 = u_xlat13.y;
        u_xlat32 = (x_1127 * x_1129);
        let x_1132 : f32 = u_xlat13.x;
        let x_1134 : f32 = u_xlat6.x;
        let x_1136 : f32 = u_xlat32;
        u_xlat6.x = ((x_1132 * x_1134) + x_1136);
        let x_1140 : vec2<f32> = u_xlat58;
        let x_1142 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1140.x, x_1140.y, x_1142);
        let x_1149 : vec3<f32> = txVec6;
        let x_1151 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1149.xy, x_1149.z);
        u_xlat32 = x_1151;
        let x_1153 : f32 = u_xlat13.z;
        let x_1154 : f32 = u_xlat32;
        let x_1157 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1153 * x_1154) + x_1157);
        let x_1161 : vec4<f32> = u_xlat9;
        let x_1162 : vec2<f32> = vec2<f32>(x_1161.x, x_1161.y);
        let x_1164 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1162.x, x_1162.y, x_1164);
        let x_1171 : vec3<f32> = txVec7;
        let x_1173 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1171.xy, x_1171.z);
        u_xlat32 = x_1173;
        let x_1175 : f32 = u_xlat13.w;
        let x_1176 : f32 = u_xlat32;
        let x_1179 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1175 * x_1176) + x_1179);
        let x_1183 : vec4<f32> = u_xlat11;
        let x_1184 : vec2<f32> = vec2<f32>(x_1183.x, x_1183.y);
        let x_1186 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1184.x, x_1184.y, x_1186);
        let x_1193 : vec3<f32> = txVec8;
        let x_1195 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1193.xy, x_1193.z);
        u_xlat32 = x_1195;
        let x_1197 : f32 = u_xlat14.x;
        let x_1198 : f32 = u_xlat32;
        let x_1201 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1197 * x_1198) + x_1201);
        let x_1205 : vec4<f32> = u_xlat11;
        let x_1206 : vec2<f32> = vec2<f32>(x_1205.z, x_1205.w);
        let x_1208 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1206.x, x_1206.y, x_1208);
        let x_1215 : vec3<f32> = txVec9;
        let x_1217 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1215.xy, x_1215.z);
        u_xlat32 = x_1217;
        let x_1219 : f32 = u_xlat14.y;
        let x_1220 : f32 = u_xlat32;
        let x_1223 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1219 * x_1220) + x_1223);
        let x_1227 : vec4<f32> = u_xlat9;
        let x_1228 : vec2<f32> = vec2<f32>(x_1227.z, x_1227.w);
        let x_1230 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1228.x, x_1228.y, x_1230);
        let x_1237 : vec3<f32> = txVec10;
        let x_1239 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1237.xy, x_1237.z);
        u_xlat32 = x_1239;
        let x_1241 : f32 = u_xlat14.z;
        let x_1242 : f32 = u_xlat32;
        let x_1245 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1241 * x_1242) + x_1245);
        let x_1249 : vec4<f32> = u_xlat8;
        let x_1250 : vec2<f32> = vec2<f32>(x_1249.x, x_1249.y);
        let x_1252 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1250.x, x_1250.y, x_1252);
        let x_1259 : vec3<f32> = txVec11;
        let x_1261 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1259.xy, x_1259.z);
        u_xlat32 = x_1261;
        let x_1263 : f32 = u_xlat14.w;
        let x_1264 : f32 = u_xlat32;
        let x_1267 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1263 * x_1264) + x_1267);
        let x_1271 : vec4<f32> = u_xlat8;
        let x_1272 : vec2<f32> = vec2<f32>(x_1271.z, x_1271.w);
        let x_1274 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1272.x, x_1272.y, x_1274);
        let x_1281 : vec3<f32> = txVec12;
        let x_1283 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1281.xy, x_1281.z);
        u_xlat32 = x_1283;
        let x_1284 : f32 = u_xlat83;
        let x_1285 : f32 = u_xlat32;
        let x_1288 : f32 = u_xlat6.x;
        u_xlat82 = ((x_1284 * x_1285) + x_1288);
      } else {
        let x_1291 : vec4<f32> = vs_TEXCOORD8;
        let x_1294 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1297 : vec2<f32> = ((vec2<f32>(x_1291.x, x_1291.y) * vec2<f32>(x_1294.z, x_1294.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1298 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1297.x, x_1297.y, x_1298.z, x_1298.w);
        let x_1300 : vec4<f32> = u_xlat6;
        let x_1302 : vec2<f32> = floor(vec2<f32>(x_1300.x, x_1300.y));
        let x_1303 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1302.x, x_1302.y, x_1303.z, x_1303.w);
        let x_1305 : vec4<f32> = vs_TEXCOORD8;
        let x_1308 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1311 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1305.x, x_1305.y) * vec2<f32>(x_1308.z, x_1308.w)) + -(vec2<f32>(x_1311.x, x_1311.y)));
        let x_1315 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1315.x, x_1315.x, x_1315.y, x_1315.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1318 : vec4<f32> = u_xlat7;
        let x_1320 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1318.x, x_1318.x, x_1318.z, x_1318.z) * vec4<f32>(x_1320.x, x_1320.x, x_1320.z, x_1320.z));
        let x_1323 : vec4<f32> = u_xlat8;
        let x_1327 : vec2<f32> = (vec2<f32>(x_1323.y, x_1323.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1328 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1328.x, x_1327.x, x_1328.z, x_1327.y);
        let x_1330 : vec4<f32> = u_xlat8;
        let x_1333 : vec2<f32> = u_xlat58;
        let x_1335 : vec2<f32> = ((vec2<f32>(x_1330.x, x_1330.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1333));
        let x_1336 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1335.x, x_1336.y, x_1335.y, x_1336.w);
        let x_1338 : vec2<f32> = u_xlat58;
        let x_1340 : vec2<f32> = (-(x_1338) + vec2<f32>(1.0f, 1.0f));
        let x_1341 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1340.x, x_1340.y, x_1341.z, x_1341.w);
        let x_1343 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1343, vec2<f32>(0.0f, 0.0f));
        let x_1345 : vec2<f32> = u_xlat60;
        let x_1347 : vec2<f32> = u_xlat60;
        let x_1349 : vec4<f32> = u_xlat8;
        let x_1351 : vec2<f32> = ((-(x_1345) * x_1347) + vec2<f32>(x_1349.x, x_1349.y));
        let x_1352 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1351.x, x_1351.y, x_1352.z, x_1352.w);
        let x_1354 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1354, vec2<f32>(0.0f, 0.0f));
        let x_1357 : vec2<f32> = u_xlat60;
        let x_1359 : vec2<f32> = u_xlat60;
        let x_1361 : vec4<f32> = u_xlat7;
        let x_1363 : vec2<f32> = ((-(x_1357) * x_1359) + vec2<f32>(x_1361.y, x_1361.w));
        let x_1364 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1363.x, x_1364.y, x_1363.y);
        let x_1366 : vec4<f32> = u_xlat8;
        let x_1369 : vec2<f32> = (vec2<f32>(x_1366.x, x_1366.y) + vec2<f32>(2.0f, 2.0f));
        let x_1370 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1369.x, x_1369.y, x_1370.z, x_1370.w);
        let x_1372 : vec3<f32> = u_xlat33;
        let x_1374 : vec2<f32> = (vec2<f32>(x_1372.x, x_1372.z) + vec2<f32>(2.0f, 2.0f));
        let x_1375 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1375.x, x_1374.x, x_1375.z, x_1374.y);
        let x_1378 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1378 * 0.08163200318813323975f);
        let x_1382 : vec4<f32> = u_xlat7;
        let x_1385 : vec3<f32> = (vec3<f32>(x_1382.z, x_1382.x, x_1382.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1386 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1385.x, x_1385.y, x_1385.z, x_1386.w);
        let x_1388 : vec4<f32> = u_xlat8;
        let x_1391 : vec2<f32> = (vec2<f32>(x_1388.x, x_1388.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1392 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1391.x, x_1391.y, x_1392.z, x_1392.w);
        let x_1395 : f32 = u_xlat11.y;
        u_xlat10.x = x_1395;
        let x_1397 : vec2<f32> = u_xlat58;
        let x_1404 : vec2<f32> = ((vec2<f32>(x_1397.x, x_1397.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1405 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1405.x, x_1404.x, x_1405.z, x_1404.y);
        let x_1407 : vec2<f32> = u_xlat58;
        let x_1411 : vec2<f32> = ((vec2<f32>(x_1407.x, x_1407.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1412 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1411.x, x_1412.y, x_1411.y, x_1412.w);
        let x_1415 : f32 = u_xlat7.x;
        u_xlat8.y = x_1415;
        let x_1418 : f32 = u_xlat9.y;
        u_xlat8.w = x_1418;
        let x_1420 : vec4<f32> = u_xlat8;
        let x_1421 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1420 + x_1421);
        let x_1423 : vec2<f32> = u_xlat58;
        let x_1426 : vec2<f32> = ((vec2<f32>(x_1423.y, x_1423.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1427 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1427.x, x_1426.x, x_1427.z, x_1426.y);
        let x_1429 : vec2<f32> = u_xlat58;
        let x_1432 : vec2<f32> = ((vec2<f32>(x_1429.y, x_1429.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1433 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1432.x, x_1433.y, x_1432.y, x_1433.w);
        let x_1436 : f32 = u_xlat7.y;
        u_xlat9.y = x_1436;
        let x_1438 : vec4<f32> = u_xlat9;
        let x_1439 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1438 + x_1439);
        let x_1441 : vec4<f32> = u_xlat8;
        let x_1442 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1441 / x_1442);
        let x_1444 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1444 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1450 : vec4<f32> = u_xlat9;
        let x_1451 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1450 / x_1451);
        let x_1453 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1453 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1455 : vec4<f32> = u_xlat8;
        let x_1458 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1455.w, x_1455.x, x_1455.y, x_1455.z) * vec4<f32>(x_1458.x, x_1458.x, x_1458.x, x_1458.x));
        let x_1461 : vec4<f32> = u_xlat9;
        let x_1464 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1461.x, x_1461.w, x_1461.y, x_1461.z) * vec4<f32>(x_1464.y, x_1464.y, x_1464.y, x_1464.y));
        let x_1467 : vec4<f32> = u_xlat8;
        let x_1468 : vec3<f32> = vec3<f32>(x_1467.y, x_1467.z, x_1467.w);
        let x_1469 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1468.x, x_1469.y, x_1468.y, x_1468.z);
        let x_1472 : f32 = u_xlat9.x;
        u_xlat11.y = x_1472;
        let x_1474 : vec4<f32> = u_xlat6;
        let x_1477 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1480 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1474.x, x_1474.y, x_1474.x, x_1474.y) * vec4<f32>(x_1477.x, x_1477.y, x_1477.x, x_1477.y)) + vec4<f32>(x_1480.x, x_1480.y, x_1480.z, x_1480.y));
        let x_1483 : vec4<f32> = u_xlat6;
        let x_1486 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1489 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1483.x, x_1483.y) * vec2<f32>(x_1486.x, x_1486.y)) + vec2<f32>(x_1489.w, x_1489.y));
        let x_1493 : f32 = u_xlat11.y;
        u_xlat8.y = x_1493;
        let x_1496 : f32 = u_xlat9.z;
        u_xlat11.y = x_1496;
        let x_1498 : vec4<f32> = u_xlat6;
        let x_1501 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1504 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1498.x, x_1498.y, x_1498.x, x_1498.y) * vec4<f32>(x_1501.x, x_1501.y, x_1501.x, x_1501.y)) + vec4<f32>(x_1504.x, x_1504.y, x_1504.z, x_1504.y));
        let x_1507 : vec4<f32> = u_xlat6;
        let x_1510 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1513 : vec4<f32> = u_xlat11;
        let x_1515 : vec2<f32> = ((vec2<f32>(x_1507.x, x_1507.y) * vec2<f32>(x_1510.x, x_1510.y)) + vec2<f32>(x_1513.w, x_1513.y));
        let x_1516 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1515.x, x_1515.y, x_1516.z, x_1516.w);
        let x_1519 : f32 = u_xlat11.y;
        u_xlat8.z = x_1519;
        let x_1522 : vec4<f32> = u_xlat6;
        let x_1525 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1528 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1522.x, x_1522.y, x_1522.x, x_1522.y) * vec4<f32>(x_1525.x, x_1525.y, x_1525.x, x_1525.y)) + vec4<f32>(x_1528.x, x_1528.y, x_1528.x, x_1528.z));
        let x_1532 : f32 = u_xlat9.w;
        u_xlat11.y = x_1532;
        let x_1535 : vec4<f32> = u_xlat6;
        let x_1538 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1541 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1535.x, x_1535.y, x_1535.x, x_1535.y) * vec4<f32>(x_1538.x, x_1538.y, x_1538.x, x_1538.y)) + vec4<f32>(x_1541.x, x_1541.y, x_1541.z, x_1541.y));
        let x_1545 : vec4<f32> = u_xlat6;
        let x_1548 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1551 : vec4<f32> = u_xlat11;
        u_xlat34 = ((vec2<f32>(x_1545.x, x_1545.y) * vec2<f32>(x_1548.x, x_1548.y)) + vec2<f32>(x_1551.w, x_1551.y));
        let x_1555 : f32 = u_xlat11.y;
        u_xlat8.w = x_1555;
        let x_1558 : vec4<f32> = u_xlat6;
        let x_1561 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1564 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1558.x, x_1558.y) * vec2<f32>(x_1561.x, x_1561.y)) + vec2<f32>(x_1564.x, x_1564.w));
        let x_1567 : vec4<f32> = u_xlat11;
        let x_1568 : vec3<f32> = vec3<f32>(x_1567.x, x_1567.z, x_1567.w);
        let x_1569 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1568.x, x_1569.y, x_1568.y, x_1568.z);
        let x_1571 : vec4<f32> = u_xlat6;
        let x_1574 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1577 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1571.x, x_1571.y, x_1571.x, x_1571.y) * vec4<f32>(x_1574.x, x_1574.y, x_1574.x, x_1574.y)) + vec4<f32>(x_1577.x, x_1577.y, x_1577.z, x_1577.y));
        let x_1581 : vec4<f32> = u_xlat6;
        let x_1584 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1587 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1581.x, x_1581.y) * vec2<f32>(x_1584.x, x_1584.y)) + vec2<f32>(x_1587.w, x_1587.y));
        let x_1591 : f32 = u_xlat8.x;
        u_xlat9.x = x_1591;
        let x_1593 : vec4<f32> = u_xlat6;
        let x_1596 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1599 : vec4<f32> = u_xlat9;
        let x_1601 : vec2<f32> = ((vec2<f32>(x_1593.x, x_1593.y) * vec2<f32>(x_1596.x, x_1596.y)) + vec2<f32>(x_1599.x, x_1599.y));
        let x_1602 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1601.x, x_1601.y, x_1602.z, x_1602.w);
        let x_1605 : vec4<f32> = u_xlat7;
        let x_1607 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1605.x, x_1605.x, x_1605.x, x_1605.x) * x_1607);
        let x_1610 : vec4<f32> = u_xlat7;
        let x_1612 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1610.y, x_1610.y, x_1610.y, x_1610.y) * x_1612);
        let x_1615 : vec4<f32> = u_xlat7;
        let x_1617 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1615.z, x_1615.z, x_1615.z, x_1615.z) * x_1617);
        let x_1619 : vec4<f32> = u_xlat7;
        let x_1621 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1619.w, x_1619.w, x_1619.w, x_1619.w) * x_1621);
        let x_1624 : vec4<f32> = u_xlat12;
        let x_1625 : vec2<f32> = vec2<f32>(x_1624.x, x_1624.y);
        let x_1627 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1625.x, x_1625.y, x_1627);
        let x_1634 : vec3<f32> = txVec13;
        let x_1636 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1634.xy, x_1634.z);
        u_xlat83 = x_1636;
        let x_1638 : vec4<f32> = u_xlat12;
        let x_1639 : vec2<f32> = vec2<f32>(x_1638.z, x_1638.w);
        let x_1641 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1639.x, x_1639.y, x_1641);
        let x_1648 : vec3<f32> = txVec14;
        let x_1650 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1648.xy, x_1648.z);
        u_xlat8.x = x_1650;
        let x_1653 : f32 = u_xlat8.x;
        let x_1655 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1653 * x_1655);
        let x_1659 : f32 = u_xlat17.x;
        let x_1660 : f32 = u_xlat83;
        let x_1663 : f32 = u_xlat8.x;
        u_xlat83 = ((x_1659 * x_1660) + x_1663);
        let x_1666 : vec2<f32> = u_xlat58;
        let x_1668 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1666.x, x_1666.y, x_1668);
        let x_1675 : vec3<f32> = txVec15;
        let x_1677 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1675.xy, x_1675.z);
        u_xlat58.x = x_1677;
        let x_1680 : f32 = u_xlat17.z;
        let x_1682 : f32 = u_xlat58.x;
        let x_1684 : f32 = u_xlat83;
        u_xlat83 = ((x_1680 * x_1682) + x_1684);
        let x_1687 : vec4<f32> = u_xlat15;
        let x_1688 : vec2<f32> = vec2<f32>(x_1687.x, x_1687.y);
        let x_1690 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1688.x, x_1688.y, x_1690);
        let x_1697 : vec3<f32> = txVec16;
        let x_1699 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1697.xy, x_1697.z);
        u_xlat58.x = x_1699;
        let x_1702 : f32 = u_xlat17.w;
        let x_1704 : f32 = u_xlat58.x;
        let x_1706 : f32 = u_xlat83;
        u_xlat83 = ((x_1702 * x_1704) + x_1706);
        let x_1709 : vec4<f32> = u_xlat13;
        let x_1710 : vec2<f32> = vec2<f32>(x_1709.x, x_1709.y);
        let x_1712 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1710.x, x_1710.y, x_1712);
        let x_1719 : vec3<f32> = txVec17;
        let x_1721 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1719.xy, x_1719.z);
        u_xlat58.x = x_1721;
        let x_1724 : f32 = u_xlat18.x;
        let x_1726 : f32 = u_xlat58.x;
        let x_1728 : f32 = u_xlat83;
        u_xlat83 = ((x_1724 * x_1726) + x_1728);
        let x_1731 : vec4<f32> = u_xlat13;
        let x_1732 : vec2<f32> = vec2<f32>(x_1731.z, x_1731.w);
        let x_1734 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1732.x, x_1732.y, x_1734);
        let x_1741 : vec3<f32> = txVec18;
        let x_1743 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1741.xy, x_1741.z);
        u_xlat58.x = x_1743;
        let x_1746 : f32 = u_xlat18.y;
        let x_1748 : f32 = u_xlat58.x;
        let x_1750 : f32 = u_xlat83;
        u_xlat83 = ((x_1746 * x_1748) + x_1750);
        let x_1753 : vec4<f32> = u_xlat14;
        let x_1754 : vec2<f32> = vec2<f32>(x_1753.x, x_1753.y);
        let x_1756 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1754.x, x_1754.y, x_1756);
        let x_1763 : vec3<f32> = txVec19;
        let x_1765 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1763.xy, x_1763.z);
        u_xlat58.x = x_1765;
        let x_1768 : f32 = u_xlat18.z;
        let x_1770 : f32 = u_xlat58.x;
        let x_1772 : f32 = u_xlat83;
        u_xlat83 = ((x_1768 * x_1770) + x_1772);
        let x_1775 : vec4<f32> = u_xlat15;
        let x_1776 : vec2<f32> = vec2<f32>(x_1775.z, x_1775.w);
        let x_1778 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1776.x, x_1776.y, x_1778);
        let x_1785 : vec3<f32> = txVec20;
        let x_1787 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1785.xy, x_1785.z);
        u_xlat58.x = x_1787;
        let x_1790 : f32 = u_xlat18.w;
        let x_1792 : f32 = u_xlat58.x;
        let x_1794 : f32 = u_xlat83;
        u_xlat83 = ((x_1790 * x_1792) + x_1794);
        let x_1797 : vec4<f32> = u_xlat16;
        let x_1798 : vec2<f32> = vec2<f32>(x_1797.x, x_1797.y);
        let x_1800 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1798.x, x_1798.y, x_1800);
        let x_1807 : vec3<f32> = txVec21;
        let x_1809 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1807.xy, x_1807.z);
        u_xlat58.x = x_1809;
        let x_1812 : f32 = u_xlat19.x;
        let x_1814 : f32 = u_xlat58.x;
        let x_1816 : f32 = u_xlat83;
        u_xlat83 = ((x_1812 * x_1814) + x_1816);
        let x_1819 : vec4<f32> = u_xlat16;
        let x_1820 : vec2<f32> = vec2<f32>(x_1819.z, x_1819.w);
        let x_1822 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1820.x, x_1820.y, x_1822);
        let x_1829 : vec3<f32> = txVec22;
        let x_1831 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1829.xy, x_1829.z);
        u_xlat58.x = x_1831;
        let x_1834 : f32 = u_xlat19.y;
        let x_1836 : f32 = u_xlat58.x;
        let x_1838 : f32 = u_xlat83;
        u_xlat83 = ((x_1834 * x_1836) + x_1838);
        let x_1841 : vec2<f32> = u_xlat34;
        let x_1843 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1841.x, x_1841.y, x_1843);
        let x_1850 : vec3<f32> = txVec23;
        let x_1852 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1850.xy, x_1850.z);
        u_xlat58.x = x_1852;
        let x_1855 : f32 = u_xlat19.z;
        let x_1857 : f32 = u_xlat58.x;
        let x_1859 : f32 = u_xlat83;
        u_xlat83 = ((x_1855 * x_1857) + x_1859);
        let x_1862 : vec2<f32> = u_xlat66;
        let x_1864 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1862.x, x_1862.y, x_1864);
        let x_1871 : vec3<f32> = txVec24;
        let x_1873 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1871.xy, x_1871.z);
        u_xlat58.x = x_1873;
        let x_1876 : f32 = u_xlat19.w;
        let x_1878 : f32 = u_xlat58.x;
        let x_1880 : f32 = u_xlat83;
        u_xlat83 = ((x_1876 * x_1878) + x_1880);
        let x_1883 : vec4<f32> = u_xlat11;
        let x_1884 : vec2<f32> = vec2<f32>(x_1883.x, x_1883.y);
        let x_1886 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1884.x, x_1884.y, x_1886);
        let x_1893 : vec3<f32> = txVec25;
        let x_1895 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1893.xy, x_1893.z);
        u_xlat58.x = x_1895;
        let x_1898 : f32 = u_xlat7.x;
        let x_1900 : f32 = u_xlat58.x;
        let x_1902 : f32 = u_xlat83;
        u_xlat83 = ((x_1898 * x_1900) + x_1902);
        let x_1905 : vec4<f32> = u_xlat11;
        let x_1906 : vec2<f32> = vec2<f32>(x_1905.z, x_1905.w);
        let x_1908 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1906.x, x_1906.y, x_1908);
        let x_1915 : vec3<f32> = txVec26;
        let x_1917 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1915.xy, x_1915.z);
        u_xlat58.x = x_1917;
        let x_1920 : f32 = u_xlat7.y;
        let x_1922 : f32 = u_xlat58.x;
        let x_1924 : f32 = u_xlat83;
        u_xlat83 = ((x_1920 * x_1922) + x_1924);
        let x_1927 : vec2<f32> = u_xlat61;
        let x_1929 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1927.x, x_1927.y, x_1929);
        let x_1936 : vec3<f32> = txVec27;
        let x_1938 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1936.xy, x_1936.z);
        u_xlat58.x = x_1938;
        let x_1941 : f32 = u_xlat7.z;
        let x_1943 : f32 = u_xlat58.x;
        let x_1945 : f32 = u_xlat83;
        u_xlat83 = ((x_1941 * x_1943) + x_1945);
        let x_1948 : vec4<f32> = u_xlat6;
        let x_1949 : vec2<f32> = vec2<f32>(x_1948.x, x_1948.y);
        let x_1951 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1949.x, x_1949.y, x_1951);
        let x_1958 : vec3<f32> = txVec28;
        let x_1960 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1958.xy, x_1958.z);
        u_xlat6.x = x_1960;
        let x_1963 : f32 = u_xlat7.w;
        let x_1965 : f32 = u_xlat6.x;
        let x_1967 : f32 = u_xlat83;
        u_xlat82 = ((x_1963 * x_1965) + x_1967);
      }
    }
  } else {
    let x_1971 : vec4<f32> = vs_TEXCOORD8;
    let x_1972 : vec2<f32> = vec2<f32>(x_1971.x, x_1971.y);
    let x_1974 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1972.x, x_1972.y, x_1974);
    let x_1981 : vec3<f32> = txVec29;
    let x_1983 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1981.xy, x_1981.z);
    u_xlat82 = x_1983;
  }
  let x_1985 : f32 = x_733.x_MainLightShadowParams.x;
  u_xlat83 = (-(x_1985) + 1.0f);
  let x_1988 : f32 = u_xlat82;
  let x_1990 : f32 = x_733.x_MainLightShadowParams.x;
  let x_1992 : f32 = u_xlat83;
  u_xlat82 = ((x_1988 * x_1990) + x_1992);
  let x_1995 : f32 = vs_TEXCOORD8.z;
  u_xlatb83 = (0.0f >= x_1995);
  let x_1999 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (x_1999 >= 1.0f);
  let x_2001 : bool = u_xlatb83;
  let x_2002 : bool = u_xlatb6;
  u_xlatb83 = (x_2001 | x_2002);
  let x_2004 : bool = u_xlatb83;
  let x_2005 : f32 = u_xlat82;
  u_xlat82 = select(x_2005, 1.0f, x_2004);
  let x_2007 : vec3<f32> = vs_TEXCOORD7;
  let x_2009 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_2011 : vec3<f32> = (x_2007 + -(x_2009));
  let x_2012 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2011.x, x_2011.y, x_2011.z, x_2012.w);
  let x_2014 : vec4<f32> = u_xlat6;
  let x_2016 : vec4<f32> = u_xlat6;
  u_xlat83 = dot(vec3<f32>(x_2014.x, x_2014.y, x_2014.z), vec3<f32>(x_2016.x, x_2016.y, x_2016.z));
  let x_2019 : f32 = u_xlat83;
  let x_2021 : f32 = x_733.x_MainLightShadowParams.z;
  let x_2024 : f32 = x_733.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_2019 * x_2021) + x_2024);
  let x_2028 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_2028, 0.0f, 1.0f);
  let x_2031 : f32 = u_xlat82;
  u_xlat32 = (-(x_2031) + 1.0f);
  let x_2035 : f32 = u_xlat6.x;
  let x_2036 : f32 = u_xlat32;
  let x_2038 : f32 = u_xlat82;
  u_xlat82 = ((x_2035 * x_2036) + x_2038);
  let x_2047 : f32 = x_2045.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_2047 == -1.0f));
  let x_2049 : bool = u_xlatb6;
  if (x_2049) {
    let x_2052 : vec3<f32> = vs_TEXCOORD7;
    let x_2055 : vec4<f32> = x_2045.x_MainLightWorldToLight[1i];
    let x_2057 : vec2<f32> = (vec2<f32>(x_2052.y, x_2052.y) * vec2<f32>(x_2055.x, x_2055.y));
    let x_2058 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2057.x, x_2057.y, x_2058.z, x_2058.w);
    let x_2061 : vec4<f32> = x_2045.x_MainLightWorldToLight[0i];
    let x_2063 : vec3<f32> = vs_TEXCOORD7;
    let x_2066 : vec4<f32> = u_xlat6;
    let x_2068 : vec2<f32> = ((vec2<f32>(x_2061.x, x_2061.y) * vec2<f32>(x_2063.x, x_2063.x)) + vec2<f32>(x_2066.x, x_2066.y));
    let x_2069 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2068.x, x_2068.y, x_2069.z, x_2069.w);
    let x_2072 : vec4<f32> = x_2045.x_MainLightWorldToLight[2i];
    let x_2074 : vec3<f32> = vs_TEXCOORD7;
    let x_2077 : vec4<f32> = u_xlat6;
    let x_2079 : vec2<f32> = ((vec2<f32>(x_2072.x, x_2072.y) * vec2<f32>(x_2074.z, x_2074.z)) + vec2<f32>(x_2077.x, x_2077.y));
    let x_2080 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2079.x, x_2079.y, x_2080.z, x_2080.w);
    let x_2082 : vec4<f32> = u_xlat6;
    let x_2086 : vec4<f32> = x_2045.x_MainLightWorldToLight[3i];
    let x_2088 : vec2<f32> = (vec2<f32>(x_2082.x, x_2082.y) + vec2<f32>(x_2086.x, x_2086.y));
    let x_2089 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2088.x, x_2088.y, x_2089.z, x_2089.w);
    let x_2091 : vec4<f32> = u_xlat6;
    let x_2094 : vec2<f32> = ((vec2<f32>(x_2091.x, x_2091.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2095 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2094.x, x_2094.y, x_2095.z, x_2095.w);
    let x_2102 : vec4<f32> = u_xlat6;
    let x_2105 : f32 = x_111.x_GlobalMipBias.x;
    let x_2106 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2102.x, x_2102.y), x_2105);
    u_xlat6 = x_2106;
    let x_2111 : f32 = x_2045.x_MainLightCookieTextureFormat;
    let x_2113 : f32 = x_2045.x_MainLightCookieTextureFormat;
    let x_2115 : f32 = x_2045.x_MainLightCookieTextureFormat;
    let x_2117 : f32 = x_2045.x_MainLightCookieTextureFormat;
    let x_2118 : vec4<f32> = vec4<f32>(x_2111, x_2113, x_2115, x_2117);
    let x_2125 : vec4<bool> = (vec4<f32>(x_2118.x, x_2118.y, x_2118.z, x_2118.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2125.x, x_2125.y);
    let x_2129 : bool = u_xlatb7.y;
    if (x_2129) {
      let x_2134 : f32 = u_xlat6.w;
      x_2130 = x_2134;
    } else {
      let x_2137 : f32 = u_xlat6.x;
      x_2130 = x_2137;
    }
    let x_2138 : f32 = x_2130;
    u_xlat84 = x_2138;
    let x_2140 : bool = u_xlatb7.x;
    if (x_2140) {
      let x_2144 : vec4<f32> = u_xlat6;
      x_2141 = vec3<f32>(x_2144.x, x_2144.y, x_2144.z);
    } else {
      let x_2147 : f32 = u_xlat84;
      x_2141 = vec3<f32>(x_2147, x_2147, x_2147);
    }
    let x_2149 : vec3<f32> = x_2141;
    let x_2150 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2149.x, x_2149.y, x_2149.z, x_2150.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2156 : vec4<f32> = u_xlat6;
  let x_2159 : vec4<f32> = x_111.x_MainLightColor;
  let x_2161 : vec3<f32> = (vec3<f32>(x_2156.x, x_2156.y, x_2156.z) * vec3<f32>(x_2159.x, x_2159.y, x_2159.z));
  let x_2162 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2161.x, x_2161.y, x_2161.z, x_2162.w);
  let x_2164 : vec3<f32> = u_xlat2;
  let x_2166 : vec4<f32> = u_xlat1;
  u_xlat84 = dot(-(x_2164), vec3<f32>(x_2166.x, x_2166.y, x_2166.z));
  let x_2169 : f32 = u_xlat84;
  let x_2170 : f32 = u_xlat84;
  u_xlat84 = (x_2169 + x_2170);
  let x_2172 : vec4<f32> = u_xlat1;
  let x_2174 : f32 = u_xlat84;
  let x_2178 : vec3<f32> = u_xlat2;
  let x_2180 : vec3<f32> = ((vec3<f32>(x_2172.x, x_2172.y, x_2172.z) * -(vec3<f32>(x_2174, x_2174, x_2174))) + -(x_2178));
  let x_2181 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2180.x, x_2180.y, x_2180.z, x_2181.w);
  let x_2183 : vec4<f32> = u_xlat1;
  let x_2185 : vec3<f32> = u_xlat2;
  u_xlat84 = dot(vec3<f32>(x_2183.x, x_2183.y, x_2183.z), x_2185);
  let x_2187 : f32 = u_xlat84;
  u_xlat84 = clamp(x_2187, 0.0f, 1.0f);
  let x_2189 : f32 = u_xlat84;
  u_xlat84 = (-(x_2189) + 1.0f);
  let x_2192 : f32 = u_xlat84;
  let x_2193 : f32 = u_xlat84;
  u_xlat84 = (x_2192 * x_2193);
  let x_2195 : f32 = u_xlat84;
  let x_2196 : f32 = u_xlat84;
  u_xlat84 = (x_2195 * x_2196);
  let x_2200 : f32 = u_xlat0.x;
  u_xlat85 = ((-(x_2200) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2207 : f32 = u_xlat0.x;
  let x_2208 : f32 = u_xlat85;
  u_xlat0.x = (x_2207 * x_2208);
  let x_2212 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2212 * 6.0f);
  let x_2224 : vec4<f32> = u_xlat7;
  let x_2227 : f32 = u_xlat0.x;
  let x_2228 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2224.x, x_2224.y, x_2224.z), x_2227);
  u_xlat7 = x_2228;
  let x_2230 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2230 + -1.0f);
  let x_2234 : f32 = x_590.unity_SpecCube0_HDR.w;
  let x_2236 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2234 * x_2236) + 1.0f);
  let x_2241 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2241, 0.0f);
  let x_2245 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2245);
  let x_2249 : f32 = u_xlat0.x;
  let x_2251 : f32 = x_590.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2249 * x_2251);
  let x_2255 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2255);
  let x_2259 : f32 = u_xlat0.x;
  let x_2261 : f32 = x_590.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2259 * x_2261);
  let x_2264 : vec4<f32> = u_xlat7;
  let x_2266 : vec3<f32> = u_xlat0;
  let x_2268 : vec3<f32> = (vec3<f32>(x_2264.x, x_2264.y, x_2264.z) * vec3<f32>(x_2266.x, x_2266.x, x_2266.x));
  let x_2269 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2268.x, x_2268.y, x_2268.z, x_2269.w);
  let x_2271 : f32 = u_xlat52;
  let x_2273 : f32 = u_xlat52;
  let x_2277 : vec2<f32> = ((vec2<f32>(x_2271, x_2271) * vec2<f32>(x_2273, x_2273)) + vec2<f32>(-1.0f, 1.0f));
  let x_2278 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2277.x, x_2278.y, x_2277.y);
  let x_2281 : f32 = u_xlat0.z;
  u_xlat52 = (1.0f / x_2281);
  let x_2283 : vec4<f32> = u_xlat5;
  let x_2286 : f32 = u_xlat80;
  let x_2288 : vec3<f32> = (-(vec3<f32>(x_2283.x, x_2283.y, x_2283.z)) + vec3<f32>(x_2286, x_2286, x_2286));
  let x_2289 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2288.x, x_2288.y, x_2288.z, x_2289.w);
  let x_2291 : f32 = u_xlat84;
  let x_2293 : vec4<f32> = u_xlat8;
  let x_2296 : vec4<f32> = u_xlat5;
  let x_2298 : vec3<f32> = ((vec3<f32>(x_2291, x_2291, x_2291) * vec3<f32>(x_2293.x, x_2293.y, x_2293.z)) + vec3<f32>(x_2296.x, x_2296.y, x_2296.z));
  let x_2299 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2298.x, x_2298.y, x_2298.z, x_2299.w);
  let x_2301 : f32 = u_xlat52;
  let x_2303 : vec4<f32> = u_xlat8;
  let x_2305 : vec3<f32> = (vec3<f32>(x_2301, x_2301, x_2301) * vec3<f32>(x_2303.x, x_2303.y, x_2303.z));
  let x_2306 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2305.x, x_2305.y, x_2305.z, x_2306.w);
  let x_2308 : vec4<f32> = u_xlat7;
  let x_2310 : vec4<f32> = u_xlat8;
  let x_2312 : vec3<f32> = (vec3<f32>(x_2308.x, x_2308.y, x_2308.z) * vec3<f32>(x_2310.x, x_2310.y, x_2310.z));
  let x_2313 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2312.x, x_2312.y, x_2312.z, x_2313.w);
  let x_2315 : vec4<f32> = u_xlat3;
  let x_2317 : vec4<f32> = u_xlat4;
  let x_2320 : vec4<f32> = u_xlat7;
  let x_2322 : vec3<f32> = ((vec3<f32>(x_2315.x, x_2315.y, x_2315.z) * vec3<f32>(x_2317.x, x_2317.y, x_2317.z)) + vec3<f32>(x_2320.x, x_2320.y, x_2320.z));
  let x_2323 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2322.x, x_2322.y, x_2322.z, x_2323.w);
  let x_2325 : f32 = u_xlat82;
  let x_2327 : f32 = x_590.unity_LightData.z;
  u_xlat52 = (x_2325 * x_2327);
  let x_2329 : vec4<f32> = u_xlat1;
  let x_2332 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat80 = dot(vec3<f32>(x_2329.x, x_2329.y, x_2329.z), vec3<f32>(x_2332.x, x_2332.y, x_2332.z));
  let x_2335 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2335, 0.0f, 1.0f);
  let x_2337 : f32 = u_xlat52;
  let x_2338 : f32 = u_xlat80;
  u_xlat52 = (x_2337 * x_2338);
  let x_2340 : f32 = u_xlat52;
  let x_2342 : vec4<f32> = u_xlat6;
  let x_2344 : vec3<f32> = (vec3<f32>(x_2340, x_2340, x_2340) * vec3<f32>(x_2342.x, x_2342.y, x_2342.z));
  let x_2345 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2344.x, x_2344.y, x_2344.z, x_2345.w);
  let x_2347 : vec3<f32> = u_xlat2;
  let x_2349 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2351 : vec3<f32> = (x_2347 + vec3<f32>(x_2349.x, x_2349.y, x_2349.z));
  let x_2352 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2351.x, x_2351.y, x_2351.z, x_2352.w);
  let x_2354 : vec4<f32> = u_xlat7;
  let x_2356 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(vec3<f32>(x_2354.x, x_2354.y, x_2354.z), vec3<f32>(x_2356.x, x_2356.y, x_2356.z));
  let x_2359 : f32 = u_xlat52;
  u_xlat52 = max(x_2359, 1.17549435e-38f);
  let x_2362 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_2362);
  let x_2364 : f32 = u_xlat52;
  let x_2366 : vec4<f32> = u_xlat7;
  let x_2368 : vec3<f32> = (vec3<f32>(x_2364, x_2364, x_2364) * vec3<f32>(x_2366.x, x_2366.y, x_2366.z));
  let x_2369 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2368.x, x_2368.y, x_2368.z, x_2369.w);
  let x_2371 : vec4<f32> = u_xlat1;
  let x_2373 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(vec3<f32>(x_2371.x, x_2371.y, x_2371.z), vec3<f32>(x_2373.x, x_2373.y, x_2373.z));
  let x_2376 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2376, 0.0f, 1.0f);
  let x_2379 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2381 : vec4<f32> = u_xlat7;
  u_xlat80 = dot(vec3<f32>(x_2379.x, x_2379.y, x_2379.z), vec3<f32>(x_2381.x, x_2381.y, x_2381.z));
  let x_2384 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2384, 0.0f, 1.0f);
  let x_2386 : f32 = u_xlat52;
  let x_2387 : f32 = u_xlat52;
  u_xlat52 = (x_2386 * x_2387);
  let x_2389 : f32 = u_xlat52;
  let x_2391 : f32 = u_xlat0.x;
  u_xlat52 = ((x_2389 * x_2391) + 1.00001001358032226562f);
  let x_2395 : f32 = u_xlat80;
  let x_2396 : f32 = u_xlat80;
  u_xlat80 = (x_2395 * x_2396);
  let x_2398 : f32 = u_xlat52;
  let x_2399 : f32 = u_xlat52;
  u_xlat52 = (x_2398 * x_2399);
  let x_2401 : f32 = u_xlat80;
  u_xlat80 = max(x_2401, 0.10000000149011611938f);
  let x_2404 : f32 = u_xlat52;
  let x_2405 : f32 = u_xlat80;
  u_xlat52 = (x_2404 * x_2405);
  let x_2407 : f32 = u_xlat81;
  let x_2408 : f32 = u_xlat52;
  u_xlat52 = (x_2407 * x_2408);
  let x_2410 : f32 = u_xlat79;
  let x_2411 : f32 = u_xlat52;
  u_xlat52 = (x_2410 / x_2411);
  let x_2413 : vec4<f32> = u_xlat5;
  let x_2415 : f32 = u_xlat52;
  let x_2418 : vec4<f32> = u_xlat4;
  let x_2420 : vec3<f32> = ((vec3<f32>(x_2413.x, x_2413.y, x_2413.z) * vec3<f32>(x_2415, x_2415, x_2415)) + vec3<f32>(x_2418.x, x_2418.y, x_2418.z));
  let x_2421 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2420.x, x_2420.y, x_2420.z, x_2421.w);
  let x_2423 : vec4<f32> = u_xlat6;
  let x_2425 : vec4<f32> = u_xlat7;
  let x_2427 : vec3<f32> = (vec3<f32>(x_2423.x, x_2423.y, x_2423.z) * vec3<f32>(x_2425.x, x_2425.y, x_2425.z));
  let x_2428 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2427.x, x_2427.y, x_2427.z, x_2428.w);
  let x_2431 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_2433 : f32 = x_590.unity_LightData.y;
  u_xlat52 = min(x_2431, x_2433);
  let x_2437 : f32 = u_xlat52;
  u_xlatu52 = bitcast<u32>(i32(x_2437));
  let x_2440 : f32 = u_xlat83;
  let x_2442 : f32 = x_733.x_AdditionalShadowFadeParams.x;
  let x_2445 : f32 = x_733.x_AdditionalShadowFadeParams.y;
  u_xlat80 = ((x_2440 * x_2442) + x_2445);
  let x_2447 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2447, 0.0f, 1.0f);
  let x_2450 : f32 = x_2045.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2452 : f32 = x_2045.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2454 : f32 = x_2045.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2456 : f32 = x_2045.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2457 : vec4<f32> = vec4<f32>(x_2450, x_2452, x_2454, x_2456);
  let x_2463 : vec4<bool> = (vec4<f32>(x_2457.x, x_2457.y, x_2457.z, x_2457.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2463.x, x_2463.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2475 : u32 = u_xlatu_loop_1;
    let x_2476 : u32 = u_xlatu52;
    if ((x_2475 < x_2476)) {
    } else {
      break;
    }
    let x_2479 : u32 = u_xlatu_loop_1;
    u_xlatu83 = (x_2479 >> 2u);
    let x_2483 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2483 & 3u));
    let x_2486 : u32 = u_xlatu83;
    let x_2489 : vec4<f32> = x_590.unity_LightIndices[bitcast<i32>(x_2486)];
    let x_2499 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2504 : vec4<u32> = indexable[x_2499];
    u_xlat83 = dot(x_2489, bitcast<vec4<f32>>(x_2504));
    let x_2508 : f32 = u_xlat83;
    u_xlati83 = i32(x_2508);
    let x_2510 : vec3<f32> = vs_TEXCOORD7;
    let x_2521 : i32 = u_xlati83;
    let x_2523 : vec4<f32> = x_2520.x_AdditionalLightsPosition[x_2521];
    let x_2526 : i32 = u_xlati83;
    let x_2528 : vec4<f32> = x_2520.x_AdditionalLightsPosition[x_2526];
    let x_2530 : vec3<f32> = ((-(x_2510) * vec3<f32>(x_2523.w, x_2523.w, x_2523.w)) + vec3<f32>(x_2528.x, x_2528.y, x_2528.z));
    let x_2531 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2530.x, x_2530.y, x_2530.z, x_2531.w);
    let x_2533 : vec4<f32> = u_xlat9;
    let x_2535 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2533.x, x_2533.y, x_2533.z), vec3<f32>(x_2535.x, x_2535.y, x_2535.z));
    let x_2538 : f32 = u_xlat84;
    u_xlat84 = max(x_2538, 0.00006103515625f);
    let x_2541 : f32 = u_xlat84;
    u_xlat59 = inverseSqrt(x_2541);
    let x_2543 : f32 = u_xlat59;
    let x_2545 : vec4<f32> = u_xlat9;
    let x_2547 : vec3<f32> = (vec3<f32>(x_2543, x_2543, x_2543) * vec3<f32>(x_2545.x, x_2545.y, x_2545.z));
    let x_2548 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2547.x, x_2547.y, x_2547.z, x_2548.w);
    let x_2550 : f32 = u_xlat84;
    u_xlat85 = (1.0f / x_2550);
    let x_2552 : f32 = u_xlat84;
    let x_2553 : i32 = u_xlati83;
    let x_2555 : f32 = x_2520.x_AdditionalLightsAttenuation[x_2553].x;
    u_xlat84 = (x_2552 * x_2555);
    let x_2557 : f32 = u_xlat84;
    let x_2559 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2557) * x_2559) + 1.0f);
    let x_2562 : f32 = u_xlat84;
    u_xlat84 = max(x_2562, 0.0f);
    let x_2564 : f32 = u_xlat84;
    let x_2565 : f32 = u_xlat84;
    u_xlat84 = (x_2564 * x_2565);
    let x_2567 : f32 = u_xlat84;
    let x_2568 : f32 = u_xlat85;
    u_xlat84 = (x_2567 * x_2568);
    let x_2570 : i32 = u_xlati83;
    let x_2572 : vec4<f32> = x_2520.x_AdditionalLightsSpotDir[x_2570];
    let x_2574 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_2572.x, x_2572.y, x_2572.z), vec3<f32>(x_2574.x, x_2574.y, x_2574.z));
    let x_2577 : f32 = u_xlat85;
    let x_2578 : i32 = u_xlati83;
    let x_2580 : f32 = x_2520.x_AdditionalLightsAttenuation[x_2578].z;
    let x_2582 : i32 = u_xlati83;
    let x_2584 : f32 = x_2520.x_AdditionalLightsAttenuation[x_2582].w;
    u_xlat85 = ((x_2577 * x_2580) + x_2584);
    let x_2586 : f32 = u_xlat85;
    u_xlat85 = clamp(x_2586, 0.0f, 1.0f);
    let x_2588 : f32 = u_xlat85;
    let x_2589 : f32 = u_xlat85;
    u_xlat85 = (x_2588 * x_2589);
    let x_2591 : f32 = u_xlat84;
    let x_2592 : f32 = u_xlat85;
    u_xlat84 = (x_2591 * x_2592);
    let x_2595 : i32 = u_xlati83;
    let x_2597 : f32 = x_733.x_AdditionalShadowParams[x_2595].w;
    u_xlati85 = i32(x_2597);
    let x_2600 : i32 = u_xlati85;
    u_xlatb86 = (x_2600 >= 0i);
    let x_2602 : bool = u_xlatb86;
    if (x_2602) {
      let x_2606 : i32 = u_xlati83;
      let x_2608 : f32 = x_733.x_AdditionalShadowParams[x_2606].z;
      u_xlatb86 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2608, x_2608, x_2608, x_2608))));
      let x_2612 : bool = u_xlatb86;
      if (x_2612) {
        let x_2617 : vec4<f32> = u_xlat10;
        let x_2620 : vec4<f32> = u_xlat10;
        let x_2623 : vec4<bool> = (abs(vec4<f32>(x_2617.z, x_2617.z, x_2617.y, x_2617.z)) >= abs(vec4<f32>(x_2620.x, x_2620.y, x_2620.x, x_2620.x)));
        let x_2625 : vec3<bool> = vec3<bool>(x_2623.x, x_2623.y, x_2623.z);
        let x_2626 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2625.x, x_2625.y, x_2625.z, x_2626.w);
        let x_2629 : bool = u_xlatb11.y;
        let x_2631 : bool = u_xlatb11.x;
        u_xlatb86 = (x_2629 & x_2631);
        let x_2633 : vec4<f32> = u_xlat10;
        let x_2636 : vec4<bool> = (-(vec4<f32>(x_2633.z, x_2633.y, x_2633.z, x_2633.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2637 : vec3<bool> = vec3<bool>(x_2636.x, x_2636.y, x_2636.w);
        let x_2638 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2637.x, x_2637.y, x_2638.z, x_2637.z);
        let x_2641 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2641);
        let x_2646 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2646);
        let x_2652 : bool = u_xlatb11.w;
        u_xlat87 = select(0.0f, 1.0f, x_2652);
        let x_2655 : bool = u_xlatb11.z;
        if (x_2655) {
          let x_2660 : f32 = u_xlat11.y;
          x_2656 = x_2660;
        } else {
          let x_2662 : f32 = u_xlat87;
          x_2656 = x_2662;
        }
        let x_2663 : f32 = x_2656;
        u_xlat87 = x_2663;
        let x_2665 : bool = u_xlatb86;
        if (x_2665) {
          let x_2670 : f32 = u_xlat11.x;
          x_2666 = x_2670;
        } else {
          let x_2672 : f32 = u_xlat87;
          x_2666 = x_2672;
        }
        let x_2673 : f32 = x_2666;
        u_xlat86 = x_2673;
        let x_2674 : i32 = u_xlati83;
        let x_2676 : f32 = x_733.x_AdditionalShadowParams[x_2674].w;
        u_xlat87 = trunc(x_2676);
        let x_2678 : f32 = u_xlat86;
        let x_2679 : f32 = u_xlat87;
        u_xlat86 = (x_2678 + x_2679);
        let x_2681 : f32 = u_xlat86;
        u_xlati85 = i32(x_2681);
      }
      let x_2683 : i32 = u_xlati85;
      u_xlati85 = (x_2683 << bitcast<u32>(2i));
      let x_2685 : vec3<f32> = vs_TEXCOORD7;
      let x_2687 : i32 = u_xlati85;
      let x_2690 : i32 = u_xlati85;
      let x_2694 : vec4<f32> = x_733.x_AdditionalLightsWorldToShadow[((x_2687 + 1i) / 4i)][((x_2690 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2685.y, x_2685.y, x_2685.y, x_2685.y) * x_2694);
      let x_2696 : i32 = u_xlati85;
      let x_2698 : i32 = u_xlati85;
      let x_2701 : vec4<f32> = x_733.x_AdditionalLightsWorldToShadow[(x_2696 / 4i)][(x_2698 % 4i)];
      let x_2702 : vec3<f32> = vs_TEXCOORD7;
      let x_2705 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2701 * vec4<f32>(x_2702.x, x_2702.x, x_2702.x, x_2702.x)) + x_2705);
      let x_2707 : i32 = u_xlati85;
      let x_2710 : i32 = u_xlati85;
      let x_2714 : vec4<f32> = x_733.x_AdditionalLightsWorldToShadow[((x_2707 + 2i) / 4i)][((x_2710 + 2i) % 4i)];
      let x_2715 : vec3<f32> = vs_TEXCOORD7;
      let x_2718 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2714 * vec4<f32>(x_2715.z, x_2715.z, x_2715.z, x_2715.z)) + x_2718);
      let x_2720 : vec4<f32> = u_xlat11;
      let x_2721 : i32 = u_xlati85;
      let x_2724 : i32 = u_xlati85;
      let x_2728 : vec4<f32> = x_733.x_AdditionalLightsWorldToShadow[((x_2721 + 3i) / 4i)][((x_2724 + 3i) % 4i)];
      u_xlat11 = (x_2720 + x_2728);
      let x_2730 : vec4<f32> = u_xlat11;
      let x_2732 : vec4<f32> = u_xlat11;
      let x_2734 : vec3<f32> = (vec3<f32>(x_2730.x, x_2730.y, x_2730.z) / vec3<f32>(x_2732.w, x_2732.w, x_2732.w));
      let x_2735 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2734.x, x_2734.y, x_2734.z, x_2735.w);
      let x_2738 : i32 = u_xlati83;
      let x_2740 : f32 = x_733.x_AdditionalShadowParams[x_2738].y;
      u_xlatb85 = (0.0f < x_2740);
      let x_2742 : bool = u_xlatb85;
      if (x_2742) {
        let x_2745 : i32 = u_xlati83;
        let x_2747 : f32 = x_733.x_AdditionalShadowParams[x_2745].y;
        u_xlatb85 = (1.0f == x_2747);
        let x_2749 : bool = u_xlatb85;
        if (x_2749) {
          let x_2752 : vec4<f32> = u_xlat11;
          let x_2755 : vec4<f32> = x_733.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2752.x, x_2752.y, x_2752.x, x_2752.y) + x_2755);
          let x_2758 : vec4<f32> = u_xlat12;
          let x_2759 : vec2<f32> = vec2<f32>(x_2758.x, x_2758.y);
          let x_2761 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2759.x, x_2759.y, x_2761);
          let x_2769 : vec3<f32> = txVec30;
          let x_2771 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2769.xy, x_2769.z);
          u_xlat13.x = x_2771;
          let x_2774 : vec4<f32> = u_xlat12;
          let x_2775 : vec2<f32> = vec2<f32>(x_2774.z, x_2774.w);
          let x_2777 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2775.x, x_2775.y, x_2777);
          let x_2784 : vec3<f32> = txVec31;
          let x_2786 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2784.xy, x_2784.z);
          u_xlat13.y = x_2786;
          let x_2788 : vec4<f32> = u_xlat11;
          let x_2791 : vec4<f32> = x_733.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2788.x, x_2788.y, x_2788.x, x_2788.y) + x_2791);
          let x_2794 : vec4<f32> = u_xlat12;
          let x_2795 : vec2<f32> = vec2<f32>(x_2794.x, x_2794.y);
          let x_2797 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2795.x, x_2795.y, x_2797);
          let x_2804 : vec3<f32> = txVec32;
          let x_2806 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2804.xy, x_2804.z);
          u_xlat13.z = x_2806;
          let x_2809 : vec4<f32> = u_xlat12;
          let x_2810 : vec2<f32> = vec2<f32>(x_2809.z, x_2809.w);
          let x_2812 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2810.x, x_2810.y, x_2812);
          let x_2819 : vec3<f32> = txVec33;
          let x_2821 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2819.xy, x_2819.z);
          u_xlat13.w = x_2821;
          let x_2823 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_2823, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2826 : i32 = u_xlati83;
          let x_2828 : f32 = x_733.x_AdditionalShadowParams[x_2826].y;
          u_xlatb86 = (2.0f == x_2828);
          let x_2830 : bool = u_xlatb86;
          if (x_2830) {
            let x_2833 : vec4<f32> = u_xlat11;
            let x_2836 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_2839 : vec2<f32> = ((vec2<f32>(x_2833.x, x_2833.y) * vec2<f32>(x_2836.z, x_2836.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2840 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2839.x, x_2839.y, x_2840.z, x_2840.w);
            let x_2842 : vec4<f32> = u_xlat12;
            let x_2844 : vec2<f32> = floor(vec2<f32>(x_2842.x, x_2842.y));
            let x_2845 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2844.x, x_2844.y, x_2845.z, x_2845.w);
            let x_2848 : vec4<f32> = u_xlat11;
            let x_2851 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_2854 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2848.x, x_2848.y) * vec2<f32>(x_2851.z, x_2851.w)) + -(vec2<f32>(x_2854.x, x_2854.y)));
            let x_2858 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2858.x, x_2858.x, x_2858.y, x_2858.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2861 : vec4<f32> = u_xlat13;
            let x_2863 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2861.x, x_2861.x, x_2861.z, x_2861.z) * vec4<f32>(x_2863.x, x_2863.x, x_2863.z, x_2863.z));
            let x_2866 : vec4<f32> = u_xlat14;
            let x_2868 : vec2<f32> = (vec2<f32>(x_2866.y, x_2866.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2869 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2868.x, x_2869.y, x_2868.y, x_2869.w);
            let x_2871 : vec4<f32> = u_xlat14;
            let x_2874 : vec2<f32> = u_xlat64;
            let x_2876 : vec2<f32> = ((vec2<f32>(x_2871.x, x_2871.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2874));
            let x_2877 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2876.x, x_2876.y, x_2877.z, x_2877.w);
            let x_2879 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2879) + vec2<f32>(1.0f, 1.0f));
            let x_2882 : vec2<f32> = u_xlat64;
            let x_2883 : vec2<f32> = min(x_2882, vec2<f32>(0.0f, 0.0f));
            let x_2884 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2883.x, x_2883.y, x_2884.z, x_2884.w);
            let x_2886 : vec4<f32> = u_xlat15;
            let x_2889 : vec4<f32> = u_xlat15;
            let x_2892 : vec2<f32> = u_xlat66;
            let x_2893 : vec2<f32> = ((-(vec2<f32>(x_2886.x, x_2886.y)) * vec2<f32>(x_2889.x, x_2889.y)) + x_2892);
            let x_2894 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2893.x, x_2893.y, x_2894.z, x_2894.w);
            let x_2896 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2896, vec2<f32>(0.0f, 0.0f));
            let x_2898 : vec2<f32> = u_xlat64;
            let x_2900 : vec2<f32> = u_xlat64;
            let x_2902 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2898) * x_2900) + vec2<f32>(x_2902.y, x_2902.w));
            let x_2905 : vec4<f32> = u_xlat15;
            let x_2907 : vec2<f32> = (vec2<f32>(x_2905.x, x_2905.y) + vec2<f32>(1.0f, 1.0f));
            let x_2908 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2907.x, x_2907.y, x_2908.z, x_2908.w);
            let x_2910 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2910 + vec2<f32>(1.0f, 1.0f));
            let x_2912 : vec4<f32> = u_xlat14;
            let x_2914 : vec2<f32> = (vec2<f32>(x_2912.x, x_2912.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2915 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2914.x, x_2914.y, x_2915.z, x_2915.w);
            let x_2917 : vec2<f32> = u_xlat66;
            let x_2918 : vec2<f32> = (x_2917 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2919 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2918.x, x_2918.y, x_2919.z, x_2919.w);
            let x_2921 : vec4<f32> = u_xlat15;
            let x_2923 : vec2<f32> = (vec2<f32>(x_2921.x, x_2921.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2924 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2923.x, x_2923.y, x_2924.z, x_2924.w);
            let x_2926 : vec2<f32> = u_xlat64;
            let x_2927 : vec2<f32> = (x_2926 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2928 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2927.x, x_2927.y, x_2928.z, x_2928.w);
            let x_2930 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2930.y, x_2930.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2934 : f32 = u_xlat15.x;
            u_xlat16.z = x_2934;
            let x_2937 : f32 = u_xlat64.x;
            u_xlat16.w = x_2937;
            let x_2940 : f32 = u_xlat17.x;
            u_xlat14.z = x_2940;
            let x_2943 : f32 = u_xlat13.x;
            u_xlat14.w = x_2943;
            let x_2945 : vec4<f32> = u_xlat14;
            let x_2947 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2945.z, x_2945.w, x_2945.x, x_2945.z) + vec4<f32>(x_2947.z, x_2947.w, x_2947.x, x_2947.z));
            let x_2951 : f32 = u_xlat16.y;
            u_xlat15.z = x_2951;
            let x_2954 : f32 = u_xlat64.y;
            u_xlat15.w = x_2954;
            let x_2957 : f32 = u_xlat14.y;
            u_xlat17.z = x_2957;
            let x_2960 : f32 = u_xlat13.z;
            u_xlat17.w = x_2960;
            let x_2962 : vec4<f32> = u_xlat15;
            let x_2964 : vec4<f32> = u_xlat17;
            let x_2966 : vec3<f32> = (vec3<f32>(x_2962.z, x_2962.y, x_2962.w) + vec3<f32>(x_2964.z, x_2964.y, x_2964.w));
            let x_2967 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2966.x, x_2966.y, x_2966.z, x_2967.w);
            let x_2969 : vec4<f32> = u_xlat14;
            let x_2971 : vec4<f32> = u_xlat18;
            let x_2973 : vec3<f32> = (vec3<f32>(x_2969.x, x_2969.z, x_2969.w) / vec3<f32>(x_2971.z, x_2971.w, x_2971.y));
            let x_2974 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2973.x, x_2973.y, x_2973.z, x_2974.w);
            let x_2976 : vec4<f32> = u_xlat14;
            let x_2978 : vec3<f32> = (vec3<f32>(x_2976.x, x_2976.y, x_2976.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2979 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2978.x, x_2978.y, x_2978.z, x_2979.w);
            let x_2981 : vec4<f32> = u_xlat17;
            let x_2983 : vec4<f32> = u_xlat13;
            let x_2985 : vec3<f32> = (vec3<f32>(x_2981.z, x_2981.y, x_2981.w) / vec3<f32>(x_2983.x, x_2983.y, x_2983.z));
            let x_2986 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2985.x, x_2985.y, x_2985.z, x_2986.w);
            let x_2988 : vec4<f32> = u_xlat15;
            let x_2990 : vec3<f32> = (vec3<f32>(x_2988.x, x_2988.y, x_2988.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2991 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2990.x, x_2990.y, x_2990.z, x_2991.w);
            let x_2993 : vec4<f32> = u_xlat14;
            let x_2996 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_2998 : vec3<f32> = (vec3<f32>(x_2993.y, x_2993.x, x_2993.z) * vec3<f32>(x_2996.x, x_2996.x, x_2996.x));
            let x_2999 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2998.x, x_2998.y, x_2998.z, x_2999.w);
            let x_3001 : vec4<f32> = u_xlat15;
            let x_3004 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_3006 : vec3<f32> = (vec3<f32>(x_3001.x, x_3001.y, x_3001.z) * vec3<f32>(x_3004.y, x_3004.y, x_3004.y));
            let x_3007 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3006.x, x_3006.y, x_3006.z, x_3007.w);
            let x_3010 : f32 = u_xlat15.x;
            u_xlat14.w = x_3010;
            let x_3012 : vec4<f32> = u_xlat12;
            let x_3015 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_3018 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3012.x, x_3012.y, x_3012.x, x_3012.y) * vec4<f32>(x_3015.x, x_3015.y, x_3015.x, x_3015.y)) + vec4<f32>(x_3018.y, x_3018.w, x_3018.x, x_3018.w));
            let x_3021 : vec4<f32> = u_xlat12;
            let x_3024 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_3027 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3021.x, x_3021.y) * vec2<f32>(x_3024.x, x_3024.y)) + vec2<f32>(x_3027.z, x_3027.w));
            let x_3031 : f32 = u_xlat14.y;
            u_xlat15.w = x_3031;
            let x_3033 : vec4<f32> = u_xlat15;
            let x_3034 : vec2<f32> = vec2<f32>(x_3033.y, x_3033.z);
            let x_3035 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3035.x, x_3034.x, x_3035.z, x_3034.y);
            let x_3037 : vec4<f32> = u_xlat12;
            let x_3040 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_3043 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3037.x, x_3037.y, x_3037.x, x_3037.y) * vec4<f32>(x_3040.x, x_3040.y, x_3040.x, x_3040.y)) + vec4<f32>(x_3043.x, x_3043.y, x_3043.z, x_3043.y));
            let x_3046 : vec4<f32> = u_xlat12;
            let x_3049 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_3052 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3046.x, x_3046.y, x_3046.x, x_3046.y) * vec4<f32>(x_3049.x, x_3049.y, x_3049.x, x_3049.y)) + vec4<f32>(x_3052.w, x_3052.y, x_3052.w, x_3052.z));
            let x_3055 : vec4<f32> = u_xlat12;
            let x_3058 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_3061 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3055.x, x_3055.y, x_3055.x, x_3055.y) * vec4<f32>(x_3058.x, x_3058.y, x_3058.x, x_3058.y)) + vec4<f32>(x_3061.x, x_3061.w, x_3061.z, x_3061.w));
            let x_3064 : vec4<f32> = u_xlat13;
            let x_3066 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3064.x, x_3064.x, x_3064.x, x_3064.y) * vec4<f32>(x_3066.z, x_3066.w, x_3066.y, x_3066.z));
            let x_3070 : vec4<f32> = u_xlat13;
            let x_3072 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3070.y, x_3070.y, x_3070.z, x_3070.z) * x_3072);
            let x_3075 : f32 = u_xlat13.z;
            let x_3077 : f32 = u_xlat18.y;
            u_xlat86 = (x_3075 * x_3077);
            let x_3080 : vec4<f32> = u_xlat16;
            let x_3081 : vec2<f32> = vec2<f32>(x_3080.x, x_3080.y);
            let x_3083 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3081.x, x_3081.y, x_3083);
            let x_3090 : vec3<f32> = txVec34;
            let x_3092 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3090.xy, x_3090.z);
            u_xlat87 = x_3092;
            let x_3094 : vec4<f32> = u_xlat16;
            let x_3095 : vec2<f32> = vec2<f32>(x_3094.z, x_3094.w);
            let x_3097 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3095.x, x_3095.y, x_3097);
            let x_3105 : vec3<f32> = txVec35;
            let x_3107 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3105.xy, x_3105.z);
            u_xlat88 = x_3107;
            let x_3108 : f32 = u_xlat88;
            let x_3110 : f32 = u_xlat19.y;
            u_xlat88 = (x_3108 * x_3110);
            let x_3113 : f32 = u_xlat19.x;
            let x_3114 : f32 = u_xlat87;
            let x_3116 : f32 = u_xlat88;
            u_xlat87 = ((x_3113 * x_3114) + x_3116);
            let x_3119 : vec2<f32> = u_xlat64;
            let x_3121 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3119.x, x_3119.y, x_3121);
            let x_3128 : vec3<f32> = txVec36;
            let x_3130 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3128.xy, x_3128.z);
            u_xlat88 = x_3130;
            let x_3132 : f32 = u_xlat19.z;
            let x_3133 : f32 = u_xlat88;
            let x_3135 : f32 = u_xlat87;
            u_xlat87 = ((x_3132 * x_3133) + x_3135);
            let x_3138 : vec4<f32> = u_xlat15;
            let x_3139 : vec2<f32> = vec2<f32>(x_3138.x, x_3138.y);
            let x_3141 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3139.x, x_3139.y, x_3141);
            let x_3148 : vec3<f32> = txVec37;
            let x_3150 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3148.xy, x_3148.z);
            u_xlat88 = x_3150;
            let x_3152 : f32 = u_xlat19.w;
            let x_3153 : f32 = u_xlat88;
            let x_3155 : f32 = u_xlat87;
            u_xlat87 = ((x_3152 * x_3153) + x_3155);
            let x_3158 : vec4<f32> = u_xlat17;
            let x_3159 : vec2<f32> = vec2<f32>(x_3158.x, x_3158.y);
            let x_3161 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3159.x, x_3159.y, x_3161);
            let x_3168 : vec3<f32> = txVec38;
            let x_3170 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3168.xy, x_3168.z);
            u_xlat88 = x_3170;
            let x_3172 : f32 = u_xlat20.x;
            let x_3173 : f32 = u_xlat88;
            let x_3175 : f32 = u_xlat87;
            u_xlat87 = ((x_3172 * x_3173) + x_3175);
            let x_3178 : vec4<f32> = u_xlat17;
            let x_3179 : vec2<f32> = vec2<f32>(x_3178.z, x_3178.w);
            let x_3181 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3179.x, x_3179.y, x_3181);
            let x_3188 : vec3<f32> = txVec39;
            let x_3190 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3188.xy, x_3188.z);
            u_xlat88 = x_3190;
            let x_3192 : f32 = u_xlat20.y;
            let x_3193 : f32 = u_xlat88;
            let x_3195 : f32 = u_xlat87;
            u_xlat87 = ((x_3192 * x_3193) + x_3195);
            let x_3198 : vec4<f32> = u_xlat15;
            let x_3199 : vec2<f32> = vec2<f32>(x_3198.z, x_3198.w);
            let x_3201 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3199.x, x_3199.y, x_3201);
            let x_3208 : vec3<f32> = txVec40;
            let x_3210 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3208.xy, x_3208.z);
            u_xlat88 = x_3210;
            let x_3212 : f32 = u_xlat20.z;
            let x_3213 : f32 = u_xlat88;
            let x_3215 : f32 = u_xlat87;
            u_xlat87 = ((x_3212 * x_3213) + x_3215);
            let x_3218 : vec4<f32> = u_xlat14;
            let x_3219 : vec2<f32> = vec2<f32>(x_3218.x, x_3218.y);
            let x_3221 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3219.x, x_3219.y, x_3221);
            let x_3228 : vec3<f32> = txVec41;
            let x_3230 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3228.xy, x_3228.z);
            u_xlat88 = x_3230;
            let x_3232 : f32 = u_xlat20.w;
            let x_3233 : f32 = u_xlat88;
            let x_3235 : f32 = u_xlat87;
            u_xlat87 = ((x_3232 * x_3233) + x_3235);
            let x_3238 : vec4<f32> = u_xlat14;
            let x_3239 : vec2<f32> = vec2<f32>(x_3238.z, x_3238.w);
            let x_3241 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3239.x, x_3239.y, x_3241);
            let x_3248 : vec3<f32> = txVec42;
            let x_3250 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3248.xy, x_3248.z);
            u_xlat88 = x_3250;
            let x_3251 : f32 = u_xlat86;
            let x_3252 : f32 = u_xlat88;
            let x_3254 : f32 = u_xlat87;
            u_xlat85 = ((x_3251 * x_3252) + x_3254);
          } else {
            let x_3257 : vec4<f32> = u_xlat11;
            let x_3260 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_3263 : vec2<f32> = ((vec2<f32>(x_3257.x, x_3257.y) * vec2<f32>(x_3260.z, x_3260.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3264 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3263.x, x_3263.y, x_3264.z, x_3264.w);
            let x_3266 : vec4<f32> = u_xlat12;
            let x_3268 : vec2<f32> = floor(vec2<f32>(x_3266.x, x_3266.y));
            let x_3269 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3268.x, x_3268.y, x_3269.z, x_3269.w);
            let x_3271 : vec4<f32> = u_xlat11;
            let x_3274 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_3277 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3271.x, x_3271.y) * vec2<f32>(x_3274.z, x_3274.w)) + -(vec2<f32>(x_3277.x, x_3277.y)));
            let x_3281 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3281.x, x_3281.x, x_3281.y, x_3281.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3284 : vec4<f32> = u_xlat13;
            let x_3286 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3284.x, x_3284.x, x_3284.z, x_3284.z) * vec4<f32>(x_3286.x, x_3286.x, x_3286.z, x_3286.z));
            let x_3289 : vec4<f32> = u_xlat14;
            let x_3291 : vec2<f32> = (vec2<f32>(x_3289.y, x_3289.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3292 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3292.x, x_3291.x, x_3292.z, x_3291.y);
            let x_3294 : vec4<f32> = u_xlat14;
            let x_3297 : vec2<f32> = u_xlat64;
            let x_3299 : vec2<f32> = ((vec2<f32>(x_3294.x, x_3294.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3297));
            let x_3300 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3299.x, x_3300.y, x_3299.y, x_3300.w);
            let x_3302 : vec2<f32> = u_xlat64;
            let x_3304 : vec2<f32> = (-(x_3302) + vec2<f32>(1.0f, 1.0f));
            let x_3305 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3304.x, x_3304.y, x_3305.z, x_3305.w);
            let x_3307 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3307, vec2<f32>(0.0f, 0.0f));
            let x_3309 : vec2<f32> = u_xlat66;
            let x_3311 : vec2<f32> = u_xlat66;
            let x_3313 : vec4<f32> = u_xlat14;
            let x_3315 : vec2<f32> = ((-(x_3309) * x_3311) + vec2<f32>(x_3313.x, x_3313.y));
            let x_3316 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3315.x, x_3315.y, x_3316.z, x_3316.w);
            let x_3318 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3318, vec2<f32>(0.0f, 0.0f));
            let x_3321 : vec2<f32> = u_xlat66;
            let x_3323 : vec2<f32> = u_xlat66;
            let x_3325 : vec4<f32> = u_xlat13;
            let x_3327 : vec2<f32> = ((-(x_3321) * x_3323) + vec2<f32>(x_3325.y, x_3325.w));
            let x_3328 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3327.x, x_3328.y, x_3327.y);
            let x_3330 : vec4<f32> = u_xlat14;
            let x_3332 : vec2<f32> = (vec2<f32>(x_3330.x, x_3330.y) + vec2<f32>(2.0f, 2.0f));
            let x_3333 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3332.x, x_3332.y, x_3333.z, x_3333.w);
            let x_3335 : vec3<f32> = u_xlat39;
            let x_3337 : vec2<f32> = (vec2<f32>(x_3335.x, x_3335.z) + vec2<f32>(2.0f, 2.0f));
            let x_3338 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3338.x, x_3337.x, x_3338.z, x_3337.y);
            let x_3341 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3341 * 0.08163200318813323975f);
            let x_3344 : vec4<f32> = u_xlat13;
            let x_3346 : vec3<f32> = (vec3<f32>(x_3344.z, x_3344.x, x_3344.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3347 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3346.x, x_3346.y, x_3346.z, x_3347.w);
            let x_3349 : vec4<f32> = u_xlat14;
            let x_3351 : vec2<f32> = (vec2<f32>(x_3349.x, x_3349.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3352 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3351.x, x_3351.y, x_3352.z, x_3352.w);
            let x_3355 : f32 = u_xlat17.y;
            u_xlat16.x = x_3355;
            let x_3357 : vec2<f32> = u_xlat64;
            let x_3360 : vec2<f32> = ((vec2<f32>(x_3357.x, x_3357.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3361 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3361.x, x_3360.x, x_3361.z, x_3360.y);
            let x_3363 : vec2<f32> = u_xlat64;
            let x_3366 : vec2<f32> = ((vec2<f32>(x_3363.x, x_3363.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3367 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3366.x, x_3367.y, x_3366.y, x_3367.w);
            let x_3370 : f32 = u_xlat13.x;
            u_xlat14.y = x_3370;
            let x_3373 : f32 = u_xlat15.y;
            u_xlat14.w = x_3373;
            let x_3375 : vec4<f32> = u_xlat14;
            let x_3376 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3375 + x_3376);
            let x_3378 : vec2<f32> = u_xlat64;
            let x_3381 : vec2<f32> = ((vec2<f32>(x_3378.y, x_3378.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3382 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3382.x, x_3381.x, x_3382.z, x_3381.y);
            let x_3384 : vec2<f32> = u_xlat64;
            let x_3387 : vec2<f32> = ((vec2<f32>(x_3384.y, x_3384.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3388 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3387.x, x_3388.y, x_3387.y, x_3388.w);
            let x_3391 : f32 = u_xlat13.y;
            u_xlat15.y = x_3391;
            let x_3393 : vec4<f32> = u_xlat15;
            let x_3394 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3393 + x_3394);
            let x_3396 : vec4<f32> = u_xlat14;
            let x_3397 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3396 / x_3397);
            let x_3399 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3399 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3401 : vec4<f32> = u_xlat15;
            let x_3402 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3401 / x_3402);
            let x_3404 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3404 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3406 : vec4<f32> = u_xlat14;
            let x_3409 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3406.w, x_3406.x, x_3406.y, x_3406.z) * vec4<f32>(x_3409.x, x_3409.x, x_3409.x, x_3409.x));
            let x_3412 : vec4<f32> = u_xlat15;
            let x_3415 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3412.x, x_3412.w, x_3412.y, x_3412.z) * vec4<f32>(x_3415.y, x_3415.y, x_3415.y, x_3415.y));
            let x_3418 : vec4<f32> = u_xlat14;
            let x_3419 : vec3<f32> = vec3<f32>(x_3418.y, x_3418.z, x_3418.w);
            let x_3420 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3419.x, x_3420.y, x_3419.y, x_3419.z);
            let x_3423 : f32 = u_xlat15.x;
            u_xlat17.y = x_3423;
            let x_3425 : vec4<f32> = u_xlat12;
            let x_3428 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_3431 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3425.x, x_3425.y, x_3425.x, x_3425.y) * vec4<f32>(x_3428.x, x_3428.y, x_3428.x, x_3428.y)) + vec4<f32>(x_3431.x, x_3431.y, x_3431.z, x_3431.y));
            let x_3434 : vec4<f32> = u_xlat12;
            let x_3437 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_3440 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3434.x, x_3434.y) * vec2<f32>(x_3437.x, x_3437.y)) + vec2<f32>(x_3440.w, x_3440.y));
            let x_3444 : f32 = u_xlat17.y;
            u_xlat14.y = x_3444;
            let x_3447 : f32 = u_xlat15.z;
            u_xlat17.y = x_3447;
            let x_3449 : vec4<f32> = u_xlat12;
            let x_3452 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_3455 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3449.x, x_3449.y, x_3449.x, x_3449.y) * vec4<f32>(x_3452.x, x_3452.y, x_3452.x, x_3452.y)) + vec4<f32>(x_3455.x, x_3455.y, x_3455.z, x_3455.y));
            let x_3458 : vec4<f32> = u_xlat12;
            let x_3461 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_3464 : vec4<f32> = u_xlat17;
            let x_3466 : vec2<f32> = ((vec2<f32>(x_3458.x, x_3458.y) * vec2<f32>(x_3461.x, x_3461.y)) + vec2<f32>(x_3464.w, x_3464.y));
            let x_3467 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3466.x, x_3466.y, x_3467.z, x_3467.w);
            let x_3470 : f32 = u_xlat17.y;
            u_xlat14.z = x_3470;
            let x_3473 : vec4<f32> = u_xlat12;
            let x_3476 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_3479 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3473.x, x_3473.y, x_3473.x, x_3473.y) * vec4<f32>(x_3476.x, x_3476.y, x_3476.x, x_3476.y)) + vec4<f32>(x_3479.x, x_3479.y, x_3479.x, x_3479.z));
            let x_3483 : f32 = u_xlat15.w;
            u_xlat17.y = x_3483;
            let x_3486 : vec4<f32> = u_xlat12;
            let x_3489 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_3492 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3486.x, x_3486.y, x_3486.x, x_3486.y) * vec4<f32>(x_3489.x, x_3489.y, x_3489.x, x_3489.y)) + vec4<f32>(x_3492.x, x_3492.y, x_3492.z, x_3492.y));
            let x_3496 : vec4<f32> = u_xlat12;
            let x_3499 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_3502 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3496.x, x_3496.y) * vec2<f32>(x_3499.x, x_3499.y)) + vec2<f32>(x_3502.w, x_3502.y));
            let x_3506 : f32 = u_xlat17.y;
            u_xlat14.w = x_3506;
            let x_3509 : vec4<f32> = u_xlat12;
            let x_3512 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_3515 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3509.x, x_3509.y) * vec2<f32>(x_3512.x, x_3512.y)) + vec2<f32>(x_3515.x, x_3515.w));
            let x_3518 : vec4<f32> = u_xlat17;
            let x_3519 : vec3<f32> = vec3<f32>(x_3518.x, x_3518.z, x_3518.w);
            let x_3520 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3519.x, x_3520.y, x_3519.y, x_3519.z);
            let x_3522 : vec4<f32> = u_xlat12;
            let x_3525 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_3528 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3522.x, x_3522.y, x_3522.x, x_3522.y) * vec4<f32>(x_3525.x, x_3525.y, x_3525.x, x_3525.y)) + vec4<f32>(x_3528.x, x_3528.y, x_3528.z, x_3528.y));
            let x_3532 : vec4<f32> = u_xlat12;
            let x_3535 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_3538 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3532.x, x_3532.y) * vec2<f32>(x_3535.x, x_3535.y)) + vec2<f32>(x_3538.w, x_3538.y));
            let x_3542 : f32 = u_xlat14.x;
            u_xlat15.x = x_3542;
            let x_3544 : vec4<f32> = u_xlat12;
            let x_3547 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_3550 : vec4<f32> = u_xlat15;
            let x_3552 : vec2<f32> = ((vec2<f32>(x_3544.x, x_3544.y) * vec2<f32>(x_3547.x, x_3547.y)) + vec2<f32>(x_3550.x, x_3550.y));
            let x_3553 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3552.x, x_3552.y, x_3553.z, x_3553.w);
            let x_3556 : vec4<f32> = u_xlat13;
            let x_3558 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3556.x, x_3556.x, x_3556.x, x_3556.x) * x_3558);
            let x_3561 : vec4<f32> = u_xlat13;
            let x_3563 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3561.y, x_3561.y, x_3561.y, x_3561.y) * x_3563);
            let x_3566 : vec4<f32> = u_xlat13;
            let x_3568 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3566.z, x_3566.z, x_3566.z, x_3566.z) * x_3568);
            let x_3570 : vec4<f32> = u_xlat13;
            let x_3572 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3570.w, x_3570.w, x_3570.w, x_3570.w) * x_3572);
            let x_3575 : vec4<f32> = u_xlat18;
            let x_3576 : vec2<f32> = vec2<f32>(x_3575.x, x_3575.y);
            let x_3578 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3576.x, x_3576.y, x_3578);
            let x_3585 : vec3<f32> = txVec43;
            let x_3587 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3585.xy, x_3585.z);
            u_xlat86 = x_3587;
            let x_3589 : vec4<f32> = u_xlat18;
            let x_3590 : vec2<f32> = vec2<f32>(x_3589.z, x_3589.w);
            let x_3592 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3590.x, x_3590.y, x_3592);
            let x_3599 : vec3<f32> = txVec44;
            let x_3601 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3599.xy, x_3599.z);
            u_xlat87 = x_3601;
            let x_3602 : f32 = u_xlat87;
            let x_3604 : f32 = u_xlat23.y;
            u_xlat87 = (x_3602 * x_3604);
            let x_3607 : f32 = u_xlat23.x;
            let x_3608 : f32 = u_xlat86;
            let x_3610 : f32 = u_xlat87;
            u_xlat86 = ((x_3607 * x_3608) + x_3610);
            let x_3613 : vec2<f32> = u_xlat64;
            let x_3615 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3613.x, x_3613.y, x_3615);
            let x_3622 : vec3<f32> = txVec45;
            let x_3624 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3622.xy, x_3622.z);
            u_xlat87 = x_3624;
            let x_3626 : f32 = u_xlat23.z;
            let x_3627 : f32 = u_xlat87;
            let x_3629 : f32 = u_xlat86;
            u_xlat86 = ((x_3626 * x_3627) + x_3629);
            let x_3632 : vec4<f32> = u_xlat21;
            let x_3633 : vec2<f32> = vec2<f32>(x_3632.x, x_3632.y);
            let x_3635 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3633.x, x_3633.y, x_3635);
            let x_3642 : vec3<f32> = txVec46;
            let x_3644 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3642.xy, x_3642.z);
            u_xlat87 = x_3644;
            let x_3646 : f32 = u_xlat23.w;
            let x_3647 : f32 = u_xlat87;
            let x_3649 : f32 = u_xlat86;
            u_xlat86 = ((x_3646 * x_3647) + x_3649);
            let x_3652 : vec4<f32> = u_xlat19;
            let x_3653 : vec2<f32> = vec2<f32>(x_3652.x, x_3652.y);
            let x_3655 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3653.x, x_3653.y, x_3655);
            let x_3662 : vec3<f32> = txVec47;
            let x_3664 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3662.xy, x_3662.z);
            u_xlat87 = x_3664;
            let x_3666 : f32 = u_xlat24.x;
            let x_3667 : f32 = u_xlat87;
            let x_3669 : f32 = u_xlat86;
            u_xlat86 = ((x_3666 * x_3667) + x_3669);
            let x_3672 : vec4<f32> = u_xlat19;
            let x_3673 : vec2<f32> = vec2<f32>(x_3672.z, x_3672.w);
            let x_3675 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3673.x, x_3673.y, x_3675);
            let x_3682 : vec3<f32> = txVec48;
            let x_3684 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3682.xy, x_3682.z);
            u_xlat87 = x_3684;
            let x_3686 : f32 = u_xlat24.y;
            let x_3687 : f32 = u_xlat87;
            let x_3689 : f32 = u_xlat86;
            u_xlat86 = ((x_3686 * x_3687) + x_3689);
            let x_3692 : vec4<f32> = u_xlat20;
            let x_3693 : vec2<f32> = vec2<f32>(x_3692.x, x_3692.y);
            let x_3695 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3693.x, x_3693.y, x_3695);
            let x_3702 : vec3<f32> = txVec49;
            let x_3704 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3702.xy, x_3702.z);
            u_xlat87 = x_3704;
            let x_3706 : f32 = u_xlat24.z;
            let x_3707 : f32 = u_xlat87;
            let x_3709 : f32 = u_xlat86;
            u_xlat86 = ((x_3706 * x_3707) + x_3709);
            let x_3712 : vec4<f32> = u_xlat21;
            let x_3713 : vec2<f32> = vec2<f32>(x_3712.z, x_3712.w);
            let x_3715 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3713.x, x_3713.y, x_3715);
            let x_3722 : vec3<f32> = txVec50;
            let x_3724 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3722.xy, x_3722.z);
            u_xlat87 = x_3724;
            let x_3726 : f32 = u_xlat24.w;
            let x_3727 : f32 = u_xlat87;
            let x_3729 : f32 = u_xlat86;
            u_xlat86 = ((x_3726 * x_3727) + x_3729);
            let x_3732 : vec4<f32> = u_xlat22;
            let x_3733 : vec2<f32> = vec2<f32>(x_3732.x, x_3732.y);
            let x_3735 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3733.x, x_3733.y, x_3735);
            let x_3742 : vec3<f32> = txVec51;
            let x_3744 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3742.xy, x_3742.z);
            u_xlat87 = x_3744;
            let x_3746 : f32 = u_xlat25.x;
            let x_3747 : f32 = u_xlat87;
            let x_3749 : f32 = u_xlat86;
            u_xlat86 = ((x_3746 * x_3747) + x_3749);
            let x_3752 : vec4<f32> = u_xlat22;
            let x_3753 : vec2<f32> = vec2<f32>(x_3752.z, x_3752.w);
            let x_3755 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3753.x, x_3753.y, x_3755);
            let x_3762 : vec3<f32> = txVec52;
            let x_3764 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3762.xy, x_3762.z);
            u_xlat87 = x_3764;
            let x_3766 : f32 = u_xlat25.y;
            let x_3767 : f32 = u_xlat87;
            let x_3769 : f32 = u_xlat86;
            u_xlat86 = ((x_3766 * x_3767) + x_3769);
            let x_3772 : vec2<f32> = u_xlat40;
            let x_3774 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3772.x, x_3772.y, x_3774);
            let x_3781 : vec3<f32> = txVec53;
            let x_3783 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3781.xy, x_3781.z);
            u_xlat87 = x_3783;
            let x_3785 : f32 = u_xlat25.z;
            let x_3786 : f32 = u_xlat87;
            let x_3788 : f32 = u_xlat86;
            u_xlat86 = ((x_3785 * x_3786) + x_3788);
            let x_3791 : vec2<f32> = u_xlat72;
            let x_3793 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3791.x, x_3791.y, x_3793);
            let x_3800 : vec3<f32> = txVec54;
            let x_3802 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3800.xy, x_3800.z);
            u_xlat87 = x_3802;
            let x_3804 : f32 = u_xlat25.w;
            let x_3805 : f32 = u_xlat87;
            let x_3807 : f32 = u_xlat86;
            u_xlat86 = ((x_3804 * x_3805) + x_3807);
            let x_3810 : vec4<f32> = u_xlat17;
            let x_3811 : vec2<f32> = vec2<f32>(x_3810.x, x_3810.y);
            let x_3813 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3811.x, x_3811.y, x_3813);
            let x_3820 : vec3<f32> = txVec55;
            let x_3822 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3820.xy, x_3820.z);
            u_xlat87 = x_3822;
            let x_3824 : f32 = u_xlat13.x;
            let x_3825 : f32 = u_xlat87;
            let x_3827 : f32 = u_xlat86;
            u_xlat86 = ((x_3824 * x_3825) + x_3827);
            let x_3830 : vec4<f32> = u_xlat17;
            let x_3831 : vec2<f32> = vec2<f32>(x_3830.z, x_3830.w);
            let x_3833 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3831.x, x_3831.y, x_3833);
            let x_3840 : vec3<f32> = txVec56;
            let x_3842 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3840.xy, x_3840.z);
            u_xlat87 = x_3842;
            let x_3844 : f32 = u_xlat13.y;
            let x_3845 : f32 = u_xlat87;
            let x_3847 : f32 = u_xlat86;
            u_xlat86 = ((x_3844 * x_3845) + x_3847);
            let x_3850 : vec2<f32> = u_xlat67;
            let x_3852 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3850.x, x_3850.y, x_3852);
            let x_3859 : vec3<f32> = txVec57;
            let x_3861 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3859.xy, x_3859.z);
            u_xlat87 = x_3861;
            let x_3863 : f32 = u_xlat13.z;
            let x_3864 : f32 = u_xlat87;
            let x_3866 : f32 = u_xlat86;
            u_xlat86 = ((x_3863 * x_3864) + x_3866);
            let x_3869 : vec4<f32> = u_xlat12;
            let x_3870 : vec2<f32> = vec2<f32>(x_3869.x, x_3869.y);
            let x_3872 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3870.x, x_3870.y, x_3872);
            let x_3879 : vec3<f32> = txVec58;
            let x_3881 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3879.xy, x_3879.z);
            u_xlat87 = x_3881;
            let x_3883 : f32 = u_xlat13.w;
            let x_3884 : f32 = u_xlat87;
            let x_3886 : f32 = u_xlat86;
            u_xlat85 = ((x_3883 * x_3884) + x_3886);
          }
        }
      } else {
        let x_3890 : vec4<f32> = u_xlat11;
        let x_3891 : vec2<f32> = vec2<f32>(x_3890.x, x_3890.y);
        let x_3893 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3891.x, x_3891.y, x_3893);
        let x_3900 : vec3<f32> = txVec59;
        let x_3902 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3900.xy, x_3900.z);
        u_xlat85 = x_3902;
      }
      let x_3903 : i32 = u_xlati83;
      let x_3905 : f32 = x_733.x_AdditionalShadowParams[x_3903].x;
      u_xlat86 = (1.0f + -(x_3905));
      let x_3908 : f32 = u_xlat85;
      let x_3909 : i32 = u_xlati83;
      let x_3911 : f32 = x_733.x_AdditionalShadowParams[x_3909].x;
      let x_3913 : f32 = u_xlat86;
      u_xlat85 = ((x_3908 * x_3911) + x_3913);
      let x_3916 : f32 = u_xlat11.z;
      u_xlatb86 = (0.0f >= x_3916);
      let x_3920 : f32 = u_xlat11.z;
      u_xlatb87 = (x_3920 >= 1.0f);
      let x_3922 : bool = u_xlatb86;
      let x_3923 : bool = u_xlatb87;
      u_xlatb86 = (x_3922 | x_3923);
      let x_3925 : bool = u_xlatb86;
      let x_3926 : f32 = u_xlat85;
      u_xlat85 = select(x_3926, 1.0f, x_3925);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_3929 : f32 = u_xlat85;
    u_xlat86 = (-(x_3929) + 1.0f);
    let x_3932 : f32 = u_xlat80;
    let x_3933 : f32 = u_xlat86;
    let x_3935 : f32 = u_xlat85;
    u_xlat85 = ((x_3932 * x_3933) + x_3935);
    let x_3938 : i32 = u_xlati83;
    u_xlati86 = (1i << bitcast<u32>((x_3938 & 31i)));
    let x_3941 : i32 = u_xlati86;
    let x_3944 : f32 = x_2045.x_AdditionalLightsCookieEnableBits;
    u_xlati86 = bitcast<i32>((bitcast<u32>(x_3941) & bitcast<u32>(x_3944)));
    let x_3948 : i32 = u_xlati86;
    if ((x_3948 != 0i)) {
      let x_3952 : i32 = u_xlati83;
      let x_3954 : f32 = x_2045.x_AdditionalLightsLightTypes[x_3952].el;
      u_xlati86 = i32(x_3954);
      let x_3957 : i32 = u_xlati86;
      u_xlati87 = select(1i, 0i, (x_3957 != 0i));
      let x_3961 : i32 = u_xlati83;
      u_xlati88 = (x_3961 << bitcast<u32>(2i));
      let x_3963 : i32 = u_xlati87;
      if ((x_3963 != 0i)) {
        let x_3967 : vec3<f32> = vs_TEXCOORD7;
        let x_3969 : i32 = u_xlati88;
        let x_3972 : i32 = u_xlati88;
        let x_3976 : vec4<f32> = x_2045.x_AdditionalLightsWorldToLights[((x_3969 + 1i) / 4i)][((x_3972 + 1i) % 4i)];
        let x_3978 : vec3<f32> = (vec3<f32>(x_3967.y, x_3967.y, x_3967.y) * vec3<f32>(x_3976.x, x_3976.y, x_3976.w));
        let x_3979 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3978.x, x_3978.y, x_3978.z, x_3979.w);
        let x_3981 : i32 = u_xlati88;
        let x_3983 : i32 = u_xlati88;
        let x_3986 : vec4<f32> = x_2045.x_AdditionalLightsWorldToLights[(x_3981 / 4i)][(x_3983 % 4i)];
        let x_3988 : vec3<f32> = vs_TEXCOORD7;
        let x_3991 : vec4<f32> = u_xlat11;
        let x_3993 : vec3<f32> = ((vec3<f32>(x_3986.x, x_3986.y, x_3986.w) * vec3<f32>(x_3988.x, x_3988.x, x_3988.x)) + vec3<f32>(x_3991.x, x_3991.y, x_3991.z));
        let x_3994 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3993.x, x_3993.y, x_3993.z, x_3994.w);
        let x_3996 : i32 = u_xlati88;
        let x_3999 : i32 = u_xlati88;
        let x_4003 : vec4<f32> = x_2045.x_AdditionalLightsWorldToLights[((x_3996 + 2i) / 4i)][((x_3999 + 2i) % 4i)];
        let x_4005 : vec3<f32> = vs_TEXCOORD7;
        let x_4008 : vec4<f32> = u_xlat11;
        let x_4010 : vec3<f32> = ((vec3<f32>(x_4003.x, x_4003.y, x_4003.w) * vec3<f32>(x_4005.z, x_4005.z, x_4005.z)) + vec3<f32>(x_4008.x, x_4008.y, x_4008.z));
        let x_4011 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4010.x, x_4010.y, x_4010.z, x_4011.w);
        let x_4013 : vec4<f32> = u_xlat11;
        let x_4015 : i32 = u_xlati88;
        let x_4018 : i32 = u_xlati88;
        let x_4022 : vec4<f32> = x_2045.x_AdditionalLightsWorldToLights[((x_4015 + 3i) / 4i)][((x_4018 + 3i) % 4i)];
        let x_4024 : vec3<f32> = (vec3<f32>(x_4013.x, x_4013.y, x_4013.z) + vec3<f32>(x_4022.x, x_4022.y, x_4022.w));
        let x_4025 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4024.x, x_4024.y, x_4024.z, x_4025.w);
        let x_4027 : vec4<f32> = u_xlat11;
        let x_4029 : vec4<f32> = u_xlat11;
        let x_4031 : vec2<f32> = (vec2<f32>(x_4027.x, x_4027.y) / vec2<f32>(x_4029.z, x_4029.z));
        let x_4032 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4031.x, x_4031.y, x_4032.z, x_4032.w);
        let x_4034 : vec4<f32> = u_xlat11;
        let x_4037 : vec2<f32> = ((vec2<f32>(x_4034.x, x_4034.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4038 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4037.x, x_4037.y, x_4038.z, x_4038.w);
        let x_4040 : vec4<f32> = u_xlat11;
        let x_4044 : vec2<f32> = clamp(vec2<f32>(x_4040.x, x_4040.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4045 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4044.x, x_4044.y, x_4045.z, x_4045.w);
        let x_4047 : i32 = u_xlati83;
        let x_4049 : vec4<f32> = x_2045.x_AdditionalLightsCookieAtlasUVRects[x_4047];
        let x_4051 : vec4<f32> = u_xlat11;
        let x_4054 : i32 = u_xlati83;
        let x_4056 : vec4<f32> = x_2045.x_AdditionalLightsCookieAtlasUVRects[x_4054];
        let x_4058 : vec2<f32> = ((vec2<f32>(x_4049.x, x_4049.y) * vec2<f32>(x_4051.x, x_4051.y)) + vec2<f32>(x_4056.z, x_4056.w));
        let x_4059 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4058.x, x_4058.y, x_4059.z, x_4059.w);
      } else {
        let x_4062 : i32 = u_xlati86;
        u_xlatb86 = (x_4062 == 1i);
        let x_4064 : bool = u_xlatb86;
        u_xlati86 = select(0i, 1i, x_4064);
        let x_4066 : i32 = u_xlati86;
        if ((x_4066 != 0i)) {
          let x_4071 : vec3<f32> = vs_TEXCOORD7;
          let x_4073 : i32 = u_xlati88;
          let x_4076 : i32 = u_xlati88;
          let x_4080 : vec4<f32> = x_2045.x_AdditionalLightsWorldToLights[((x_4073 + 1i) / 4i)][((x_4076 + 1i) % 4i)];
          u_xlat63 = (vec2<f32>(x_4071.y, x_4071.y) * vec2<f32>(x_4080.x, x_4080.y));
          let x_4083 : i32 = u_xlati88;
          let x_4085 : i32 = u_xlati88;
          let x_4088 : vec4<f32> = x_2045.x_AdditionalLightsWorldToLights[(x_4083 / 4i)][(x_4085 % 4i)];
          let x_4090 : vec3<f32> = vs_TEXCOORD7;
          let x_4093 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4088.x, x_4088.y) * vec2<f32>(x_4090.x, x_4090.x)) + x_4093);
          let x_4095 : i32 = u_xlati88;
          let x_4098 : i32 = u_xlati88;
          let x_4102 : vec4<f32> = x_2045.x_AdditionalLightsWorldToLights[((x_4095 + 2i) / 4i)][((x_4098 + 2i) % 4i)];
          let x_4104 : vec3<f32> = vs_TEXCOORD7;
          let x_4107 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4102.x, x_4102.y) * vec2<f32>(x_4104.z, x_4104.z)) + x_4107);
          let x_4109 : vec2<f32> = u_xlat63;
          let x_4110 : i32 = u_xlati88;
          let x_4113 : i32 = u_xlati88;
          let x_4117 : vec4<f32> = x_2045.x_AdditionalLightsWorldToLights[((x_4110 + 3i) / 4i)][((x_4113 + 3i) % 4i)];
          u_xlat63 = (x_4109 + vec2<f32>(x_4117.x, x_4117.y));
          let x_4120 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4120 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4123 : vec2<f32> = u_xlat63;
          u_xlat63 = fract(x_4123);
          let x_4125 : i32 = u_xlati83;
          let x_4127 : vec4<f32> = x_2045.x_AdditionalLightsCookieAtlasUVRects[x_4125];
          let x_4129 : vec2<f32> = u_xlat63;
          let x_4131 : i32 = u_xlati83;
          let x_4133 : vec4<f32> = x_2045.x_AdditionalLightsCookieAtlasUVRects[x_4131];
          let x_4135 : vec2<f32> = ((vec2<f32>(x_4127.x, x_4127.y) * x_4129) + vec2<f32>(x_4133.z, x_4133.w));
          let x_4136 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4135.x, x_4135.y, x_4136.z, x_4136.w);
        } else {
          let x_4139 : vec3<f32> = vs_TEXCOORD7;
          let x_4141 : i32 = u_xlati88;
          let x_4144 : i32 = u_xlati88;
          let x_4148 : vec4<f32> = x_2045.x_AdditionalLightsWorldToLights[((x_4141 + 1i) / 4i)][((x_4144 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4139.y, x_4139.y, x_4139.y, x_4139.y) * x_4148);
          let x_4150 : i32 = u_xlati88;
          let x_4152 : i32 = u_xlati88;
          let x_4155 : vec4<f32> = x_2045.x_AdditionalLightsWorldToLights[(x_4150 / 4i)][(x_4152 % 4i)];
          let x_4156 : vec3<f32> = vs_TEXCOORD7;
          let x_4159 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4155 * vec4<f32>(x_4156.x, x_4156.x, x_4156.x, x_4156.x)) + x_4159);
          let x_4161 : i32 = u_xlati88;
          let x_4164 : i32 = u_xlati88;
          let x_4168 : vec4<f32> = x_2045.x_AdditionalLightsWorldToLights[((x_4161 + 2i) / 4i)][((x_4164 + 2i) % 4i)];
          let x_4169 : vec3<f32> = vs_TEXCOORD7;
          let x_4172 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4168 * vec4<f32>(x_4169.z, x_4169.z, x_4169.z, x_4169.z)) + x_4172);
          let x_4174 : vec4<f32> = u_xlat12;
          let x_4175 : i32 = u_xlati88;
          let x_4178 : i32 = u_xlati88;
          let x_4182 : vec4<f32> = x_2045.x_AdditionalLightsWorldToLights[((x_4175 + 3i) / 4i)][((x_4178 + 3i) % 4i)];
          u_xlat12 = (x_4174 + x_4182);
          let x_4184 : vec4<f32> = u_xlat12;
          let x_4186 : vec4<f32> = u_xlat12;
          let x_4188 : vec3<f32> = (vec3<f32>(x_4184.x, x_4184.y, x_4184.z) / vec3<f32>(x_4186.w, x_4186.w, x_4186.w));
          let x_4189 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4188.x, x_4188.y, x_4188.z, x_4189.w);
          let x_4191 : vec4<f32> = u_xlat12;
          let x_4193 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(vec3<f32>(x_4191.x, x_4191.y, x_4191.z), vec3<f32>(x_4193.x, x_4193.y, x_4193.z));
          let x_4196 : f32 = u_xlat86;
          u_xlat86 = inverseSqrt(x_4196);
          let x_4198 : f32 = u_xlat86;
          let x_4200 : vec4<f32> = u_xlat12;
          let x_4202 : vec3<f32> = (vec3<f32>(x_4198, x_4198, x_4198) * vec3<f32>(x_4200.x, x_4200.y, x_4200.z));
          let x_4203 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4202.x, x_4202.y, x_4202.z, x_4203.w);
          let x_4205 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(abs(vec3<f32>(x_4205.x, x_4205.y, x_4205.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4210 : f32 = u_xlat86;
          u_xlat86 = max(x_4210, 0.00000099999999747524f);
          let x_4213 : f32 = u_xlat86;
          u_xlat86 = (1.0f / x_4213);
          let x_4215 : f32 = u_xlat86;
          let x_4217 : vec4<f32> = u_xlat12;
          let x_4219 : vec3<f32> = (vec3<f32>(x_4215, x_4215, x_4215) * vec3<f32>(x_4217.z, x_4217.x, x_4217.y));
          let x_4220 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4219.x, x_4219.y, x_4219.z, x_4220.w);
          let x_4223 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4223);
          let x_4227 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4227, 0.0f, 1.0f);
          let x_4231 : vec4<f32> = u_xlat13;
          let x_4233 : vec4<bool> = (vec4<f32>(x_4231.y, x_4231.z, x_4231.y, x_4231.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_4233.x, x_4233.y);
          let x_4236 : bool = u_xlatb63.x;
          if (x_4236) {
            let x_4241 : f32 = u_xlat13.x;
            x_4237 = x_4241;
          } else {
            let x_4244 : f32 = u_xlat13.x;
            x_4237 = -(x_4244);
          }
          let x_4246 : f32 = x_4237;
          u_xlat63.x = x_4246;
          let x_4249 : bool = u_xlatb63.y;
          if (x_4249) {
            let x_4254 : f32 = u_xlat13.x;
            x_4250 = x_4254;
          } else {
            let x_4257 : f32 = u_xlat13.x;
            x_4250 = -(x_4257);
          }
          let x_4259 : f32 = x_4250;
          u_xlat63.y = x_4259;
          let x_4261 : vec4<f32> = u_xlat12;
          let x_4263 : f32 = u_xlat86;
          let x_4266 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4261.x, x_4261.y) * vec2<f32>(x_4263, x_4263)) + x_4266);
          let x_4268 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4268 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4271 : vec2<f32> = u_xlat63;
          u_xlat63 = clamp(x_4271, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4275 : i32 = u_xlati83;
          let x_4277 : vec4<f32> = x_2045.x_AdditionalLightsCookieAtlasUVRects[x_4275];
          let x_4279 : vec2<f32> = u_xlat63;
          let x_4281 : i32 = u_xlati83;
          let x_4283 : vec4<f32> = x_2045.x_AdditionalLightsCookieAtlasUVRects[x_4281];
          let x_4285 : vec2<f32> = ((vec2<f32>(x_4277.x, x_4277.y) * x_4279) + vec2<f32>(x_4283.z, x_4283.w));
          let x_4286 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4285.x, x_4285.y, x_4286.z, x_4286.w);
        }
      }
      let x_4293 : vec4<f32> = u_xlat11;
      let x_4295 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4293.x, x_4293.y), 0.0f);
      u_xlat11 = x_4295;
      let x_4297 : bool = u_xlatb7.y;
      if (x_4297) {
        let x_4302 : f32 = u_xlat11.w;
        x_4298 = x_4302;
      } else {
        let x_4305 : f32 = u_xlat11.x;
        x_4298 = x_4305;
      }
      let x_4306 : f32 = x_4298;
      u_xlat86 = x_4306;
      let x_4308 : bool = u_xlatb7.x;
      if (x_4308) {
        let x_4312 : vec4<f32> = u_xlat11;
        x_4309 = vec3<f32>(x_4312.x, x_4312.y, x_4312.z);
      } else {
        let x_4315 : f32 = u_xlat86;
        x_4309 = vec3<f32>(x_4315, x_4315, x_4315);
      }
      let x_4317 : vec3<f32> = x_4309;
      let x_4318 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4317.x, x_4317.y, x_4317.z, x_4318.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4324 : vec4<f32> = u_xlat11;
    let x_4326 : i32 = u_xlati83;
    let x_4328 : vec4<f32> = x_2520.x_AdditionalLightsColor[x_4326];
    let x_4330 : vec3<f32> = (vec3<f32>(x_4324.x, x_4324.y, x_4324.z) * vec3<f32>(x_4328.x, x_4328.y, x_4328.z));
    let x_4331 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4330.x, x_4330.y, x_4330.z, x_4331.w);
    let x_4333 : f32 = u_xlat84;
    let x_4334 : f32 = u_xlat85;
    u_xlat83 = (x_4333 * x_4334);
    let x_4336 : vec4<f32> = u_xlat1;
    let x_4338 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_4336.x, x_4336.y, x_4336.z), vec3<f32>(x_4338.x, x_4338.y, x_4338.z));
    let x_4341 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4341, 0.0f, 1.0f);
    let x_4343 : f32 = u_xlat83;
    let x_4344 : f32 = u_xlat84;
    u_xlat83 = (x_4343 * x_4344);
    let x_4346 : f32 = u_xlat83;
    let x_4348 : vec4<f32> = u_xlat11;
    let x_4350 : vec3<f32> = (vec3<f32>(x_4346, x_4346, x_4346) * vec3<f32>(x_4348.x, x_4348.y, x_4348.z));
    let x_4351 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4350.x, x_4350.y, x_4350.z, x_4351.w);
    let x_4353 : vec4<f32> = u_xlat9;
    let x_4355 : f32 = u_xlat59;
    let x_4358 : vec3<f32> = u_xlat2;
    let x_4359 : vec3<f32> = ((vec3<f32>(x_4353.x, x_4353.y, x_4353.z) * vec3<f32>(x_4355, x_4355, x_4355)) + x_4358);
    let x_4360 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4359.x, x_4359.y, x_4359.z, x_4360.w);
    let x_4362 : vec4<f32> = u_xlat9;
    let x_4364 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4362.x, x_4362.y, x_4362.z), vec3<f32>(x_4364.x, x_4364.y, x_4364.z));
    let x_4367 : f32 = u_xlat83;
    u_xlat83 = max(x_4367, 1.17549435e-38f);
    let x_4369 : f32 = u_xlat83;
    u_xlat83 = inverseSqrt(x_4369);
    let x_4371 : f32 = u_xlat83;
    let x_4373 : vec4<f32> = u_xlat9;
    let x_4375 : vec3<f32> = (vec3<f32>(x_4371, x_4371, x_4371) * vec3<f32>(x_4373.x, x_4373.y, x_4373.z));
    let x_4376 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4375.x, x_4375.y, x_4375.z, x_4376.w);
    let x_4378 : vec4<f32> = u_xlat1;
    let x_4380 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4378.x, x_4378.y, x_4378.z), vec3<f32>(x_4380.x, x_4380.y, x_4380.z));
    let x_4383 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4383, 0.0f, 1.0f);
    let x_4385 : vec4<f32> = u_xlat10;
    let x_4387 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4385.x, x_4385.y, x_4385.z), vec3<f32>(x_4387.x, x_4387.y, x_4387.z));
    let x_4390 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4390, 0.0f, 1.0f);
    let x_4392 : f32 = u_xlat83;
    let x_4393 : f32 = u_xlat83;
    u_xlat83 = (x_4392 * x_4393);
    let x_4395 : f32 = u_xlat83;
    let x_4397 : f32 = u_xlat0.x;
    u_xlat83 = ((x_4395 * x_4397) + 1.00001001358032226562f);
    let x_4400 : f32 = u_xlat84;
    let x_4401 : f32 = u_xlat84;
    u_xlat84 = (x_4400 * x_4401);
    let x_4403 : f32 = u_xlat83;
    let x_4404 : f32 = u_xlat83;
    u_xlat83 = (x_4403 * x_4404);
    let x_4406 : f32 = u_xlat84;
    u_xlat84 = max(x_4406, 0.10000000149011611938f);
    let x_4408 : f32 = u_xlat83;
    let x_4409 : f32 = u_xlat84;
    u_xlat83 = (x_4408 * x_4409);
    let x_4411 : f32 = u_xlat81;
    let x_4412 : f32 = u_xlat83;
    u_xlat83 = (x_4411 * x_4412);
    let x_4414 : f32 = u_xlat79;
    let x_4415 : f32 = u_xlat83;
    u_xlat83 = (x_4414 / x_4415);
    let x_4417 : vec4<f32> = u_xlat5;
    let x_4419 : f32 = u_xlat83;
    let x_4422 : vec4<f32> = u_xlat4;
    let x_4424 : vec3<f32> = ((vec3<f32>(x_4417.x, x_4417.y, x_4417.z) * vec3<f32>(x_4419, x_4419, x_4419)) + vec3<f32>(x_4422.x, x_4422.y, x_4422.z));
    let x_4425 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4424.x, x_4424.y, x_4424.z, x_4425.w);
    let x_4427 : vec4<f32> = u_xlat9;
    let x_4429 : vec4<f32> = u_xlat11;
    let x_4432 : vec4<f32> = u_xlat8;
    let x_4434 : vec3<f32> = ((vec3<f32>(x_4427.x, x_4427.y, x_4427.z) * vec3<f32>(x_4429.x, x_4429.y, x_4429.z)) + vec3<f32>(x_4432.x, x_4432.y, x_4432.z));
    let x_4435 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4434.x, x_4434.y, x_4434.z, x_4435.w);

    continuing {
      let x_4437 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4437 + bitcast<u32>(1i));
    }
  }
  let x_4439 : vec4<f32> = u_xlat3;
  let x_4441 : f32 = u_xlat26;
  let x_4444 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_4439.x, x_4439.y, x_4439.z) * vec3<f32>(x_4441, x_4441, x_4441)) + vec3<f32>(x_4444.x, x_4444.y, x_4444.z));
  let x_4447 : vec4<f32> = u_xlat8;
  let x_4449 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4447.x, x_4447.y, x_4447.z) + x_4449);
  let x_4453 : f32 = u_xlat78;
  let x_4455 : vec3<f32> = u_xlat0;
  let x_4456 : vec3<f32> = (vec3<f32>(x_4453, x_4453, x_4453) * x_4455);
  let x_4457 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4456.x, x_4456.y, x_4456.z, x_4457.w);
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


