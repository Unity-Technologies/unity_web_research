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

@group(1) @binding(4) var<uniform> x_594 : LightShadows;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu79 : u32;

var<private> u_xlati79 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(13) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlatb82 : bool;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat82 : f32;

var<private> u_xlatb83 : bool;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat84 : f32;

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

@group(1) @binding(5) var<uniform> x_2181 : LightCookies;

@group(0) @binding(10) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb8 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2369 : UnityPerDraw;

var<private> u_xlatu52 : u32;

var<private> u_xlatu82 : u32;

var<private> u_xlati83 : i32;

var<private> u_xlati82 : i32;

@group(1) @binding(1) var<uniform> x_2658 : AdditionalLights;

var<private> u_xlat85 : f32;

var<private> u_xlati85 : i32;

var<private> u_xlatb86 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat87 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(9) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

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

var<private> u_xlatu55 : u32;

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
  var x_2134 : f32;
  var x_2264 : f32;
  var x_2275 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2792 : f32;
  var x_2802 : f32;
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
  var x_4372 : f32;
  var x_4385 : f32;
  var x_4433 : f32;
  var x_4444 : vec3<f32>;
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
  let x_586 : vec3<f32> = vs_TEXCOORD7;
  let x_596 : vec4<f32> = x_594.x_CascadeShadowSplitSpheres0;
  let x_599 : vec3<f32> = (x_586 + -(vec3<f32>(x_596.x, x_596.y, x_596.z)));
  let x_600 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
  let x_602 : vec3<f32> = vs_TEXCOORD7;
  let x_604 : vec4<f32> = x_594.x_CascadeShadowSplitSpheres1;
  let x_607 : vec3<f32> = (x_602 + -(vec3<f32>(x_604.x, x_604.y, x_604.z)));
  let x_608 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
  let x_610 : vec3<f32> = vs_TEXCOORD7;
  let x_613 : vec4<f32> = x_594.x_CascadeShadowSplitSpheres2;
  let x_616 : vec3<f32> = (x_610 + -(vec3<f32>(x_613.x, x_613.y, x_613.z)));
  let x_617 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_619 : vec3<f32> = vs_TEXCOORD7;
  let x_621 : vec4<f32> = x_594.x_CascadeShadowSplitSpheres3;
  let x_624 : vec3<f32> = (x_619 + -(vec3<f32>(x_621.x, x_621.y, x_621.z)));
  let x_625 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_627 : vec4<f32> = u_xlat3;
  let x_629 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_627.x, x_627.y, x_627.z), vec3<f32>(x_629.x, x_629.y, x_629.z));
  let x_633 : vec4<f32> = u_xlat4;
  let x_635 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_633.x, x_633.y, x_633.z), vec3<f32>(x_635.x, x_635.y, x_635.z));
  let x_639 : vec4<f32> = u_xlat6;
  let x_641 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_639.x, x_639.y, x_639.z), vec3<f32>(x_641.x, x_641.y, x_641.z));
  let x_645 : vec4<f32> = u_xlat7;
  let x_647 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_645.x, x_645.y, x_645.z), vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_653 : vec4<f32> = u_xlat3;
  let x_655 : vec4<f32> = x_594.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_653 < x_655);
  let x_658 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_658);
  let x_662 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_662);
  let x_666 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_666);
  let x_670 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_670);
  let x_674 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_674);
  let x_679 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_679);
  let x_683 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_683);
  let x_686 : vec4<f32> = u_xlat3;
  let x_688 : vec4<f32> = u_xlat4;
  let x_690 : vec3<f32> = (vec3<f32>(x_686.x, x_686.y, x_686.z) + vec3<f32>(x_688.y, x_688.z, x_688.w));
  let x_691 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_693 : vec4<f32> = u_xlat3;
  let x_696 : vec3<f32> = max(vec3<f32>(x_693.x, x_693.y, x_693.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_697 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_697.x, x_696.x, x_696.y, x_696.z);
  let x_699 : vec4<f32> = u_xlat4;
  u_xlat79 = dot(x_699, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_704 : f32 = u_xlat79;
  u_xlat79 = (-(x_704) + 4.0f);
  let x_709 : f32 = u_xlat79;
  u_xlatu79 = u32(x_709);
  let x_713 : u32 = u_xlatu79;
  u_xlati79 = (bitcast<i32>(x_713) << bitcast<u32>(2i));
  let x_716 : vec3<f32> = vs_TEXCOORD7;
  let x_718 : i32 = u_xlati79;
  let x_721 : i32 = u_xlati79;
  let x_725 : vec4<f32> = x_594.x_MainLightWorldToShadow[((x_718 + 1i) / 4i)][((x_721 + 1i) % 4i)];
  let x_727 : vec3<f32> = (vec3<f32>(x_716.y, x_716.y, x_716.y) * vec3<f32>(x_725.x, x_725.y, x_725.z));
  let x_728 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_727.x, x_727.y, x_727.z, x_728.w);
  let x_730 : i32 = u_xlati79;
  let x_732 : i32 = u_xlati79;
  let x_735 : vec4<f32> = x_594.x_MainLightWorldToShadow[(x_730 / 4i)][(x_732 % 4i)];
  let x_737 : vec3<f32> = vs_TEXCOORD7;
  let x_740 : vec4<f32> = u_xlat3;
  let x_742 : vec3<f32> = ((vec3<f32>(x_735.x, x_735.y, x_735.z) * vec3<f32>(x_737.x, x_737.x, x_737.x)) + vec3<f32>(x_740.x, x_740.y, x_740.z));
  let x_743 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
  let x_745 : i32 = u_xlati79;
  let x_748 : i32 = u_xlati79;
  let x_752 : vec4<f32> = x_594.x_MainLightWorldToShadow[((x_745 + 2i) / 4i)][((x_748 + 2i) % 4i)];
  let x_754 : vec3<f32> = vs_TEXCOORD7;
  let x_757 : vec4<f32> = u_xlat3;
  let x_759 : vec3<f32> = ((vec3<f32>(x_752.x, x_752.y, x_752.z) * vec3<f32>(x_754.z, x_754.z, x_754.z)) + vec3<f32>(x_757.x, x_757.y, x_757.z));
  let x_760 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
  let x_762 : vec4<f32> = u_xlat3;
  let x_764 : i32 = u_xlati79;
  let x_767 : i32 = u_xlati79;
  let x_771 : vec4<f32> = x_594.x_MainLightWorldToShadow[((x_764 + 3i) / 4i)][((x_767 + 3i) % 4i)];
  let x_773 : vec3<f32> = (vec3<f32>(x_762.x, x_762.y, x_762.z) + vec3<f32>(x_771.x, x_771.y, x_771.z));
  let x_774 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_773.x, x_773.y, x_773.z, x_774.w);
  let x_781 : vec4<f32> = vs_TEXCOORD0;
  let x_784 : f32 = x_111.x_GlobalMipBias.x;
  let x_785 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_781.z, x_781.w), x_784);
  u_xlat4 = x_785;
  let x_790 : vec4<f32> = vs_TEXCOORD0;
  let x_793 : f32 = x_111.x_GlobalMipBias.x;
  let x_794 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_790.z, x_790.w), x_793);
  let x_795 : vec3<f32> = vec3<f32>(x_794.x, x_794.y, x_794.z);
  let x_796 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_798 : vec4<f32> = u_xlat4;
  let x_802 : vec3<f32> = (vec3<f32>(x_798.x, x_798.y, x_798.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_803 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_802.x, x_802.y, x_802.z, x_803.w);
  let x_805 : vec4<f32> = u_xlat1;
  let x_807 : vec4<f32> = u_xlat4;
  u_xlat79 = dot(vec3<f32>(x_805.x, x_805.y, x_805.z), vec3<f32>(x_807.x, x_807.y, x_807.z));
  let x_810 : f32 = u_xlat79;
  u_xlat79 = (x_810 + 0.5f);
  let x_812 : f32 = u_xlat79;
  let x_814 : vec4<f32> = u_xlat6;
  let x_816 : vec3<f32> = (vec3<f32>(x_812, x_812, x_812) * vec3<f32>(x_814.x, x_814.y, x_814.z));
  let x_817 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_816.x, x_816.y, x_816.z, x_817.w);
  let x_820 : f32 = u_xlat4.w;
  u_xlat79 = max(x_820, 0.00009999999747378752f);
  let x_823 : vec4<f32> = u_xlat4;
  let x_825 : f32 = u_xlat79;
  let x_827 : vec3<f32> = (vec3<f32>(x_823.x, x_823.y, x_823.z) / vec3<f32>(x_825, x_825, x_825));
  let x_828 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
  let x_831 : f32 = u_xlat0.x;
  u_xlat79 = ((-(x_831) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_837 : f32 = u_xlat52;
  let x_838 : f32 = u_xlat79;
  u_xlat80 = (x_837 + -(x_838));
  let x_841 : f32 = u_xlat79;
  let x_843 : vec4<f32> = u_xlat5;
  let x_845 : vec3<f32> = (vec3<f32>(x_841, x_841, x_841) * vec3<f32>(x_843.x, x_843.y, x_843.z));
  let x_846 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_845.x, x_845.y, x_845.z, x_846.w);
  let x_848 : vec4<f32> = u_xlat5;
  let x_852 : vec3<f32> = (vec3<f32>(x_848.x, x_848.y, x_848.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_853 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
  let x_855 : vec3<f32> = u_xlat0;
  let x_857 : vec4<f32> = u_xlat5;
  let x_862 : vec3<f32> = ((vec3<f32>(x_855.x, x_855.x, x_855.x) * vec3<f32>(x_857.x, x_857.y, x_857.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_863 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_865 : f32 = u_xlat52;
  u_xlat0.x = (-(x_865) + 1.0f);
  let x_870 : f32 = u_xlat0.x;
  let x_872 : f32 = u_xlat0.x;
  u_xlat52 = (x_870 * x_872);
  let x_874 : f32 = u_xlat52;
  u_xlat52 = max(x_874, 0.0078125f);
  let x_877 : f32 = u_xlat52;
  let x_878 : f32 = u_xlat52;
  u_xlat79 = (x_877 * x_878);
  let x_880 : f32 = u_xlat80;
  u_xlat80 = (x_880 + 1.0f);
  let x_882 : f32 = u_xlat80;
  u_xlat80 = clamp(x_882, 0.0f, 1.0f);
  let x_885 : f32 = u_xlat52;
  u_xlat81 = ((x_885 * 4.0f) + 2.0f);
  let x_888 : f32 = u_xlat26;
  u_xlat26 = min(x_888, 1.0f);
  let x_892 : f32 = x_594.x_MainLightShadowParams.y;
  u_xlatb82 = (0.0f < x_892);
  let x_894 : bool = u_xlatb82;
  if (x_894) {
    let x_898 : f32 = x_594.x_MainLightShadowParams.y;
    u_xlatb82 = (x_898 == 1.0f);
    let x_900 : bool = u_xlatb82;
    if (x_900) {
      let x_903 : vec4<f32> = u_xlat3;
      let x_906 : vec4<f32> = x_594.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_903.x, x_903.y, x_903.x, x_903.y) + x_906);
      let x_910 : vec4<f32> = u_xlat7;
      let x_911 : vec2<f32> = vec2<f32>(x_910.x, x_910.y);
      let x_913 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_911.x, x_911.y, x_913);
      let x_925 : vec3<f32> = txVec0;
      let x_927 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_925.xy, x_925.z);
      u_xlat8.x = x_927;
      let x_930 : vec4<f32> = u_xlat7;
      let x_931 : vec2<f32> = vec2<f32>(x_930.z, x_930.w);
      let x_933 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_931.x, x_931.y, x_933);
      let x_940 : vec3<f32> = txVec1;
      let x_942 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_940.xy, x_940.z);
      u_xlat8.y = x_942;
      let x_944 : vec4<f32> = u_xlat3;
      let x_947 : vec4<f32> = x_594.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_944.x, x_944.y, x_944.x, x_944.y) + x_947);
      let x_950 : vec4<f32> = u_xlat7;
      let x_951 : vec2<f32> = vec2<f32>(x_950.x, x_950.y);
      let x_953 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_951.x, x_951.y, x_953);
      let x_960 : vec3<f32> = txVec2;
      let x_962 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_960.xy, x_960.z);
      u_xlat8.z = x_962;
      let x_965 : vec4<f32> = u_xlat7;
      let x_966 : vec2<f32> = vec2<f32>(x_965.z, x_965.w);
      let x_968 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_966.x, x_966.y, x_968);
      let x_975 : vec3<f32> = txVec3;
      let x_977 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_975.xy, x_975.z);
      u_xlat8.w = x_977;
      let x_980 : vec4<f32> = u_xlat8;
      u_xlat82 = dot(x_980, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_987 : f32 = x_594.x_MainLightShadowParams.y;
      u_xlatb83 = (x_987 == 2.0f);
      let x_989 : bool = u_xlatb83;
      if (x_989) {
        let x_992 : vec4<f32> = u_xlat3;
        let x_995 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_998 : vec2<f32> = ((vec2<f32>(x_992.x, x_992.y) * vec2<f32>(x_995.z, x_995.w)) + vec2<f32>(0.5f, 0.5f));
        let x_999 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_998.x, x_998.y, x_999.z, x_999.w);
        let x_1001 : vec4<f32> = u_xlat7;
        let x_1003 : vec2<f32> = floor(vec2<f32>(x_1001.x, x_1001.y));
        let x_1004 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1003.x, x_1003.y, x_1004.z, x_1004.w);
        let x_1008 : vec4<f32> = u_xlat3;
        let x_1011 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1014 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1008.x, x_1008.y) * vec2<f32>(x_1011.z, x_1011.w)) + -(vec2<f32>(x_1014.x, x_1014.y)));
        let x_1018 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_1018.x, x_1018.x, x_1018.y, x_1018.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1022 : vec4<f32> = u_xlat8;
        let x_1024 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1022.x, x_1022.x, x_1022.z, x_1022.z) * vec4<f32>(x_1024.x, x_1024.x, x_1024.z, x_1024.z));
        let x_1027 : vec4<f32> = u_xlat9;
        let x_1031 : vec2<f32> = (vec2<f32>(x_1027.y, x_1027.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1032 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1031.x, x_1032.y, x_1031.y, x_1032.w);
        let x_1034 : vec4<f32> = u_xlat9;
        let x_1037 : vec2<f32> = u_xlat59;
        let x_1039 : vec2<f32> = ((vec2<f32>(x_1034.x, x_1034.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1037));
        let x_1040 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1039.x, x_1039.y, x_1040.z, x_1040.w);
        let x_1043 : vec2<f32> = u_xlat59;
        u_xlat61 = (-(x_1043) + vec2<f32>(1.0f, 1.0f));
        let x_1047 : vec2<f32> = u_xlat59;
        let x_1049 : vec2<f32> = min(x_1047, vec2<f32>(0.0f, 0.0f));
        let x_1050 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1049.x, x_1049.y, x_1050.z, x_1050.w);
        let x_1052 : vec4<f32> = u_xlat10;
        let x_1055 : vec4<f32> = u_xlat10;
        let x_1058 : vec2<f32> = u_xlat61;
        let x_1059 : vec2<f32> = ((-(vec2<f32>(x_1052.x, x_1052.y)) * vec2<f32>(x_1055.x, x_1055.y)) + x_1058);
        let x_1060 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1059.x, x_1059.y, x_1060.z, x_1060.w);
        let x_1062 : vec2<f32> = u_xlat59;
        u_xlat59 = max(x_1062, vec2<f32>(0.0f, 0.0f));
        let x_1064 : vec2<f32> = u_xlat59;
        let x_1066 : vec2<f32> = u_xlat59;
        let x_1068 : vec4<f32> = u_xlat8;
        u_xlat59 = ((-(x_1064) * x_1066) + vec2<f32>(x_1068.y, x_1068.w));
        let x_1071 : vec4<f32> = u_xlat10;
        let x_1073 : vec2<f32> = (vec2<f32>(x_1071.x, x_1071.y) + vec2<f32>(1.0f, 1.0f));
        let x_1074 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1073.x, x_1073.y, x_1074.z, x_1074.w);
        let x_1076 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_1076 + vec2<f32>(1.0f, 1.0f));
        let x_1078 : vec4<f32> = u_xlat9;
        let x_1082 : vec2<f32> = (vec2<f32>(x_1078.x, x_1078.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1083 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1082.x, x_1082.y, x_1083.z, x_1083.w);
        let x_1085 : vec2<f32> = u_xlat61;
        let x_1086 : vec2<f32> = (x_1085 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1087 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1086.x, x_1086.y, x_1087.z, x_1087.w);
        let x_1089 : vec4<f32> = u_xlat10;
        let x_1091 : vec2<f32> = (vec2<f32>(x_1089.x, x_1089.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1092 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1091.x, x_1091.y, x_1092.z, x_1092.w);
        let x_1094 : vec2<f32> = u_xlat59;
        let x_1095 : vec2<f32> = (x_1094 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1096 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1095.x, x_1095.y, x_1096.z, x_1096.w);
        let x_1098 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_1098.y, x_1098.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1102 : f32 = u_xlat10.x;
        u_xlat11.z = x_1102;
        let x_1105 : f32 = u_xlat59.x;
        u_xlat11.w = x_1105;
        let x_1108 : f32 = u_xlat12.x;
        u_xlat9.z = x_1108;
        let x_1111 : f32 = u_xlat8.x;
        u_xlat9.w = x_1111;
        let x_1113 : vec4<f32> = u_xlat9;
        let x_1115 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1113.z, x_1113.w, x_1113.x, x_1113.z) + vec4<f32>(x_1115.z, x_1115.w, x_1115.x, x_1115.z));
        let x_1119 : f32 = u_xlat11.y;
        u_xlat10.z = x_1119;
        let x_1122 : f32 = u_xlat59.y;
        u_xlat10.w = x_1122;
        let x_1125 : f32 = u_xlat9.y;
        u_xlat12.z = x_1125;
        let x_1128 : f32 = u_xlat8.z;
        u_xlat12.w = x_1128;
        let x_1130 : vec4<f32> = u_xlat10;
        let x_1132 : vec4<f32> = u_xlat12;
        let x_1134 : vec3<f32> = (vec3<f32>(x_1130.z, x_1130.y, x_1130.w) + vec3<f32>(x_1132.z, x_1132.y, x_1132.w));
        let x_1135 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1134.x, x_1134.y, x_1134.z, x_1135.w);
        let x_1137 : vec4<f32> = u_xlat9;
        let x_1139 : vec4<f32> = u_xlat13;
        let x_1141 : vec3<f32> = (vec3<f32>(x_1137.x, x_1137.z, x_1137.w) / vec3<f32>(x_1139.z, x_1139.w, x_1139.y));
        let x_1142 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1141.x, x_1141.y, x_1141.z, x_1142.w);
        let x_1144 : vec4<f32> = u_xlat9;
        let x_1149 : vec3<f32> = (vec3<f32>(x_1144.x, x_1144.y, x_1144.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1150 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1149.x, x_1149.y, x_1149.z, x_1150.w);
        let x_1152 : vec4<f32> = u_xlat12;
        let x_1154 : vec4<f32> = u_xlat8;
        let x_1156 : vec3<f32> = (vec3<f32>(x_1152.z, x_1152.y, x_1152.w) / vec3<f32>(x_1154.x, x_1154.y, x_1154.z));
        let x_1157 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1156.x, x_1156.y, x_1156.z, x_1157.w);
        let x_1159 : vec4<f32> = u_xlat10;
        let x_1161 : vec3<f32> = (vec3<f32>(x_1159.x, x_1159.y, x_1159.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1162 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1161.x, x_1161.y, x_1161.z, x_1162.w);
        let x_1164 : vec4<f32> = u_xlat9;
        let x_1167 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1169 : vec3<f32> = (vec3<f32>(x_1164.y, x_1164.x, x_1164.z) * vec3<f32>(x_1167.x, x_1167.x, x_1167.x));
        let x_1170 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1169.x, x_1169.y, x_1169.z, x_1170.w);
        let x_1172 : vec4<f32> = u_xlat10;
        let x_1175 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1177 : vec3<f32> = (vec3<f32>(x_1172.x, x_1172.y, x_1172.z) * vec3<f32>(x_1175.y, x_1175.y, x_1175.y));
        let x_1178 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1177.x, x_1177.y, x_1177.z, x_1178.w);
        let x_1181 : f32 = u_xlat10.x;
        u_xlat9.w = x_1181;
        let x_1183 : vec4<f32> = u_xlat7;
        let x_1186 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1189 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1183.x, x_1183.y, x_1183.x, x_1183.y) * vec4<f32>(x_1186.x, x_1186.y, x_1186.x, x_1186.y)) + vec4<f32>(x_1189.y, x_1189.w, x_1189.x, x_1189.w));
        let x_1192 : vec4<f32> = u_xlat7;
        let x_1195 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1198 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1192.x, x_1192.y) * vec2<f32>(x_1195.x, x_1195.y)) + vec2<f32>(x_1198.z, x_1198.w));
        let x_1202 : f32 = u_xlat9.y;
        u_xlat10.w = x_1202;
        let x_1204 : vec4<f32> = u_xlat10;
        let x_1205 : vec2<f32> = vec2<f32>(x_1204.y, x_1204.z);
        let x_1206 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1206.x, x_1205.x, x_1206.z, x_1205.y);
        let x_1208 : vec4<f32> = u_xlat7;
        let x_1211 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1214 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1208.x, x_1208.y, x_1208.x, x_1208.y) * vec4<f32>(x_1211.x, x_1211.y, x_1211.x, x_1211.y)) + vec4<f32>(x_1214.x, x_1214.y, x_1214.z, x_1214.y));
        let x_1217 : vec4<f32> = u_xlat7;
        let x_1220 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1223 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1217.x, x_1217.y, x_1217.x, x_1217.y) * vec4<f32>(x_1220.x, x_1220.y, x_1220.x, x_1220.y)) + vec4<f32>(x_1223.w, x_1223.y, x_1223.w, x_1223.z));
        let x_1226 : vec4<f32> = u_xlat7;
        let x_1229 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1232 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1226.x, x_1226.y, x_1226.x, x_1226.y) * vec4<f32>(x_1229.x, x_1229.y, x_1229.x, x_1229.y)) + vec4<f32>(x_1232.x, x_1232.w, x_1232.z, x_1232.w));
        let x_1236 : vec4<f32> = u_xlat8;
        let x_1238 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1236.x, x_1236.x, x_1236.x, x_1236.y) * vec4<f32>(x_1238.z, x_1238.w, x_1238.y, x_1238.z));
        let x_1242 : vec4<f32> = u_xlat8;
        let x_1244 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1242.y, x_1242.y, x_1242.z, x_1242.z) * x_1244);
        let x_1248 : f32 = u_xlat8.z;
        let x_1250 : f32 = u_xlat13.y;
        u_xlat83 = (x_1248 * x_1250);
        let x_1253 : vec4<f32> = u_xlat11;
        let x_1254 : vec2<f32> = vec2<f32>(x_1253.x, x_1253.y);
        let x_1256 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1254.x, x_1254.y, x_1256);
        let x_1264 : vec3<f32> = txVec4;
        let x_1266 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1264.xy, x_1264.z);
        u_xlat84 = x_1266;
        let x_1268 : vec4<f32> = u_xlat11;
        let x_1269 : vec2<f32> = vec2<f32>(x_1268.z, x_1268.w);
        let x_1271 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1269.x, x_1269.y, x_1271);
        let x_1278 : vec3<f32> = txVec5;
        let x_1280 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1278.xy, x_1278.z);
        u_xlat7.x = x_1280;
        let x_1283 : f32 = u_xlat7.x;
        let x_1285 : f32 = u_xlat14.y;
        u_xlat7.x = (x_1283 * x_1285);
        let x_1289 : f32 = u_xlat14.x;
        let x_1290 : f32 = u_xlat84;
        let x_1293 : f32 = u_xlat7.x;
        u_xlat84 = ((x_1289 * x_1290) + x_1293);
        let x_1296 : vec2<f32> = u_xlat59;
        let x_1298 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1296.x, x_1296.y, x_1298);
        let x_1305 : vec3<f32> = txVec6;
        let x_1307 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1305.xy, x_1305.z);
        u_xlat7.x = x_1307;
        let x_1310 : f32 = u_xlat14.z;
        let x_1312 : f32 = u_xlat7.x;
        let x_1314 : f32 = u_xlat84;
        u_xlat84 = ((x_1310 * x_1312) + x_1314);
        let x_1317 : vec4<f32> = u_xlat10;
        let x_1318 : vec2<f32> = vec2<f32>(x_1317.x, x_1317.y);
        let x_1320 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1318.x, x_1318.y, x_1320);
        let x_1327 : vec3<f32> = txVec7;
        let x_1329 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1327.xy, x_1327.z);
        u_xlat7.x = x_1329;
        let x_1332 : f32 = u_xlat14.w;
        let x_1334 : f32 = u_xlat7.x;
        let x_1336 : f32 = u_xlat84;
        u_xlat84 = ((x_1332 * x_1334) + x_1336);
        let x_1339 : vec4<f32> = u_xlat12;
        let x_1340 : vec2<f32> = vec2<f32>(x_1339.x, x_1339.y);
        let x_1342 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1340.x, x_1340.y, x_1342);
        let x_1349 : vec3<f32> = txVec8;
        let x_1351 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1349.xy, x_1349.z);
        u_xlat7.x = x_1351;
        let x_1354 : f32 = u_xlat15.x;
        let x_1356 : f32 = u_xlat7.x;
        let x_1358 : f32 = u_xlat84;
        u_xlat84 = ((x_1354 * x_1356) + x_1358);
        let x_1361 : vec4<f32> = u_xlat12;
        let x_1362 : vec2<f32> = vec2<f32>(x_1361.z, x_1361.w);
        let x_1364 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1362.x, x_1362.y, x_1364);
        let x_1371 : vec3<f32> = txVec9;
        let x_1373 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1371.xy, x_1371.z);
        u_xlat7.x = x_1373;
        let x_1376 : f32 = u_xlat15.y;
        let x_1378 : f32 = u_xlat7.x;
        let x_1380 : f32 = u_xlat84;
        u_xlat84 = ((x_1376 * x_1378) + x_1380);
        let x_1383 : vec4<f32> = u_xlat10;
        let x_1384 : vec2<f32> = vec2<f32>(x_1383.z, x_1383.w);
        let x_1386 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1384.x, x_1384.y, x_1386);
        let x_1393 : vec3<f32> = txVec10;
        let x_1395 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1393.xy, x_1393.z);
        u_xlat7.x = x_1395;
        let x_1398 : f32 = u_xlat15.z;
        let x_1400 : f32 = u_xlat7.x;
        let x_1402 : f32 = u_xlat84;
        u_xlat84 = ((x_1398 * x_1400) + x_1402);
        let x_1405 : vec4<f32> = u_xlat9;
        let x_1406 : vec2<f32> = vec2<f32>(x_1405.x, x_1405.y);
        let x_1408 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1406.x, x_1406.y, x_1408);
        let x_1415 : vec3<f32> = txVec11;
        let x_1417 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1415.xy, x_1415.z);
        u_xlat7.x = x_1417;
        let x_1420 : f32 = u_xlat15.w;
        let x_1422 : f32 = u_xlat7.x;
        let x_1424 : f32 = u_xlat84;
        u_xlat84 = ((x_1420 * x_1422) + x_1424);
        let x_1427 : vec4<f32> = u_xlat9;
        let x_1428 : vec2<f32> = vec2<f32>(x_1427.z, x_1427.w);
        let x_1430 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1428.x, x_1428.y, x_1430);
        let x_1437 : vec3<f32> = txVec12;
        let x_1439 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1437.xy, x_1437.z);
        u_xlat7.x = x_1439;
        let x_1441 : f32 = u_xlat83;
        let x_1443 : f32 = u_xlat7.x;
        let x_1445 : f32 = u_xlat84;
        u_xlat82 = ((x_1441 * x_1443) + x_1445);
      } else {
        let x_1448 : vec4<f32> = u_xlat3;
        let x_1451 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1454 : vec2<f32> = ((vec2<f32>(x_1448.x, x_1448.y) * vec2<f32>(x_1451.z, x_1451.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1455 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1454.x, x_1454.y, x_1455.z, x_1455.w);
        let x_1457 : vec4<f32> = u_xlat7;
        let x_1459 : vec2<f32> = floor(vec2<f32>(x_1457.x, x_1457.y));
        let x_1460 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1459.x, x_1459.y, x_1460.z, x_1460.w);
        let x_1462 : vec4<f32> = u_xlat3;
        let x_1465 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1468 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1462.x, x_1462.y) * vec2<f32>(x_1465.z, x_1465.w)) + -(vec2<f32>(x_1468.x, x_1468.y)));
        let x_1472 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_1472.x, x_1472.x, x_1472.y, x_1472.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1475 : vec4<f32> = u_xlat8;
        let x_1477 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1475.x, x_1475.x, x_1475.z, x_1475.z) * vec4<f32>(x_1477.x, x_1477.x, x_1477.z, x_1477.z));
        let x_1480 : vec4<f32> = u_xlat9;
        let x_1484 : vec2<f32> = (vec2<f32>(x_1480.y, x_1480.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1485 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1485.x, x_1484.x, x_1485.z, x_1484.y);
        let x_1487 : vec4<f32> = u_xlat9;
        let x_1490 : vec2<f32> = u_xlat59;
        let x_1492 : vec2<f32> = ((vec2<f32>(x_1487.x, x_1487.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1490));
        let x_1493 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1492.x, x_1493.y, x_1492.y, x_1493.w);
        let x_1495 : vec2<f32> = u_xlat59;
        let x_1497 : vec2<f32> = (-(x_1495) + vec2<f32>(1.0f, 1.0f));
        let x_1498 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1497.x, x_1497.y, x_1498.z, x_1498.w);
        let x_1500 : vec2<f32> = u_xlat59;
        u_xlat61 = min(x_1500, vec2<f32>(0.0f, 0.0f));
        let x_1502 : vec2<f32> = u_xlat61;
        let x_1504 : vec2<f32> = u_xlat61;
        let x_1506 : vec4<f32> = u_xlat9;
        let x_1508 : vec2<f32> = ((-(x_1502) * x_1504) + vec2<f32>(x_1506.x, x_1506.y));
        let x_1509 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1508.x, x_1508.y, x_1509.z, x_1509.w);
        let x_1511 : vec2<f32> = u_xlat59;
        u_xlat61 = max(x_1511, vec2<f32>(0.0f, 0.0f));
        let x_1514 : vec2<f32> = u_xlat61;
        let x_1516 : vec2<f32> = u_xlat61;
        let x_1518 : vec4<f32> = u_xlat8;
        let x_1520 : vec2<f32> = ((-(x_1514) * x_1516) + vec2<f32>(x_1518.y, x_1518.w));
        let x_1521 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1520.x, x_1521.y, x_1520.y);
        let x_1523 : vec4<f32> = u_xlat9;
        let x_1526 : vec2<f32> = (vec2<f32>(x_1523.x, x_1523.y) + vec2<f32>(2.0f, 2.0f));
        let x_1527 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1526.x, x_1526.y, x_1527.z, x_1527.w);
        let x_1529 : vec3<f32> = u_xlat34;
        let x_1531 : vec2<f32> = (vec2<f32>(x_1529.x, x_1529.z) + vec2<f32>(2.0f, 2.0f));
        let x_1532 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1532.x, x_1531.x, x_1532.z, x_1531.y);
        let x_1535 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1535 * 0.08163200318813323975f);
        let x_1539 : vec4<f32> = u_xlat8;
        let x_1542 : vec3<f32> = (vec3<f32>(x_1539.z, x_1539.x, x_1539.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1543 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1542.x, x_1542.y, x_1542.z, x_1543.w);
        let x_1545 : vec4<f32> = u_xlat9;
        let x_1548 : vec2<f32> = (vec2<f32>(x_1545.x, x_1545.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1549 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1548.x, x_1548.y, x_1549.z, x_1549.w);
        let x_1552 : f32 = u_xlat12.y;
        u_xlat11.x = x_1552;
        let x_1554 : vec2<f32> = u_xlat59;
        let x_1561 : vec2<f32> = ((vec2<f32>(x_1554.x, x_1554.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1562 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1562.x, x_1561.x, x_1562.z, x_1561.y);
        let x_1564 : vec2<f32> = u_xlat59;
        let x_1568 : vec2<f32> = ((vec2<f32>(x_1564.x, x_1564.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1569 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1568.x, x_1569.y, x_1568.y, x_1569.w);
        let x_1572 : f32 = u_xlat8.x;
        u_xlat9.y = x_1572;
        let x_1575 : f32 = u_xlat10.y;
        u_xlat9.w = x_1575;
        let x_1577 : vec4<f32> = u_xlat9;
        let x_1578 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1577 + x_1578);
        let x_1580 : vec2<f32> = u_xlat59;
        let x_1583 : vec2<f32> = ((vec2<f32>(x_1580.y, x_1580.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1584 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1584.x, x_1583.x, x_1584.z, x_1583.y);
        let x_1586 : vec2<f32> = u_xlat59;
        let x_1589 : vec2<f32> = ((vec2<f32>(x_1586.y, x_1586.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1590 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1589.x, x_1590.y, x_1589.y, x_1590.w);
        let x_1593 : f32 = u_xlat8.y;
        u_xlat10.y = x_1593;
        let x_1595 : vec4<f32> = u_xlat10;
        let x_1596 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1595 + x_1596);
        let x_1598 : vec4<f32> = u_xlat9;
        let x_1599 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1598 / x_1599);
        let x_1601 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1601 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1607 : vec4<f32> = u_xlat10;
        let x_1608 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1607 / x_1608);
        let x_1610 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1610 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1612 : vec4<f32> = u_xlat9;
        let x_1615 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1612.w, x_1612.x, x_1612.y, x_1612.z) * vec4<f32>(x_1615.x, x_1615.x, x_1615.x, x_1615.x));
        let x_1618 : vec4<f32> = u_xlat10;
        let x_1621 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1618.x, x_1618.w, x_1618.y, x_1618.z) * vec4<f32>(x_1621.y, x_1621.y, x_1621.y, x_1621.y));
        let x_1624 : vec4<f32> = u_xlat9;
        let x_1625 : vec3<f32> = vec3<f32>(x_1624.y, x_1624.z, x_1624.w);
        let x_1626 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1625.x, x_1626.y, x_1625.y, x_1625.z);
        let x_1629 : f32 = u_xlat10.x;
        u_xlat12.y = x_1629;
        let x_1631 : vec4<f32> = u_xlat7;
        let x_1634 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1637 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1631.x, x_1631.y, x_1631.x, x_1631.y) * vec4<f32>(x_1634.x, x_1634.y, x_1634.x, x_1634.y)) + vec4<f32>(x_1637.x, x_1637.y, x_1637.z, x_1637.y));
        let x_1640 : vec4<f32> = u_xlat7;
        let x_1643 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1646 : vec4<f32> = u_xlat12;
        u_xlat59 = ((vec2<f32>(x_1640.x, x_1640.y) * vec2<f32>(x_1643.x, x_1643.y)) + vec2<f32>(x_1646.w, x_1646.y));
        let x_1650 : f32 = u_xlat12.y;
        u_xlat9.y = x_1650;
        let x_1653 : f32 = u_xlat10.z;
        u_xlat12.y = x_1653;
        let x_1655 : vec4<f32> = u_xlat7;
        let x_1658 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1661 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1655.x, x_1655.y, x_1655.x, x_1655.y) * vec4<f32>(x_1658.x, x_1658.y, x_1658.x, x_1658.y)) + vec4<f32>(x_1661.x, x_1661.y, x_1661.z, x_1661.y));
        let x_1664 : vec4<f32> = u_xlat7;
        let x_1667 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1670 : vec4<f32> = u_xlat12;
        let x_1672 : vec2<f32> = ((vec2<f32>(x_1664.x, x_1664.y) * vec2<f32>(x_1667.x, x_1667.y)) + vec2<f32>(x_1670.w, x_1670.y));
        let x_1673 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1672.x, x_1672.y, x_1673.z, x_1673.w);
        let x_1676 : f32 = u_xlat12.y;
        u_xlat9.z = x_1676;
        let x_1679 : vec4<f32> = u_xlat7;
        let x_1682 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1685 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1679.x, x_1679.y, x_1679.x, x_1679.y) * vec4<f32>(x_1682.x, x_1682.y, x_1682.x, x_1682.y)) + vec4<f32>(x_1685.x, x_1685.y, x_1685.x, x_1685.z));
        let x_1689 : f32 = u_xlat10.w;
        u_xlat12.y = x_1689;
        let x_1692 : vec4<f32> = u_xlat7;
        let x_1695 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1698 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1692.x, x_1692.y, x_1692.x, x_1692.y) * vec4<f32>(x_1695.x, x_1695.y, x_1695.x, x_1695.y)) + vec4<f32>(x_1698.x, x_1698.y, x_1698.z, x_1698.y));
        let x_1702 : vec4<f32> = u_xlat7;
        let x_1705 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1708 : vec4<f32> = u_xlat12;
        u_xlat35 = ((vec2<f32>(x_1702.x, x_1702.y) * vec2<f32>(x_1705.x, x_1705.y)) + vec2<f32>(x_1708.w, x_1708.y));
        let x_1712 : f32 = u_xlat12.y;
        u_xlat9.w = x_1712;
        let x_1715 : vec4<f32> = u_xlat7;
        let x_1718 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1721 : vec4<f32> = u_xlat9;
        u_xlat67 = ((vec2<f32>(x_1715.x, x_1715.y) * vec2<f32>(x_1718.x, x_1718.y)) + vec2<f32>(x_1721.x, x_1721.w));
        let x_1724 : vec4<f32> = u_xlat12;
        let x_1725 : vec3<f32> = vec3<f32>(x_1724.x, x_1724.z, x_1724.w);
        let x_1726 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1725.x, x_1726.y, x_1725.y, x_1725.z);
        let x_1728 : vec4<f32> = u_xlat7;
        let x_1731 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1734 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1728.x, x_1728.y, x_1728.x, x_1728.y) * vec4<f32>(x_1731.x, x_1731.y, x_1731.x, x_1731.y)) + vec4<f32>(x_1734.x, x_1734.y, x_1734.z, x_1734.y));
        let x_1738 : vec4<f32> = u_xlat7;
        let x_1741 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1744 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_1738.x, x_1738.y) * vec2<f32>(x_1741.x, x_1741.y)) + vec2<f32>(x_1744.w, x_1744.y));
        let x_1748 : f32 = u_xlat9.x;
        u_xlat10.x = x_1748;
        let x_1750 : vec4<f32> = u_xlat7;
        let x_1753 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1756 : vec4<f32> = u_xlat10;
        let x_1758 : vec2<f32> = ((vec2<f32>(x_1750.x, x_1750.y) * vec2<f32>(x_1753.x, x_1753.y)) + vec2<f32>(x_1756.x, x_1756.y));
        let x_1759 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1758.x, x_1758.y, x_1759.z, x_1759.w);
        let x_1762 : vec4<f32> = u_xlat8;
        let x_1764 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1762.x, x_1762.x, x_1762.x, x_1762.x) * x_1764);
        let x_1767 : vec4<f32> = u_xlat8;
        let x_1769 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1767.y, x_1767.y, x_1767.y, x_1767.y) * x_1769);
        let x_1772 : vec4<f32> = u_xlat8;
        let x_1774 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1772.z, x_1772.z, x_1772.z, x_1772.z) * x_1774);
        let x_1776 : vec4<f32> = u_xlat8;
        let x_1778 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1776.w, x_1776.w, x_1776.w, x_1776.w) * x_1778);
        let x_1781 : vec4<f32> = u_xlat13;
        let x_1782 : vec2<f32> = vec2<f32>(x_1781.x, x_1781.y);
        let x_1784 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1782.x, x_1782.y, x_1784);
        let x_1791 : vec3<f32> = txVec13;
        let x_1793 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1791.xy, x_1791.z);
        u_xlat83 = x_1793;
        let x_1795 : vec4<f32> = u_xlat13;
        let x_1796 : vec2<f32> = vec2<f32>(x_1795.z, x_1795.w);
        let x_1798 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1796.x, x_1796.y, x_1798);
        let x_1805 : vec3<f32> = txVec14;
        let x_1807 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1805.xy, x_1805.z);
        u_xlat84 = x_1807;
        let x_1808 : f32 = u_xlat84;
        let x_1810 : f32 = u_xlat18.y;
        u_xlat84 = (x_1808 * x_1810);
        let x_1813 : f32 = u_xlat18.x;
        let x_1814 : f32 = u_xlat83;
        let x_1816 : f32 = u_xlat84;
        u_xlat83 = ((x_1813 * x_1814) + x_1816);
        let x_1819 : vec2<f32> = u_xlat59;
        let x_1821 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1819.x, x_1819.y, x_1821);
        let x_1828 : vec3<f32> = txVec15;
        let x_1830 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1828.xy, x_1828.z);
        u_xlat84 = x_1830;
        let x_1832 : f32 = u_xlat18.z;
        let x_1833 : f32 = u_xlat84;
        let x_1835 : f32 = u_xlat83;
        u_xlat83 = ((x_1832 * x_1833) + x_1835);
        let x_1838 : vec4<f32> = u_xlat16;
        let x_1839 : vec2<f32> = vec2<f32>(x_1838.x, x_1838.y);
        let x_1841 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1839.x, x_1839.y, x_1841);
        let x_1848 : vec3<f32> = txVec16;
        let x_1850 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1848.xy, x_1848.z);
        u_xlat84 = x_1850;
        let x_1852 : f32 = u_xlat18.w;
        let x_1853 : f32 = u_xlat84;
        let x_1855 : f32 = u_xlat83;
        u_xlat83 = ((x_1852 * x_1853) + x_1855);
        let x_1858 : vec4<f32> = u_xlat14;
        let x_1859 : vec2<f32> = vec2<f32>(x_1858.x, x_1858.y);
        let x_1861 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1859.x, x_1859.y, x_1861);
        let x_1868 : vec3<f32> = txVec17;
        let x_1870 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1868.xy, x_1868.z);
        u_xlat84 = x_1870;
        let x_1872 : f32 = u_xlat19.x;
        let x_1873 : f32 = u_xlat84;
        let x_1875 : f32 = u_xlat83;
        u_xlat83 = ((x_1872 * x_1873) + x_1875);
        let x_1878 : vec4<f32> = u_xlat14;
        let x_1879 : vec2<f32> = vec2<f32>(x_1878.z, x_1878.w);
        let x_1881 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1879.x, x_1879.y, x_1881);
        let x_1888 : vec3<f32> = txVec18;
        let x_1890 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1888.xy, x_1888.z);
        u_xlat84 = x_1890;
        let x_1892 : f32 = u_xlat19.y;
        let x_1893 : f32 = u_xlat84;
        let x_1895 : f32 = u_xlat83;
        u_xlat83 = ((x_1892 * x_1893) + x_1895);
        let x_1898 : vec4<f32> = u_xlat15;
        let x_1899 : vec2<f32> = vec2<f32>(x_1898.x, x_1898.y);
        let x_1901 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1899.x, x_1899.y, x_1901);
        let x_1908 : vec3<f32> = txVec19;
        let x_1910 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1908.xy, x_1908.z);
        u_xlat84 = x_1910;
        let x_1912 : f32 = u_xlat19.z;
        let x_1913 : f32 = u_xlat84;
        let x_1915 : f32 = u_xlat83;
        u_xlat83 = ((x_1912 * x_1913) + x_1915);
        let x_1918 : vec4<f32> = u_xlat16;
        let x_1919 : vec2<f32> = vec2<f32>(x_1918.z, x_1918.w);
        let x_1921 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1919.x, x_1919.y, x_1921);
        let x_1928 : vec3<f32> = txVec20;
        let x_1930 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1928.xy, x_1928.z);
        u_xlat84 = x_1930;
        let x_1932 : f32 = u_xlat19.w;
        let x_1933 : f32 = u_xlat84;
        let x_1935 : f32 = u_xlat83;
        u_xlat83 = ((x_1932 * x_1933) + x_1935);
        let x_1938 : vec4<f32> = u_xlat17;
        let x_1939 : vec2<f32> = vec2<f32>(x_1938.x, x_1938.y);
        let x_1941 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1939.x, x_1939.y, x_1941);
        let x_1948 : vec3<f32> = txVec21;
        let x_1950 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1948.xy, x_1948.z);
        u_xlat84 = x_1950;
        let x_1952 : f32 = u_xlat20.x;
        let x_1953 : f32 = u_xlat84;
        let x_1955 : f32 = u_xlat83;
        u_xlat83 = ((x_1952 * x_1953) + x_1955);
        let x_1958 : vec4<f32> = u_xlat17;
        let x_1959 : vec2<f32> = vec2<f32>(x_1958.z, x_1958.w);
        let x_1961 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1959.x, x_1959.y, x_1961);
        let x_1968 : vec3<f32> = txVec22;
        let x_1970 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1968.xy, x_1968.z);
        u_xlat84 = x_1970;
        let x_1972 : f32 = u_xlat20.y;
        let x_1973 : f32 = u_xlat84;
        let x_1975 : f32 = u_xlat83;
        u_xlat83 = ((x_1972 * x_1973) + x_1975);
        let x_1978 : vec2<f32> = u_xlat35;
        let x_1980 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1978.x, x_1978.y, x_1980);
        let x_1987 : vec3<f32> = txVec23;
        let x_1989 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1987.xy, x_1987.z);
        u_xlat84 = x_1989;
        let x_1991 : f32 = u_xlat20.z;
        let x_1992 : f32 = u_xlat84;
        let x_1994 : f32 = u_xlat83;
        u_xlat83 = ((x_1991 * x_1992) + x_1994);
        let x_1997 : vec2<f32> = u_xlat67;
        let x_1999 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1997.x, x_1997.y, x_1999);
        let x_2006 : vec3<f32> = txVec24;
        let x_2008 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2006.xy, x_2006.z);
        u_xlat84 = x_2008;
        let x_2010 : f32 = u_xlat20.w;
        let x_2011 : f32 = u_xlat84;
        let x_2013 : f32 = u_xlat83;
        u_xlat83 = ((x_2010 * x_2011) + x_2013);
        let x_2016 : vec4<f32> = u_xlat12;
        let x_2017 : vec2<f32> = vec2<f32>(x_2016.x, x_2016.y);
        let x_2019 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2017.x, x_2017.y, x_2019);
        let x_2026 : vec3<f32> = txVec25;
        let x_2028 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2026.xy, x_2026.z);
        u_xlat84 = x_2028;
        let x_2030 : f32 = u_xlat8.x;
        let x_2031 : f32 = u_xlat84;
        let x_2033 : f32 = u_xlat83;
        u_xlat83 = ((x_2030 * x_2031) + x_2033);
        let x_2036 : vec4<f32> = u_xlat12;
        let x_2037 : vec2<f32> = vec2<f32>(x_2036.z, x_2036.w);
        let x_2039 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2037.x, x_2037.y, x_2039);
        let x_2046 : vec3<f32> = txVec26;
        let x_2048 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2046.xy, x_2046.z);
        u_xlat84 = x_2048;
        let x_2050 : f32 = u_xlat8.y;
        let x_2051 : f32 = u_xlat84;
        let x_2053 : f32 = u_xlat83;
        u_xlat83 = ((x_2050 * x_2051) + x_2053);
        let x_2056 : vec2<f32> = u_xlat62;
        let x_2058 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2056.x, x_2056.y, x_2058);
        let x_2065 : vec3<f32> = txVec27;
        let x_2067 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2065.xy, x_2065.z);
        u_xlat84 = x_2067;
        let x_2069 : f32 = u_xlat8.z;
        let x_2070 : f32 = u_xlat84;
        let x_2072 : f32 = u_xlat83;
        u_xlat83 = ((x_2069 * x_2070) + x_2072);
        let x_2075 : vec4<f32> = u_xlat7;
        let x_2076 : vec2<f32> = vec2<f32>(x_2075.x, x_2075.y);
        let x_2078 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2076.x, x_2076.y, x_2078);
        let x_2085 : vec3<f32> = txVec28;
        let x_2087 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2085.xy, x_2085.z);
        u_xlat84 = x_2087;
        let x_2089 : f32 = u_xlat8.w;
        let x_2090 : f32 = u_xlat84;
        let x_2092 : f32 = u_xlat83;
        u_xlat82 = ((x_2089 * x_2090) + x_2092);
      }
    }
  } else {
    let x_2096 : vec4<f32> = u_xlat3;
    let x_2097 : vec2<f32> = vec2<f32>(x_2096.x, x_2096.y);
    let x_2099 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2097.x, x_2097.y, x_2099);
    let x_2106 : vec3<f32> = txVec29;
    let x_2108 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2106.xy, x_2106.z);
    u_xlat82 = x_2108;
  }
  let x_2110 : f32 = x_594.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2110) + 1.0f);
  let x_2114 : f32 = u_xlat82;
  let x_2116 : f32 = x_594.x_MainLightShadowParams.x;
  let x_2119 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2114 * x_2116) + x_2119);
  let x_2124 : f32 = u_xlat3.z;
  u_xlatb29 = (0.0f >= x_2124);
  let x_2128 : f32 = u_xlat3.z;
  u_xlatb55 = (x_2128 >= 1.0f);
  let x_2130 : bool = u_xlatb55;
  let x_2131 : bool = u_xlatb29;
  u_xlatb29 = (x_2130 | x_2131);
  let x_2133 : bool = u_xlatb29;
  if (x_2133) {
    x_2134 = 1.0f;
  } else {
    let x_2139 : f32 = u_xlat3.x;
    x_2134 = x_2139;
  }
  let x_2140 : f32 = x_2134;
  u_xlat3.x = x_2140;
  let x_2142 : vec3<f32> = vs_TEXCOORD7;
  let x_2144 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_2146 : vec3<f32> = (x_2142 + -(x_2144));
  let x_2147 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2146.x, x_2146.y, x_2146.z, x_2147.w);
  let x_2150 : vec4<f32> = u_xlat7;
  let x_2152 : vec4<f32> = u_xlat7;
  u_xlat29 = dot(vec3<f32>(x_2150.x, x_2150.y, x_2150.z), vec3<f32>(x_2152.x, x_2152.y, x_2152.z));
  let x_2156 : f32 = u_xlat29;
  let x_2158 : f32 = x_594.x_MainLightShadowParams.z;
  let x_2161 : f32 = x_594.x_MainLightShadowParams.w;
  u_xlat55 = ((x_2156 * x_2158) + x_2161);
  let x_2163 : f32 = u_xlat55;
  u_xlat55 = clamp(x_2163, 0.0f, 1.0f);
  let x_2166 : f32 = u_xlat3.x;
  u_xlat82 = (-(x_2166) + 1.0f);
  let x_2169 : f32 = u_xlat55;
  let x_2170 : f32 = u_xlat82;
  let x_2173 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2169 * x_2170) + x_2173);
  let x_2183 : f32 = x_2181.x_MainLightCookieTextureFormat;
  u_xlatb55 = !((x_2183 == -1.0f));
  let x_2185 : bool = u_xlatb55;
  if (x_2185) {
    let x_2188 : vec3<f32> = vs_TEXCOORD7;
    let x_2191 : vec4<f32> = x_2181.x_MainLightWorldToLight[1i];
    let x_2193 : vec2<f32> = (vec2<f32>(x_2188.y, x_2188.y) * vec2<f32>(x_2191.x, x_2191.y));
    let x_2194 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2193.x, x_2193.y, x_2194.z, x_2194.w);
    let x_2197 : vec4<f32> = x_2181.x_MainLightWorldToLight[0i];
    let x_2199 : vec3<f32> = vs_TEXCOORD7;
    let x_2202 : vec4<f32> = u_xlat7;
    let x_2204 : vec2<f32> = ((vec2<f32>(x_2197.x, x_2197.y) * vec2<f32>(x_2199.x, x_2199.x)) + vec2<f32>(x_2202.x, x_2202.y));
    let x_2205 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2204.x, x_2204.y, x_2205.z, x_2205.w);
    let x_2208 : vec4<f32> = x_2181.x_MainLightWorldToLight[2i];
    let x_2210 : vec3<f32> = vs_TEXCOORD7;
    let x_2213 : vec4<f32> = u_xlat7;
    let x_2215 : vec2<f32> = ((vec2<f32>(x_2208.x, x_2208.y) * vec2<f32>(x_2210.z, x_2210.z)) + vec2<f32>(x_2213.x, x_2213.y));
    let x_2216 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2215.x, x_2215.y, x_2216.z, x_2216.w);
    let x_2218 : vec4<f32> = u_xlat7;
    let x_2221 : vec4<f32> = x_2181.x_MainLightWorldToLight[3i];
    let x_2223 : vec2<f32> = (vec2<f32>(x_2218.x, x_2218.y) + vec2<f32>(x_2221.x, x_2221.y));
    let x_2224 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2223.x, x_2223.y, x_2224.z, x_2224.w);
    let x_2226 : vec4<f32> = u_xlat7;
    let x_2229 : vec2<f32> = ((vec2<f32>(x_2226.x, x_2226.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2230 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2229.x, x_2229.y, x_2230.z, x_2230.w);
    let x_2237 : vec4<f32> = u_xlat7;
    let x_2240 : f32 = x_111.x_GlobalMipBias.x;
    let x_2241 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2237.x, x_2237.y), x_2240);
    u_xlat7 = x_2241;
    let x_2246 : f32 = x_2181.x_MainLightCookieTextureFormat;
    let x_2248 : f32 = x_2181.x_MainLightCookieTextureFormat;
    let x_2250 : f32 = x_2181.x_MainLightCookieTextureFormat;
    let x_2252 : f32 = x_2181.x_MainLightCookieTextureFormat;
    let x_2253 : vec4<f32> = vec4<f32>(x_2246, x_2248, x_2250, x_2252);
    let x_2260 : vec4<bool> = (vec4<f32>(x_2253.x, x_2253.y, x_2253.z, x_2253.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_2260.x, x_2260.y);
    let x_2263 : bool = u_xlatb8.y;
    if (x_2263) {
      let x_2268 : f32 = u_xlat7.w;
      x_2264 = x_2268;
    } else {
      let x_2271 : f32 = u_xlat7.x;
      x_2264 = x_2271;
    }
    let x_2272 : f32 = x_2264;
    u_xlat55 = x_2272;
    let x_2274 : bool = u_xlatb8.x;
    if (x_2274) {
      let x_2278 : vec4<f32> = u_xlat7;
      x_2275 = vec3<f32>(x_2278.x, x_2278.y, x_2278.z);
    } else {
      let x_2281 : f32 = u_xlat55;
      x_2275 = vec3<f32>(x_2281, x_2281, x_2281);
    }
    let x_2283 : vec3<f32> = x_2275;
    let x_2284 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2283.x, x_2283.y, x_2283.z, x_2284.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_2290 : vec4<f32> = u_xlat7;
  let x_2293 : vec4<f32> = x_111.x_MainLightColor;
  let x_2295 : vec3<f32> = (vec3<f32>(x_2290.x, x_2290.y, x_2290.z) * vec3<f32>(x_2293.x, x_2293.y, x_2293.z));
  let x_2296 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2295.x, x_2295.y, x_2295.z, x_2296.w);
  let x_2298 : vec3<f32> = u_xlat2;
  let x_2300 : vec4<f32> = u_xlat1;
  u_xlat55 = dot(-(x_2298), vec3<f32>(x_2300.x, x_2300.y, x_2300.z));
  let x_2303 : f32 = u_xlat55;
  let x_2304 : f32 = u_xlat55;
  u_xlat55 = (x_2303 + x_2304);
  let x_2306 : vec4<f32> = u_xlat1;
  let x_2308 : f32 = u_xlat55;
  let x_2312 : vec3<f32> = u_xlat2;
  let x_2314 : vec3<f32> = ((vec3<f32>(x_2306.x, x_2306.y, x_2306.z) * -(vec3<f32>(x_2308, x_2308, x_2308))) + -(x_2312));
  let x_2315 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2314.x, x_2314.y, x_2314.z, x_2315.w);
  let x_2317 : vec4<f32> = u_xlat1;
  let x_2319 : vec3<f32> = u_xlat2;
  u_xlat55 = dot(vec3<f32>(x_2317.x, x_2317.y, x_2317.z), x_2319);
  let x_2321 : f32 = u_xlat55;
  u_xlat55 = clamp(x_2321, 0.0f, 1.0f);
  let x_2323 : f32 = u_xlat55;
  u_xlat55 = (-(x_2323) + 1.0f);
  let x_2326 : f32 = u_xlat55;
  let x_2327 : f32 = u_xlat55;
  u_xlat55 = (x_2326 * x_2327);
  let x_2329 : f32 = u_xlat55;
  let x_2330 : f32 = u_xlat55;
  u_xlat55 = (x_2329 * x_2330);
  let x_2333 : f32 = u_xlat0.x;
  u_xlat82 = ((-(x_2333) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2340 : f32 = u_xlat0.x;
  let x_2341 : f32 = u_xlat82;
  u_xlat0.x = (x_2340 * x_2341);
  let x_2345 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2345 * 6.0f);
  let x_2357 : vec4<f32> = u_xlat8;
  let x_2360 : f32 = u_xlat0.x;
  let x_2361 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2357.x, x_2357.y, x_2357.z), x_2360);
  u_xlat8 = x_2361;
  let x_2363 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2363 + -1.0f);
  let x_2371 : f32 = x_2369.unity_SpecCube0_HDR.w;
  let x_2373 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2371 * x_2373) + 1.0f);
  let x_2378 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2378, 0.0f);
  let x_2382 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2382);
  let x_2386 : f32 = u_xlat0.x;
  let x_2388 : f32 = x_2369.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2386 * x_2388);
  let x_2392 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2392);
  let x_2396 : f32 = u_xlat0.x;
  let x_2398 : f32 = x_2369.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2396 * x_2398);
  let x_2401 : vec4<f32> = u_xlat8;
  let x_2403 : vec3<f32> = u_xlat0;
  let x_2405 : vec3<f32> = (vec3<f32>(x_2401.x, x_2401.y, x_2401.z) * vec3<f32>(x_2403.x, x_2403.x, x_2403.x));
  let x_2406 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2405.x, x_2405.y, x_2405.z, x_2406.w);
  let x_2408 : f32 = u_xlat52;
  let x_2410 : f32 = u_xlat52;
  let x_2414 : vec2<f32> = ((vec2<f32>(x_2408, x_2408) * vec2<f32>(x_2410, x_2410)) + vec2<f32>(-1.0f, 1.0f));
  let x_2415 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2414.x, x_2415.y, x_2414.y);
  let x_2418 : f32 = u_xlat0.z;
  u_xlat52 = (1.0f / x_2418);
  let x_2420 : vec4<f32> = u_xlat5;
  let x_2423 : f32 = u_xlat80;
  let x_2425 : vec3<f32> = (-(vec3<f32>(x_2420.x, x_2420.y, x_2420.z)) + vec3<f32>(x_2423, x_2423, x_2423));
  let x_2426 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2425.x, x_2425.y, x_2425.z, x_2426.w);
  let x_2428 : f32 = u_xlat55;
  let x_2430 : vec4<f32> = u_xlat9;
  let x_2433 : vec4<f32> = u_xlat5;
  let x_2435 : vec3<f32> = ((vec3<f32>(x_2428, x_2428, x_2428) * vec3<f32>(x_2430.x, x_2430.y, x_2430.z)) + vec3<f32>(x_2433.x, x_2433.y, x_2433.z));
  let x_2436 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2435.x, x_2435.y, x_2435.z, x_2436.w);
  let x_2438 : f32 = u_xlat52;
  let x_2440 : vec4<f32> = u_xlat9;
  let x_2442 : vec3<f32> = (vec3<f32>(x_2438, x_2438, x_2438) * vec3<f32>(x_2440.x, x_2440.y, x_2440.z));
  let x_2443 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2442.x, x_2442.y, x_2442.z, x_2443.w);
  let x_2445 : vec4<f32> = u_xlat8;
  let x_2447 : vec4<f32> = u_xlat9;
  let x_2449 : vec3<f32> = (vec3<f32>(x_2445.x, x_2445.y, x_2445.z) * vec3<f32>(x_2447.x, x_2447.y, x_2447.z));
  let x_2450 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2449.x, x_2449.y, x_2449.z, x_2450.w);
  let x_2452 : vec4<f32> = u_xlat4;
  let x_2454 : vec4<f32> = u_xlat6;
  let x_2457 : vec4<f32> = u_xlat8;
  let x_2459 : vec3<f32> = ((vec3<f32>(x_2452.x, x_2452.y, x_2452.z) * vec3<f32>(x_2454.x, x_2454.y, x_2454.z)) + vec3<f32>(x_2457.x, x_2457.y, x_2457.z));
  let x_2460 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2459.x, x_2459.y, x_2459.z, x_2460.w);
  let x_2463 : f32 = u_xlat3.x;
  let x_2465 : f32 = x_2369.unity_LightData.z;
  u_xlat52 = (x_2463 * x_2465);
  let x_2467 : vec4<f32> = u_xlat1;
  let x_2470 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat80 = dot(vec3<f32>(x_2467.x, x_2467.y, x_2467.z), vec3<f32>(x_2470.x, x_2470.y, x_2470.z));
  let x_2473 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2473, 0.0f, 1.0f);
  let x_2475 : f32 = u_xlat52;
  let x_2476 : f32 = u_xlat80;
  u_xlat52 = (x_2475 * x_2476);
  let x_2478 : f32 = u_xlat52;
  let x_2480 : vec4<f32> = u_xlat7;
  let x_2482 : vec3<f32> = (vec3<f32>(x_2478, x_2478, x_2478) * vec3<f32>(x_2480.x, x_2480.y, x_2480.z));
  let x_2483 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2482.x, x_2482.y, x_2482.z, x_2483.w);
  let x_2485 : vec3<f32> = u_xlat2;
  let x_2487 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2489 : vec3<f32> = (x_2485 + vec3<f32>(x_2487.x, x_2487.y, x_2487.z));
  let x_2490 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2489.x, x_2489.y, x_2489.z, x_2490.w);
  let x_2492 : vec4<f32> = u_xlat8;
  let x_2494 : vec4<f32> = u_xlat8;
  u_xlat52 = dot(vec3<f32>(x_2492.x, x_2492.y, x_2492.z), vec3<f32>(x_2494.x, x_2494.y, x_2494.z));
  let x_2497 : f32 = u_xlat52;
  u_xlat52 = max(x_2497, 1.17549435e-38f);
  let x_2500 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_2500);
  let x_2502 : f32 = u_xlat52;
  let x_2504 : vec4<f32> = u_xlat8;
  let x_2506 : vec3<f32> = (vec3<f32>(x_2502, x_2502, x_2502) * vec3<f32>(x_2504.x, x_2504.y, x_2504.z));
  let x_2507 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2506.x, x_2506.y, x_2506.z, x_2507.w);
  let x_2509 : vec4<f32> = u_xlat1;
  let x_2511 : vec4<f32> = u_xlat8;
  u_xlat52 = dot(vec3<f32>(x_2509.x, x_2509.y, x_2509.z), vec3<f32>(x_2511.x, x_2511.y, x_2511.z));
  let x_2514 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2514, 0.0f, 1.0f);
  let x_2517 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2519 : vec4<f32> = u_xlat8;
  u_xlat80 = dot(vec3<f32>(x_2517.x, x_2517.y, x_2517.z), vec3<f32>(x_2519.x, x_2519.y, x_2519.z));
  let x_2522 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2522, 0.0f, 1.0f);
  let x_2524 : f32 = u_xlat52;
  let x_2525 : f32 = u_xlat52;
  u_xlat52 = (x_2524 * x_2525);
  let x_2527 : f32 = u_xlat52;
  let x_2529 : f32 = u_xlat0.x;
  u_xlat52 = ((x_2527 * x_2529) + 1.00001001358032226562f);
  let x_2533 : f32 = u_xlat80;
  let x_2534 : f32 = u_xlat80;
  u_xlat80 = (x_2533 * x_2534);
  let x_2536 : f32 = u_xlat52;
  let x_2537 : f32 = u_xlat52;
  u_xlat52 = (x_2536 * x_2537);
  let x_2539 : f32 = u_xlat80;
  u_xlat80 = max(x_2539, 0.10000000149011611938f);
  let x_2542 : f32 = u_xlat52;
  let x_2543 : f32 = u_xlat80;
  u_xlat52 = (x_2542 * x_2543);
  let x_2545 : f32 = u_xlat81;
  let x_2546 : f32 = u_xlat52;
  u_xlat52 = (x_2545 * x_2546);
  let x_2548 : f32 = u_xlat79;
  let x_2549 : f32 = u_xlat52;
  u_xlat52 = (x_2548 / x_2549);
  let x_2551 : vec4<f32> = u_xlat5;
  let x_2553 : f32 = u_xlat52;
  let x_2556 : vec4<f32> = u_xlat6;
  let x_2558 : vec3<f32> = ((vec3<f32>(x_2551.x, x_2551.y, x_2551.z) * vec3<f32>(x_2553, x_2553, x_2553)) + vec3<f32>(x_2556.x, x_2556.y, x_2556.z));
  let x_2559 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2558.x, x_2558.y, x_2558.z, x_2559.w);
  let x_2561 : vec4<f32> = u_xlat7;
  let x_2563 : vec4<f32> = u_xlat8;
  let x_2565 : vec3<f32> = (vec3<f32>(x_2561.x, x_2561.y, x_2561.z) * vec3<f32>(x_2563.x, x_2563.y, x_2563.z));
  let x_2566 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2565.x, x_2565.y, x_2565.z, x_2566.w);
  let x_2569 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_2571 : f32 = x_2369.unity_LightData.y;
  u_xlat52 = min(x_2569, x_2571);
  let x_2574 : f32 = u_xlat52;
  u_xlatu52 = bitcast<u32>(i32(x_2574));
  let x_2577 : f32 = u_xlat29;
  let x_2579 : f32 = x_594.x_AdditionalShadowFadeParams.x;
  let x_2582 : f32 = x_594.x_AdditionalShadowFadeParams.y;
  u_xlat80 = ((x_2577 * x_2579) + x_2582);
  let x_2584 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2584, 0.0f, 1.0f);
  let x_2587 : f32 = x_2181.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2589 : f32 = x_2181.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2591 : f32 = x_2181.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2593 : f32 = x_2181.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2594 : vec4<f32> = vec4<f32>(x_2587, x_2589, x_2591, x_2593);
  let x_2600 : vec4<bool> = (vec4<f32>(x_2594.x, x_2594.y, x_2594.z, x_2594.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_2601 : vec2<bool> = vec2<bool>(x_2600.x, x_2600.y);
  let x_2602 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_2601.x, x_2601.y, x_2602.z, x_2602.w);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2614 : u32 = u_xlatu_loop_1;
    let x_2615 : u32 = u_xlatu52;
    if ((x_2614 < x_2615)) {
    } else {
      break;
    }
    let x_2618 : u32 = u_xlatu_loop_1;
    u_xlatu82 = (x_2618 >> 2u);
    let x_2621 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_2621 & 3u));
    let x_2624 : u32 = u_xlatu82;
    let x_2627 : vec4<f32> = x_2369.unity_LightIndices[bitcast<i32>(x_2624)];
    let x_2637 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2642 : vec4<u32> = indexable[x_2637];
    u_xlat82 = dot(x_2627, bitcast<vec4<f32>>(x_2642));
    let x_2646 : f32 = u_xlat82;
    u_xlati82 = i32(x_2646);
    let x_2648 : vec3<f32> = vs_TEXCOORD7;
    let x_2659 : i32 = u_xlati82;
    let x_2661 : vec4<f32> = x_2658.x_AdditionalLightsPosition[x_2659];
    let x_2664 : i32 = u_xlati82;
    let x_2666 : vec4<f32> = x_2658.x_AdditionalLightsPosition[x_2664];
    let x_2668 : vec3<f32> = ((-(x_2648) * vec3<f32>(x_2661.w, x_2661.w, x_2661.w)) + vec3<f32>(x_2666.x, x_2666.y, x_2666.z));
    let x_2669 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2668.x, x_2668.y, x_2668.z, x_2669.w);
    let x_2671 : vec4<f32> = u_xlat9;
    let x_2673 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_2671.x, x_2671.y, x_2671.z), vec3<f32>(x_2673.x, x_2673.y, x_2673.z));
    let x_2676 : f32 = u_xlat83;
    u_xlat83 = max(x_2676, 0.00006103515625f);
    let x_2678 : f32 = u_xlat83;
    u_xlat84 = inverseSqrt(x_2678);
    let x_2680 : f32 = u_xlat84;
    let x_2682 : vec4<f32> = u_xlat9;
    let x_2684 : vec3<f32> = (vec3<f32>(x_2680, x_2680, x_2680) * vec3<f32>(x_2682.x, x_2682.y, x_2682.z));
    let x_2685 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2684.x, x_2684.y, x_2684.z, x_2685.w);
    let x_2688 : f32 = u_xlat83;
    u_xlat85 = (1.0f / x_2688);
    let x_2690 : f32 = u_xlat83;
    let x_2691 : i32 = u_xlati82;
    let x_2693 : f32 = x_2658.x_AdditionalLightsAttenuation[x_2691].x;
    u_xlat83 = (x_2690 * x_2693);
    let x_2695 : f32 = u_xlat83;
    let x_2697 : f32 = u_xlat83;
    u_xlat83 = ((-(x_2695) * x_2697) + 1.0f);
    let x_2700 : f32 = u_xlat83;
    u_xlat83 = max(x_2700, 0.0f);
    let x_2702 : f32 = u_xlat83;
    let x_2703 : f32 = u_xlat83;
    u_xlat83 = (x_2702 * x_2703);
    let x_2705 : f32 = u_xlat83;
    let x_2706 : f32 = u_xlat85;
    u_xlat83 = (x_2705 * x_2706);
    let x_2708 : i32 = u_xlati82;
    let x_2710 : vec4<f32> = x_2658.x_AdditionalLightsSpotDir[x_2708];
    let x_2712 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_2710.x, x_2710.y, x_2710.z), vec3<f32>(x_2712.x, x_2712.y, x_2712.z));
    let x_2715 : f32 = u_xlat85;
    let x_2716 : i32 = u_xlati82;
    let x_2718 : f32 = x_2658.x_AdditionalLightsAttenuation[x_2716].z;
    let x_2720 : i32 = u_xlati82;
    let x_2722 : f32 = x_2658.x_AdditionalLightsAttenuation[x_2720].w;
    u_xlat85 = ((x_2715 * x_2718) + x_2722);
    let x_2724 : f32 = u_xlat85;
    u_xlat85 = clamp(x_2724, 0.0f, 1.0f);
    let x_2726 : f32 = u_xlat85;
    let x_2727 : f32 = u_xlat85;
    u_xlat85 = (x_2726 * x_2727);
    let x_2729 : f32 = u_xlat83;
    let x_2730 : f32 = u_xlat85;
    u_xlat83 = (x_2729 * x_2730);
    let x_2733 : i32 = u_xlati82;
    let x_2735 : f32 = x_594.x_AdditionalShadowParams[x_2733].w;
    u_xlati85 = i32(x_2735);
    let x_2738 : i32 = u_xlati85;
    u_xlatb86 = (x_2738 >= 0i);
    let x_2740 : bool = u_xlatb86;
    if (x_2740) {
      let x_2744 : i32 = u_xlati82;
      let x_2746 : f32 = x_594.x_AdditionalShadowParams[x_2744].z;
      u_xlatb86 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2746, x_2746, x_2746, x_2746))));
      let x_2750 : bool = u_xlatb86;
      if (x_2750) {
        let x_2754 : vec4<f32> = u_xlat10;
        let x_2757 : vec4<f32> = u_xlat10;
        let x_2760 : vec4<bool> = (abs(vec4<f32>(x_2754.z, x_2754.z, x_2754.y, x_2754.z)) >= abs(vec4<f32>(x_2757.x, x_2757.y, x_2757.x, x_2757.x)));
        let x_2762 : vec3<bool> = vec3<bool>(x_2760.x, x_2760.y, x_2760.z);
        let x_2763 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2762.x, x_2762.y, x_2762.z, x_2763.w);
        let x_2766 : bool = u_xlatb11.y;
        let x_2768 : bool = u_xlatb11.x;
        u_xlatb86 = (x_2766 & x_2768);
        let x_2770 : vec4<f32> = u_xlat10;
        let x_2773 : vec4<bool> = (-(vec4<f32>(x_2770.z, x_2770.y, x_2770.z, x_2770.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2774 : vec3<bool> = vec3<bool>(x_2773.x, x_2773.y, x_2773.w);
        let x_2775 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2774.x, x_2774.y, x_2775.z, x_2774.z);
        let x_2778 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2778);
        let x_2783 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2783);
        let x_2788 : bool = u_xlatb11.w;
        u_xlat87 = select(0.0f, 1.0f, x_2788);
        let x_2791 : bool = u_xlatb11.z;
        if (x_2791) {
          let x_2796 : f32 = u_xlat11.y;
          x_2792 = x_2796;
        } else {
          let x_2798 : f32 = u_xlat87;
          x_2792 = x_2798;
        }
        let x_2799 : f32 = x_2792;
        u_xlat87 = x_2799;
        let x_2801 : bool = u_xlatb86;
        if (x_2801) {
          let x_2806 : f32 = u_xlat11.x;
          x_2802 = x_2806;
        } else {
          let x_2808 : f32 = u_xlat87;
          x_2802 = x_2808;
        }
        let x_2809 : f32 = x_2802;
        u_xlat86 = x_2809;
        let x_2810 : i32 = u_xlati82;
        let x_2812 : f32 = x_594.x_AdditionalShadowParams[x_2810].w;
        u_xlat87 = trunc(x_2812);
        let x_2814 : f32 = u_xlat86;
        let x_2815 : f32 = u_xlat87;
        u_xlat86 = (x_2814 + x_2815);
        let x_2817 : f32 = u_xlat86;
        u_xlati85 = i32(x_2817);
      }
      let x_2819 : i32 = u_xlati85;
      u_xlati85 = (x_2819 << bitcast<u32>(2i));
      let x_2821 : vec3<f32> = vs_TEXCOORD7;
      let x_2823 : i32 = u_xlati85;
      let x_2826 : i32 = u_xlati85;
      let x_2830 : vec4<f32> = x_594.x_AdditionalLightsWorldToShadow[((x_2823 + 1i) / 4i)][((x_2826 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2821.y, x_2821.y, x_2821.y, x_2821.y) * x_2830);
      let x_2832 : i32 = u_xlati85;
      let x_2834 : i32 = u_xlati85;
      let x_2837 : vec4<f32> = x_594.x_AdditionalLightsWorldToShadow[(x_2832 / 4i)][(x_2834 % 4i)];
      let x_2838 : vec3<f32> = vs_TEXCOORD7;
      let x_2841 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2837 * vec4<f32>(x_2838.x, x_2838.x, x_2838.x, x_2838.x)) + x_2841);
      let x_2843 : i32 = u_xlati85;
      let x_2846 : i32 = u_xlati85;
      let x_2850 : vec4<f32> = x_594.x_AdditionalLightsWorldToShadow[((x_2843 + 2i) / 4i)][((x_2846 + 2i) % 4i)];
      let x_2851 : vec3<f32> = vs_TEXCOORD7;
      let x_2854 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2850 * vec4<f32>(x_2851.z, x_2851.z, x_2851.z, x_2851.z)) + x_2854);
      let x_2856 : vec4<f32> = u_xlat11;
      let x_2857 : i32 = u_xlati85;
      let x_2860 : i32 = u_xlati85;
      let x_2864 : vec4<f32> = x_594.x_AdditionalLightsWorldToShadow[((x_2857 + 3i) / 4i)][((x_2860 + 3i) % 4i)];
      u_xlat11 = (x_2856 + x_2864);
      let x_2866 : vec4<f32> = u_xlat11;
      let x_2868 : vec4<f32> = u_xlat11;
      let x_2870 : vec3<f32> = (vec3<f32>(x_2866.x, x_2866.y, x_2866.z) / vec3<f32>(x_2868.w, x_2868.w, x_2868.w));
      let x_2871 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2870.x, x_2870.y, x_2870.z, x_2871.w);
      let x_2874 : i32 = u_xlati82;
      let x_2876 : f32 = x_594.x_AdditionalShadowParams[x_2874].y;
      u_xlatb85 = (0.0f < x_2876);
      let x_2878 : bool = u_xlatb85;
      if (x_2878) {
        let x_2881 : i32 = u_xlati82;
        let x_2883 : f32 = x_594.x_AdditionalShadowParams[x_2881].y;
        u_xlatb85 = (1.0f == x_2883);
        let x_2885 : bool = u_xlatb85;
        if (x_2885) {
          let x_2888 : vec4<f32> = u_xlat11;
          let x_2891 : vec4<f32> = x_594.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2888.x, x_2888.y, x_2888.x, x_2888.y) + x_2891);
          let x_2894 : vec4<f32> = u_xlat12;
          let x_2895 : vec2<f32> = vec2<f32>(x_2894.x, x_2894.y);
          let x_2897 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2895.x, x_2895.y, x_2897);
          let x_2905 : vec3<f32> = txVec30;
          let x_2907 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2905.xy, x_2905.z);
          u_xlat13.x = x_2907;
          let x_2910 : vec4<f32> = u_xlat12;
          let x_2911 : vec2<f32> = vec2<f32>(x_2910.z, x_2910.w);
          let x_2913 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2911.x, x_2911.y, x_2913);
          let x_2920 : vec3<f32> = txVec31;
          let x_2922 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2920.xy, x_2920.z);
          u_xlat13.y = x_2922;
          let x_2924 : vec4<f32> = u_xlat11;
          let x_2927 : vec4<f32> = x_594.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2924.x, x_2924.y, x_2924.x, x_2924.y) + x_2927);
          let x_2930 : vec4<f32> = u_xlat12;
          let x_2931 : vec2<f32> = vec2<f32>(x_2930.x, x_2930.y);
          let x_2933 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2931.x, x_2931.y, x_2933);
          let x_2940 : vec3<f32> = txVec32;
          let x_2942 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2940.xy, x_2940.z);
          u_xlat13.z = x_2942;
          let x_2945 : vec4<f32> = u_xlat12;
          let x_2946 : vec2<f32> = vec2<f32>(x_2945.z, x_2945.w);
          let x_2948 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2946.x, x_2946.y, x_2948);
          let x_2955 : vec3<f32> = txVec33;
          let x_2957 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2955.xy, x_2955.z);
          u_xlat13.w = x_2957;
          let x_2959 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_2959, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2962 : i32 = u_xlati82;
          let x_2964 : f32 = x_594.x_AdditionalShadowParams[x_2962].y;
          u_xlatb86 = (2.0f == x_2964);
          let x_2966 : bool = u_xlatb86;
          if (x_2966) {
            let x_2969 : vec4<f32> = u_xlat11;
            let x_2972 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_2975 : vec2<f32> = ((vec2<f32>(x_2969.x, x_2969.y) * vec2<f32>(x_2972.z, x_2972.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2976 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2975.x, x_2975.y, x_2976.z, x_2976.w);
            let x_2978 : vec4<f32> = u_xlat12;
            let x_2980 : vec2<f32> = floor(vec2<f32>(x_2978.x, x_2978.y));
            let x_2981 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2980.x, x_2980.y, x_2981.z, x_2981.w);
            let x_2984 : vec4<f32> = u_xlat11;
            let x_2987 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_2990 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2984.x, x_2984.y) * vec2<f32>(x_2987.z, x_2987.w)) + -(vec2<f32>(x_2990.x, x_2990.y)));
            let x_2994 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2994.x, x_2994.x, x_2994.y, x_2994.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2997 : vec4<f32> = u_xlat13;
            let x_2999 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2997.x, x_2997.x, x_2997.z, x_2997.z) * vec4<f32>(x_2999.x, x_2999.x, x_2999.z, x_2999.z));
            let x_3002 : vec4<f32> = u_xlat14;
            let x_3004 : vec2<f32> = (vec2<f32>(x_3002.y, x_3002.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3005 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3004.x, x_3005.y, x_3004.y, x_3005.w);
            let x_3007 : vec4<f32> = u_xlat14;
            let x_3010 : vec2<f32> = u_xlat64;
            let x_3012 : vec2<f32> = ((vec2<f32>(x_3007.x, x_3007.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3010));
            let x_3013 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3012.x, x_3012.y, x_3013.z, x_3013.w);
            let x_3016 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3016) + vec2<f32>(1.0f, 1.0f));
            let x_3019 : vec2<f32> = u_xlat64;
            let x_3020 : vec2<f32> = min(x_3019, vec2<f32>(0.0f, 0.0f));
            let x_3021 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3020.x, x_3020.y, x_3021.z, x_3021.w);
            let x_3023 : vec4<f32> = u_xlat15;
            let x_3026 : vec4<f32> = u_xlat15;
            let x_3029 : vec2<f32> = u_xlat66;
            let x_3030 : vec2<f32> = ((-(vec2<f32>(x_3023.x, x_3023.y)) * vec2<f32>(x_3026.x, x_3026.y)) + x_3029);
            let x_3031 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3030.x, x_3030.y, x_3031.z, x_3031.w);
            let x_3033 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3033, vec2<f32>(0.0f, 0.0f));
            let x_3035 : vec2<f32> = u_xlat64;
            let x_3037 : vec2<f32> = u_xlat64;
            let x_3039 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3035) * x_3037) + vec2<f32>(x_3039.y, x_3039.w));
            let x_3042 : vec4<f32> = u_xlat15;
            let x_3044 : vec2<f32> = (vec2<f32>(x_3042.x, x_3042.y) + vec2<f32>(1.0f, 1.0f));
            let x_3045 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3044.x, x_3044.y, x_3045.z, x_3045.w);
            let x_3047 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3047 + vec2<f32>(1.0f, 1.0f));
            let x_3049 : vec4<f32> = u_xlat14;
            let x_3051 : vec2<f32> = (vec2<f32>(x_3049.x, x_3049.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3052 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3051.x, x_3051.y, x_3052.z, x_3052.w);
            let x_3054 : vec2<f32> = u_xlat66;
            let x_3055 : vec2<f32> = (x_3054 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3056 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3055.x, x_3055.y, x_3056.z, x_3056.w);
            let x_3058 : vec4<f32> = u_xlat15;
            let x_3060 : vec2<f32> = (vec2<f32>(x_3058.x, x_3058.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3061 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3060.x, x_3060.y, x_3061.z, x_3061.w);
            let x_3063 : vec2<f32> = u_xlat64;
            let x_3064 : vec2<f32> = (x_3063 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3065 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3064.x, x_3064.y, x_3065.z, x_3065.w);
            let x_3067 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3067.y, x_3067.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3071 : f32 = u_xlat15.x;
            u_xlat16.z = x_3071;
            let x_3074 : f32 = u_xlat64.x;
            u_xlat16.w = x_3074;
            let x_3077 : f32 = u_xlat17.x;
            u_xlat14.z = x_3077;
            let x_3080 : f32 = u_xlat13.x;
            u_xlat14.w = x_3080;
            let x_3082 : vec4<f32> = u_xlat14;
            let x_3084 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3082.z, x_3082.w, x_3082.x, x_3082.z) + vec4<f32>(x_3084.z, x_3084.w, x_3084.x, x_3084.z));
            let x_3088 : f32 = u_xlat16.y;
            u_xlat15.z = x_3088;
            let x_3091 : f32 = u_xlat64.y;
            u_xlat15.w = x_3091;
            let x_3094 : f32 = u_xlat14.y;
            u_xlat17.z = x_3094;
            let x_3097 : f32 = u_xlat13.z;
            u_xlat17.w = x_3097;
            let x_3099 : vec4<f32> = u_xlat15;
            let x_3101 : vec4<f32> = u_xlat17;
            let x_3103 : vec3<f32> = (vec3<f32>(x_3099.z, x_3099.y, x_3099.w) + vec3<f32>(x_3101.z, x_3101.y, x_3101.w));
            let x_3104 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3103.x, x_3103.y, x_3103.z, x_3104.w);
            let x_3106 : vec4<f32> = u_xlat14;
            let x_3108 : vec4<f32> = u_xlat18;
            let x_3110 : vec3<f32> = (vec3<f32>(x_3106.x, x_3106.z, x_3106.w) / vec3<f32>(x_3108.z, x_3108.w, x_3108.y));
            let x_3111 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3110.x, x_3110.y, x_3110.z, x_3111.w);
            let x_3113 : vec4<f32> = u_xlat14;
            let x_3115 : vec3<f32> = (vec3<f32>(x_3113.x, x_3113.y, x_3113.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3116 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3115.x, x_3115.y, x_3115.z, x_3116.w);
            let x_3118 : vec4<f32> = u_xlat17;
            let x_3120 : vec4<f32> = u_xlat13;
            let x_3122 : vec3<f32> = (vec3<f32>(x_3118.z, x_3118.y, x_3118.w) / vec3<f32>(x_3120.x, x_3120.y, x_3120.z));
            let x_3123 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3122.x, x_3122.y, x_3122.z, x_3123.w);
            let x_3125 : vec4<f32> = u_xlat15;
            let x_3127 : vec3<f32> = (vec3<f32>(x_3125.x, x_3125.y, x_3125.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3128 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3127.x, x_3127.y, x_3127.z, x_3128.w);
            let x_3130 : vec4<f32> = u_xlat14;
            let x_3133 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3135 : vec3<f32> = (vec3<f32>(x_3130.y, x_3130.x, x_3130.z) * vec3<f32>(x_3133.x, x_3133.x, x_3133.x));
            let x_3136 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3135.x, x_3135.y, x_3135.z, x_3136.w);
            let x_3138 : vec4<f32> = u_xlat15;
            let x_3141 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3143 : vec3<f32> = (vec3<f32>(x_3138.x, x_3138.y, x_3138.z) * vec3<f32>(x_3141.y, x_3141.y, x_3141.y));
            let x_3144 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3143.x, x_3143.y, x_3143.z, x_3144.w);
            let x_3147 : f32 = u_xlat15.x;
            u_xlat14.w = x_3147;
            let x_3149 : vec4<f32> = u_xlat12;
            let x_3152 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3155 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3149.x, x_3149.y, x_3149.x, x_3149.y) * vec4<f32>(x_3152.x, x_3152.y, x_3152.x, x_3152.y)) + vec4<f32>(x_3155.y, x_3155.w, x_3155.x, x_3155.w));
            let x_3158 : vec4<f32> = u_xlat12;
            let x_3161 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3164 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3158.x, x_3158.y) * vec2<f32>(x_3161.x, x_3161.y)) + vec2<f32>(x_3164.z, x_3164.w));
            let x_3168 : f32 = u_xlat14.y;
            u_xlat15.w = x_3168;
            let x_3170 : vec4<f32> = u_xlat15;
            let x_3171 : vec2<f32> = vec2<f32>(x_3170.y, x_3170.z);
            let x_3172 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3172.x, x_3171.x, x_3172.z, x_3171.y);
            let x_3174 : vec4<f32> = u_xlat12;
            let x_3177 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3180 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3174.x, x_3174.y, x_3174.x, x_3174.y) * vec4<f32>(x_3177.x, x_3177.y, x_3177.x, x_3177.y)) + vec4<f32>(x_3180.x, x_3180.y, x_3180.z, x_3180.y));
            let x_3183 : vec4<f32> = u_xlat12;
            let x_3186 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3189 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3183.x, x_3183.y, x_3183.x, x_3183.y) * vec4<f32>(x_3186.x, x_3186.y, x_3186.x, x_3186.y)) + vec4<f32>(x_3189.w, x_3189.y, x_3189.w, x_3189.z));
            let x_3192 : vec4<f32> = u_xlat12;
            let x_3195 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3198 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3192.x, x_3192.y, x_3192.x, x_3192.y) * vec4<f32>(x_3195.x, x_3195.y, x_3195.x, x_3195.y)) + vec4<f32>(x_3198.x, x_3198.w, x_3198.z, x_3198.w));
            let x_3201 : vec4<f32> = u_xlat13;
            let x_3203 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3201.x, x_3201.x, x_3201.x, x_3201.y) * vec4<f32>(x_3203.z, x_3203.w, x_3203.y, x_3203.z));
            let x_3206 : vec4<f32> = u_xlat13;
            let x_3208 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3206.y, x_3206.y, x_3206.z, x_3206.z) * x_3208);
            let x_3211 : f32 = u_xlat13.z;
            let x_3213 : f32 = u_xlat18.y;
            u_xlat86 = (x_3211 * x_3213);
            let x_3216 : vec4<f32> = u_xlat16;
            let x_3217 : vec2<f32> = vec2<f32>(x_3216.x, x_3216.y);
            let x_3219 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3217.x, x_3217.y, x_3219);
            let x_3226 : vec3<f32> = txVec34;
            let x_3228 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3226.xy, x_3226.z);
            u_xlat87 = x_3228;
            let x_3230 : vec4<f32> = u_xlat16;
            let x_3231 : vec2<f32> = vec2<f32>(x_3230.z, x_3230.w);
            let x_3233 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3231.x, x_3231.y, x_3233);
            let x_3241 : vec3<f32> = txVec35;
            let x_3243 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3241.xy, x_3241.z);
            u_xlat88 = x_3243;
            let x_3244 : f32 = u_xlat88;
            let x_3246 : f32 = u_xlat19.y;
            u_xlat88 = (x_3244 * x_3246);
            let x_3249 : f32 = u_xlat19.x;
            let x_3250 : f32 = u_xlat87;
            let x_3252 : f32 = u_xlat88;
            u_xlat87 = ((x_3249 * x_3250) + x_3252);
            let x_3255 : vec2<f32> = u_xlat64;
            let x_3257 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3255.x, x_3255.y, x_3257);
            let x_3264 : vec3<f32> = txVec36;
            let x_3266 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3264.xy, x_3264.z);
            u_xlat88 = x_3266;
            let x_3268 : f32 = u_xlat19.z;
            let x_3269 : f32 = u_xlat88;
            let x_3271 : f32 = u_xlat87;
            u_xlat87 = ((x_3268 * x_3269) + x_3271);
            let x_3274 : vec4<f32> = u_xlat15;
            let x_3275 : vec2<f32> = vec2<f32>(x_3274.x, x_3274.y);
            let x_3277 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3275.x, x_3275.y, x_3277);
            let x_3284 : vec3<f32> = txVec37;
            let x_3286 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3284.xy, x_3284.z);
            u_xlat88 = x_3286;
            let x_3288 : f32 = u_xlat19.w;
            let x_3289 : f32 = u_xlat88;
            let x_3291 : f32 = u_xlat87;
            u_xlat87 = ((x_3288 * x_3289) + x_3291);
            let x_3294 : vec4<f32> = u_xlat17;
            let x_3295 : vec2<f32> = vec2<f32>(x_3294.x, x_3294.y);
            let x_3297 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3295.x, x_3295.y, x_3297);
            let x_3304 : vec3<f32> = txVec38;
            let x_3306 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3304.xy, x_3304.z);
            u_xlat88 = x_3306;
            let x_3308 : f32 = u_xlat20.x;
            let x_3309 : f32 = u_xlat88;
            let x_3311 : f32 = u_xlat87;
            u_xlat87 = ((x_3308 * x_3309) + x_3311);
            let x_3314 : vec4<f32> = u_xlat17;
            let x_3315 : vec2<f32> = vec2<f32>(x_3314.z, x_3314.w);
            let x_3317 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3315.x, x_3315.y, x_3317);
            let x_3324 : vec3<f32> = txVec39;
            let x_3326 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3324.xy, x_3324.z);
            u_xlat88 = x_3326;
            let x_3328 : f32 = u_xlat20.y;
            let x_3329 : f32 = u_xlat88;
            let x_3331 : f32 = u_xlat87;
            u_xlat87 = ((x_3328 * x_3329) + x_3331);
            let x_3334 : vec4<f32> = u_xlat15;
            let x_3335 : vec2<f32> = vec2<f32>(x_3334.z, x_3334.w);
            let x_3337 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3335.x, x_3335.y, x_3337);
            let x_3344 : vec3<f32> = txVec40;
            let x_3346 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3344.xy, x_3344.z);
            u_xlat88 = x_3346;
            let x_3348 : f32 = u_xlat20.z;
            let x_3349 : f32 = u_xlat88;
            let x_3351 : f32 = u_xlat87;
            u_xlat87 = ((x_3348 * x_3349) + x_3351);
            let x_3354 : vec4<f32> = u_xlat14;
            let x_3355 : vec2<f32> = vec2<f32>(x_3354.x, x_3354.y);
            let x_3357 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3355.x, x_3355.y, x_3357);
            let x_3364 : vec3<f32> = txVec41;
            let x_3366 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3364.xy, x_3364.z);
            u_xlat88 = x_3366;
            let x_3368 : f32 = u_xlat20.w;
            let x_3369 : f32 = u_xlat88;
            let x_3371 : f32 = u_xlat87;
            u_xlat87 = ((x_3368 * x_3369) + x_3371);
            let x_3374 : vec4<f32> = u_xlat14;
            let x_3375 : vec2<f32> = vec2<f32>(x_3374.z, x_3374.w);
            let x_3377 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3375.x, x_3375.y, x_3377);
            let x_3384 : vec3<f32> = txVec42;
            let x_3386 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3384.xy, x_3384.z);
            u_xlat88 = x_3386;
            let x_3387 : f32 = u_xlat86;
            let x_3388 : f32 = u_xlat88;
            let x_3390 : f32 = u_xlat87;
            u_xlat85 = ((x_3387 * x_3388) + x_3390);
          } else {
            let x_3393 : vec4<f32> = u_xlat11;
            let x_3396 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3399 : vec2<f32> = ((vec2<f32>(x_3393.x, x_3393.y) * vec2<f32>(x_3396.z, x_3396.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3400 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3399.x, x_3399.y, x_3400.z, x_3400.w);
            let x_3402 : vec4<f32> = u_xlat12;
            let x_3404 : vec2<f32> = floor(vec2<f32>(x_3402.x, x_3402.y));
            let x_3405 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3404.x, x_3404.y, x_3405.z, x_3405.w);
            let x_3407 : vec4<f32> = u_xlat11;
            let x_3410 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3413 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3407.x, x_3407.y) * vec2<f32>(x_3410.z, x_3410.w)) + -(vec2<f32>(x_3413.x, x_3413.y)));
            let x_3417 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3417.x, x_3417.x, x_3417.y, x_3417.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3420 : vec4<f32> = u_xlat13;
            let x_3422 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3420.x, x_3420.x, x_3420.z, x_3420.z) * vec4<f32>(x_3422.x, x_3422.x, x_3422.z, x_3422.z));
            let x_3425 : vec4<f32> = u_xlat14;
            let x_3427 : vec2<f32> = (vec2<f32>(x_3425.y, x_3425.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3428 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3428.x, x_3427.x, x_3428.z, x_3427.y);
            let x_3430 : vec4<f32> = u_xlat14;
            let x_3433 : vec2<f32> = u_xlat64;
            let x_3435 : vec2<f32> = ((vec2<f32>(x_3430.x, x_3430.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3433));
            let x_3436 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3435.x, x_3436.y, x_3435.y, x_3436.w);
            let x_3438 : vec2<f32> = u_xlat64;
            let x_3440 : vec2<f32> = (-(x_3438) + vec2<f32>(1.0f, 1.0f));
            let x_3441 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3440.x, x_3440.y, x_3441.z, x_3441.w);
            let x_3443 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3443, vec2<f32>(0.0f, 0.0f));
            let x_3445 : vec2<f32> = u_xlat66;
            let x_3447 : vec2<f32> = u_xlat66;
            let x_3449 : vec4<f32> = u_xlat14;
            let x_3451 : vec2<f32> = ((-(x_3445) * x_3447) + vec2<f32>(x_3449.x, x_3449.y));
            let x_3452 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3451.x, x_3451.y, x_3452.z, x_3452.w);
            let x_3454 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3454, vec2<f32>(0.0f, 0.0f));
            let x_3457 : vec2<f32> = u_xlat66;
            let x_3459 : vec2<f32> = u_xlat66;
            let x_3461 : vec4<f32> = u_xlat13;
            let x_3463 : vec2<f32> = ((-(x_3457) * x_3459) + vec2<f32>(x_3461.y, x_3461.w));
            let x_3464 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3463.x, x_3464.y, x_3463.y);
            let x_3466 : vec4<f32> = u_xlat14;
            let x_3468 : vec2<f32> = (vec2<f32>(x_3466.x, x_3466.y) + vec2<f32>(2.0f, 2.0f));
            let x_3469 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3468.x, x_3468.y, x_3469.z, x_3469.w);
            let x_3471 : vec3<f32> = u_xlat39;
            let x_3473 : vec2<f32> = (vec2<f32>(x_3471.x, x_3471.z) + vec2<f32>(2.0f, 2.0f));
            let x_3474 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3474.x, x_3473.x, x_3474.z, x_3473.y);
            let x_3477 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3477 * 0.08163200318813323975f);
            let x_3480 : vec4<f32> = u_xlat13;
            let x_3482 : vec3<f32> = (vec3<f32>(x_3480.z, x_3480.x, x_3480.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3483 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3482.x, x_3482.y, x_3482.z, x_3483.w);
            let x_3485 : vec4<f32> = u_xlat14;
            let x_3487 : vec2<f32> = (vec2<f32>(x_3485.x, x_3485.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3488 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3487.x, x_3487.y, x_3488.z, x_3488.w);
            let x_3491 : f32 = u_xlat17.y;
            u_xlat16.x = x_3491;
            let x_3493 : vec2<f32> = u_xlat64;
            let x_3496 : vec2<f32> = ((vec2<f32>(x_3493.x, x_3493.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3497 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3497.x, x_3496.x, x_3497.z, x_3496.y);
            let x_3499 : vec2<f32> = u_xlat64;
            let x_3502 : vec2<f32> = ((vec2<f32>(x_3499.x, x_3499.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3503 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3502.x, x_3503.y, x_3502.y, x_3503.w);
            let x_3506 : f32 = u_xlat13.x;
            u_xlat14.y = x_3506;
            let x_3509 : f32 = u_xlat15.y;
            u_xlat14.w = x_3509;
            let x_3511 : vec4<f32> = u_xlat14;
            let x_3512 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3511 + x_3512);
            let x_3514 : vec2<f32> = u_xlat64;
            let x_3517 : vec2<f32> = ((vec2<f32>(x_3514.y, x_3514.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3518 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3518.x, x_3517.x, x_3518.z, x_3517.y);
            let x_3520 : vec2<f32> = u_xlat64;
            let x_3523 : vec2<f32> = ((vec2<f32>(x_3520.y, x_3520.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3524 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3523.x, x_3524.y, x_3523.y, x_3524.w);
            let x_3527 : f32 = u_xlat13.y;
            u_xlat15.y = x_3527;
            let x_3529 : vec4<f32> = u_xlat15;
            let x_3530 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3529 + x_3530);
            let x_3532 : vec4<f32> = u_xlat14;
            let x_3533 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3532 / x_3533);
            let x_3535 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3535 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3537 : vec4<f32> = u_xlat15;
            let x_3538 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3537 / x_3538);
            let x_3540 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3540 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3542 : vec4<f32> = u_xlat14;
            let x_3545 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3542.w, x_3542.x, x_3542.y, x_3542.z) * vec4<f32>(x_3545.x, x_3545.x, x_3545.x, x_3545.x));
            let x_3548 : vec4<f32> = u_xlat15;
            let x_3551 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3548.x, x_3548.w, x_3548.y, x_3548.z) * vec4<f32>(x_3551.y, x_3551.y, x_3551.y, x_3551.y));
            let x_3554 : vec4<f32> = u_xlat14;
            let x_3555 : vec3<f32> = vec3<f32>(x_3554.y, x_3554.z, x_3554.w);
            let x_3556 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3555.x, x_3556.y, x_3555.y, x_3555.z);
            let x_3559 : f32 = u_xlat15.x;
            u_xlat17.y = x_3559;
            let x_3561 : vec4<f32> = u_xlat12;
            let x_3564 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3567 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3561.x, x_3561.y, x_3561.x, x_3561.y) * vec4<f32>(x_3564.x, x_3564.y, x_3564.x, x_3564.y)) + vec4<f32>(x_3567.x, x_3567.y, x_3567.z, x_3567.y));
            let x_3570 : vec4<f32> = u_xlat12;
            let x_3573 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3576 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3570.x, x_3570.y) * vec2<f32>(x_3573.x, x_3573.y)) + vec2<f32>(x_3576.w, x_3576.y));
            let x_3580 : f32 = u_xlat17.y;
            u_xlat14.y = x_3580;
            let x_3583 : f32 = u_xlat15.z;
            u_xlat17.y = x_3583;
            let x_3585 : vec4<f32> = u_xlat12;
            let x_3588 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3591 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3585.x, x_3585.y, x_3585.x, x_3585.y) * vec4<f32>(x_3588.x, x_3588.y, x_3588.x, x_3588.y)) + vec4<f32>(x_3591.x, x_3591.y, x_3591.z, x_3591.y));
            let x_3594 : vec4<f32> = u_xlat12;
            let x_3597 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3600 : vec4<f32> = u_xlat17;
            let x_3602 : vec2<f32> = ((vec2<f32>(x_3594.x, x_3594.y) * vec2<f32>(x_3597.x, x_3597.y)) + vec2<f32>(x_3600.w, x_3600.y));
            let x_3603 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3602.x, x_3602.y, x_3603.z, x_3603.w);
            let x_3606 : f32 = u_xlat17.y;
            u_xlat14.z = x_3606;
            let x_3609 : vec4<f32> = u_xlat12;
            let x_3612 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3615 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3609.x, x_3609.y, x_3609.x, x_3609.y) * vec4<f32>(x_3612.x, x_3612.y, x_3612.x, x_3612.y)) + vec4<f32>(x_3615.x, x_3615.y, x_3615.x, x_3615.z));
            let x_3619 : f32 = u_xlat15.w;
            u_xlat17.y = x_3619;
            let x_3622 : vec4<f32> = u_xlat12;
            let x_3625 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3628 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3622.x, x_3622.y, x_3622.x, x_3622.y) * vec4<f32>(x_3625.x, x_3625.y, x_3625.x, x_3625.y)) + vec4<f32>(x_3628.x, x_3628.y, x_3628.z, x_3628.y));
            let x_3632 : vec4<f32> = u_xlat12;
            let x_3635 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3638 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3632.x, x_3632.y) * vec2<f32>(x_3635.x, x_3635.y)) + vec2<f32>(x_3638.w, x_3638.y));
            let x_3642 : f32 = u_xlat17.y;
            u_xlat14.w = x_3642;
            let x_3645 : vec4<f32> = u_xlat12;
            let x_3648 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3651 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3645.x, x_3645.y) * vec2<f32>(x_3648.x, x_3648.y)) + vec2<f32>(x_3651.x, x_3651.w));
            let x_3654 : vec4<f32> = u_xlat17;
            let x_3655 : vec3<f32> = vec3<f32>(x_3654.x, x_3654.z, x_3654.w);
            let x_3656 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3655.x, x_3656.y, x_3655.y, x_3655.z);
            let x_3658 : vec4<f32> = u_xlat12;
            let x_3661 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3664 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3658.x, x_3658.y, x_3658.x, x_3658.y) * vec4<f32>(x_3661.x, x_3661.y, x_3661.x, x_3661.y)) + vec4<f32>(x_3664.x, x_3664.y, x_3664.z, x_3664.y));
            let x_3667 : vec4<f32> = u_xlat12;
            let x_3670 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3673 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3667.x, x_3667.y) * vec2<f32>(x_3670.x, x_3670.y)) + vec2<f32>(x_3673.w, x_3673.y));
            let x_3677 : f32 = u_xlat14.x;
            u_xlat15.x = x_3677;
            let x_3679 : vec4<f32> = u_xlat12;
            let x_3682 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3685 : vec4<f32> = u_xlat15;
            let x_3687 : vec2<f32> = ((vec2<f32>(x_3679.x, x_3679.y) * vec2<f32>(x_3682.x, x_3682.y)) + vec2<f32>(x_3685.x, x_3685.y));
            let x_3688 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3687.x, x_3687.y, x_3688.z, x_3688.w);
            let x_3691 : vec4<f32> = u_xlat13;
            let x_3693 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3691.x, x_3691.x, x_3691.x, x_3691.x) * x_3693);
            let x_3696 : vec4<f32> = u_xlat13;
            let x_3698 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3696.y, x_3696.y, x_3696.y, x_3696.y) * x_3698);
            let x_3701 : vec4<f32> = u_xlat13;
            let x_3703 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3701.z, x_3701.z, x_3701.z, x_3701.z) * x_3703);
            let x_3705 : vec4<f32> = u_xlat13;
            let x_3707 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3705.w, x_3705.w, x_3705.w, x_3705.w) * x_3707);
            let x_3710 : vec4<f32> = u_xlat18;
            let x_3711 : vec2<f32> = vec2<f32>(x_3710.x, x_3710.y);
            let x_3713 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3711.x, x_3711.y, x_3713);
            let x_3720 : vec3<f32> = txVec43;
            let x_3722 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3720.xy, x_3720.z);
            u_xlat86 = x_3722;
            let x_3724 : vec4<f32> = u_xlat18;
            let x_3725 : vec2<f32> = vec2<f32>(x_3724.z, x_3724.w);
            let x_3727 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3725.x, x_3725.y, x_3727);
            let x_3734 : vec3<f32> = txVec44;
            let x_3736 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3734.xy, x_3734.z);
            u_xlat87 = x_3736;
            let x_3737 : f32 = u_xlat87;
            let x_3739 : f32 = u_xlat23.y;
            u_xlat87 = (x_3737 * x_3739);
            let x_3742 : f32 = u_xlat23.x;
            let x_3743 : f32 = u_xlat86;
            let x_3745 : f32 = u_xlat87;
            u_xlat86 = ((x_3742 * x_3743) + x_3745);
            let x_3748 : vec2<f32> = u_xlat64;
            let x_3750 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3748.x, x_3748.y, x_3750);
            let x_3757 : vec3<f32> = txVec45;
            let x_3759 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3757.xy, x_3757.z);
            u_xlat87 = x_3759;
            let x_3761 : f32 = u_xlat23.z;
            let x_3762 : f32 = u_xlat87;
            let x_3764 : f32 = u_xlat86;
            u_xlat86 = ((x_3761 * x_3762) + x_3764);
            let x_3767 : vec4<f32> = u_xlat21;
            let x_3768 : vec2<f32> = vec2<f32>(x_3767.x, x_3767.y);
            let x_3770 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3768.x, x_3768.y, x_3770);
            let x_3777 : vec3<f32> = txVec46;
            let x_3779 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3777.xy, x_3777.z);
            u_xlat87 = x_3779;
            let x_3781 : f32 = u_xlat23.w;
            let x_3782 : f32 = u_xlat87;
            let x_3784 : f32 = u_xlat86;
            u_xlat86 = ((x_3781 * x_3782) + x_3784);
            let x_3787 : vec4<f32> = u_xlat19;
            let x_3788 : vec2<f32> = vec2<f32>(x_3787.x, x_3787.y);
            let x_3790 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3788.x, x_3788.y, x_3790);
            let x_3797 : vec3<f32> = txVec47;
            let x_3799 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3797.xy, x_3797.z);
            u_xlat87 = x_3799;
            let x_3801 : f32 = u_xlat24.x;
            let x_3802 : f32 = u_xlat87;
            let x_3804 : f32 = u_xlat86;
            u_xlat86 = ((x_3801 * x_3802) + x_3804);
            let x_3807 : vec4<f32> = u_xlat19;
            let x_3808 : vec2<f32> = vec2<f32>(x_3807.z, x_3807.w);
            let x_3810 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3808.x, x_3808.y, x_3810);
            let x_3817 : vec3<f32> = txVec48;
            let x_3819 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3817.xy, x_3817.z);
            u_xlat87 = x_3819;
            let x_3821 : f32 = u_xlat24.y;
            let x_3822 : f32 = u_xlat87;
            let x_3824 : f32 = u_xlat86;
            u_xlat86 = ((x_3821 * x_3822) + x_3824);
            let x_3827 : vec4<f32> = u_xlat20;
            let x_3828 : vec2<f32> = vec2<f32>(x_3827.x, x_3827.y);
            let x_3830 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3828.x, x_3828.y, x_3830);
            let x_3837 : vec3<f32> = txVec49;
            let x_3839 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3837.xy, x_3837.z);
            u_xlat87 = x_3839;
            let x_3841 : f32 = u_xlat24.z;
            let x_3842 : f32 = u_xlat87;
            let x_3844 : f32 = u_xlat86;
            u_xlat86 = ((x_3841 * x_3842) + x_3844);
            let x_3847 : vec4<f32> = u_xlat21;
            let x_3848 : vec2<f32> = vec2<f32>(x_3847.z, x_3847.w);
            let x_3850 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3848.x, x_3848.y, x_3850);
            let x_3857 : vec3<f32> = txVec50;
            let x_3859 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3857.xy, x_3857.z);
            u_xlat87 = x_3859;
            let x_3861 : f32 = u_xlat24.w;
            let x_3862 : f32 = u_xlat87;
            let x_3864 : f32 = u_xlat86;
            u_xlat86 = ((x_3861 * x_3862) + x_3864);
            let x_3867 : vec4<f32> = u_xlat22;
            let x_3868 : vec2<f32> = vec2<f32>(x_3867.x, x_3867.y);
            let x_3870 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3868.x, x_3868.y, x_3870);
            let x_3877 : vec3<f32> = txVec51;
            let x_3879 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3877.xy, x_3877.z);
            u_xlat87 = x_3879;
            let x_3881 : f32 = u_xlat25.x;
            let x_3882 : f32 = u_xlat87;
            let x_3884 : f32 = u_xlat86;
            u_xlat86 = ((x_3881 * x_3882) + x_3884);
            let x_3887 : vec4<f32> = u_xlat22;
            let x_3888 : vec2<f32> = vec2<f32>(x_3887.z, x_3887.w);
            let x_3890 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3888.x, x_3888.y, x_3890);
            let x_3897 : vec3<f32> = txVec52;
            let x_3899 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3897.xy, x_3897.z);
            u_xlat87 = x_3899;
            let x_3901 : f32 = u_xlat25.y;
            let x_3902 : f32 = u_xlat87;
            let x_3904 : f32 = u_xlat86;
            u_xlat86 = ((x_3901 * x_3902) + x_3904);
            let x_3907 : vec2<f32> = u_xlat40;
            let x_3909 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3907.x, x_3907.y, x_3909);
            let x_3916 : vec3<f32> = txVec53;
            let x_3918 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3916.xy, x_3916.z);
            u_xlat87 = x_3918;
            let x_3920 : f32 = u_xlat25.z;
            let x_3921 : f32 = u_xlat87;
            let x_3923 : f32 = u_xlat86;
            u_xlat86 = ((x_3920 * x_3921) + x_3923);
            let x_3926 : vec2<f32> = u_xlat72;
            let x_3928 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3926.x, x_3926.y, x_3928);
            let x_3935 : vec3<f32> = txVec54;
            let x_3937 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3935.xy, x_3935.z);
            u_xlat87 = x_3937;
            let x_3939 : f32 = u_xlat25.w;
            let x_3940 : f32 = u_xlat87;
            let x_3942 : f32 = u_xlat86;
            u_xlat86 = ((x_3939 * x_3940) + x_3942);
            let x_3945 : vec4<f32> = u_xlat17;
            let x_3946 : vec2<f32> = vec2<f32>(x_3945.x, x_3945.y);
            let x_3948 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3946.x, x_3946.y, x_3948);
            let x_3955 : vec3<f32> = txVec55;
            let x_3957 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3955.xy, x_3955.z);
            u_xlat87 = x_3957;
            let x_3959 : f32 = u_xlat13.x;
            let x_3960 : f32 = u_xlat87;
            let x_3962 : f32 = u_xlat86;
            u_xlat86 = ((x_3959 * x_3960) + x_3962);
            let x_3965 : vec4<f32> = u_xlat17;
            let x_3966 : vec2<f32> = vec2<f32>(x_3965.z, x_3965.w);
            let x_3968 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3966.x, x_3966.y, x_3968);
            let x_3975 : vec3<f32> = txVec56;
            let x_3977 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3975.xy, x_3975.z);
            u_xlat87 = x_3977;
            let x_3979 : f32 = u_xlat13.y;
            let x_3980 : f32 = u_xlat87;
            let x_3982 : f32 = u_xlat86;
            u_xlat86 = ((x_3979 * x_3980) + x_3982);
            let x_3985 : vec2<f32> = u_xlat67;
            let x_3987 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3985.x, x_3985.y, x_3987);
            let x_3994 : vec3<f32> = txVec57;
            let x_3996 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3994.xy, x_3994.z);
            u_xlat87 = x_3996;
            let x_3998 : f32 = u_xlat13.z;
            let x_3999 : f32 = u_xlat87;
            let x_4001 : f32 = u_xlat86;
            u_xlat86 = ((x_3998 * x_3999) + x_4001);
            let x_4004 : vec4<f32> = u_xlat12;
            let x_4005 : vec2<f32> = vec2<f32>(x_4004.x, x_4004.y);
            let x_4007 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_4005.x, x_4005.y, x_4007);
            let x_4014 : vec3<f32> = txVec58;
            let x_4016 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4014.xy, x_4014.z);
            u_xlat87 = x_4016;
            let x_4018 : f32 = u_xlat13.w;
            let x_4019 : f32 = u_xlat87;
            let x_4021 : f32 = u_xlat86;
            u_xlat85 = ((x_4018 * x_4019) + x_4021);
          }
        }
      } else {
        let x_4025 : vec4<f32> = u_xlat11;
        let x_4026 : vec2<f32> = vec2<f32>(x_4025.x, x_4025.y);
        let x_4028 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_4026.x, x_4026.y, x_4028);
        let x_4035 : vec3<f32> = txVec59;
        let x_4037 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4035.xy, x_4035.z);
        u_xlat85 = x_4037;
      }
      let x_4038 : i32 = u_xlati82;
      let x_4040 : f32 = x_594.x_AdditionalShadowParams[x_4038].x;
      u_xlat86 = (1.0f + -(x_4040));
      let x_4043 : f32 = u_xlat85;
      let x_4044 : i32 = u_xlati82;
      let x_4046 : f32 = x_594.x_AdditionalShadowParams[x_4044].x;
      let x_4048 : f32 = u_xlat86;
      u_xlat85 = ((x_4043 * x_4046) + x_4048);
      let x_4051 : f32 = u_xlat11.z;
      u_xlatb86 = (0.0f >= x_4051);
      let x_4055 : f32 = u_xlat11.z;
      u_xlatb87 = (x_4055 >= 1.0f);
      let x_4057 : bool = u_xlatb86;
      let x_4058 : bool = u_xlatb87;
      u_xlatb86 = (x_4057 | x_4058);
      let x_4060 : bool = u_xlatb86;
      let x_4061 : f32 = u_xlat85;
      u_xlat85 = select(x_4061, 1.0f, x_4060);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_4064 : f32 = u_xlat85;
    u_xlat86 = (-(x_4064) + 1.0f);
    let x_4067 : f32 = u_xlat80;
    let x_4068 : f32 = u_xlat86;
    let x_4070 : f32 = u_xlat85;
    u_xlat85 = ((x_4067 * x_4068) + x_4070);
    let x_4073 : i32 = u_xlati82;
    u_xlati86 = (1i << bitcast<u32>((x_4073 & 31i)));
    let x_4076 : i32 = u_xlati86;
    let x_4079 : f32 = x_2181.x_AdditionalLightsCookieEnableBits;
    u_xlati86 = bitcast<i32>((bitcast<u32>(x_4076) & bitcast<u32>(x_4079)));
    let x_4083 : i32 = u_xlati86;
    if ((x_4083 != 0i)) {
      let x_4087 : i32 = u_xlati82;
      let x_4089 : f32 = x_2181.x_AdditionalLightsLightTypes[x_4087].el;
      u_xlati86 = i32(x_4089);
      let x_4092 : i32 = u_xlati86;
      u_xlati87 = select(1i, 0i, (x_4092 != 0i));
      let x_4096 : i32 = u_xlati82;
      u_xlati88 = (x_4096 << bitcast<u32>(2i));
      let x_4098 : i32 = u_xlati87;
      if ((x_4098 != 0i)) {
        let x_4102 : vec3<f32> = vs_TEXCOORD7;
        let x_4104 : i32 = u_xlati88;
        let x_4107 : i32 = u_xlati88;
        let x_4111 : vec4<f32> = x_2181.x_AdditionalLightsWorldToLights[((x_4104 + 1i) / 4i)][((x_4107 + 1i) % 4i)];
        let x_4113 : vec3<f32> = (vec3<f32>(x_4102.y, x_4102.y, x_4102.y) * vec3<f32>(x_4111.x, x_4111.y, x_4111.w));
        let x_4114 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4113.x, x_4113.y, x_4113.z, x_4114.w);
        let x_4116 : i32 = u_xlati88;
        let x_4118 : i32 = u_xlati88;
        let x_4121 : vec4<f32> = x_2181.x_AdditionalLightsWorldToLights[(x_4116 / 4i)][(x_4118 % 4i)];
        let x_4123 : vec3<f32> = vs_TEXCOORD7;
        let x_4126 : vec4<f32> = u_xlat11;
        let x_4128 : vec3<f32> = ((vec3<f32>(x_4121.x, x_4121.y, x_4121.w) * vec3<f32>(x_4123.x, x_4123.x, x_4123.x)) + vec3<f32>(x_4126.x, x_4126.y, x_4126.z));
        let x_4129 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4128.x, x_4128.y, x_4128.z, x_4129.w);
        let x_4131 : i32 = u_xlati88;
        let x_4134 : i32 = u_xlati88;
        let x_4138 : vec4<f32> = x_2181.x_AdditionalLightsWorldToLights[((x_4131 + 2i) / 4i)][((x_4134 + 2i) % 4i)];
        let x_4140 : vec3<f32> = vs_TEXCOORD7;
        let x_4143 : vec4<f32> = u_xlat11;
        let x_4145 : vec3<f32> = ((vec3<f32>(x_4138.x, x_4138.y, x_4138.w) * vec3<f32>(x_4140.z, x_4140.z, x_4140.z)) + vec3<f32>(x_4143.x, x_4143.y, x_4143.z));
        let x_4146 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4145.x, x_4145.y, x_4145.z, x_4146.w);
        let x_4148 : vec4<f32> = u_xlat11;
        let x_4150 : i32 = u_xlati88;
        let x_4153 : i32 = u_xlati88;
        let x_4157 : vec4<f32> = x_2181.x_AdditionalLightsWorldToLights[((x_4150 + 3i) / 4i)][((x_4153 + 3i) % 4i)];
        let x_4159 : vec3<f32> = (vec3<f32>(x_4148.x, x_4148.y, x_4148.z) + vec3<f32>(x_4157.x, x_4157.y, x_4157.w));
        let x_4160 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4159.x, x_4159.y, x_4159.z, x_4160.w);
        let x_4162 : vec4<f32> = u_xlat11;
        let x_4164 : vec4<f32> = u_xlat11;
        let x_4166 : vec2<f32> = (vec2<f32>(x_4162.x, x_4162.y) / vec2<f32>(x_4164.z, x_4164.z));
        let x_4167 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4166.x, x_4166.y, x_4167.z, x_4167.w);
        let x_4169 : vec4<f32> = u_xlat11;
        let x_4172 : vec2<f32> = ((vec2<f32>(x_4169.x, x_4169.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4173 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4172.x, x_4172.y, x_4173.z, x_4173.w);
        let x_4175 : vec4<f32> = u_xlat11;
        let x_4179 : vec2<f32> = clamp(vec2<f32>(x_4175.x, x_4175.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4180 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4179.x, x_4179.y, x_4180.z, x_4180.w);
        let x_4182 : i32 = u_xlati82;
        let x_4184 : vec4<f32> = x_2181.x_AdditionalLightsCookieAtlasUVRects[x_4182];
        let x_4186 : vec4<f32> = u_xlat11;
        let x_4189 : i32 = u_xlati82;
        let x_4191 : vec4<f32> = x_2181.x_AdditionalLightsCookieAtlasUVRects[x_4189];
        let x_4193 : vec2<f32> = ((vec2<f32>(x_4184.x, x_4184.y) * vec2<f32>(x_4186.x, x_4186.y)) + vec2<f32>(x_4191.z, x_4191.w));
        let x_4194 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4193.x, x_4193.y, x_4194.z, x_4194.w);
      } else {
        let x_4197 : i32 = u_xlati86;
        u_xlatb86 = (x_4197 == 1i);
        let x_4199 : bool = u_xlatb86;
        u_xlati86 = select(0i, 1i, x_4199);
        let x_4201 : i32 = u_xlati86;
        if ((x_4201 != 0i)) {
          let x_4206 : vec3<f32> = vs_TEXCOORD7;
          let x_4208 : i32 = u_xlati88;
          let x_4211 : i32 = u_xlati88;
          let x_4215 : vec4<f32> = x_2181.x_AdditionalLightsWorldToLights[((x_4208 + 1i) / 4i)][((x_4211 + 1i) % 4i)];
          u_xlat63 = (vec2<f32>(x_4206.y, x_4206.y) * vec2<f32>(x_4215.x, x_4215.y));
          let x_4218 : i32 = u_xlati88;
          let x_4220 : i32 = u_xlati88;
          let x_4223 : vec4<f32> = x_2181.x_AdditionalLightsWorldToLights[(x_4218 / 4i)][(x_4220 % 4i)];
          let x_4225 : vec3<f32> = vs_TEXCOORD7;
          let x_4228 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4223.x, x_4223.y) * vec2<f32>(x_4225.x, x_4225.x)) + x_4228);
          let x_4230 : i32 = u_xlati88;
          let x_4233 : i32 = u_xlati88;
          let x_4237 : vec4<f32> = x_2181.x_AdditionalLightsWorldToLights[((x_4230 + 2i) / 4i)][((x_4233 + 2i) % 4i)];
          let x_4239 : vec3<f32> = vs_TEXCOORD7;
          let x_4242 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4237.x, x_4237.y) * vec2<f32>(x_4239.z, x_4239.z)) + x_4242);
          let x_4244 : vec2<f32> = u_xlat63;
          let x_4245 : i32 = u_xlati88;
          let x_4248 : i32 = u_xlati88;
          let x_4252 : vec4<f32> = x_2181.x_AdditionalLightsWorldToLights[((x_4245 + 3i) / 4i)][((x_4248 + 3i) % 4i)];
          u_xlat63 = (x_4244 + vec2<f32>(x_4252.x, x_4252.y));
          let x_4255 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4255 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4258 : vec2<f32> = u_xlat63;
          u_xlat63 = fract(x_4258);
          let x_4260 : i32 = u_xlati82;
          let x_4262 : vec4<f32> = x_2181.x_AdditionalLightsCookieAtlasUVRects[x_4260];
          let x_4264 : vec2<f32> = u_xlat63;
          let x_4266 : i32 = u_xlati82;
          let x_4268 : vec4<f32> = x_2181.x_AdditionalLightsCookieAtlasUVRects[x_4266];
          let x_4270 : vec2<f32> = ((vec2<f32>(x_4262.x, x_4262.y) * x_4264) + vec2<f32>(x_4268.z, x_4268.w));
          let x_4271 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4270.x, x_4270.y, x_4271.z, x_4271.w);
        } else {
          let x_4274 : vec3<f32> = vs_TEXCOORD7;
          let x_4276 : i32 = u_xlati88;
          let x_4279 : i32 = u_xlati88;
          let x_4283 : vec4<f32> = x_2181.x_AdditionalLightsWorldToLights[((x_4276 + 1i) / 4i)][((x_4279 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4274.y, x_4274.y, x_4274.y, x_4274.y) * x_4283);
          let x_4285 : i32 = u_xlati88;
          let x_4287 : i32 = u_xlati88;
          let x_4290 : vec4<f32> = x_2181.x_AdditionalLightsWorldToLights[(x_4285 / 4i)][(x_4287 % 4i)];
          let x_4291 : vec3<f32> = vs_TEXCOORD7;
          let x_4294 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4290 * vec4<f32>(x_4291.x, x_4291.x, x_4291.x, x_4291.x)) + x_4294);
          let x_4296 : i32 = u_xlati88;
          let x_4299 : i32 = u_xlati88;
          let x_4303 : vec4<f32> = x_2181.x_AdditionalLightsWorldToLights[((x_4296 + 2i) / 4i)][((x_4299 + 2i) % 4i)];
          let x_4304 : vec3<f32> = vs_TEXCOORD7;
          let x_4307 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4303 * vec4<f32>(x_4304.z, x_4304.z, x_4304.z, x_4304.z)) + x_4307);
          let x_4309 : vec4<f32> = u_xlat12;
          let x_4310 : i32 = u_xlati88;
          let x_4313 : i32 = u_xlati88;
          let x_4317 : vec4<f32> = x_2181.x_AdditionalLightsWorldToLights[((x_4310 + 3i) / 4i)][((x_4313 + 3i) % 4i)];
          u_xlat12 = (x_4309 + x_4317);
          let x_4319 : vec4<f32> = u_xlat12;
          let x_4321 : vec4<f32> = u_xlat12;
          let x_4323 : vec3<f32> = (vec3<f32>(x_4319.x, x_4319.y, x_4319.z) / vec3<f32>(x_4321.w, x_4321.w, x_4321.w));
          let x_4324 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4323.x, x_4323.y, x_4323.z, x_4324.w);
          let x_4326 : vec4<f32> = u_xlat12;
          let x_4328 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(vec3<f32>(x_4326.x, x_4326.y, x_4326.z), vec3<f32>(x_4328.x, x_4328.y, x_4328.z));
          let x_4331 : f32 = u_xlat86;
          u_xlat86 = inverseSqrt(x_4331);
          let x_4333 : f32 = u_xlat86;
          let x_4335 : vec4<f32> = u_xlat12;
          let x_4337 : vec3<f32> = (vec3<f32>(x_4333, x_4333, x_4333) * vec3<f32>(x_4335.x, x_4335.y, x_4335.z));
          let x_4338 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4337.x, x_4337.y, x_4337.z, x_4338.w);
          let x_4340 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(abs(vec3<f32>(x_4340.x, x_4340.y, x_4340.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4345 : f32 = u_xlat86;
          u_xlat86 = max(x_4345, 0.00000099999999747524f);
          let x_4348 : f32 = u_xlat86;
          u_xlat86 = (1.0f / x_4348);
          let x_4350 : f32 = u_xlat86;
          let x_4352 : vec4<f32> = u_xlat12;
          let x_4354 : vec3<f32> = (vec3<f32>(x_4350, x_4350, x_4350) * vec3<f32>(x_4352.z, x_4352.x, x_4352.y));
          let x_4355 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4354.x, x_4354.y, x_4354.z, x_4355.w);
          let x_4358 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4358);
          let x_4362 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4362, 0.0f, 1.0f);
          let x_4366 : vec4<f32> = u_xlat13;
          let x_4368 : vec4<bool> = (vec4<f32>(x_4366.y, x_4366.z, x_4366.y, x_4366.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_4368.x, x_4368.y);
          let x_4371 : bool = u_xlatb63.x;
          if (x_4371) {
            let x_4376 : f32 = u_xlat13.x;
            x_4372 = x_4376;
          } else {
            let x_4379 : f32 = u_xlat13.x;
            x_4372 = -(x_4379);
          }
          let x_4381 : f32 = x_4372;
          u_xlat63.x = x_4381;
          let x_4384 : bool = u_xlatb63.y;
          if (x_4384) {
            let x_4389 : f32 = u_xlat13.x;
            x_4385 = x_4389;
          } else {
            let x_4392 : f32 = u_xlat13.x;
            x_4385 = -(x_4392);
          }
          let x_4394 : f32 = x_4385;
          u_xlat63.y = x_4394;
          let x_4396 : vec4<f32> = u_xlat12;
          let x_4398 : f32 = u_xlat86;
          let x_4401 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4396.x, x_4396.y) * vec2<f32>(x_4398, x_4398)) + x_4401);
          let x_4403 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4403 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4406 : vec2<f32> = u_xlat63;
          u_xlat63 = clamp(x_4406, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4410 : i32 = u_xlati82;
          let x_4412 : vec4<f32> = x_2181.x_AdditionalLightsCookieAtlasUVRects[x_4410];
          let x_4414 : vec2<f32> = u_xlat63;
          let x_4416 : i32 = u_xlati82;
          let x_4418 : vec4<f32> = x_2181.x_AdditionalLightsCookieAtlasUVRects[x_4416];
          let x_4420 : vec2<f32> = ((vec2<f32>(x_4412.x, x_4412.y) * x_4414) + vec2<f32>(x_4418.z, x_4418.w));
          let x_4421 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4420.x, x_4420.y, x_4421.z, x_4421.w);
        }
      }
      let x_4428 : vec4<f32> = u_xlat11;
      let x_4430 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4428.x, x_4428.y), 0.0f);
      u_xlat11 = x_4430;
      let x_4432 : bool = u_xlatb3.y;
      if (x_4432) {
        let x_4437 : f32 = u_xlat11.w;
        x_4433 = x_4437;
      } else {
        let x_4440 : f32 = u_xlat11.x;
        x_4433 = x_4440;
      }
      let x_4441 : f32 = x_4433;
      u_xlat86 = x_4441;
      let x_4443 : bool = u_xlatb3.x;
      if (x_4443) {
        let x_4447 : vec4<f32> = u_xlat11;
        x_4444 = vec3<f32>(x_4447.x, x_4447.y, x_4447.z);
      } else {
        let x_4450 : f32 = u_xlat86;
        x_4444 = vec3<f32>(x_4450, x_4450, x_4450);
      }
      let x_4452 : vec3<f32> = x_4444;
      let x_4453 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4452.x, x_4452.y, x_4452.z, x_4453.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4459 : vec4<f32> = u_xlat11;
    let x_4461 : i32 = u_xlati82;
    let x_4463 : vec4<f32> = x_2658.x_AdditionalLightsColor[x_4461];
    let x_4465 : vec3<f32> = (vec3<f32>(x_4459.x, x_4459.y, x_4459.z) * vec3<f32>(x_4463.x, x_4463.y, x_4463.z));
    let x_4466 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4465.x, x_4465.y, x_4465.z, x_4466.w);
    let x_4468 : f32 = u_xlat83;
    let x_4469 : f32 = u_xlat85;
    u_xlat82 = (x_4468 * x_4469);
    let x_4471 : vec4<f32> = u_xlat1;
    let x_4473 : vec4<f32> = u_xlat10;
    u_xlat83 = dot(vec3<f32>(x_4471.x, x_4471.y, x_4471.z), vec3<f32>(x_4473.x, x_4473.y, x_4473.z));
    let x_4476 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4476, 0.0f, 1.0f);
    let x_4478 : f32 = u_xlat82;
    let x_4479 : f32 = u_xlat83;
    u_xlat82 = (x_4478 * x_4479);
    let x_4481 : f32 = u_xlat82;
    let x_4483 : vec4<f32> = u_xlat11;
    let x_4485 : vec3<f32> = (vec3<f32>(x_4481, x_4481, x_4481) * vec3<f32>(x_4483.x, x_4483.y, x_4483.z));
    let x_4486 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4485.x, x_4485.y, x_4485.z, x_4486.w);
    let x_4488 : vec4<f32> = u_xlat9;
    let x_4490 : f32 = u_xlat84;
    let x_4493 : vec3<f32> = u_xlat2;
    let x_4494 : vec3<f32> = ((vec3<f32>(x_4488.x, x_4488.y, x_4488.z) * vec3<f32>(x_4490, x_4490, x_4490)) + x_4493);
    let x_4495 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4494.x, x_4494.y, x_4494.z, x_4495.w);
    let x_4497 : vec4<f32> = u_xlat9;
    let x_4499 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_4497.x, x_4497.y, x_4497.z), vec3<f32>(x_4499.x, x_4499.y, x_4499.z));
    let x_4502 : f32 = u_xlat82;
    u_xlat82 = max(x_4502, 1.17549435e-38f);
    let x_4504 : f32 = u_xlat82;
    u_xlat82 = inverseSqrt(x_4504);
    let x_4506 : f32 = u_xlat82;
    let x_4508 : vec4<f32> = u_xlat9;
    let x_4510 : vec3<f32> = (vec3<f32>(x_4506, x_4506, x_4506) * vec3<f32>(x_4508.x, x_4508.y, x_4508.z));
    let x_4511 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4510.x, x_4510.y, x_4510.z, x_4511.w);
    let x_4513 : vec4<f32> = u_xlat1;
    let x_4515 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_4513.x, x_4513.y, x_4513.z), vec3<f32>(x_4515.x, x_4515.y, x_4515.z));
    let x_4518 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4518, 0.0f, 1.0f);
    let x_4520 : vec4<f32> = u_xlat10;
    let x_4522 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4520.x, x_4520.y, x_4520.z), vec3<f32>(x_4522.x, x_4522.y, x_4522.z));
    let x_4525 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4525, 0.0f, 1.0f);
    let x_4527 : f32 = u_xlat82;
    let x_4528 : f32 = u_xlat82;
    u_xlat82 = (x_4527 * x_4528);
    let x_4530 : f32 = u_xlat82;
    let x_4532 : f32 = u_xlat0.x;
    u_xlat82 = ((x_4530 * x_4532) + 1.00001001358032226562f);
    let x_4535 : f32 = u_xlat83;
    let x_4536 : f32 = u_xlat83;
    u_xlat83 = (x_4535 * x_4536);
    let x_4538 : f32 = u_xlat82;
    let x_4539 : f32 = u_xlat82;
    u_xlat82 = (x_4538 * x_4539);
    let x_4541 : f32 = u_xlat83;
    u_xlat83 = max(x_4541, 0.10000000149011611938f);
    let x_4543 : f32 = u_xlat82;
    let x_4544 : f32 = u_xlat83;
    u_xlat82 = (x_4543 * x_4544);
    let x_4546 : f32 = u_xlat81;
    let x_4547 : f32 = u_xlat82;
    u_xlat82 = (x_4546 * x_4547);
    let x_4549 : f32 = u_xlat79;
    let x_4550 : f32 = u_xlat82;
    u_xlat82 = (x_4549 / x_4550);
    let x_4552 : vec4<f32> = u_xlat5;
    let x_4554 : f32 = u_xlat82;
    let x_4557 : vec4<f32> = u_xlat6;
    let x_4559 : vec3<f32> = ((vec3<f32>(x_4552.x, x_4552.y, x_4552.z) * vec3<f32>(x_4554, x_4554, x_4554)) + vec3<f32>(x_4557.x, x_4557.y, x_4557.z));
    let x_4560 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4559.x, x_4559.y, x_4559.z, x_4560.w);
    let x_4562 : vec4<f32> = u_xlat9;
    let x_4564 : vec4<f32> = u_xlat11;
    let x_4567 : vec4<f32> = u_xlat8;
    let x_4569 : vec3<f32> = ((vec3<f32>(x_4562.x, x_4562.y, x_4562.z) * vec3<f32>(x_4564.x, x_4564.y, x_4564.z)) + vec3<f32>(x_4567.x, x_4567.y, x_4567.z));
    let x_4570 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4569.x, x_4569.y, x_4569.z, x_4570.w);

    continuing {
      let x_4572 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4572 + bitcast<u32>(1i));
    }
  }
  let x_4574 : vec4<f32> = u_xlat4;
  let x_4576 : f32 = u_xlat26;
  let x_4579 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_4574.x, x_4574.y, x_4574.z) * vec3<f32>(x_4576, x_4576, x_4576)) + vec3<f32>(x_4579.x, x_4579.y, x_4579.z));
  let x_4582 : vec4<f32> = u_xlat8;
  let x_4584 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4582.x, x_4582.y, x_4582.z) + x_4584);
  let x_4588 : f32 = u_xlat78;
  let x_4590 : vec3<f32> = u_xlat0;
  let x_4591 : vec3<f32> = (vec3<f32>(x_4588, x_4588, x_4588) * x_4590);
  let x_4592 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4591.x, x_4591.y, x_4591.z, x_4592.w);
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


