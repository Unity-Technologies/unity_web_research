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

@group(1) @binding(4) var<uniform> x_606 : LightShadows;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlat80 : f32;

var<private> u_xlatu80 : u32;

var<private> u_xlati80 : i32;

@group(1) @binding(2) var<uniform> x_793 : UnityPerDraw;

var<private> u_xlat81 : f32;

var<private> u_xlatb82 : bool;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb29 : bool;

var<private> u_xlatb55 : bool;

var<private> u_xlat29 : f32;

var<private> u_xlat55 : f32;

@group(1) @binding(5) var<uniform> x_2220 : LightCookies;

@group(0) @binding(8) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb8 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu0 : u32;

var<private> u_xlatu55 : u32;

var<private> u_xlati82 : i32;

var<private> u_xlati55 : i32;

@group(1) @binding(1) var<uniform> x_2714 : AdditionalLights;

var<private> u_xlati84 : i32;

var<private> u_xlatb85 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat86 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

var<private> u_xlatb86 : bool;

var<private> u_xlati85 : i32;

var<private> u_xlati86 : i32;

var<private> u_xlati88 : i32;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlatb63 : vec2<bool>;

@group(0) @binding(9) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu79 : u32;

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
  var x_2173 : f32;
  var x_2303 : f32;
  var x_2314 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2842 : f32;
  var x_2852 : f32;
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
  var x_4422 : f32;
  var x_4435 : f32;
  var x_4483 : f32;
  var x_4494 : vec3<f32>;
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
  let x_598 : vec3<f32> = vs_TEXCOORD7;
  let x_608 : vec4<f32> = x_606.x_CascadeShadowSplitSpheres0;
  let x_611 : vec3<f32> = (x_598 + -(vec3<f32>(x_608.x, x_608.y, x_608.z)));
  let x_612 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_614 : vec3<f32> = vs_TEXCOORD7;
  let x_616 : vec4<f32> = x_606.x_CascadeShadowSplitSpheres1;
  let x_619 : vec3<f32> = (x_614 + -(vec3<f32>(x_616.x, x_616.y, x_616.z)));
  let x_620 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  let x_622 : vec3<f32> = vs_TEXCOORD7;
  let x_625 : vec4<f32> = x_606.x_CascadeShadowSplitSpheres2;
  let x_628 : vec3<f32> = (x_622 + -(vec3<f32>(x_625.x, x_625.y, x_625.z)));
  let x_629 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
  let x_631 : vec3<f32> = vs_TEXCOORD7;
  let x_633 : vec4<f32> = x_606.x_CascadeShadowSplitSpheres3;
  let x_636 : vec3<f32> = (x_631 + -(vec3<f32>(x_633.x, x_633.y, x_633.z)));
  let x_637 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
  let x_639 : vec4<f32> = u_xlat3;
  let x_641 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_639.x, x_639.y, x_639.z), vec3<f32>(x_641.x, x_641.y, x_641.z));
  let x_645 : vec4<f32> = u_xlat4;
  let x_647 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_645.x, x_645.y, x_645.z), vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_651 : vec4<f32> = u_xlat6;
  let x_653 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_651.x, x_651.y, x_651.z), vec3<f32>(x_653.x, x_653.y, x_653.z));
  let x_657 : vec4<f32> = u_xlat7;
  let x_659 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_657.x, x_657.y, x_657.z), vec3<f32>(x_659.x, x_659.y, x_659.z));
  let x_665 : vec4<f32> = u_xlat3;
  let x_667 : vec4<f32> = x_606.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_665 < x_667);
  let x_670 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_670);
  let x_674 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_674);
  let x_678 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_678);
  let x_682 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_682);
  let x_686 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_686);
  let x_691 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_691);
  let x_695 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_695);
  let x_698 : vec4<f32> = u_xlat3;
  let x_700 : vec4<f32> = u_xlat4;
  let x_702 : vec3<f32> = (vec3<f32>(x_698.x, x_698.y, x_698.z) + vec3<f32>(x_700.y, x_700.z, x_700.w));
  let x_703 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
  let x_705 : vec4<f32> = u_xlat3;
  let x_708 : vec3<f32> = max(vec3<f32>(x_705.x, x_705.y, x_705.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_709 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_709.x, x_708.x, x_708.y, x_708.z);
  let x_712 : vec4<f32> = u_xlat4;
  u_xlat80 = dot(x_712, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_717 : f32 = u_xlat80;
  u_xlat80 = (-(x_717) + 4.0f);
  let x_722 : f32 = u_xlat80;
  u_xlatu80 = u32(x_722);
  let x_726 : u32 = u_xlatu80;
  u_xlati80 = (bitcast<i32>(x_726) << bitcast<u32>(2i));
  let x_729 : vec3<f32> = vs_TEXCOORD7;
  let x_731 : i32 = u_xlati80;
  let x_734 : i32 = u_xlati80;
  let x_738 : vec4<f32> = x_606.x_MainLightWorldToShadow[((x_731 + 1i) / 4i)][((x_734 + 1i) % 4i)];
  let x_740 : vec3<f32> = (vec3<f32>(x_729.y, x_729.y, x_729.y) * vec3<f32>(x_738.x, x_738.y, x_738.z));
  let x_741 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
  let x_743 : i32 = u_xlati80;
  let x_745 : i32 = u_xlati80;
  let x_748 : vec4<f32> = x_606.x_MainLightWorldToShadow[(x_743 / 4i)][(x_745 % 4i)];
  let x_750 : vec3<f32> = vs_TEXCOORD7;
  let x_753 : vec4<f32> = u_xlat3;
  let x_755 : vec3<f32> = ((vec3<f32>(x_748.x, x_748.y, x_748.z) * vec3<f32>(x_750.x, x_750.x, x_750.x)) + vec3<f32>(x_753.x, x_753.y, x_753.z));
  let x_756 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
  let x_758 : i32 = u_xlati80;
  let x_761 : i32 = u_xlati80;
  let x_765 : vec4<f32> = x_606.x_MainLightWorldToShadow[((x_758 + 2i) / 4i)][((x_761 + 2i) % 4i)];
  let x_767 : vec3<f32> = vs_TEXCOORD7;
  let x_770 : vec4<f32> = u_xlat3;
  let x_772 : vec3<f32> = ((vec3<f32>(x_765.x, x_765.y, x_765.z) * vec3<f32>(x_767.z, x_767.z, x_767.z)) + vec3<f32>(x_770.x, x_770.y, x_770.z));
  let x_773 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_772.x, x_772.y, x_772.z, x_773.w);
  let x_775 : vec4<f32> = u_xlat3;
  let x_777 : i32 = u_xlati80;
  let x_780 : i32 = u_xlati80;
  let x_784 : vec4<f32> = x_606.x_MainLightWorldToShadow[((x_777 + 3i) / 4i)][((x_780 + 3i) % 4i)];
  let x_786 : vec3<f32> = (vec3<f32>(x_775.x, x_775.y, x_775.z) + vec3<f32>(x_784.x, x_784.y, x_784.z));
  let x_787 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_786.x, x_786.y, x_786.z, x_787.w);
  u_xlat1.w = 1.0f;
  let x_795 : vec4<f32> = x_793.unity_SHAr;
  let x_796 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_795, x_796);
  let x_800 : vec4<f32> = x_793.unity_SHAg;
  let x_801 : vec4<f32> = u_xlat1;
  u_xlat4.y = dot(x_800, x_801);
  let x_805 : vec4<f32> = x_793.unity_SHAb;
  let x_806 : vec4<f32> = u_xlat1;
  u_xlat4.z = dot(x_805, x_806);
  let x_809 : vec4<f32> = u_xlat1;
  let x_811 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec4<f32>(x_809.y, x_809.z, x_809.z, x_809.x) * vec4<f32>(x_811.x, x_811.y, x_811.z, x_811.z));
  let x_815 : vec4<f32> = x_793.unity_SHBr;
  let x_816 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_815, x_816);
  let x_820 : vec4<f32> = x_793.unity_SHBg;
  let x_821 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_820, x_821);
  let x_825 : vec4<f32> = x_793.unity_SHBb;
  let x_826 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_825, x_826);
  let x_830 : f32 = u_xlat1.y;
  let x_832 : f32 = u_xlat1.y;
  u_xlat79 = (x_830 * x_832);
  let x_835 : f32 = u_xlat1.x;
  let x_837 : f32 = u_xlat1.x;
  let x_839 : f32 = u_xlat79;
  u_xlat79 = ((x_835 * x_837) + -(x_839));
  let x_844 : vec4<f32> = x_793.unity_SHC;
  let x_846 : f32 = u_xlat79;
  let x_849 : vec4<f32> = u_xlat7;
  let x_851 : vec3<f32> = ((vec3<f32>(x_844.x, x_844.y, x_844.z) * vec3<f32>(x_846, x_846, x_846)) + vec3<f32>(x_849.x, x_849.y, x_849.z));
  let x_852 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
  let x_854 : vec4<f32> = u_xlat4;
  let x_856 : vec4<f32> = u_xlat6;
  let x_858 : vec3<f32> = (vec3<f32>(x_854.x, x_854.y, x_854.z) + vec3<f32>(x_856.x, x_856.y, x_856.z));
  let x_859 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  let x_861 : vec4<f32> = u_xlat4;
  let x_863 : vec3<f32> = max(vec3<f32>(x_861.x, x_861.y, x_861.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_864 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_863.x, x_863.y, x_863.z, x_864.w);
  let x_867 : f32 = u_xlat0.x;
  u_xlat79 = ((-(x_867) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_872 : f32 = u_xlat79;
  u_xlat80 = (-(x_872) + 1.0f);
  let x_875 : f32 = u_xlat79;
  let x_877 : vec4<f32> = u_xlat5;
  let x_879 : vec3<f32> = (vec3<f32>(x_875, x_875, x_875) * vec3<f32>(x_877.x, x_877.y, x_877.z));
  let x_880 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_879.x, x_879.y, x_879.z, x_880.w);
  let x_882 : vec4<f32> = u_xlat5;
  let x_886 : vec3<f32> = (vec3<f32>(x_882.x, x_882.y, x_882.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_887 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_886.x, x_886.y, x_886.z, x_887.w);
  let x_889 : vec3<f32> = u_xlat0;
  let x_891 : vec4<f32> = u_xlat5;
  let x_896 : vec3<f32> = ((vec3<f32>(x_889.x, x_889.x, x_889.x) * vec3<f32>(x_891.x, x_891.y, x_891.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_897 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_896.x, x_896.y, x_896.z, x_897.w);
  let x_899 : f32 = u_xlat52;
  u_xlat0.x = (-(x_899) + 1.0f);
  let x_904 : f32 = u_xlat0.x;
  let x_906 : f32 = u_xlat0.x;
  u_xlat79 = (x_904 * x_906);
  let x_908 : f32 = u_xlat79;
  u_xlat79 = max(x_908, 0.0078125f);
  let x_912 : f32 = u_xlat79;
  let x_913 : f32 = u_xlat79;
  u_xlat81 = (x_912 * x_913);
  let x_915 : f32 = u_xlat52;
  let x_916 : f32 = u_xlat80;
  u_xlat52 = (x_915 + x_916);
  let x_918 : f32 = u_xlat52;
  u_xlat52 = clamp(x_918, 0.0f, 1.0f);
  let x_920 : f32 = u_xlat79;
  u_xlat80 = ((x_920 * 4.0f) + 2.0f);
  let x_923 : f32 = u_xlat26;
  u_xlat26 = min(x_923, 1.0f);
  let x_927 : f32 = x_606.x_MainLightShadowParams.y;
  u_xlatb82 = (0.0f < x_927);
  let x_929 : bool = u_xlatb82;
  if (x_929) {
    let x_933 : f32 = x_606.x_MainLightShadowParams.y;
    u_xlatb82 = (x_933 == 1.0f);
    let x_935 : bool = u_xlatb82;
    if (x_935) {
      let x_938 : vec4<f32> = u_xlat3;
      let x_941 : vec4<f32> = x_606.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_938.x, x_938.y, x_938.x, x_938.y) + x_941);
      let x_945 : vec4<f32> = u_xlat7;
      let x_946 : vec2<f32> = vec2<f32>(x_945.x, x_945.y);
      let x_948 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_946.x, x_946.y, x_948);
      let x_960 : vec3<f32> = txVec0;
      let x_962 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_960.xy, x_960.z);
      u_xlat8.x = x_962;
      let x_965 : vec4<f32> = u_xlat7;
      let x_966 : vec2<f32> = vec2<f32>(x_965.z, x_965.w);
      let x_968 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_966.x, x_966.y, x_968);
      let x_975 : vec3<f32> = txVec1;
      let x_977 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_975.xy, x_975.z);
      u_xlat8.y = x_977;
      let x_979 : vec4<f32> = u_xlat3;
      let x_982 : vec4<f32> = x_606.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_979.x, x_979.y, x_979.x, x_979.y) + x_982);
      let x_985 : vec4<f32> = u_xlat7;
      let x_986 : vec2<f32> = vec2<f32>(x_985.x, x_985.y);
      let x_988 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_986.x, x_986.y, x_988);
      let x_995 : vec3<f32> = txVec2;
      let x_997 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_995.xy, x_995.z);
      u_xlat8.z = x_997;
      let x_1000 : vec4<f32> = u_xlat7;
      let x_1001 : vec2<f32> = vec2<f32>(x_1000.z, x_1000.w);
      let x_1003 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_1001.x, x_1001.y, x_1003);
      let x_1010 : vec3<f32> = txVec3;
      let x_1012 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1010.xy, x_1010.z);
      u_xlat8.w = x_1012;
      let x_1015 : vec4<f32> = u_xlat8;
      u_xlat82 = dot(x_1015, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1022 : f32 = x_606.x_MainLightShadowParams.y;
      u_xlatb83 = (x_1022 == 2.0f);
      let x_1024 : bool = u_xlatb83;
      if (x_1024) {
        let x_1027 : vec4<f32> = u_xlat3;
        let x_1030 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1033 : vec2<f32> = ((vec2<f32>(x_1027.x, x_1027.y) * vec2<f32>(x_1030.z, x_1030.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1034 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1033.x, x_1033.y, x_1034.z, x_1034.w);
        let x_1036 : vec4<f32> = u_xlat7;
        let x_1038 : vec2<f32> = floor(vec2<f32>(x_1036.x, x_1036.y));
        let x_1039 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1038.x, x_1038.y, x_1039.z, x_1039.w);
        let x_1043 : vec4<f32> = u_xlat3;
        let x_1046 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1049 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1043.x, x_1043.y) * vec2<f32>(x_1046.z, x_1046.w)) + -(vec2<f32>(x_1049.x, x_1049.y)));
        let x_1053 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_1053.x, x_1053.x, x_1053.y, x_1053.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1057 : vec4<f32> = u_xlat8;
        let x_1059 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1057.x, x_1057.x, x_1057.z, x_1057.z) * vec4<f32>(x_1059.x, x_1059.x, x_1059.z, x_1059.z));
        let x_1062 : vec4<f32> = u_xlat9;
        let x_1066 : vec2<f32> = (vec2<f32>(x_1062.y, x_1062.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1067 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1066.x, x_1067.y, x_1066.y, x_1067.w);
        let x_1069 : vec4<f32> = u_xlat9;
        let x_1072 : vec2<f32> = u_xlat59;
        let x_1074 : vec2<f32> = ((vec2<f32>(x_1069.x, x_1069.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1072));
        let x_1075 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1074.x, x_1074.y, x_1075.z, x_1075.w);
        let x_1078 : vec2<f32> = u_xlat59;
        u_xlat61 = (-(x_1078) + vec2<f32>(1.0f, 1.0f));
        let x_1082 : vec2<f32> = u_xlat59;
        let x_1084 : vec2<f32> = min(x_1082, vec2<f32>(0.0f, 0.0f));
        let x_1085 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1084.x, x_1084.y, x_1085.z, x_1085.w);
        let x_1087 : vec4<f32> = u_xlat10;
        let x_1090 : vec4<f32> = u_xlat10;
        let x_1093 : vec2<f32> = u_xlat61;
        let x_1094 : vec2<f32> = ((-(vec2<f32>(x_1087.x, x_1087.y)) * vec2<f32>(x_1090.x, x_1090.y)) + x_1093);
        let x_1095 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1094.x, x_1094.y, x_1095.z, x_1095.w);
        let x_1097 : vec2<f32> = u_xlat59;
        u_xlat59 = max(x_1097, vec2<f32>(0.0f, 0.0f));
        let x_1099 : vec2<f32> = u_xlat59;
        let x_1101 : vec2<f32> = u_xlat59;
        let x_1103 : vec4<f32> = u_xlat8;
        u_xlat59 = ((-(x_1099) * x_1101) + vec2<f32>(x_1103.y, x_1103.w));
        let x_1106 : vec4<f32> = u_xlat10;
        let x_1108 : vec2<f32> = (vec2<f32>(x_1106.x, x_1106.y) + vec2<f32>(1.0f, 1.0f));
        let x_1109 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1108.x, x_1108.y, x_1109.z, x_1109.w);
        let x_1111 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_1111 + vec2<f32>(1.0f, 1.0f));
        let x_1113 : vec4<f32> = u_xlat9;
        let x_1117 : vec2<f32> = (vec2<f32>(x_1113.x, x_1113.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1118 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1117.x, x_1117.y, x_1118.z, x_1118.w);
        let x_1120 : vec2<f32> = u_xlat61;
        let x_1121 : vec2<f32> = (x_1120 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1122 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1121.x, x_1121.y, x_1122.z, x_1122.w);
        let x_1124 : vec4<f32> = u_xlat10;
        let x_1126 : vec2<f32> = (vec2<f32>(x_1124.x, x_1124.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1127 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1126.x, x_1126.y, x_1127.z, x_1127.w);
        let x_1129 : vec2<f32> = u_xlat59;
        let x_1130 : vec2<f32> = (x_1129 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1131 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1130.x, x_1130.y, x_1131.z, x_1131.w);
        let x_1133 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_1133.y, x_1133.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1137 : f32 = u_xlat10.x;
        u_xlat11.z = x_1137;
        let x_1140 : f32 = u_xlat59.x;
        u_xlat11.w = x_1140;
        let x_1143 : f32 = u_xlat12.x;
        u_xlat9.z = x_1143;
        let x_1146 : f32 = u_xlat8.x;
        u_xlat9.w = x_1146;
        let x_1148 : vec4<f32> = u_xlat9;
        let x_1150 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1148.z, x_1148.w, x_1148.x, x_1148.z) + vec4<f32>(x_1150.z, x_1150.w, x_1150.x, x_1150.z));
        let x_1154 : f32 = u_xlat11.y;
        u_xlat10.z = x_1154;
        let x_1157 : f32 = u_xlat59.y;
        u_xlat10.w = x_1157;
        let x_1160 : f32 = u_xlat9.y;
        u_xlat12.z = x_1160;
        let x_1163 : f32 = u_xlat8.z;
        u_xlat12.w = x_1163;
        let x_1165 : vec4<f32> = u_xlat10;
        let x_1167 : vec4<f32> = u_xlat12;
        let x_1169 : vec3<f32> = (vec3<f32>(x_1165.z, x_1165.y, x_1165.w) + vec3<f32>(x_1167.z, x_1167.y, x_1167.w));
        let x_1170 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1169.x, x_1169.y, x_1169.z, x_1170.w);
        let x_1172 : vec4<f32> = u_xlat9;
        let x_1174 : vec4<f32> = u_xlat13;
        let x_1176 : vec3<f32> = (vec3<f32>(x_1172.x, x_1172.z, x_1172.w) / vec3<f32>(x_1174.z, x_1174.w, x_1174.y));
        let x_1177 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1176.x, x_1176.y, x_1176.z, x_1177.w);
        let x_1179 : vec4<f32> = u_xlat9;
        let x_1185 : vec3<f32> = (vec3<f32>(x_1179.x, x_1179.y, x_1179.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1186 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1185.x, x_1185.y, x_1185.z, x_1186.w);
        let x_1188 : vec4<f32> = u_xlat12;
        let x_1190 : vec4<f32> = u_xlat8;
        let x_1192 : vec3<f32> = (vec3<f32>(x_1188.z, x_1188.y, x_1188.w) / vec3<f32>(x_1190.x, x_1190.y, x_1190.z));
        let x_1193 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1192.x, x_1192.y, x_1192.z, x_1193.w);
        let x_1195 : vec4<f32> = u_xlat10;
        let x_1197 : vec3<f32> = (vec3<f32>(x_1195.x, x_1195.y, x_1195.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1198 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1197.x, x_1197.y, x_1197.z, x_1198.w);
        let x_1200 : vec4<f32> = u_xlat9;
        let x_1203 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1205 : vec3<f32> = (vec3<f32>(x_1200.y, x_1200.x, x_1200.z) * vec3<f32>(x_1203.x, x_1203.x, x_1203.x));
        let x_1206 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1205.x, x_1205.y, x_1205.z, x_1206.w);
        let x_1208 : vec4<f32> = u_xlat10;
        let x_1211 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1213 : vec3<f32> = (vec3<f32>(x_1208.x, x_1208.y, x_1208.z) * vec3<f32>(x_1211.y, x_1211.y, x_1211.y));
        let x_1214 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1213.x, x_1213.y, x_1213.z, x_1214.w);
        let x_1217 : f32 = u_xlat10.x;
        u_xlat9.w = x_1217;
        let x_1219 : vec4<f32> = u_xlat7;
        let x_1222 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1225 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1219.x, x_1219.y, x_1219.x, x_1219.y) * vec4<f32>(x_1222.x, x_1222.y, x_1222.x, x_1222.y)) + vec4<f32>(x_1225.y, x_1225.w, x_1225.x, x_1225.w));
        let x_1228 : vec4<f32> = u_xlat7;
        let x_1231 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1234 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1228.x, x_1228.y) * vec2<f32>(x_1231.x, x_1231.y)) + vec2<f32>(x_1234.z, x_1234.w));
        let x_1238 : f32 = u_xlat9.y;
        u_xlat10.w = x_1238;
        let x_1240 : vec4<f32> = u_xlat10;
        let x_1241 : vec2<f32> = vec2<f32>(x_1240.y, x_1240.z);
        let x_1242 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1242.x, x_1241.x, x_1242.z, x_1241.y);
        let x_1244 : vec4<f32> = u_xlat7;
        let x_1247 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1250 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1244.x, x_1244.y, x_1244.x, x_1244.y) * vec4<f32>(x_1247.x, x_1247.y, x_1247.x, x_1247.y)) + vec4<f32>(x_1250.x, x_1250.y, x_1250.z, x_1250.y));
        let x_1253 : vec4<f32> = u_xlat7;
        let x_1256 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1259 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1253.x, x_1253.y, x_1253.x, x_1253.y) * vec4<f32>(x_1256.x, x_1256.y, x_1256.x, x_1256.y)) + vec4<f32>(x_1259.w, x_1259.y, x_1259.w, x_1259.z));
        let x_1262 : vec4<f32> = u_xlat7;
        let x_1265 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1268 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1262.x, x_1262.y, x_1262.x, x_1262.y) * vec4<f32>(x_1265.x, x_1265.y, x_1265.x, x_1265.y)) + vec4<f32>(x_1268.x, x_1268.w, x_1268.z, x_1268.w));
        let x_1272 : vec4<f32> = u_xlat8;
        let x_1274 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1272.x, x_1272.x, x_1272.x, x_1272.y) * vec4<f32>(x_1274.z, x_1274.w, x_1274.y, x_1274.z));
        let x_1278 : vec4<f32> = u_xlat8;
        let x_1280 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1278.y, x_1278.y, x_1278.z, x_1278.z) * x_1280);
        let x_1284 : f32 = u_xlat8.z;
        let x_1286 : f32 = u_xlat13.y;
        u_xlat83 = (x_1284 * x_1286);
        let x_1289 : vec4<f32> = u_xlat11;
        let x_1290 : vec2<f32> = vec2<f32>(x_1289.x, x_1289.y);
        let x_1292 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1290.x, x_1290.y, x_1292);
        let x_1300 : vec3<f32> = txVec4;
        let x_1302 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1300.xy, x_1300.z);
        u_xlat84 = x_1302;
        let x_1304 : vec4<f32> = u_xlat11;
        let x_1305 : vec2<f32> = vec2<f32>(x_1304.z, x_1304.w);
        let x_1307 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1305.x, x_1305.y, x_1307);
        let x_1314 : vec3<f32> = txVec5;
        let x_1316 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1314.xy, x_1314.z);
        u_xlat7.x = x_1316;
        let x_1319 : f32 = u_xlat7.x;
        let x_1321 : f32 = u_xlat14.y;
        u_xlat7.x = (x_1319 * x_1321);
        let x_1325 : f32 = u_xlat14.x;
        let x_1326 : f32 = u_xlat84;
        let x_1329 : f32 = u_xlat7.x;
        u_xlat84 = ((x_1325 * x_1326) + x_1329);
        let x_1332 : vec2<f32> = u_xlat59;
        let x_1334 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1332.x, x_1332.y, x_1334);
        let x_1341 : vec3<f32> = txVec6;
        let x_1343 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1341.xy, x_1341.z);
        u_xlat7.x = x_1343;
        let x_1346 : f32 = u_xlat14.z;
        let x_1348 : f32 = u_xlat7.x;
        let x_1350 : f32 = u_xlat84;
        u_xlat84 = ((x_1346 * x_1348) + x_1350);
        let x_1353 : vec4<f32> = u_xlat10;
        let x_1354 : vec2<f32> = vec2<f32>(x_1353.x, x_1353.y);
        let x_1356 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1354.x, x_1354.y, x_1356);
        let x_1363 : vec3<f32> = txVec7;
        let x_1365 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1363.xy, x_1363.z);
        u_xlat7.x = x_1365;
        let x_1368 : f32 = u_xlat14.w;
        let x_1370 : f32 = u_xlat7.x;
        let x_1372 : f32 = u_xlat84;
        u_xlat84 = ((x_1368 * x_1370) + x_1372);
        let x_1375 : vec4<f32> = u_xlat12;
        let x_1376 : vec2<f32> = vec2<f32>(x_1375.x, x_1375.y);
        let x_1378 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1376.x, x_1376.y, x_1378);
        let x_1385 : vec3<f32> = txVec8;
        let x_1387 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1385.xy, x_1385.z);
        u_xlat7.x = x_1387;
        let x_1390 : f32 = u_xlat15.x;
        let x_1392 : f32 = u_xlat7.x;
        let x_1394 : f32 = u_xlat84;
        u_xlat84 = ((x_1390 * x_1392) + x_1394);
        let x_1397 : vec4<f32> = u_xlat12;
        let x_1398 : vec2<f32> = vec2<f32>(x_1397.z, x_1397.w);
        let x_1400 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1398.x, x_1398.y, x_1400);
        let x_1407 : vec3<f32> = txVec9;
        let x_1409 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1407.xy, x_1407.z);
        u_xlat7.x = x_1409;
        let x_1412 : f32 = u_xlat15.y;
        let x_1414 : f32 = u_xlat7.x;
        let x_1416 : f32 = u_xlat84;
        u_xlat84 = ((x_1412 * x_1414) + x_1416);
        let x_1419 : vec4<f32> = u_xlat10;
        let x_1420 : vec2<f32> = vec2<f32>(x_1419.z, x_1419.w);
        let x_1422 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1420.x, x_1420.y, x_1422);
        let x_1429 : vec3<f32> = txVec10;
        let x_1431 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1429.xy, x_1429.z);
        u_xlat7.x = x_1431;
        let x_1434 : f32 = u_xlat15.z;
        let x_1436 : f32 = u_xlat7.x;
        let x_1438 : f32 = u_xlat84;
        u_xlat84 = ((x_1434 * x_1436) + x_1438);
        let x_1441 : vec4<f32> = u_xlat9;
        let x_1442 : vec2<f32> = vec2<f32>(x_1441.x, x_1441.y);
        let x_1444 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1442.x, x_1442.y, x_1444);
        let x_1451 : vec3<f32> = txVec11;
        let x_1453 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1451.xy, x_1451.z);
        u_xlat7.x = x_1453;
        let x_1456 : f32 = u_xlat15.w;
        let x_1458 : f32 = u_xlat7.x;
        let x_1460 : f32 = u_xlat84;
        u_xlat84 = ((x_1456 * x_1458) + x_1460);
        let x_1463 : vec4<f32> = u_xlat9;
        let x_1464 : vec2<f32> = vec2<f32>(x_1463.z, x_1463.w);
        let x_1466 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1464.x, x_1464.y, x_1466);
        let x_1473 : vec3<f32> = txVec12;
        let x_1475 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1473.xy, x_1473.z);
        u_xlat7.x = x_1475;
        let x_1477 : f32 = u_xlat83;
        let x_1479 : f32 = u_xlat7.x;
        let x_1481 : f32 = u_xlat84;
        u_xlat82 = ((x_1477 * x_1479) + x_1481);
      } else {
        let x_1484 : vec4<f32> = u_xlat3;
        let x_1487 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1490 : vec2<f32> = ((vec2<f32>(x_1484.x, x_1484.y) * vec2<f32>(x_1487.z, x_1487.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1491 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1490.x, x_1490.y, x_1491.z, x_1491.w);
        let x_1493 : vec4<f32> = u_xlat7;
        let x_1495 : vec2<f32> = floor(vec2<f32>(x_1493.x, x_1493.y));
        let x_1496 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1495.x, x_1495.y, x_1496.z, x_1496.w);
        let x_1498 : vec4<f32> = u_xlat3;
        let x_1501 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1504 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1498.x, x_1498.y) * vec2<f32>(x_1501.z, x_1501.w)) + -(vec2<f32>(x_1504.x, x_1504.y)));
        let x_1508 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_1508.x, x_1508.x, x_1508.y, x_1508.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1511 : vec4<f32> = u_xlat8;
        let x_1513 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1511.x, x_1511.x, x_1511.z, x_1511.z) * vec4<f32>(x_1513.x, x_1513.x, x_1513.z, x_1513.z));
        let x_1516 : vec4<f32> = u_xlat9;
        let x_1520 : vec2<f32> = (vec2<f32>(x_1516.y, x_1516.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1521 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1521.x, x_1520.x, x_1521.z, x_1520.y);
        let x_1523 : vec4<f32> = u_xlat9;
        let x_1526 : vec2<f32> = u_xlat59;
        let x_1528 : vec2<f32> = ((vec2<f32>(x_1523.x, x_1523.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1526));
        let x_1529 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1528.x, x_1529.y, x_1528.y, x_1529.w);
        let x_1531 : vec2<f32> = u_xlat59;
        let x_1533 : vec2<f32> = (-(x_1531) + vec2<f32>(1.0f, 1.0f));
        let x_1534 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1533.x, x_1533.y, x_1534.z, x_1534.w);
        let x_1536 : vec2<f32> = u_xlat59;
        u_xlat61 = min(x_1536, vec2<f32>(0.0f, 0.0f));
        let x_1538 : vec2<f32> = u_xlat61;
        let x_1540 : vec2<f32> = u_xlat61;
        let x_1542 : vec4<f32> = u_xlat9;
        let x_1544 : vec2<f32> = ((-(x_1538) * x_1540) + vec2<f32>(x_1542.x, x_1542.y));
        let x_1545 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1544.x, x_1544.y, x_1545.z, x_1545.w);
        let x_1547 : vec2<f32> = u_xlat59;
        u_xlat61 = max(x_1547, vec2<f32>(0.0f, 0.0f));
        let x_1550 : vec2<f32> = u_xlat61;
        let x_1552 : vec2<f32> = u_xlat61;
        let x_1554 : vec4<f32> = u_xlat8;
        let x_1556 : vec2<f32> = ((-(x_1550) * x_1552) + vec2<f32>(x_1554.y, x_1554.w));
        let x_1557 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1556.x, x_1557.y, x_1556.y);
        let x_1559 : vec4<f32> = u_xlat9;
        let x_1562 : vec2<f32> = (vec2<f32>(x_1559.x, x_1559.y) + vec2<f32>(2.0f, 2.0f));
        let x_1563 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1562.x, x_1562.y, x_1563.z, x_1563.w);
        let x_1565 : vec3<f32> = u_xlat34;
        let x_1567 : vec2<f32> = (vec2<f32>(x_1565.x, x_1565.z) + vec2<f32>(2.0f, 2.0f));
        let x_1568 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1568.x, x_1567.x, x_1568.z, x_1567.y);
        let x_1571 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1571 * 0.08163200318813323975f);
        let x_1575 : vec4<f32> = u_xlat8;
        let x_1578 : vec3<f32> = (vec3<f32>(x_1575.z, x_1575.x, x_1575.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1579 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1578.x, x_1578.y, x_1578.z, x_1579.w);
        let x_1581 : vec4<f32> = u_xlat9;
        let x_1584 : vec2<f32> = (vec2<f32>(x_1581.x, x_1581.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1585 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1584.x, x_1584.y, x_1585.z, x_1585.w);
        let x_1588 : f32 = u_xlat12.y;
        u_xlat11.x = x_1588;
        let x_1590 : vec2<f32> = u_xlat59;
        let x_1597 : vec2<f32> = ((vec2<f32>(x_1590.x, x_1590.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1598 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1598.x, x_1597.x, x_1598.z, x_1597.y);
        let x_1600 : vec2<f32> = u_xlat59;
        let x_1604 : vec2<f32> = ((vec2<f32>(x_1600.x, x_1600.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1605 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1604.x, x_1605.y, x_1604.y, x_1605.w);
        let x_1608 : f32 = u_xlat8.x;
        u_xlat9.y = x_1608;
        let x_1611 : f32 = u_xlat10.y;
        u_xlat9.w = x_1611;
        let x_1613 : vec4<f32> = u_xlat9;
        let x_1614 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1613 + x_1614);
        let x_1616 : vec2<f32> = u_xlat59;
        let x_1619 : vec2<f32> = ((vec2<f32>(x_1616.y, x_1616.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1620 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1620.x, x_1619.x, x_1620.z, x_1619.y);
        let x_1622 : vec2<f32> = u_xlat59;
        let x_1625 : vec2<f32> = ((vec2<f32>(x_1622.y, x_1622.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1626 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1625.x, x_1626.y, x_1625.y, x_1626.w);
        let x_1629 : f32 = u_xlat8.y;
        u_xlat10.y = x_1629;
        let x_1631 : vec4<f32> = u_xlat10;
        let x_1632 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1631 + x_1632);
        let x_1634 : vec4<f32> = u_xlat9;
        let x_1635 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1634 / x_1635);
        let x_1637 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1637 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1643 : vec4<f32> = u_xlat10;
        let x_1644 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1643 / x_1644);
        let x_1646 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1646 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1648 : vec4<f32> = u_xlat9;
        let x_1651 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1648.w, x_1648.x, x_1648.y, x_1648.z) * vec4<f32>(x_1651.x, x_1651.x, x_1651.x, x_1651.x));
        let x_1654 : vec4<f32> = u_xlat10;
        let x_1657 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1654.x, x_1654.w, x_1654.y, x_1654.z) * vec4<f32>(x_1657.y, x_1657.y, x_1657.y, x_1657.y));
        let x_1660 : vec4<f32> = u_xlat9;
        let x_1661 : vec3<f32> = vec3<f32>(x_1660.y, x_1660.z, x_1660.w);
        let x_1662 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1661.x, x_1662.y, x_1661.y, x_1661.z);
        let x_1665 : f32 = u_xlat10.x;
        u_xlat12.y = x_1665;
        let x_1667 : vec4<f32> = u_xlat7;
        let x_1670 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1673 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1667.x, x_1667.y, x_1667.x, x_1667.y) * vec4<f32>(x_1670.x, x_1670.y, x_1670.x, x_1670.y)) + vec4<f32>(x_1673.x, x_1673.y, x_1673.z, x_1673.y));
        let x_1676 : vec4<f32> = u_xlat7;
        let x_1679 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1682 : vec4<f32> = u_xlat12;
        u_xlat59 = ((vec2<f32>(x_1676.x, x_1676.y) * vec2<f32>(x_1679.x, x_1679.y)) + vec2<f32>(x_1682.w, x_1682.y));
        let x_1686 : f32 = u_xlat12.y;
        u_xlat9.y = x_1686;
        let x_1689 : f32 = u_xlat10.z;
        u_xlat12.y = x_1689;
        let x_1691 : vec4<f32> = u_xlat7;
        let x_1694 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1697 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1691.x, x_1691.y, x_1691.x, x_1691.y) * vec4<f32>(x_1694.x, x_1694.y, x_1694.x, x_1694.y)) + vec4<f32>(x_1697.x, x_1697.y, x_1697.z, x_1697.y));
        let x_1700 : vec4<f32> = u_xlat7;
        let x_1703 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1706 : vec4<f32> = u_xlat12;
        let x_1708 : vec2<f32> = ((vec2<f32>(x_1700.x, x_1700.y) * vec2<f32>(x_1703.x, x_1703.y)) + vec2<f32>(x_1706.w, x_1706.y));
        let x_1709 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1708.x, x_1708.y, x_1709.z, x_1709.w);
        let x_1712 : f32 = u_xlat12.y;
        u_xlat9.z = x_1712;
        let x_1715 : vec4<f32> = u_xlat7;
        let x_1718 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1721 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1715.x, x_1715.y, x_1715.x, x_1715.y) * vec4<f32>(x_1718.x, x_1718.y, x_1718.x, x_1718.y)) + vec4<f32>(x_1721.x, x_1721.y, x_1721.x, x_1721.z));
        let x_1725 : f32 = u_xlat10.w;
        u_xlat12.y = x_1725;
        let x_1728 : vec4<f32> = u_xlat7;
        let x_1731 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1734 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1728.x, x_1728.y, x_1728.x, x_1728.y) * vec4<f32>(x_1731.x, x_1731.y, x_1731.x, x_1731.y)) + vec4<f32>(x_1734.x, x_1734.y, x_1734.z, x_1734.y));
        let x_1738 : vec4<f32> = u_xlat7;
        let x_1741 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1744 : vec4<f32> = u_xlat12;
        let x_1746 : vec2<f32> = ((vec2<f32>(x_1738.x, x_1738.y) * vec2<f32>(x_1741.x, x_1741.y)) + vec2<f32>(x_1744.w, x_1744.y));
        let x_1747 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_1746.x, x_1746.y, x_1747.z);
        let x_1750 : f32 = u_xlat12.y;
        u_xlat9.w = x_1750;
        let x_1753 : vec4<f32> = u_xlat7;
        let x_1756 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1759 : vec4<f32> = u_xlat9;
        u_xlat67 = ((vec2<f32>(x_1753.x, x_1753.y) * vec2<f32>(x_1756.x, x_1756.y)) + vec2<f32>(x_1759.x, x_1759.w));
        let x_1762 : vec4<f32> = u_xlat12;
        let x_1763 : vec3<f32> = vec3<f32>(x_1762.x, x_1762.z, x_1762.w);
        let x_1764 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1763.x, x_1764.y, x_1763.y, x_1763.z);
        let x_1766 : vec4<f32> = u_xlat7;
        let x_1769 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1772 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1766.x, x_1766.y, x_1766.x, x_1766.y) * vec4<f32>(x_1769.x, x_1769.y, x_1769.x, x_1769.y)) + vec4<f32>(x_1772.x, x_1772.y, x_1772.z, x_1772.y));
        let x_1776 : vec4<f32> = u_xlat7;
        let x_1779 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1782 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_1776.x, x_1776.y) * vec2<f32>(x_1779.x, x_1779.y)) + vec2<f32>(x_1782.w, x_1782.y));
        let x_1786 : f32 = u_xlat9.x;
        u_xlat10.x = x_1786;
        let x_1788 : vec4<f32> = u_xlat7;
        let x_1791 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1794 : vec4<f32> = u_xlat10;
        let x_1796 : vec2<f32> = ((vec2<f32>(x_1788.x, x_1788.y) * vec2<f32>(x_1791.x, x_1791.y)) + vec2<f32>(x_1794.x, x_1794.y));
        let x_1797 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1796.x, x_1796.y, x_1797.z, x_1797.w);
        let x_1800 : vec4<f32> = u_xlat8;
        let x_1802 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1800.x, x_1800.x, x_1800.x, x_1800.x) * x_1802);
        let x_1805 : vec4<f32> = u_xlat8;
        let x_1807 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1805.y, x_1805.y, x_1805.y, x_1805.y) * x_1807);
        let x_1810 : vec4<f32> = u_xlat8;
        let x_1812 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1810.z, x_1810.z, x_1810.z, x_1810.z) * x_1812);
        let x_1814 : vec4<f32> = u_xlat8;
        let x_1816 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1814.w, x_1814.w, x_1814.w, x_1814.w) * x_1816);
        let x_1819 : vec4<f32> = u_xlat13;
        let x_1820 : vec2<f32> = vec2<f32>(x_1819.x, x_1819.y);
        let x_1822 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1820.x, x_1820.y, x_1822);
        let x_1829 : vec3<f32> = txVec13;
        let x_1831 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1829.xy, x_1829.z);
        u_xlat83 = x_1831;
        let x_1833 : vec4<f32> = u_xlat13;
        let x_1834 : vec2<f32> = vec2<f32>(x_1833.z, x_1833.w);
        let x_1836 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1834.x, x_1834.y, x_1836);
        let x_1843 : vec3<f32> = txVec14;
        let x_1845 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1843.xy, x_1843.z);
        u_xlat84 = x_1845;
        let x_1846 : f32 = u_xlat84;
        let x_1848 : f32 = u_xlat18.y;
        u_xlat84 = (x_1846 * x_1848);
        let x_1851 : f32 = u_xlat18.x;
        let x_1852 : f32 = u_xlat83;
        let x_1854 : f32 = u_xlat84;
        u_xlat83 = ((x_1851 * x_1852) + x_1854);
        let x_1857 : vec2<f32> = u_xlat59;
        let x_1859 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1857.x, x_1857.y, x_1859);
        let x_1866 : vec3<f32> = txVec15;
        let x_1868 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1866.xy, x_1866.z);
        u_xlat84 = x_1868;
        let x_1870 : f32 = u_xlat18.z;
        let x_1871 : f32 = u_xlat84;
        let x_1873 : f32 = u_xlat83;
        u_xlat83 = ((x_1870 * x_1871) + x_1873);
        let x_1876 : vec4<f32> = u_xlat16;
        let x_1877 : vec2<f32> = vec2<f32>(x_1876.x, x_1876.y);
        let x_1879 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1877.x, x_1877.y, x_1879);
        let x_1886 : vec3<f32> = txVec16;
        let x_1888 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1886.xy, x_1886.z);
        u_xlat84 = x_1888;
        let x_1890 : f32 = u_xlat18.w;
        let x_1891 : f32 = u_xlat84;
        let x_1893 : f32 = u_xlat83;
        u_xlat83 = ((x_1890 * x_1891) + x_1893);
        let x_1896 : vec4<f32> = u_xlat14;
        let x_1897 : vec2<f32> = vec2<f32>(x_1896.x, x_1896.y);
        let x_1899 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1897.x, x_1897.y, x_1899);
        let x_1906 : vec3<f32> = txVec17;
        let x_1908 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1906.xy, x_1906.z);
        u_xlat84 = x_1908;
        let x_1910 : f32 = u_xlat19.x;
        let x_1911 : f32 = u_xlat84;
        let x_1913 : f32 = u_xlat83;
        u_xlat83 = ((x_1910 * x_1911) + x_1913);
        let x_1916 : vec4<f32> = u_xlat14;
        let x_1917 : vec2<f32> = vec2<f32>(x_1916.z, x_1916.w);
        let x_1919 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1917.x, x_1917.y, x_1919);
        let x_1926 : vec3<f32> = txVec18;
        let x_1928 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1926.xy, x_1926.z);
        u_xlat84 = x_1928;
        let x_1930 : f32 = u_xlat19.y;
        let x_1931 : f32 = u_xlat84;
        let x_1933 : f32 = u_xlat83;
        u_xlat83 = ((x_1930 * x_1931) + x_1933);
        let x_1936 : vec4<f32> = u_xlat15;
        let x_1937 : vec2<f32> = vec2<f32>(x_1936.x, x_1936.y);
        let x_1939 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1937.x, x_1937.y, x_1939);
        let x_1946 : vec3<f32> = txVec19;
        let x_1948 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1946.xy, x_1946.z);
        u_xlat84 = x_1948;
        let x_1950 : f32 = u_xlat19.z;
        let x_1951 : f32 = u_xlat84;
        let x_1953 : f32 = u_xlat83;
        u_xlat83 = ((x_1950 * x_1951) + x_1953);
        let x_1956 : vec4<f32> = u_xlat16;
        let x_1957 : vec2<f32> = vec2<f32>(x_1956.z, x_1956.w);
        let x_1959 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1957.x, x_1957.y, x_1959);
        let x_1966 : vec3<f32> = txVec20;
        let x_1968 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1966.xy, x_1966.z);
        u_xlat84 = x_1968;
        let x_1970 : f32 = u_xlat19.w;
        let x_1971 : f32 = u_xlat84;
        let x_1973 : f32 = u_xlat83;
        u_xlat83 = ((x_1970 * x_1971) + x_1973);
        let x_1976 : vec4<f32> = u_xlat17;
        let x_1977 : vec2<f32> = vec2<f32>(x_1976.x, x_1976.y);
        let x_1979 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1977.x, x_1977.y, x_1979);
        let x_1986 : vec3<f32> = txVec21;
        let x_1988 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1986.xy, x_1986.z);
        u_xlat84 = x_1988;
        let x_1990 : f32 = u_xlat20.x;
        let x_1991 : f32 = u_xlat84;
        let x_1993 : f32 = u_xlat83;
        u_xlat83 = ((x_1990 * x_1991) + x_1993);
        let x_1996 : vec4<f32> = u_xlat17;
        let x_1997 : vec2<f32> = vec2<f32>(x_1996.z, x_1996.w);
        let x_1999 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1997.x, x_1997.y, x_1999);
        let x_2006 : vec3<f32> = txVec22;
        let x_2008 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2006.xy, x_2006.z);
        u_xlat84 = x_2008;
        let x_2010 : f32 = u_xlat20.y;
        let x_2011 : f32 = u_xlat84;
        let x_2013 : f32 = u_xlat83;
        u_xlat83 = ((x_2010 * x_2011) + x_2013);
        let x_2016 : vec3<f32> = u_xlat35;
        let x_2017 : vec2<f32> = vec2<f32>(x_2016.x, x_2016.y);
        let x_2019 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_2017.x, x_2017.y, x_2019);
        let x_2026 : vec3<f32> = txVec23;
        let x_2028 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2026.xy, x_2026.z);
        u_xlat84 = x_2028;
        let x_2030 : f32 = u_xlat20.z;
        let x_2031 : f32 = u_xlat84;
        let x_2033 : f32 = u_xlat83;
        u_xlat83 = ((x_2030 * x_2031) + x_2033);
        let x_2036 : vec2<f32> = u_xlat67;
        let x_2038 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2036.x, x_2036.y, x_2038);
        let x_2045 : vec3<f32> = txVec24;
        let x_2047 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2045.xy, x_2045.z);
        u_xlat84 = x_2047;
        let x_2049 : f32 = u_xlat20.w;
        let x_2050 : f32 = u_xlat84;
        let x_2052 : f32 = u_xlat83;
        u_xlat83 = ((x_2049 * x_2050) + x_2052);
        let x_2055 : vec4<f32> = u_xlat12;
        let x_2056 : vec2<f32> = vec2<f32>(x_2055.x, x_2055.y);
        let x_2058 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2056.x, x_2056.y, x_2058);
        let x_2065 : vec3<f32> = txVec25;
        let x_2067 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2065.xy, x_2065.z);
        u_xlat84 = x_2067;
        let x_2069 : f32 = u_xlat8.x;
        let x_2070 : f32 = u_xlat84;
        let x_2072 : f32 = u_xlat83;
        u_xlat83 = ((x_2069 * x_2070) + x_2072);
        let x_2075 : vec4<f32> = u_xlat12;
        let x_2076 : vec2<f32> = vec2<f32>(x_2075.z, x_2075.w);
        let x_2078 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2076.x, x_2076.y, x_2078);
        let x_2085 : vec3<f32> = txVec26;
        let x_2087 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2085.xy, x_2085.z);
        u_xlat84 = x_2087;
        let x_2089 : f32 = u_xlat8.y;
        let x_2090 : f32 = u_xlat84;
        let x_2092 : f32 = u_xlat83;
        u_xlat83 = ((x_2089 * x_2090) + x_2092);
        let x_2095 : vec2<f32> = u_xlat62;
        let x_2097 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2095.x, x_2095.y, x_2097);
        let x_2104 : vec3<f32> = txVec27;
        let x_2106 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2104.xy, x_2104.z);
        u_xlat84 = x_2106;
        let x_2108 : f32 = u_xlat8.z;
        let x_2109 : f32 = u_xlat84;
        let x_2111 : f32 = u_xlat83;
        u_xlat83 = ((x_2108 * x_2109) + x_2111);
        let x_2114 : vec4<f32> = u_xlat7;
        let x_2115 : vec2<f32> = vec2<f32>(x_2114.x, x_2114.y);
        let x_2117 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2115.x, x_2115.y, x_2117);
        let x_2124 : vec3<f32> = txVec28;
        let x_2126 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2124.xy, x_2124.z);
        u_xlat84 = x_2126;
        let x_2128 : f32 = u_xlat8.w;
        let x_2129 : f32 = u_xlat84;
        let x_2131 : f32 = u_xlat83;
        u_xlat82 = ((x_2128 * x_2129) + x_2131);
      }
    }
  } else {
    let x_2135 : vec4<f32> = u_xlat3;
    let x_2136 : vec2<f32> = vec2<f32>(x_2135.x, x_2135.y);
    let x_2138 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2136.x, x_2136.y, x_2138);
    let x_2145 : vec3<f32> = txVec29;
    let x_2147 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2145.xy, x_2145.z);
    u_xlat82 = x_2147;
  }
  let x_2149 : f32 = x_606.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2149) + 1.0f);
  let x_2153 : f32 = u_xlat82;
  let x_2155 : f32 = x_606.x_MainLightShadowParams.x;
  let x_2158 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2153 * x_2155) + x_2158);
  let x_2163 : f32 = u_xlat3.z;
  u_xlatb29 = (0.0f >= x_2163);
  let x_2167 : f32 = u_xlat3.z;
  u_xlatb55 = (x_2167 >= 1.0f);
  let x_2169 : bool = u_xlatb55;
  let x_2170 : bool = u_xlatb29;
  u_xlatb29 = (x_2169 | x_2170);
  let x_2172 : bool = u_xlatb29;
  if (x_2172) {
    x_2173 = 1.0f;
  } else {
    let x_2178 : f32 = u_xlat3.x;
    x_2173 = x_2178;
  }
  let x_2179 : f32 = x_2173;
  u_xlat3.x = x_2179;
  let x_2181 : vec3<f32> = vs_TEXCOORD7;
  let x_2183 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_2185 : vec3<f32> = (x_2181 + -(x_2183));
  let x_2186 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2185.x, x_2185.y, x_2185.z, x_2186.w);
  let x_2189 : vec4<f32> = u_xlat7;
  let x_2191 : vec4<f32> = u_xlat7;
  u_xlat29 = dot(vec3<f32>(x_2189.x, x_2189.y, x_2189.z), vec3<f32>(x_2191.x, x_2191.y, x_2191.z));
  let x_2195 : f32 = u_xlat29;
  let x_2197 : f32 = x_606.x_MainLightShadowParams.z;
  let x_2200 : f32 = x_606.x_MainLightShadowParams.w;
  u_xlat55 = ((x_2195 * x_2197) + x_2200);
  let x_2202 : f32 = u_xlat55;
  u_xlat55 = clamp(x_2202, 0.0f, 1.0f);
  let x_2205 : f32 = u_xlat3.x;
  u_xlat82 = (-(x_2205) + 1.0f);
  let x_2208 : f32 = u_xlat55;
  let x_2209 : f32 = u_xlat82;
  let x_2212 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2208 * x_2209) + x_2212);
  let x_2222 : f32 = x_2220.x_MainLightCookieTextureFormat;
  u_xlatb55 = !((x_2222 == -1.0f));
  let x_2224 : bool = u_xlatb55;
  if (x_2224) {
    let x_2227 : vec3<f32> = vs_TEXCOORD7;
    let x_2230 : vec4<f32> = x_2220.x_MainLightWorldToLight[1i];
    let x_2232 : vec2<f32> = (vec2<f32>(x_2227.y, x_2227.y) * vec2<f32>(x_2230.x, x_2230.y));
    let x_2233 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2232.x, x_2232.y, x_2233.z, x_2233.w);
    let x_2236 : vec4<f32> = x_2220.x_MainLightWorldToLight[0i];
    let x_2238 : vec3<f32> = vs_TEXCOORD7;
    let x_2241 : vec4<f32> = u_xlat7;
    let x_2243 : vec2<f32> = ((vec2<f32>(x_2236.x, x_2236.y) * vec2<f32>(x_2238.x, x_2238.x)) + vec2<f32>(x_2241.x, x_2241.y));
    let x_2244 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2243.x, x_2243.y, x_2244.z, x_2244.w);
    let x_2247 : vec4<f32> = x_2220.x_MainLightWorldToLight[2i];
    let x_2249 : vec3<f32> = vs_TEXCOORD7;
    let x_2252 : vec4<f32> = u_xlat7;
    let x_2254 : vec2<f32> = ((vec2<f32>(x_2247.x, x_2247.y) * vec2<f32>(x_2249.z, x_2249.z)) + vec2<f32>(x_2252.x, x_2252.y));
    let x_2255 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2254.x, x_2254.y, x_2255.z, x_2255.w);
    let x_2257 : vec4<f32> = u_xlat7;
    let x_2260 : vec4<f32> = x_2220.x_MainLightWorldToLight[3i];
    let x_2262 : vec2<f32> = (vec2<f32>(x_2257.x, x_2257.y) + vec2<f32>(x_2260.x, x_2260.y));
    let x_2263 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2262.x, x_2262.y, x_2263.z, x_2263.w);
    let x_2265 : vec4<f32> = u_xlat7;
    let x_2268 : vec2<f32> = ((vec2<f32>(x_2265.x, x_2265.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2269 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2268.x, x_2268.y, x_2269.z, x_2269.w);
    let x_2276 : vec4<f32> = u_xlat7;
    let x_2279 : f32 = x_111.x_GlobalMipBias.x;
    let x_2280 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2276.x, x_2276.y), x_2279);
    u_xlat7 = x_2280;
    let x_2285 : f32 = x_2220.x_MainLightCookieTextureFormat;
    let x_2287 : f32 = x_2220.x_MainLightCookieTextureFormat;
    let x_2289 : f32 = x_2220.x_MainLightCookieTextureFormat;
    let x_2291 : f32 = x_2220.x_MainLightCookieTextureFormat;
    let x_2292 : vec4<f32> = vec4<f32>(x_2285, x_2287, x_2289, x_2291);
    let x_2299 : vec4<bool> = (vec4<f32>(x_2292.x, x_2292.y, x_2292.z, x_2292.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_2299.x, x_2299.y);
    let x_2302 : bool = u_xlatb8.y;
    if (x_2302) {
      let x_2307 : f32 = u_xlat7.w;
      x_2303 = x_2307;
    } else {
      let x_2310 : f32 = u_xlat7.x;
      x_2303 = x_2310;
    }
    let x_2311 : f32 = x_2303;
    u_xlat55 = x_2311;
    let x_2313 : bool = u_xlatb8.x;
    if (x_2313) {
      let x_2317 : vec4<f32> = u_xlat7;
      x_2314 = vec3<f32>(x_2317.x, x_2317.y, x_2317.z);
    } else {
      let x_2320 : f32 = u_xlat55;
      x_2314 = vec3<f32>(x_2320, x_2320, x_2320);
    }
    let x_2322 : vec3<f32> = x_2314;
    let x_2323 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2322.x, x_2322.y, x_2322.z, x_2323.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_2329 : vec4<f32> = u_xlat7;
  let x_2332 : vec4<f32> = x_111.x_MainLightColor;
  let x_2334 : vec3<f32> = (vec3<f32>(x_2329.x, x_2329.y, x_2329.z) * vec3<f32>(x_2332.x, x_2332.y, x_2332.z));
  let x_2335 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2334.x, x_2334.y, x_2334.z, x_2335.w);
  let x_2337 : vec3<f32> = u_xlat2;
  let x_2339 : vec4<f32> = u_xlat1;
  u_xlat55 = dot(-(x_2337), vec3<f32>(x_2339.x, x_2339.y, x_2339.z));
  let x_2342 : f32 = u_xlat55;
  let x_2343 : f32 = u_xlat55;
  u_xlat55 = (x_2342 + x_2343);
  let x_2345 : vec4<f32> = u_xlat1;
  let x_2347 : f32 = u_xlat55;
  let x_2351 : vec3<f32> = u_xlat2;
  let x_2353 : vec3<f32> = ((vec3<f32>(x_2345.x, x_2345.y, x_2345.z) * -(vec3<f32>(x_2347, x_2347, x_2347))) + -(x_2351));
  let x_2354 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2353.x, x_2353.y, x_2353.z, x_2354.w);
  let x_2356 : vec4<f32> = u_xlat1;
  let x_2358 : vec3<f32> = u_xlat2;
  u_xlat55 = dot(vec3<f32>(x_2356.x, x_2356.y, x_2356.z), x_2358);
  let x_2360 : f32 = u_xlat55;
  u_xlat55 = clamp(x_2360, 0.0f, 1.0f);
  let x_2362 : f32 = u_xlat55;
  u_xlat55 = (-(x_2362) + 1.0f);
  let x_2365 : f32 = u_xlat55;
  let x_2366 : f32 = u_xlat55;
  u_xlat55 = (x_2365 * x_2366);
  let x_2368 : f32 = u_xlat55;
  let x_2369 : f32 = u_xlat55;
  u_xlat55 = (x_2368 * x_2369);
  let x_2372 : f32 = u_xlat0.x;
  u_xlat82 = ((-(x_2372) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2379 : f32 = u_xlat0.x;
  let x_2380 : f32 = u_xlat82;
  u_xlat0.x = (x_2379 * x_2380);
  let x_2384 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2384 * 6.0f);
  let x_2396 : vec4<f32> = u_xlat8;
  let x_2399 : f32 = u_xlat0.x;
  let x_2400 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2396.x, x_2396.y, x_2396.z), x_2399);
  u_xlat8 = x_2400;
  let x_2402 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2402 + -1.0f);
  let x_2406 : f32 = x_793.unity_SpecCube0_HDR.w;
  let x_2408 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2406 * x_2408) + 1.0f);
  let x_2413 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2413, 0.0f);
  let x_2417 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2417);
  let x_2421 : f32 = u_xlat0.x;
  let x_2423 : f32 = x_793.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2421 * x_2423);
  let x_2427 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2427);
  let x_2431 : f32 = u_xlat0.x;
  let x_2433 : f32 = x_793.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2431 * x_2433);
  let x_2436 : vec4<f32> = u_xlat8;
  let x_2438 : vec3<f32> = u_xlat0;
  let x_2440 : vec3<f32> = (vec3<f32>(x_2436.x, x_2436.y, x_2436.z) * vec3<f32>(x_2438.x, x_2438.x, x_2438.x));
  let x_2441 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2440.x, x_2440.y, x_2440.z, x_2441.w);
  let x_2443 : f32 = u_xlat79;
  let x_2445 : f32 = u_xlat79;
  let x_2449 : vec2<f32> = ((vec2<f32>(x_2443, x_2443) * vec2<f32>(x_2445, x_2445)) + vec2<f32>(-1.0f, 1.0f));
  let x_2450 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2449.x, x_2449.y, x_2450.z, x_2450.w);
  let x_2453 : f32 = u_xlat9.y;
  u_xlat0.x = (1.0f / x_2453);
  let x_2456 : vec4<f32> = u_xlat5;
  let x_2459 : f32 = u_xlat52;
  u_xlat35 = (-(vec3<f32>(x_2456.x, x_2456.y, x_2456.z)) + vec3<f32>(x_2459, x_2459, x_2459));
  let x_2462 : f32 = u_xlat55;
  let x_2464 : vec3<f32> = u_xlat35;
  let x_2466 : vec4<f32> = u_xlat5;
  u_xlat35 = ((vec3<f32>(x_2462, x_2462, x_2462) * x_2464) + vec3<f32>(x_2466.x, x_2466.y, x_2466.z));
  let x_2469 : vec3<f32> = u_xlat0;
  let x_2471 : vec3<f32> = u_xlat35;
  u_xlat35 = (vec3<f32>(x_2469.x, x_2469.x, x_2469.x) * x_2471);
  let x_2473 : vec4<f32> = u_xlat8;
  let x_2475 : vec3<f32> = u_xlat35;
  let x_2476 : vec3<f32> = (vec3<f32>(x_2473.x, x_2473.y, x_2473.z) * x_2475);
  let x_2477 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2476.x, x_2476.y, x_2476.z, x_2477.w);
  let x_2479 : vec4<f32> = u_xlat4;
  let x_2481 : vec4<f32> = u_xlat6;
  let x_2484 : vec4<f32> = u_xlat8;
  let x_2486 : vec3<f32> = ((vec3<f32>(x_2479.x, x_2479.y, x_2479.z) * vec3<f32>(x_2481.x, x_2481.y, x_2481.z)) + vec3<f32>(x_2484.x, x_2484.y, x_2484.z));
  let x_2487 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2486.x, x_2486.y, x_2486.z, x_2487.w);
  let x_2490 : f32 = u_xlat3.x;
  let x_2492 : f32 = x_793.unity_LightData.z;
  u_xlat0.x = (x_2490 * x_2492);
  let x_2495 : vec4<f32> = u_xlat1;
  let x_2498 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat52 = dot(vec3<f32>(x_2495.x, x_2495.y, x_2495.z), vec3<f32>(x_2498.x, x_2498.y, x_2498.z));
  let x_2501 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2501, 0.0f, 1.0f);
  let x_2503 : f32 = u_xlat52;
  let x_2505 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2503 * x_2505);
  let x_2508 : vec3<f32> = u_xlat0;
  let x_2510 : vec4<f32> = u_xlat7;
  let x_2512 : vec3<f32> = (vec3<f32>(x_2508.x, x_2508.x, x_2508.x) * vec3<f32>(x_2510.x, x_2510.y, x_2510.z));
  let x_2513 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2512.x, x_2512.y, x_2512.z, x_2513.w);
  let x_2515 : vec3<f32> = u_xlat2;
  let x_2517 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2519 : vec3<f32> = (x_2515 + vec3<f32>(x_2517.x, x_2517.y, x_2517.z));
  let x_2520 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2519.x, x_2519.y, x_2519.z, x_2520.w);
  let x_2522 : vec4<f32> = u_xlat8;
  let x_2524 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_2522.x, x_2522.y, x_2522.z), vec3<f32>(x_2524.x, x_2524.y, x_2524.z));
  let x_2529 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2529, 1.17549435e-38f);
  let x_2534 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2534);
  let x_2537 : vec3<f32> = u_xlat0;
  let x_2539 : vec4<f32> = u_xlat8;
  let x_2541 : vec3<f32> = (vec3<f32>(x_2537.x, x_2537.x, x_2537.x) * vec3<f32>(x_2539.x, x_2539.y, x_2539.z));
  let x_2542 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2541.x, x_2541.y, x_2541.z, x_2542.w);
  let x_2544 : vec4<f32> = u_xlat1;
  let x_2546 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_2544.x, x_2544.y, x_2544.z), vec3<f32>(x_2546.x, x_2546.y, x_2546.z));
  let x_2551 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2551, 0.0f, 1.0f);
  let x_2555 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2557 : vec4<f32> = u_xlat8;
  u_xlat0.z = dot(vec3<f32>(x_2555.x, x_2555.y, x_2555.z), vec3<f32>(x_2557.x, x_2557.y, x_2557.z));
  let x_2562 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_2562, 0.0f, 1.0f);
  let x_2565 : vec3<f32> = u_xlat0;
  let x_2567 : vec3<f32> = u_xlat0;
  let x_2569 : vec2<f32> = (vec2<f32>(x_2565.x, x_2565.z) * vec2<f32>(x_2567.x, x_2567.z));
  let x_2570 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2569.x, x_2570.y, x_2569.y);
  let x_2573 : f32 = u_xlat0.x;
  let x_2575 : f32 = u_xlat9.x;
  u_xlat0.x = ((x_2573 * x_2575) + 1.00001001358032226562f);
  let x_2581 : f32 = u_xlat0.x;
  let x_2583 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2581 * x_2583);
  let x_2587 : f32 = u_xlat0.z;
  u_xlat52 = max(x_2587, 0.10000000149011611938f);
  let x_2590 : f32 = u_xlat52;
  let x_2592 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2590 * x_2592);
  let x_2595 : f32 = u_xlat80;
  let x_2597 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2595 * x_2597);
  let x_2600 : f32 = u_xlat81;
  let x_2602 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2600 / x_2602);
  let x_2605 : vec4<f32> = u_xlat5;
  let x_2607 : vec3<f32> = u_xlat0;
  let x_2610 : vec4<f32> = u_xlat6;
  let x_2612 : vec3<f32> = ((vec3<f32>(x_2605.x, x_2605.y, x_2605.z) * vec3<f32>(x_2607.x, x_2607.x, x_2607.x)) + vec3<f32>(x_2610.x, x_2610.y, x_2610.z));
  let x_2613 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2612.x, x_2612.y, x_2612.z, x_2613.w);
  let x_2615 : vec4<f32> = u_xlat7;
  let x_2617 : vec4<f32> = u_xlat8;
  let x_2619 : vec3<f32> = (vec3<f32>(x_2615.x, x_2615.y, x_2615.z) * vec3<f32>(x_2617.x, x_2617.y, x_2617.z));
  let x_2620 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2619.x, x_2619.y, x_2619.z, x_2620.w);
  let x_2623 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_2625 : f32 = x_793.unity_LightData.y;
  u_xlat0.x = min(x_2623, x_2625);
  let x_2630 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2630));
  let x_2633 : f32 = u_xlat29;
  let x_2635 : f32 = x_606.x_AdditionalShadowFadeParams.x;
  let x_2638 : f32 = x_606.x_AdditionalShadowFadeParams.y;
  u_xlat52 = ((x_2633 * x_2635) + x_2638);
  let x_2640 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2640, 0.0f, 1.0f);
  let x_2643 : f32 = x_2220.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2645 : f32 = x_2220.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2647 : f32 = x_2220.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2649 : f32 = x_2220.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2650 : vec4<f32> = vec4<f32>(x_2643, x_2645, x_2647, x_2649);
  let x_2656 : vec4<bool> = (vec4<f32>(x_2650.x, x_2650.y, x_2650.z, x_2650.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_2657 : vec2<bool> = vec2<bool>(x_2656.x, x_2656.y);
  let x_2658 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_2657.x, x_2657.y, x_2658.z, x_2658.w);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2670 : u32 = u_xlatu_loop_1;
    let x_2671 : u32 = u_xlatu0;
    if ((x_2670 < x_2671)) {
    } else {
      break;
    }
    let x_2674 : u32 = u_xlatu_loop_1;
    u_xlatu55 = (x_2674 >> 2u);
    let x_2677 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_2677 & 3u));
    let x_2680 : u32 = u_xlatu55;
    let x_2683 : vec4<f32> = x_793.unity_LightIndices[bitcast<i32>(x_2680)];
    let x_2693 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2698 : vec4<u32> = indexable[x_2693];
    u_xlat55 = dot(x_2683, bitcast<vec4<f32>>(x_2698));
    let x_2702 : f32 = u_xlat55;
    u_xlati55 = i32(x_2702);
    let x_2704 : vec3<f32> = vs_TEXCOORD7;
    let x_2715 : i32 = u_xlati55;
    let x_2717 : vec4<f32> = x_2714.x_AdditionalLightsPosition[x_2715];
    let x_2720 : i32 = u_xlati55;
    let x_2722 : vec4<f32> = x_2714.x_AdditionalLightsPosition[x_2720];
    u_xlat35 = ((-(x_2704) * vec3<f32>(x_2717.w, x_2717.w, x_2717.w)) + vec3<f32>(x_2722.x, x_2722.y, x_2722.z));
    let x_2725 : vec3<f32> = u_xlat35;
    let x_2726 : vec3<f32> = u_xlat35;
    u_xlat82 = dot(x_2725, x_2726);
    let x_2728 : f32 = u_xlat82;
    u_xlat82 = max(x_2728, 0.00006103515625f);
    let x_2730 : f32 = u_xlat82;
    u_xlat83 = inverseSqrt(x_2730);
    let x_2732 : f32 = u_xlat83;
    let x_2734 : vec3<f32> = u_xlat35;
    let x_2735 : vec3<f32> = (vec3<f32>(x_2732, x_2732, x_2732) * x_2734);
    let x_2736 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2735.x, x_2735.y, x_2735.z, x_2736.w);
    let x_2738 : f32 = u_xlat82;
    u_xlat84 = (1.0f / x_2738);
    let x_2740 : f32 = u_xlat82;
    let x_2741 : i32 = u_xlati55;
    let x_2743 : f32 = x_2714.x_AdditionalLightsAttenuation[x_2741].x;
    u_xlat82 = (x_2740 * x_2743);
    let x_2745 : f32 = u_xlat82;
    let x_2747 : f32 = u_xlat82;
    u_xlat82 = ((-(x_2745) * x_2747) + 1.0f);
    let x_2750 : f32 = u_xlat82;
    u_xlat82 = max(x_2750, 0.0f);
    let x_2752 : f32 = u_xlat82;
    let x_2753 : f32 = u_xlat82;
    u_xlat82 = (x_2752 * x_2753);
    let x_2755 : f32 = u_xlat82;
    let x_2756 : f32 = u_xlat84;
    u_xlat82 = (x_2755 * x_2756);
    let x_2758 : i32 = u_xlati55;
    let x_2760 : vec4<f32> = x_2714.x_AdditionalLightsSpotDir[x_2758];
    let x_2762 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_2760.x, x_2760.y, x_2760.z), vec3<f32>(x_2762.x, x_2762.y, x_2762.z));
    let x_2765 : f32 = u_xlat84;
    let x_2766 : i32 = u_xlati55;
    let x_2768 : f32 = x_2714.x_AdditionalLightsAttenuation[x_2766].z;
    let x_2770 : i32 = u_xlati55;
    let x_2772 : f32 = x_2714.x_AdditionalLightsAttenuation[x_2770].w;
    u_xlat84 = ((x_2765 * x_2768) + x_2772);
    let x_2774 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2774, 0.0f, 1.0f);
    let x_2776 : f32 = u_xlat84;
    let x_2777 : f32 = u_xlat84;
    u_xlat84 = (x_2776 * x_2777);
    let x_2779 : f32 = u_xlat82;
    let x_2780 : f32 = u_xlat84;
    u_xlat82 = (x_2779 * x_2780);
    let x_2783 : i32 = u_xlati55;
    let x_2785 : f32 = x_606.x_AdditionalShadowParams[x_2783].w;
    u_xlati84 = i32(x_2785);
    let x_2788 : i32 = u_xlati84;
    u_xlatb85 = (x_2788 >= 0i);
    let x_2790 : bool = u_xlatb85;
    if (x_2790) {
      let x_2794 : i32 = u_xlati55;
      let x_2796 : f32 = x_606.x_AdditionalShadowParams[x_2794].z;
      u_xlatb85 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2796, x_2796, x_2796, x_2796))));
      let x_2800 : bool = u_xlatb85;
      if (x_2800) {
        let x_2804 : vec4<f32> = u_xlat10;
        let x_2807 : vec4<f32> = u_xlat10;
        let x_2810 : vec4<bool> = (abs(vec4<f32>(x_2804.z, x_2804.z, x_2804.y, x_2804.z)) >= abs(vec4<f32>(x_2807.x, x_2807.y, x_2807.x, x_2807.x)));
        let x_2812 : vec3<bool> = vec3<bool>(x_2810.x, x_2810.y, x_2810.z);
        let x_2813 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2812.x, x_2812.y, x_2812.z, x_2813.w);
        let x_2816 : bool = u_xlatb11.y;
        let x_2818 : bool = u_xlatb11.x;
        u_xlatb85 = (x_2816 & x_2818);
        let x_2820 : vec4<f32> = u_xlat10;
        let x_2823 : vec4<bool> = (-(vec4<f32>(x_2820.z, x_2820.y, x_2820.z, x_2820.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2824 : vec3<bool> = vec3<bool>(x_2823.x, x_2823.y, x_2823.w);
        let x_2825 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2824.x, x_2824.y, x_2825.z, x_2824.z);
        let x_2828 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2828);
        let x_2833 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2833);
        let x_2838 : bool = u_xlatb11.w;
        u_xlat86 = select(0.0f, 1.0f, x_2838);
        let x_2841 : bool = u_xlatb11.z;
        if (x_2841) {
          let x_2846 : f32 = u_xlat11.y;
          x_2842 = x_2846;
        } else {
          let x_2848 : f32 = u_xlat86;
          x_2842 = x_2848;
        }
        let x_2849 : f32 = x_2842;
        u_xlat86 = x_2849;
        let x_2851 : bool = u_xlatb85;
        if (x_2851) {
          let x_2856 : f32 = u_xlat11.x;
          x_2852 = x_2856;
        } else {
          let x_2858 : f32 = u_xlat86;
          x_2852 = x_2858;
        }
        let x_2859 : f32 = x_2852;
        u_xlat85 = x_2859;
        let x_2860 : i32 = u_xlati55;
        let x_2862 : f32 = x_606.x_AdditionalShadowParams[x_2860].w;
        u_xlat86 = trunc(x_2862);
        let x_2864 : f32 = u_xlat85;
        let x_2865 : f32 = u_xlat86;
        u_xlat85 = (x_2864 + x_2865);
        let x_2867 : f32 = u_xlat85;
        u_xlati84 = i32(x_2867);
      }
      let x_2869 : i32 = u_xlati84;
      u_xlati84 = (x_2869 << bitcast<u32>(2i));
      let x_2871 : vec3<f32> = vs_TEXCOORD7;
      let x_2873 : i32 = u_xlati84;
      let x_2876 : i32 = u_xlati84;
      let x_2880 : vec4<f32> = x_606.x_AdditionalLightsWorldToShadow[((x_2873 + 1i) / 4i)][((x_2876 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2871.y, x_2871.y, x_2871.y, x_2871.y) * x_2880);
      let x_2882 : i32 = u_xlati84;
      let x_2884 : i32 = u_xlati84;
      let x_2887 : vec4<f32> = x_606.x_AdditionalLightsWorldToShadow[(x_2882 / 4i)][(x_2884 % 4i)];
      let x_2888 : vec3<f32> = vs_TEXCOORD7;
      let x_2891 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2887 * vec4<f32>(x_2888.x, x_2888.x, x_2888.x, x_2888.x)) + x_2891);
      let x_2893 : i32 = u_xlati84;
      let x_2896 : i32 = u_xlati84;
      let x_2900 : vec4<f32> = x_606.x_AdditionalLightsWorldToShadow[((x_2893 + 2i) / 4i)][((x_2896 + 2i) % 4i)];
      let x_2901 : vec3<f32> = vs_TEXCOORD7;
      let x_2904 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2900 * vec4<f32>(x_2901.z, x_2901.z, x_2901.z, x_2901.z)) + x_2904);
      let x_2906 : vec4<f32> = u_xlat11;
      let x_2907 : i32 = u_xlati84;
      let x_2910 : i32 = u_xlati84;
      let x_2914 : vec4<f32> = x_606.x_AdditionalLightsWorldToShadow[((x_2907 + 3i) / 4i)][((x_2910 + 3i) % 4i)];
      u_xlat11 = (x_2906 + x_2914);
      let x_2916 : vec4<f32> = u_xlat11;
      let x_2918 : vec4<f32> = u_xlat11;
      let x_2920 : vec3<f32> = (vec3<f32>(x_2916.x, x_2916.y, x_2916.z) / vec3<f32>(x_2918.w, x_2918.w, x_2918.w));
      let x_2921 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2920.x, x_2920.y, x_2920.z, x_2921.w);
      let x_2924 : i32 = u_xlati55;
      let x_2926 : f32 = x_606.x_AdditionalShadowParams[x_2924].y;
      u_xlatb84 = (0.0f < x_2926);
      let x_2928 : bool = u_xlatb84;
      if (x_2928) {
        let x_2931 : i32 = u_xlati55;
        let x_2933 : f32 = x_606.x_AdditionalShadowParams[x_2931].y;
        u_xlatb84 = (1.0f == x_2933);
        let x_2935 : bool = u_xlatb84;
        if (x_2935) {
          let x_2938 : vec4<f32> = u_xlat11;
          let x_2941 : vec4<f32> = x_606.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2938.x, x_2938.y, x_2938.x, x_2938.y) + x_2941);
          let x_2944 : vec4<f32> = u_xlat12;
          let x_2945 : vec2<f32> = vec2<f32>(x_2944.x, x_2944.y);
          let x_2947 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2945.x, x_2945.y, x_2947);
          let x_2955 : vec3<f32> = txVec30;
          let x_2957 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2955.xy, x_2955.z);
          u_xlat13.x = x_2957;
          let x_2960 : vec4<f32> = u_xlat12;
          let x_2961 : vec2<f32> = vec2<f32>(x_2960.z, x_2960.w);
          let x_2963 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2961.x, x_2961.y, x_2963);
          let x_2970 : vec3<f32> = txVec31;
          let x_2972 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2970.xy, x_2970.z);
          u_xlat13.y = x_2972;
          let x_2974 : vec4<f32> = u_xlat11;
          let x_2977 : vec4<f32> = x_606.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2974.x, x_2974.y, x_2974.x, x_2974.y) + x_2977);
          let x_2980 : vec4<f32> = u_xlat12;
          let x_2981 : vec2<f32> = vec2<f32>(x_2980.x, x_2980.y);
          let x_2983 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2981.x, x_2981.y, x_2983);
          let x_2990 : vec3<f32> = txVec32;
          let x_2992 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2990.xy, x_2990.z);
          u_xlat13.z = x_2992;
          let x_2995 : vec4<f32> = u_xlat12;
          let x_2996 : vec2<f32> = vec2<f32>(x_2995.z, x_2995.w);
          let x_2998 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2996.x, x_2996.y, x_2998);
          let x_3005 : vec3<f32> = txVec33;
          let x_3007 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3005.xy, x_3005.z);
          u_xlat13.w = x_3007;
          let x_3009 : vec4<f32> = u_xlat13;
          u_xlat84 = dot(x_3009, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3012 : i32 = u_xlati55;
          let x_3014 : f32 = x_606.x_AdditionalShadowParams[x_3012].y;
          u_xlatb85 = (2.0f == x_3014);
          let x_3016 : bool = u_xlatb85;
          if (x_3016) {
            let x_3019 : vec4<f32> = u_xlat11;
            let x_3022 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3025 : vec2<f32> = ((vec2<f32>(x_3019.x, x_3019.y) * vec2<f32>(x_3022.z, x_3022.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3026 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3025.x, x_3025.y, x_3026.z, x_3026.w);
            let x_3028 : vec4<f32> = u_xlat12;
            let x_3030 : vec2<f32> = floor(vec2<f32>(x_3028.x, x_3028.y));
            let x_3031 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3030.x, x_3030.y, x_3031.z, x_3031.w);
            let x_3034 : vec4<f32> = u_xlat11;
            let x_3037 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3040 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3034.x, x_3034.y) * vec2<f32>(x_3037.z, x_3037.w)) + -(vec2<f32>(x_3040.x, x_3040.y)));
            let x_3044 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3044.x, x_3044.x, x_3044.y, x_3044.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3047 : vec4<f32> = u_xlat13;
            let x_3049 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3047.x, x_3047.x, x_3047.z, x_3047.z) * vec4<f32>(x_3049.x, x_3049.x, x_3049.z, x_3049.z));
            let x_3052 : vec4<f32> = u_xlat14;
            let x_3054 : vec2<f32> = (vec2<f32>(x_3052.y, x_3052.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3055 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3054.x, x_3055.y, x_3054.y, x_3055.w);
            let x_3057 : vec4<f32> = u_xlat14;
            let x_3060 : vec2<f32> = u_xlat64;
            let x_3062 : vec2<f32> = ((vec2<f32>(x_3057.x, x_3057.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3060));
            let x_3063 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3062.x, x_3062.y, x_3063.z, x_3063.w);
            let x_3066 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3066) + vec2<f32>(1.0f, 1.0f));
            let x_3069 : vec2<f32> = u_xlat64;
            let x_3070 : vec2<f32> = min(x_3069, vec2<f32>(0.0f, 0.0f));
            let x_3071 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3070.x, x_3070.y, x_3071.z, x_3071.w);
            let x_3073 : vec4<f32> = u_xlat15;
            let x_3076 : vec4<f32> = u_xlat15;
            let x_3079 : vec2<f32> = u_xlat66;
            let x_3080 : vec2<f32> = ((-(vec2<f32>(x_3073.x, x_3073.y)) * vec2<f32>(x_3076.x, x_3076.y)) + x_3079);
            let x_3081 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3080.x, x_3080.y, x_3081.z, x_3081.w);
            let x_3083 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3083, vec2<f32>(0.0f, 0.0f));
            let x_3085 : vec2<f32> = u_xlat64;
            let x_3087 : vec2<f32> = u_xlat64;
            let x_3089 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3085) * x_3087) + vec2<f32>(x_3089.y, x_3089.w));
            let x_3092 : vec4<f32> = u_xlat15;
            let x_3094 : vec2<f32> = (vec2<f32>(x_3092.x, x_3092.y) + vec2<f32>(1.0f, 1.0f));
            let x_3095 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3094.x, x_3094.y, x_3095.z, x_3095.w);
            let x_3097 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3097 + vec2<f32>(1.0f, 1.0f));
            let x_3099 : vec4<f32> = u_xlat14;
            let x_3101 : vec2<f32> = (vec2<f32>(x_3099.x, x_3099.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3102 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3101.x, x_3101.y, x_3102.z, x_3102.w);
            let x_3104 : vec2<f32> = u_xlat66;
            let x_3105 : vec2<f32> = (x_3104 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3106 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3105.x, x_3105.y, x_3106.z, x_3106.w);
            let x_3108 : vec4<f32> = u_xlat15;
            let x_3110 : vec2<f32> = (vec2<f32>(x_3108.x, x_3108.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3111 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3110.x, x_3110.y, x_3111.z, x_3111.w);
            let x_3113 : vec2<f32> = u_xlat64;
            let x_3114 : vec2<f32> = (x_3113 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3115 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3114.x, x_3114.y, x_3115.z, x_3115.w);
            let x_3117 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3117.y, x_3117.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3121 : f32 = u_xlat15.x;
            u_xlat16.z = x_3121;
            let x_3124 : f32 = u_xlat64.x;
            u_xlat16.w = x_3124;
            let x_3127 : f32 = u_xlat17.x;
            u_xlat14.z = x_3127;
            let x_3130 : f32 = u_xlat13.x;
            u_xlat14.w = x_3130;
            let x_3132 : vec4<f32> = u_xlat14;
            let x_3134 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3132.z, x_3132.w, x_3132.x, x_3132.z) + vec4<f32>(x_3134.z, x_3134.w, x_3134.x, x_3134.z));
            let x_3138 : f32 = u_xlat16.y;
            u_xlat15.z = x_3138;
            let x_3141 : f32 = u_xlat64.y;
            u_xlat15.w = x_3141;
            let x_3144 : f32 = u_xlat14.y;
            u_xlat17.z = x_3144;
            let x_3147 : f32 = u_xlat13.z;
            u_xlat17.w = x_3147;
            let x_3149 : vec4<f32> = u_xlat15;
            let x_3151 : vec4<f32> = u_xlat17;
            let x_3153 : vec3<f32> = (vec3<f32>(x_3149.z, x_3149.y, x_3149.w) + vec3<f32>(x_3151.z, x_3151.y, x_3151.w));
            let x_3154 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3153.x, x_3153.y, x_3153.z, x_3154.w);
            let x_3156 : vec4<f32> = u_xlat14;
            let x_3158 : vec4<f32> = u_xlat18;
            let x_3160 : vec3<f32> = (vec3<f32>(x_3156.x, x_3156.z, x_3156.w) / vec3<f32>(x_3158.z, x_3158.w, x_3158.y));
            let x_3161 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3160.x, x_3160.y, x_3160.z, x_3161.w);
            let x_3163 : vec4<f32> = u_xlat14;
            let x_3165 : vec3<f32> = (vec3<f32>(x_3163.x, x_3163.y, x_3163.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3166 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3165.x, x_3165.y, x_3165.z, x_3166.w);
            let x_3168 : vec4<f32> = u_xlat17;
            let x_3170 : vec4<f32> = u_xlat13;
            let x_3172 : vec3<f32> = (vec3<f32>(x_3168.z, x_3168.y, x_3168.w) / vec3<f32>(x_3170.x, x_3170.y, x_3170.z));
            let x_3173 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3172.x, x_3172.y, x_3172.z, x_3173.w);
            let x_3175 : vec4<f32> = u_xlat15;
            let x_3177 : vec3<f32> = (vec3<f32>(x_3175.x, x_3175.y, x_3175.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3178 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3177.x, x_3177.y, x_3177.z, x_3178.w);
            let x_3180 : vec4<f32> = u_xlat14;
            let x_3183 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3185 : vec3<f32> = (vec3<f32>(x_3180.y, x_3180.x, x_3180.z) * vec3<f32>(x_3183.x, x_3183.x, x_3183.x));
            let x_3186 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3185.x, x_3185.y, x_3185.z, x_3186.w);
            let x_3188 : vec4<f32> = u_xlat15;
            let x_3191 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3193 : vec3<f32> = (vec3<f32>(x_3188.x, x_3188.y, x_3188.z) * vec3<f32>(x_3191.y, x_3191.y, x_3191.y));
            let x_3194 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3193.x, x_3193.y, x_3193.z, x_3194.w);
            let x_3197 : f32 = u_xlat15.x;
            u_xlat14.w = x_3197;
            let x_3199 : vec4<f32> = u_xlat12;
            let x_3202 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3205 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3199.x, x_3199.y, x_3199.x, x_3199.y) * vec4<f32>(x_3202.x, x_3202.y, x_3202.x, x_3202.y)) + vec4<f32>(x_3205.y, x_3205.w, x_3205.x, x_3205.w));
            let x_3208 : vec4<f32> = u_xlat12;
            let x_3211 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3214 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3208.x, x_3208.y) * vec2<f32>(x_3211.x, x_3211.y)) + vec2<f32>(x_3214.z, x_3214.w));
            let x_3218 : f32 = u_xlat14.y;
            u_xlat15.w = x_3218;
            let x_3220 : vec4<f32> = u_xlat15;
            let x_3221 : vec2<f32> = vec2<f32>(x_3220.y, x_3220.z);
            let x_3222 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3222.x, x_3221.x, x_3222.z, x_3221.y);
            let x_3224 : vec4<f32> = u_xlat12;
            let x_3227 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3230 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3224.x, x_3224.y, x_3224.x, x_3224.y) * vec4<f32>(x_3227.x, x_3227.y, x_3227.x, x_3227.y)) + vec4<f32>(x_3230.x, x_3230.y, x_3230.z, x_3230.y));
            let x_3233 : vec4<f32> = u_xlat12;
            let x_3236 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3239 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3233.x, x_3233.y, x_3233.x, x_3233.y) * vec4<f32>(x_3236.x, x_3236.y, x_3236.x, x_3236.y)) + vec4<f32>(x_3239.w, x_3239.y, x_3239.w, x_3239.z));
            let x_3242 : vec4<f32> = u_xlat12;
            let x_3245 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3248 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3242.x, x_3242.y, x_3242.x, x_3242.y) * vec4<f32>(x_3245.x, x_3245.y, x_3245.x, x_3245.y)) + vec4<f32>(x_3248.x, x_3248.w, x_3248.z, x_3248.w));
            let x_3251 : vec4<f32> = u_xlat13;
            let x_3253 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3251.x, x_3251.x, x_3251.x, x_3251.y) * vec4<f32>(x_3253.z, x_3253.w, x_3253.y, x_3253.z));
            let x_3256 : vec4<f32> = u_xlat13;
            let x_3258 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3256.y, x_3256.y, x_3256.z, x_3256.z) * x_3258);
            let x_3261 : f32 = u_xlat13.z;
            let x_3263 : f32 = u_xlat18.y;
            u_xlat85 = (x_3261 * x_3263);
            let x_3266 : vec4<f32> = u_xlat16;
            let x_3267 : vec2<f32> = vec2<f32>(x_3266.x, x_3266.y);
            let x_3269 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3267.x, x_3267.y, x_3269);
            let x_3276 : vec3<f32> = txVec34;
            let x_3278 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3276.xy, x_3276.z);
            u_xlat86 = x_3278;
            let x_3280 : vec4<f32> = u_xlat16;
            let x_3281 : vec2<f32> = vec2<f32>(x_3280.z, x_3280.w);
            let x_3283 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3281.x, x_3281.y, x_3283);
            let x_3291 : vec3<f32> = txVec35;
            let x_3293 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3291.xy, x_3291.z);
            u_xlat88 = x_3293;
            let x_3294 : f32 = u_xlat88;
            let x_3296 : f32 = u_xlat19.y;
            u_xlat88 = (x_3294 * x_3296);
            let x_3299 : f32 = u_xlat19.x;
            let x_3300 : f32 = u_xlat86;
            let x_3302 : f32 = u_xlat88;
            u_xlat86 = ((x_3299 * x_3300) + x_3302);
            let x_3305 : vec2<f32> = u_xlat64;
            let x_3307 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3305.x, x_3305.y, x_3307);
            let x_3314 : vec3<f32> = txVec36;
            let x_3316 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3314.xy, x_3314.z);
            u_xlat88 = x_3316;
            let x_3318 : f32 = u_xlat19.z;
            let x_3319 : f32 = u_xlat88;
            let x_3321 : f32 = u_xlat86;
            u_xlat86 = ((x_3318 * x_3319) + x_3321);
            let x_3324 : vec4<f32> = u_xlat15;
            let x_3325 : vec2<f32> = vec2<f32>(x_3324.x, x_3324.y);
            let x_3327 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3325.x, x_3325.y, x_3327);
            let x_3334 : vec3<f32> = txVec37;
            let x_3336 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3334.xy, x_3334.z);
            u_xlat88 = x_3336;
            let x_3338 : f32 = u_xlat19.w;
            let x_3339 : f32 = u_xlat88;
            let x_3341 : f32 = u_xlat86;
            u_xlat86 = ((x_3338 * x_3339) + x_3341);
            let x_3344 : vec4<f32> = u_xlat17;
            let x_3345 : vec2<f32> = vec2<f32>(x_3344.x, x_3344.y);
            let x_3347 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3345.x, x_3345.y, x_3347);
            let x_3354 : vec3<f32> = txVec38;
            let x_3356 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3354.xy, x_3354.z);
            u_xlat88 = x_3356;
            let x_3358 : f32 = u_xlat20.x;
            let x_3359 : f32 = u_xlat88;
            let x_3361 : f32 = u_xlat86;
            u_xlat86 = ((x_3358 * x_3359) + x_3361);
            let x_3364 : vec4<f32> = u_xlat17;
            let x_3365 : vec2<f32> = vec2<f32>(x_3364.z, x_3364.w);
            let x_3367 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3365.x, x_3365.y, x_3367);
            let x_3374 : vec3<f32> = txVec39;
            let x_3376 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3374.xy, x_3374.z);
            u_xlat88 = x_3376;
            let x_3378 : f32 = u_xlat20.y;
            let x_3379 : f32 = u_xlat88;
            let x_3381 : f32 = u_xlat86;
            u_xlat86 = ((x_3378 * x_3379) + x_3381);
            let x_3384 : vec4<f32> = u_xlat15;
            let x_3385 : vec2<f32> = vec2<f32>(x_3384.z, x_3384.w);
            let x_3387 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3385.x, x_3385.y, x_3387);
            let x_3394 : vec3<f32> = txVec40;
            let x_3396 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3394.xy, x_3394.z);
            u_xlat88 = x_3396;
            let x_3398 : f32 = u_xlat20.z;
            let x_3399 : f32 = u_xlat88;
            let x_3401 : f32 = u_xlat86;
            u_xlat86 = ((x_3398 * x_3399) + x_3401);
            let x_3404 : vec4<f32> = u_xlat14;
            let x_3405 : vec2<f32> = vec2<f32>(x_3404.x, x_3404.y);
            let x_3407 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3405.x, x_3405.y, x_3407);
            let x_3414 : vec3<f32> = txVec41;
            let x_3416 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3414.xy, x_3414.z);
            u_xlat88 = x_3416;
            let x_3418 : f32 = u_xlat20.w;
            let x_3419 : f32 = u_xlat88;
            let x_3421 : f32 = u_xlat86;
            u_xlat86 = ((x_3418 * x_3419) + x_3421);
            let x_3424 : vec4<f32> = u_xlat14;
            let x_3425 : vec2<f32> = vec2<f32>(x_3424.z, x_3424.w);
            let x_3427 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3425.x, x_3425.y, x_3427);
            let x_3434 : vec3<f32> = txVec42;
            let x_3436 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3434.xy, x_3434.z);
            u_xlat88 = x_3436;
            let x_3437 : f32 = u_xlat85;
            let x_3438 : f32 = u_xlat88;
            let x_3440 : f32 = u_xlat86;
            u_xlat84 = ((x_3437 * x_3438) + x_3440);
          } else {
            let x_3443 : vec4<f32> = u_xlat11;
            let x_3446 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3449 : vec2<f32> = ((vec2<f32>(x_3443.x, x_3443.y) * vec2<f32>(x_3446.z, x_3446.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3450 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3449.x, x_3449.y, x_3450.z, x_3450.w);
            let x_3452 : vec4<f32> = u_xlat12;
            let x_3454 : vec2<f32> = floor(vec2<f32>(x_3452.x, x_3452.y));
            let x_3455 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3454.x, x_3454.y, x_3455.z, x_3455.w);
            let x_3457 : vec4<f32> = u_xlat11;
            let x_3460 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3463 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3457.x, x_3457.y) * vec2<f32>(x_3460.z, x_3460.w)) + -(vec2<f32>(x_3463.x, x_3463.y)));
            let x_3467 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3467.x, x_3467.x, x_3467.y, x_3467.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3470 : vec4<f32> = u_xlat13;
            let x_3472 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3470.x, x_3470.x, x_3470.z, x_3470.z) * vec4<f32>(x_3472.x, x_3472.x, x_3472.z, x_3472.z));
            let x_3475 : vec4<f32> = u_xlat14;
            let x_3477 : vec2<f32> = (vec2<f32>(x_3475.y, x_3475.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3478 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3478.x, x_3477.x, x_3478.z, x_3477.y);
            let x_3480 : vec4<f32> = u_xlat14;
            let x_3483 : vec2<f32> = u_xlat64;
            let x_3485 : vec2<f32> = ((vec2<f32>(x_3480.x, x_3480.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3483));
            let x_3486 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3485.x, x_3486.y, x_3485.y, x_3486.w);
            let x_3488 : vec2<f32> = u_xlat64;
            let x_3490 : vec2<f32> = (-(x_3488) + vec2<f32>(1.0f, 1.0f));
            let x_3491 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3490.x, x_3490.y, x_3491.z, x_3491.w);
            let x_3493 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3493, vec2<f32>(0.0f, 0.0f));
            let x_3495 : vec2<f32> = u_xlat66;
            let x_3497 : vec2<f32> = u_xlat66;
            let x_3499 : vec4<f32> = u_xlat14;
            let x_3501 : vec2<f32> = ((-(x_3495) * x_3497) + vec2<f32>(x_3499.x, x_3499.y));
            let x_3502 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3501.x, x_3501.y, x_3502.z, x_3502.w);
            let x_3504 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3504, vec2<f32>(0.0f, 0.0f));
            let x_3507 : vec2<f32> = u_xlat66;
            let x_3509 : vec2<f32> = u_xlat66;
            let x_3511 : vec4<f32> = u_xlat13;
            let x_3513 : vec2<f32> = ((-(x_3507) * x_3509) + vec2<f32>(x_3511.y, x_3511.w));
            let x_3514 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3513.x, x_3514.y, x_3513.y);
            let x_3516 : vec4<f32> = u_xlat14;
            let x_3518 : vec2<f32> = (vec2<f32>(x_3516.x, x_3516.y) + vec2<f32>(2.0f, 2.0f));
            let x_3519 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3518.x, x_3518.y, x_3519.z, x_3519.w);
            let x_3521 : vec3<f32> = u_xlat39;
            let x_3523 : vec2<f32> = (vec2<f32>(x_3521.x, x_3521.z) + vec2<f32>(2.0f, 2.0f));
            let x_3524 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3524.x, x_3523.x, x_3524.z, x_3523.y);
            let x_3527 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3527 * 0.08163200318813323975f);
            let x_3530 : vec4<f32> = u_xlat13;
            let x_3532 : vec3<f32> = (vec3<f32>(x_3530.z, x_3530.x, x_3530.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3533 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3532.x, x_3532.y, x_3532.z, x_3533.w);
            let x_3535 : vec4<f32> = u_xlat14;
            let x_3537 : vec2<f32> = (vec2<f32>(x_3535.x, x_3535.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3538 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3537.x, x_3537.y, x_3538.z, x_3538.w);
            let x_3541 : f32 = u_xlat17.y;
            u_xlat16.x = x_3541;
            let x_3543 : vec2<f32> = u_xlat64;
            let x_3546 : vec2<f32> = ((vec2<f32>(x_3543.x, x_3543.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3547 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3547.x, x_3546.x, x_3547.z, x_3546.y);
            let x_3549 : vec2<f32> = u_xlat64;
            let x_3552 : vec2<f32> = ((vec2<f32>(x_3549.x, x_3549.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3553 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3552.x, x_3553.y, x_3552.y, x_3553.w);
            let x_3556 : f32 = u_xlat13.x;
            u_xlat14.y = x_3556;
            let x_3559 : f32 = u_xlat15.y;
            u_xlat14.w = x_3559;
            let x_3561 : vec4<f32> = u_xlat14;
            let x_3562 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3561 + x_3562);
            let x_3564 : vec2<f32> = u_xlat64;
            let x_3567 : vec2<f32> = ((vec2<f32>(x_3564.y, x_3564.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3568 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3568.x, x_3567.x, x_3568.z, x_3567.y);
            let x_3570 : vec2<f32> = u_xlat64;
            let x_3573 : vec2<f32> = ((vec2<f32>(x_3570.y, x_3570.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3574 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3573.x, x_3574.y, x_3573.y, x_3574.w);
            let x_3577 : f32 = u_xlat13.y;
            u_xlat15.y = x_3577;
            let x_3579 : vec4<f32> = u_xlat15;
            let x_3580 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3579 + x_3580);
            let x_3582 : vec4<f32> = u_xlat14;
            let x_3583 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3582 / x_3583);
            let x_3585 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3585 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3587 : vec4<f32> = u_xlat15;
            let x_3588 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3587 / x_3588);
            let x_3590 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3590 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3592 : vec4<f32> = u_xlat14;
            let x_3595 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3592.w, x_3592.x, x_3592.y, x_3592.z) * vec4<f32>(x_3595.x, x_3595.x, x_3595.x, x_3595.x));
            let x_3598 : vec4<f32> = u_xlat15;
            let x_3601 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3598.x, x_3598.w, x_3598.y, x_3598.z) * vec4<f32>(x_3601.y, x_3601.y, x_3601.y, x_3601.y));
            let x_3604 : vec4<f32> = u_xlat14;
            let x_3605 : vec3<f32> = vec3<f32>(x_3604.y, x_3604.z, x_3604.w);
            let x_3606 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3605.x, x_3606.y, x_3605.y, x_3605.z);
            let x_3609 : f32 = u_xlat15.x;
            u_xlat17.y = x_3609;
            let x_3611 : vec4<f32> = u_xlat12;
            let x_3614 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3617 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3611.x, x_3611.y, x_3611.x, x_3611.y) * vec4<f32>(x_3614.x, x_3614.y, x_3614.x, x_3614.y)) + vec4<f32>(x_3617.x, x_3617.y, x_3617.z, x_3617.y));
            let x_3620 : vec4<f32> = u_xlat12;
            let x_3623 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3626 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3620.x, x_3620.y) * vec2<f32>(x_3623.x, x_3623.y)) + vec2<f32>(x_3626.w, x_3626.y));
            let x_3630 : f32 = u_xlat17.y;
            u_xlat14.y = x_3630;
            let x_3633 : f32 = u_xlat15.z;
            u_xlat17.y = x_3633;
            let x_3635 : vec4<f32> = u_xlat12;
            let x_3638 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3641 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3635.x, x_3635.y, x_3635.x, x_3635.y) * vec4<f32>(x_3638.x, x_3638.y, x_3638.x, x_3638.y)) + vec4<f32>(x_3641.x, x_3641.y, x_3641.z, x_3641.y));
            let x_3644 : vec4<f32> = u_xlat12;
            let x_3647 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3650 : vec4<f32> = u_xlat17;
            let x_3652 : vec2<f32> = ((vec2<f32>(x_3644.x, x_3644.y) * vec2<f32>(x_3647.x, x_3647.y)) + vec2<f32>(x_3650.w, x_3650.y));
            let x_3653 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3652.x, x_3652.y, x_3653.z, x_3653.w);
            let x_3656 : f32 = u_xlat17.y;
            u_xlat14.z = x_3656;
            let x_3659 : vec4<f32> = u_xlat12;
            let x_3662 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3665 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3659.x, x_3659.y, x_3659.x, x_3659.y) * vec4<f32>(x_3662.x, x_3662.y, x_3662.x, x_3662.y)) + vec4<f32>(x_3665.x, x_3665.y, x_3665.x, x_3665.z));
            let x_3669 : f32 = u_xlat15.w;
            u_xlat17.y = x_3669;
            let x_3672 : vec4<f32> = u_xlat12;
            let x_3675 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3678 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3672.x, x_3672.y, x_3672.x, x_3672.y) * vec4<f32>(x_3675.x, x_3675.y, x_3675.x, x_3675.y)) + vec4<f32>(x_3678.x, x_3678.y, x_3678.z, x_3678.y));
            let x_3682 : vec4<f32> = u_xlat12;
            let x_3685 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3688 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3682.x, x_3682.y) * vec2<f32>(x_3685.x, x_3685.y)) + vec2<f32>(x_3688.w, x_3688.y));
            let x_3692 : f32 = u_xlat17.y;
            u_xlat14.w = x_3692;
            let x_3695 : vec4<f32> = u_xlat12;
            let x_3698 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3701 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3695.x, x_3695.y) * vec2<f32>(x_3698.x, x_3698.y)) + vec2<f32>(x_3701.x, x_3701.w));
            let x_3704 : vec4<f32> = u_xlat17;
            let x_3705 : vec3<f32> = vec3<f32>(x_3704.x, x_3704.z, x_3704.w);
            let x_3706 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3705.x, x_3706.y, x_3705.y, x_3705.z);
            let x_3708 : vec4<f32> = u_xlat12;
            let x_3711 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3714 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3708.x, x_3708.y, x_3708.x, x_3708.y) * vec4<f32>(x_3711.x, x_3711.y, x_3711.x, x_3711.y)) + vec4<f32>(x_3714.x, x_3714.y, x_3714.z, x_3714.y));
            let x_3717 : vec4<f32> = u_xlat12;
            let x_3720 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3723 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3717.x, x_3717.y) * vec2<f32>(x_3720.x, x_3720.y)) + vec2<f32>(x_3723.w, x_3723.y));
            let x_3727 : f32 = u_xlat14.x;
            u_xlat15.x = x_3727;
            let x_3729 : vec4<f32> = u_xlat12;
            let x_3732 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3735 : vec4<f32> = u_xlat15;
            let x_3737 : vec2<f32> = ((vec2<f32>(x_3729.x, x_3729.y) * vec2<f32>(x_3732.x, x_3732.y)) + vec2<f32>(x_3735.x, x_3735.y));
            let x_3738 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3737.x, x_3737.y, x_3738.z, x_3738.w);
            let x_3741 : vec4<f32> = u_xlat13;
            let x_3743 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3741.x, x_3741.x, x_3741.x, x_3741.x) * x_3743);
            let x_3746 : vec4<f32> = u_xlat13;
            let x_3748 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3746.y, x_3746.y, x_3746.y, x_3746.y) * x_3748);
            let x_3751 : vec4<f32> = u_xlat13;
            let x_3753 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3751.z, x_3751.z, x_3751.z, x_3751.z) * x_3753);
            let x_3755 : vec4<f32> = u_xlat13;
            let x_3757 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3755.w, x_3755.w, x_3755.w, x_3755.w) * x_3757);
            let x_3760 : vec4<f32> = u_xlat18;
            let x_3761 : vec2<f32> = vec2<f32>(x_3760.x, x_3760.y);
            let x_3763 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3761.x, x_3761.y, x_3763);
            let x_3770 : vec3<f32> = txVec43;
            let x_3772 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3770.xy, x_3770.z);
            u_xlat85 = x_3772;
            let x_3774 : vec4<f32> = u_xlat18;
            let x_3775 : vec2<f32> = vec2<f32>(x_3774.z, x_3774.w);
            let x_3777 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3775.x, x_3775.y, x_3777);
            let x_3784 : vec3<f32> = txVec44;
            let x_3786 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3784.xy, x_3784.z);
            u_xlat86 = x_3786;
            let x_3787 : f32 = u_xlat86;
            let x_3789 : f32 = u_xlat23.y;
            u_xlat86 = (x_3787 * x_3789);
            let x_3792 : f32 = u_xlat23.x;
            let x_3793 : f32 = u_xlat85;
            let x_3795 : f32 = u_xlat86;
            u_xlat85 = ((x_3792 * x_3793) + x_3795);
            let x_3798 : vec2<f32> = u_xlat64;
            let x_3800 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3798.x, x_3798.y, x_3800);
            let x_3807 : vec3<f32> = txVec45;
            let x_3809 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3807.xy, x_3807.z);
            u_xlat86 = x_3809;
            let x_3811 : f32 = u_xlat23.z;
            let x_3812 : f32 = u_xlat86;
            let x_3814 : f32 = u_xlat85;
            u_xlat85 = ((x_3811 * x_3812) + x_3814);
            let x_3817 : vec4<f32> = u_xlat21;
            let x_3818 : vec2<f32> = vec2<f32>(x_3817.x, x_3817.y);
            let x_3820 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3818.x, x_3818.y, x_3820);
            let x_3827 : vec3<f32> = txVec46;
            let x_3829 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3827.xy, x_3827.z);
            u_xlat86 = x_3829;
            let x_3831 : f32 = u_xlat23.w;
            let x_3832 : f32 = u_xlat86;
            let x_3834 : f32 = u_xlat85;
            u_xlat85 = ((x_3831 * x_3832) + x_3834);
            let x_3837 : vec4<f32> = u_xlat19;
            let x_3838 : vec2<f32> = vec2<f32>(x_3837.x, x_3837.y);
            let x_3840 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3838.x, x_3838.y, x_3840);
            let x_3847 : vec3<f32> = txVec47;
            let x_3849 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3847.xy, x_3847.z);
            u_xlat86 = x_3849;
            let x_3851 : f32 = u_xlat24.x;
            let x_3852 : f32 = u_xlat86;
            let x_3854 : f32 = u_xlat85;
            u_xlat85 = ((x_3851 * x_3852) + x_3854);
            let x_3857 : vec4<f32> = u_xlat19;
            let x_3858 : vec2<f32> = vec2<f32>(x_3857.z, x_3857.w);
            let x_3860 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3858.x, x_3858.y, x_3860);
            let x_3867 : vec3<f32> = txVec48;
            let x_3869 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3867.xy, x_3867.z);
            u_xlat86 = x_3869;
            let x_3871 : f32 = u_xlat24.y;
            let x_3872 : f32 = u_xlat86;
            let x_3874 : f32 = u_xlat85;
            u_xlat85 = ((x_3871 * x_3872) + x_3874);
            let x_3877 : vec4<f32> = u_xlat20;
            let x_3878 : vec2<f32> = vec2<f32>(x_3877.x, x_3877.y);
            let x_3880 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3878.x, x_3878.y, x_3880);
            let x_3887 : vec3<f32> = txVec49;
            let x_3889 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3887.xy, x_3887.z);
            u_xlat86 = x_3889;
            let x_3891 : f32 = u_xlat24.z;
            let x_3892 : f32 = u_xlat86;
            let x_3894 : f32 = u_xlat85;
            u_xlat85 = ((x_3891 * x_3892) + x_3894);
            let x_3897 : vec4<f32> = u_xlat21;
            let x_3898 : vec2<f32> = vec2<f32>(x_3897.z, x_3897.w);
            let x_3900 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3898.x, x_3898.y, x_3900);
            let x_3907 : vec3<f32> = txVec50;
            let x_3909 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3907.xy, x_3907.z);
            u_xlat86 = x_3909;
            let x_3911 : f32 = u_xlat24.w;
            let x_3912 : f32 = u_xlat86;
            let x_3914 : f32 = u_xlat85;
            u_xlat85 = ((x_3911 * x_3912) + x_3914);
            let x_3917 : vec4<f32> = u_xlat22;
            let x_3918 : vec2<f32> = vec2<f32>(x_3917.x, x_3917.y);
            let x_3920 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3918.x, x_3918.y, x_3920);
            let x_3927 : vec3<f32> = txVec51;
            let x_3929 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3927.xy, x_3927.z);
            u_xlat86 = x_3929;
            let x_3931 : f32 = u_xlat25.x;
            let x_3932 : f32 = u_xlat86;
            let x_3934 : f32 = u_xlat85;
            u_xlat85 = ((x_3931 * x_3932) + x_3934);
            let x_3937 : vec4<f32> = u_xlat22;
            let x_3938 : vec2<f32> = vec2<f32>(x_3937.z, x_3937.w);
            let x_3940 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3938.x, x_3938.y, x_3940);
            let x_3947 : vec3<f32> = txVec52;
            let x_3949 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3947.xy, x_3947.z);
            u_xlat86 = x_3949;
            let x_3951 : f32 = u_xlat25.y;
            let x_3952 : f32 = u_xlat86;
            let x_3954 : f32 = u_xlat85;
            u_xlat85 = ((x_3951 * x_3952) + x_3954);
            let x_3957 : vec2<f32> = u_xlat40;
            let x_3959 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3957.x, x_3957.y, x_3959);
            let x_3966 : vec3<f32> = txVec53;
            let x_3968 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3966.xy, x_3966.z);
            u_xlat86 = x_3968;
            let x_3970 : f32 = u_xlat25.z;
            let x_3971 : f32 = u_xlat86;
            let x_3973 : f32 = u_xlat85;
            u_xlat85 = ((x_3970 * x_3971) + x_3973);
            let x_3976 : vec2<f32> = u_xlat72;
            let x_3978 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3976.x, x_3976.y, x_3978);
            let x_3985 : vec3<f32> = txVec54;
            let x_3987 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3985.xy, x_3985.z);
            u_xlat86 = x_3987;
            let x_3989 : f32 = u_xlat25.w;
            let x_3990 : f32 = u_xlat86;
            let x_3992 : f32 = u_xlat85;
            u_xlat85 = ((x_3989 * x_3990) + x_3992);
            let x_3995 : vec4<f32> = u_xlat17;
            let x_3996 : vec2<f32> = vec2<f32>(x_3995.x, x_3995.y);
            let x_3998 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3996.x, x_3996.y, x_3998);
            let x_4005 : vec3<f32> = txVec55;
            let x_4007 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4005.xy, x_4005.z);
            u_xlat86 = x_4007;
            let x_4009 : f32 = u_xlat13.x;
            let x_4010 : f32 = u_xlat86;
            let x_4012 : f32 = u_xlat85;
            u_xlat85 = ((x_4009 * x_4010) + x_4012);
            let x_4015 : vec4<f32> = u_xlat17;
            let x_4016 : vec2<f32> = vec2<f32>(x_4015.z, x_4015.w);
            let x_4018 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_4016.x, x_4016.y, x_4018);
            let x_4025 : vec3<f32> = txVec56;
            let x_4027 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4025.xy, x_4025.z);
            u_xlat86 = x_4027;
            let x_4029 : f32 = u_xlat13.y;
            let x_4030 : f32 = u_xlat86;
            let x_4032 : f32 = u_xlat85;
            u_xlat85 = ((x_4029 * x_4030) + x_4032);
            let x_4035 : vec2<f32> = u_xlat67;
            let x_4037 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_4035.x, x_4035.y, x_4037);
            let x_4044 : vec3<f32> = txVec57;
            let x_4046 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4044.xy, x_4044.z);
            u_xlat86 = x_4046;
            let x_4048 : f32 = u_xlat13.z;
            let x_4049 : f32 = u_xlat86;
            let x_4051 : f32 = u_xlat85;
            u_xlat85 = ((x_4048 * x_4049) + x_4051);
            let x_4054 : vec4<f32> = u_xlat12;
            let x_4055 : vec2<f32> = vec2<f32>(x_4054.x, x_4054.y);
            let x_4057 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_4055.x, x_4055.y, x_4057);
            let x_4064 : vec3<f32> = txVec58;
            let x_4066 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4064.xy, x_4064.z);
            u_xlat86 = x_4066;
            let x_4068 : f32 = u_xlat13.w;
            let x_4069 : f32 = u_xlat86;
            let x_4071 : f32 = u_xlat85;
            u_xlat84 = ((x_4068 * x_4069) + x_4071);
          }
        }
      } else {
        let x_4075 : vec4<f32> = u_xlat11;
        let x_4076 : vec2<f32> = vec2<f32>(x_4075.x, x_4075.y);
        let x_4078 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_4076.x, x_4076.y, x_4078);
        let x_4085 : vec3<f32> = txVec59;
        let x_4087 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4085.xy, x_4085.z);
        u_xlat84 = x_4087;
      }
      let x_4088 : i32 = u_xlati55;
      let x_4090 : f32 = x_606.x_AdditionalShadowParams[x_4088].x;
      u_xlat85 = (1.0f + -(x_4090));
      let x_4093 : f32 = u_xlat84;
      let x_4094 : i32 = u_xlati55;
      let x_4096 : f32 = x_606.x_AdditionalShadowParams[x_4094].x;
      let x_4098 : f32 = u_xlat85;
      u_xlat84 = ((x_4093 * x_4096) + x_4098);
      let x_4101 : f32 = u_xlat11.z;
      u_xlatb85 = (0.0f >= x_4101);
      let x_4105 : f32 = u_xlat11.z;
      u_xlatb86 = (x_4105 >= 1.0f);
      let x_4107 : bool = u_xlatb85;
      let x_4108 : bool = u_xlatb86;
      u_xlatb85 = (x_4107 | x_4108);
      let x_4110 : bool = u_xlatb85;
      let x_4111 : f32 = u_xlat84;
      u_xlat84 = select(x_4111, 1.0f, x_4110);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_4114 : f32 = u_xlat84;
    u_xlat85 = (-(x_4114) + 1.0f);
    let x_4117 : f32 = u_xlat52;
    let x_4118 : f32 = u_xlat85;
    let x_4120 : f32 = u_xlat84;
    u_xlat84 = ((x_4117 * x_4118) + x_4120);
    let x_4123 : i32 = u_xlati55;
    u_xlati85 = (1i << bitcast<u32>((x_4123 & 31i)));
    let x_4126 : i32 = u_xlati85;
    let x_4129 : f32 = x_2220.x_AdditionalLightsCookieEnableBits;
    u_xlati85 = bitcast<i32>((bitcast<u32>(x_4126) & bitcast<u32>(x_4129)));
    let x_4133 : i32 = u_xlati85;
    if ((x_4133 != 0i)) {
      let x_4137 : i32 = u_xlati55;
      let x_4139 : f32 = x_2220.x_AdditionalLightsLightTypes[x_4137].el;
      u_xlati85 = i32(x_4139);
      let x_4142 : i32 = u_xlati85;
      u_xlati86 = select(1i, 0i, (x_4142 != 0i));
      let x_4146 : i32 = u_xlati55;
      u_xlati88 = (x_4146 << bitcast<u32>(2i));
      let x_4148 : i32 = u_xlati86;
      if ((x_4148 != 0i)) {
        let x_4152 : vec3<f32> = vs_TEXCOORD7;
        let x_4154 : i32 = u_xlati88;
        let x_4157 : i32 = u_xlati88;
        let x_4161 : vec4<f32> = x_2220.x_AdditionalLightsWorldToLights[((x_4154 + 1i) / 4i)][((x_4157 + 1i) % 4i)];
        let x_4163 : vec3<f32> = (vec3<f32>(x_4152.y, x_4152.y, x_4152.y) * vec3<f32>(x_4161.x, x_4161.y, x_4161.w));
        let x_4164 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4163.x, x_4163.y, x_4163.z, x_4164.w);
        let x_4166 : i32 = u_xlati88;
        let x_4168 : i32 = u_xlati88;
        let x_4171 : vec4<f32> = x_2220.x_AdditionalLightsWorldToLights[(x_4166 / 4i)][(x_4168 % 4i)];
        let x_4173 : vec3<f32> = vs_TEXCOORD7;
        let x_4176 : vec4<f32> = u_xlat11;
        let x_4178 : vec3<f32> = ((vec3<f32>(x_4171.x, x_4171.y, x_4171.w) * vec3<f32>(x_4173.x, x_4173.x, x_4173.x)) + vec3<f32>(x_4176.x, x_4176.y, x_4176.z));
        let x_4179 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4178.x, x_4178.y, x_4178.z, x_4179.w);
        let x_4181 : i32 = u_xlati88;
        let x_4184 : i32 = u_xlati88;
        let x_4188 : vec4<f32> = x_2220.x_AdditionalLightsWorldToLights[((x_4181 + 2i) / 4i)][((x_4184 + 2i) % 4i)];
        let x_4190 : vec3<f32> = vs_TEXCOORD7;
        let x_4193 : vec4<f32> = u_xlat11;
        let x_4195 : vec3<f32> = ((vec3<f32>(x_4188.x, x_4188.y, x_4188.w) * vec3<f32>(x_4190.z, x_4190.z, x_4190.z)) + vec3<f32>(x_4193.x, x_4193.y, x_4193.z));
        let x_4196 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4195.x, x_4195.y, x_4195.z, x_4196.w);
        let x_4198 : vec4<f32> = u_xlat11;
        let x_4200 : i32 = u_xlati88;
        let x_4203 : i32 = u_xlati88;
        let x_4207 : vec4<f32> = x_2220.x_AdditionalLightsWorldToLights[((x_4200 + 3i) / 4i)][((x_4203 + 3i) % 4i)];
        let x_4209 : vec3<f32> = (vec3<f32>(x_4198.x, x_4198.y, x_4198.z) + vec3<f32>(x_4207.x, x_4207.y, x_4207.w));
        let x_4210 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4209.x, x_4209.y, x_4209.z, x_4210.w);
        let x_4212 : vec4<f32> = u_xlat11;
        let x_4214 : vec4<f32> = u_xlat11;
        let x_4216 : vec2<f32> = (vec2<f32>(x_4212.x, x_4212.y) / vec2<f32>(x_4214.z, x_4214.z));
        let x_4217 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4216.x, x_4216.y, x_4217.z, x_4217.w);
        let x_4219 : vec4<f32> = u_xlat11;
        let x_4222 : vec2<f32> = ((vec2<f32>(x_4219.x, x_4219.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4223 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4222.x, x_4222.y, x_4223.z, x_4223.w);
        let x_4225 : vec4<f32> = u_xlat11;
        let x_4229 : vec2<f32> = clamp(vec2<f32>(x_4225.x, x_4225.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4230 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4229.x, x_4229.y, x_4230.z, x_4230.w);
        let x_4232 : i32 = u_xlati55;
        let x_4234 : vec4<f32> = x_2220.x_AdditionalLightsCookieAtlasUVRects[x_4232];
        let x_4236 : vec4<f32> = u_xlat11;
        let x_4239 : i32 = u_xlati55;
        let x_4241 : vec4<f32> = x_2220.x_AdditionalLightsCookieAtlasUVRects[x_4239];
        let x_4243 : vec2<f32> = ((vec2<f32>(x_4234.x, x_4234.y) * vec2<f32>(x_4236.x, x_4236.y)) + vec2<f32>(x_4241.z, x_4241.w));
        let x_4244 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4243.x, x_4243.y, x_4244.z, x_4244.w);
      } else {
        let x_4247 : i32 = u_xlati85;
        u_xlatb85 = (x_4247 == 1i);
        let x_4249 : bool = u_xlatb85;
        u_xlati85 = select(0i, 1i, x_4249);
        let x_4251 : i32 = u_xlati85;
        if ((x_4251 != 0i)) {
          let x_4256 : vec3<f32> = vs_TEXCOORD7;
          let x_4258 : i32 = u_xlati88;
          let x_4261 : i32 = u_xlati88;
          let x_4265 : vec4<f32> = x_2220.x_AdditionalLightsWorldToLights[((x_4258 + 1i) / 4i)][((x_4261 + 1i) % 4i)];
          u_xlat63 = (vec2<f32>(x_4256.y, x_4256.y) * vec2<f32>(x_4265.x, x_4265.y));
          let x_4268 : i32 = u_xlati88;
          let x_4270 : i32 = u_xlati88;
          let x_4273 : vec4<f32> = x_2220.x_AdditionalLightsWorldToLights[(x_4268 / 4i)][(x_4270 % 4i)];
          let x_4275 : vec3<f32> = vs_TEXCOORD7;
          let x_4278 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4273.x, x_4273.y) * vec2<f32>(x_4275.x, x_4275.x)) + x_4278);
          let x_4280 : i32 = u_xlati88;
          let x_4283 : i32 = u_xlati88;
          let x_4287 : vec4<f32> = x_2220.x_AdditionalLightsWorldToLights[((x_4280 + 2i) / 4i)][((x_4283 + 2i) % 4i)];
          let x_4289 : vec3<f32> = vs_TEXCOORD7;
          let x_4292 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4287.x, x_4287.y) * vec2<f32>(x_4289.z, x_4289.z)) + x_4292);
          let x_4294 : vec2<f32> = u_xlat63;
          let x_4295 : i32 = u_xlati88;
          let x_4298 : i32 = u_xlati88;
          let x_4302 : vec4<f32> = x_2220.x_AdditionalLightsWorldToLights[((x_4295 + 3i) / 4i)][((x_4298 + 3i) % 4i)];
          u_xlat63 = (x_4294 + vec2<f32>(x_4302.x, x_4302.y));
          let x_4305 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4305 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4308 : vec2<f32> = u_xlat63;
          u_xlat63 = fract(x_4308);
          let x_4310 : i32 = u_xlati55;
          let x_4312 : vec4<f32> = x_2220.x_AdditionalLightsCookieAtlasUVRects[x_4310];
          let x_4314 : vec2<f32> = u_xlat63;
          let x_4316 : i32 = u_xlati55;
          let x_4318 : vec4<f32> = x_2220.x_AdditionalLightsCookieAtlasUVRects[x_4316];
          let x_4320 : vec2<f32> = ((vec2<f32>(x_4312.x, x_4312.y) * x_4314) + vec2<f32>(x_4318.z, x_4318.w));
          let x_4321 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4320.x, x_4320.y, x_4321.z, x_4321.w);
        } else {
          let x_4324 : vec3<f32> = vs_TEXCOORD7;
          let x_4326 : i32 = u_xlati88;
          let x_4329 : i32 = u_xlati88;
          let x_4333 : vec4<f32> = x_2220.x_AdditionalLightsWorldToLights[((x_4326 + 1i) / 4i)][((x_4329 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4324.y, x_4324.y, x_4324.y, x_4324.y) * x_4333);
          let x_4335 : i32 = u_xlati88;
          let x_4337 : i32 = u_xlati88;
          let x_4340 : vec4<f32> = x_2220.x_AdditionalLightsWorldToLights[(x_4335 / 4i)][(x_4337 % 4i)];
          let x_4341 : vec3<f32> = vs_TEXCOORD7;
          let x_4344 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4340 * vec4<f32>(x_4341.x, x_4341.x, x_4341.x, x_4341.x)) + x_4344);
          let x_4346 : i32 = u_xlati88;
          let x_4349 : i32 = u_xlati88;
          let x_4353 : vec4<f32> = x_2220.x_AdditionalLightsWorldToLights[((x_4346 + 2i) / 4i)][((x_4349 + 2i) % 4i)];
          let x_4354 : vec3<f32> = vs_TEXCOORD7;
          let x_4357 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4353 * vec4<f32>(x_4354.z, x_4354.z, x_4354.z, x_4354.z)) + x_4357);
          let x_4359 : vec4<f32> = u_xlat12;
          let x_4360 : i32 = u_xlati88;
          let x_4363 : i32 = u_xlati88;
          let x_4367 : vec4<f32> = x_2220.x_AdditionalLightsWorldToLights[((x_4360 + 3i) / 4i)][((x_4363 + 3i) % 4i)];
          u_xlat12 = (x_4359 + x_4367);
          let x_4369 : vec4<f32> = u_xlat12;
          let x_4371 : vec4<f32> = u_xlat12;
          let x_4373 : vec3<f32> = (vec3<f32>(x_4369.x, x_4369.y, x_4369.z) / vec3<f32>(x_4371.w, x_4371.w, x_4371.w));
          let x_4374 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4373.x, x_4373.y, x_4373.z, x_4374.w);
          let x_4376 : vec4<f32> = u_xlat12;
          let x_4378 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(vec3<f32>(x_4376.x, x_4376.y, x_4376.z), vec3<f32>(x_4378.x, x_4378.y, x_4378.z));
          let x_4381 : f32 = u_xlat85;
          u_xlat85 = inverseSqrt(x_4381);
          let x_4383 : f32 = u_xlat85;
          let x_4385 : vec4<f32> = u_xlat12;
          let x_4387 : vec3<f32> = (vec3<f32>(x_4383, x_4383, x_4383) * vec3<f32>(x_4385.x, x_4385.y, x_4385.z));
          let x_4388 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4387.x, x_4387.y, x_4387.z, x_4388.w);
          let x_4390 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(abs(vec3<f32>(x_4390.x, x_4390.y, x_4390.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4395 : f32 = u_xlat85;
          u_xlat85 = max(x_4395, 0.00000099999999747524f);
          let x_4398 : f32 = u_xlat85;
          u_xlat85 = (1.0f / x_4398);
          let x_4400 : f32 = u_xlat85;
          let x_4402 : vec4<f32> = u_xlat12;
          let x_4404 : vec3<f32> = (vec3<f32>(x_4400, x_4400, x_4400) * vec3<f32>(x_4402.z, x_4402.x, x_4402.y));
          let x_4405 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4404.x, x_4404.y, x_4404.z, x_4405.w);
          let x_4408 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4408);
          let x_4412 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4412, 0.0f, 1.0f);
          let x_4416 : vec4<f32> = u_xlat13;
          let x_4418 : vec4<bool> = (vec4<f32>(x_4416.y, x_4416.z, x_4416.y, x_4416.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_4418.x, x_4418.y);
          let x_4421 : bool = u_xlatb63.x;
          if (x_4421) {
            let x_4426 : f32 = u_xlat13.x;
            x_4422 = x_4426;
          } else {
            let x_4429 : f32 = u_xlat13.x;
            x_4422 = -(x_4429);
          }
          let x_4431 : f32 = x_4422;
          u_xlat63.x = x_4431;
          let x_4434 : bool = u_xlatb63.y;
          if (x_4434) {
            let x_4439 : f32 = u_xlat13.x;
            x_4435 = x_4439;
          } else {
            let x_4442 : f32 = u_xlat13.x;
            x_4435 = -(x_4442);
          }
          let x_4444 : f32 = x_4435;
          u_xlat63.y = x_4444;
          let x_4446 : vec4<f32> = u_xlat12;
          let x_4448 : f32 = u_xlat85;
          let x_4451 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4446.x, x_4446.y) * vec2<f32>(x_4448, x_4448)) + x_4451);
          let x_4453 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4453 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4456 : vec2<f32> = u_xlat63;
          u_xlat63 = clamp(x_4456, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4460 : i32 = u_xlati55;
          let x_4462 : vec4<f32> = x_2220.x_AdditionalLightsCookieAtlasUVRects[x_4460];
          let x_4464 : vec2<f32> = u_xlat63;
          let x_4466 : i32 = u_xlati55;
          let x_4468 : vec4<f32> = x_2220.x_AdditionalLightsCookieAtlasUVRects[x_4466];
          let x_4470 : vec2<f32> = ((vec2<f32>(x_4462.x, x_4462.y) * x_4464) + vec2<f32>(x_4468.z, x_4468.w));
          let x_4471 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4470.x, x_4470.y, x_4471.z, x_4471.w);
        }
      }
      let x_4478 : vec4<f32> = u_xlat11;
      let x_4480 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4478.x, x_4478.y), 0.0f);
      u_xlat11 = x_4480;
      let x_4482 : bool = u_xlatb3.y;
      if (x_4482) {
        let x_4487 : f32 = u_xlat11.w;
        x_4483 = x_4487;
      } else {
        let x_4490 : f32 = u_xlat11.x;
        x_4483 = x_4490;
      }
      let x_4491 : f32 = x_4483;
      u_xlat85 = x_4491;
      let x_4493 : bool = u_xlatb3.x;
      if (x_4493) {
        let x_4497 : vec4<f32> = u_xlat11;
        x_4494 = vec3<f32>(x_4497.x, x_4497.y, x_4497.z);
      } else {
        let x_4500 : f32 = u_xlat85;
        x_4494 = vec3<f32>(x_4500, x_4500, x_4500);
      }
      let x_4502 : vec3<f32> = x_4494;
      let x_4503 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4502.x, x_4502.y, x_4502.z, x_4503.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4509 : vec4<f32> = u_xlat11;
    let x_4511 : i32 = u_xlati55;
    let x_4513 : vec4<f32> = x_2714.x_AdditionalLightsColor[x_4511];
    let x_4515 : vec3<f32> = (vec3<f32>(x_4509.x, x_4509.y, x_4509.z) * vec3<f32>(x_4513.x, x_4513.y, x_4513.z));
    let x_4516 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4515.x, x_4515.y, x_4515.z, x_4516.w);
    let x_4518 : f32 = u_xlat82;
    let x_4519 : f32 = u_xlat84;
    u_xlat55 = (x_4518 * x_4519);
    let x_4521 : vec4<f32> = u_xlat1;
    let x_4523 : vec4<f32> = u_xlat10;
    u_xlat82 = dot(vec3<f32>(x_4521.x, x_4521.y, x_4521.z), vec3<f32>(x_4523.x, x_4523.y, x_4523.z));
    let x_4526 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4526, 0.0f, 1.0f);
    let x_4528 : f32 = u_xlat55;
    let x_4529 : f32 = u_xlat82;
    u_xlat55 = (x_4528 * x_4529);
    let x_4531 : f32 = u_xlat55;
    let x_4533 : vec4<f32> = u_xlat11;
    let x_4535 : vec3<f32> = (vec3<f32>(x_4531, x_4531, x_4531) * vec3<f32>(x_4533.x, x_4533.y, x_4533.z));
    let x_4536 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4535.x, x_4535.y, x_4535.z, x_4536.w);
    let x_4538 : vec3<f32> = u_xlat35;
    let x_4539 : f32 = u_xlat83;
    let x_4542 : vec3<f32> = u_xlat2;
    u_xlat35 = ((x_4538 * vec3<f32>(x_4539, x_4539, x_4539)) + x_4542);
    let x_4544 : vec3<f32> = u_xlat35;
    let x_4545 : vec3<f32> = u_xlat35;
    u_xlat55 = dot(x_4544, x_4545);
    let x_4547 : f32 = u_xlat55;
    u_xlat55 = max(x_4547, 1.17549435e-38f);
    let x_4549 : f32 = u_xlat55;
    u_xlat55 = inverseSqrt(x_4549);
    let x_4551 : f32 = u_xlat55;
    let x_4553 : vec3<f32> = u_xlat35;
    u_xlat35 = (vec3<f32>(x_4551, x_4551, x_4551) * x_4553);
    let x_4555 : vec4<f32> = u_xlat1;
    let x_4557 : vec3<f32> = u_xlat35;
    u_xlat55 = dot(vec3<f32>(x_4555.x, x_4555.y, x_4555.z), x_4557);
    let x_4559 : f32 = u_xlat55;
    u_xlat55 = clamp(x_4559, 0.0f, 1.0f);
    let x_4561 : vec4<f32> = u_xlat10;
    let x_4563 : vec3<f32> = u_xlat35;
    u_xlat82 = dot(vec3<f32>(x_4561.x, x_4561.y, x_4561.z), x_4563);
    let x_4565 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4565, 0.0f, 1.0f);
    let x_4567 : f32 = u_xlat55;
    let x_4568 : f32 = u_xlat55;
    u_xlat55 = (x_4567 * x_4568);
    let x_4570 : f32 = u_xlat55;
    let x_4572 : f32 = u_xlat9.x;
    u_xlat55 = ((x_4570 * x_4572) + 1.00001001358032226562f);
    let x_4575 : f32 = u_xlat82;
    let x_4576 : f32 = u_xlat82;
    u_xlat82 = (x_4575 * x_4576);
    let x_4578 : f32 = u_xlat55;
    let x_4579 : f32 = u_xlat55;
    u_xlat55 = (x_4578 * x_4579);
    let x_4581 : f32 = u_xlat82;
    u_xlat82 = max(x_4581, 0.10000000149011611938f);
    let x_4583 : f32 = u_xlat55;
    let x_4584 : f32 = u_xlat82;
    u_xlat55 = (x_4583 * x_4584);
    let x_4586 : f32 = u_xlat80;
    let x_4587 : f32 = u_xlat55;
    u_xlat55 = (x_4586 * x_4587);
    let x_4589 : f32 = u_xlat81;
    let x_4590 : f32 = u_xlat55;
    u_xlat55 = (x_4589 / x_4590);
    let x_4592 : vec4<f32> = u_xlat5;
    let x_4594 : f32 = u_xlat55;
    let x_4597 : vec4<f32> = u_xlat6;
    u_xlat35 = ((vec3<f32>(x_4592.x, x_4592.y, x_4592.z) * vec3<f32>(x_4594, x_4594, x_4594)) + vec3<f32>(x_4597.x, x_4597.y, x_4597.z));
    let x_4600 : vec3<f32> = u_xlat35;
    let x_4601 : vec4<f32> = u_xlat11;
    let x_4604 : vec4<f32> = u_xlat8;
    let x_4606 : vec3<f32> = ((x_4600 * vec3<f32>(x_4601.x, x_4601.y, x_4601.z)) + vec3<f32>(x_4604.x, x_4604.y, x_4604.z));
    let x_4607 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4606.x, x_4606.y, x_4606.z, x_4607.w);

    continuing {
      let x_4609 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4609 + bitcast<u32>(1i));
    }
  }
  let x_4611 : vec4<f32> = u_xlat4;
  let x_4613 : f32 = u_xlat26;
  let x_4616 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_4611.x, x_4611.y, x_4611.z) * vec3<f32>(x_4613, x_4613, x_4613)) + vec3<f32>(x_4616.x, x_4616.y, x_4616.z));
  let x_4619 : vec4<f32> = u_xlat8;
  let x_4621 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4619.x, x_4619.y, x_4619.z) + x_4621);
  let x_4625 : f32 = u_xlat78;
  let x_4627 : vec3<f32> = u_xlat0;
  let x_4628 : vec3<f32> = (vec3<f32>(x_4625, x_4625, x_4625) * x_4627);
  let x_4629 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4628.x, x_4628.y, x_4628.z, x_4629.w);
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


