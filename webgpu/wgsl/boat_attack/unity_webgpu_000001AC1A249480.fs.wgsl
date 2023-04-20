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
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
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

var<private> u_xlat82 : f32;

var<private> u_xlatb83 : bool;

@group(1) @binding(4) var<uniform> x_727 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat83 : f32;

var<private> u_xlatb6 : bool;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat32 : vec3<f32>;

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

var<private> u_xlatb32 : vec2<bool>;

@group(1) @binding(5) var<uniform> x_2069 : LightCookies;

@group(0) @binding(10) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat85 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2260 : UnityPerDraw;

var<private> u_xlatu52 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu6 : u32;

var<private> u_xlati59 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_2545 : AdditionalLights;

var<private> u_xlat59 : f32;

var<private> u_xlati86 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb86 : bool;

@group(0) @binding(9) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(11) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu83 : u32;

fn main_1() {
  var x_548 : vec3<f32>;
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
  var x_2152 : f32;
  var x_2164 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2681 : f32;
  var x_2691 : f32;
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
  var x_4270 : f32;
  var x_4283 : f32;
  var x_4341 : f32;
  var x_4352 : vec3<f32>;
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
  let x_536 : f32 = x_111.unity_MatrixV[0i].z;
  u_xlat2.x = x_536;
  let x_540 : f32 = x_111.unity_MatrixV[1i].z;
  u_xlat2.y = x_540;
  let x_544 : f32 = x_111.unity_MatrixV[2i].z;
  u_xlat2.z = x_544;
  let x_546 : bool = u_xlatb1;
  if (x_546) {
    let x_551 : vec3<f32> = u_xlat27;
    x_548 = x_551;
  } else {
    let x_553 : vec3<f32> = u_xlat2;
    x_548 = x_553;
  }
  let x_554 : vec3<f32> = x_548;
  let x_555 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
  let x_558 : vec3<f32> = vs_TEXCOORD3;
  let x_559 : vec3<f32> = vs_TEXCOORD3;
  u_xlat79 = dot(x_558, x_559);
  let x_561 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_561);
  let x_563 : f32 = u_xlat79;
  let x_565 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_563, x_563, x_563) * x_565);
  let x_569 : f32 = vs_TEXCOORD7.y;
  let x_571 : f32 = x_111.unity_MatrixV[1i].z;
  u_xlat79 = (x_569 * x_571);
  let x_574 : f32 = x_111.unity_MatrixV[0i].z;
  let x_576 : f32 = vs_TEXCOORD7.x;
  let x_578 : f32 = u_xlat79;
  u_xlat79 = ((x_574 * x_576) + x_578);
  let x_581 : f32 = x_111.unity_MatrixV[2i].z;
  let x_583 : f32 = vs_TEXCOORD7.z;
  let x_585 : f32 = u_xlat79;
  u_xlat79 = ((x_581 * x_583) + x_585);
  let x_587 : f32 = u_xlat79;
  let x_590 : f32 = x_111.unity_MatrixV[3i].z;
  u_xlat79 = (x_587 + x_590);
  let x_592 : f32 = u_xlat79;
  let x_595 : f32 = x_111.x_ProjectionParams.y;
  u_xlat79 = (-(x_592) + -(x_595));
  let x_598 : f32 = u_xlat79;
  u_xlat79 = max(x_598, 0.0f);
  let x_600 : f32 = u_xlat79;
  let x_602 : f32 = x_111.unity_FogParams.x;
  u_xlat79 = (x_600 * x_602);
  let x_609 : vec4<f32> = vs_TEXCOORD0;
  let x_612 : f32 = x_111.x_GlobalMipBias.x;
  let x_613 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_609.z, x_609.w), x_612);
  u_xlat3 = x_613;
  let x_618 : vec4<f32> = vs_TEXCOORD0;
  let x_621 : f32 = x_111.x_GlobalMipBias.x;
  let x_622 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_618.z, x_618.w), x_621);
  let x_623 : vec3<f32> = vec3<f32>(x_622.x, x_622.y, x_622.z);
  let x_624 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_626 : vec4<f32> = u_xlat3;
  let x_630 : vec3<f32> = (vec3<f32>(x_626.x, x_626.y, x_626.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_631 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  let x_634 : vec3<f32> = u_xlat2;
  let x_635 : vec4<f32> = u_xlat3;
  u_xlat80 = dot(x_634, vec3<f32>(x_635.x, x_635.y, x_635.z));
  let x_638 : f32 = u_xlat80;
  u_xlat80 = (x_638 + 0.5f);
  let x_640 : f32 = u_xlat80;
  let x_642 : vec4<f32> = u_xlat4;
  let x_644 : vec3<f32> = (vec3<f32>(x_640, x_640, x_640) * vec3<f32>(x_642.x, x_642.y, x_642.z));
  let x_645 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
  let x_648 : f32 = u_xlat3.w;
  u_xlat80 = max(x_648, 0.00009999999747378752f);
  let x_651 : vec4<f32> = u_xlat3;
  let x_653 : f32 = u_xlat80;
  let x_655 : vec3<f32> = (vec3<f32>(x_651.x, x_651.y, x_651.z) / vec3<f32>(x_653, x_653, x_653));
  let x_656 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_659 : f32 = u_xlat0.x;
  u_xlat80 = ((-(x_659) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_665 : f32 = u_xlat52;
  let x_666 : f32 = u_xlat80;
  u_xlat81 = (x_665 + -(x_666));
  let x_669 : f32 = u_xlat80;
  let x_671 : vec4<f32> = u_xlat5;
  let x_673 : vec3<f32> = (vec3<f32>(x_669, x_669, x_669) * vec3<f32>(x_671.x, x_671.y, x_671.z));
  let x_674 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_676 : vec4<f32> = u_xlat5;
  let x_680 : vec3<f32> = (vec3<f32>(x_676.x, x_676.y, x_676.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_681 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
  let x_683 : vec3<f32> = u_xlat0;
  let x_685 : vec4<f32> = u_xlat5;
  let x_690 : vec3<f32> = ((vec3<f32>(x_683.x, x_683.x, x_683.x) * vec3<f32>(x_685.x, x_685.y, x_685.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_691 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_693 : f32 = u_xlat52;
  u_xlat0.x = (-(x_693) + 1.0f);
  let x_698 : f32 = u_xlat0.x;
  let x_700 : f32 = u_xlat0.x;
  u_xlat52 = (x_698 * x_700);
  let x_702 : f32 = u_xlat52;
  u_xlat52 = max(x_702, 0.0078125f);
  let x_705 : f32 = u_xlat52;
  let x_706 : f32 = u_xlat52;
  u_xlat80 = (x_705 * x_706);
  let x_708 : f32 = u_xlat81;
  u_xlat81 = (x_708 + 1.0f);
  let x_710 : f32 = u_xlat81;
  u_xlat81 = clamp(x_710, 0.0f, 1.0f);
  let x_713 : f32 = u_xlat52;
  u_xlat82 = ((x_713 * 4.0f) + 2.0f);
  let x_717 : f32 = u_xlat26;
  u_xlat26 = min(x_717, 1.0f);
  let x_729 : f32 = x_727.x_MainLightShadowParams.y;
  u_xlatb83 = (0.0f < x_729);
  let x_731 : bool = u_xlatb83;
  if (x_731) {
    let x_735 : f32 = x_727.x_MainLightShadowParams.y;
    u_xlatb83 = (x_735 == 1.0f);
    let x_737 : bool = u_xlatb83;
    if (x_737) {
      let x_741 : vec4<f32> = vs_TEXCOORD8;
      let x_744 : vec4<f32> = x_727.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_741.x, x_741.y, x_741.x, x_741.y) + x_744);
      let x_747 : vec4<f32> = u_xlat6;
      let x_748 : vec2<f32> = vec2<f32>(x_747.x, x_747.y);
      let x_750 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_748.x, x_748.y, x_750);
      let x_762 : vec3<f32> = txVec0;
      let x_764 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_762.xy, x_762.z);
      u_xlat7.x = x_764;
      let x_767 : vec4<f32> = u_xlat6;
      let x_768 : vec2<f32> = vec2<f32>(x_767.z, x_767.w);
      let x_770 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_768.x, x_768.y, x_770);
      let x_777 : vec3<f32> = txVec1;
      let x_779 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_777.xy, x_777.z);
      u_xlat7.y = x_779;
      let x_781 : vec4<f32> = vs_TEXCOORD8;
      let x_784 : vec4<f32> = x_727.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_781.x, x_781.y, x_781.x, x_781.y) + x_784);
      let x_787 : vec4<f32> = u_xlat6;
      let x_788 : vec2<f32> = vec2<f32>(x_787.x, x_787.y);
      let x_790 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_788.x, x_788.y, x_790);
      let x_797 : vec3<f32> = txVec2;
      let x_799 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_797.xy, x_797.z);
      u_xlat7.z = x_799;
      let x_802 : vec4<f32> = u_xlat6;
      let x_803 : vec2<f32> = vec2<f32>(x_802.z, x_802.w);
      let x_805 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_803.x, x_803.y, x_805);
      let x_812 : vec3<f32> = txVec3;
      let x_814 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_812.xy, x_812.z);
      u_xlat7.w = x_814;
      let x_817 : vec4<f32> = u_xlat7;
      u_xlat83 = dot(x_817, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_824 : f32 = x_727.x_MainLightShadowParams.y;
      u_xlatb6 = (x_824 == 2.0f);
      let x_826 : bool = u_xlatb6;
      if (x_826) {
        let x_829 : vec4<f32> = vs_TEXCOORD8;
        let x_832 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_835 : vec2<f32> = ((vec2<f32>(x_829.x, x_829.y) * vec2<f32>(x_832.z, x_832.w)) + vec2<f32>(0.5f, 0.5f));
        let x_836 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_835.x, x_835.y, x_836.z, x_836.w);
        let x_838 : vec4<f32> = u_xlat6;
        let x_840 : vec2<f32> = floor(vec2<f32>(x_838.x, x_838.y));
        let x_841 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_840.x, x_840.y, x_841.z, x_841.w);
        let x_845 : vec4<f32> = vs_TEXCOORD8;
        let x_848 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_851 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_845.x, x_845.y) * vec2<f32>(x_848.z, x_848.w)) + -(vec2<f32>(x_851.x, x_851.y)));
        let x_855 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_855.x, x_855.x, x_855.y, x_855.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_859 : vec4<f32> = u_xlat7;
        let x_861 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_859.x, x_859.x, x_859.z, x_859.z) * vec4<f32>(x_861.x, x_861.x, x_861.z, x_861.z));
        let x_864 : vec4<f32> = u_xlat8;
        let x_868 : vec2<f32> = (vec2<f32>(x_864.y, x_864.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_869 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_868.x, x_869.y, x_868.y, x_869.w);
        let x_871 : vec4<f32> = u_xlat8;
        let x_874 : vec2<f32> = u_xlat58;
        let x_876 : vec2<f32> = ((vec2<f32>(x_871.x, x_871.z) * vec2<f32>(0.5f, 0.5f)) + -(x_874));
        let x_877 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_876.x, x_876.y, x_877.z, x_877.w);
        let x_880 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_880) + vec2<f32>(1.0f, 1.0f));
        let x_884 : vec2<f32> = u_xlat58;
        let x_886 : vec2<f32> = min(x_884, vec2<f32>(0.0f, 0.0f));
        let x_887 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_886.x, x_886.y, x_887.z, x_887.w);
        let x_889 : vec4<f32> = u_xlat9;
        let x_892 : vec4<f32> = u_xlat9;
        let x_895 : vec2<f32> = u_xlat60;
        let x_896 : vec2<f32> = ((-(vec2<f32>(x_889.x, x_889.y)) * vec2<f32>(x_892.x, x_892.y)) + x_895);
        let x_897 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_896.x, x_896.y, x_897.z, x_897.w);
        let x_899 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_899, vec2<f32>(0.0f, 0.0f));
        let x_901 : vec2<f32> = u_xlat58;
        let x_903 : vec2<f32> = u_xlat58;
        let x_905 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_901) * x_903) + vec2<f32>(x_905.y, x_905.w));
        let x_908 : vec4<f32> = u_xlat9;
        let x_910 : vec2<f32> = (vec2<f32>(x_908.x, x_908.y) + vec2<f32>(1.0f, 1.0f));
        let x_911 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_910.x, x_910.y, x_911.z, x_911.w);
        let x_913 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_913 + vec2<f32>(1.0f, 1.0f));
        let x_915 : vec4<f32> = u_xlat8;
        let x_919 : vec2<f32> = (vec2<f32>(x_915.x, x_915.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_920 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_919.x, x_919.y, x_920.z, x_920.w);
        let x_922 : vec2<f32> = u_xlat60;
        let x_923 : vec2<f32> = (x_922 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_924 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_923.x, x_923.y, x_924.z, x_924.w);
        let x_926 : vec4<f32> = u_xlat9;
        let x_928 : vec2<f32> = (vec2<f32>(x_926.x, x_926.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_929 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_928.x, x_928.y, x_929.z, x_929.w);
        let x_931 : vec2<f32> = u_xlat58;
        let x_932 : vec2<f32> = (x_931 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_933 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_932.x, x_932.y, x_933.z, x_933.w);
        let x_935 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_935.y, x_935.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_939 : f32 = u_xlat9.x;
        u_xlat10.z = x_939;
        let x_942 : f32 = u_xlat58.x;
        u_xlat10.w = x_942;
        let x_945 : f32 = u_xlat11.x;
        u_xlat8.z = x_945;
        let x_948 : f32 = u_xlat7.x;
        u_xlat8.w = x_948;
        let x_950 : vec4<f32> = u_xlat8;
        let x_952 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_950.z, x_950.w, x_950.x, x_950.z) + vec4<f32>(x_952.z, x_952.w, x_952.x, x_952.z));
        let x_956 : f32 = u_xlat10.y;
        u_xlat9.z = x_956;
        let x_959 : f32 = u_xlat58.y;
        u_xlat9.w = x_959;
        let x_962 : f32 = u_xlat8.y;
        u_xlat11.z = x_962;
        let x_965 : f32 = u_xlat7.z;
        u_xlat11.w = x_965;
        let x_967 : vec4<f32> = u_xlat9;
        let x_969 : vec4<f32> = u_xlat11;
        let x_971 : vec3<f32> = (vec3<f32>(x_967.z, x_967.y, x_967.w) + vec3<f32>(x_969.z, x_969.y, x_969.w));
        let x_972 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_971.x, x_971.y, x_971.z, x_972.w);
        let x_974 : vec4<f32> = u_xlat8;
        let x_976 : vec4<f32> = u_xlat12;
        let x_978 : vec3<f32> = (vec3<f32>(x_974.x, x_974.z, x_974.w) / vec3<f32>(x_976.z, x_976.w, x_976.y));
        let x_979 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_978.x, x_978.y, x_978.z, x_979.w);
        let x_981 : vec4<f32> = u_xlat8;
        let x_986 : vec3<f32> = (vec3<f32>(x_981.x, x_981.y, x_981.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_987 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_986.x, x_986.y, x_986.z, x_987.w);
        let x_989 : vec4<f32> = u_xlat11;
        let x_991 : vec4<f32> = u_xlat7;
        let x_993 : vec3<f32> = (vec3<f32>(x_989.z, x_989.y, x_989.w) / vec3<f32>(x_991.x, x_991.y, x_991.z));
        let x_994 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_993.x, x_993.y, x_993.z, x_994.w);
        let x_996 : vec4<f32> = u_xlat9;
        let x_998 : vec3<f32> = (vec3<f32>(x_996.x, x_996.y, x_996.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_999 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_998.x, x_998.y, x_998.z, x_999.w);
        let x_1001 : vec4<f32> = u_xlat8;
        let x_1004 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1006 : vec3<f32> = (vec3<f32>(x_1001.y, x_1001.x, x_1001.z) * vec3<f32>(x_1004.x, x_1004.x, x_1004.x));
        let x_1007 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1007.w);
        let x_1009 : vec4<f32> = u_xlat9;
        let x_1012 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1014 : vec3<f32> = (vec3<f32>(x_1009.x, x_1009.y, x_1009.z) * vec3<f32>(x_1012.y, x_1012.y, x_1012.y));
        let x_1015 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1014.x, x_1014.y, x_1014.z, x_1015.w);
        let x_1018 : f32 = u_xlat9.x;
        u_xlat8.w = x_1018;
        let x_1020 : vec4<f32> = u_xlat6;
        let x_1023 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1026 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1020.x, x_1020.y, x_1020.x, x_1020.y) * vec4<f32>(x_1023.x, x_1023.y, x_1023.x, x_1023.y)) + vec4<f32>(x_1026.y, x_1026.w, x_1026.x, x_1026.w));
        let x_1029 : vec4<f32> = u_xlat6;
        let x_1032 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1035 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_1029.x, x_1029.y) * vec2<f32>(x_1032.x, x_1032.y)) + vec2<f32>(x_1035.z, x_1035.w));
        let x_1039 : f32 = u_xlat8.y;
        u_xlat9.w = x_1039;
        let x_1041 : vec4<f32> = u_xlat9;
        let x_1042 : vec2<f32> = vec2<f32>(x_1041.y, x_1041.z);
        let x_1043 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1043.x, x_1042.x, x_1043.z, x_1042.y);
        let x_1045 : vec4<f32> = u_xlat6;
        let x_1048 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1051 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1045.x, x_1045.y, x_1045.x, x_1045.y) * vec4<f32>(x_1048.x, x_1048.y, x_1048.x, x_1048.y)) + vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1051.y));
        let x_1054 : vec4<f32> = u_xlat6;
        let x_1057 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1060 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1054.x, x_1054.y, x_1054.x, x_1054.y) * vec4<f32>(x_1057.x, x_1057.y, x_1057.x, x_1057.y)) + vec4<f32>(x_1060.w, x_1060.y, x_1060.w, x_1060.z));
        let x_1063 : vec4<f32> = u_xlat6;
        let x_1066 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1069 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1063.x, x_1063.y, x_1063.x, x_1063.y) * vec4<f32>(x_1066.x, x_1066.y, x_1066.x, x_1066.y)) + vec4<f32>(x_1069.x, x_1069.w, x_1069.z, x_1069.w));
        let x_1072 : vec4<f32> = u_xlat7;
        let x_1074 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1072.x, x_1072.x, x_1072.x, x_1072.y) * vec4<f32>(x_1074.z, x_1074.w, x_1074.y, x_1074.z));
        let x_1078 : vec4<f32> = u_xlat7;
        let x_1080 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1078.y, x_1078.y, x_1078.z, x_1078.z) * x_1080);
        let x_1083 : f32 = u_xlat7.z;
        let x_1085 : f32 = u_xlat12.y;
        u_xlat6.x = (x_1083 * x_1085);
        let x_1089 : vec4<f32> = u_xlat10;
        let x_1090 : vec2<f32> = vec2<f32>(x_1089.x, x_1089.y);
        let x_1092 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1090.x, x_1090.y, x_1092);
        let x_1100 : vec3<f32> = txVec4;
        let x_1102 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1100.xy, x_1100.z);
        u_xlat32.x = x_1102;
        let x_1105 : vec4<f32> = u_xlat10;
        let x_1106 : vec2<f32> = vec2<f32>(x_1105.z, x_1105.w);
        let x_1108 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1106.x, x_1106.y, x_1108);
        let x_1115 : vec3<f32> = txVec5;
        let x_1117 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1115.xy, x_1115.z);
        u_xlat7.x = x_1117;
        let x_1120 : f32 = u_xlat7.x;
        let x_1122 : f32 = u_xlat13.y;
        u_xlat7.x = (x_1120 * x_1122);
        let x_1126 : f32 = u_xlat13.x;
        let x_1128 : f32 = u_xlat32.x;
        let x_1131 : f32 = u_xlat7.x;
        u_xlat32.x = ((x_1126 * x_1128) + x_1131);
        let x_1135 : vec2<f32> = u_xlat58;
        let x_1137 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1135.x, x_1135.y, x_1137);
        let x_1144 : vec3<f32> = txVec6;
        let x_1146 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1144.xy, x_1144.z);
        u_xlat58.x = x_1146;
        let x_1149 : f32 = u_xlat13.z;
        let x_1151 : f32 = u_xlat58.x;
        let x_1154 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1149 * x_1151) + x_1154);
        let x_1158 : vec4<f32> = u_xlat9;
        let x_1159 : vec2<f32> = vec2<f32>(x_1158.x, x_1158.y);
        let x_1161 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1159.x, x_1159.y, x_1161);
        let x_1168 : vec3<f32> = txVec7;
        let x_1170 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1168.xy, x_1168.z);
        u_xlat58.x = x_1170;
        let x_1173 : f32 = u_xlat13.w;
        let x_1175 : f32 = u_xlat58.x;
        let x_1178 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1173 * x_1175) + x_1178);
        let x_1182 : vec4<f32> = u_xlat11;
        let x_1183 : vec2<f32> = vec2<f32>(x_1182.x, x_1182.y);
        let x_1185 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1183.x, x_1183.y, x_1185);
        let x_1192 : vec3<f32> = txVec8;
        let x_1194 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1192.xy, x_1192.z);
        u_xlat58.x = x_1194;
        let x_1197 : f32 = u_xlat14.x;
        let x_1199 : f32 = u_xlat58.x;
        let x_1202 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1197 * x_1199) + x_1202);
        let x_1206 : vec4<f32> = u_xlat11;
        let x_1207 : vec2<f32> = vec2<f32>(x_1206.z, x_1206.w);
        let x_1209 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1207.x, x_1207.y, x_1209);
        let x_1216 : vec3<f32> = txVec9;
        let x_1218 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1216.xy, x_1216.z);
        u_xlat58.x = x_1218;
        let x_1221 : f32 = u_xlat14.y;
        let x_1223 : f32 = u_xlat58.x;
        let x_1226 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1221 * x_1223) + x_1226);
        let x_1230 : vec4<f32> = u_xlat9;
        let x_1231 : vec2<f32> = vec2<f32>(x_1230.z, x_1230.w);
        let x_1233 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1231.x, x_1231.y, x_1233);
        let x_1240 : vec3<f32> = txVec10;
        let x_1242 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1240.xy, x_1240.z);
        u_xlat58.x = x_1242;
        let x_1245 : f32 = u_xlat14.z;
        let x_1247 : f32 = u_xlat58.x;
        let x_1250 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1245 * x_1247) + x_1250);
        let x_1254 : vec4<f32> = u_xlat8;
        let x_1255 : vec2<f32> = vec2<f32>(x_1254.x, x_1254.y);
        let x_1257 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1255.x, x_1255.y, x_1257);
        let x_1264 : vec3<f32> = txVec11;
        let x_1266 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1264.xy, x_1264.z);
        u_xlat58.x = x_1266;
        let x_1269 : f32 = u_xlat14.w;
        let x_1271 : f32 = u_xlat58.x;
        let x_1274 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1269 * x_1271) + x_1274);
        let x_1278 : vec4<f32> = u_xlat8;
        let x_1279 : vec2<f32> = vec2<f32>(x_1278.z, x_1278.w);
        let x_1281 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1279.x, x_1279.y, x_1281);
        let x_1288 : vec3<f32> = txVec12;
        let x_1290 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1288.xy, x_1288.z);
        u_xlat58.x = x_1290;
        let x_1293 : f32 = u_xlat6.x;
        let x_1295 : f32 = u_xlat58.x;
        let x_1298 : f32 = u_xlat32.x;
        u_xlat83 = ((x_1293 * x_1295) + x_1298);
      } else {
        let x_1301 : vec4<f32> = vs_TEXCOORD8;
        let x_1304 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1307 : vec2<f32> = ((vec2<f32>(x_1301.x, x_1301.y) * vec2<f32>(x_1304.z, x_1304.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1308 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1307.x, x_1307.y, x_1308.z, x_1308.w);
        let x_1310 : vec4<f32> = u_xlat6;
        let x_1312 : vec2<f32> = floor(vec2<f32>(x_1310.x, x_1310.y));
        let x_1313 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1312.x, x_1312.y, x_1313.z, x_1313.w);
        let x_1315 : vec4<f32> = vs_TEXCOORD8;
        let x_1318 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1321 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1315.x, x_1315.y) * vec2<f32>(x_1318.z, x_1318.w)) + -(vec2<f32>(x_1321.x, x_1321.y)));
        let x_1325 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1325.x, x_1325.x, x_1325.y, x_1325.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1328 : vec4<f32> = u_xlat7;
        let x_1330 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1328.x, x_1328.x, x_1328.z, x_1328.z) * vec4<f32>(x_1330.x, x_1330.x, x_1330.z, x_1330.z));
        let x_1333 : vec4<f32> = u_xlat8;
        let x_1337 : vec2<f32> = (vec2<f32>(x_1333.y, x_1333.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1338 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1338.x, x_1337.x, x_1338.z, x_1337.y);
        let x_1340 : vec4<f32> = u_xlat8;
        let x_1343 : vec2<f32> = u_xlat58;
        let x_1345 : vec2<f32> = ((vec2<f32>(x_1340.x, x_1340.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1343));
        let x_1346 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1345.x, x_1346.y, x_1345.y, x_1346.w);
        let x_1348 : vec2<f32> = u_xlat58;
        let x_1350 : vec2<f32> = (-(x_1348) + vec2<f32>(1.0f, 1.0f));
        let x_1351 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1350.x, x_1350.y, x_1351.z, x_1351.w);
        let x_1353 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1353, vec2<f32>(0.0f, 0.0f));
        let x_1355 : vec2<f32> = u_xlat60;
        let x_1357 : vec2<f32> = u_xlat60;
        let x_1359 : vec4<f32> = u_xlat8;
        let x_1361 : vec2<f32> = ((-(x_1355) * x_1357) + vec2<f32>(x_1359.x, x_1359.y));
        let x_1362 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1361.x, x_1361.y, x_1362.z, x_1362.w);
        let x_1364 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1364, vec2<f32>(0.0f, 0.0f));
        let x_1367 : vec2<f32> = u_xlat60;
        let x_1369 : vec2<f32> = u_xlat60;
        let x_1371 : vec4<f32> = u_xlat7;
        let x_1373 : vec2<f32> = ((-(x_1367) * x_1369) + vec2<f32>(x_1371.y, x_1371.w));
        let x_1374 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1373.x, x_1374.y, x_1373.y);
        let x_1376 : vec4<f32> = u_xlat8;
        let x_1379 : vec2<f32> = (vec2<f32>(x_1376.x, x_1376.y) + vec2<f32>(2.0f, 2.0f));
        let x_1380 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1379.x, x_1379.y, x_1380.z, x_1380.w);
        let x_1382 : vec3<f32> = u_xlat33;
        let x_1384 : vec2<f32> = (vec2<f32>(x_1382.x, x_1382.z) + vec2<f32>(2.0f, 2.0f));
        let x_1385 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1385.x, x_1384.x, x_1385.z, x_1384.y);
        let x_1388 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1388 * 0.08163200318813323975f);
        let x_1392 : vec4<f32> = u_xlat7;
        let x_1395 : vec3<f32> = (vec3<f32>(x_1392.z, x_1392.x, x_1392.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1396 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1395.x, x_1395.y, x_1395.z, x_1396.w);
        let x_1398 : vec4<f32> = u_xlat8;
        let x_1401 : vec2<f32> = (vec2<f32>(x_1398.x, x_1398.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1402 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1401.x, x_1401.y, x_1402.z, x_1402.w);
        let x_1405 : f32 = u_xlat11.y;
        u_xlat10.x = x_1405;
        let x_1407 : vec2<f32> = u_xlat58;
        let x_1414 : vec2<f32> = ((vec2<f32>(x_1407.x, x_1407.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1415 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1415.x, x_1414.x, x_1415.z, x_1414.y);
        let x_1417 : vec2<f32> = u_xlat58;
        let x_1421 : vec2<f32> = ((vec2<f32>(x_1417.x, x_1417.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1422 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1421.x, x_1422.y, x_1421.y, x_1422.w);
        let x_1425 : f32 = u_xlat7.x;
        u_xlat8.y = x_1425;
        let x_1428 : f32 = u_xlat9.y;
        u_xlat8.w = x_1428;
        let x_1430 : vec4<f32> = u_xlat8;
        let x_1431 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1430 + x_1431);
        let x_1433 : vec2<f32> = u_xlat58;
        let x_1436 : vec2<f32> = ((vec2<f32>(x_1433.y, x_1433.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1437 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1437.x, x_1436.x, x_1437.z, x_1436.y);
        let x_1439 : vec2<f32> = u_xlat58;
        let x_1442 : vec2<f32> = ((vec2<f32>(x_1439.y, x_1439.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1443 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1442.x, x_1443.y, x_1442.y, x_1443.w);
        let x_1446 : f32 = u_xlat7.y;
        u_xlat9.y = x_1446;
        let x_1448 : vec4<f32> = u_xlat9;
        let x_1449 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1448 + x_1449);
        let x_1451 : vec4<f32> = u_xlat8;
        let x_1452 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1451 / x_1452);
        let x_1454 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1454 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1460 : vec4<f32> = u_xlat9;
        let x_1461 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1460 / x_1461);
        let x_1463 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1463 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1465 : vec4<f32> = u_xlat8;
        let x_1468 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1465.w, x_1465.x, x_1465.y, x_1465.z) * vec4<f32>(x_1468.x, x_1468.x, x_1468.x, x_1468.x));
        let x_1471 : vec4<f32> = u_xlat9;
        let x_1474 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1471.x, x_1471.w, x_1471.y, x_1471.z) * vec4<f32>(x_1474.y, x_1474.y, x_1474.y, x_1474.y));
        let x_1477 : vec4<f32> = u_xlat8;
        let x_1478 : vec3<f32> = vec3<f32>(x_1477.y, x_1477.z, x_1477.w);
        let x_1479 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1478.x, x_1479.y, x_1478.y, x_1478.z);
        let x_1482 : f32 = u_xlat9.x;
        u_xlat11.y = x_1482;
        let x_1484 : vec4<f32> = u_xlat6;
        let x_1487 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1490 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1484.x, x_1484.y, x_1484.x, x_1484.y) * vec4<f32>(x_1487.x, x_1487.y, x_1487.x, x_1487.y)) + vec4<f32>(x_1490.x, x_1490.y, x_1490.z, x_1490.y));
        let x_1493 : vec4<f32> = u_xlat6;
        let x_1496 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1499 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1493.x, x_1493.y) * vec2<f32>(x_1496.x, x_1496.y)) + vec2<f32>(x_1499.w, x_1499.y));
        let x_1503 : f32 = u_xlat11.y;
        u_xlat8.y = x_1503;
        let x_1506 : f32 = u_xlat9.z;
        u_xlat11.y = x_1506;
        let x_1508 : vec4<f32> = u_xlat6;
        let x_1511 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1514 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1508.x, x_1508.y, x_1508.x, x_1508.y) * vec4<f32>(x_1511.x, x_1511.y, x_1511.x, x_1511.y)) + vec4<f32>(x_1514.x, x_1514.y, x_1514.z, x_1514.y));
        let x_1517 : vec4<f32> = u_xlat6;
        let x_1520 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1523 : vec4<f32> = u_xlat11;
        let x_1525 : vec2<f32> = ((vec2<f32>(x_1517.x, x_1517.y) * vec2<f32>(x_1520.x, x_1520.y)) + vec2<f32>(x_1523.w, x_1523.y));
        let x_1526 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1525.x, x_1525.y, x_1526.z, x_1526.w);
        let x_1529 : f32 = u_xlat11.y;
        u_xlat8.z = x_1529;
        let x_1532 : vec4<f32> = u_xlat6;
        let x_1535 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1538 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1532.x, x_1532.y, x_1532.x, x_1532.y) * vec4<f32>(x_1535.x, x_1535.y, x_1535.x, x_1535.y)) + vec4<f32>(x_1538.x, x_1538.y, x_1538.x, x_1538.z));
        let x_1542 : f32 = u_xlat9.w;
        u_xlat11.y = x_1542;
        let x_1545 : vec4<f32> = u_xlat6;
        let x_1548 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1551 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1545.x, x_1545.y, x_1545.x, x_1545.y) * vec4<f32>(x_1548.x, x_1548.y, x_1548.x, x_1548.y)) + vec4<f32>(x_1551.x, x_1551.y, x_1551.z, x_1551.y));
        let x_1555 : vec4<f32> = u_xlat6;
        let x_1558 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1561 : vec4<f32> = u_xlat11;
        u_xlat34 = ((vec2<f32>(x_1555.x, x_1555.y) * vec2<f32>(x_1558.x, x_1558.y)) + vec2<f32>(x_1561.w, x_1561.y));
        let x_1565 : f32 = u_xlat11.y;
        u_xlat8.w = x_1565;
        let x_1568 : vec4<f32> = u_xlat6;
        let x_1571 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1574 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1568.x, x_1568.y) * vec2<f32>(x_1571.x, x_1571.y)) + vec2<f32>(x_1574.x, x_1574.w));
        let x_1577 : vec4<f32> = u_xlat11;
        let x_1578 : vec3<f32> = vec3<f32>(x_1577.x, x_1577.z, x_1577.w);
        let x_1579 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1578.x, x_1579.y, x_1578.y, x_1578.z);
        let x_1581 : vec4<f32> = u_xlat6;
        let x_1584 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1587 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1581.x, x_1581.y, x_1581.x, x_1581.y) * vec4<f32>(x_1584.x, x_1584.y, x_1584.x, x_1584.y)) + vec4<f32>(x_1587.x, x_1587.y, x_1587.z, x_1587.y));
        let x_1591 : vec4<f32> = u_xlat6;
        let x_1594 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1597 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1591.x, x_1591.y) * vec2<f32>(x_1594.x, x_1594.y)) + vec2<f32>(x_1597.w, x_1597.y));
        let x_1601 : f32 = u_xlat8.x;
        u_xlat9.x = x_1601;
        let x_1603 : vec4<f32> = u_xlat6;
        let x_1606 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1609 : vec4<f32> = u_xlat9;
        let x_1611 : vec2<f32> = ((vec2<f32>(x_1603.x, x_1603.y) * vec2<f32>(x_1606.x, x_1606.y)) + vec2<f32>(x_1609.x, x_1609.y));
        let x_1612 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1611.x, x_1611.y, x_1612.z, x_1612.w);
        let x_1615 : vec4<f32> = u_xlat7;
        let x_1617 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1615.x, x_1615.x, x_1615.x, x_1615.x) * x_1617);
        let x_1620 : vec4<f32> = u_xlat7;
        let x_1622 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1620.y, x_1620.y, x_1620.y, x_1620.y) * x_1622);
        let x_1625 : vec4<f32> = u_xlat7;
        let x_1627 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1625.z, x_1625.z, x_1625.z, x_1625.z) * x_1627);
        let x_1629 : vec4<f32> = u_xlat7;
        let x_1631 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1629.w, x_1629.w, x_1629.w, x_1629.w) * x_1631);
        let x_1634 : vec4<f32> = u_xlat12;
        let x_1635 : vec2<f32> = vec2<f32>(x_1634.x, x_1634.y);
        let x_1637 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1635.x, x_1635.y, x_1637);
        let x_1644 : vec3<f32> = txVec13;
        let x_1646 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1644.xy, x_1644.z);
        u_xlat8.x = x_1646;
        let x_1649 : vec4<f32> = u_xlat12;
        let x_1650 : vec2<f32> = vec2<f32>(x_1649.z, x_1649.w);
        let x_1652 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1650.x, x_1650.y, x_1652);
        let x_1660 : vec3<f32> = txVec14;
        let x_1662 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1660.xy, x_1660.z);
        u_xlat86 = x_1662;
        let x_1663 : f32 = u_xlat86;
        let x_1665 : f32 = u_xlat17.y;
        u_xlat86 = (x_1663 * x_1665);
        let x_1668 : f32 = u_xlat17.x;
        let x_1670 : f32 = u_xlat8.x;
        let x_1672 : f32 = u_xlat86;
        u_xlat8.x = ((x_1668 * x_1670) + x_1672);
        let x_1676 : vec2<f32> = u_xlat58;
        let x_1678 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1676.x, x_1676.y, x_1678);
        let x_1685 : vec3<f32> = txVec15;
        let x_1687 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1685.xy, x_1685.z);
        u_xlat58.x = x_1687;
        let x_1690 : f32 = u_xlat17.z;
        let x_1692 : f32 = u_xlat58.x;
        let x_1695 : f32 = u_xlat8.x;
        u_xlat58.x = ((x_1690 * x_1692) + x_1695);
        let x_1699 : vec4<f32> = u_xlat15;
        let x_1700 : vec2<f32> = vec2<f32>(x_1699.x, x_1699.y);
        let x_1702 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1700.x, x_1700.y, x_1702);
        let x_1710 : vec3<f32> = txVec16;
        let x_1712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1710.xy, x_1710.z);
        u_xlat84 = x_1712;
        let x_1714 : f32 = u_xlat17.w;
        let x_1715 : f32 = u_xlat84;
        let x_1718 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1714 * x_1715) + x_1718);
        let x_1722 : vec4<f32> = u_xlat13;
        let x_1723 : vec2<f32> = vec2<f32>(x_1722.x, x_1722.y);
        let x_1725 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1723.x, x_1723.y, x_1725);
        let x_1732 : vec3<f32> = txVec17;
        let x_1734 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1732.xy, x_1732.z);
        u_xlat84 = x_1734;
        let x_1736 : f32 = u_xlat18.x;
        let x_1737 : f32 = u_xlat84;
        let x_1740 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1736 * x_1737) + x_1740);
        let x_1744 : vec4<f32> = u_xlat13;
        let x_1745 : vec2<f32> = vec2<f32>(x_1744.z, x_1744.w);
        let x_1747 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1745.x, x_1745.y, x_1747);
        let x_1754 : vec3<f32> = txVec18;
        let x_1756 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1754.xy, x_1754.z);
        u_xlat84 = x_1756;
        let x_1758 : f32 = u_xlat18.y;
        let x_1759 : f32 = u_xlat84;
        let x_1762 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1758 * x_1759) + x_1762);
        let x_1766 : vec4<f32> = u_xlat14;
        let x_1767 : vec2<f32> = vec2<f32>(x_1766.x, x_1766.y);
        let x_1769 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1767.x, x_1767.y, x_1769);
        let x_1776 : vec3<f32> = txVec19;
        let x_1778 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1776.xy, x_1776.z);
        u_xlat84 = x_1778;
        let x_1780 : f32 = u_xlat18.z;
        let x_1781 : f32 = u_xlat84;
        let x_1784 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1780 * x_1781) + x_1784);
        let x_1788 : vec4<f32> = u_xlat15;
        let x_1789 : vec2<f32> = vec2<f32>(x_1788.z, x_1788.w);
        let x_1791 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1789.x, x_1789.y, x_1791);
        let x_1798 : vec3<f32> = txVec20;
        let x_1800 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1798.xy, x_1798.z);
        u_xlat84 = x_1800;
        let x_1802 : f32 = u_xlat18.w;
        let x_1803 : f32 = u_xlat84;
        let x_1806 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1802 * x_1803) + x_1806);
        let x_1810 : vec4<f32> = u_xlat16;
        let x_1811 : vec2<f32> = vec2<f32>(x_1810.x, x_1810.y);
        let x_1813 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1811.x, x_1811.y, x_1813);
        let x_1820 : vec3<f32> = txVec21;
        let x_1822 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1820.xy, x_1820.z);
        u_xlat84 = x_1822;
        let x_1824 : f32 = u_xlat19.x;
        let x_1825 : f32 = u_xlat84;
        let x_1828 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1824 * x_1825) + x_1828);
        let x_1832 : vec4<f32> = u_xlat16;
        let x_1833 : vec2<f32> = vec2<f32>(x_1832.z, x_1832.w);
        let x_1835 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1833.x, x_1833.y, x_1835);
        let x_1842 : vec3<f32> = txVec22;
        let x_1844 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1842.xy, x_1842.z);
        u_xlat84 = x_1844;
        let x_1846 : f32 = u_xlat19.y;
        let x_1847 : f32 = u_xlat84;
        let x_1850 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1846 * x_1847) + x_1850);
        let x_1854 : vec2<f32> = u_xlat34;
        let x_1856 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1854.x, x_1854.y, x_1856);
        let x_1863 : vec3<f32> = txVec23;
        let x_1865 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1863.xy, x_1863.z);
        u_xlat84 = x_1865;
        let x_1867 : f32 = u_xlat19.z;
        let x_1868 : f32 = u_xlat84;
        let x_1871 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1867 * x_1868) + x_1871);
        let x_1875 : vec2<f32> = u_xlat66;
        let x_1877 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1875.x, x_1875.y, x_1877);
        let x_1884 : vec3<f32> = txVec24;
        let x_1886 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1884.xy, x_1884.z);
        u_xlat84 = x_1886;
        let x_1888 : f32 = u_xlat19.w;
        let x_1889 : f32 = u_xlat84;
        let x_1892 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1888 * x_1889) + x_1892);
        let x_1896 : vec4<f32> = u_xlat11;
        let x_1897 : vec2<f32> = vec2<f32>(x_1896.x, x_1896.y);
        let x_1899 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1897.x, x_1897.y, x_1899);
        let x_1906 : vec3<f32> = txVec25;
        let x_1908 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1906.xy, x_1906.z);
        u_xlat84 = x_1908;
        let x_1910 : f32 = u_xlat7.x;
        let x_1911 : f32 = u_xlat84;
        let x_1914 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1910 * x_1911) + x_1914);
        let x_1918 : vec4<f32> = u_xlat11;
        let x_1919 : vec2<f32> = vec2<f32>(x_1918.z, x_1918.w);
        let x_1921 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1919.x, x_1919.y, x_1921);
        let x_1928 : vec3<f32> = txVec26;
        let x_1930 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1928.xy, x_1928.z);
        u_xlat84 = x_1930;
        let x_1932 : f32 = u_xlat7.y;
        let x_1933 : f32 = u_xlat84;
        let x_1936 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1932 * x_1933) + x_1936);
        let x_1940 : vec2<f32> = u_xlat61;
        let x_1942 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1940.x, x_1940.y, x_1942);
        let x_1949 : vec3<f32> = txVec27;
        let x_1951 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1949.xy, x_1949.z);
        u_xlat84 = x_1951;
        let x_1953 : f32 = u_xlat7.z;
        let x_1954 : f32 = u_xlat84;
        let x_1957 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1953 * x_1954) + x_1957);
        let x_1961 : vec4<f32> = u_xlat6;
        let x_1962 : vec2<f32> = vec2<f32>(x_1961.x, x_1961.y);
        let x_1964 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1962.x, x_1962.y, x_1964);
        let x_1971 : vec3<f32> = txVec28;
        let x_1973 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1971.xy, x_1971.z);
        u_xlat6.x = x_1973;
        let x_1976 : f32 = u_xlat7.w;
        let x_1978 : f32 = u_xlat6.x;
        let x_1981 : f32 = u_xlat58.x;
        u_xlat83 = ((x_1976 * x_1978) + x_1981);
      }
    }
  } else {
    let x_1985 : vec4<f32> = vs_TEXCOORD8;
    let x_1986 : vec2<f32> = vec2<f32>(x_1985.x, x_1985.y);
    let x_1988 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1986.x, x_1986.y, x_1988);
    let x_1995 : vec3<f32> = txVec29;
    let x_1997 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1995.xy, x_1995.z);
    u_xlat83 = x_1997;
  }
  let x_1999 : f32 = x_727.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_1999) + 1.0f);
  let x_2003 : f32 = u_xlat83;
  let x_2005 : f32 = x_727.x_MainLightShadowParams.x;
  let x_2008 : f32 = u_xlat6.x;
  u_xlat83 = ((x_2003 * x_2005) + x_2008);
  let x_2011 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (0.0f >= x_2011);
  let x_2017 : f32 = vs_TEXCOORD8.z;
  u_xlatb32.x = (x_2017 >= 1.0f);
  let x_2021 : bool = u_xlatb32.x;
  let x_2022 : bool = u_xlatb6;
  u_xlatb6 = (x_2021 | x_2022);
  let x_2024 : bool = u_xlatb6;
  let x_2025 : f32 = u_xlat83;
  u_xlat83 = select(x_2025, 1.0f, x_2024);
  let x_2027 : vec3<f32> = vs_TEXCOORD7;
  let x_2029 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_2031 : vec3<f32> = (x_2027 + -(x_2029));
  let x_2032 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2031.x, x_2031.y, x_2031.z, x_2032.w);
  let x_2034 : vec4<f32> = u_xlat6;
  let x_2036 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_2034.x, x_2034.y, x_2034.z), vec3<f32>(x_2036.x, x_2036.y, x_2036.z));
  let x_2041 : f32 = u_xlat6.x;
  let x_2043 : f32 = x_727.x_MainLightShadowParams.z;
  let x_2046 : f32 = x_727.x_MainLightShadowParams.w;
  u_xlat32.x = ((x_2041 * x_2043) + x_2046);
  let x_2050 : f32 = u_xlat32.x;
  u_xlat32.x = clamp(x_2050, 0.0f, 1.0f);
  let x_2053 : f32 = u_xlat83;
  u_xlat58.x = (-(x_2053) + 1.0f);
  let x_2058 : f32 = u_xlat32.x;
  let x_2060 : f32 = u_xlat58.x;
  let x_2062 : f32 = u_xlat83;
  u_xlat83 = ((x_2058 * x_2060) + x_2062);
  let x_2071 : f32 = x_2069.x_MainLightCookieTextureFormat;
  u_xlatb32.x = !((x_2071 == -1.0f));
  let x_2075 : bool = u_xlatb32.x;
  if (x_2075) {
    let x_2078 : vec3<f32> = vs_TEXCOORD7;
    let x_2081 : vec4<f32> = x_2069.x_MainLightWorldToLight[1i];
    let x_2083 : vec2<f32> = (vec2<f32>(x_2078.y, x_2078.y) * vec2<f32>(x_2081.x, x_2081.y));
    let x_2084 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_2083.x, x_2083.y, x_2084.z);
    let x_2087 : vec4<f32> = x_2069.x_MainLightWorldToLight[0i];
    let x_2089 : vec3<f32> = vs_TEXCOORD7;
    let x_2092 : vec3<f32> = u_xlat32;
    let x_2094 : vec2<f32> = ((vec2<f32>(x_2087.x, x_2087.y) * vec2<f32>(x_2089.x, x_2089.x)) + vec2<f32>(x_2092.x, x_2092.y));
    let x_2095 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_2094.x, x_2094.y, x_2095.z);
    let x_2098 : vec4<f32> = x_2069.x_MainLightWorldToLight[2i];
    let x_2100 : vec3<f32> = vs_TEXCOORD7;
    let x_2103 : vec3<f32> = u_xlat32;
    let x_2105 : vec2<f32> = ((vec2<f32>(x_2098.x, x_2098.y) * vec2<f32>(x_2100.z, x_2100.z)) + vec2<f32>(x_2103.x, x_2103.y));
    let x_2106 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_2105.x, x_2105.y, x_2106.z);
    let x_2108 : vec3<f32> = u_xlat32;
    let x_2111 : vec4<f32> = x_2069.x_MainLightWorldToLight[3i];
    let x_2113 : vec2<f32> = (vec2<f32>(x_2108.x, x_2108.y) + vec2<f32>(x_2111.x, x_2111.y));
    let x_2114 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_2113.x, x_2113.y, x_2114.z);
    let x_2116 : vec3<f32> = u_xlat32;
    let x_2119 : vec2<f32> = ((vec2<f32>(x_2116.x, x_2116.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2120 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_2119.x, x_2119.y, x_2120.z);
    let x_2127 : vec3<f32> = u_xlat32;
    let x_2130 : f32 = x_111.x_GlobalMipBias.x;
    let x_2131 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2127.x, x_2127.y), x_2130);
    u_xlat7 = x_2131;
    let x_2133 : f32 = x_2069.x_MainLightCookieTextureFormat;
    let x_2135 : f32 = x_2069.x_MainLightCookieTextureFormat;
    let x_2137 : f32 = x_2069.x_MainLightCookieTextureFormat;
    let x_2139 : f32 = x_2069.x_MainLightCookieTextureFormat;
    let x_2140 : vec4<f32> = vec4<f32>(x_2133, x_2135, x_2137, x_2139);
    let x_2147 : vec4<bool> = (vec4<f32>(x_2140.x, x_2140.y, x_2140.z, x_2140.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb32 = vec2<bool>(x_2147.x, x_2147.y);
    let x_2150 : bool = u_xlatb32.y;
    if (x_2150) {
      let x_2156 : f32 = u_xlat7.w;
      x_2152 = x_2156;
    } else {
      let x_2159 : f32 = u_xlat7.x;
      x_2152 = x_2159;
    }
    let x_2160 : f32 = x_2152;
    u_xlat58.x = x_2160;
    let x_2163 : bool = u_xlatb32.x;
    if (x_2163) {
      let x_2167 : vec4<f32> = u_xlat7;
      x_2164 = vec3<f32>(x_2167.x, x_2167.y, x_2167.z);
    } else {
      let x_2170 : vec2<f32> = u_xlat58;
      x_2164 = vec3<f32>(x_2170.x, x_2170.x, x_2170.x);
    }
    let x_2172 : vec3<f32> = x_2164;
    u_xlat32 = x_2172;
  } else {
    u_xlat32.x = 1.0f;
    u_xlat32.y = 1.0f;
    u_xlat32.z = 1.0f;
  }
  let x_2177 : vec3<f32> = u_xlat32;
  let x_2179 : vec4<f32> = x_111.x_MainLightColor;
  u_xlat32 = (x_2177 * vec3<f32>(x_2179.x, x_2179.y, x_2179.z));
  let x_2182 : vec4<f32> = u_xlat1;
  let x_2185 : vec3<f32> = u_xlat2;
  u_xlat7.x = dot(-(vec3<f32>(x_2182.x, x_2182.y, x_2182.z)), x_2185);
  let x_2189 : f32 = u_xlat7.x;
  let x_2191 : f32 = u_xlat7.x;
  u_xlat7.x = (x_2189 + x_2191);
  let x_2194 : vec3<f32> = u_xlat2;
  let x_2195 : vec4<f32> = u_xlat7;
  let x_2199 : vec4<f32> = u_xlat1;
  let x_2202 : vec3<f32> = ((x_2194 * -(vec3<f32>(x_2195.x, x_2195.x, x_2195.x))) + -(vec3<f32>(x_2199.x, x_2199.y, x_2199.z)));
  let x_2203 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2202.x, x_2202.y, x_2202.z, x_2203.w);
  let x_2206 : vec3<f32> = u_xlat2;
  let x_2207 : vec4<f32> = u_xlat1;
  u_xlat85 = dot(x_2206, vec3<f32>(x_2207.x, x_2207.y, x_2207.z));
  let x_2210 : f32 = u_xlat85;
  u_xlat85 = clamp(x_2210, 0.0f, 1.0f);
  let x_2212 : f32 = u_xlat85;
  u_xlat85 = (-(x_2212) + 1.0f);
  let x_2215 : f32 = u_xlat85;
  let x_2216 : f32 = u_xlat85;
  u_xlat85 = (x_2215 * x_2216);
  let x_2218 : f32 = u_xlat85;
  let x_2219 : f32 = u_xlat85;
  u_xlat85 = (x_2218 * x_2219);
  let x_2222 : f32 = u_xlat0.x;
  u_xlat8.x = ((-(x_2222) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2230 : f32 = u_xlat0.x;
  let x_2232 : f32 = u_xlat8.x;
  u_xlat0.x = (x_2230 * x_2232);
  let x_2236 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2236 * 6.0f);
  let x_2248 : vec4<f32> = u_xlat7;
  let x_2251 : f32 = u_xlat0.x;
  let x_2252 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2248.x, x_2248.y, x_2248.z), x_2251);
  u_xlat8 = x_2252;
  let x_2254 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2254 + -1.0f);
  let x_2262 : f32 = x_2260.unity_SpecCube0_HDR.w;
  let x_2264 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2262 * x_2264) + 1.0f);
  let x_2269 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2269, 0.0f);
  let x_2273 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2273);
  let x_2277 : f32 = u_xlat0.x;
  let x_2279 : f32 = x_2260.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2277 * x_2279);
  let x_2283 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2283);
  let x_2287 : f32 = u_xlat0.x;
  let x_2289 : f32 = x_2260.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2287 * x_2289);
  let x_2292 : vec4<f32> = u_xlat8;
  let x_2294 : vec3<f32> = u_xlat0;
  let x_2296 : vec3<f32> = (vec3<f32>(x_2292.x, x_2292.y, x_2292.z) * vec3<f32>(x_2294.x, x_2294.x, x_2294.x));
  let x_2297 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2296.x, x_2296.y, x_2296.z, x_2297.w);
  let x_2299 : f32 = u_xlat52;
  let x_2301 : f32 = u_xlat52;
  let x_2305 : vec2<f32> = ((vec2<f32>(x_2299, x_2299) * vec2<f32>(x_2301, x_2301)) + vec2<f32>(-1.0f, 1.0f));
  let x_2306 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2305.x, x_2306.y, x_2305.y);
  let x_2309 : f32 = u_xlat0.z;
  u_xlat52 = (1.0f / x_2309);
  let x_2311 : vec4<f32> = u_xlat5;
  let x_2314 : f32 = u_xlat81;
  let x_2316 : vec3<f32> = (-(vec3<f32>(x_2311.x, x_2311.y, x_2311.z)) + vec3<f32>(x_2314, x_2314, x_2314));
  let x_2317 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2316.x, x_2316.y, x_2316.z, x_2317.w);
  let x_2319 : f32 = u_xlat85;
  let x_2321 : vec4<f32> = u_xlat8;
  let x_2324 : vec4<f32> = u_xlat5;
  let x_2326 : vec3<f32> = ((vec3<f32>(x_2319, x_2319, x_2319) * vec3<f32>(x_2321.x, x_2321.y, x_2321.z)) + vec3<f32>(x_2324.x, x_2324.y, x_2324.z));
  let x_2327 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2326.x, x_2326.y, x_2326.z, x_2327.w);
  let x_2329 : f32 = u_xlat52;
  let x_2331 : vec4<f32> = u_xlat8;
  let x_2333 : vec3<f32> = (vec3<f32>(x_2329, x_2329, x_2329) * vec3<f32>(x_2331.x, x_2331.y, x_2331.z));
  let x_2334 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2333.x, x_2333.y, x_2333.z, x_2334.w);
  let x_2336 : vec4<f32> = u_xlat7;
  let x_2338 : vec4<f32> = u_xlat8;
  let x_2340 : vec3<f32> = (vec3<f32>(x_2336.x, x_2336.y, x_2336.z) * vec3<f32>(x_2338.x, x_2338.y, x_2338.z));
  let x_2341 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2340.x, x_2340.y, x_2340.z, x_2341.w);
  let x_2343 : vec4<f32> = u_xlat3;
  let x_2345 : vec4<f32> = u_xlat4;
  let x_2348 : vec4<f32> = u_xlat7;
  let x_2350 : vec3<f32> = ((vec3<f32>(x_2343.x, x_2343.y, x_2343.z) * vec3<f32>(x_2345.x, x_2345.y, x_2345.z)) + vec3<f32>(x_2348.x, x_2348.y, x_2348.z));
  let x_2351 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2350.x, x_2350.y, x_2350.z, x_2351.w);
  let x_2353 : f32 = u_xlat83;
  let x_2355 : f32 = x_2260.unity_LightData.z;
  u_xlat52 = (x_2353 * x_2355);
  let x_2357 : vec3<f32> = u_xlat2;
  let x_2359 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat81 = dot(x_2357, vec3<f32>(x_2359.x, x_2359.y, x_2359.z));
  let x_2362 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2362, 0.0f, 1.0f);
  let x_2364 : f32 = u_xlat52;
  let x_2365 : f32 = u_xlat81;
  u_xlat52 = (x_2364 * x_2365);
  let x_2367 : f32 = u_xlat52;
  let x_2369 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_2367, x_2367, x_2367) * x_2369);
  let x_2371 : vec4<f32> = u_xlat1;
  let x_2374 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2376 : vec3<f32> = (vec3<f32>(x_2371.x, x_2371.y, x_2371.z) + vec3<f32>(x_2374.x, x_2374.y, x_2374.z));
  let x_2377 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2376.x, x_2376.y, x_2376.z, x_2377.w);
  let x_2379 : vec4<f32> = u_xlat7;
  let x_2381 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(vec3<f32>(x_2379.x, x_2379.y, x_2379.z), vec3<f32>(x_2381.x, x_2381.y, x_2381.z));
  let x_2384 : f32 = u_xlat52;
  u_xlat52 = max(x_2384, 1.17549435e-38f);
  let x_2387 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_2387);
  let x_2389 : f32 = u_xlat52;
  let x_2391 : vec4<f32> = u_xlat7;
  let x_2393 : vec3<f32> = (vec3<f32>(x_2389, x_2389, x_2389) * vec3<f32>(x_2391.x, x_2391.y, x_2391.z));
  let x_2394 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2393.x, x_2393.y, x_2393.z, x_2394.w);
  let x_2396 : vec3<f32> = u_xlat2;
  let x_2397 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(x_2396, vec3<f32>(x_2397.x, x_2397.y, x_2397.z));
  let x_2400 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2400, 0.0f, 1.0f);
  let x_2403 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2405 : vec4<f32> = u_xlat7;
  u_xlat81 = dot(vec3<f32>(x_2403.x, x_2403.y, x_2403.z), vec3<f32>(x_2405.x, x_2405.y, x_2405.z));
  let x_2408 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2408, 0.0f, 1.0f);
  let x_2410 : f32 = u_xlat52;
  let x_2411 : f32 = u_xlat52;
  u_xlat52 = (x_2410 * x_2411);
  let x_2413 : f32 = u_xlat52;
  let x_2415 : f32 = u_xlat0.x;
  u_xlat52 = ((x_2413 * x_2415) + 1.00001001358032226562f);
  let x_2419 : f32 = u_xlat81;
  let x_2420 : f32 = u_xlat81;
  u_xlat81 = (x_2419 * x_2420);
  let x_2422 : f32 = u_xlat52;
  let x_2423 : f32 = u_xlat52;
  u_xlat52 = (x_2422 * x_2423);
  let x_2425 : f32 = u_xlat81;
  u_xlat81 = max(x_2425, 0.10000000149011611938f);
  let x_2428 : f32 = u_xlat52;
  let x_2429 : f32 = u_xlat81;
  u_xlat52 = (x_2428 * x_2429);
  let x_2431 : f32 = u_xlat82;
  let x_2432 : f32 = u_xlat52;
  u_xlat52 = (x_2431 * x_2432);
  let x_2434 : f32 = u_xlat80;
  let x_2435 : f32 = u_xlat52;
  u_xlat52 = (x_2434 / x_2435);
  let x_2437 : vec4<f32> = u_xlat5;
  let x_2439 : f32 = u_xlat52;
  let x_2442 : vec4<f32> = u_xlat4;
  let x_2444 : vec3<f32> = ((vec3<f32>(x_2437.x, x_2437.y, x_2437.z) * vec3<f32>(x_2439, x_2439, x_2439)) + vec3<f32>(x_2442.x, x_2442.y, x_2442.z));
  let x_2445 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2444.x, x_2444.y, x_2444.z, x_2445.w);
  let x_2447 : vec3<f32> = u_xlat32;
  let x_2448 : vec4<f32> = u_xlat7;
  u_xlat32 = (x_2447 * vec3<f32>(x_2448.x, x_2448.y, x_2448.z));
  let x_2452 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_2454 : f32 = x_2260.unity_LightData.y;
  u_xlat52 = min(x_2452, x_2454);
  let x_2458 : f32 = u_xlat52;
  u_xlatu52 = bitcast<u32>(i32(x_2458));
  let x_2462 : f32 = u_xlat6.x;
  let x_2464 : f32 = x_727.x_AdditionalShadowFadeParams.x;
  let x_2467 : f32 = x_727.x_AdditionalShadowFadeParams.y;
  u_xlat81 = ((x_2462 * x_2464) + x_2467);
  let x_2469 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2469, 0.0f, 1.0f);
  let x_2473 : f32 = x_2069.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2475 : f32 = x_2069.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2477 : f32 = x_2069.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2479 : f32 = x_2069.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2480 : vec4<f32> = vec4<f32>(x_2473, x_2475, x_2477, x_2479);
  let x_2486 : vec4<bool> = (vec4<f32>(x_2480.x, x_2480.y, x_2480.z, x_2480.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2486.x, x_2486.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2498 : u32 = u_xlatu_loop_1;
    let x_2499 : u32 = u_xlatu52;
    if ((x_2498 < x_2499)) {
    } else {
      break;
    }
    let x_2502 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_2502 >> 2u);
    let x_2506 : u32 = u_xlatu_loop_1;
    u_xlati59 = bitcast<i32>((x_2506 & 3u));
    let x_2509 : u32 = u_xlatu6;
    let x_2512 : vec4<f32> = x_2260.unity_LightIndices[bitcast<i32>(x_2509)];
    let x_2522 : i32 = u_xlati59;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2527 : vec4<u32> = indexable[x_2522];
    u_xlat6.x = dot(x_2512, bitcast<vec4<f32>>(x_2527));
    let x_2533 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_2533);
    let x_2535 : vec3<f32> = vs_TEXCOORD7;
    let x_2546 : i32 = u_xlati6;
    let x_2548 : vec4<f32> = x_2545.x_AdditionalLightsPosition[x_2546];
    let x_2551 : i32 = u_xlati6;
    let x_2553 : vec4<f32> = x_2545.x_AdditionalLightsPosition[x_2551];
    let x_2555 : vec3<f32> = ((-(x_2535) * vec3<f32>(x_2548.w, x_2548.w, x_2548.w)) + vec3<f32>(x_2553.x, x_2553.y, x_2553.z));
    let x_2556 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2555.x, x_2555.y, x_2555.z, x_2556.w);
    let x_2559 : vec4<f32> = u_xlat9;
    let x_2561 : vec4<f32> = u_xlat9;
    u_xlat59 = dot(vec3<f32>(x_2559.x, x_2559.y, x_2559.z), vec3<f32>(x_2561.x, x_2561.y, x_2561.z));
    let x_2564 : f32 = u_xlat59;
    u_xlat59 = max(x_2564, 0.00006103515625f);
    let x_2566 : f32 = u_xlat59;
    u_xlat85 = inverseSqrt(x_2566);
    let x_2568 : f32 = u_xlat85;
    let x_2570 : vec4<f32> = u_xlat9;
    let x_2572 : vec3<f32> = (vec3<f32>(x_2568, x_2568, x_2568) * vec3<f32>(x_2570.x, x_2570.y, x_2570.z));
    let x_2573 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2572.x, x_2572.y, x_2572.z, x_2573.w);
    let x_2575 : f32 = u_xlat59;
    u_xlat86 = (1.0f / x_2575);
    let x_2577 : f32 = u_xlat59;
    let x_2578 : i32 = u_xlati6;
    let x_2580 : f32 = x_2545.x_AdditionalLightsAttenuation[x_2578].x;
    u_xlat59 = (x_2577 * x_2580);
    let x_2582 : f32 = u_xlat59;
    let x_2584 : f32 = u_xlat59;
    u_xlat59 = ((-(x_2582) * x_2584) + 1.0f);
    let x_2587 : f32 = u_xlat59;
    u_xlat59 = max(x_2587, 0.0f);
    let x_2589 : f32 = u_xlat59;
    let x_2590 : f32 = u_xlat59;
    u_xlat59 = (x_2589 * x_2590);
    let x_2592 : f32 = u_xlat59;
    let x_2593 : f32 = u_xlat86;
    u_xlat59 = (x_2592 * x_2593);
    let x_2595 : i32 = u_xlati6;
    let x_2597 : vec4<f32> = x_2545.x_AdditionalLightsSpotDir[x_2595];
    let x_2599 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_2597.x, x_2597.y, x_2597.z), vec3<f32>(x_2599.x, x_2599.y, x_2599.z));
    let x_2602 : f32 = u_xlat86;
    let x_2603 : i32 = u_xlati6;
    let x_2605 : f32 = x_2545.x_AdditionalLightsAttenuation[x_2603].z;
    let x_2607 : i32 = u_xlati6;
    let x_2609 : f32 = x_2545.x_AdditionalLightsAttenuation[x_2607].w;
    u_xlat86 = ((x_2602 * x_2605) + x_2609);
    let x_2611 : f32 = u_xlat86;
    u_xlat86 = clamp(x_2611, 0.0f, 1.0f);
    let x_2613 : f32 = u_xlat86;
    let x_2614 : f32 = u_xlat86;
    u_xlat86 = (x_2613 * x_2614);
    let x_2616 : f32 = u_xlat59;
    let x_2617 : f32 = u_xlat86;
    u_xlat59 = (x_2616 * x_2617);
    let x_2620 : i32 = u_xlati6;
    let x_2622 : f32 = x_727.x_AdditionalShadowParams[x_2620].w;
    u_xlati86 = i32(x_2622);
    let x_2625 : i32 = u_xlati86;
    u_xlatb87 = (x_2625 >= 0i);
    let x_2627 : bool = u_xlatb87;
    if (x_2627) {
      let x_2631 : i32 = u_xlati6;
      let x_2633 : f32 = x_727.x_AdditionalShadowParams[x_2631].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2633, x_2633, x_2633, x_2633))));
      let x_2637 : bool = u_xlatb87;
      if (x_2637) {
        let x_2642 : vec4<f32> = u_xlat10;
        let x_2645 : vec4<f32> = u_xlat10;
        let x_2648 : vec4<bool> = (abs(vec4<f32>(x_2642.z, x_2642.z, x_2642.y, x_2642.z)) >= abs(vec4<f32>(x_2645.x, x_2645.y, x_2645.x, x_2645.x)));
        let x_2650 : vec3<bool> = vec3<bool>(x_2648.x, x_2648.y, x_2648.z);
        let x_2651 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2650.x, x_2650.y, x_2650.z, x_2651.w);
        let x_2654 : bool = u_xlatb11.y;
        let x_2656 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2654 & x_2656);
        let x_2658 : vec4<f32> = u_xlat10;
        let x_2661 : vec4<bool> = (-(vec4<f32>(x_2658.z, x_2658.y, x_2658.z, x_2658.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2662 : vec3<bool> = vec3<bool>(x_2661.x, x_2661.y, x_2661.w);
        let x_2663 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2662.x, x_2662.y, x_2663.z, x_2662.z);
        let x_2666 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2666);
        let x_2671 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2671);
        let x_2677 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2677);
        let x_2680 : bool = u_xlatb11.z;
        if (x_2680) {
          let x_2685 : f32 = u_xlat11.y;
          x_2681 = x_2685;
        } else {
          let x_2687 : f32 = u_xlat88;
          x_2681 = x_2687;
        }
        let x_2688 : f32 = x_2681;
        u_xlat88 = x_2688;
        let x_2690 : bool = u_xlatb87;
        if (x_2690) {
          let x_2695 : f32 = u_xlat11.x;
          x_2691 = x_2695;
        } else {
          let x_2697 : f32 = u_xlat88;
          x_2691 = x_2697;
        }
        let x_2698 : f32 = x_2691;
        u_xlat87 = x_2698;
        let x_2699 : i32 = u_xlati6;
        let x_2701 : f32 = x_727.x_AdditionalShadowParams[x_2699].w;
        u_xlat88 = trunc(x_2701);
        let x_2703 : f32 = u_xlat87;
        let x_2704 : f32 = u_xlat88;
        u_xlat87 = (x_2703 + x_2704);
        let x_2706 : f32 = u_xlat87;
        u_xlati86 = i32(x_2706);
      }
      let x_2708 : i32 = u_xlati86;
      u_xlati86 = (x_2708 << bitcast<u32>(2i));
      let x_2710 : vec3<f32> = vs_TEXCOORD7;
      let x_2712 : i32 = u_xlati86;
      let x_2715 : i32 = u_xlati86;
      let x_2719 : vec4<f32> = x_727.x_AdditionalLightsWorldToShadow[((x_2712 + 1i) / 4i)][((x_2715 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2710.y, x_2710.y, x_2710.y, x_2710.y) * x_2719);
      let x_2721 : i32 = u_xlati86;
      let x_2723 : i32 = u_xlati86;
      let x_2726 : vec4<f32> = x_727.x_AdditionalLightsWorldToShadow[(x_2721 / 4i)][(x_2723 % 4i)];
      let x_2727 : vec3<f32> = vs_TEXCOORD7;
      let x_2730 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2726 * vec4<f32>(x_2727.x, x_2727.x, x_2727.x, x_2727.x)) + x_2730);
      let x_2732 : i32 = u_xlati86;
      let x_2735 : i32 = u_xlati86;
      let x_2739 : vec4<f32> = x_727.x_AdditionalLightsWorldToShadow[((x_2732 + 2i) / 4i)][((x_2735 + 2i) % 4i)];
      let x_2740 : vec3<f32> = vs_TEXCOORD7;
      let x_2743 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2739 * vec4<f32>(x_2740.z, x_2740.z, x_2740.z, x_2740.z)) + x_2743);
      let x_2745 : vec4<f32> = u_xlat11;
      let x_2746 : i32 = u_xlati86;
      let x_2749 : i32 = u_xlati86;
      let x_2753 : vec4<f32> = x_727.x_AdditionalLightsWorldToShadow[((x_2746 + 3i) / 4i)][((x_2749 + 3i) % 4i)];
      u_xlat11 = (x_2745 + x_2753);
      let x_2755 : vec4<f32> = u_xlat11;
      let x_2757 : vec4<f32> = u_xlat11;
      let x_2759 : vec3<f32> = (vec3<f32>(x_2755.x, x_2755.y, x_2755.z) / vec3<f32>(x_2757.w, x_2757.w, x_2757.w));
      let x_2760 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2759.x, x_2759.y, x_2759.z, x_2760.w);
      let x_2763 : i32 = u_xlati6;
      let x_2765 : f32 = x_727.x_AdditionalShadowParams[x_2763].y;
      u_xlatb86 = (0.0f < x_2765);
      let x_2767 : bool = u_xlatb86;
      if (x_2767) {
        let x_2770 : i32 = u_xlati6;
        let x_2772 : f32 = x_727.x_AdditionalShadowParams[x_2770].y;
        u_xlatb86 = (1.0f == x_2772);
        let x_2774 : bool = u_xlatb86;
        if (x_2774) {
          let x_2777 : vec4<f32> = u_xlat11;
          let x_2780 : vec4<f32> = x_727.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2777.x, x_2777.y, x_2777.x, x_2777.y) + x_2780);
          let x_2783 : vec4<f32> = u_xlat12;
          let x_2784 : vec2<f32> = vec2<f32>(x_2783.x, x_2783.y);
          let x_2786 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2784.x, x_2784.y, x_2786);
          let x_2794 : vec3<f32> = txVec30;
          let x_2796 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2794.xy, x_2794.z);
          u_xlat13.x = x_2796;
          let x_2799 : vec4<f32> = u_xlat12;
          let x_2800 : vec2<f32> = vec2<f32>(x_2799.z, x_2799.w);
          let x_2802 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2800.x, x_2800.y, x_2802);
          let x_2809 : vec3<f32> = txVec31;
          let x_2811 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2809.xy, x_2809.z);
          u_xlat13.y = x_2811;
          let x_2813 : vec4<f32> = u_xlat11;
          let x_2816 : vec4<f32> = x_727.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2813.x, x_2813.y, x_2813.x, x_2813.y) + x_2816);
          let x_2819 : vec4<f32> = u_xlat12;
          let x_2820 : vec2<f32> = vec2<f32>(x_2819.x, x_2819.y);
          let x_2822 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2820.x, x_2820.y, x_2822);
          let x_2829 : vec3<f32> = txVec32;
          let x_2831 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2829.xy, x_2829.z);
          u_xlat13.z = x_2831;
          let x_2834 : vec4<f32> = u_xlat12;
          let x_2835 : vec2<f32> = vec2<f32>(x_2834.z, x_2834.w);
          let x_2837 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2835.x, x_2835.y, x_2837);
          let x_2844 : vec3<f32> = txVec33;
          let x_2846 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2844.xy, x_2844.z);
          u_xlat13.w = x_2846;
          let x_2848 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_2848, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2851 : i32 = u_xlati6;
          let x_2853 : f32 = x_727.x_AdditionalShadowParams[x_2851].y;
          u_xlatb87 = (2.0f == x_2853);
          let x_2855 : bool = u_xlatb87;
          if (x_2855) {
            let x_2858 : vec4<f32> = u_xlat11;
            let x_2861 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_2864 : vec2<f32> = ((vec2<f32>(x_2858.x, x_2858.y) * vec2<f32>(x_2861.z, x_2861.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2865 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2864.x, x_2864.y, x_2865.z, x_2865.w);
            let x_2867 : vec4<f32> = u_xlat12;
            let x_2869 : vec2<f32> = floor(vec2<f32>(x_2867.x, x_2867.y));
            let x_2870 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2869.x, x_2869.y, x_2870.z, x_2870.w);
            let x_2873 : vec4<f32> = u_xlat11;
            let x_2876 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_2879 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2873.x, x_2873.y) * vec2<f32>(x_2876.z, x_2876.w)) + -(vec2<f32>(x_2879.x, x_2879.y)));
            let x_2883 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2883.x, x_2883.x, x_2883.y, x_2883.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2886 : vec4<f32> = u_xlat13;
            let x_2888 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2886.x, x_2886.x, x_2886.z, x_2886.z) * vec4<f32>(x_2888.x, x_2888.x, x_2888.z, x_2888.z));
            let x_2891 : vec4<f32> = u_xlat14;
            let x_2893 : vec2<f32> = (vec2<f32>(x_2891.y, x_2891.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2894 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2893.x, x_2894.y, x_2893.y, x_2894.w);
            let x_2896 : vec4<f32> = u_xlat14;
            let x_2899 : vec2<f32> = u_xlat64;
            let x_2901 : vec2<f32> = ((vec2<f32>(x_2896.x, x_2896.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2899));
            let x_2902 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2901.x, x_2901.y, x_2902.z, x_2902.w);
            let x_2904 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2904) + vec2<f32>(1.0f, 1.0f));
            let x_2907 : vec2<f32> = u_xlat64;
            let x_2908 : vec2<f32> = min(x_2907, vec2<f32>(0.0f, 0.0f));
            let x_2909 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2908.x, x_2908.y, x_2909.z, x_2909.w);
            let x_2911 : vec4<f32> = u_xlat15;
            let x_2914 : vec4<f32> = u_xlat15;
            let x_2917 : vec2<f32> = u_xlat66;
            let x_2918 : vec2<f32> = ((-(vec2<f32>(x_2911.x, x_2911.y)) * vec2<f32>(x_2914.x, x_2914.y)) + x_2917);
            let x_2919 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2918.x, x_2918.y, x_2919.z, x_2919.w);
            let x_2921 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2921, vec2<f32>(0.0f, 0.0f));
            let x_2923 : vec2<f32> = u_xlat64;
            let x_2925 : vec2<f32> = u_xlat64;
            let x_2927 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2923) * x_2925) + vec2<f32>(x_2927.y, x_2927.w));
            let x_2930 : vec4<f32> = u_xlat15;
            let x_2932 : vec2<f32> = (vec2<f32>(x_2930.x, x_2930.y) + vec2<f32>(1.0f, 1.0f));
            let x_2933 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2932.x, x_2932.y, x_2933.z, x_2933.w);
            let x_2935 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2935 + vec2<f32>(1.0f, 1.0f));
            let x_2937 : vec4<f32> = u_xlat14;
            let x_2939 : vec2<f32> = (vec2<f32>(x_2937.x, x_2937.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2940 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2939.x, x_2939.y, x_2940.z, x_2940.w);
            let x_2942 : vec2<f32> = u_xlat66;
            let x_2943 : vec2<f32> = (x_2942 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2944 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2943.x, x_2943.y, x_2944.z, x_2944.w);
            let x_2946 : vec4<f32> = u_xlat15;
            let x_2948 : vec2<f32> = (vec2<f32>(x_2946.x, x_2946.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2949 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2948.x, x_2948.y, x_2949.z, x_2949.w);
            let x_2951 : vec2<f32> = u_xlat64;
            let x_2952 : vec2<f32> = (x_2951 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2953 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2952.x, x_2952.y, x_2953.z, x_2953.w);
            let x_2955 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2955.y, x_2955.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2959 : f32 = u_xlat15.x;
            u_xlat16.z = x_2959;
            let x_2962 : f32 = u_xlat64.x;
            u_xlat16.w = x_2962;
            let x_2965 : f32 = u_xlat17.x;
            u_xlat14.z = x_2965;
            let x_2968 : f32 = u_xlat13.x;
            u_xlat14.w = x_2968;
            let x_2970 : vec4<f32> = u_xlat14;
            let x_2972 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2970.z, x_2970.w, x_2970.x, x_2970.z) + vec4<f32>(x_2972.z, x_2972.w, x_2972.x, x_2972.z));
            let x_2976 : f32 = u_xlat16.y;
            u_xlat15.z = x_2976;
            let x_2979 : f32 = u_xlat64.y;
            u_xlat15.w = x_2979;
            let x_2982 : f32 = u_xlat14.y;
            u_xlat17.z = x_2982;
            let x_2985 : f32 = u_xlat13.z;
            u_xlat17.w = x_2985;
            let x_2987 : vec4<f32> = u_xlat15;
            let x_2989 : vec4<f32> = u_xlat17;
            let x_2991 : vec3<f32> = (vec3<f32>(x_2987.z, x_2987.y, x_2987.w) + vec3<f32>(x_2989.z, x_2989.y, x_2989.w));
            let x_2992 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2991.x, x_2991.y, x_2991.z, x_2992.w);
            let x_2994 : vec4<f32> = u_xlat14;
            let x_2996 : vec4<f32> = u_xlat18;
            let x_2998 : vec3<f32> = (vec3<f32>(x_2994.x, x_2994.z, x_2994.w) / vec3<f32>(x_2996.z, x_2996.w, x_2996.y));
            let x_2999 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2998.x, x_2998.y, x_2998.z, x_2999.w);
            let x_3001 : vec4<f32> = u_xlat14;
            let x_3003 : vec3<f32> = (vec3<f32>(x_3001.x, x_3001.y, x_3001.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3004 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3003.x, x_3003.y, x_3003.z, x_3004.w);
            let x_3006 : vec4<f32> = u_xlat17;
            let x_3008 : vec4<f32> = u_xlat13;
            let x_3010 : vec3<f32> = (vec3<f32>(x_3006.z, x_3006.y, x_3006.w) / vec3<f32>(x_3008.x, x_3008.y, x_3008.z));
            let x_3011 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3010.x, x_3010.y, x_3010.z, x_3011.w);
            let x_3013 : vec4<f32> = u_xlat15;
            let x_3015 : vec3<f32> = (vec3<f32>(x_3013.x, x_3013.y, x_3013.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3016 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3015.x, x_3015.y, x_3015.z, x_3016.w);
            let x_3018 : vec4<f32> = u_xlat14;
            let x_3021 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_3023 : vec3<f32> = (vec3<f32>(x_3018.y, x_3018.x, x_3018.z) * vec3<f32>(x_3021.x, x_3021.x, x_3021.x));
            let x_3024 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3023.x, x_3023.y, x_3023.z, x_3024.w);
            let x_3026 : vec4<f32> = u_xlat15;
            let x_3029 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_3031 : vec3<f32> = (vec3<f32>(x_3026.x, x_3026.y, x_3026.z) * vec3<f32>(x_3029.y, x_3029.y, x_3029.y));
            let x_3032 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3031.x, x_3031.y, x_3031.z, x_3032.w);
            let x_3035 : f32 = u_xlat15.x;
            u_xlat14.w = x_3035;
            let x_3037 : vec4<f32> = u_xlat12;
            let x_3040 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_3043 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3037.x, x_3037.y, x_3037.x, x_3037.y) * vec4<f32>(x_3040.x, x_3040.y, x_3040.x, x_3040.y)) + vec4<f32>(x_3043.y, x_3043.w, x_3043.x, x_3043.w));
            let x_3046 : vec4<f32> = u_xlat12;
            let x_3049 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_3052 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3046.x, x_3046.y) * vec2<f32>(x_3049.x, x_3049.y)) + vec2<f32>(x_3052.z, x_3052.w));
            let x_3056 : f32 = u_xlat14.y;
            u_xlat15.w = x_3056;
            let x_3058 : vec4<f32> = u_xlat15;
            let x_3059 : vec2<f32> = vec2<f32>(x_3058.y, x_3058.z);
            let x_3060 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3060.x, x_3059.x, x_3060.z, x_3059.y);
            let x_3062 : vec4<f32> = u_xlat12;
            let x_3065 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_3068 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3062.x, x_3062.y, x_3062.x, x_3062.y) * vec4<f32>(x_3065.x, x_3065.y, x_3065.x, x_3065.y)) + vec4<f32>(x_3068.x, x_3068.y, x_3068.z, x_3068.y));
            let x_3071 : vec4<f32> = u_xlat12;
            let x_3074 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_3077 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3071.x, x_3071.y, x_3071.x, x_3071.y) * vec4<f32>(x_3074.x, x_3074.y, x_3074.x, x_3074.y)) + vec4<f32>(x_3077.w, x_3077.y, x_3077.w, x_3077.z));
            let x_3080 : vec4<f32> = u_xlat12;
            let x_3083 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_3086 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3080.x, x_3080.y, x_3080.x, x_3080.y) * vec4<f32>(x_3083.x, x_3083.y, x_3083.x, x_3083.y)) + vec4<f32>(x_3086.x, x_3086.w, x_3086.z, x_3086.w));
            let x_3089 : vec4<f32> = u_xlat13;
            let x_3091 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3089.x, x_3089.x, x_3089.x, x_3089.y) * vec4<f32>(x_3091.z, x_3091.w, x_3091.y, x_3091.z));
            let x_3095 : vec4<f32> = u_xlat13;
            let x_3097 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3095.y, x_3095.y, x_3095.z, x_3095.z) * x_3097);
            let x_3100 : f32 = u_xlat13.z;
            let x_3102 : f32 = u_xlat18.y;
            u_xlat87 = (x_3100 * x_3102);
            let x_3105 : vec4<f32> = u_xlat16;
            let x_3106 : vec2<f32> = vec2<f32>(x_3105.x, x_3105.y);
            let x_3108 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3106.x, x_3106.y, x_3108);
            let x_3115 : vec3<f32> = txVec34;
            let x_3117 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3115.xy, x_3115.z);
            u_xlat88 = x_3117;
            let x_3119 : vec4<f32> = u_xlat16;
            let x_3120 : vec2<f32> = vec2<f32>(x_3119.z, x_3119.w);
            let x_3122 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3120.x, x_3120.y, x_3122);
            let x_3130 : vec3<f32> = txVec35;
            let x_3132 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3130.xy, x_3130.z);
            u_xlat89 = x_3132;
            let x_3133 : f32 = u_xlat89;
            let x_3135 : f32 = u_xlat19.y;
            u_xlat89 = (x_3133 * x_3135);
            let x_3138 : f32 = u_xlat19.x;
            let x_3139 : f32 = u_xlat88;
            let x_3141 : f32 = u_xlat89;
            u_xlat88 = ((x_3138 * x_3139) + x_3141);
            let x_3144 : vec2<f32> = u_xlat64;
            let x_3146 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3144.x, x_3144.y, x_3146);
            let x_3153 : vec3<f32> = txVec36;
            let x_3155 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3153.xy, x_3153.z);
            u_xlat89 = x_3155;
            let x_3157 : f32 = u_xlat19.z;
            let x_3158 : f32 = u_xlat89;
            let x_3160 : f32 = u_xlat88;
            u_xlat88 = ((x_3157 * x_3158) + x_3160);
            let x_3163 : vec4<f32> = u_xlat15;
            let x_3164 : vec2<f32> = vec2<f32>(x_3163.x, x_3163.y);
            let x_3166 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3164.x, x_3164.y, x_3166);
            let x_3173 : vec3<f32> = txVec37;
            let x_3175 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3173.xy, x_3173.z);
            u_xlat89 = x_3175;
            let x_3177 : f32 = u_xlat19.w;
            let x_3178 : f32 = u_xlat89;
            let x_3180 : f32 = u_xlat88;
            u_xlat88 = ((x_3177 * x_3178) + x_3180);
            let x_3183 : vec4<f32> = u_xlat17;
            let x_3184 : vec2<f32> = vec2<f32>(x_3183.x, x_3183.y);
            let x_3186 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3184.x, x_3184.y, x_3186);
            let x_3193 : vec3<f32> = txVec38;
            let x_3195 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3193.xy, x_3193.z);
            u_xlat89 = x_3195;
            let x_3197 : f32 = u_xlat20.x;
            let x_3198 : f32 = u_xlat89;
            let x_3200 : f32 = u_xlat88;
            u_xlat88 = ((x_3197 * x_3198) + x_3200);
            let x_3203 : vec4<f32> = u_xlat17;
            let x_3204 : vec2<f32> = vec2<f32>(x_3203.z, x_3203.w);
            let x_3206 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3204.x, x_3204.y, x_3206);
            let x_3213 : vec3<f32> = txVec39;
            let x_3215 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3213.xy, x_3213.z);
            u_xlat89 = x_3215;
            let x_3217 : f32 = u_xlat20.y;
            let x_3218 : f32 = u_xlat89;
            let x_3220 : f32 = u_xlat88;
            u_xlat88 = ((x_3217 * x_3218) + x_3220);
            let x_3223 : vec4<f32> = u_xlat15;
            let x_3224 : vec2<f32> = vec2<f32>(x_3223.z, x_3223.w);
            let x_3226 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3224.x, x_3224.y, x_3226);
            let x_3233 : vec3<f32> = txVec40;
            let x_3235 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3233.xy, x_3233.z);
            u_xlat89 = x_3235;
            let x_3237 : f32 = u_xlat20.z;
            let x_3238 : f32 = u_xlat89;
            let x_3240 : f32 = u_xlat88;
            u_xlat88 = ((x_3237 * x_3238) + x_3240);
            let x_3243 : vec4<f32> = u_xlat14;
            let x_3244 : vec2<f32> = vec2<f32>(x_3243.x, x_3243.y);
            let x_3246 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3244.x, x_3244.y, x_3246);
            let x_3253 : vec3<f32> = txVec41;
            let x_3255 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3253.xy, x_3253.z);
            u_xlat89 = x_3255;
            let x_3257 : f32 = u_xlat20.w;
            let x_3258 : f32 = u_xlat89;
            let x_3260 : f32 = u_xlat88;
            u_xlat88 = ((x_3257 * x_3258) + x_3260);
            let x_3263 : vec4<f32> = u_xlat14;
            let x_3264 : vec2<f32> = vec2<f32>(x_3263.z, x_3263.w);
            let x_3266 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3264.x, x_3264.y, x_3266);
            let x_3273 : vec3<f32> = txVec42;
            let x_3275 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3273.xy, x_3273.z);
            u_xlat89 = x_3275;
            let x_3276 : f32 = u_xlat87;
            let x_3277 : f32 = u_xlat89;
            let x_3279 : f32 = u_xlat88;
            u_xlat86 = ((x_3276 * x_3277) + x_3279);
          } else {
            let x_3282 : vec4<f32> = u_xlat11;
            let x_3285 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_3288 : vec2<f32> = ((vec2<f32>(x_3282.x, x_3282.y) * vec2<f32>(x_3285.z, x_3285.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3289 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3288.x, x_3288.y, x_3289.z, x_3289.w);
            let x_3291 : vec4<f32> = u_xlat12;
            let x_3293 : vec2<f32> = floor(vec2<f32>(x_3291.x, x_3291.y));
            let x_3294 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3293.x, x_3293.y, x_3294.z, x_3294.w);
            let x_3296 : vec4<f32> = u_xlat11;
            let x_3299 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_3302 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3296.x, x_3296.y) * vec2<f32>(x_3299.z, x_3299.w)) + -(vec2<f32>(x_3302.x, x_3302.y)));
            let x_3306 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3306.x, x_3306.x, x_3306.y, x_3306.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3309 : vec4<f32> = u_xlat13;
            let x_3311 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3309.x, x_3309.x, x_3309.z, x_3309.z) * vec4<f32>(x_3311.x, x_3311.x, x_3311.z, x_3311.z));
            let x_3314 : vec4<f32> = u_xlat14;
            let x_3316 : vec2<f32> = (vec2<f32>(x_3314.y, x_3314.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3317 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3317.x, x_3316.x, x_3317.z, x_3316.y);
            let x_3319 : vec4<f32> = u_xlat14;
            let x_3322 : vec2<f32> = u_xlat64;
            let x_3324 : vec2<f32> = ((vec2<f32>(x_3319.x, x_3319.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3322));
            let x_3325 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3324.x, x_3325.y, x_3324.y, x_3325.w);
            let x_3327 : vec2<f32> = u_xlat64;
            let x_3329 : vec2<f32> = (-(x_3327) + vec2<f32>(1.0f, 1.0f));
            let x_3330 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3329.x, x_3329.y, x_3330.z, x_3330.w);
            let x_3332 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3332, vec2<f32>(0.0f, 0.0f));
            let x_3334 : vec2<f32> = u_xlat66;
            let x_3336 : vec2<f32> = u_xlat66;
            let x_3338 : vec4<f32> = u_xlat14;
            let x_3340 : vec2<f32> = ((-(x_3334) * x_3336) + vec2<f32>(x_3338.x, x_3338.y));
            let x_3341 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3340.x, x_3340.y, x_3341.z, x_3341.w);
            let x_3343 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3343, vec2<f32>(0.0f, 0.0f));
            let x_3346 : vec2<f32> = u_xlat66;
            let x_3348 : vec2<f32> = u_xlat66;
            let x_3350 : vec4<f32> = u_xlat13;
            let x_3352 : vec2<f32> = ((-(x_3346) * x_3348) + vec2<f32>(x_3350.y, x_3350.w));
            let x_3353 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3352.x, x_3353.y, x_3352.y);
            let x_3355 : vec4<f32> = u_xlat14;
            let x_3357 : vec2<f32> = (vec2<f32>(x_3355.x, x_3355.y) + vec2<f32>(2.0f, 2.0f));
            let x_3358 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3357.x, x_3357.y, x_3358.z, x_3358.w);
            let x_3360 : vec3<f32> = u_xlat39;
            let x_3362 : vec2<f32> = (vec2<f32>(x_3360.x, x_3360.z) + vec2<f32>(2.0f, 2.0f));
            let x_3363 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3363.x, x_3362.x, x_3363.z, x_3362.y);
            let x_3366 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3366 * 0.08163200318813323975f);
            let x_3369 : vec4<f32> = u_xlat13;
            let x_3371 : vec3<f32> = (vec3<f32>(x_3369.z, x_3369.x, x_3369.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3372 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3371.x, x_3371.y, x_3371.z, x_3372.w);
            let x_3374 : vec4<f32> = u_xlat14;
            let x_3376 : vec2<f32> = (vec2<f32>(x_3374.x, x_3374.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3377 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3376.x, x_3376.y, x_3377.z, x_3377.w);
            let x_3380 : f32 = u_xlat17.y;
            u_xlat16.x = x_3380;
            let x_3382 : vec2<f32> = u_xlat64;
            let x_3385 : vec2<f32> = ((vec2<f32>(x_3382.x, x_3382.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3386 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3386.x, x_3385.x, x_3386.z, x_3385.y);
            let x_3388 : vec2<f32> = u_xlat64;
            let x_3391 : vec2<f32> = ((vec2<f32>(x_3388.x, x_3388.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3392 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3391.x, x_3392.y, x_3391.y, x_3392.w);
            let x_3395 : f32 = u_xlat13.x;
            u_xlat14.y = x_3395;
            let x_3398 : f32 = u_xlat15.y;
            u_xlat14.w = x_3398;
            let x_3400 : vec4<f32> = u_xlat14;
            let x_3401 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3400 + x_3401);
            let x_3403 : vec2<f32> = u_xlat64;
            let x_3406 : vec2<f32> = ((vec2<f32>(x_3403.y, x_3403.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3407 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3407.x, x_3406.x, x_3407.z, x_3406.y);
            let x_3409 : vec2<f32> = u_xlat64;
            let x_3412 : vec2<f32> = ((vec2<f32>(x_3409.y, x_3409.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3413 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3412.x, x_3413.y, x_3412.y, x_3413.w);
            let x_3416 : f32 = u_xlat13.y;
            u_xlat15.y = x_3416;
            let x_3418 : vec4<f32> = u_xlat15;
            let x_3419 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3418 + x_3419);
            let x_3421 : vec4<f32> = u_xlat14;
            let x_3422 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3421 / x_3422);
            let x_3424 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3424 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3426 : vec4<f32> = u_xlat15;
            let x_3427 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3426 / x_3427);
            let x_3429 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3429 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3431 : vec4<f32> = u_xlat14;
            let x_3434 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3431.w, x_3431.x, x_3431.y, x_3431.z) * vec4<f32>(x_3434.x, x_3434.x, x_3434.x, x_3434.x));
            let x_3437 : vec4<f32> = u_xlat15;
            let x_3440 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3437.x, x_3437.w, x_3437.y, x_3437.z) * vec4<f32>(x_3440.y, x_3440.y, x_3440.y, x_3440.y));
            let x_3443 : vec4<f32> = u_xlat14;
            let x_3444 : vec3<f32> = vec3<f32>(x_3443.y, x_3443.z, x_3443.w);
            let x_3445 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3444.x, x_3445.y, x_3444.y, x_3444.z);
            let x_3448 : f32 = u_xlat15.x;
            u_xlat17.y = x_3448;
            let x_3450 : vec4<f32> = u_xlat12;
            let x_3453 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_3456 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3450.x, x_3450.y, x_3450.x, x_3450.y) * vec4<f32>(x_3453.x, x_3453.y, x_3453.x, x_3453.y)) + vec4<f32>(x_3456.x, x_3456.y, x_3456.z, x_3456.y));
            let x_3459 : vec4<f32> = u_xlat12;
            let x_3462 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_3465 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3459.x, x_3459.y) * vec2<f32>(x_3462.x, x_3462.y)) + vec2<f32>(x_3465.w, x_3465.y));
            let x_3469 : f32 = u_xlat17.y;
            u_xlat14.y = x_3469;
            let x_3472 : f32 = u_xlat15.z;
            u_xlat17.y = x_3472;
            let x_3474 : vec4<f32> = u_xlat12;
            let x_3477 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_3480 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3474.x, x_3474.y, x_3474.x, x_3474.y) * vec4<f32>(x_3477.x, x_3477.y, x_3477.x, x_3477.y)) + vec4<f32>(x_3480.x, x_3480.y, x_3480.z, x_3480.y));
            let x_3483 : vec4<f32> = u_xlat12;
            let x_3486 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_3489 : vec4<f32> = u_xlat17;
            let x_3491 : vec2<f32> = ((vec2<f32>(x_3483.x, x_3483.y) * vec2<f32>(x_3486.x, x_3486.y)) + vec2<f32>(x_3489.w, x_3489.y));
            let x_3492 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3491.x, x_3491.y, x_3492.z, x_3492.w);
            let x_3495 : f32 = u_xlat17.y;
            u_xlat14.z = x_3495;
            let x_3498 : vec4<f32> = u_xlat12;
            let x_3501 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_3504 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3498.x, x_3498.y, x_3498.x, x_3498.y) * vec4<f32>(x_3501.x, x_3501.y, x_3501.x, x_3501.y)) + vec4<f32>(x_3504.x, x_3504.y, x_3504.x, x_3504.z));
            let x_3508 : f32 = u_xlat15.w;
            u_xlat17.y = x_3508;
            let x_3511 : vec4<f32> = u_xlat12;
            let x_3514 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_3517 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3511.x, x_3511.y, x_3511.x, x_3511.y) * vec4<f32>(x_3514.x, x_3514.y, x_3514.x, x_3514.y)) + vec4<f32>(x_3517.x, x_3517.y, x_3517.z, x_3517.y));
            let x_3521 : vec4<f32> = u_xlat12;
            let x_3524 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_3527 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3521.x, x_3521.y) * vec2<f32>(x_3524.x, x_3524.y)) + vec2<f32>(x_3527.w, x_3527.y));
            let x_3531 : f32 = u_xlat17.y;
            u_xlat14.w = x_3531;
            let x_3534 : vec4<f32> = u_xlat12;
            let x_3537 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_3540 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3534.x, x_3534.y) * vec2<f32>(x_3537.x, x_3537.y)) + vec2<f32>(x_3540.x, x_3540.w));
            let x_3543 : vec4<f32> = u_xlat17;
            let x_3544 : vec3<f32> = vec3<f32>(x_3543.x, x_3543.z, x_3543.w);
            let x_3545 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3544.x, x_3545.y, x_3544.y, x_3544.z);
            let x_3547 : vec4<f32> = u_xlat12;
            let x_3550 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_3553 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3547.x, x_3547.y, x_3547.x, x_3547.y) * vec4<f32>(x_3550.x, x_3550.y, x_3550.x, x_3550.y)) + vec4<f32>(x_3553.x, x_3553.y, x_3553.z, x_3553.y));
            let x_3557 : vec4<f32> = u_xlat12;
            let x_3560 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_3563 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3557.x, x_3557.y) * vec2<f32>(x_3560.x, x_3560.y)) + vec2<f32>(x_3563.w, x_3563.y));
            let x_3567 : f32 = u_xlat14.x;
            u_xlat15.x = x_3567;
            let x_3569 : vec4<f32> = u_xlat12;
            let x_3572 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_3575 : vec4<f32> = u_xlat15;
            let x_3577 : vec2<f32> = ((vec2<f32>(x_3569.x, x_3569.y) * vec2<f32>(x_3572.x, x_3572.y)) + vec2<f32>(x_3575.x, x_3575.y));
            let x_3578 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3577.x, x_3577.y, x_3578.z, x_3578.w);
            let x_3581 : vec4<f32> = u_xlat13;
            let x_3583 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3581.x, x_3581.x, x_3581.x, x_3581.x) * x_3583);
            let x_3586 : vec4<f32> = u_xlat13;
            let x_3588 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3586.y, x_3586.y, x_3586.y, x_3586.y) * x_3588);
            let x_3591 : vec4<f32> = u_xlat13;
            let x_3593 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3591.z, x_3591.z, x_3591.z, x_3591.z) * x_3593);
            let x_3595 : vec4<f32> = u_xlat13;
            let x_3597 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3595.w, x_3595.w, x_3595.w, x_3595.w) * x_3597);
            let x_3600 : vec4<f32> = u_xlat18;
            let x_3601 : vec2<f32> = vec2<f32>(x_3600.x, x_3600.y);
            let x_3603 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3601.x, x_3601.y, x_3603);
            let x_3610 : vec3<f32> = txVec43;
            let x_3612 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3610.xy, x_3610.z);
            u_xlat87 = x_3612;
            let x_3614 : vec4<f32> = u_xlat18;
            let x_3615 : vec2<f32> = vec2<f32>(x_3614.z, x_3614.w);
            let x_3617 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3615.x, x_3615.y, x_3617);
            let x_3624 : vec3<f32> = txVec44;
            let x_3626 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3624.xy, x_3624.z);
            u_xlat88 = x_3626;
            let x_3627 : f32 = u_xlat88;
            let x_3629 : f32 = u_xlat23.y;
            u_xlat88 = (x_3627 * x_3629);
            let x_3632 : f32 = u_xlat23.x;
            let x_3633 : f32 = u_xlat87;
            let x_3635 : f32 = u_xlat88;
            u_xlat87 = ((x_3632 * x_3633) + x_3635);
            let x_3638 : vec2<f32> = u_xlat64;
            let x_3640 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3638.x, x_3638.y, x_3640);
            let x_3647 : vec3<f32> = txVec45;
            let x_3649 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3647.xy, x_3647.z);
            u_xlat88 = x_3649;
            let x_3651 : f32 = u_xlat23.z;
            let x_3652 : f32 = u_xlat88;
            let x_3654 : f32 = u_xlat87;
            u_xlat87 = ((x_3651 * x_3652) + x_3654);
            let x_3657 : vec4<f32> = u_xlat21;
            let x_3658 : vec2<f32> = vec2<f32>(x_3657.x, x_3657.y);
            let x_3660 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3658.x, x_3658.y, x_3660);
            let x_3667 : vec3<f32> = txVec46;
            let x_3669 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3667.xy, x_3667.z);
            u_xlat88 = x_3669;
            let x_3671 : f32 = u_xlat23.w;
            let x_3672 : f32 = u_xlat88;
            let x_3674 : f32 = u_xlat87;
            u_xlat87 = ((x_3671 * x_3672) + x_3674);
            let x_3677 : vec4<f32> = u_xlat19;
            let x_3678 : vec2<f32> = vec2<f32>(x_3677.x, x_3677.y);
            let x_3680 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3678.x, x_3678.y, x_3680);
            let x_3687 : vec3<f32> = txVec47;
            let x_3689 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3687.xy, x_3687.z);
            u_xlat88 = x_3689;
            let x_3691 : f32 = u_xlat24.x;
            let x_3692 : f32 = u_xlat88;
            let x_3694 : f32 = u_xlat87;
            u_xlat87 = ((x_3691 * x_3692) + x_3694);
            let x_3697 : vec4<f32> = u_xlat19;
            let x_3698 : vec2<f32> = vec2<f32>(x_3697.z, x_3697.w);
            let x_3700 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3698.x, x_3698.y, x_3700);
            let x_3707 : vec3<f32> = txVec48;
            let x_3709 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3707.xy, x_3707.z);
            u_xlat88 = x_3709;
            let x_3711 : f32 = u_xlat24.y;
            let x_3712 : f32 = u_xlat88;
            let x_3714 : f32 = u_xlat87;
            u_xlat87 = ((x_3711 * x_3712) + x_3714);
            let x_3717 : vec4<f32> = u_xlat20;
            let x_3718 : vec2<f32> = vec2<f32>(x_3717.x, x_3717.y);
            let x_3720 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3718.x, x_3718.y, x_3720);
            let x_3727 : vec3<f32> = txVec49;
            let x_3729 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3727.xy, x_3727.z);
            u_xlat88 = x_3729;
            let x_3731 : f32 = u_xlat24.z;
            let x_3732 : f32 = u_xlat88;
            let x_3734 : f32 = u_xlat87;
            u_xlat87 = ((x_3731 * x_3732) + x_3734);
            let x_3737 : vec4<f32> = u_xlat21;
            let x_3738 : vec2<f32> = vec2<f32>(x_3737.z, x_3737.w);
            let x_3740 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3738.x, x_3738.y, x_3740);
            let x_3747 : vec3<f32> = txVec50;
            let x_3749 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3747.xy, x_3747.z);
            u_xlat88 = x_3749;
            let x_3751 : f32 = u_xlat24.w;
            let x_3752 : f32 = u_xlat88;
            let x_3754 : f32 = u_xlat87;
            u_xlat87 = ((x_3751 * x_3752) + x_3754);
            let x_3757 : vec4<f32> = u_xlat22;
            let x_3758 : vec2<f32> = vec2<f32>(x_3757.x, x_3757.y);
            let x_3760 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3758.x, x_3758.y, x_3760);
            let x_3767 : vec3<f32> = txVec51;
            let x_3769 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3767.xy, x_3767.z);
            u_xlat88 = x_3769;
            let x_3771 : f32 = u_xlat25.x;
            let x_3772 : f32 = u_xlat88;
            let x_3774 : f32 = u_xlat87;
            u_xlat87 = ((x_3771 * x_3772) + x_3774);
            let x_3777 : vec4<f32> = u_xlat22;
            let x_3778 : vec2<f32> = vec2<f32>(x_3777.z, x_3777.w);
            let x_3780 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3778.x, x_3778.y, x_3780);
            let x_3787 : vec3<f32> = txVec52;
            let x_3789 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3787.xy, x_3787.z);
            u_xlat88 = x_3789;
            let x_3791 : f32 = u_xlat25.y;
            let x_3792 : f32 = u_xlat88;
            let x_3794 : f32 = u_xlat87;
            u_xlat87 = ((x_3791 * x_3792) + x_3794);
            let x_3797 : vec2<f32> = u_xlat40;
            let x_3799 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3797.x, x_3797.y, x_3799);
            let x_3806 : vec3<f32> = txVec53;
            let x_3808 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3806.xy, x_3806.z);
            u_xlat88 = x_3808;
            let x_3810 : f32 = u_xlat25.z;
            let x_3811 : f32 = u_xlat88;
            let x_3813 : f32 = u_xlat87;
            u_xlat87 = ((x_3810 * x_3811) + x_3813);
            let x_3816 : vec2<f32> = u_xlat72;
            let x_3818 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3816.x, x_3816.y, x_3818);
            let x_3825 : vec3<f32> = txVec54;
            let x_3827 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3825.xy, x_3825.z);
            u_xlat88 = x_3827;
            let x_3829 : f32 = u_xlat25.w;
            let x_3830 : f32 = u_xlat88;
            let x_3832 : f32 = u_xlat87;
            u_xlat87 = ((x_3829 * x_3830) + x_3832);
            let x_3835 : vec4<f32> = u_xlat17;
            let x_3836 : vec2<f32> = vec2<f32>(x_3835.x, x_3835.y);
            let x_3838 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3836.x, x_3836.y, x_3838);
            let x_3845 : vec3<f32> = txVec55;
            let x_3847 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3845.xy, x_3845.z);
            u_xlat88 = x_3847;
            let x_3849 : f32 = u_xlat13.x;
            let x_3850 : f32 = u_xlat88;
            let x_3852 : f32 = u_xlat87;
            u_xlat87 = ((x_3849 * x_3850) + x_3852);
            let x_3855 : vec4<f32> = u_xlat17;
            let x_3856 : vec2<f32> = vec2<f32>(x_3855.z, x_3855.w);
            let x_3858 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3856.x, x_3856.y, x_3858);
            let x_3865 : vec3<f32> = txVec56;
            let x_3867 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3865.xy, x_3865.z);
            u_xlat88 = x_3867;
            let x_3869 : f32 = u_xlat13.y;
            let x_3870 : f32 = u_xlat88;
            let x_3872 : f32 = u_xlat87;
            u_xlat87 = ((x_3869 * x_3870) + x_3872);
            let x_3875 : vec2<f32> = u_xlat67;
            let x_3877 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3875.x, x_3875.y, x_3877);
            let x_3884 : vec3<f32> = txVec57;
            let x_3886 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3884.xy, x_3884.z);
            u_xlat88 = x_3886;
            let x_3888 : f32 = u_xlat13.z;
            let x_3889 : f32 = u_xlat88;
            let x_3891 : f32 = u_xlat87;
            u_xlat87 = ((x_3888 * x_3889) + x_3891);
            let x_3894 : vec4<f32> = u_xlat12;
            let x_3895 : vec2<f32> = vec2<f32>(x_3894.x, x_3894.y);
            let x_3897 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3895.x, x_3895.y, x_3897);
            let x_3904 : vec3<f32> = txVec58;
            let x_3906 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3904.xy, x_3904.z);
            u_xlat88 = x_3906;
            let x_3908 : f32 = u_xlat13.w;
            let x_3909 : f32 = u_xlat88;
            let x_3911 : f32 = u_xlat87;
            u_xlat86 = ((x_3908 * x_3909) + x_3911);
          }
        }
      } else {
        let x_3915 : vec4<f32> = u_xlat11;
        let x_3916 : vec2<f32> = vec2<f32>(x_3915.x, x_3915.y);
        let x_3918 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3916.x, x_3916.y, x_3918);
        let x_3925 : vec3<f32> = txVec59;
        let x_3927 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3925.xy, x_3925.z);
        u_xlat86 = x_3927;
      }
      let x_3928 : i32 = u_xlati6;
      let x_3930 : f32 = x_727.x_AdditionalShadowParams[x_3928].x;
      u_xlat87 = (1.0f + -(x_3930));
      let x_3933 : f32 = u_xlat86;
      let x_3934 : i32 = u_xlati6;
      let x_3936 : f32 = x_727.x_AdditionalShadowParams[x_3934].x;
      let x_3938 : f32 = u_xlat87;
      u_xlat86 = ((x_3933 * x_3936) + x_3938);
      let x_3941 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_3941);
      let x_3945 : f32 = u_xlat11.z;
      u_xlatb88 = (x_3945 >= 1.0f);
      let x_3947 : bool = u_xlatb87;
      let x_3948 : bool = u_xlatb88;
      u_xlatb87 = (x_3947 | x_3948);
      let x_3950 : bool = u_xlatb87;
      let x_3951 : f32 = u_xlat86;
      u_xlat86 = select(x_3951, 1.0f, x_3950);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_3954 : f32 = u_xlat86;
    u_xlat87 = (-(x_3954) + 1.0f);
    let x_3957 : f32 = u_xlat81;
    let x_3958 : f32 = u_xlat87;
    let x_3960 : f32 = u_xlat86;
    u_xlat86 = ((x_3957 * x_3958) + x_3960);
    let x_3963 : i32 = u_xlati6;
    u_xlati87 = (1i << bitcast<u32>((x_3963 & 31i)));
    let x_3966 : i32 = u_xlati87;
    let x_3969 : f32 = x_2069.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_3966) & bitcast<u32>(x_3969)));
    let x_3973 : i32 = u_xlati87;
    if ((x_3973 != 0i)) {
      let x_3977 : i32 = u_xlati6;
      let x_3979 : f32 = x_2069.x_AdditionalLightsLightTypes[x_3977].el;
      u_xlati87 = i32(x_3979);
      let x_3982 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_3982 != 0i));
      let x_3986 : i32 = u_xlati6;
      u_xlati11 = (x_3986 << bitcast<u32>(2i));
      let x_3988 : i32 = u_xlati88;
      if ((x_3988 != 0i)) {
        let x_3993 : vec3<f32> = vs_TEXCOORD7;
        let x_3995 : i32 = u_xlati11;
        let x_3998 : i32 = u_xlati11;
        let x_4002 : vec4<f32> = x_2069.x_AdditionalLightsWorldToLights[((x_3995 + 1i) / 4i)][((x_3998 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_3993.y, x_3993.y, x_3993.y) * vec3<f32>(x_4002.x, x_4002.y, x_4002.w));
        let x_4005 : i32 = u_xlati11;
        let x_4007 : i32 = u_xlati11;
        let x_4010 : vec4<f32> = x_2069.x_AdditionalLightsWorldToLights[(x_4005 / 4i)][(x_4007 % 4i)];
        let x_4012 : vec3<f32> = vs_TEXCOORD7;
        let x_4015 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4010.x, x_4010.y, x_4010.w) * vec3<f32>(x_4012.x, x_4012.x, x_4012.x)) + x_4015);
        let x_4017 : i32 = u_xlati11;
        let x_4020 : i32 = u_xlati11;
        let x_4024 : vec4<f32> = x_2069.x_AdditionalLightsWorldToLights[((x_4017 + 2i) / 4i)][((x_4020 + 2i) % 4i)];
        let x_4026 : vec3<f32> = vs_TEXCOORD7;
        let x_4029 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4024.x, x_4024.y, x_4024.w) * vec3<f32>(x_4026.z, x_4026.z, x_4026.z)) + x_4029);
        let x_4031 : vec3<f32> = u_xlat37;
        let x_4032 : i32 = u_xlati11;
        let x_4035 : i32 = u_xlati11;
        let x_4039 : vec4<f32> = x_2069.x_AdditionalLightsWorldToLights[((x_4032 + 3i) / 4i)][((x_4035 + 3i) % 4i)];
        u_xlat37 = (x_4031 + vec3<f32>(x_4039.x, x_4039.y, x_4039.w));
        let x_4042 : vec3<f32> = u_xlat37;
        let x_4044 : vec3<f32> = u_xlat37;
        let x_4046 : vec2<f32> = (vec2<f32>(x_4042.x, x_4042.y) / vec2<f32>(x_4044.z, x_4044.z));
        let x_4047 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4046.x, x_4046.y, x_4047.z);
        let x_4049 : vec3<f32> = u_xlat37;
        let x_4052 : vec2<f32> = ((vec2<f32>(x_4049.x, x_4049.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4053 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4052.x, x_4052.y, x_4053.z);
        let x_4055 : vec3<f32> = u_xlat37;
        let x_4059 : vec2<f32> = clamp(vec2<f32>(x_4055.x, x_4055.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4060 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4059.x, x_4059.y, x_4060.z);
        let x_4062 : i32 = u_xlati6;
        let x_4064 : vec4<f32> = x_2069.x_AdditionalLightsCookieAtlasUVRects[x_4062];
        let x_4066 : vec3<f32> = u_xlat37;
        let x_4069 : i32 = u_xlati6;
        let x_4071 : vec4<f32> = x_2069.x_AdditionalLightsCookieAtlasUVRects[x_4069];
        let x_4073 : vec2<f32> = ((vec2<f32>(x_4064.x, x_4064.y) * vec2<f32>(x_4066.x, x_4066.y)) + vec2<f32>(x_4071.z, x_4071.w));
        let x_4074 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4073.x, x_4073.y, x_4074.z);
      } else {
        let x_4077 : i32 = u_xlati87;
        u_xlatb87 = (x_4077 == 1i);
        let x_4079 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_4079);
        let x_4081 : i32 = u_xlati87;
        if ((x_4081 != 0i)) {
          let x_4085 : vec3<f32> = vs_TEXCOORD7;
          let x_4087 : i32 = u_xlati11;
          let x_4090 : i32 = u_xlati11;
          let x_4094 : vec4<f32> = x_2069.x_AdditionalLightsWorldToLights[((x_4087 + 1i) / 4i)][((x_4090 + 1i) % 4i)];
          let x_4096 : vec2<f32> = (vec2<f32>(x_4085.y, x_4085.y) * vec2<f32>(x_4094.x, x_4094.y));
          let x_4097 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4096.x, x_4096.y, x_4097.z, x_4097.w);
          let x_4099 : i32 = u_xlati11;
          let x_4101 : i32 = u_xlati11;
          let x_4104 : vec4<f32> = x_2069.x_AdditionalLightsWorldToLights[(x_4099 / 4i)][(x_4101 % 4i)];
          let x_4106 : vec3<f32> = vs_TEXCOORD7;
          let x_4109 : vec4<f32> = u_xlat12;
          let x_4111 : vec2<f32> = ((vec2<f32>(x_4104.x, x_4104.y) * vec2<f32>(x_4106.x, x_4106.x)) + vec2<f32>(x_4109.x, x_4109.y));
          let x_4112 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4111.x, x_4111.y, x_4112.z, x_4112.w);
          let x_4114 : i32 = u_xlati11;
          let x_4117 : i32 = u_xlati11;
          let x_4121 : vec4<f32> = x_2069.x_AdditionalLightsWorldToLights[((x_4114 + 2i) / 4i)][((x_4117 + 2i) % 4i)];
          let x_4123 : vec3<f32> = vs_TEXCOORD7;
          let x_4126 : vec4<f32> = u_xlat12;
          let x_4128 : vec2<f32> = ((vec2<f32>(x_4121.x, x_4121.y) * vec2<f32>(x_4123.z, x_4123.z)) + vec2<f32>(x_4126.x, x_4126.y));
          let x_4129 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4128.x, x_4128.y, x_4129.z, x_4129.w);
          let x_4131 : vec4<f32> = u_xlat12;
          let x_4133 : i32 = u_xlati11;
          let x_4136 : i32 = u_xlati11;
          let x_4140 : vec4<f32> = x_2069.x_AdditionalLightsWorldToLights[((x_4133 + 3i) / 4i)][((x_4136 + 3i) % 4i)];
          let x_4142 : vec2<f32> = (vec2<f32>(x_4131.x, x_4131.y) + vec2<f32>(x_4140.x, x_4140.y));
          let x_4143 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4142.x, x_4142.y, x_4143.z, x_4143.w);
          let x_4145 : vec4<f32> = u_xlat12;
          let x_4148 : vec2<f32> = ((vec2<f32>(x_4145.x, x_4145.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4149 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4148.x, x_4148.y, x_4149.z, x_4149.w);
          let x_4151 : vec4<f32> = u_xlat12;
          let x_4153 : vec2<f32> = fract(vec2<f32>(x_4151.x, x_4151.y));
          let x_4154 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4153.x, x_4153.y, x_4154.z, x_4154.w);
          let x_4156 : i32 = u_xlati6;
          let x_4158 : vec4<f32> = x_2069.x_AdditionalLightsCookieAtlasUVRects[x_4156];
          let x_4160 : vec4<f32> = u_xlat12;
          let x_4163 : i32 = u_xlati6;
          let x_4165 : vec4<f32> = x_2069.x_AdditionalLightsCookieAtlasUVRects[x_4163];
          let x_4167 : vec2<f32> = ((vec2<f32>(x_4158.x, x_4158.y) * vec2<f32>(x_4160.x, x_4160.y)) + vec2<f32>(x_4165.z, x_4165.w));
          let x_4168 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4167.x, x_4167.y, x_4168.z);
        } else {
          let x_4171 : vec3<f32> = vs_TEXCOORD7;
          let x_4173 : i32 = u_xlati11;
          let x_4176 : i32 = u_xlati11;
          let x_4180 : vec4<f32> = x_2069.x_AdditionalLightsWorldToLights[((x_4173 + 1i) / 4i)][((x_4176 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4171.y, x_4171.y, x_4171.y, x_4171.y) * x_4180);
          let x_4182 : i32 = u_xlati11;
          let x_4184 : i32 = u_xlati11;
          let x_4187 : vec4<f32> = x_2069.x_AdditionalLightsWorldToLights[(x_4182 / 4i)][(x_4184 % 4i)];
          let x_4188 : vec3<f32> = vs_TEXCOORD7;
          let x_4191 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4187 * vec4<f32>(x_4188.x, x_4188.x, x_4188.x, x_4188.x)) + x_4191);
          let x_4193 : i32 = u_xlati11;
          let x_4196 : i32 = u_xlati11;
          let x_4200 : vec4<f32> = x_2069.x_AdditionalLightsWorldToLights[((x_4193 + 2i) / 4i)][((x_4196 + 2i) % 4i)];
          let x_4201 : vec3<f32> = vs_TEXCOORD7;
          let x_4204 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4200 * vec4<f32>(x_4201.z, x_4201.z, x_4201.z, x_4201.z)) + x_4204);
          let x_4206 : vec4<f32> = u_xlat12;
          let x_4207 : i32 = u_xlati11;
          let x_4210 : i32 = u_xlati11;
          let x_4214 : vec4<f32> = x_2069.x_AdditionalLightsWorldToLights[((x_4207 + 3i) / 4i)][((x_4210 + 3i) % 4i)];
          u_xlat12 = (x_4206 + x_4214);
          let x_4216 : vec4<f32> = u_xlat12;
          let x_4218 : vec4<f32> = u_xlat12;
          let x_4220 : vec3<f32> = (vec3<f32>(x_4216.x, x_4216.y, x_4216.z) / vec3<f32>(x_4218.w, x_4218.w, x_4218.w));
          let x_4221 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4220.x, x_4220.y, x_4220.z, x_4221.w);
          let x_4223 : vec4<f32> = u_xlat12;
          let x_4225 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_4223.x, x_4223.y, x_4223.z), vec3<f32>(x_4225.x, x_4225.y, x_4225.z));
          let x_4228 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_4228);
          let x_4230 : f32 = u_xlat87;
          let x_4232 : vec4<f32> = u_xlat12;
          let x_4234 : vec3<f32> = (vec3<f32>(x_4230, x_4230, x_4230) * vec3<f32>(x_4232.x, x_4232.y, x_4232.z));
          let x_4235 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4234.x, x_4234.y, x_4234.z, x_4235.w);
          let x_4237 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_4237.x, x_4237.y, x_4237.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4242 : f32 = u_xlat87;
          u_xlat87 = max(x_4242, 0.00000099999999747524f);
          let x_4245 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_4245);
          let x_4247 : f32 = u_xlat87;
          let x_4249 : vec4<f32> = u_xlat12;
          let x_4251 : vec3<f32> = (vec3<f32>(x_4247, x_4247, x_4247) * vec3<f32>(x_4249.z, x_4249.x, x_4249.y));
          let x_4252 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4251.x, x_4251.y, x_4251.z, x_4252.w);
          let x_4255 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4255);
          let x_4259 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4259, 0.0f, 1.0f);
          let x_4262 : vec4<f32> = u_xlat13;
          let x_4264 : vec4<bool> = (vec4<f32>(x_4262.y, x_4262.y, x_4262.y, x_4262.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_4265 : vec2<bool> = vec2<bool>(x_4264.x, x_4264.w);
          let x_4266 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_4265.x, x_4266.y, x_4266.z, x_4265.y);
          let x_4269 : bool = u_xlatb11.x;
          if (x_4269) {
            let x_4274 : f32 = u_xlat13.x;
            x_4270 = x_4274;
          } else {
            let x_4277 : f32 = u_xlat13.x;
            x_4270 = -(x_4277);
          }
          let x_4279 : f32 = x_4270;
          u_xlat11.x = x_4279;
          let x_4282 : bool = u_xlatb11.w;
          if (x_4282) {
            let x_4287 : f32 = u_xlat13.x;
            x_4283 = x_4287;
          } else {
            let x_4290 : f32 = u_xlat13.x;
            x_4283 = -(x_4290);
          }
          let x_4292 : f32 = x_4283;
          u_xlat11.w = x_4292;
          let x_4294 : vec4<f32> = u_xlat12;
          let x_4296 : f32 = u_xlat87;
          let x_4299 : vec4<f32> = u_xlat11;
          let x_4301 : vec2<f32> = ((vec2<f32>(x_4294.x, x_4294.y) * vec2<f32>(x_4296, x_4296)) + vec2<f32>(x_4299.x, x_4299.w));
          let x_4302 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4301.x, x_4302.y, x_4302.z, x_4301.y);
          let x_4304 : vec4<f32> = u_xlat11;
          let x_4307 : vec2<f32> = ((vec2<f32>(x_4304.x, x_4304.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4308 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4307.x, x_4308.y, x_4308.z, x_4307.y);
          let x_4310 : vec4<f32> = u_xlat11;
          let x_4314 : vec2<f32> = clamp(vec2<f32>(x_4310.x, x_4310.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4315 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4314.x, x_4315.y, x_4315.z, x_4314.y);
          let x_4317 : i32 = u_xlati6;
          let x_4319 : vec4<f32> = x_2069.x_AdditionalLightsCookieAtlasUVRects[x_4317];
          let x_4321 : vec4<f32> = u_xlat11;
          let x_4324 : i32 = u_xlati6;
          let x_4326 : vec4<f32> = x_2069.x_AdditionalLightsCookieAtlasUVRects[x_4324];
          let x_4328 : vec2<f32> = ((vec2<f32>(x_4319.x, x_4319.y) * vec2<f32>(x_4321.x, x_4321.w)) + vec2<f32>(x_4326.z, x_4326.w));
          let x_4329 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4328.x, x_4328.y, x_4329.z);
        }
      }
      let x_4336 : vec3<f32> = u_xlat37;
      let x_4338 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4336.x, x_4336.y), 0.0f);
      u_xlat11 = x_4338;
      let x_4340 : bool = u_xlatb7.y;
      if (x_4340) {
        let x_4345 : f32 = u_xlat11.w;
        x_4341 = x_4345;
      } else {
        let x_4348 : f32 = u_xlat11.x;
        x_4341 = x_4348;
      }
      let x_4349 : f32 = x_4341;
      u_xlat87 = x_4349;
      let x_4351 : bool = u_xlatb7.x;
      if (x_4351) {
        let x_4355 : vec4<f32> = u_xlat11;
        x_4352 = vec3<f32>(x_4355.x, x_4355.y, x_4355.z);
      } else {
        let x_4358 : f32 = u_xlat87;
        x_4352 = vec3<f32>(x_4358, x_4358, x_4358);
      }
      let x_4360 : vec3<f32> = x_4352;
      let x_4361 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4360.x, x_4360.y, x_4360.z, x_4361.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4367 : vec4<f32> = u_xlat11;
    let x_4369 : i32 = u_xlati6;
    let x_4371 : vec4<f32> = x_2545.x_AdditionalLightsColor[x_4369];
    let x_4373 : vec3<f32> = (vec3<f32>(x_4367.x, x_4367.y, x_4367.z) * vec3<f32>(x_4371.x, x_4371.y, x_4371.z));
    let x_4374 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4373.x, x_4373.y, x_4373.z, x_4374.w);
    let x_4376 : f32 = u_xlat59;
    let x_4377 : f32 = u_xlat86;
    u_xlat6.x = (x_4376 * x_4377);
    let x_4380 : vec3<f32> = u_xlat2;
    let x_4381 : vec4<f32> = u_xlat10;
    u_xlat59 = dot(x_4380, vec3<f32>(x_4381.x, x_4381.y, x_4381.z));
    let x_4384 : f32 = u_xlat59;
    u_xlat59 = clamp(x_4384, 0.0f, 1.0f);
    let x_4387 : f32 = u_xlat6.x;
    let x_4388 : f32 = u_xlat59;
    u_xlat6.x = (x_4387 * x_4388);
    let x_4391 : vec4<f32> = u_xlat6;
    let x_4393 : vec4<f32> = u_xlat11;
    let x_4395 : vec3<f32> = (vec3<f32>(x_4391.x, x_4391.x, x_4391.x) * vec3<f32>(x_4393.x, x_4393.y, x_4393.z));
    let x_4396 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4395.x, x_4395.y, x_4395.z, x_4396.w);
    let x_4398 : vec4<f32> = u_xlat9;
    let x_4400 : f32 = u_xlat85;
    let x_4403 : vec4<f32> = u_xlat1;
    let x_4405 : vec3<f32> = ((vec3<f32>(x_4398.x, x_4398.y, x_4398.z) * vec3<f32>(x_4400, x_4400, x_4400)) + vec3<f32>(x_4403.x, x_4403.y, x_4403.z));
    let x_4406 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4405.x, x_4405.y, x_4405.z, x_4406.w);
    let x_4408 : vec4<f32> = u_xlat9;
    let x_4410 : vec4<f32> = u_xlat9;
    u_xlat6.x = dot(vec3<f32>(x_4408.x, x_4408.y, x_4408.z), vec3<f32>(x_4410.x, x_4410.y, x_4410.z));
    let x_4415 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_4415, 1.17549435e-38f);
    let x_4419 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_4419);
    let x_4422 : vec4<f32> = u_xlat6;
    let x_4424 : vec4<f32> = u_xlat9;
    let x_4426 : vec3<f32> = (vec3<f32>(x_4422.x, x_4422.x, x_4422.x) * vec3<f32>(x_4424.x, x_4424.y, x_4424.z));
    let x_4427 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4426.x, x_4426.y, x_4426.z, x_4427.w);
    let x_4429 : vec3<f32> = u_xlat2;
    let x_4430 : vec4<f32> = u_xlat9;
    u_xlat6.x = dot(x_4429, vec3<f32>(x_4430.x, x_4430.y, x_4430.z));
    let x_4435 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_4435, 0.0f, 1.0f);
    let x_4438 : vec4<f32> = u_xlat10;
    let x_4440 : vec4<f32> = u_xlat9;
    u_xlat59 = dot(vec3<f32>(x_4438.x, x_4438.y, x_4438.z), vec3<f32>(x_4440.x, x_4440.y, x_4440.z));
    let x_4443 : f32 = u_xlat59;
    u_xlat59 = clamp(x_4443, 0.0f, 1.0f);
    let x_4446 : f32 = u_xlat6.x;
    let x_4448 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4446 * x_4448);
    let x_4452 : f32 = u_xlat6.x;
    let x_4454 : f32 = u_xlat0.x;
    u_xlat6.x = ((x_4452 * x_4454) + 1.00001001358032226562f);
    let x_4458 : f32 = u_xlat59;
    let x_4459 : f32 = u_xlat59;
    u_xlat59 = (x_4458 * x_4459);
    let x_4462 : f32 = u_xlat6.x;
    let x_4464 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4462 * x_4464);
    let x_4467 : f32 = u_xlat59;
    u_xlat59 = max(x_4467, 0.10000000149011611938f);
    let x_4470 : f32 = u_xlat6.x;
    let x_4471 : f32 = u_xlat59;
    u_xlat6.x = (x_4470 * x_4471);
    let x_4474 : f32 = u_xlat82;
    let x_4476 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4474 * x_4476);
    let x_4479 : f32 = u_xlat80;
    let x_4481 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4479 / x_4481);
    let x_4484 : vec4<f32> = u_xlat5;
    let x_4486 : vec4<f32> = u_xlat6;
    let x_4489 : vec4<f32> = u_xlat4;
    let x_4491 : vec3<f32> = ((vec3<f32>(x_4484.x, x_4484.y, x_4484.z) * vec3<f32>(x_4486.x, x_4486.x, x_4486.x)) + vec3<f32>(x_4489.x, x_4489.y, x_4489.z));
    let x_4492 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4491.x, x_4491.y, x_4491.z, x_4492.w);
    let x_4494 : vec4<f32> = u_xlat9;
    let x_4496 : vec4<f32> = u_xlat11;
    let x_4499 : vec4<f32> = u_xlat8;
    let x_4501 : vec3<f32> = ((vec3<f32>(x_4494.x, x_4494.y, x_4494.z) * vec3<f32>(x_4496.x, x_4496.y, x_4496.z)) + vec3<f32>(x_4499.x, x_4499.y, x_4499.z));
    let x_4502 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4501.x, x_4501.y, x_4501.z, x_4502.w);

    continuing {
      let x_4504 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4504 + bitcast<u32>(1i));
    }
  }
  let x_4506 : vec4<f32> = u_xlat3;
  let x_4508 : f32 = u_xlat26;
  let x_4511 : vec3<f32> = u_xlat32;
  u_xlat0 = ((vec3<f32>(x_4506.x, x_4506.y, x_4506.z) * vec3<f32>(x_4508, x_4508, x_4508)) + x_4511);
  let x_4513 : vec4<f32> = u_xlat8;
  let x_4515 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4513.x, x_4513.y, x_4513.z) + x_4515);
  let x_4517 : f32 = u_xlat79;
  let x_4518 : f32 = u_xlat79;
  u_xlat1.x = (x_4517 * -(x_4518));
  let x_4523 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_4523);
  let x_4526 : vec3<f32> = u_xlat0;
  let x_4527 : f32 = u_xlat78;
  let x_4531 : vec4<f32> = x_111.unity_FogColor;
  u_xlat0 = ((x_4526 * vec3<f32>(x_4527, x_4527, x_4527)) + -(vec3<f32>(x_4531.x, x_4531.y, x_4531.z)));
  let x_4537 : vec4<f32> = u_xlat1;
  let x_4539 : vec3<f32> = u_xlat0;
  let x_4542 : vec4<f32> = x_111.unity_FogColor;
  let x_4544 : vec3<f32> = ((vec3<f32>(x_4537.x, x_4537.x, x_4537.x) * x_4539) + vec3<f32>(x_4542.x, x_4542.y, x_4542.z));
  let x_4545 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4544.x, x_4544.y, x_4544.z, x_4545.w);
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


