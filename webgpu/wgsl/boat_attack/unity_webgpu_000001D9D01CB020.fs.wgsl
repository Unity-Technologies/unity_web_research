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

var<private> u_xlatb80 : bool;

var<private> u_xlat52 : f32;

var<private> u_xlat26 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat27 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_602 : UnityPerDraw;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlatb82 : bool;

@group(1) @binding(4) var<uniform> x_745 : LightShadows;

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

@group(1) @binding(5) var<uniform> x_2057 : LightCookies;

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

@group(1) @binding(1) var<uniform> x_2532 : AdditionalLights;

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
  var x_550 : f32;
  var x_561 : f32;
  var x_572 : f32;
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
  var x_2142 : f32;
  var x_2153 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2668 : f32;
  var x_2678 : f32;
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
  var x_4249 : f32;
  var x_4262 : f32;
  var x_4310 : f32;
  var x_4321 : vec3<f32>;
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
  let x_548 : bool = u_xlatb1;
  if (x_548) {
    let x_554 : f32 = u_xlat27.x;
    x_550 = x_554;
  } else {
    let x_557 : f32 = x_111.unity_MatrixV[0i].z;
    x_550 = x_557;
  }
  let x_558 : f32 = x_550;
  u_xlat2.x = x_558;
  let x_560 : bool = u_xlatb1;
  if (x_560) {
    let x_565 : f32 = u_xlat27.y;
    x_561 = x_565;
  } else {
    let x_568 : f32 = x_111.unity_MatrixV[1i].z;
    x_561 = x_568;
  }
  let x_569 : f32 = x_561;
  u_xlat2.y = x_569;
  let x_571 : bool = u_xlatb1;
  if (x_571) {
    let x_576 : f32 = u_xlat27.z;
    x_572 = x_576;
  } else {
    let x_580 : f32 = x_111.unity_MatrixV[2i].z;
    x_572 = x_580;
  }
  let x_581 : f32 = x_572;
  u_xlat2.z = x_581;
  let x_584 : vec3<f32> = vs_TEXCOORD3;
  let x_585 : vec3<f32> = vs_TEXCOORD3;
  u_xlat1.x = dot(x_584, x_585);
  let x_589 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_589);
  let x_592 : vec4<f32> = u_xlat1;
  let x_594 : vec3<f32> = vs_TEXCOORD3;
  let x_595 : vec3<f32> = (vec3<f32>(x_592.x, x_592.x, x_592.x) * x_594);
  let x_596 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
  u_xlat1.w = 1.0f;
  let x_604 : vec4<f32> = x_602.unity_SHAr;
  let x_605 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_604, x_605);
  let x_609 : vec4<f32> = x_602.unity_SHAg;
  let x_610 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_609, x_610);
  let x_614 : vec4<f32> = x_602.unity_SHAb;
  let x_615 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_614, x_615);
  let x_618 : vec4<f32> = u_xlat1;
  let x_620 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_618.y, x_618.z, x_618.z, x_618.x) * vec4<f32>(x_620.x, x_620.y, x_620.z, x_620.z));
  let x_624 : vec4<f32> = x_602.unity_SHBr;
  let x_625 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_624, x_625);
  let x_629 : vec4<f32> = x_602.unity_SHBg;
  let x_630 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_629, x_630);
  let x_634 : vec4<f32> = x_602.unity_SHBb;
  let x_635 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_634, x_635);
  let x_639 : f32 = u_xlat1.y;
  let x_641 : f32 = u_xlat1.y;
  u_xlat79 = (x_639 * x_641);
  let x_644 : f32 = u_xlat1.x;
  let x_646 : f32 = u_xlat1.x;
  let x_648 : f32 = u_xlat79;
  u_xlat79 = ((x_644 * x_646) + -(x_648));
  let x_653 : vec4<f32> = x_602.unity_SHC;
  let x_655 : f32 = u_xlat79;
  let x_658 : vec4<f32> = u_xlat6;
  let x_660 : vec3<f32> = ((vec3<f32>(x_653.x, x_653.y, x_653.z) * vec3<f32>(x_655, x_655, x_655)) + vec3<f32>(x_658.x, x_658.y, x_658.z));
  let x_661 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
  let x_663 : vec4<f32> = u_xlat3;
  let x_665 : vec4<f32> = u_xlat4;
  let x_667 : vec3<f32> = (vec3<f32>(x_663.x, x_663.y, x_663.z) + vec3<f32>(x_665.x, x_665.y, x_665.z));
  let x_668 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
  let x_670 : vec4<f32> = u_xlat3;
  let x_673 : vec3<f32> = max(vec3<f32>(x_670.x, x_670.y, x_670.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_674 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_677 : f32 = u_xlat0.x;
  u_xlat79 = ((-(x_677) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_683 : f32 = u_xlat52;
  let x_684 : f32 = u_xlat79;
  u_xlat80 = (x_683 + -(x_684));
  let x_687 : f32 = u_xlat79;
  let x_689 : vec4<f32> = u_xlat5;
  let x_691 : vec3<f32> = (vec3<f32>(x_687, x_687, x_687) * vec3<f32>(x_689.x, x_689.y, x_689.z));
  let x_692 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
  let x_694 : vec4<f32> = u_xlat5;
  let x_698 : vec3<f32> = (vec3<f32>(x_694.x, x_694.y, x_694.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_699 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
  let x_701 : vec3<f32> = u_xlat0;
  let x_703 : vec4<f32> = u_xlat5;
  let x_708 : vec3<f32> = ((vec3<f32>(x_701.x, x_701.x, x_701.x) * vec3<f32>(x_703.x, x_703.y, x_703.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_709 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
  let x_711 : f32 = u_xlat52;
  u_xlat0.x = (-(x_711) + 1.0f);
  let x_716 : f32 = u_xlat0.x;
  let x_718 : f32 = u_xlat0.x;
  u_xlat52 = (x_716 * x_718);
  let x_720 : f32 = u_xlat52;
  u_xlat52 = max(x_720, 0.0078125f);
  let x_723 : f32 = u_xlat52;
  let x_724 : f32 = u_xlat52;
  u_xlat79 = (x_723 * x_724);
  let x_726 : f32 = u_xlat80;
  u_xlat80 = (x_726 + 1.0f);
  let x_728 : f32 = u_xlat80;
  u_xlat80 = clamp(x_728, 0.0f, 1.0f);
  let x_731 : f32 = u_xlat52;
  u_xlat81 = ((x_731 * 4.0f) + 2.0f);
  let x_735 : f32 = u_xlat26;
  u_xlat26 = min(x_735, 1.0f);
  let x_747 : f32 = x_745.x_MainLightShadowParams.y;
  u_xlatb82 = (0.0f < x_747);
  let x_749 : bool = u_xlatb82;
  if (x_749) {
    let x_753 : f32 = x_745.x_MainLightShadowParams.y;
    u_xlatb82 = (x_753 == 1.0f);
    let x_755 : bool = u_xlatb82;
    if (x_755) {
      let x_759 : vec4<f32> = vs_TEXCOORD8;
      let x_762 : vec4<f32> = x_745.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_759.x, x_759.y, x_759.x, x_759.y) + x_762);
      let x_766 : vec4<f32> = u_xlat6;
      let x_767 : vec2<f32> = vec2<f32>(x_766.x, x_766.y);
      let x_770 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_767.x, x_767.y, x_770);
      let x_782 : vec3<f32> = txVec0;
      let x_784 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_782.xy, x_782.z);
      u_xlat7.x = x_784;
      let x_787 : vec4<f32> = u_xlat6;
      let x_788 : vec2<f32> = vec2<f32>(x_787.z, x_787.w);
      let x_790 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_788.x, x_788.y, x_790);
      let x_797 : vec3<f32> = txVec1;
      let x_799 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_797.xy, x_797.z);
      u_xlat7.y = x_799;
      let x_801 : vec4<f32> = vs_TEXCOORD8;
      let x_804 : vec4<f32> = x_745.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_801.x, x_801.y, x_801.x, x_801.y) + x_804);
      let x_807 : vec4<f32> = u_xlat6;
      let x_808 : vec2<f32> = vec2<f32>(x_807.x, x_807.y);
      let x_810 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_808.x, x_808.y, x_810);
      let x_817 : vec3<f32> = txVec2;
      let x_819 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_817.xy, x_817.z);
      u_xlat7.z = x_819;
      let x_822 : vec4<f32> = u_xlat6;
      let x_823 : vec2<f32> = vec2<f32>(x_822.z, x_822.w);
      let x_825 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_823.x, x_823.y, x_825);
      let x_832 : vec3<f32> = txVec3;
      let x_834 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_832.xy, x_832.z);
      u_xlat7.w = x_834;
      let x_837 : vec4<f32> = u_xlat7;
      u_xlat82 = dot(x_837, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_844 : f32 = x_745.x_MainLightShadowParams.y;
      u_xlatb83 = (x_844 == 2.0f);
      let x_846 : bool = u_xlatb83;
      if (x_846) {
        let x_849 : vec4<f32> = vs_TEXCOORD8;
        let x_852 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_855 : vec2<f32> = ((vec2<f32>(x_849.x, x_849.y) * vec2<f32>(x_852.z, x_852.w)) + vec2<f32>(0.5f, 0.5f));
        let x_856 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_855.x, x_855.y, x_856.z, x_856.w);
        let x_858 : vec4<f32> = u_xlat6;
        let x_860 : vec2<f32> = floor(vec2<f32>(x_858.x, x_858.y));
        let x_861 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_860.x, x_860.y, x_861.z, x_861.w);
        let x_865 : vec4<f32> = vs_TEXCOORD8;
        let x_868 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_871 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_865.x, x_865.y) * vec2<f32>(x_868.z, x_868.w)) + -(vec2<f32>(x_871.x, x_871.y)));
        let x_875 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_875.x, x_875.x, x_875.y, x_875.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_879 : vec4<f32> = u_xlat7;
        let x_881 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_879.x, x_879.x, x_879.z, x_879.z) * vec4<f32>(x_881.x, x_881.x, x_881.z, x_881.z));
        let x_884 : vec4<f32> = u_xlat8;
        let x_888 : vec2<f32> = (vec2<f32>(x_884.y, x_884.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_889 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_888.x, x_889.y, x_888.y, x_889.w);
        let x_891 : vec4<f32> = u_xlat8;
        let x_894 : vec2<f32> = u_xlat58;
        let x_896 : vec2<f32> = ((vec2<f32>(x_891.x, x_891.z) * vec2<f32>(0.5f, 0.5f)) + -(x_894));
        let x_897 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_896.x, x_896.y, x_897.z, x_897.w);
        let x_900 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_900) + vec2<f32>(1.0f, 1.0f));
        let x_904 : vec2<f32> = u_xlat58;
        let x_906 : vec2<f32> = min(x_904, vec2<f32>(0.0f, 0.0f));
        let x_907 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_906.x, x_906.y, x_907.z, x_907.w);
        let x_909 : vec4<f32> = u_xlat9;
        let x_912 : vec4<f32> = u_xlat9;
        let x_915 : vec2<f32> = u_xlat60;
        let x_916 : vec2<f32> = ((-(vec2<f32>(x_909.x, x_909.y)) * vec2<f32>(x_912.x, x_912.y)) + x_915);
        let x_917 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_916.x, x_916.y, x_917.z, x_917.w);
        let x_919 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_919, vec2<f32>(0.0f, 0.0f));
        let x_921 : vec2<f32> = u_xlat58;
        let x_923 : vec2<f32> = u_xlat58;
        let x_925 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_921) * x_923) + vec2<f32>(x_925.y, x_925.w));
        let x_928 : vec4<f32> = u_xlat9;
        let x_930 : vec2<f32> = (vec2<f32>(x_928.x, x_928.y) + vec2<f32>(1.0f, 1.0f));
        let x_931 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_930.x, x_930.y, x_931.z, x_931.w);
        let x_933 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_933 + vec2<f32>(1.0f, 1.0f));
        let x_935 : vec4<f32> = u_xlat8;
        let x_939 : vec2<f32> = (vec2<f32>(x_935.x, x_935.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_940 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_939.x, x_939.y, x_940.z, x_940.w);
        let x_942 : vec2<f32> = u_xlat60;
        let x_943 : vec2<f32> = (x_942 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_944 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_943.x, x_943.y, x_944.z, x_944.w);
        let x_946 : vec4<f32> = u_xlat9;
        let x_948 : vec2<f32> = (vec2<f32>(x_946.x, x_946.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_949 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_948.x, x_948.y, x_949.z, x_949.w);
        let x_951 : vec2<f32> = u_xlat58;
        let x_952 : vec2<f32> = (x_951 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_953 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_952.x, x_952.y, x_953.z, x_953.w);
        let x_955 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_955.y, x_955.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_959 : f32 = u_xlat9.x;
        u_xlat10.z = x_959;
        let x_962 : f32 = u_xlat58.x;
        u_xlat10.w = x_962;
        let x_965 : f32 = u_xlat11.x;
        u_xlat8.z = x_965;
        let x_968 : f32 = u_xlat7.x;
        u_xlat8.w = x_968;
        let x_970 : vec4<f32> = u_xlat8;
        let x_972 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_970.z, x_970.w, x_970.x, x_970.z) + vec4<f32>(x_972.z, x_972.w, x_972.x, x_972.z));
        let x_976 : f32 = u_xlat10.y;
        u_xlat9.z = x_976;
        let x_979 : f32 = u_xlat58.y;
        u_xlat9.w = x_979;
        let x_982 : f32 = u_xlat8.y;
        u_xlat11.z = x_982;
        let x_985 : f32 = u_xlat7.z;
        u_xlat11.w = x_985;
        let x_987 : vec4<f32> = u_xlat9;
        let x_989 : vec4<f32> = u_xlat11;
        let x_991 : vec3<f32> = (vec3<f32>(x_987.z, x_987.y, x_987.w) + vec3<f32>(x_989.z, x_989.y, x_989.w));
        let x_992 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_991.x, x_991.y, x_991.z, x_992.w);
        let x_994 : vec4<f32> = u_xlat8;
        let x_996 : vec4<f32> = u_xlat12;
        let x_998 : vec3<f32> = (vec3<f32>(x_994.x, x_994.z, x_994.w) / vec3<f32>(x_996.z, x_996.w, x_996.y));
        let x_999 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_998.x, x_998.y, x_998.z, x_999.w);
        let x_1001 : vec4<f32> = u_xlat8;
        let x_1007 : vec3<f32> = (vec3<f32>(x_1001.x, x_1001.y, x_1001.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1008 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1007.x, x_1007.y, x_1007.z, x_1008.w);
        let x_1010 : vec4<f32> = u_xlat11;
        let x_1012 : vec4<f32> = u_xlat7;
        let x_1014 : vec3<f32> = (vec3<f32>(x_1010.z, x_1010.y, x_1010.w) / vec3<f32>(x_1012.x, x_1012.y, x_1012.z));
        let x_1015 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1014.x, x_1014.y, x_1014.z, x_1015.w);
        let x_1017 : vec4<f32> = u_xlat9;
        let x_1019 : vec3<f32> = (vec3<f32>(x_1017.x, x_1017.y, x_1017.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1020 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1019.x, x_1019.y, x_1019.z, x_1020.w);
        let x_1022 : vec4<f32> = u_xlat8;
        let x_1025 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1027 : vec3<f32> = (vec3<f32>(x_1022.y, x_1022.x, x_1022.z) * vec3<f32>(x_1025.x, x_1025.x, x_1025.x));
        let x_1028 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1027.x, x_1027.y, x_1027.z, x_1028.w);
        let x_1030 : vec4<f32> = u_xlat9;
        let x_1033 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1035 : vec3<f32> = (vec3<f32>(x_1030.x, x_1030.y, x_1030.z) * vec3<f32>(x_1033.y, x_1033.y, x_1033.y));
        let x_1036 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1035.x, x_1035.y, x_1035.z, x_1036.w);
        let x_1039 : f32 = u_xlat9.x;
        u_xlat8.w = x_1039;
        let x_1041 : vec4<f32> = u_xlat6;
        let x_1044 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1047 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1041.x, x_1041.y, x_1041.x, x_1041.y) * vec4<f32>(x_1044.x, x_1044.y, x_1044.x, x_1044.y)) + vec4<f32>(x_1047.y, x_1047.w, x_1047.x, x_1047.w));
        let x_1050 : vec4<f32> = u_xlat6;
        let x_1053 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1056 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_1050.x, x_1050.y) * vec2<f32>(x_1053.x, x_1053.y)) + vec2<f32>(x_1056.z, x_1056.w));
        let x_1060 : f32 = u_xlat8.y;
        u_xlat9.w = x_1060;
        let x_1062 : vec4<f32> = u_xlat9;
        let x_1063 : vec2<f32> = vec2<f32>(x_1062.y, x_1062.z);
        let x_1064 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1064.x, x_1063.x, x_1064.z, x_1063.y);
        let x_1066 : vec4<f32> = u_xlat6;
        let x_1069 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1072 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1066.x, x_1066.y, x_1066.x, x_1066.y) * vec4<f32>(x_1069.x, x_1069.y, x_1069.x, x_1069.y)) + vec4<f32>(x_1072.x, x_1072.y, x_1072.z, x_1072.y));
        let x_1075 : vec4<f32> = u_xlat6;
        let x_1078 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1081 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1075.x, x_1075.y, x_1075.x, x_1075.y) * vec4<f32>(x_1078.x, x_1078.y, x_1078.x, x_1078.y)) + vec4<f32>(x_1081.w, x_1081.y, x_1081.w, x_1081.z));
        let x_1084 : vec4<f32> = u_xlat6;
        let x_1087 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1090 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1084.x, x_1084.y, x_1084.x, x_1084.y) * vec4<f32>(x_1087.x, x_1087.y, x_1087.x, x_1087.y)) + vec4<f32>(x_1090.x, x_1090.w, x_1090.z, x_1090.w));
        let x_1093 : vec4<f32> = u_xlat7;
        let x_1095 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1093.x, x_1093.x, x_1093.x, x_1093.y) * vec4<f32>(x_1095.z, x_1095.w, x_1095.y, x_1095.z));
        let x_1099 : vec4<f32> = u_xlat7;
        let x_1101 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1099.y, x_1099.y, x_1099.z, x_1099.z) * x_1101);
        let x_1105 : f32 = u_xlat7.z;
        let x_1107 : f32 = u_xlat12.y;
        u_xlat83 = (x_1105 * x_1107);
        let x_1110 : vec4<f32> = u_xlat10;
        let x_1111 : vec2<f32> = vec2<f32>(x_1110.x, x_1110.y);
        let x_1113 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1111.x, x_1111.y, x_1113);
        let x_1120 : vec3<f32> = txVec4;
        let x_1122 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1120.xy, x_1120.z);
        u_xlat6.x = x_1122;
        let x_1125 : vec4<f32> = u_xlat10;
        let x_1126 : vec2<f32> = vec2<f32>(x_1125.z, x_1125.w);
        let x_1128 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1126.x, x_1126.y, x_1128);
        let x_1136 : vec3<f32> = txVec5;
        let x_1138 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1136.xy, x_1136.z);
        u_xlat32 = x_1138;
        let x_1139 : f32 = u_xlat32;
        let x_1141 : f32 = u_xlat13.y;
        u_xlat32 = (x_1139 * x_1141);
        let x_1144 : f32 = u_xlat13.x;
        let x_1146 : f32 = u_xlat6.x;
        let x_1148 : f32 = u_xlat32;
        u_xlat6.x = ((x_1144 * x_1146) + x_1148);
        let x_1152 : vec2<f32> = u_xlat58;
        let x_1154 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1152.x, x_1152.y, x_1154);
        let x_1161 : vec3<f32> = txVec6;
        let x_1163 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1161.xy, x_1161.z);
        u_xlat32 = x_1163;
        let x_1165 : f32 = u_xlat13.z;
        let x_1166 : f32 = u_xlat32;
        let x_1169 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1165 * x_1166) + x_1169);
        let x_1173 : vec4<f32> = u_xlat9;
        let x_1174 : vec2<f32> = vec2<f32>(x_1173.x, x_1173.y);
        let x_1176 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1174.x, x_1174.y, x_1176);
        let x_1183 : vec3<f32> = txVec7;
        let x_1185 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1183.xy, x_1183.z);
        u_xlat32 = x_1185;
        let x_1187 : f32 = u_xlat13.w;
        let x_1188 : f32 = u_xlat32;
        let x_1191 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1187 * x_1188) + x_1191);
        let x_1195 : vec4<f32> = u_xlat11;
        let x_1196 : vec2<f32> = vec2<f32>(x_1195.x, x_1195.y);
        let x_1198 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1196.x, x_1196.y, x_1198);
        let x_1205 : vec3<f32> = txVec8;
        let x_1207 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1205.xy, x_1205.z);
        u_xlat32 = x_1207;
        let x_1209 : f32 = u_xlat14.x;
        let x_1210 : f32 = u_xlat32;
        let x_1213 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1209 * x_1210) + x_1213);
        let x_1217 : vec4<f32> = u_xlat11;
        let x_1218 : vec2<f32> = vec2<f32>(x_1217.z, x_1217.w);
        let x_1220 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1218.x, x_1218.y, x_1220);
        let x_1227 : vec3<f32> = txVec9;
        let x_1229 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1227.xy, x_1227.z);
        u_xlat32 = x_1229;
        let x_1231 : f32 = u_xlat14.y;
        let x_1232 : f32 = u_xlat32;
        let x_1235 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1231 * x_1232) + x_1235);
        let x_1239 : vec4<f32> = u_xlat9;
        let x_1240 : vec2<f32> = vec2<f32>(x_1239.z, x_1239.w);
        let x_1242 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1240.x, x_1240.y, x_1242);
        let x_1249 : vec3<f32> = txVec10;
        let x_1251 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1249.xy, x_1249.z);
        u_xlat32 = x_1251;
        let x_1253 : f32 = u_xlat14.z;
        let x_1254 : f32 = u_xlat32;
        let x_1257 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1253 * x_1254) + x_1257);
        let x_1261 : vec4<f32> = u_xlat8;
        let x_1262 : vec2<f32> = vec2<f32>(x_1261.x, x_1261.y);
        let x_1264 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1262.x, x_1262.y, x_1264);
        let x_1271 : vec3<f32> = txVec11;
        let x_1273 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1271.xy, x_1271.z);
        u_xlat32 = x_1273;
        let x_1275 : f32 = u_xlat14.w;
        let x_1276 : f32 = u_xlat32;
        let x_1279 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1275 * x_1276) + x_1279);
        let x_1283 : vec4<f32> = u_xlat8;
        let x_1284 : vec2<f32> = vec2<f32>(x_1283.z, x_1283.w);
        let x_1286 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1284.x, x_1284.y, x_1286);
        let x_1293 : vec3<f32> = txVec12;
        let x_1295 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1293.xy, x_1293.z);
        u_xlat32 = x_1295;
        let x_1296 : f32 = u_xlat83;
        let x_1297 : f32 = u_xlat32;
        let x_1300 : f32 = u_xlat6.x;
        u_xlat82 = ((x_1296 * x_1297) + x_1300);
      } else {
        let x_1303 : vec4<f32> = vs_TEXCOORD8;
        let x_1306 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1309 : vec2<f32> = ((vec2<f32>(x_1303.x, x_1303.y) * vec2<f32>(x_1306.z, x_1306.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1310 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1309.x, x_1309.y, x_1310.z, x_1310.w);
        let x_1312 : vec4<f32> = u_xlat6;
        let x_1314 : vec2<f32> = floor(vec2<f32>(x_1312.x, x_1312.y));
        let x_1315 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1314.x, x_1314.y, x_1315.z, x_1315.w);
        let x_1317 : vec4<f32> = vs_TEXCOORD8;
        let x_1320 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1323 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1317.x, x_1317.y) * vec2<f32>(x_1320.z, x_1320.w)) + -(vec2<f32>(x_1323.x, x_1323.y)));
        let x_1327 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1327.x, x_1327.x, x_1327.y, x_1327.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1330 : vec4<f32> = u_xlat7;
        let x_1332 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1330.x, x_1330.x, x_1330.z, x_1330.z) * vec4<f32>(x_1332.x, x_1332.x, x_1332.z, x_1332.z));
        let x_1335 : vec4<f32> = u_xlat8;
        let x_1339 : vec2<f32> = (vec2<f32>(x_1335.y, x_1335.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1340 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1340.x, x_1339.x, x_1340.z, x_1339.y);
        let x_1342 : vec4<f32> = u_xlat8;
        let x_1345 : vec2<f32> = u_xlat58;
        let x_1347 : vec2<f32> = ((vec2<f32>(x_1342.x, x_1342.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1345));
        let x_1348 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1347.x, x_1348.y, x_1347.y, x_1348.w);
        let x_1350 : vec2<f32> = u_xlat58;
        let x_1352 : vec2<f32> = (-(x_1350) + vec2<f32>(1.0f, 1.0f));
        let x_1353 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1352.x, x_1352.y, x_1353.z, x_1353.w);
        let x_1355 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1355, vec2<f32>(0.0f, 0.0f));
        let x_1357 : vec2<f32> = u_xlat60;
        let x_1359 : vec2<f32> = u_xlat60;
        let x_1361 : vec4<f32> = u_xlat8;
        let x_1363 : vec2<f32> = ((-(x_1357) * x_1359) + vec2<f32>(x_1361.x, x_1361.y));
        let x_1364 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1363.x, x_1363.y, x_1364.z, x_1364.w);
        let x_1366 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1366, vec2<f32>(0.0f, 0.0f));
        let x_1369 : vec2<f32> = u_xlat60;
        let x_1371 : vec2<f32> = u_xlat60;
        let x_1373 : vec4<f32> = u_xlat7;
        let x_1375 : vec2<f32> = ((-(x_1369) * x_1371) + vec2<f32>(x_1373.y, x_1373.w));
        let x_1376 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1375.x, x_1376.y, x_1375.y);
        let x_1378 : vec4<f32> = u_xlat8;
        let x_1381 : vec2<f32> = (vec2<f32>(x_1378.x, x_1378.y) + vec2<f32>(2.0f, 2.0f));
        let x_1382 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1381.x, x_1381.y, x_1382.z, x_1382.w);
        let x_1384 : vec3<f32> = u_xlat33;
        let x_1386 : vec2<f32> = (vec2<f32>(x_1384.x, x_1384.z) + vec2<f32>(2.0f, 2.0f));
        let x_1387 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1387.x, x_1386.x, x_1387.z, x_1386.y);
        let x_1390 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1390 * 0.08163200318813323975f);
        let x_1394 : vec4<f32> = u_xlat7;
        let x_1397 : vec3<f32> = (vec3<f32>(x_1394.z, x_1394.x, x_1394.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1398 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1397.x, x_1397.y, x_1397.z, x_1398.w);
        let x_1400 : vec4<f32> = u_xlat8;
        let x_1403 : vec2<f32> = (vec2<f32>(x_1400.x, x_1400.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1404 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1403.x, x_1403.y, x_1404.z, x_1404.w);
        let x_1407 : f32 = u_xlat11.y;
        u_xlat10.x = x_1407;
        let x_1409 : vec2<f32> = u_xlat58;
        let x_1416 : vec2<f32> = ((vec2<f32>(x_1409.x, x_1409.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1417 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1417.x, x_1416.x, x_1417.z, x_1416.y);
        let x_1419 : vec2<f32> = u_xlat58;
        let x_1423 : vec2<f32> = ((vec2<f32>(x_1419.x, x_1419.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1424 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1423.x, x_1424.y, x_1423.y, x_1424.w);
        let x_1427 : f32 = u_xlat7.x;
        u_xlat8.y = x_1427;
        let x_1430 : f32 = u_xlat9.y;
        u_xlat8.w = x_1430;
        let x_1432 : vec4<f32> = u_xlat8;
        let x_1433 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1432 + x_1433);
        let x_1435 : vec2<f32> = u_xlat58;
        let x_1438 : vec2<f32> = ((vec2<f32>(x_1435.y, x_1435.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1439 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1439.x, x_1438.x, x_1439.z, x_1438.y);
        let x_1441 : vec2<f32> = u_xlat58;
        let x_1444 : vec2<f32> = ((vec2<f32>(x_1441.y, x_1441.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1445 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1444.x, x_1445.y, x_1444.y, x_1445.w);
        let x_1448 : f32 = u_xlat7.y;
        u_xlat9.y = x_1448;
        let x_1450 : vec4<f32> = u_xlat9;
        let x_1451 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1450 + x_1451);
        let x_1453 : vec4<f32> = u_xlat8;
        let x_1454 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1453 / x_1454);
        let x_1456 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1456 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1462 : vec4<f32> = u_xlat9;
        let x_1463 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1462 / x_1463);
        let x_1465 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1465 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1467 : vec4<f32> = u_xlat8;
        let x_1470 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1467.w, x_1467.x, x_1467.y, x_1467.z) * vec4<f32>(x_1470.x, x_1470.x, x_1470.x, x_1470.x));
        let x_1473 : vec4<f32> = u_xlat9;
        let x_1476 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1473.x, x_1473.w, x_1473.y, x_1473.z) * vec4<f32>(x_1476.y, x_1476.y, x_1476.y, x_1476.y));
        let x_1479 : vec4<f32> = u_xlat8;
        let x_1480 : vec3<f32> = vec3<f32>(x_1479.y, x_1479.z, x_1479.w);
        let x_1481 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1480.x, x_1481.y, x_1480.y, x_1480.z);
        let x_1484 : f32 = u_xlat9.x;
        u_xlat11.y = x_1484;
        let x_1486 : vec4<f32> = u_xlat6;
        let x_1489 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1492 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1486.x, x_1486.y, x_1486.x, x_1486.y) * vec4<f32>(x_1489.x, x_1489.y, x_1489.x, x_1489.y)) + vec4<f32>(x_1492.x, x_1492.y, x_1492.z, x_1492.y));
        let x_1495 : vec4<f32> = u_xlat6;
        let x_1498 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1501 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1495.x, x_1495.y) * vec2<f32>(x_1498.x, x_1498.y)) + vec2<f32>(x_1501.w, x_1501.y));
        let x_1505 : f32 = u_xlat11.y;
        u_xlat8.y = x_1505;
        let x_1508 : f32 = u_xlat9.z;
        u_xlat11.y = x_1508;
        let x_1510 : vec4<f32> = u_xlat6;
        let x_1513 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1516 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1510.x, x_1510.y, x_1510.x, x_1510.y) * vec4<f32>(x_1513.x, x_1513.y, x_1513.x, x_1513.y)) + vec4<f32>(x_1516.x, x_1516.y, x_1516.z, x_1516.y));
        let x_1519 : vec4<f32> = u_xlat6;
        let x_1522 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1525 : vec4<f32> = u_xlat11;
        let x_1527 : vec2<f32> = ((vec2<f32>(x_1519.x, x_1519.y) * vec2<f32>(x_1522.x, x_1522.y)) + vec2<f32>(x_1525.w, x_1525.y));
        let x_1528 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1527.x, x_1527.y, x_1528.z, x_1528.w);
        let x_1531 : f32 = u_xlat11.y;
        u_xlat8.z = x_1531;
        let x_1534 : vec4<f32> = u_xlat6;
        let x_1537 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1540 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1534.x, x_1534.y, x_1534.x, x_1534.y) * vec4<f32>(x_1537.x, x_1537.y, x_1537.x, x_1537.y)) + vec4<f32>(x_1540.x, x_1540.y, x_1540.x, x_1540.z));
        let x_1544 : f32 = u_xlat9.w;
        u_xlat11.y = x_1544;
        let x_1547 : vec4<f32> = u_xlat6;
        let x_1550 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1553 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1547.x, x_1547.y, x_1547.x, x_1547.y) * vec4<f32>(x_1550.x, x_1550.y, x_1550.x, x_1550.y)) + vec4<f32>(x_1553.x, x_1553.y, x_1553.z, x_1553.y));
        let x_1557 : vec4<f32> = u_xlat6;
        let x_1560 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1563 : vec4<f32> = u_xlat11;
        u_xlat34 = ((vec2<f32>(x_1557.x, x_1557.y) * vec2<f32>(x_1560.x, x_1560.y)) + vec2<f32>(x_1563.w, x_1563.y));
        let x_1567 : f32 = u_xlat11.y;
        u_xlat8.w = x_1567;
        let x_1570 : vec4<f32> = u_xlat6;
        let x_1573 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1576 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1570.x, x_1570.y) * vec2<f32>(x_1573.x, x_1573.y)) + vec2<f32>(x_1576.x, x_1576.w));
        let x_1579 : vec4<f32> = u_xlat11;
        let x_1580 : vec3<f32> = vec3<f32>(x_1579.x, x_1579.z, x_1579.w);
        let x_1581 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1580.x, x_1581.y, x_1580.y, x_1580.z);
        let x_1583 : vec4<f32> = u_xlat6;
        let x_1586 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1589 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1583.x, x_1583.y, x_1583.x, x_1583.y) * vec4<f32>(x_1586.x, x_1586.y, x_1586.x, x_1586.y)) + vec4<f32>(x_1589.x, x_1589.y, x_1589.z, x_1589.y));
        let x_1593 : vec4<f32> = u_xlat6;
        let x_1596 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1599 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1593.x, x_1593.y) * vec2<f32>(x_1596.x, x_1596.y)) + vec2<f32>(x_1599.w, x_1599.y));
        let x_1603 : f32 = u_xlat8.x;
        u_xlat9.x = x_1603;
        let x_1605 : vec4<f32> = u_xlat6;
        let x_1608 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1611 : vec4<f32> = u_xlat9;
        let x_1613 : vec2<f32> = ((vec2<f32>(x_1605.x, x_1605.y) * vec2<f32>(x_1608.x, x_1608.y)) + vec2<f32>(x_1611.x, x_1611.y));
        let x_1614 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1613.x, x_1613.y, x_1614.z, x_1614.w);
        let x_1617 : vec4<f32> = u_xlat7;
        let x_1619 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1617.x, x_1617.x, x_1617.x, x_1617.x) * x_1619);
        let x_1622 : vec4<f32> = u_xlat7;
        let x_1624 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1622.y, x_1622.y, x_1622.y, x_1622.y) * x_1624);
        let x_1627 : vec4<f32> = u_xlat7;
        let x_1629 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1627.z, x_1627.z, x_1627.z, x_1627.z) * x_1629);
        let x_1631 : vec4<f32> = u_xlat7;
        let x_1633 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1631.w, x_1631.w, x_1631.w, x_1631.w) * x_1633);
        let x_1636 : vec4<f32> = u_xlat12;
        let x_1637 : vec2<f32> = vec2<f32>(x_1636.x, x_1636.y);
        let x_1639 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1637.x, x_1637.y, x_1639);
        let x_1646 : vec3<f32> = txVec13;
        let x_1648 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1646.xy, x_1646.z);
        u_xlat83 = x_1648;
        let x_1650 : vec4<f32> = u_xlat12;
        let x_1651 : vec2<f32> = vec2<f32>(x_1650.z, x_1650.w);
        let x_1653 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1651.x, x_1651.y, x_1653);
        let x_1660 : vec3<f32> = txVec14;
        let x_1662 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1660.xy, x_1660.z);
        u_xlat8.x = x_1662;
        let x_1665 : f32 = u_xlat8.x;
        let x_1667 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1665 * x_1667);
        let x_1671 : f32 = u_xlat17.x;
        let x_1672 : f32 = u_xlat83;
        let x_1675 : f32 = u_xlat8.x;
        u_xlat83 = ((x_1671 * x_1672) + x_1675);
        let x_1678 : vec2<f32> = u_xlat58;
        let x_1680 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1678.x, x_1678.y, x_1680);
        let x_1687 : vec3<f32> = txVec15;
        let x_1689 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1687.xy, x_1687.z);
        u_xlat58.x = x_1689;
        let x_1692 : f32 = u_xlat17.z;
        let x_1694 : f32 = u_xlat58.x;
        let x_1696 : f32 = u_xlat83;
        u_xlat83 = ((x_1692 * x_1694) + x_1696);
        let x_1699 : vec4<f32> = u_xlat15;
        let x_1700 : vec2<f32> = vec2<f32>(x_1699.x, x_1699.y);
        let x_1702 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1700.x, x_1700.y, x_1702);
        let x_1709 : vec3<f32> = txVec16;
        let x_1711 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1709.xy, x_1709.z);
        u_xlat58.x = x_1711;
        let x_1714 : f32 = u_xlat17.w;
        let x_1716 : f32 = u_xlat58.x;
        let x_1718 : f32 = u_xlat83;
        u_xlat83 = ((x_1714 * x_1716) + x_1718);
        let x_1721 : vec4<f32> = u_xlat13;
        let x_1722 : vec2<f32> = vec2<f32>(x_1721.x, x_1721.y);
        let x_1724 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1722.x, x_1722.y, x_1724);
        let x_1731 : vec3<f32> = txVec17;
        let x_1733 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1731.xy, x_1731.z);
        u_xlat58.x = x_1733;
        let x_1736 : f32 = u_xlat18.x;
        let x_1738 : f32 = u_xlat58.x;
        let x_1740 : f32 = u_xlat83;
        u_xlat83 = ((x_1736 * x_1738) + x_1740);
        let x_1743 : vec4<f32> = u_xlat13;
        let x_1744 : vec2<f32> = vec2<f32>(x_1743.z, x_1743.w);
        let x_1746 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1744.x, x_1744.y, x_1746);
        let x_1753 : vec3<f32> = txVec18;
        let x_1755 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1753.xy, x_1753.z);
        u_xlat58.x = x_1755;
        let x_1758 : f32 = u_xlat18.y;
        let x_1760 : f32 = u_xlat58.x;
        let x_1762 : f32 = u_xlat83;
        u_xlat83 = ((x_1758 * x_1760) + x_1762);
        let x_1765 : vec4<f32> = u_xlat14;
        let x_1766 : vec2<f32> = vec2<f32>(x_1765.x, x_1765.y);
        let x_1768 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1766.x, x_1766.y, x_1768);
        let x_1775 : vec3<f32> = txVec19;
        let x_1777 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1775.xy, x_1775.z);
        u_xlat58.x = x_1777;
        let x_1780 : f32 = u_xlat18.z;
        let x_1782 : f32 = u_xlat58.x;
        let x_1784 : f32 = u_xlat83;
        u_xlat83 = ((x_1780 * x_1782) + x_1784);
        let x_1787 : vec4<f32> = u_xlat15;
        let x_1788 : vec2<f32> = vec2<f32>(x_1787.z, x_1787.w);
        let x_1790 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1788.x, x_1788.y, x_1790);
        let x_1797 : vec3<f32> = txVec20;
        let x_1799 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1797.xy, x_1797.z);
        u_xlat58.x = x_1799;
        let x_1802 : f32 = u_xlat18.w;
        let x_1804 : f32 = u_xlat58.x;
        let x_1806 : f32 = u_xlat83;
        u_xlat83 = ((x_1802 * x_1804) + x_1806);
        let x_1809 : vec4<f32> = u_xlat16;
        let x_1810 : vec2<f32> = vec2<f32>(x_1809.x, x_1809.y);
        let x_1812 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1810.x, x_1810.y, x_1812);
        let x_1819 : vec3<f32> = txVec21;
        let x_1821 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1819.xy, x_1819.z);
        u_xlat58.x = x_1821;
        let x_1824 : f32 = u_xlat19.x;
        let x_1826 : f32 = u_xlat58.x;
        let x_1828 : f32 = u_xlat83;
        u_xlat83 = ((x_1824 * x_1826) + x_1828);
        let x_1831 : vec4<f32> = u_xlat16;
        let x_1832 : vec2<f32> = vec2<f32>(x_1831.z, x_1831.w);
        let x_1834 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1832.x, x_1832.y, x_1834);
        let x_1841 : vec3<f32> = txVec22;
        let x_1843 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1841.xy, x_1841.z);
        u_xlat58.x = x_1843;
        let x_1846 : f32 = u_xlat19.y;
        let x_1848 : f32 = u_xlat58.x;
        let x_1850 : f32 = u_xlat83;
        u_xlat83 = ((x_1846 * x_1848) + x_1850);
        let x_1853 : vec2<f32> = u_xlat34;
        let x_1855 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1853.x, x_1853.y, x_1855);
        let x_1862 : vec3<f32> = txVec23;
        let x_1864 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1862.xy, x_1862.z);
        u_xlat58.x = x_1864;
        let x_1867 : f32 = u_xlat19.z;
        let x_1869 : f32 = u_xlat58.x;
        let x_1871 : f32 = u_xlat83;
        u_xlat83 = ((x_1867 * x_1869) + x_1871);
        let x_1874 : vec2<f32> = u_xlat66;
        let x_1876 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1874.x, x_1874.y, x_1876);
        let x_1883 : vec3<f32> = txVec24;
        let x_1885 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1883.xy, x_1883.z);
        u_xlat58.x = x_1885;
        let x_1888 : f32 = u_xlat19.w;
        let x_1890 : f32 = u_xlat58.x;
        let x_1892 : f32 = u_xlat83;
        u_xlat83 = ((x_1888 * x_1890) + x_1892);
        let x_1895 : vec4<f32> = u_xlat11;
        let x_1896 : vec2<f32> = vec2<f32>(x_1895.x, x_1895.y);
        let x_1898 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1896.x, x_1896.y, x_1898);
        let x_1905 : vec3<f32> = txVec25;
        let x_1907 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1905.xy, x_1905.z);
        u_xlat58.x = x_1907;
        let x_1910 : f32 = u_xlat7.x;
        let x_1912 : f32 = u_xlat58.x;
        let x_1914 : f32 = u_xlat83;
        u_xlat83 = ((x_1910 * x_1912) + x_1914);
        let x_1917 : vec4<f32> = u_xlat11;
        let x_1918 : vec2<f32> = vec2<f32>(x_1917.z, x_1917.w);
        let x_1920 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1918.x, x_1918.y, x_1920);
        let x_1927 : vec3<f32> = txVec26;
        let x_1929 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1927.xy, x_1927.z);
        u_xlat58.x = x_1929;
        let x_1932 : f32 = u_xlat7.y;
        let x_1934 : f32 = u_xlat58.x;
        let x_1936 : f32 = u_xlat83;
        u_xlat83 = ((x_1932 * x_1934) + x_1936);
        let x_1939 : vec2<f32> = u_xlat61;
        let x_1941 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1939.x, x_1939.y, x_1941);
        let x_1948 : vec3<f32> = txVec27;
        let x_1950 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1948.xy, x_1948.z);
        u_xlat58.x = x_1950;
        let x_1953 : f32 = u_xlat7.z;
        let x_1955 : f32 = u_xlat58.x;
        let x_1957 : f32 = u_xlat83;
        u_xlat83 = ((x_1953 * x_1955) + x_1957);
        let x_1960 : vec4<f32> = u_xlat6;
        let x_1961 : vec2<f32> = vec2<f32>(x_1960.x, x_1960.y);
        let x_1963 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1961.x, x_1961.y, x_1963);
        let x_1970 : vec3<f32> = txVec28;
        let x_1972 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1970.xy, x_1970.z);
        u_xlat6.x = x_1972;
        let x_1975 : f32 = u_xlat7.w;
        let x_1977 : f32 = u_xlat6.x;
        let x_1979 : f32 = u_xlat83;
        u_xlat82 = ((x_1975 * x_1977) + x_1979);
      }
    }
  } else {
    let x_1983 : vec4<f32> = vs_TEXCOORD8;
    let x_1984 : vec2<f32> = vec2<f32>(x_1983.x, x_1983.y);
    let x_1986 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1984.x, x_1984.y, x_1986);
    let x_1993 : vec3<f32> = txVec29;
    let x_1995 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1993.xy, x_1993.z);
    u_xlat82 = x_1995;
  }
  let x_1997 : f32 = x_745.x_MainLightShadowParams.x;
  u_xlat83 = (-(x_1997) + 1.0f);
  let x_2000 : f32 = u_xlat82;
  let x_2002 : f32 = x_745.x_MainLightShadowParams.x;
  let x_2004 : f32 = u_xlat83;
  u_xlat82 = ((x_2000 * x_2002) + x_2004);
  let x_2007 : f32 = vs_TEXCOORD8.z;
  u_xlatb83 = (0.0f >= x_2007);
  let x_2011 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (x_2011 >= 1.0f);
  let x_2013 : bool = u_xlatb83;
  let x_2014 : bool = u_xlatb6;
  u_xlatb83 = (x_2013 | x_2014);
  let x_2016 : bool = u_xlatb83;
  let x_2017 : f32 = u_xlat82;
  u_xlat82 = select(x_2017, 1.0f, x_2016);
  let x_2019 : vec3<f32> = vs_TEXCOORD7;
  let x_2021 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_2023 : vec3<f32> = (x_2019 + -(x_2021));
  let x_2024 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2023.x, x_2023.y, x_2023.z, x_2024.w);
  let x_2026 : vec4<f32> = u_xlat6;
  let x_2028 : vec4<f32> = u_xlat6;
  u_xlat83 = dot(vec3<f32>(x_2026.x, x_2026.y, x_2026.z), vec3<f32>(x_2028.x, x_2028.y, x_2028.z));
  let x_2031 : f32 = u_xlat83;
  let x_2033 : f32 = x_745.x_MainLightShadowParams.z;
  let x_2036 : f32 = x_745.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_2031 * x_2033) + x_2036);
  let x_2040 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_2040, 0.0f, 1.0f);
  let x_2043 : f32 = u_xlat82;
  u_xlat32 = (-(x_2043) + 1.0f);
  let x_2047 : f32 = u_xlat6.x;
  let x_2048 : f32 = u_xlat32;
  let x_2050 : f32 = u_xlat82;
  u_xlat82 = ((x_2047 * x_2048) + x_2050);
  let x_2059 : f32 = x_2057.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_2059 == -1.0f));
  let x_2061 : bool = u_xlatb6;
  if (x_2061) {
    let x_2064 : vec3<f32> = vs_TEXCOORD7;
    let x_2067 : vec4<f32> = x_2057.x_MainLightWorldToLight[1i];
    let x_2069 : vec2<f32> = (vec2<f32>(x_2064.y, x_2064.y) * vec2<f32>(x_2067.x, x_2067.y));
    let x_2070 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2069.x, x_2069.y, x_2070.z, x_2070.w);
    let x_2073 : vec4<f32> = x_2057.x_MainLightWorldToLight[0i];
    let x_2075 : vec3<f32> = vs_TEXCOORD7;
    let x_2078 : vec4<f32> = u_xlat6;
    let x_2080 : vec2<f32> = ((vec2<f32>(x_2073.x, x_2073.y) * vec2<f32>(x_2075.x, x_2075.x)) + vec2<f32>(x_2078.x, x_2078.y));
    let x_2081 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2080.x, x_2080.y, x_2081.z, x_2081.w);
    let x_2084 : vec4<f32> = x_2057.x_MainLightWorldToLight[2i];
    let x_2086 : vec3<f32> = vs_TEXCOORD7;
    let x_2089 : vec4<f32> = u_xlat6;
    let x_2091 : vec2<f32> = ((vec2<f32>(x_2084.x, x_2084.y) * vec2<f32>(x_2086.z, x_2086.z)) + vec2<f32>(x_2089.x, x_2089.y));
    let x_2092 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2091.x, x_2091.y, x_2092.z, x_2092.w);
    let x_2094 : vec4<f32> = u_xlat6;
    let x_2098 : vec4<f32> = x_2057.x_MainLightWorldToLight[3i];
    let x_2100 : vec2<f32> = (vec2<f32>(x_2094.x, x_2094.y) + vec2<f32>(x_2098.x, x_2098.y));
    let x_2101 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2100.x, x_2100.y, x_2101.z, x_2101.w);
    let x_2103 : vec4<f32> = u_xlat6;
    let x_2106 : vec2<f32> = ((vec2<f32>(x_2103.x, x_2103.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2107 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2106.x, x_2106.y, x_2107.z, x_2107.w);
    let x_2114 : vec4<f32> = u_xlat6;
    let x_2117 : f32 = x_111.x_GlobalMipBias.x;
    let x_2118 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2114.x, x_2114.y), x_2117);
    u_xlat6 = x_2118;
    let x_2123 : f32 = x_2057.x_MainLightCookieTextureFormat;
    let x_2125 : f32 = x_2057.x_MainLightCookieTextureFormat;
    let x_2127 : f32 = x_2057.x_MainLightCookieTextureFormat;
    let x_2129 : f32 = x_2057.x_MainLightCookieTextureFormat;
    let x_2130 : vec4<f32> = vec4<f32>(x_2123, x_2125, x_2127, x_2129);
    let x_2137 : vec4<bool> = (vec4<f32>(x_2130.x, x_2130.y, x_2130.z, x_2130.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2137.x, x_2137.y);
    let x_2141 : bool = u_xlatb7.y;
    if (x_2141) {
      let x_2146 : f32 = u_xlat6.w;
      x_2142 = x_2146;
    } else {
      let x_2149 : f32 = u_xlat6.x;
      x_2142 = x_2149;
    }
    let x_2150 : f32 = x_2142;
    u_xlat84 = x_2150;
    let x_2152 : bool = u_xlatb7.x;
    if (x_2152) {
      let x_2156 : vec4<f32> = u_xlat6;
      x_2153 = vec3<f32>(x_2156.x, x_2156.y, x_2156.z);
    } else {
      let x_2159 : f32 = u_xlat84;
      x_2153 = vec3<f32>(x_2159, x_2159, x_2159);
    }
    let x_2161 : vec3<f32> = x_2153;
    let x_2162 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2161.x, x_2161.y, x_2161.z, x_2162.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2168 : vec4<f32> = u_xlat6;
  let x_2171 : vec4<f32> = x_111.x_MainLightColor;
  let x_2173 : vec3<f32> = (vec3<f32>(x_2168.x, x_2168.y, x_2168.z) * vec3<f32>(x_2171.x, x_2171.y, x_2171.z));
  let x_2174 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2173.x, x_2173.y, x_2173.z, x_2174.w);
  let x_2176 : vec3<f32> = u_xlat2;
  let x_2178 : vec4<f32> = u_xlat1;
  u_xlat84 = dot(-(x_2176), vec3<f32>(x_2178.x, x_2178.y, x_2178.z));
  let x_2181 : f32 = u_xlat84;
  let x_2182 : f32 = u_xlat84;
  u_xlat84 = (x_2181 + x_2182);
  let x_2184 : vec4<f32> = u_xlat1;
  let x_2186 : f32 = u_xlat84;
  let x_2190 : vec3<f32> = u_xlat2;
  let x_2192 : vec3<f32> = ((vec3<f32>(x_2184.x, x_2184.y, x_2184.z) * -(vec3<f32>(x_2186, x_2186, x_2186))) + -(x_2190));
  let x_2193 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2192.x, x_2192.y, x_2192.z, x_2193.w);
  let x_2195 : vec4<f32> = u_xlat1;
  let x_2197 : vec3<f32> = u_xlat2;
  u_xlat84 = dot(vec3<f32>(x_2195.x, x_2195.y, x_2195.z), x_2197);
  let x_2199 : f32 = u_xlat84;
  u_xlat84 = clamp(x_2199, 0.0f, 1.0f);
  let x_2201 : f32 = u_xlat84;
  u_xlat84 = (-(x_2201) + 1.0f);
  let x_2204 : f32 = u_xlat84;
  let x_2205 : f32 = u_xlat84;
  u_xlat84 = (x_2204 * x_2205);
  let x_2207 : f32 = u_xlat84;
  let x_2208 : f32 = u_xlat84;
  u_xlat84 = (x_2207 * x_2208);
  let x_2212 : f32 = u_xlat0.x;
  u_xlat85 = ((-(x_2212) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2219 : f32 = u_xlat0.x;
  let x_2220 : f32 = u_xlat85;
  u_xlat0.x = (x_2219 * x_2220);
  let x_2224 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2224 * 6.0f);
  let x_2236 : vec4<f32> = u_xlat7;
  let x_2239 : f32 = u_xlat0.x;
  let x_2240 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2236.x, x_2236.y, x_2236.z), x_2239);
  u_xlat7 = x_2240;
  let x_2242 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2242 + -1.0f);
  let x_2246 : f32 = x_602.unity_SpecCube0_HDR.w;
  let x_2248 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2246 * x_2248) + 1.0f);
  let x_2253 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2253, 0.0f);
  let x_2257 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2257);
  let x_2261 : f32 = u_xlat0.x;
  let x_2263 : f32 = x_602.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2261 * x_2263);
  let x_2267 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2267);
  let x_2271 : f32 = u_xlat0.x;
  let x_2273 : f32 = x_602.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2271 * x_2273);
  let x_2276 : vec4<f32> = u_xlat7;
  let x_2278 : vec3<f32> = u_xlat0;
  let x_2280 : vec3<f32> = (vec3<f32>(x_2276.x, x_2276.y, x_2276.z) * vec3<f32>(x_2278.x, x_2278.x, x_2278.x));
  let x_2281 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2280.x, x_2280.y, x_2280.z, x_2281.w);
  let x_2283 : f32 = u_xlat52;
  let x_2285 : f32 = u_xlat52;
  let x_2289 : vec2<f32> = ((vec2<f32>(x_2283, x_2283) * vec2<f32>(x_2285, x_2285)) + vec2<f32>(-1.0f, 1.0f));
  let x_2290 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2289.x, x_2290.y, x_2289.y);
  let x_2293 : f32 = u_xlat0.z;
  u_xlat52 = (1.0f / x_2293);
  let x_2295 : vec4<f32> = u_xlat5;
  let x_2298 : f32 = u_xlat80;
  let x_2300 : vec3<f32> = (-(vec3<f32>(x_2295.x, x_2295.y, x_2295.z)) + vec3<f32>(x_2298, x_2298, x_2298));
  let x_2301 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2300.x, x_2300.y, x_2300.z, x_2301.w);
  let x_2303 : f32 = u_xlat84;
  let x_2305 : vec4<f32> = u_xlat8;
  let x_2308 : vec4<f32> = u_xlat5;
  let x_2310 : vec3<f32> = ((vec3<f32>(x_2303, x_2303, x_2303) * vec3<f32>(x_2305.x, x_2305.y, x_2305.z)) + vec3<f32>(x_2308.x, x_2308.y, x_2308.z));
  let x_2311 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2310.x, x_2310.y, x_2310.z, x_2311.w);
  let x_2313 : f32 = u_xlat52;
  let x_2315 : vec4<f32> = u_xlat8;
  let x_2317 : vec3<f32> = (vec3<f32>(x_2313, x_2313, x_2313) * vec3<f32>(x_2315.x, x_2315.y, x_2315.z));
  let x_2318 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2317.x, x_2317.y, x_2317.z, x_2318.w);
  let x_2320 : vec4<f32> = u_xlat7;
  let x_2322 : vec4<f32> = u_xlat8;
  let x_2324 : vec3<f32> = (vec3<f32>(x_2320.x, x_2320.y, x_2320.z) * vec3<f32>(x_2322.x, x_2322.y, x_2322.z));
  let x_2325 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2324.x, x_2324.y, x_2324.z, x_2325.w);
  let x_2327 : vec4<f32> = u_xlat3;
  let x_2329 : vec4<f32> = u_xlat4;
  let x_2332 : vec4<f32> = u_xlat7;
  let x_2334 : vec3<f32> = ((vec3<f32>(x_2327.x, x_2327.y, x_2327.z) * vec3<f32>(x_2329.x, x_2329.y, x_2329.z)) + vec3<f32>(x_2332.x, x_2332.y, x_2332.z));
  let x_2335 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2334.x, x_2334.y, x_2334.z, x_2335.w);
  let x_2337 : f32 = u_xlat82;
  let x_2339 : f32 = x_602.unity_LightData.z;
  u_xlat52 = (x_2337 * x_2339);
  let x_2341 : vec4<f32> = u_xlat1;
  let x_2344 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat80 = dot(vec3<f32>(x_2341.x, x_2341.y, x_2341.z), vec3<f32>(x_2344.x, x_2344.y, x_2344.z));
  let x_2347 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2347, 0.0f, 1.0f);
  let x_2349 : f32 = u_xlat52;
  let x_2350 : f32 = u_xlat80;
  u_xlat52 = (x_2349 * x_2350);
  let x_2352 : f32 = u_xlat52;
  let x_2354 : vec4<f32> = u_xlat6;
  let x_2356 : vec3<f32> = (vec3<f32>(x_2352, x_2352, x_2352) * vec3<f32>(x_2354.x, x_2354.y, x_2354.z));
  let x_2357 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2356.x, x_2356.y, x_2356.z, x_2357.w);
  let x_2359 : vec3<f32> = u_xlat2;
  let x_2361 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2363 : vec3<f32> = (x_2359 + vec3<f32>(x_2361.x, x_2361.y, x_2361.z));
  let x_2364 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2363.x, x_2363.y, x_2363.z, x_2364.w);
  let x_2366 : vec4<f32> = u_xlat7;
  let x_2368 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(vec3<f32>(x_2366.x, x_2366.y, x_2366.z), vec3<f32>(x_2368.x, x_2368.y, x_2368.z));
  let x_2371 : f32 = u_xlat52;
  u_xlat52 = max(x_2371, 1.17549435e-38f);
  let x_2374 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_2374);
  let x_2376 : f32 = u_xlat52;
  let x_2378 : vec4<f32> = u_xlat7;
  let x_2380 : vec3<f32> = (vec3<f32>(x_2376, x_2376, x_2376) * vec3<f32>(x_2378.x, x_2378.y, x_2378.z));
  let x_2381 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2380.x, x_2380.y, x_2380.z, x_2381.w);
  let x_2383 : vec4<f32> = u_xlat1;
  let x_2385 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(vec3<f32>(x_2383.x, x_2383.y, x_2383.z), vec3<f32>(x_2385.x, x_2385.y, x_2385.z));
  let x_2388 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2388, 0.0f, 1.0f);
  let x_2391 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2393 : vec4<f32> = u_xlat7;
  u_xlat80 = dot(vec3<f32>(x_2391.x, x_2391.y, x_2391.z), vec3<f32>(x_2393.x, x_2393.y, x_2393.z));
  let x_2396 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2396, 0.0f, 1.0f);
  let x_2398 : f32 = u_xlat52;
  let x_2399 : f32 = u_xlat52;
  u_xlat52 = (x_2398 * x_2399);
  let x_2401 : f32 = u_xlat52;
  let x_2403 : f32 = u_xlat0.x;
  u_xlat52 = ((x_2401 * x_2403) + 1.00001001358032226562f);
  let x_2407 : f32 = u_xlat80;
  let x_2408 : f32 = u_xlat80;
  u_xlat80 = (x_2407 * x_2408);
  let x_2410 : f32 = u_xlat52;
  let x_2411 : f32 = u_xlat52;
  u_xlat52 = (x_2410 * x_2411);
  let x_2413 : f32 = u_xlat80;
  u_xlat80 = max(x_2413, 0.10000000149011611938f);
  let x_2416 : f32 = u_xlat52;
  let x_2417 : f32 = u_xlat80;
  u_xlat52 = (x_2416 * x_2417);
  let x_2419 : f32 = u_xlat81;
  let x_2420 : f32 = u_xlat52;
  u_xlat52 = (x_2419 * x_2420);
  let x_2422 : f32 = u_xlat79;
  let x_2423 : f32 = u_xlat52;
  u_xlat52 = (x_2422 / x_2423);
  let x_2425 : vec4<f32> = u_xlat5;
  let x_2427 : f32 = u_xlat52;
  let x_2430 : vec4<f32> = u_xlat4;
  let x_2432 : vec3<f32> = ((vec3<f32>(x_2425.x, x_2425.y, x_2425.z) * vec3<f32>(x_2427, x_2427, x_2427)) + vec3<f32>(x_2430.x, x_2430.y, x_2430.z));
  let x_2433 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2432.x, x_2432.y, x_2432.z, x_2433.w);
  let x_2435 : vec4<f32> = u_xlat6;
  let x_2437 : vec4<f32> = u_xlat7;
  let x_2439 : vec3<f32> = (vec3<f32>(x_2435.x, x_2435.y, x_2435.z) * vec3<f32>(x_2437.x, x_2437.y, x_2437.z));
  let x_2440 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2439.x, x_2439.y, x_2439.z, x_2440.w);
  let x_2443 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_2445 : f32 = x_602.unity_LightData.y;
  u_xlat52 = min(x_2443, x_2445);
  let x_2449 : f32 = u_xlat52;
  u_xlatu52 = bitcast<u32>(i32(x_2449));
  let x_2452 : f32 = u_xlat83;
  let x_2454 : f32 = x_745.x_AdditionalShadowFadeParams.x;
  let x_2457 : f32 = x_745.x_AdditionalShadowFadeParams.y;
  u_xlat80 = ((x_2452 * x_2454) + x_2457);
  let x_2459 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2459, 0.0f, 1.0f);
  let x_2462 : f32 = x_2057.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2464 : f32 = x_2057.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2466 : f32 = x_2057.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2468 : f32 = x_2057.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2469 : vec4<f32> = vec4<f32>(x_2462, x_2464, x_2466, x_2468);
  let x_2475 : vec4<bool> = (vec4<f32>(x_2469.x, x_2469.y, x_2469.z, x_2469.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2475.x, x_2475.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2487 : u32 = u_xlatu_loop_1;
    let x_2488 : u32 = u_xlatu52;
    if ((x_2487 < x_2488)) {
    } else {
      break;
    }
    let x_2491 : u32 = u_xlatu_loop_1;
    u_xlatu83 = (x_2491 >> 2u);
    let x_2495 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2495 & 3u));
    let x_2498 : u32 = u_xlatu83;
    let x_2501 : vec4<f32> = x_602.unity_LightIndices[bitcast<i32>(x_2498)];
    let x_2511 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2516 : vec4<u32> = indexable[x_2511];
    u_xlat83 = dot(x_2501, bitcast<vec4<f32>>(x_2516));
    let x_2520 : f32 = u_xlat83;
    u_xlati83 = i32(x_2520);
    let x_2522 : vec3<f32> = vs_TEXCOORD7;
    let x_2533 : i32 = u_xlati83;
    let x_2535 : vec4<f32> = x_2532.x_AdditionalLightsPosition[x_2533];
    let x_2538 : i32 = u_xlati83;
    let x_2540 : vec4<f32> = x_2532.x_AdditionalLightsPosition[x_2538];
    let x_2542 : vec3<f32> = ((-(x_2522) * vec3<f32>(x_2535.w, x_2535.w, x_2535.w)) + vec3<f32>(x_2540.x, x_2540.y, x_2540.z));
    let x_2543 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2542.x, x_2542.y, x_2542.z, x_2543.w);
    let x_2545 : vec4<f32> = u_xlat9;
    let x_2547 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2545.x, x_2545.y, x_2545.z), vec3<f32>(x_2547.x, x_2547.y, x_2547.z));
    let x_2550 : f32 = u_xlat84;
    u_xlat84 = max(x_2550, 0.00006103515625f);
    let x_2553 : f32 = u_xlat84;
    u_xlat59 = inverseSqrt(x_2553);
    let x_2555 : f32 = u_xlat59;
    let x_2557 : vec4<f32> = u_xlat9;
    let x_2559 : vec3<f32> = (vec3<f32>(x_2555, x_2555, x_2555) * vec3<f32>(x_2557.x, x_2557.y, x_2557.z));
    let x_2560 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2559.x, x_2559.y, x_2559.z, x_2560.w);
    let x_2562 : f32 = u_xlat84;
    u_xlat85 = (1.0f / x_2562);
    let x_2564 : f32 = u_xlat84;
    let x_2565 : i32 = u_xlati83;
    let x_2567 : f32 = x_2532.x_AdditionalLightsAttenuation[x_2565].x;
    u_xlat84 = (x_2564 * x_2567);
    let x_2569 : f32 = u_xlat84;
    let x_2571 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2569) * x_2571) + 1.0f);
    let x_2574 : f32 = u_xlat84;
    u_xlat84 = max(x_2574, 0.0f);
    let x_2576 : f32 = u_xlat84;
    let x_2577 : f32 = u_xlat84;
    u_xlat84 = (x_2576 * x_2577);
    let x_2579 : f32 = u_xlat84;
    let x_2580 : f32 = u_xlat85;
    u_xlat84 = (x_2579 * x_2580);
    let x_2582 : i32 = u_xlati83;
    let x_2584 : vec4<f32> = x_2532.x_AdditionalLightsSpotDir[x_2582];
    let x_2586 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_2584.x, x_2584.y, x_2584.z), vec3<f32>(x_2586.x, x_2586.y, x_2586.z));
    let x_2589 : f32 = u_xlat85;
    let x_2590 : i32 = u_xlati83;
    let x_2592 : f32 = x_2532.x_AdditionalLightsAttenuation[x_2590].z;
    let x_2594 : i32 = u_xlati83;
    let x_2596 : f32 = x_2532.x_AdditionalLightsAttenuation[x_2594].w;
    u_xlat85 = ((x_2589 * x_2592) + x_2596);
    let x_2598 : f32 = u_xlat85;
    u_xlat85 = clamp(x_2598, 0.0f, 1.0f);
    let x_2600 : f32 = u_xlat85;
    let x_2601 : f32 = u_xlat85;
    u_xlat85 = (x_2600 * x_2601);
    let x_2603 : f32 = u_xlat84;
    let x_2604 : f32 = u_xlat85;
    u_xlat84 = (x_2603 * x_2604);
    let x_2607 : i32 = u_xlati83;
    let x_2609 : f32 = x_745.x_AdditionalShadowParams[x_2607].w;
    u_xlati85 = i32(x_2609);
    let x_2612 : i32 = u_xlati85;
    u_xlatb86 = (x_2612 >= 0i);
    let x_2614 : bool = u_xlatb86;
    if (x_2614) {
      let x_2618 : i32 = u_xlati83;
      let x_2620 : f32 = x_745.x_AdditionalShadowParams[x_2618].z;
      u_xlatb86 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2620, x_2620, x_2620, x_2620))));
      let x_2624 : bool = u_xlatb86;
      if (x_2624) {
        let x_2629 : vec4<f32> = u_xlat10;
        let x_2632 : vec4<f32> = u_xlat10;
        let x_2635 : vec4<bool> = (abs(vec4<f32>(x_2629.z, x_2629.z, x_2629.y, x_2629.z)) >= abs(vec4<f32>(x_2632.x, x_2632.y, x_2632.x, x_2632.x)));
        let x_2637 : vec3<bool> = vec3<bool>(x_2635.x, x_2635.y, x_2635.z);
        let x_2638 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2637.x, x_2637.y, x_2637.z, x_2638.w);
        let x_2641 : bool = u_xlatb11.y;
        let x_2643 : bool = u_xlatb11.x;
        u_xlatb86 = (x_2641 & x_2643);
        let x_2645 : vec4<f32> = u_xlat10;
        let x_2648 : vec4<bool> = (-(vec4<f32>(x_2645.z, x_2645.y, x_2645.z, x_2645.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2649 : vec3<bool> = vec3<bool>(x_2648.x, x_2648.y, x_2648.w);
        let x_2650 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2649.x, x_2649.y, x_2650.z, x_2649.z);
        let x_2653 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2653);
        let x_2658 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2658);
        let x_2664 : bool = u_xlatb11.w;
        u_xlat87 = select(0.0f, 1.0f, x_2664);
        let x_2667 : bool = u_xlatb11.z;
        if (x_2667) {
          let x_2672 : f32 = u_xlat11.y;
          x_2668 = x_2672;
        } else {
          let x_2674 : f32 = u_xlat87;
          x_2668 = x_2674;
        }
        let x_2675 : f32 = x_2668;
        u_xlat87 = x_2675;
        let x_2677 : bool = u_xlatb86;
        if (x_2677) {
          let x_2682 : f32 = u_xlat11.x;
          x_2678 = x_2682;
        } else {
          let x_2684 : f32 = u_xlat87;
          x_2678 = x_2684;
        }
        let x_2685 : f32 = x_2678;
        u_xlat86 = x_2685;
        let x_2686 : i32 = u_xlati83;
        let x_2688 : f32 = x_745.x_AdditionalShadowParams[x_2686].w;
        u_xlat87 = trunc(x_2688);
        let x_2690 : f32 = u_xlat86;
        let x_2691 : f32 = u_xlat87;
        u_xlat86 = (x_2690 + x_2691);
        let x_2693 : f32 = u_xlat86;
        u_xlati85 = i32(x_2693);
      }
      let x_2695 : i32 = u_xlati85;
      u_xlati85 = (x_2695 << bitcast<u32>(2i));
      let x_2697 : vec3<f32> = vs_TEXCOORD7;
      let x_2699 : i32 = u_xlati85;
      let x_2702 : i32 = u_xlati85;
      let x_2706 : vec4<f32> = x_745.x_AdditionalLightsWorldToShadow[((x_2699 + 1i) / 4i)][((x_2702 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2697.y, x_2697.y, x_2697.y, x_2697.y) * x_2706);
      let x_2708 : i32 = u_xlati85;
      let x_2710 : i32 = u_xlati85;
      let x_2713 : vec4<f32> = x_745.x_AdditionalLightsWorldToShadow[(x_2708 / 4i)][(x_2710 % 4i)];
      let x_2714 : vec3<f32> = vs_TEXCOORD7;
      let x_2717 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2713 * vec4<f32>(x_2714.x, x_2714.x, x_2714.x, x_2714.x)) + x_2717);
      let x_2719 : i32 = u_xlati85;
      let x_2722 : i32 = u_xlati85;
      let x_2726 : vec4<f32> = x_745.x_AdditionalLightsWorldToShadow[((x_2719 + 2i) / 4i)][((x_2722 + 2i) % 4i)];
      let x_2727 : vec3<f32> = vs_TEXCOORD7;
      let x_2730 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2726 * vec4<f32>(x_2727.z, x_2727.z, x_2727.z, x_2727.z)) + x_2730);
      let x_2732 : vec4<f32> = u_xlat11;
      let x_2733 : i32 = u_xlati85;
      let x_2736 : i32 = u_xlati85;
      let x_2740 : vec4<f32> = x_745.x_AdditionalLightsWorldToShadow[((x_2733 + 3i) / 4i)][((x_2736 + 3i) % 4i)];
      u_xlat11 = (x_2732 + x_2740);
      let x_2742 : vec4<f32> = u_xlat11;
      let x_2744 : vec4<f32> = u_xlat11;
      let x_2746 : vec3<f32> = (vec3<f32>(x_2742.x, x_2742.y, x_2742.z) / vec3<f32>(x_2744.w, x_2744.w, x_2744.w));
      let x_2747 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2746.x, x_2746.y, x_2746.z, x_2747.w);
      let x_2750 : i32 = u_xlati83;
      let x_2752 : f32 = x_745.x_AdditionalShadowParams[x_2750].y;
      u_xlatb85 = (0.0f < x_2752);
      let x_2754 : bool = u_xlatb85;
      if (x_2754) {
        let x_2757 : i32 = u_xlati83;
        let x_2759 : f32 = x_745.x_AdditionalShadowParams[x_2757].y;
        u_xlatb85 = (1.0f == x_2759);
        let x_2761 : bool = u_xlatb85;
        if (x_2761) {
          let x_2764 : vec4<f32> = u_xlat11;
          let x_2767 : vec4<f32> = x_745.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2764.x, x_2764.y, x_2764.x, x_2764.y) + x_2767);
          let x_2770 : vec4<f32> = u_xlat12;
          let x_2771 : vec2<f32> = vec2<f32>(x_2770.x, x_2770.y);
          let x_2773 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2771.x, x_2771.y, x_2773);
          let x_2781 : vec3<f32> = txVec30;
          let x_2783 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2781.xy, x_2781.z);
          u_xlat13.x = x_2783;
          let x_2786 : vec4<f32> = u_xlat12;
          let x_2787 : vec2<f32> = vec2<f32>(x_2786.z, x_2786.w);
          let x_2789 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2787.x, x_2787.y, x_2789);
          let x_2796 : vec3<f32> = txVec31;
          let x_2798 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2796.xy, x_2796.z);
          u_xlat13.y = x_2798;
          let x_2800 : vec4<f32> = u_xlat11;
          let x_2803 : vec4<f32> = x_745.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2800.x, x_2800.y, x_2800.x, x_2800.y) + x_2803);
          let x_2806 : vec4<f32> = u_xlat12;
          let x_2807 : vec2<f32> = vec2<f32>(x_2806.x, x_2806.y);
          let x_2809 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2807.x, x_2807.y, x_2809);
          let x_2816 : vec3<f32> = txVec32;
          let x_2818 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2816.xy, x_2816.z);
          u_xlat13.z = x_2818;
          let x_2821 : vec4<f32> = u_xlat12;
          let x_2822 : vec2<f32> = vec2<f32>(x_2821.z, x_2821.w);
          let x_2824 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2822.x, x_2822.y, x_2824);
          let x_2831 : vec3<f32> = txVec33;
          let x_2833 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2831.xy, x_2831.z);
          u_xlat13.w = x_2833;
          let x_2835 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_2835, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2838 : i32 = u_xlati83;
          let x_2840 : f32 = x_745.x_AdditionalShadowParams[x_2838].y;
          u_xlatb86 = (2.0f == x_2840);
          let x_2842 : bool = u_xlatb86;
          if (x_2842) {
            let x_2845 : vec4<f32> = u_xlat11;
            let x_2848 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_2851 : vec2<f32> = ((vec2<f32>(x_2845.x, x_2845.y) * vec2<f32>(x_2848.z, x_2848.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2852 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2851.x, x_2851.y, x_2852.z, x_2852.w);
            let x_2854 : vec4<f32> = u_xlat12;
            let x_2856 : vec2<f32> = floor(vec2<f32>(x_2854.x, x_2854.y));
            let x_2857 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2856.x, x_2856.y, x_2857.z, x_2857.w);
            let x_2860 : vec4<f32> = u_xlat11;
            let x_2863 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_2866 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2860.x, x_2860.y) * vec2<f32>(x_2863.z, x_2863.w)) + -(vec2<f32>(x_2866.x, x_2866.y)));
            let x_2870 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2870.x, x_2870.x, x_2870.y, x_2870.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2873 : vec4<f32> = u_xlat13;
            let x_2875 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2873.x, x_2873.x, x_2873.z, x_2873.z) * vec4<f32>(x_2875.x, x_2875.x, x_2875.z, x_2875.z));
            let x_2878 : vec4<f32> = u_xlat14;
            let x_2880 : vec2<f32> = (vec2<f32>(x_2878.y, x_2878.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2881 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2880.x, x_2881.y, x_2880.y, x_2881.w);
            let x_2883 : vec4<f32> = u_xlat14;
            let x_2886 : vec2<f32> = u_xlat64;
            let x_2888 : vec2<f32> = ((vec2<f32>(x_2883.x, x_2883.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2886));
            let x_2889 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2888.x, x_2888.y, x_2889.z, x_2889.w);
            let x_2891 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2891) + vec2<f32>(1.0f, 1.0f));
            let x_2894 : vec2<f32> = u_xlat64;
            let x_2895 : vec2<f32> = min(x_2894, vec2<f32>(0.0f, 0.0f));
            let x_2896 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2895.x, x_2895.y, x_2896.z, x_2896.w);
            let x_2898 : vec4<f32> = u_xlat15;
            let x_2901 : vec4<f32> = u_xlat15;
            let x_2904 : vec2<f32> = u_xlat66;
            let x_2905 : vec2<f32> = ((-(vec2<f32>(x_2898.x, x_2898.y)) * vec2<f32>(x_2901.x, x_2901.y)) + x_2904);
            let x_2906 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2905.x, x_2905.y, x_2906.z, x_2906.w);
            let x_2908 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2908, vec2<f32>(0.0f, 0.0f));
            let x_2910 : vec2<f32> = u_xlat64;
            let x_2912 : vec2<f32> = u_xlat64;
            let x_2914 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2910) * x_2912) + vec2<f32>(x_2914.y, x_2914.w));
            let x_2917 : vec4<f32> = u_xlat15;
            let x_2919 : vec2<f32> = (vec2<f32>(x_2917.x, x_2917.y) + vec2<f32>(1.0f, 1.0f));
            let x_2920 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2919.x, x_2919.y, x_2920.z, x_2920.w);
            let x_2922 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2922 + vec2<f32>(1.0f, 1.0f));
            let x_2924 : vec4<f32> = u_xlat14;
            let x_2926 : vec2<f32> = (vec2<f32>(x_2924.x, x_2924.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2927 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2926.x, x_2926.y, x_2927.z, x_2927.w);
            let x_2929 : vec2<f32> = u_xlat66;
            let x_2930 : vec2<f32> = (x_2929 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2931 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2930.x, x_2930.y, x_2931.z, x_2931.w);
            let x_2933 : vec4<f32> = u_xlat15;
            let x_2935 : vec2<f32> = (vec2<f32>(x_2933.x, x_2933.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2936 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2935.x, x_2935.y, x_2936.z, x_2936.w);
            let x_2938 : vec2<f32> = u_xlat64;
            let x_2939 : vec2<f32> = (x_2938 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2940 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2939.x, x_2939.y, x_2940.z, x_2940.w);
            let x_2942 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2942.y, x_2942.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2946 : f32 = u_xlat15.x;
            u_xlat16.z = x_2946;
            let x_2949 : f32 = u_xlat64.x;
            u_xlat16.w = x_2949;
            let x_2952 : f32 = u_xlat17.x;
            u_xlat14.z = x_2952;
            let x_2955 : f32 = u_xlat13.x;
            u_xlat14.w = x_2955;
            let x_2957 : vec4<f32> = u_xlat14;
            let x_2959 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2957.z, x_2957.w, x_2957.x, x_2957.z) + vec4<f32>(x_2959.z, x_2959.w, x_2959.x, x_2959.z));
            let x_2963 : f32 = u_xlat16.y;
            u_xlat15.z = x_2963;
            let x_2966 : f32 = u_xlat64.y;
            u_xlat15.w = x_2966;
            let x_2969 : f32 = u_xlat14.y;
            u_xlat17.z = x_2969;
            let x_2972 : f32 = u_xlat13.z;
            u_xlat17.w = x_2972;
            let x_2974 : vec4<f32> = u_xlat15;
            let x_2976 : vec4<f32> = u_xlat17;
            let x_2978 : vec3<f32> = (vec3<f32>(x_2974.z, x_2974.y, x_2974.w) + vec3<f32>(x_2976.z, x_2976.y, x_2976.w));
            let x_2979 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2978.x, x_2978.y, x_2978.z, x_2979.w);
            let x_2981 : vec4<f32> = u_xlat14;
            let x_2983 : vec4<f32> = u_xlat18;
            let x_2985 : vec3<f32> = (vec3<f32>(x_2981.x, x_2981.z, x_2981.w) / vec3<f32>(x_2983.z, x_2983.w, x_2983.y));
            let x_2986 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2985.x, x_2985.y, x_2985.z, x_2986.w);
            let x_2988 : vec4<f32> = u_xlat14;
            let x_2990 : vec3<f32> = (vec3<f32>(x_2988.x, x_2988.y, x_2988.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2991 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2990.x, x_2990.y, x_2990.z, x_2991.w);
            let x_2993 : vec4<f32> = u_xlat17;
            let x_2995 : vec4<f32> = u_xlat13;
            let x_2997 : vec3<f32> = (vec3<f32>(x_2993.z, x_2993.y, x_2993.w) / vec3<f32>(x_2995.x, x_2995.y, x_2995.z));
            let x_2998 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2997.x, x_2997.y, x_2997.z, x_2998.w);
            let x_3000 : vec4<f32> = u_xlat15;
            let x_3002 : vec3<f32> = (vec3<f32>(x_3000.x, x_3000.y, x_3000.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3003 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3002.x, x_3002.y, x_3002.z, x_3003.w);
            let x_3005 : vec4<f32> = u_xlat14;
            let x_3008 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_3010 : vec3<f32> = (vec3<f32>(x_3005.y, x_3005.x, x_3005.z) * vec3<f32>(x_3008.x, x_3008.x, x_3008.x));
            let x_3011 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3010.x, x_3010.y, x_3010.z, x_3011.w);
            let x_3013 : vec4<f32> = u_xlat15;
            let x_3016 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_3018 : vec3<f32> = (vec3<f32>(x_3013.x, x_3013.y, x_3013.z) * vec3<f32>(x_3016.y, x_3016.y, x_3016.y));
            let x_3019 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3018.x, x_3018.y, x_3018.z, x_3019.w);
            let x_3022 : f32 = u_xlat15.x;
            u_xlat14.w = x_3022;
            let x_3024 : vec4<f32> = u_xlat12;
            let x_3027 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_3030 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3024.x, x_3024.y, x_3024.x, x_3024.y) * vec4<f32>(x_3027.x, x_3027.y, x_3027.x, x_3027.y)) + vec4<f32>(x_3030.y, x_3030.w, x_3030.x, x_3030.w));
            let x_3033 : vec4<f32> = u_xlat12;
            let x_3036 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_3039 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3033.x, x_3033.y) * vec2<f32>(x_3036.x, x_3036.y)) + vec2<f32>(x_3039.z, x_3039.w));
            let x_3043 : f32 = u_xlat14.y;
            u_xlat15.w = x_3043;
            let x_3045 : vec4<f32> = u_xlat15;
            let x_3046 : vec2<f32> = vec2<f32>(x_3045.y, x_3045.z);
            let x_3047 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3047.x, x_3046.x, x_3047.z, x_3046.y);
            let x_3049 : vec4<f32> = u_xlat12;
            let x_3052 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_3055 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3049.x, x_3049.y, x_3049.x, x_3049.y) * vec4<f32>(x_3052.x, x_3052.y, x_3052.x, x_3052.y)) + vec4<f32>(x_3055.x, x_3055.y, x_3055.z, x_3055.y));
            let x_3058 : vec4<f32> = u_xlat12;
            let x_3061 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_3064 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3058.x, x_3058.y, x_3058.x, x_3058.y) * vec4<f32>(x_3061.x, x_3061.y, x_3061.x, x_3061.y)) + vec4<f32>(x_3064.w, x_3064.y, x_3064.w, x_3064.z));
            let x_3067 : vec4<f32> = u_xlat12;
            let x_3070 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_3073 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3067.x, x_3067.y, x_3067.x, x_3067.y) * vec4<f32>(x_3070.x, x_3070.y, x_3070.x, x_3070.y)) + vec4<f32>(x_3073.x, x_3073.w, x_3073.z, x_3073.w));
            let x_3076 : vec4<f32> = u_xlat13;
            let x_3078 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3076.x, x_3076.x, x_3076.x, x_3076.y) * vec4<f32>(x_3078.z, x_3078.w, x_3078.y, x_3078.z));
            let x_3082 : vec4<f32> = u_xlat13;
            let x_3084 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3082.y, x_3082.y, x_3082.z, x_3082.z) * x_3084);
            let x_3087 : f32 = u_xlat13.z;
            let x_3089 : f32 = u_xlat18.y;
            u_xlat86 = (x_3087 * x_3089);
            let x_3092 : vec4<f32> = u_xlat16;
            let x_3093 : vec2<f32> = vec2<f32>(x_3092.x, x_3092.y);
            let x_3095 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3093.x, x_3093.y, x_3095);
            let x_3102 : vec3<f32> = txVec34;
            let x_3104 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3102.xy, x_3102.z);
            u_xlat87 = x_3104;
            let x_3106 : vec4<f32> = u_xlat16;
            let x_3107 : vec2<f32> = vec2<f32>(x_3106.z, x_3106.w);
            let x_3109 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3107.x, x_3107.y, x_3109);
            let x_3117 : vec3<f32> = txVec35;
            let x_3119 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3117.xy, x_3117.z);
            u_xlat88 = x_3119;
            let x_3120 : f32 = u_xlat88;
            let x_3122 : f32 = u_xlat19.y;
            u_xlat88 = (x_3120 * x_3122);
            let x_3125 : f32 = u_xlat19.x;
            let x_3126 : f32 = u_xlat87;
            let x_3128 : f32 = u_xlat88;
            u_xlat87 = ((x_3125 * x_3126) + x_3128);
            let x_3131 : vec2<f32> = u_xlat64;
            let x_3133 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3131.x, x_3131.y, x_3133);
            let x_3140 : vec3<f32> = txVec36;
            let x_3142 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3140.xy, x_3140.z);
            u_xlat88 = x_3142;
            let x_3144 : f32 = u_xlat19.z;
            let x_3145 : f32 = u_xlat88;
            let x_3147 : f32 = u_xlat87;
            u_xlat87 = ((x_3144 * x_3145) + x_3147);
            let x_3150 : vec4<f32> = u_xlat15;
            let x_3151 : vec2<f32> = vec2<f32>(x_3150.x, x_3150.y);
            let x_3153 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3151.x, x_3151.y, x_3153);
            let x_3160 : vec3<f32> = txVec37;
            let x_3162 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3160.xy, x_3160.z);
            u_xlat88 = x_3162;
            let x_3164 : f32 = u_xlat19.w;
            let x_3165 : f32 = u_xlat88;
            let x_3167 : f32 = u_xlat87;
            u_xlat87 = ((x_3164 * x_3165) + x_3167);
            let x_3170 : vec4<f32> = u_xlat17;
            let x_3171 : vec2<f32> = vec2<f32>(x_3170.x, x_3170.y);
            let x_3173 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3171.x, x_3171.y, x_3173);
            let x_3180 : vec3<f32> = txVec38;
            let x_3182 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3180.xy, x_3180.z);
            u_xlat88 = x_3182;
            let x_3184 : f32 = u_xlat20.x;
            let x_3185 : f32 = u_xlat88;
            let x_3187 : f32 = u_xlat87;
            u_xlat87 = ((x_3184 * x_3185) + x_3187);
            let x_3190 : vec4<f32> = u_xlat17;
            let x_3191 : vec2<f32> = vec2<f32>(x_3190.z, x_3190.w);
            let x_3193 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3191.x, x_3191.y, x_3193);
            let x_3200 : vec3<f32> = txVec39;
            let x_3202 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3200.xy, x_3200.z);
            u_xlat88 = x_3202;
            let x_3204 : f32 = u_xlat20.y;
            let x_3205 : f32 = u_xlat88;
            let x_3207 : f32 = u_xlat87;
            u_xlat87 = ((x_3204 * x_3205) + x_3207);
            let x_3210 : vec4<f32> = u_xlat15;
            let x_3211 : vec2<f32> = vec2<f32>(x_3210.z, x_3210.w);
            let x_3213 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3211.x, x_3211.y, x_3213);
            let x_3220 : vec3<f32> = txVec40;
            let x_3222 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3220.xy, x_3220.z);
            u_xlat88 = x_3222;
            let x_3224 : f32 = u_xlat20.z;
            let x_3225 : f32 = u_xlat88;
            let x_3227 : f32 = u_xlat87;
            u_xlat87 = ((x_3224 * x_3225) + x_3227);
            let x_3230 : vec4<f32> = u_xlat14;
            let x_3231 : vec2<f32> = vec2<f32>(x_3230.x, x_3230.y);
            let x_3233 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3231.x, x_3231.y, x_3233);
            let x_3240 : vec3<f32> = txVec41;
            let x_3242 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3240.xy, x_3240.z);
            u_xlat88 = x_3242;
            let x_3244 : f32 = u_xlat20.w;
            let x_3245 : f32 = u_xlat88;
            let x_3247 : f32 = u_xlat87;
            u_xlat87 = ((x_3244 * x_3245) + x_3247);
            let x_3250 : vec4<f32> = u_xlat14;
            let x_3251 : vec2<f32> = vec2<f32>(x_3250.z, x_3250.w);
            let x_3253 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3251.x, x_3251.y, x_3253);
            let x_3260 : vec3<f32> = txVec42;
            let x_3262 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3260.xy, x_3260.z);
            u_xlat88 = x_3262;
            let x_3263 : f32 = u_xlat86;
            let x_3264 : f32 = u_xlat88;
            let x_3266 : f32 = u_xlat87;
            u_xlat85 = ((x_3263 * x_3264) + x_3266);
          } else {
            let x_3269 : vec4<f32> = u_xlat11;
            let x_3272 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_3275 : vec2<f32> = ((vec2<f32>(x_3269.x, x_3269.y) * vec2<f32>(x_3272.z, x_3272.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3276 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3275.x, x_3275.y, x_3276.z, x_3276.w);
            let x_3278 : vec4<f32> = u_xlat12;
            let x_3280 : vec2<f32> = floor(vec2<f32>(x_3278.x, x_3278.y));
            let x_3281 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3280.x, x_3280.y, x_3281.z, x_3281.w);
            let x_3283 : vec4<f32> = u_xlat11;
            let x_3286 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_3289 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3283.x, x_3283.y) * vec2<f32>(x_3286.z, x_3286.w)) + -(vec2<f32>(x_3289.x, x_3289.y)));
            let x_3293 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3293.x, x_3293.x, x_3293.y, x_3293.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3296 : vec4<f32> = u_xlat13;
            let x_3298 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3296.x, x_3296.x, x_3296.z, x_3296.z) * vec4<f32>(x_3298.x, x_3298.x, x_3298.z, x_3298.z));
            let x_3301 : vec4<f32> = u_xlat14;
            let x_3303 : vec2<f32> = (vec2<f32>(x_3301.y, x_3301.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3304 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3304.x, x_3303.x, x_3304.z, x_3303.y);
            let x_3306 : vec4<f32> = u_xlat14;
            let x_3309 : vec2<f32> = u_xlat64;
            let x_3311 : vec2<f32> = ((vec2<f32>(x_3306.x, x_3306.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3309));
            let x_3312 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3311.x, x_3312.y, x_3311.y, x_3312.w);
            let x_3314 : vec2<f32> = u_xlat64;
            let x_3316 : vec2<f32> = (-(x_3314) + vec2<f32>(1.0f, 1.0f));
            let x_3317 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3316.x, x_3316.y, x_3317.z, x_3317.w);
            let x_3319 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3319, vec2<f32>(0.0f, 0.0f));
            let x_3321 : vec2<f32> = u_xlat66;
            let x_3323 : vec2<f32> = u_xlat66;
            let x_3325 : vec4<f32> = u_xlat14;
            let x_3327 : vec2<f32> = ((-(x_3321) * x_3323) + vec2<f32>(x_3325.x, x_3325.y));
            let x_3328 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3327.x, x_3327.y, x_3328.z, x_3328.w);
            let x_3330 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3330, vec2<f32>(0.0f, 0.0f));
            let x_3333 : vec2<f32> = u_xlat66;
            let x_3335 : vec2<f32> = u_xlat66;
            let x_3337 : vec4<f32> = u_xlat13;
            let x_3339 : vec2<f32> = ((-(x_3333) * x_3335) + vec2<f32>(x_3337.y, x_3337.w));
            let x_3340 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3339.x, x_3340.y, x_3339.y);
            let x_3342 : vec4<f32> = u_xlat14;
            let x_3344 : vec2<f32> = (vec2<f32>(x_3342.x, x_3342.y) + vec2<f32>(2.0f, 2.0f));
            let x_3345 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3344.x, x_3344.y, x_3345.z, x_3345.w);
            let x_3347 : vec3<f32> = u_xlat39;
            let x_3349 : vec2<f32> = (vec2<f32>(x_3347.x, x_3347.z) + vec2<f32>(2.0f, 2.0f));
            let x_3350 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3350.x, x_3349.x, x_3350.z, x_3349.y);
            let x_3353 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3353 * 0.08163200318813323975f);
            let x_3356 : vec4<f32> = u_xlat13;
            let x_3358 : vec3<f32> = (vec3<f32>(x_3356.z, x_3356.x, x_3356.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3359 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3358.x, x_3358.y, x_3358.z, x_3359.w);
            let x_3361 : vec4<f32> = u_xlat14;
            let x_3363 : vec2<f32> = (vec2<f32>(x_3361.x, x_3361.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3364 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3363.x, x_3363.y, x_3364.z, x_3364.w);
            let x_3367 : f32 = u_xlat17.y;
            u_xlat16.x = x_3367;
            let x_3369 : vec2<f32> = u_xlat64;
            let x_3372 : vec2<f32> = ((vec2<f32>(x_3369.x, x_3369.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3373 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3373.x, x_3372.x, x_3373.z, x_3372.y);
            let x_3375 : vec2<f32> = u_xlat64;
            let x_3378 : vec2<f32> = ((vec2<f32>(x_3375.x, x_3375.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3379 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3378.x, x_3379.y, x_3378.y, x_3379.w);
            let x_3382 : f32 = u_xlat13.x;
            u_xlat14.y = x_3382;
            let x_3385 : f32 = u_xlat15.y;
            u_xlat14.w = x_3385;
            let x_3387 : vec4<f32> = u_xlat14;
            let x_3388 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3387 + x_3388);
            let x_3390 : vec2<f32> = u_xlat64;
            let x_3393 : vec2<f32> = ((vec2<f32>(x_3390.y, x_3390.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3394 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3394.x, x_3393.x, x_3394.z, x_3393.y);
            let x_3396 : vec2<f32> = u_xlat64;
            let x_3399 : vec2<f32> = ((vec2<f32>(x_3396.y, x_3396.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3400 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3399.x, x_3400.y, x_3399.y, x_3400.w);
            let x_3403 : f32 = u_xlat13.y;
            u_xlat15.y = x_3403;
            let x_3405 : vec4<f32> = u_xlat15;
            let x_3406 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3405 + x_3406);
            let x_3408 : vec4<f32> = u_xlat14;
            let x_3409 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3408 / x_3409);
            let x_3411 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3411 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3413 : vec4<f32> = u_xlat15;
            let x_3414 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3413 / x_3414);
            let x_3416 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3416 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3418 : vec4<f32> = u_xlat14;
            let x_3421 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3418.w, x_3418.x, x_3418.y, x_3418.z) * vec4<f32>(x_3421.x, x_3421.x, x_3421.x, x_3421.x));
            let x_3424 : vec4<f32> = u_xlat15;
            let x_3427 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3424.x, x_3424.w, x_3424.y, x_3424.z) * vec4<f32>(x_3427.y, x_3427.y, x_3427.y, x_3427.y));
            let x_3430 : vec4<f32> = u_xlat14;
            let x_3431 : vec3<f32> = vec3<f32>(x_3430.y, x_3430.z, x_3430.w);
            let x_3432 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3431.x, x_3432.y, x_3431.y, x_3431.z);
            let x_3435 : f32 = u_xlat15.x;
            u_xlat17.y = x_3435;
            let x_3437 : vec4<f32> = u_xlat12;
            let x_3440 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_3443 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3437.x, x_3437.y, x_3437.x, x_3437.y) * vec4<f32>(x_3440.x, x_3440.y, x_3440.x, x_3440.y)) + vec4<f32>(x_3443.x, x_3443.y, x_3443.z, x_3443.y));
            let x_3446 : vec4<f32> = u_xlat12;
            let x_3449 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_3452 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3446.x, x_3446.y) * vec2<f32>(x_3449.x, x_3449.y)) + vec2<f32>(x_3452.w, x_3452.y));
            let x_3456 : f32 = u_xlat17.y;
            u_xlat14.y = x_3456;
            let x_3459 : f32 = u_xlat15.z;
            u_xlat17.y = x_3459;
            let x_3461 : vec4<f32> = u_xlat12;
            let x_3464 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_3467 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3461.x, x_3461.y, x_3461.x, x_3461.y) * vec4<f32>(x_3464.x, x_3464.y, x_3464.x, x_3464.y)) + vec4<f32>(x_3467.x, x_3467.y, x_3467.z, x_3467.y));
            let x_3470 : vec4<f32> = u_xlat12;
            let x_3473 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_3476 : vec4<f32> = u_xlat17;
            let x_3478 : vec2<f32> = ((vec2<f32>(x_3470.x, x_3470.y) * vec2<f32>(x_3473.x, x_3473.y)) + vec2<f32>(x_3476.w, x_3476.y));
            let x_3479 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3478.x, x_3478.y, x_3479.z, x_3479.w);
            let x_3482 : f32 = u_xlat17.y;
            u_xlat14.z = x_3482;
            let x_3485 : vec4<f32> = u_xlat12;
            let x_3488 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_3491 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3485.x, x_3485.y, x_3485.x, x_3485.y) * vec4<f32>(x_3488.x, x_3488.y, x_3488.x, x_3488.y)) + vec4<f32>(x_3491.x, x_3491.y, x_3491.x, x_3491.z));
            let x_3495 : f32 = u_xlat15.w;
            u_xlat17.y = x_3495;
            let x_3498 : vec4<f32> = u_xlat12;
            let x_3501 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_3504 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3498.x, x_3498.y, x_3498.x, x_3498.y) * vec4<f32>(x_3501.x, x_3501.y, x_3501.x, x_3501.y)) + vec4<f32>(x_3504.x, x_3504.y, x_3504.z, x_3504.y));
            let x_3508 : vec4<f32> = u_xlat12;
            let x_3511 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_3514 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3508.x, x_3508.y) * vec2<f32>(x_3511.x, x_3511.y)) + vec2<f32>(x_3514.w, x_3514.y));
            let x_3518 : f32 = u_xlat17.y;
            u_xlat14.w = x_3518;
            let x_3521 : vec4<f32> = u_xlat12;
            let x_3524 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_3527 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3521.x, x_3521.y) * vec2<f32>(x_3524.x, x_3524.y)) + vec2<f32>(x_3527.x, x_3527.w));
            let x_3530 : vec4<f32> = u_xlat17;
            let x_3531 : vec3<f32> = vec3<f32>(x_3530.x, x_3530.z, x_3530.w);
            let x_3532 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3531.x, x_3532.y, x_3531.y, x_3531.z);
            let x_3534 : vec4<f32> = u_xlat12;
            let x_3537 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_3540 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3534.x, x_3534.y, x_3534.x, x_3534.y) * vec4<f32>(x_3537.x, x_3537.y, x_3537.x, x_3537.y)) + vec4<f32>(x_3540.x, x_3540.y, x_3540.z, x_3540.y));
            let x_3544 : vec4<f32> = u_xlat12;
            let x_3547 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_3550 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3544.x, x_3544.y) * vec2<f32>(x_3547.x, x_3547.y)) + vec2<f32>(x_3550.w, x_3550.y));
            let x_3554 : f32 = u_xlat14.x;
            u_xlat15.x = x_3554;
            let x_3556 : vec4<f32> = u_xlat12;
            let x_3559 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_3562 : vec4<f32> = u_xlat15;
            let x_3564 : vec2<f32> = ((vec2<f32>(x_3556.x, x_3556.y) * vec2<f32>(x_3559.x, x_3559.y)) + vec2<f32>(x_3562.x, x_3562.y));
            let x_3565 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3564.x, x_3564.y, x_3565.z, x_3565.w);
            let x_3568 : vec4<f32> = u_xlat13;
            let x_3570 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3568.x, x_3568.x, x_3568.x, x_3568.x) * x_3570);
            let x_3573 : vec4<f32> = u_xlat13;
            let x_3575 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3573.y, x_3573.y, x_3573.y, x_3573.y) * x_3575);
            let x_3578 : vec4<f32> = u_xlat13;
            let x_3580 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3578.z, x_3578.z, x_3578.z, x_3578.z) * x_3580);
            let x_3582 : vec4<f32> = u_xlat13;
            let x_3584 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3582.w, x_3582.w, x_3582.w, x_3582.w) * x_3584);
            let x_3587 : vec4<f32> = u_xlat18;
            let x_3588 : vec2<f32> = vec2<f32>(x_3587.x, x_3587.y);
            let x_3590 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3588.x, x_3588.y, x_3590);
            let x_3597 : vec3<f32> = txVec43;
            let x_3599 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3597.xy, x_3597.z);
            u_xlat86 = x_3599;
            let x_3601 : vec4<f32> = u_xlat18;
            let x_3602 : vec2<f32> = vec2<f32>(x_3601.z, x_3601.w);
            let x_3604 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3602.x, x_3602.y, x_3604);
            let x_3611 : vec3<f32> = txVec44;
            let x_3613 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3611.xy, x_3611.z);
            u_xlat87 = x_3613;
            let x_3614 : f32 = u_xlat87;
            let x_3616 : f32 = u_xlat23.y;
            u_xlat87 = (x_3614 * x_3616);
            let x_3619 : f32 = u_xlat23.x;
            let x_3620 : f32 = u_xlat86;
            let x_3622 : f32 = u_xlat87;
            u_xlat86 = ((x_3619 * x_3620) + x_3622);
            let x_3625 : vec2<f32> = u_xlat64;
            let x_3627 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3625.x, x_3625.y, x_3627);
            let x_3634 : vec3<f32> = txVec45;
            let x_3636 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3634.xy, x_3634.z);
            u_xlat87 = x_3636;
            let x_3638 : f32 = u_xlat23.z;
            let x_3639 : f32 = u_xlat87;
            let x_3641 : f32 = u_xlat86;
            u_xlat86 = ((x_3638 * x_3639) + x_3641);
            let x_3644 : vec4<f32> = u_xlat21;
            let x_3645 : vec2<f32> = vec2<f32>(x_3644.x, x_3644.y);
            let x_3647 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3645.x, x_3645.y, x_3647);
            let x_3654 : vec3<f32> = txVec46;
            let x_3656 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3654.xy, x_3654.z);
            u_xlat87 = x_3656;
            let x_3658 : f32 = u_xlat23.w;
            let x_3659 : f32 = u_xlat87;
            let x_3661 : f32 = u_xlat86;
            u_xlat86 = ((x_3658 * x_3659) + x_3661);
            let x_3664 : vec4<f32> = u_xlat19;
            let x_3665 : vec2<f32> = vec2<f32>(x_3664.x, x_3664.y);
            let x_3667 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3665.x, x_3665.y, x_3667);
            let x_3674 : vec3<f32> = txVec47;
            let x_3676 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3674.xy, x_3674.z);
            u_xlat87 = x_3676;
            let x_3678 : f32 = u_xlat24.x;
            let x_3679 : f32 = u_xlat87;
            let x_3681 : f32 = u_xlat86;
            u_xlat86 = ((x_3678 * x_3679) + x_3681);
            let x_3684 : vec4<f32> = u_xlat19;
            let x_3685 : vec2<f32> = vec2<f32>(x_3684.z, x_3684.w);
            let x_3687 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3685.x, x_3685.y, x_3687);
            let x_3694 : vec3<f32> = txVec48;
            let x_3696 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3694.xy, x_3694.z);
            u_xlat87 = x_3696;
            let x_3698 : f32 = u_xlat24.y;
            let x_3699 : f32 = u_xlat87;
            let x_3701 : f32 = u_xlat86;
            u_xlat86 = ((x_3698 * x_3699) + x_3701);
            let x_3704 : vec4<f32> = u_xlat20;
            let x_3705 : vec2<f32> = vec2<f32>(x_3704.x, x_3704.y);
            let x_3707 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3705.x, x_3705.y, x_3707);
            let x_3714 : vec3<f32> = txVec49;
            let x_3716 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3714.xy, x_3714.z);
            u_xlat87 = x_3716;
            let x_3718 : f32 = u_xlat24.z;
            let x_3719 : f32 = u_xlat87;
            let x_3721 : f32 = u_xlat86;
            u_xlat86 = ((x_3718 * x_3719) + x_3721);
            let x_3724 : vec4<f32> = u_xlat21;
            let x_3725 : vec2<f32> = vec2<f32>(x_3724.z, x_3724.w);
            let x_3727 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3725.x, x_3725.y, x_3727);
            let x_3734 : vec3<f32> = txVec50;
            let x_3736 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3734.xy, x_3734.z);
            u_xlat87 = x_3736;
            let x_3738 : f32 = u_xlat24.w;
            let x_3739 : f32 = u_xlat87;
            let x_3741 : f32 = u_xlat86;
            u_xlat86 = ((x_3738 * x_3739) + x_3741);
            let x_3744 : vec4<f32> = u_xlat22;
            let x_3745 : vec2<f32> = vec2<f32>(x_3744.x, x_3744.y);
            let x_3747 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3745.x, x_3745.y, x_3747);
            let x_3754 : vec3<f32> = txVec51;
            let x_3756 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3754.xy, x_3754.z);
            u_xlat87 = x_3756;
            let x_3758 : f32 = u_xlat25.x;
            let x_3759 : f32 = u_xlat87;
            let x_3761 : f32 = u_xlat86;
            u_xlat86 = ((x_3758 * x_3759) + x_3761);
            let x_3764 : vec4<f32> = u_xlat22;
            let x_3765 : vec2<f32> = vec2<f32>(x_3764.z, x_3764.w);
            let x_3767 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3765.x, x_3765.y, x_3767);
            let x_3774 : vec3<f32> = txVec52;
            let x_3776 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3774.xy, x_3774.z);
            u_xlat87 = x_3776;
            let x_3778 : f32 = u_xlat25.y;
            let x_3779 : f32 = u_xlat87;
            let x_3781 : f32 = u_xlat86;
            u_xlat86 = ((x_3778 * x_3779) + x_3781);
            let x_3784 : vec2<f32> = u_xlat40;
            let x_3786 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3784.x, x_3784.y, x_3786);
            let x_3793 : vec3<f32> = txVec53;
            let x_3795 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3793.xy, x_3793.z);
            u_xlat87 = x_3795;
            let x_3797 : f32 = u_xlat25.z;
            let x_3798 : f32 = u_xlat87;
            let x_3800 : f32 = u_xlat86;
            u_xlat86 = ((x_3797 * x_3798) + x_3800);
            let x_3803 : vec2<f32> = u_xlat72;
            let x_3805 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3803.x, x_3803.y, x_3805);
            let x_3812 : vec3<f32> = txVec54;
            let x_3814 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3812.xy, x_3812.z);
            u_xlat87 = x_3814;
            let x_3816 : f32 = u_xlat25.w;
            let x_3817 : f32 = u_xlat87;
            let x_3819 : f32 = u_xlat86;
            u_xlat86 = ((x_3816 * x_3817) + x_3819);
            let x_3822 : vec4<f32> = u_xlat17;
            let x_3823 : vec2<f32> = vec2<f32>(x_3822.x, x_3822.y);
            let x_3825 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3823.x, x_3823.y, x_3825);
            let x_3832 : vec3<f32> = txVec55;
            let x_3834 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3832.xy, x_3832.z);
            u_xlat87 = x_3834;
            let x_3836 : f32 = u_xlat13.x;
            let x_3837 : f32 = u_xlat87;
            let x_3839 : f32 = u_xlat86;
            u_xlat86 = ((x_3836 * x_3837) + x_3839);
            let x_3842 : vec4<f32> = u_xlat17;
            let x_3843 : vec2<f32> = vec2<f32>(x_3842.z, x_3842.w);
            let x_3845 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3843.x, x_3843.y, x_3845);
            let x_3852 : vec3<f32> = txVec56;
            let x_3854 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3852.xy, x_3852.z);
            u_xlat87 = x_3854;
            let x_3856 : f32 = u_xlat13.y;
            let x_3857 : f32 = u_xlat87;
            let x_3859 : f32 = u_xlat86;
            u_xlat86 = ((x_3856 * x_3857) + x_3859);
            let x_3862 : vec2<f32> = u_xlat67;
            let x_3864 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3862.x, x_3862.y, x_3864);
            let x_3871 : vec3<f32> = txVec57;
            let x_3873 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3871.xy, x_3871.z);
            u_xlat87 = x_3873;
            let x_3875 : f32 = u_xlat13.z;
            let x_3876 : f32 = u_xlat87;
            let x_3878 : f32 = u_xlat86;
            u_xlat86 = ((x_3875 * x_3876) + x_3878);
            let x_3881 : vec4<f32> = u_xlat12;
            let x_3882 : vec2<f32> = vec2<f32>(x_3881.x, x_3881.y);
            let x_3884 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3882.x, x_3882.y, x_3884);
            let x_3891 : vec3<f32> = txVec58;
            let x_3893 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3891.xy, x_3891.z);
            u_xlat87 = x_3893;
            let x_3895 : f32 = u_xlat13.w;
            let x_3896 : f32 = u_xlat87;
            let x_3898 : f32 = u_xlat86;
            u_xlat85 = ((x_3895 * x_3896) + x_3898);
          }
        }
      } else {
        let x_3902 : vec4<f32> = u_xlat11;
        let x_3903 : vec2<f32> = vec2<f32>(x_3902.x, x_3902.y);
        let x_3905 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3903.x, x_3903.y, x_3905);
        let x_3912 : vec3<f32> = txVec59;
        let x_3914 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3912.xy, x_3912.z);
        u_xlat85 = x_3914;
      }
      let x_3915 : i32 = u_xlati83;
      let x_3917 : f32 = x_745.x_AdditionalShadowParams[x_3915].x;
      u_xlat86 = (1.0f + -(x_3917));
      let x_3920 : f32 = u_xlat85;
      let x_3921 : i32 = u_xlati83;
      let x_3923 : f32 = x_745.x_AdditionalShadowParams[x_3921].x;
      let x_3925 : f32 = u_xlat86;
      u_xlat85 = ((x_3920 * x_3923) + x_3925);
      let x_3928 : f32 = u_xlat11.z;
      u_xlatb86 = (0.0f >= x_3928);
      let x_3932 : f32 = u_xlat11.z;
      u_xlatb87 = (x_3932 >= 1.0f);
      let x_3934 : bool = u_xlatb86;
      let x_3935 : bool = u_xlatb87;
      u_xlatb86 = (x_3934 | x_3935);
      let x_3937 : bool = u_xlatb86;
      let x_3938 : f32 = u_xlat85;
      u_xlat85 = select(x_3938, 1.0f, x_3937);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_3941 : f32 = u_xlat85;
    u_xlat86 = (-(x_3941) + 1.0f);
    let x_3944 : f32 = u_xlat80;
    let x_3945 : f32 = u_xlat86;
    let x_3947 : f32 = u_xlat85;
    u_xlat85 = ((x_3944 * x_3945) + x_3947);
    let x_3950 : i32 = u_xlati83;
    u_xlati86 = (1i << bitcast<u32>((x_3950 & 31i)));
    let x_3953 : i32 = u_xlati86;
    let x_3956 : f32 = x_2057.x_AdditionalLightsCookieEnableBits;
    u_xlati86 = bitcast<i32>((bitcast<u32>(x_3953) & bitcast<u32>(x_3956)));
    let x_3960 : i32 = u_xlati86;
    if ((x_3960 != 0i)) {
      let x_3964 : i32 = u_xlati83;
      let x_3966 : f32 = x_2057.x_AdditionalLightsLightTypes[x_3964].el;
      u_xlati86 = i32(x_3966);
      let x_3969 : i32 = u_xlati86;
      u_xlati87 = select(1i, 0i, (x_3969 != 0i));
      let x_3973 : i32 = u_xlati83;
      u_xlati88 = (x_3973 << bitcast<u32>(2i));
      let x_3975 : i32 = u_xlati87;
      if ((x_3975 != 0i)) {
        let x_3979 : vec3<f32> = vs_TEXCOORD7;
        let x_3981 : i32 = u_xlati88;
        let x_3984 : i32 = u_xlati88;
        let x_3988 : vec4<f32> = x_2057.x_AdditionalLightsWorldToLights[((x_3981 + 1i) / 4i)][((x_3984 + 1i) % 4i)];
        let x_3990 : vec3<f32> = (vec3<f32>(x_3979.y, x_3979.y, x_3979.y) * vec3<f32>(x_3988.x, x_3988.y, x_3988.w));
        let x_3991 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3990.x, x_3990.y, x_3990.z, x_3991.w);
        let x_3993 : i32 = u_xlati88;
        let x_3995 : i32 = u_xlati88;
        let x_3998 : vec4<f32> = x_2057.x_AdditionalLightsWorldToLights[(x_3993 / 4i)][(x_3995 % 4i)];
        let x_4000 : vec3<f32> = vs_TEXCOORD7;
        let x_4003 : vec4<f32> = u_xlat11;
        let x_4005 : vec3<f32> = ((vec3<f32>(x_3998.x, x_3998.y, x_3998.w) * vec3<f32>(x_4000.x, x_4000.x, x_4000.x)) + vec3<f32>(x_4003.x, x_4003.y, x_4003.z));
        let x_4006 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4005.x, x_4005.y, x_4005.z, x_4006.w);
        let x_4008 : i32 = u_xlati88;
        let x_4011 : i32 = u_xlati88;
        let x_4015 : vec4<f32> = x_2057.x_AdditionalLightsWorldToLights[((x_4008 + 2i) / 4i)][((x_4011 + 2i) % 4i)];
        let x_4017 : vec3<f32> = vs_TEXCOORD7;
        let x_4020 : vec4<f32> = u_xlat11;
        let x_4022 : vec3<f32> = ((vec3<f32>(x_4015.x, x_4015.y, x_4015.w) * vec3<f32>(x_4017.z, x_4017.z, x_4017.z)) + vec3<f32>(x_4020.x, x_4020.y, x_4020.z));
        let x_4023 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4022.x, x_4022.y, x_4022.z, x_4023.w);
        let x_4025 : vec4<f32> = u_xlat11;
        let x_4027 : i32 = u_xlati88;
        let x_4030 : i32 = u_xlati88;
        let x_4034 : vec4<f32> = x_2057.x_AdditionalLightsWorldToLights[((x_4027 + 3i) / 4i)][((x_4030 + 3i) % 4i)];
        let x_4036 : vec3<f32> = (vec3<f32>(x_4025.x, x_4025.y, x_4025.z) + vec3<f32>(x_4034.x, x_4034.y, x_4034.w));
        let x_4037 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4036.x, x_4036.y, x_4036.z, x_4037.w);
        let x_4039 : vec4<f32> = u_xlat11;
        let x_4041 : vec4<f32> = u_xlat11;
        let x_4043 : vec2<f32> = (vec2<f32>(x_4039.x, x_4039.y) / vec2<f32>(x_4041.z, x_4041.z));
        let x_4044 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4043.x, x_4043.y, x_4044.z, x_4044.w);
        let x_4046 : vec4<f32> = u_xlat11;
        let x_4049 : vec2<f32> = ((vec2<f32>(x_4046.x, x_4046.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4050 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4049.x, x_4049.y, x_4050.z, x_4050.w);
        let x_4052 : vec4<f32> = u_xlat11;
        let x_4056 : vec2<f32> = clamp(vec2<f32>(x_4052.x, x_4052.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4057 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4056.x, x_4056.y, x_4057.z, x_4057.w);
        let x_4059 : i32 = u_xlati83;
        let x_4061 : vec4<f32> = x_2057.x_AdditionalLightsCookieAtlasUVRects[x_4059];
        let x_4063 : vec4<f32> = u_xlat11;
        let x_4066 : i32 = u_xlati83;
        let x_4068 : vec4<f32> = x_2057.x_AdditionalLightsCookieAtlasUVRects[x_4066];
        let x_4070 : vec2<f32> = ((vec2<f32>(x_4061.x, x_4061.y) * vec2<f32>(x_4063.x, x_4063.y)) + vec2<f32>(x_4068.z, x_4068.w));
        let x_4071 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4070.x, x_4070.y, x_4071.z, x_4071.w);
      } else {
        let x_4074 : i32 = u_xlati86;
        u_xlatb86 = (x_4074 == 1i);
        let x_4076 : bool = u_xlatb86;
        u_xlati86 = select(0i, 1i, x_4076);
        let x_4078 : i32 = u_xlati86;
        if ((x_4078 != 0i)) {
          let x_4083 : vec3<f32> = vs_TEXCOORD7;
          let x_4085 : i32 = u_xlati88;
          let x_4088 : i32 = u_xlati88;
          let x_4092 : vec4<f32> = x_2057.x_AdditionalLightsWorldToLights[((x_4085 + 1i) / 4i)][((x_4088 + 1i) % 4i)];
          u_xlat63 = (vec2<f32>(x_4083.y, x_4083.y) * vec2<f32>(x_4092.x, x_4092.y));
          let x_4095 : i32 = u_xlati88;
          let x_4097 : i32 = u_xlati88;
          let x_4100 : vec4<f32> = x_2057.x_AdditionalLightsWorldToLights[(x_4095 / 4i)][(x_4097 % 4i)];
          let x_4102 : vec3<f32> = vs_TEXCOORD7;
          let x_4105 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4100.x, x_4100.y) * vec2<f32>(x_4102.x, x_4102.x)) + x_4105);
          let x_4107 : i32 = u_xlati88;
          let x_4110 : i32 = u_xlati88;
          let x_4114 : vec4<f32> = x_2057.x_AdditionalLightsWorldToLights[((x_4107 + 2i) / 4i)][((x_4110 + 2i) % 4i)];
          let x_4116 : vec3<f32> = vs_TEXCOORD7;
          let x_4119 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4114.x, x_4114.y) * vec2<f32>(x_4116.z, x_4116.z)) + x_4119);
          let x_4121 : vec2<f32> = u_xlat63;
          let x_4122 : i32 = u_xlati88;
          let x_4125 : i32 = u_xlati88;
          let x_4129 : vec4<f32> = x_2057.x_AdditionalLightsWorldToLights[((x_4122 + 3i) / 4i)][((x_4125 + 3i) % 4i)];
          u_xlat63 = (x_4121 + vec2<f32>(x_4129.x, x_4129.y));
          let x_4132 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4132 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4135 : vec2<f32> = u_xlat63;
          u_xlat63 = fract(x_4135);
          let x_4137 : i32 = u_xlati83;
          let x_4139 : vec4<f32> = x_2057.x_AdditionalLightsCookieAtlasUVRects[x_4137];
          let x_4141 : vec2<f32> = u_xlat63;
          let x_4143 : i32 = u_xlati83;
          let x_4145 : vec4<f32> = x_2057.x_AdditionalLightsCookieAtlasUVRects[x_4143];
          let x_4147 : vec2<f32> = ((vec2<f32>(x_4139.x, x_4139.y) * x_4141) + vec2<f32>(x_4145.z, x_4145.w));
          let x_4148 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4147.x, x_4147.y, x_4148.z, x_4148.w);
        } else {
          let x_4151 : vec3<f32> = vs_TEXCOORD7;
          let x_4153 : i32 = u_xlati88;
          let x_4156 : i32 = u_xlati88;
          let x_4160 : vec4<f32> = x_2057.x_AdditionalLightsWorldToLights[((x_4153 + 1i) / 4i)][((x_4156 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4151.y, x_4151.y, x_4151.y, x_4151.y) * x_4160);
          let x_4162 : i32 = u_xlati88;
          let x_4164 : i32 = u_xlati88;
          let x_4167 : vec4<f32> = x_2057.x_AdditionalLightsWorldToLights[(x_4162 / 4i)][(x_4164 % 4i)];
          let x_4168 : vec3<f32> = vs_TEXCOORD7;
          let x_4171 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4167 * vec4<f32>(x_4168.x, x_4168.x, x_4168.x, x_4168.x)) + x_4171);
          let x_4173 : i32 = u_xlati88;
          let x_4176 : i32 = u_xlati88;
          let x_4180 : vec4<f32> = x_2057.x_AdditionalLightsWorldToLights[((x_4173 + 2i) / 4i)][((x_4176 + 2i) % 4i)];
          let x_4181 : vec3<f32> = vs_TEXCOORD7;
          let x_4184 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4180 * vec4<f32>(x_4181.z, x_4181.z, x_4181.z, x_4181.z)) + x_4184);
          let x_4186 : vec4<f32> = u_xlat12;
          let x_4187 : i32 = u_xlati88;
          let x_4190 : i32 = u_xlati88;
          let x_4194 : vec4<f32> = x_2057.x_AdditionalLightsWorldToLights[((x_4187 + 3i) / 4i)][((x_4190 + 3i) % 4i)];
          u_xlat12 = (x_4186 + x_4194);
          let x_4196 : vec4<f32> = u_xlat12;
          let x_4198 : vec4<f32> = u_xlat12;
          let x_4200 : vec3<f32> = (vec3<f32>(x_4196.x, x_4196.y, x_4196.z) / vec3<f32>(x_4198.w, x_4198.w, x_4198.w));
          let x_4201 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4200.x, x_4200.y, x_4200.z, x_4201.w);
          let x_4203 : vec4<f32> = u_xlat12;
          let x_4205 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(vec3<f32>(x_4203.x, x_4203.y, x_4203.z), vec3<f32>(x_4205.x, x_4205.y, x_4205.z));
          let x_4208 : f32 = u_xlat86;
          u_xlat86 = inverseSqrt(x_4208);
          let x_4210 : f32 = u_xlat86;
          let x_4212 : vec4<f32> = u_xlat12;
          let x_4214 : vec3<f32> = (vec3<f32>(x_4210, x_4210, x_4210) * vec3<f32>(x_4212.x, x_4212.y, x_4212.z));
          let x_4215 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4214.x, x_4214.y, x_4214.z, x_4215.w);
          let x_4217 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(abs(vec3<f32>(x_4217.x, x_4217.y, x_4217.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4222 : f32 = u_xlat86;
          u_xlat86 = max(x_4222, 0.00000099999999747524f);
          let x_4225 : f32 = u_xlat86;
          u_xlat86 = (1.0f / x_4225);
          let x_4227 : f32 = u_xlat86;
          let x_4229 : vec4<f32> = u_xlat12;
          let x_4231 : vec3<f32> = (vec3<f32>(x_4227, x_4227, x_4227) * vec3<f32>(x_4229.z, x_4229.x, x_4229.y));
          let x_4232 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4231.x, x_4231.y, x_4231.z, x_4232.w);
          let x_4235 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4235);
          let x_4239 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4239, 0.0f, 1.0f);
          let x_4243 : vec4<f32> = u_xlat13;
          let x_4245 : vec4<bool> = (vec4<f32>(x_4243.y, x_4243.z, x_4243.y, x_4243.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_4245.x, x_4245.y);
          let x_4248 : bool = u_xlatb63.x;
          if (x_4248) {
            let x_4253 : f32 = u_xlat13.x;
            x_4249 = x_4253;
          } else {
            let x_4256 : f32 = u_xlat13.x;
            x_4249 = -(x_4256);
          }
          let x_4258 : f32 = x_4249;
          u_xlat63.x = x_4258;
          let x_4261 : bool = u_xlatb63.y;
          if (x_4261) {
            let x_4266 : f32 = u_xlat13.x;
            x_4262 = x_4266;
          } else {
            let x_4269 : f32 = u_xlat13.x;
            x_4262 = -(x_4269);
          }
          let x_4271 : f32 = x_4262;
          u_xlat63.y = x_4271;
          let x_4273 : vec4<f32> = u_xlat12;
          let x_4275 : f32 = u_xlat86;
          let x_4278 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4273.x, x_4273.y) * vec2<f32>(x_4275, x_4275)) + x_4278);
          let x_4280 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4280 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4283 : vec2<f32> = u_xlat63;
          u_xlat63 = clamp(x_4283, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4287 : i32 = u_xlati83;
          let x_4289 : vec4<f32> = x_2057.x_AdditionalLightsCookieAtlasUVRects[x_4287];
          let x_4291 : vec2<f32> = u_xlat63;
          let x_4293 : i32 = u_xlati83;
          let x_4295 : vec4<f32> = x_2057.x_AdditionalLightsCookieAtlasUVRects[x_4293];
          let x_4297 : vec2<f32> = ((vec2<f32>(x_4289.x, x_4289.y) * x_4291) + vec2<f32>(x_4295.z, x_4295.w));
          let x_4298 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4297.x, x_4297.y, x_4298.z, x_4298.w);
        }
      }
      let x_4305 : vec4<f32> = u_xlat11;
      let x_4307 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4305.x, x_4305.y), 0.0f);
      u_xlat11 = x_4307;
      let x_4309 : bool = u_xlatb7.y;
      if (x_4309) {
        let x_4314 : f32 = u_xlat11.w;
        x_4310 = x_4314;
      } else {
        let x_4317 : f32 = u_xlat11.x;
        x_4310 = x_4317;
      }
      let x_4318 : f32 = x_4310;
      u_xlat86 = x_4318;
      let x_4320 : bool = u_xlatb7.x;
      if (x_4320) {
        let x_4324 : vec4<f32> = u_xlat11;
        x_4321 = vec3<f32>(x_4324.x, x_4324.y, x_4324.z);
      } else {
        let x_4327 : f32 = u_xlat86;
        x_4321 = vec3<f32>(x_4327, x_4327, x_4327);
      }
      let x_4329 : vec3<f32> = x_4321;
      let x_4330 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4329.x, x_4329.y, x_4329.z, x_4330.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4336 : vec4<f32> = u_xlat11;
    let x_4338 : i32 = u_xlati83;
    let x_4340 : vec4<f32> = x_2532.x_AdditionalLightsColor[x_4338];
    let x_4342 : vec3<f32> = (vec3<f32>(x_4336.x, x_4336.y, x_4336.z) * vec3<f32>(x_4340.x, x_4340.y, x_4340.z));
    let x_4343 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4342.x, x_4342.y, x_4342.z, x_4343.w);
    let x_4345 : f32 = u_xlat84;
    let x_4346 : f32 = u_xlat85;
    u_xlat83 = (x_4345 * x_4346);
    let x_4348 : vec4<f32> = u_xlat1;
    let x_4350 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_4348.x, x_4348.y, x_4348.z), vec3<f32>(x_4350.x, x_4350.y, x_4350.z));
    let x_4353 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4353, 0.0f, 1.0f);
    let x_4355 : f32 = u_xlat83;
    let x_4356 : f32 = u_xlat84;
    u_xlat83 = (x_4355 * x_4356);
    let x_4358 : f32 = u_xlat83;
    let x_4360 : vec4<f32> = u_xlat11;
    let x_4362 : vec3<f32> = (vec3<f32>(x_4358, x_4358, x_4358) * vec3<f32>(x_4360.x, x_4360.y, x_4360.z));
    let x_4363 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4362.x, x_4362.y, x_4362.z, x_4363.w);
    let x_4365 : vec4<f32> = u_xlat9;
    let x_4367 : f32 = u_xlat59;
    let x_4370 : vec3<f32> = u_xlat2;
    let x_4371 : vec3<f32> = ((vec3<f32>(x_4365.x, x_4365.y, x_4365.z) * vec3<f32>(x_4367, x_4367, x_4367)) + x_4370);
    let x_4372 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4371.x, x_4371.y, x_4371.z, x_4372.w);
    let x_4374 : vec4<f32> = u_xlat9;
    let x_4376 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4374.x, x_4374.y, x_4374.z), vec3<f32>(x_4376.x, x_4376.y, x_4376.z));
    let x_4379 : f32 = u_xlat83;
    u_xlat83 = max(x_4379, 1.17549435e-38f);
    let x_4381 : f32 = u_xlat83;
    u_xlat83 = inverseSqrt(x_4381);
    let x_4383 : f32 = u_xlat83;
    let x_4385 : vec4<f32> = u_xlat9;
    let x_4387 : vec3<f32> = (vec3<f32>(x_4383, x_4383, x_4383) * vec3<f32>(x_4385.x, x_4385.y, x_4385.z));
    let x_4388 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4387.x, x_4387.y, x_4387.z, x_4388.w);
    let x_4390 : vec4<f32> = u_xlat1;
    let x_4392 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4390.x, x_4390.y, x_4390.z), vec3<f32>(x_4392.x, x_4392.y, x_4392.z));
    let x_4395 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4395, 0.0f, 1.0f);
    let x_4397 : vec4<f32> = u_xlat10;
    let x_4399 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4397.x, x_4397.y, x_4397.z), vec3<f32>(x_4399.x, x_4399.y, x_4399.z));
    let x_4402 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4402, 0.0f, 1.0f);
    let x_4404 : f32 = u_xlat83;
    let x_4405 : f32 = u_xlat83;
    u_xlat83 = (x_4404 * x_4405);
    let x_4407 : f32 = u_xlat83;
    let x_4409 : f32 = u_xlat0.x;
    u_xlat83 = ((x_4407 * x_4409) + 1.00001001358032226562f);
    let x_4412 : f32 = u_xlat84;
    let x_4413 : f32 = u_xlat84;
    u_xlat84 = (x_4412 * x_4413);
    let x_4415 : f32 = u_xlat83;
    let x_4416 : f32 = u_xlat83;
    u_xlat83 = (x_4415 * x_4416);
    let x_4418 : f32 = u_xlat84;
    u_xlat84 = max(x_4418, 0.10000000149011611938f);
    let x_4420 : f32 = u_xlat83;
    let x_4421 : f32 = u_xlat84;
    u_xlat83 = (x_4420 * x_4421);
    let x_4423 : f32 = u_xlat81;
    let x_4424 : f32 = u_xlat83;
    u_xlat83 = (x_4423 * x_4424);
    let x_4426 : f32 = u_xlat79;
    let x_4427 : f32 = u_xlat83;
    u_xlat83 = (x_4426 / x_4427);
    let x_4429 : vec4<f32> = u_xlat5;
    let x_4431 : f32 = u_xlat83;
    let x_4434 : vec4<f32> = u_xlat4;
    let x_4436 : vec3<f32> = ((vec3<f32>(x_4429.x, x_4429.y, x_4429.z) * vec3<f32>(x_4431, x_4431, x_4431)) + vec3<f32>(x_4434.x, x_4434.y, x_4434.z));
    let x_4437 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4436.x, x_4436.y, x_4436.z, x_4437.w);
    let x_4439 : vec4<f32> = u_xlat9;
    let x_4441 : vec4<f32> = u_xlat11;
    let x_4444 : vec4<f32> = u_xlat8;
    let x_4446 : vec3<f32> = ((vec3<f32>(x_4439.x, x_4439.y, x_4439.z) * vec3<f32>(x_4441.x, x_4441.y, x_4441.z)) + vec3<f32>(x_4444.x, x_4444.y, x_4444.z));
    let x_4447 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4446.x, x_4446.y, x_4446.z, x_4447.w);

    continuing {
      let x_4449 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4449 + bitcast<u32>(1i));
    }
  }
  let x_4451 : vec4<f32> = u_xlat3;
  let x_4453 : f32 = u_xlat26;
  let x_4456 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_4451.x, x_4451.y, x_4451.z) * vec3<f32>(x_4453, x_4453, x_4453)) + vec3<f32>(x_4456.x, x_4456.y, x_4456.z));
  let x_4459 : vec4<f32> = u_xlat8;
  let x_4461 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4459.x, x_4459.y, x_4459.z) + x_4461);
  let x_4465 : f32 = u_xlat78;
  let x_4467 : vec3<f32> = u_xlat0;
  let x_4468 : vec3<f32> = (vec3<f32>(x_4465, x_4465, x_4465) * x_4467);
  let x_4469 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4468.x, x_4468.y, x_4468.z, x_4469.w);
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


